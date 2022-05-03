public struct IDLTypedef: IDLNode, IDLNamed {
    public static let type = "typedef"
    public let name: String
    public let idlType: IDLType
    public let extAttrs: [IDLExtendedAttribute]
    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}
