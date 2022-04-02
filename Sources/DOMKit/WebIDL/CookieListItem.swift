// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CookieListItem: BridgedDictionary {
    public convenience init(name: String, value: String, domain: String?, path: String, expires: DOMTimeStamp?, secure: Bool, sameSite: CookieSameSite) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.name] = name.jsValue()
        object[Strings.value] = value.jsValue()
        object[Strings.domain] = domain.jsValue()
        object[Strings.path] = path.jsValue()
        object[Strings.expires] = expires.jsValue()
        object[Strings.secure] = secure.jsValue()
        object[Strings.sameSite] = sameSite.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _name = ReadWriteAttribute(jsObject: object, name: Strings.name)
        _value = ReadWriteAttribute(jsObject: object, name: Strings.value)
        _domain = ReadWriteAttribute(jsObject: object, name: Strings.domain)
        _path = ReadWriteAttribute(jsObject: object, name: Strings.path)
        _expires = ReadWriteAttribute(jsObject: object, name: Strings.expires)
        _secure = ReadWriteAttribute(jsObject: object, name: Strings.secure)
        _sameSite = ReadWriteAttribute(jsObject: object, name: Strings.sameSite)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var name: String

    @ReadWriteAttribute
    public var value: String

    @ReadWriteAttribute
    public var domain: String?

    @ReadWriteAttribute
    public var path: String

    @ReadWriteAttribute
    public var expires: DOMTimeStamp?

    @ReadWriteAttribute
    public var secure: Bool

    @ReadWriteAttribute
    public var sameSite: CookieSameSite
}