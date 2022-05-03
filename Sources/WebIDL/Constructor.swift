public struct IDLConstructor: IDLNode {
    public static let type = "constructor"
    public let arguments: [IDLArgument]
    public let extAttrs: [IDLExtendedAttribute]
    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}
