@dynamicMemberLookup
enum Context {
    private(set) static var current = State(static: false, this: "this")

    private static var stack: [State] = []
    static func withState<T>(_ new: State, body: () throws -> T) rethrows -> T {
        stack.append(current)
        current = new
        defer { current = stack.removeLast() }
        return try body()
    }

    static subscript<T>(dynamicMember member: KeyPath<State, T>) -> T {
        current[keyPath: member]
    }

    struct State {
        private(set) var `static`: Bool
        private(set) var this: SwiftSource

        static func `static`(this: SwiftSource) -> Self {
            var newState = Context.current
            newState.static = true
            newState.this = this
            return newState
        }
    }
}
