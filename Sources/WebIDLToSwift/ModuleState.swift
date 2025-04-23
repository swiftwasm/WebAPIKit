import WebIDL

@dynamicMemberLookup
enum ModuleState {
    private(set) static var current = ScopedState()
    private(set) static var unions: Set<UnionType> = []
    private(set) static var strings: Set<String> = ["toString"]
    private(set) static var closurePatterns: Set<ClosurePattern> = []

    static func source(for name: String) -> SwiftSource {
        assert(!name.isEmpty)
        if name == "self" {
            return "Strings._self"
        }
        strings.insert(name)
        return "Strings.\(name)"
    }

    private static var stack: [ScopedState] = []
    static func withScope<T>(_ new: ScopedState, body: () throws -> T) rethrows -> T {
        stack.append(current)
        current = new
        defer { current = stack.removeLast() }
        return try body()
    }

    static subscript<T>(dynamicMember member: KeyPath<ScopedState, T?>) -> T {
        current[keyPath: member]!
    }

    static subscript<T>(dynamicMember member: KeyPath<ScopedState, T>) -> T {
        current[keyPath: member]
    }

    static func add(union: UnionType) {
        unions.insert(union)
    }

    static func union(for types: Set<SlimIDLType>, defaultName: String? = nil) -> UnionType {
        if let existing = ModuleState.unions.first(where: { $0.types == types }) {
            return existing
        } else {
            let new = UnionType(types: types, friendlyName: defaultName)
            ModuleState.add(union: new)
            return new
        }
    }

    static func add(closurePattern: ClosurePattern) {
        closurePatterns.insert(closurePattern)
    }

    static func reset() {
        unions = []
        strings = ["toString"]
    }
}

struct ScopedState {
    private(set) var `static` = false
    private(set) var inClass = false
    private(set) var constructor: SwiftSource?
    private(set) var this: SwiftSource!
    private(set) var className: SwiftSource!
    private(set) var interfaces: [String: MergedInterface]!
    private(set) var dictionaries: [String: MergedDictionary]!
    private(set) var ignored: [String: Set<String>]!
    private(set) var types: [String: IDLTypealias]!
    private(set) var override = false
    private(set) var inProtocol = false

    mutating func add(types: [String: IDLTypealias]) {
        for (name, type) in types {
            self.types[name] = type
        }
    }

    static func `static`(this: SwiftSource, inClass: Bool = ModuleState.inClass, className: SwiftSource) -> Self {
        var newState = ModuleState.current
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
        inProtocol: Bool = ModuleState.inProtocol
    ) -> Self {
        var newState = ModuleState.current
        newState.static = false
        newState.constructor = constructor
        newState.this = this
        newState.inProtocol = inProtocol
        newState.className = className
        newState.inClass = true
        return newState
    }

    static func override(_ isOverride: Bool) -> Self {
        var newState = ModuleState.current
        newState.override = isOverride
        return newState
    }

    static func root(
        dictionaries: [String: MergedDictionary],
        interfaces: [String: MergedInterface],
        ignored: [String: Set<String>],
        types: [String: IDLTypealias]
    ) -> Self {
        var newState = ModuleState.current
        newState.interfaces = interfaces
        newState.dictionaries = dictionaries
        newState.ignored = ignored
        newState.types = types
        return newState
    }
}
