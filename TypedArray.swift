//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

public class Float64Array: JSTypedArray {

    public typealias Element = Double

    public static let constructor: JSFunction = { JSObject.global.Float64Array.function! }()

    public let jsObject: JSObject

    public required init(jsObject: JSObject) {
        self.jsObject = jsObject
    }
}

public class Float32Array: JSTypedArray {

    public typealias Element = Float

    public static let constructor: JSFunction = { JSObject.global.Float32Array.function! }()

    public let jsObject: JSObject

    public required init(jsObject: JSObject) {
        self.jsObject = jsObject
    }
}

public class Uint32Array: JSTypedArray {

    public typealias Element = UInt32

    public static let constructor: JSFunction = { JSObject.global.Uint32Array.function! }()

    public let jsObject: JSObject

    public required init(jsObject: JSObject) {
        self.jsObject = jsObject
    }
}

public class Uint16Array: JSTypedArray {

    public typealias Element = UInt16

    public static let constructor: JSFunction = { JSObject.global.Uint16Array.function! }()

    public let jsObject: JSObject

    public required init(jsObject: JSObject) {
        self.jsObject = jsObject
    }
}

public class Uint8Array: JSTypedArray {

    public typealias Element = UInt8

    public static let constructor: JSFunction = { JSObject.global.Uint8Array.function! }()


    public let jsObject: JSObject

    public required init(jsObject: JSObject) {
        self.jsObject = jsObject
    }
}

public class Int32Array: JSTypedArray {

    public typealias Element = Int32

    public static let constructor: JSFunction = { JSObject.global.Int32Array.function! }()

    public let jsObject: JSObject

    public required init(jsObject: JSObject) {
        self.jsObject = jsObject
    }
}

public class Int16Array: JSTypedArray {

    public typealias Element = Int16

    public static let constructor: JSFunction = { JSObject.global.Int16Array.function! }()
    public let jsObject: JSObject

    public required init(jsObject: JSObject) {
        self.jsObject = jsObject
    }
}

public class Int8Array: JSTypedArray {

    public typealias Element = Int8

    public static let constructor: JSFunction = { JSObject.global.Int8Array.function! }()
    public let jsObject: JSObject

    public required init(jsObject: JSObject) {
        self.jsObject = jsObject
    }
}

public class Uint8ClampedArray: JSTypedArray {

    public typealias Element = UInt8

    public static let constructor: JSFunction = { JSObject.global.Uint8ClampedArray.function! }()
    public let jsObject: JSObject

    public required init(jsObject: JSObject) {
        self.jsObject = jsObject
    }
}
