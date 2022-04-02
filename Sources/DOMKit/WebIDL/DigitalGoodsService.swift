// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DigitalGoodsService: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.DigitalGoodsService].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func getDetails(itemIds: [String]) -> JSPromise {
        let this = jsObject
        return this[Strings.getDetails].function!(this: this, arguments: [itemIds.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getDetails(itemIds: [String]) async throws -> [ItemDetails] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getDetails].function!(this: this, arguments: [itemIds.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func listPurchases() -> JSPromise {
        let this = jsObject
        return this[Strings.listPurchases].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func listPurchases() async throws -> [PurchaseDetails] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.listPurchases].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func listPurchaseHistory() -> JSPromise {
        let this = jsObject
        return this[Strings.listPurchaseHistory].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func listPurchaseHistory() async throws -> [PurchaseDetails] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.listPurchaseHistory].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func consume(purchaseToken: String) -> JSPromise {
        let this = jsObject
        return this[Strings.consume].function!(this: this, arguments: [purchaseToken.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func consume(purchaseToken: String) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.consume].function!(this: this, arguments: [purchaseToken.jsValue()]).fromJSValue()!
        _ = try await _promise.get()
    }
}
