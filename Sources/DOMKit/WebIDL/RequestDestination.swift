// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum RequestDestination: JSString, JSValueCompatible {
    case _empty = ""
    case audio = "audio"
    case audioworklet = "audioworklet"
    case document = "document"
    case embed = "embed"
    case font = "font"
    case frame = "frame"
    case iframe = "iframe"
    case image = "image"
    case manifest = "manifest"
    case object = "object"
    case paintworklet = "paintworklet"
    case report = "report"
    case script = "script"
    case sharedworker = "sharedworker"
    case style = "style"
    case track = "track"
    case video = "video"
    case worker = "worker"
    case xslt = "xslt"

    public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    public init?(string: String) {
        self.init(rawValue: JSString(string))
    }

    public func jsValue() -> JSValue { rawValue.jsValue() }
}