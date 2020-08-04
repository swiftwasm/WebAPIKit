//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

public class ArrayBuffer: JSBridgedType {

    public class var classRef: JSFunctionRef { JSObjectRef.global.ArrayBuffer.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public convenience init(length: Int) {

        self.init(objectRef: Self.classRef(new: length))
    }

    public static func isView(_ object: AnyJSValueCodable) -> Bool {
        return JSObjectRef.global.ArrayBuffer.object!.isView!(object).fromJSValue()
    }
}
