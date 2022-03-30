// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EventModifierInit: JSObject {
    public init(ctrlKey: Bool, shiftKey: Bool, altKey: Bool, metaKey: Bool, modifierAltGraph: Bool, modifierCapsLock: Bool, modifierFn: Bool, modifierFnLock: Bool, modifierHyper: Bool, modifierNumLock: Bool, modifierScrollLock: Bool, modifierSuper: Bool, modifierSymbol: Bool, modifierSymbolLock: Bool) {
        let object = JSObject.global.Object.function!.new()
        object["ctrlKey"] = ctrlKey.jsValue()
        object["shiftKey"] = shiftKey.jsValue()
        object["altKey"] = altKey.jsValue()
        object["metaKey"] = metaKey.jsValue()
        object["modifierAltGraph"] = modifierAltGraph.jsValue()
        object["modifierCapsLock"] = modifierCapsLock.jsValue()
        object["modifierFn"] = modifierFn.jsValue()
        object["modifierFnLock"] = modifierFnLock.jsValue()
        object["modifierHyper"] = modifierHyper.jsValue()
        object["modifierNumLock"] = modifierNumLock.jsValue()
        object["modifierScrollLock"] = modifierScrollLock.jsValue()
        object["modifierSuper"] = modifierSuper.jsValue()
        object["modifierSymbol"] = modifierSymbol.jsValue()
        object["modifierSymbolLock"] = modifierSymbolLock.jsValue()
        _ctrlKey = ReadWriteAttribute(jsObject: object, name: "ctrlKey")
        _shiftKey = ReadWriteAttribute(jsObject: object, name: "shiftKey")
        _altKey = ReadWriteAttribute(jsObject: object, name: "altKey")
        _metaKey = ReadWriteAttribute(jsObject: object, name: "metaKey")
        _modifierAltGraph = ReadWriteAttribute(jsObject: object, name: "modifierAltGraph")
        _modifierCapsLock = ReadWriteAttribute(jsObject: object, name: "modifierCapsLock")
        _modifierFn = ReadWriteAttribute(jsObject: object, name: "modifierFn")
        _modifierFnLock = ReadWriteAttribute(jsObject: object, name: "modifierFnLock")
        _modifierHyper = ReadWriteAttribute(jsObject: object, name: "modifierHyper")
        _modifierNumLock = ReadWriteAttribute(jsObject: object, name: "modifierNumLock")
        _modifierScrollLock = ReadWriteAttribute(jsObject: object, name: "modifierScrollLock")
        _modifierSuper = ReadWriteAttribute(jsObject: object, name: "modifierSuper")
        _modifierSymbol = ReadWriteAttribute(jsObject: object, name: "modifierSymbol")
        _modifierSymbolLock = ReadWriteAttribute(jsObject: object, name: "modifierSymbolLock")
        super.init(cloning: object)
    }

    @ReadWriteAttribute
    public var ctrlKey: Bool

    @ReadWriteAttribute
    public var shiftKey: Bool

    @ReadWriteAttribute
    public var altKey: Bool

    @ReadWriteAttribute
    public var metaKey: Bool

    @ReadWriteAttribute
    public var modifierAltGraph: Bool

    @ReadWriteAttribute
    public var modifierCapsLock: Bool

    @ReadWriteAttribute
    public var modifierFn: Bool

    @ReadWriteAttribute
    public var modifierFnLock: Bool

    @ReadWriteAttribute
    public var modifierHyper: Bool

    @ReadWriteAttribute
    public var modifierNumLock: Bool

    @ReadWriteAttribute
    public var modifierScrollLock: Bool

    @ReadWriteAttribute
    public var modifierSuper: Bool

    @ReadWriteAttribute
    public var modifierSymbol: Bool

    @ReadWriteAttribute
    public var modifierSymbolLock: Bool
}
