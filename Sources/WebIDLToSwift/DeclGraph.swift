import WebIDL

class IDLSource {
    let name: String
    init(name: String) {
        self.name = name
    }
}

protocol IDLCodeGenUnit: IDLNode {
    var name: String { get }
}
extension IDLInterface: IDLCodeGenUnit {}
extension IDLInterfaceMixin: IDLCodeGenUnit {}

struct DeclGraph {

    struct UnownedNode {
        unowned let value: Node
    }

    typealias NodeId = Array<Node>.Index

    final class Node: Hashable {
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
    }

    private var resolutions: [UnresolvedRef: [NodeId]] = [:]
    private var nodes: [Node] = []
    private(set) var forwardEdges: [NodeId: [NodeId]] = [:]

    private var nodeByName: [String: NodeId] = [:]
    private var sources: [String: IDLSource] = [:]

    mutating func addEdge(from source: NodeId, to destination: NodeId) {
        self.forwardEdges[source, default: []].append(destination)
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
            nodeByName[decl.name] = newNodeId

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
            let node = resolve(ref: ref)
            onResolved.forEach { sourceNode in
                self.addEdge(from: sourceNode, to: node)
            }
        }
        resolutions = [:]
    }

    private func resolve(ref: UnresolvedRef) -> NodeId {
        switch ref {
        case .identifier(let id):
            guard let node = nodeByName[id] else {
                fatalError("'\(id)' not found")
            }
            return node
        case .type:
            fatalError("TODO")
        }
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
}

enum UnresolvedRef: Hashable {
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
    
    public func visit(_ rawNode: IDLNode) {
        fatalError("Unhandled IDLNode in IDLDeclWalker: \(rawNode)")
    }

    mutating func process(_ node: IDLNode) {
        self.visitRoot(node)
    }

    mutating func process(_ node: UnresolvedRef) {
        self.preWalk(node)
    }
}
