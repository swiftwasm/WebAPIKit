public struct IDLIncludes: IDLNode {
    public static let type = "includes"
    public let target: String
    public let includes: String
    public let extAttrs: [IDLExtendedAttribute]
    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}
