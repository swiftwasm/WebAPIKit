// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PhotoCapabilities: BridgedDictionary {
    public convenience init(redEyeReduction: RedEyeReduction, imageHeight: MediaSettingsRange, imageWidth: MediaSettingsRange, fillLightMode: [FillLightMode]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.redEyeReduction] = redEyeReduction.jsValue()
        object[Strings.imageHeight] = imageHeight.jsValue()
        object[Strings.imageWidth] = imageWidth.jsValue()
        object[Strings.fillLightMode] = fillLightMode.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _redEyeReduction = ReadWriteAttribute(jsObject: object, name: Strings.redEyeReduction)
        _imageHeight = ReadWriteAttribute(jsObject: object, name: Strings.imageHeight)
        _imageWidth = ReadWriteAttribute(jsObject: object, name: Strings.imageWidth)
        _fillLightMode = ReadWriteAttribute(jsObject: object, name: Strings.fillLightMode)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var redEyeReduction: RedEyeReduction

    @ReadWriteAttribute
    public var imageHeight: MediaSettingsRange

    @ReadWriteAttribute
    public var imageWidth: MediaSettingsRange

    @ReadWriteAttribute
    public var fillLightMode: [FillLightMode]
}