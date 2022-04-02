// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GamepadEventInit: BridgedDictionary {
    public convenience init(gamepad: Gamepad) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.gamepad] = gamepad.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _gamepad = ReadWriteAttribute(jsObject: object, name: Strings.gamepad)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var gamepad: Gamepad
}