import WebIDL

class IDLSource {
    let name: String
    init(name: String) {
        self.name = name
    }
}

protocol IDLCodeGenUnit: IDLNode {
    var identifier: String? { get }
    var partial: Bool { get }
}
extension IDLCodeGenUnit where Self: IDLNamed {
    var identifier: String? { name }
}
extension IDLCodeGenUnit {
    var partial: Bool { false }
}
extension IDLInterface: IDLCodeGenUnit {}
extension IDLInterfaceMixin: IDLCodeGenUnit {}
extension IDLTypedef: IDLCodeGenUnit {}
extension IDLIncludes: IDLCodeGenUnit {
    var identifier: String? { nil }
}
extension IDLDictionary: IDLCodeGenUnit {}
extension IDLEnum: IDLCodeGenUnit {}
extension IDLCallback: IDLCodeGenUnit {}
extension IDLCallbackInterface: IDLCodeGenUnit {}
extension IDLNamespace: IDLCodeGenUnit {}

extension IDLType {
    fileprivate static func shouldIgnore(name: String) -> Bool {
        // https://webidl.spec.whatwg.org/#idl-types
        [
            "Int8Array", "Int16Array", "Int32Array", "Uint8Array", "Uint16Array", "Uint32Array",
            "Uint8ClampedArray", "BigInt64Array", "BigUint64Array", "Float32Array", "Float64Array",
            "ArrayBuffer",
            "FrozenArray",
            "ObservableArray",
            "DataView",
            "Promise",
            "sequence",
            "record",
            "boolean",
            "any",
            "DOMString",
            "USVString",
            "CSSOMString",
            "ByteString",
            "object",
            "undefined",
            "float",
            "unrestricted float",
            "double",
            "unrestricted double",
            "octet",
            "unsigned short",
            "unsigned long",
            "unsigned long long",
            "byte",
            "short",
            "long",
            "long long",
            "Function",
            "bigint"
        ]
            .contains(name)
    }
}

struct DeclGraph {

    typealias NodeId = Array<Node>.Index

    final class Node: Hashable, CustomStringConvertible {
        let declNode: IDLCodeGenUnit
        let source: IDLSource

        init(declNode: IDLCodeGenUnit, source: IDLSource) {
            self.declNode = declNode
            self.source = source
        }

        static func == (lhs: DeclGraph.Node, rhs: DeclGraph.Node) -> Bool {
            lhs === rhs
        }

        func hash(into hasher: inout Hasher) {
            hasher.combine(ObjectIdentifier(self))
        }
        var description: String {
            "\(declNode.partial ? "(P) " : "")\(source.name).\(declNode.identifier ?? _typeName(type(of: declNode)))"
        }
    }

    private var resolutions: [UnresolvedRef: [NodeId]] = [:]
    private(set) var nodes: [Node?] = []
    private(set) var forwardEdges: [NodeId: Set<NodeId>] = [:]

    typealias NodeByNameRecord = (primary: NodeId?, all: [NodeId])
    private var nodeByName: [String: NodeByNameRecord] = [:]
    private var sources: [String: IDLSource] = [:]

    mutating func addEdge(from source: NodeId, to destination: NodeId) {
        guard source != destination else { return }
        self.forwardEdges[source, default: []].insert(destination)
    }

    private mutating func collect(unitName: String, decls: [IDLNode]) {
        let source = sources[unitName, default: IDLSource(name: unitName)]
        for decl in decls {
            guard let decl = decl as? IDLCodeGenUnit else {
                fatalError("\(decl) is not IDLCodeGenUnit")
            }
            let newNodeId = nodes.count
            let newNode = Node(declNode: decl, source: source)
            nodes.append(newNode)
            if let identifier = decl.identifier {
                let record: NodeByNameRecord
                if var existing = nodeByName[identifier] {
                    existing.all.append(newNodeId)
                    if existing.primary == nil, !decl.partial {
                        existing.primary = newNodeId
                    }
                    record = existing
                } else {
                    record = (primary: decl.partial ? nil : newNodeId, all: [newNodeId])
                }
                nodeByName[identifier] = record
            }

            IDLDeclWalker.walk(
                root: decl,
                preWalk: { decl in
                    resolutions[decl, default: []].append(newNodeId)
                }
            )
        }
    }

    private mutating func resolve() {
        for (ref, onResolved) in resolutions {
            let nodes = resolve(ref: ref)
            for sourceNode in onResolved {
                for node in nodes {
                    self.addEdge(from: sourceNode, to: node)
                }
            }
        }
        resolutions = [:]
    }

    private func resolve(ref: UnresolvedRef) -> [NodeId] {
        switch ref {
        case .identifier(let id):
            return resolve(id: id).map { [$0] } ?? []
        case .type(let type):
            switch type.value {
            case .single(let id):
                return resolve(id: id).map { [$0] } ?? []
            case .union(let types):
                return types.flatMap { resolve(ref: .type($0)) }
            case .generic(let base, let args):
                return (resolve(id: base).map { [$0] } ?? []) + args.flatMap { resolve(ref: .type($0)) }
            }
        }
    }

