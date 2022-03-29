import Foundation

struct SwiftSource: CustomStringConvertible, ExpressibleByStringInterpolation {
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

        mutating func appendInterpolation<T>(_ value: T) {
            output += toSwift(value).source
        }

        mutating func appendInterpolation(_ values: [SwiftSource]) {
            output += values.map(\.source).joined(separator: "\n")
        }

        mutating func appendInterpolation<T>(state: Context.State, _ value: T) {
            Context.withState(state) {
                output += toSwift(value).source
            }
        }
    }
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

        let parts = self.components(separatedBy: CharacterSet.alphanumerics.inverted)
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
