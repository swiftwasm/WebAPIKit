// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class UADataValues: BridgedDictionary {
    public convenience init(brands: [NavigatorUABrandVersion], mobile: Bool, architecture: String, bitness: String, model: String, platform: String, platformVersion: String, uaFullVersion: String, wow64: Bool, fullVersionList: [NavigatorUABrandVersion]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.brands] = brands.jsValue
        object[Strings.mobile] = mobile.jsValue
        object[Strings.architecture] = architecture.jsValue
        object[Strings.bitness] = bitness.jsValue
        object[Strings.model] = model.jsValue
        object[Strings.platform] = platform.jsValue
        object[Strings.platformVersion] = platformVersion.jsValue
        object[Strings.uaFullVersion] = uaFullVersion.jsValue
        object[Strings.wow64] = wow64.jsValue
        object[Strings.fullVersionList] = fullVersionList.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _brands = ReadWriteAttribute(jsObject: object, name: Strings.brands)
        _mobile = ReadWriteAttribute(jsObject: object, name: Strings.mobile)
        _architecture = ReadWriteAttribute(jsObject: object, name: Strings.architecture)
        _bitness = ReadWriteAttribute(jsObject: object, name: Strings.bitness)
        _model = ReadWriteAttribute(jsObject: object, name: Strings.model)
        _platform = ReadWriteAttribute(jsObject: object, name: Strings.platform)
        _platformVersion = ReadWriteAttribute(jsObject: object, name: Strings.platformVersion)
        _uaFullVersion = ReadWriteAttribute(jsObject: object, name: Strings.uaFullVersion)
        _wow64 = ReadWriteAttribute(jsObject: object, name: Strings.wow64)
        _fullVersionList = ReadWriteAttribute(jsObject: object, name: Strings.fullVersionList)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var brands: [NavigatorUABrandVersion]

    @ReadWriteAttribute
    public var mobile: Bool

    @ReadWriteAttribute
    public var architecture: String

    @ReadWriteAttribute
    public var bitness: String

    @ReadWriteAttribute
    public var model: String

    @ReadWriteAttribute
    public var platform: String

    @ReadWriteAttribute
    public var platformVersion: String

    @ReadWriteAttribute
    public var uaFullVersion: String

    @ReadWriteAttribute
    public var wow64: Bool

    @ReadWriteAttribute
    public var fullVersionList: [NavigatorUABrandVersion]
}
