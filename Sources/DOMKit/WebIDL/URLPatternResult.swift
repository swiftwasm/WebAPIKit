// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class URLPatternResult: BridgedDictionary {
    public convenience init(inputs: [URLPatternInput], protocol: URLPatternComponentResult, username: URLPatternComponentResult, password: URLPatternComponentResult, hostname: URLPatternComponentResult, port: URLPatternComponentResult, pathname: URLPatternComponentResult, search: URLPatternComponentResult, hash: URLPatternComponentResult) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.inputs] = inputs.jsValue()
        object[Strings.protocol] = `protocol`.jsValue()
        object[Strings.username] = username.jsValue()
        object[Strings.password] = password.jsValue()
        object[Strings.hostname] = hostname.jsValue()
        object[Strings.port] = port.jsValue()
        object[Strings.pathname] = pathname.jsValue()
        object[Strings.search] = search.jsValue()
        object[Strings.hash] = hash.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _inputs = ReadWriteAttribute(jsObject: object, name: Strings.inputs)
        _protocol = ReadWriteAttribute(jsObject: object, name: Strings.protocol)
        _username = ReadWriteAttribute(jsObject: object, name: Strings.username)
        _password = ReadWriteAttribute(jsObject: object, name: Strings.password)
        _hostname = ReadWriteAttribute(jsObject: object, name: Strings.hostname)
        _port = ReadWriteAttribute(jsObject: object, name: Strings.port)
        _pathname = ReadWriteAttribute(jsObject: object, name: Strings.pathname)
        _search = ReadWriteAttribute(jsObject: object, name: Strings.search)
        _hash = ReadWriteAttribute(jsObject: object, name: Strings.hash)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var inputs: [URLPatternInput]

    @ReadWriteAttribute
    public var `protocol`: URLPatternComponentResult

    @ReadWriteAttribute
    public var username: URLPatternComponentResult

    @ReadWriteAttribute
    public var password: URLPatternComponentResult

    @ReadWriteAttribute
    public var hostname: URLPatternComponentResult

    @ReadWriteAttribute
    public var port: URLPatternComponentResult

    @ReadWriteAttribute
    public var pathname: URLPatternComponentResult

    @ReadWriteAttribute
    public var search: URLPatternComponentResult

    @ReadWriteAttribute
    public var hash: URLPatternComponentResult
}