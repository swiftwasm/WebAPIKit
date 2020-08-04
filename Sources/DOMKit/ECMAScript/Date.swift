//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

public class Date: JSBridgedType {

    public class var classRef: JSFunctionRef { JSObjectRef.global.Date.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public convenience init() {
        self.init(objectRef: Date.classRef(.new))
    }

    public func toDateString() -> String {
        return objectRef.toDateString!().fromJSValue()
    }

    public func getTime() -> Double {
        return objectRef.getTime!().fromJSValue()
    }
}
