public struct IDLOperation: IDLNode, IDLNamed {
    public static let type = "operation"
    public let special: String
    public let idlType: IDLType?
    public let name: String
    public let arguments: [IDLArgument]
    public let extAttrs: [IDLExtendedAttribute]

    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}
