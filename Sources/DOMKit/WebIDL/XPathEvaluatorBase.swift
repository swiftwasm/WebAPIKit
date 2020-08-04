
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public protocol XPathEvaluatorBase: JSAbstractBridgedType {}

public extension XPathEvaluatorBase {
    func createExpression<XPathNSResolverType: XPathNSResolver>(expression: String, resolver: XPathNSResolverType? = nil) -> XPathExpression {
        return objectRef.createExpression!(JSValue(from: expression), JSValue(from: resolver)).fromJSValue()
    }

    func createNSResolver(nodeResolver: Node) -> XPathNSResolver {
        return objectRef.createNSResolver!(JSValue(from: nodeResolver)).fromJSValue() as AnyXPathNSResolver
    }

    func evaluate<XPathNSResolverType: XPathNSResolver>(expression: String, contextNode: Node, resolver: XPathNSResolverType? = nil, type: UInt16 = 0, result: XPathResult? = nil) -> XPathResult {
        return objectRef.evaluate!(JSValue(from: expression), JSValue(from: contextNode), JSValue(from: resolver), JSValue(from: type), JSValue(from: result)).fromJSValue()
    }
}
