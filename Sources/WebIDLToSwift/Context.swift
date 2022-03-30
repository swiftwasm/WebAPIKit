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
        private(set) var constructor: SwiftSource!
        private(set) var this: SwiftSource!
        private(set) var className: SwiftSource!
        private(set) var interfaces: [String: MergedInterface]!
        private(set) var override = false

        static func `static`(this: SwiftSource, inClass: Bool = Context.inClass, className: SwiftSource) -> Self {
            var newState = Context.current
            newState.static = true
            newState.this = this
            newState.inClass = inClass
            newState.className = className
            return newState
        }

        static func instance(constructor: SwiftSource, this: SwiftSource, className: SwiftSource) -> Self {
            var newState = Context.current
            newState.static = false
            newState.constructor = constructor
            newState.this = this
            newState.className = className
            return newState
        }

        static func override(_ isOverride: Bool) -> Self {
            var newState = Context.current
            newState.override = isOverride
            return newState
        }

        static func interfaces(_ interfaces: [String: MergedInterface]) -> Self {
            var newState = Context.current
            newState.interfaces = interfaces
            return newState
        }
    }
}
