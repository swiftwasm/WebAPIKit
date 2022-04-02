// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NotificationOptions: BridgedDictionary {
    public convenience init(dir: NotificationDirection, lang: String, body: String, tag: String, image: String, icon: String, badge: String, vibrate: VibratePattern, timestamp: EpochTimeStamp, renotify: Bool, silent: Bool, requireInteraction: Bool, data: JSValue, actions: [NotificationAction]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.dir] = dir.jsValue()
        object[Strings.lang] = lang.jsValue()
        object[Strings.body] = body.jsValue()
        object[Strings.tag] = tag.jsValue()
        object[Strings.image] = image.jsValue()
        object[Strings.icon] = icon.jsValue()
        object[Strings.badge] = badge.jsValue()
        object[Strings.vibrate] = vibrate.jsValue()
        object[Strings.timestamp] = timestamp.jsValue()
        object[Strings.renotify] = renotify.jsValue()
        object[Strings.silent] = silent.jsValue()
        object[Strings.requireInteraction] = requireInteraction.jsValue()
        object[Strings.data] = data.jsValue()
        object[Strings.actions] = actions.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _dir = ReadWriteAttribute(jsObject: object, name: Strings.dir)
        _lang = ReadWriteAttribute(jsObject: object, name: Strings.lang)
        _body = ReadWriteAttribute(jsObject: object, name: Strings.body)
        _tag = ReadWriteAttribute(jsObject: object, name: Strings.tag)
        _image = ReadWriteAttribute(jsObject: object, name: Strings.image)
        _icon = ReadWriteAttribute(jsObject: object, name: Strings.icon)
        _badge = ReadWriteAttribute(jsObject: object, name: Strings.badge)
        _vibrate = ReadWriteAttribute(jsObject: object, name: Strings.vibrate)
        _timestamp = ReadWriteAttribute(jsObject: object, name: Strings.timestamp)
        _renotify = ReadWriteAttribute(jsObject: object, name: Strings.renotify)
        _silent = ReadWriteAttribute(jsObject: object, name: Strings.silent)
        _requireInteraction = ReadWriteAttribute(jsObject: object, name: Strings.requireInteraction)
        _data = ReadWriteAttribute(jsObject: object, name: Strings.data)
        _actions = ReadWriteAttribute(jsObject: object, name: Strings.actions)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var dir: NotificationDirection

    @ReadWriteAttribute
    public var lang: String

    @ReadWriteAttribute
    public var body: String

    @ReadWriteAttribute
    public var tag: String

    @ReadWriteAttribute
    public var image: String

    @ReadWriteAttribute
    public var icon: String

    @ReadWriteAttribute
    public var badge: String

    @ReadWriteAttribute
    public var vibrate: VibratePattern

    @ReadWriteAttribute
    public var timestamp: EpochTimeStamp

    @ReadWriteAttribute
    public var renotify: Bool

    @ReadWriteAttribute
    public var silent: Bool

    @ReadWriteAttribute
    public var requireInteraction: Bool

    @ReadWriteAttribute
    public var data: JSValue

    @ReadWriteAttribute
    public var actions: [NotificationAction]
}
