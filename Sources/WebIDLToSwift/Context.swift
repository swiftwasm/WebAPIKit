import WebIDL

@dynamicMemberLookup
enum Context {
    private(set) static var current = State()

    private static var stack: [State] = []
    static func withState<T>(_ new: State, body: () throws -> T) rethrows -> T {
        stack.append(current)
        current = new
        defer { current = stack.removeLast() }
        return try body()
    }

    static subscript<T>(dynamicMember member: KeyPath<State, T?>) -> T {
        current[keyPath: member]!
    }

    static subscript<T>(dynamicMember member: KeyPath<State, T>) -> T {
        current[keyPath: member]
    }

    struct State {
        private(set) var `static` = false
        private(set) var inClass = false
        private(set) var constructor: SwiftSource?
        private(set) var this: SwiftSource!
        private(set) var className: SwiftSource!
        private(set) var interfaces: [String: MergedInterface]!
        private(set) var ignored: [String: Set<String>]!
        private(set) var types: [String: IDLTypealias]!
        private(set) var override = false
        private(set) var inProtocol = false

        static func `static`(this: SwiftSource, inClass: Bool = Context.inClass, className: SwiftSource) -> Self {
            var newState = Context.current
            newState.static = true
            newState.this = this
            newState.inClass = inClass
            newState.className = className
            return newState
        }

        static func instance(
            constructor: SwiftSource?,
            this: SwiftSource,
            className: SwiftSource,
            inProtocol: Bool = Context.inProtocol
        ) -> Self {
            var newState = Context.current
            newState.static = false
            newState.constructor = constructor
            newState.this = this
            newState.inProtocol = inProtocol
            newState.className = className
            return newState
        }

        static func override(_ isOverride: Bool) -> Self {
            var newState = Context.current
            newState.override = isOverride
            return newState
        }

        static func rootForIDLFile(
            interfaces: [String: MergedInterface],
            ignored: [String: Set<String>],
            types: [String: IDLTypealias]
        ) -> Self {
            var newState = Context.current
            newState.interfaces = interfaces
            newState.ignored = ignored
            newState.types = types
            return newState
        }
    }
}

struct Record {
    private(set) var closurePatterns: Set<ClosurePattern> = []
    private(set) var strings: Set<String> = ["toString"]
    private(set) var unions: Set<UnionType> = []
    private(set) static var current = Record()

    static func reset() {
        current = Record()
    }
    
    static func useStringLiteral(for name: String) -> SwiftSource {
        assert(!name.isEmpty)
        if name == "self" {
            return "Strings._self"
        }
        current.strings.insert(name)
        return "Strings.\(name)"
    }

    @discardableResult
    static func useUnion(_ types: Set<SlimIDLType>) -> String {
        let union = current.unions.first(where: { $0.types == types }) ?? UnionType(types: types)
        useUnion(union)
        return union.name
    }
    static func useUnion(_ union: UnionType) {
        current.unions.insert(union)
    }

    static func useClosurePattern(_ closurePattern: ClosurePattern) {
        current.closurePatterns.insert(closurePattern)
    }
}
