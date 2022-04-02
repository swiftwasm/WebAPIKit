@dynamicMemberLookup
enum Context {
    private(set) static var current = State()

    static var closurePatterns: Set<ClosurePattern> = []
    private(set) static var strings: Set<String> = ["toString"]

    static func source(for name: String) -> SwiftSource {
        assert(!name.isEmpty)
        if name == "self" {
            return "Strings._self"
        }
        strings.insert(name)
        return "Strings.\(name)"
    }

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

        static func root(
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
