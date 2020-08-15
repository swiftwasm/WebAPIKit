
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol XPathEvaluatorBase: JSBridgedClass {}

public extension XPathEvaluatorBase {
    func createExpression<XPathNSResolverType: XPathNSResolver>(expression: String, resolver: XPathNSResolverType? = nil) -> XPathExpression {
        return objectRef.createExpression!(expression.jsValue(), resolver.jsValue()).fromJSValue()!
    }

    func createExpression(expression: String, resolver: ((String?) -> String?)? = nil) -> XPathExpression {
        return objectRef.createExpression!(expression.jsValue(), resolver == nil ? nil : JSClosure { resolver!($0[0].fromJSValue()!).jsValue() }).fromJSValue()!
    }

    func createNSResolver(nodeResolver: Node) -> XPathNSResolver {
        return objectRef.createNSResolver!(nodeResolver.jsValue()).fromJSValue()! as AnyXPathNSResolver
    }

    func evaluate<XPathNSResolverType: XPathNSResolver>(expression: String, contextNode: Node, resolver: XPathNSResolverType? = nil, type: UInt16 = 0, result: XPathResult? = nil) -> XPathResult {
        return objectRef.evaluate!(expression.jsValue(), contextNode.jsValue(), resolver.jsValue(), type.jsValue(), result.jsValue()).fromJSValue()!
    }

    func evaluate(expression: String, contextNode: Node, resolver: ((String?) -> String?)? = nil, type: UInt16 = 0, result: XPathResult? = nil) -> XPathResult {
        return objectRef.evaluate!(expression.jsValue(), contextNode.jsValue(), resolver == nil ? nil : JSClosure { resolver!($0[0].fromJSValue()!).jsValue() }, type.jsValue(), result.jsValue()).fromJSValue()!
    }
}
