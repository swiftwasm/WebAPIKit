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
