// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ContactAddress: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.ContactAddress].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _city = ReadonlyAttribute(jsObject: jsObject, name: Strings.city)
        _country = ReadonlyAttribute(jsObject: jsObject, name: Strings.country)
        _dependentLocality = ReadonlyAttribute(jsObject: jsObject, name: Strings.dependentLocality)
        _organization = ReadonlyAttribute(jsObject: jsObject, name: Strings.organization)
        _phone = ReadonlyAttribute(jsObject: jsObject, name: Strings.phone)
        _postalCode = ReadonlyAttribute(jsObject: jsObject, name: Strings.postalCode)
        _recipient = ReadonlyAttribute(jsObject: jsObject, name: Strings.recipient)
        _region = ReadonlyAttribute(jsObject: jsObject, name: Strings.region)
        _sortingCode = ReadonlyAttribute(jsObject: jsObject, name: Strings.sortingCode)
        _addressLine = ReadonlyAttribute(jsObject: jsObject, name: Strings.addressLine)
        self.jsObject = jsObject
    }

    public func toJSON() -> JSObject {
        jsObject[Strings.toJSON]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var city: String

    @ReadonlyAttribute
    public var country: String

    @ReadonlyAttribute
    public var dependentLocality: String

    @ReadonlyAttribute
    public var organization: String

    @ReadonlyAttribute
    public var phone: String

    @ReadonlyAttribute
    public var postalCode: String

    @ReadonlyAttribute
    public var recipient: String

    @ReadonlyAttribute
    public var region: String

    @ReadonlyAttribute
    public var sortingCode: String

    @ReadonlyAttribute
    public var addressLine: [String]
}