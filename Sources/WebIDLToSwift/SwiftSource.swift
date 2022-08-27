import Foundation

struct SwiftSource: CustomStringConvertible, ExpressibleByStringInterpolation, Equatable {
    let source: String

    init(_ value: String) {
        source = value
    }

    init(stringLiteral value: String) {
        source = value
    }

    init(stringInterpolation: StringInterpolation) {
        source = stringInterpolation.output
    }

    var description: String {
        source
    }

    static func raw(_ value: String) -> SwiftSource {
        SwiftSource(value)
    }

    struct StringInterpolation: StringInterpolationProtocol {
        fileprivate var output = ""

        init(literalCapacity: Int, interpolationCount _: Int) {
            output.reserveCapacity(literalCapacity * 2)
        }

        mutating func appendLiteral(_ literal: String) {
            output += literal
        }

        mutating func appendInterpolation(raw value: String) {
            output += value
        }

        mutating func appendInterpolation(quoted value: String) {
            output += "\"\(value)\""
        }

        mutating func appendInterpolation(_ source: SwiftSource) {
            output += source.source
        }

        @_disfavoredOverload
        mutating func appendInterpolation<T>(_ value: T) {
            output += toSwift(value).source
        }

        mutating func appendInterpolation(sequence values: [SwiftSource]) {
            output += values.map(\.source).joined(separator: ", ")
        }

        mutating func appendInterpolation(lines values: [SwiftSource]) {
            output += values.map(\.source).joined(separator: "\n")
        }

        mutating func appendInterpolation<T>(state: ScopedState, _ value: T) {
            ModuleState.withScope(state) {
                output += toSwift(value).source
            }
        }
    }

    static let readOnlyAttribute: Self = "ReadonlyAttribute"
    static let readWriteAttribute: Self = "ReadWriteAttribute"
}

extension Array where Element == SwiftSource {
    func joined(separator: String) -> SwiftSource {
        SwiftSource(map(\.source).joined(separator: separator))
    }
}

extension SwiftSource: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        self
    }
}

extension String {
    var camelized: String {
        guard !isEmpty else { return "_empty" }

        let parts = components(separatedBy: CharacterSet.alphanumerics.inverted)
        let first = parts.first!.lowercasingFirst
        let rest = parts.dropFirst().map(\.uppercasingFirst)

        let result = ([first] + rest).joined()
        if result.first!.isNumber {
            return "_" + result
        } else {
            return result
        }
    }

    private var uppercasingFirst: String {
        prefix(1).uppercased() + dropFirst()
    }

    private var lowercasingFirst: String {
        prefix(1).lowercased() + dropFirst()
    }
}