    private func resolve(id: String) -> NodeId? {
        guard let node = nodeByName[id] else {
            if !IDLType.shouldIgnore(name: id) {
                print("'\(id)' not found")
            }
            return nil
        }
        return node.primary
    }

    func transposed() -> DeclGraph {
        var graph = self
        graph.forwardEdges = [:]
        for (source, destinations) in forwardEdges {
            for dest in destinations {
                graph.addEdge(from: dest, to: source)
            }
        }
        return graph
    }

    private func walkDFS(node: NodeId, postWalk: (NodeId) -> Void, visited: inout Set<NodeId>) {
        func visit(_ node: NodeId) {
            visited.insert(node)
            for neighbor in forwardEdges[node] ?? [] {
                guard !visited.contains(neighbor) else {
                    continue
                }
                visit(neighbor)
            }
            postWalk(node)
        }
        visit(node)
    }

    mutating func compact() {
        for (_, nodes) in nodeByName {
            let nodesBySource = Dictionary(grouping: nodes.all, by: {
                self.nodes[$0]?.source.name
            })
            for (_, nodes) in nodesBySource {
                guard nodes.count >= 2 else { continue }
                let primary = nodes[0]
                for other in nodes[1...] {
                    let otherEdges = self.forwardEdges[other] ?? []
                    self.forwardEdges[primary]?.formUnion(otherEdges)
                    self.forwardEdges[other]?.removeAll()
                    self.nodes[other] = nil
                }
            }
        }
    }

    func buildSCC() -> [Set<NodeId>] {
        var postOrder: [NodeId] = []
        do {
            var visited: Set<NodeId> = []
            for node in nodes.indices {
                guard !visited.contains(node) else { continue }
                walkDFS(node: node, postWalk: { postOrder.append($0) }, visited: &visited)
            }
        }

        var results: [Set<NodeId>] = []
        do {
            let trans = transposed()
            var visited: Set<NodeId> = []
            for node in postOrder.reversed() {
                var sccSet: Set<NodeId> = []
                trans.walkDFS(node: node, postWalk: { sccSet.insert($0) }, visited: &visited)
                results.append(sccSet)
            }
        }
        return results
    }

    static func build(from idls: [(unitName: String, collection: [IDLNode])]) -> DeclGraph {
        var graph = DeclGraph()

        for idl in idls {
            graph.collect(unitName: idl.unitName, decls: idl.collection)
        }
        graph.resolve()
        return graph
    }

    func render() -> String {
        var output = "digraph DependenciesGraph {\n"
        output += "  node [shape = box]\n"
        func renderNode(node id: NodeId) {
            guard let node = self.nodes[id] else { return }
            output += #"  "_\#(id)" [label="\#(node)"]"# + "\n"
        }
        for node in nodes.indices {
            renderNode(node: node)
            for edge in forwardEdges[node] ?? [] {
                output += #"  "_\#(node)" -> "_\#(edge)""# + "\n"
            }
        }
        output += "}\n"
        return output
    }
}


struct DeclSetDAG {
    struct Node: CustomStringConvertible {
        let sources: Set<String>
        let decls: Set<DeclGraph.NodeId>

        var description: String {
            sources.joined(separator: ", ")
        }
    }
    typealias NodeId = Array<Node>.Index

    private(set) var nodes: [Node?] = []
    private(set) var forwardEdges: [NodeId: Set<NodeId>] = [:]
    private(set) var backEdges: [NodeId: Set<NodeId>] = [:]

    static func build(from declGraph: DeclGraph) -> DeclSetDAG {
        var graph = DeclSetDAG()
        let scc = declGraph.buildSCC()

        var declToNode: [DeclGraph.NodeId: NodeId] = [:]
        for declNodes in scc {
            let sources = Set(declNodes.compactMap { declGraph.nodes[$0]?.source.name })
            guard !sources.isEmpty else { continue }
            let newNode = Node(sources: sources, decls: declNodes)
            let nodeId = graph.nodes.count
            graph.nodes.append(newNode)
            for decl in declNodes {
                declToNode[decl] = nodeId
            }
        }

        for declNodes in scc {
            let selfNode = declToNode[declNodes.first!]!
            for declNode in declNodes {
                for destDecl in declGraph.forwardEdges[declNode] ?? [] {
                    // If the edge is not SCC internal, add edge between components
                    guard let destNode = declToNode[destDecl],
                          !declNodes.contains(destDecl) else { continue }
                    graph.addEdge(from: selfNode, to: destNode)
                }
            }
        }
        return graph
    }

    mutating func addEdge(from source: NodeId, to dest: NodeId) {
        if source != dest {
            self.forwardEdges[source, default: []].insert(dest)
            self.backEdges[dest, default: []].insert(source)
        }
    }

