//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

public class Float64Array: JSTypedArray {

    public typealias Element = Double

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Float64Array.function! }()

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Float32Array: JSTypedArray {

    public typealias Element = Float

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Float32Array.function! }()

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Uint32Array: JSTypedArray {

    public typealias Element = UInt32

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Uint32Array.function! }()

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Uint16Array: TypedArray {

    public typealias Element = UInt16

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Uint16Array.function! }()

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Uint8Array: TypedArray {

    public typealias Element = UInt8

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Uint8Array.function! }()


    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Int32Array: TypedArray {

    public typealias Element = Int32

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Int32Array.function! }()

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Int16Array: TypedArray {

    public typealias Element = Int16

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Int16Array.function! }()
    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Int8Array: TypedArray {

    public typealias Element = Int8

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Int8Array.function! }()
    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Uint8ClampedArray: TypedArray {

    public typealias Element = UInt8

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Uint8ClampedArray.function! }()
    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}
