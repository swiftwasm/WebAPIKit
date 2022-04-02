// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCIdentityProvider: BridgedDictionary {
    public convenience init(generateAssertion: @escaping GenerateAssertionCallback, validateAssertion: @escaping ValidateAssertionCallback) {
        let object = JSObject.global[Strings.Object].function!.new()
        ClosureAttribute.Required3[Strings.generateAssertion, in: object] = generateAssertion
        ClosureAttribute.Required2[Strings.validateAssertion, in: object] = validateAssertion
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _generateAssertion = ClosureAttribute.Required3(jsObject: object, name: Strings.generateAssertion)
        _validateAssertion = ClosureAttribute.Required2(jsObject: object, name: Strings.validateAssertion)
        super.init(unsafelyWrapping: object)
    }

    @ClosureAttribute.Required3
    public var generateAssertion: GenerateAssertionCallback

    @ClosureAttribute.Required2
    public var validateAssertion: ValidateAssertionCallback
}