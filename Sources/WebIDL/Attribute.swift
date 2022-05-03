public struct IDLAttribute: IDLNode, IDLNamed {
    public static let type = "attribute"
    public let name: String
    public let special: String
    public let readonly: Bool
    public let idlType: IDLType
    public let extAttrs: [IDLExtendedAttribute]
    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}