    mutating func removeEdge(from source: NodeId, to dest: NodeId) {
        self.forwardEdges[source]?.remove(dest)
        self.backEdges[dest]?.remove(source)
    }

    mutating func merge(keep: NodeId, remove: NodeId) {
        for pointer in self.forwardEdges[remove] ?? [] {
            removeEdge(from: remove, to: pointer)
            addEdge(from: keep, to: pointer)
        }
        self.forwardEdges[remove] = nil
        for pointer in self.backEdges[remove] ?? [] {
            removeEdge(from: pointer, to: remove)
            addEdge(from: pointer, to: keep)
        }
        self.backEdges[remove] = nil
        self.nodes[remove] = nil
    }

    mutating func compact() {
        var visited: Set<NodeId> = []
        for nodeId in nodes.indices {
            guard !visited.contains(nodeId) else { continue }
            visited.insert(nodeId)
            guard let node = self.nodes[nodeId] else { continue }
            let edges = self.forwardEdges[nodeId] ?? []
            for dest in edges {
                guard let destNode = nodes[dest] else { continue }
                // Merge if the edge connects the same sources
                if destNode.sources == node.sources {
                    merge(keep: nodeId, remove: dest)
                }
            }
        }
    }

    func render() -> String {
        var output = "digraph DependenciesGraph {\n"
        output += "  node [shape = box]\n"
        func renderNode(node id: NodeId) {
            guard let node = self.nodes[id] else { return }
            output += #"  "_\#(id)" [label="\#(id)_\#(node)"]"# + "\n"
        }
        for node in nodes.indices {
            renderNode(node: node)
            for edge in forwardEdges[node] ?? [] {
                output += #"  "_\#(node)" -> "_\#(edge)""# + "\n"
            }
        }
        output += "}\n"
        return output
    }
}

fileprivate enum UnresolvedRef: Hashable {
    case identifier(String)
    case type(IDLType)
}

fileprivate struct IDLDeclWalker: IDLDeclVisitor {

    let preWalk: (UnresolvedRef) -> Void

    static func walk(root: IDLNode, preWalk: (UnresolvedRef) -> Void) {
        withoutActuallyEscaping(preWalk) { preWalk in
            var walker = IDLDeclWalker(preWalk: preWalk)
            walker.process(root)
        }
    }

    mutating public func visit(_ interface: IDLInterface) {
        if let inheritance = interface.inheritance {
            self.process(.identifier(inheritance))
        }
        for member in interface.members {
            self.process(member)
        }
    }
    
    mutating public func visit(_ interfaceMixin: IDLInterfaceMixin) {
        for member in interfaceMixin.members {
            self.process(member)
        }
    }

    public mutating func visit(_ include: IDLIncludes) {
        process(.identifier(include.includes))
        process(.identifier(include.target))
    }
    
    public mutating func visit(_ callback: IDLCallback) {
        process(.type(callback.idlType))
        for argument in callback.arguments {
            process(argument)
        }
    }
    
    mutating func visit(_ callbackInterface: IDLCallbackInterface) {
        if let inheritance = callbackInterface.inheritance {
            self.process(.identifier(inheritance))
        }
        for member in callbackInterface.members {
            self.process(member)
        }
    }

    public mutating func visit(_ typedef: IDLTypedef) {
        process(.type(typedef.idlType))
    }
    
    public mutating func visit(_ operation: IDLOperation) {
        if let idlType = operation.idlType {
            process(.type(idlType))
        }
        for argument in operation.arguments {
            process(argument)
        }
    }
    
    public mutating func visit(_ constructor: IDLConstructor) {
        for argument in constructor.arguments {
            process(argument)
        }
    }
    
    public func visit(_ enum: IDLEnum) {}

    mutating func visit(_ argument: IDLArgument) {
        process(.type(argument.idlType))
    }

    mutating func visit(_ constant: IDLConstant) {
        process(.type(constant.idlType))
    }

    mutating func visit(_ attribute: IDLAttribute) {
        process(.type(attribute.idlType))
    }

    mutating func visit(_ dictionary: IDLDictionary) {
        for member in dictionary.members {
            process(.type(member.idlType))
        }
    }

    mutating func visit(_ namespace: IDLNamespace) {
        for member in namespace.members {
            process(member)
        }
    }
    mutating func visit<T: IDLDeclaration>(_ decl: T) {
        for type in decl.idlType {
            process(.type(type))
        }
        for arg in decl.arguments {
            process(arg)
        }
    }

    public func visit(_ rawNode: IDLNode) {
        print("Unhandled IDLNode in IDLDeclWalker: \(type(of: rawNode))")
    }

    mutating func process(_ node: IDLNode) {
        self.visitRoot(node)
    }

    mutating func process(_ node: UnresolvedRef) {
        self.preWalk(node)
    }
}
