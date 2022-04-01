// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

private enum Keys {
    static let hash: JSString = "hash"
    static let host: JSString = "host"
    static let hostname: JSString = "hostname"
    static let href: JSString = "href"
    static let origin: JSString = "origin"
    static let password: JSString = "password"
    static let pathname: JSString = "pathname"
    static let port: JSString = "port"
    static let `protocol`: JSString = "protocol"
    static let search: JSString = "search"
    static let username: JSString = "username"
}

public protocol HTMLHyperlinkElementUtils: JSBridgedClass {}
public extension HTMLHyperlinkElementUtils {
    var href: String {
        get { ReadWriteAttribute[Keys.href, in: jsObject] }
        set { ReadWriteAttribute[Keys.href, in: jsObject] = newValue }
    }

    var origin: String { ReadonlyAttribute[Keys.origin, in: jsObject] }

    var `protocol`: String {
        get { ReadWriteAttribute[Keys.protocol, in: jsObject] }
        set { ReadWriteAttribute[Keys.protocol, in: jsObject] = newValue }
    }

    var username: String {
        get { ReadWriteAttribute[Keys.username, in: jsObject] }
        set { ReadWriteAttribute[Keys.username, in: jsObject] = newValue }
    }

    var password: String {
        get { ReadWriteAttribute[Keys.password, in: jsObject] }
        set { ReadWriteAttribute[Keys.password, in: jsObject] = newValue }
    }

    var host: String {
        get { ReadWriteAttribute[Keys.host, in: jsObject] }
        set { ReadWriteAttribute[Keys.host, in: jsObject] = newValue }
    }

    var hostname: String {
        get { ReadWriteAttribute[Keys.hostname, in: jsObject] }
        set { ReadWriteAttribute[Keys.hostname, in: jsObject] = newValue }
    }

    var port: String {
        get { ReadWriteAttribute[Keys.port, in: jsObject] }
        set { ReadWriteAttribute[Keys.port, in: jsObject] = newValue }
    }

    var pathname: String {
        get { ReadWriteAttribute[Keys.pathname, in: jsObject] }
        set { ReadWriteAttribute[Keys.pathname, in: jsObject] = newValue }
    }

    var search: String {
        get { ReadWriteAttribute[Keys.search, in: jsObject] }
        set { ReadWriteAttribute[Keys.search, in: jsObject] = newValue }
    }

    var hash: String {
        get { ReadWriteAttribute[Keys.hash, in: jsObject] }
        set { ReadWriteAttribute[Keys.hash, in: jsObject] = newValue }
    }
}
