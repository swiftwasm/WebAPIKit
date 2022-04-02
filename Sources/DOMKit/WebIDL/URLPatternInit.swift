// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class URLPatternInit: BridgedDictionary {
    public convenience init(protocol: String, username: String, password: String, hostname: String, port: String, pathname: String, search: String, hash: String, baseURL: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.protocol] = `protocol`.jsValue()
        object[Strings.username] = username.jsValue()
        object[Strings.password] = password.jsValue()
        object[Strings.hostname] = hostname.jsValue()
        object[Strings.port] = port.jsValue()
        object[Strings.pathname] = pathname.jsValue()
        object[Strings.search] = search.jsValue()
        object[Strings.hash] = hash.jsValue()
        object[Strings.baseURL] = baseURL.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _protocol = ReadWriteAttribute(jsObject: object, name: Strings.protocol)
        _username = ReadWriteAttribute(jsObject: object, name: Strings.username)
        _password = ReadWriteAttribute(jsObject: object, name: Strings.password)
        _hostname = ReadWriteAttribute(jsObject: object, name: Strings.hostname)
        _port = ReadWriteAttribute(jsObject: object, name: Strings.port)
        _pathname = ReadWriteAttribute(jsObject: object, name: Strings.pathname)
        _search = ReadWriteAttribute(jsObject: object, name: Strings.search)
        _hash = ReadWriteAttribute(jsObject: object, name: Strings.hash)
        _baseURL = ReadWriteAttribute(jsObject: object, name: Strings.baseURL)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var `protocol`: String

    @ReadWriteAttribute
    public var username: String

    @ReadWriteAttribute
    public var password: String

    @ReadWriteAttribute
    public var hostname: String

    @ReadWriteAttribute
    public var port: String

    @ReadWriteAttribute
    public var pathname: String

    @ReadWriteAttribute
    public var search: String

    @ReadWriteAttribute
    public var hash: String

    @ReadWriteAttribute
    public var baseURL: String
}