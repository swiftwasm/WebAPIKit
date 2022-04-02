// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

/* variadic generics please */
@propertyWrapper public final class ClosureAttribute0<ReturnType>
    where ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: () -> ReturnType {
        get { ClosureAttribute0[name, in: jsObject] }
        set { ClosureAttribute0[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> () -> ReturnType {
        get {
            let function = jsObject[name].function!
            return { function().fromJSValue()! }
        }
        set {
            jsObject[name] = JSClosure { _ in
                newValue().jsValue()
            }.jsValue()
        }
    }
}

@propertyWrapper public final class ClosureAttribute0Optional<ReturnType>
    where ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: (() -> ReturnType)? {
        get { ClosureAttribute0Optional[name, in: jsObject] }
        set { ClosureAttribute0Optional[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> (() -> ReturnType)? {
        get {
            guard let function = jsObject[name].function else {
                return nil
            }
            return { function().fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject[name] = JSClosure { _ in
                    newValue().jsValue()
                }.jsValue()
            } else {
                jsObject[name] = .null
            }
        }
    }
}

@propertyWrapper public final class ClosureAttribute1<A0, ReturnType>
    where A0: JSValueCompatible, ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: (A0) -> ReturnType {
        get { ClosureAttribute1[name, in: jsObject] }
        set { ClosureAttribute1[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> (A0) -> ReturnType {
        get {
            let function = jsObject[name].function!
            return { function($0.jsValue()).fromJSValue()! }
        }
        set {
            jsObject[name] = JSClosure {
                newValue($0[0].fromJSValue()!).jsValue()
            }.jsValue()
        }
    }
}

@propertyWrapper public final class ClosureAttribute1Optional<A0, ReturnType>
    where A0: JSValueCompatible, ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: ((A0) -> ReturnType)? {
        get { ClosureAttribute1Optional[name, in: jsObject] }
        set { ClosureAttribute1Optional[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> ((A0) -> ReturnType)? {
        get {
            guard let function = jsObject[name].function else {
                return nil
            }
            return { function($0.jsValue()).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject[name] = JSClosure {
                    newValue($0[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject[name] = .null
            }
        }
    }
}

@propertyWrapper public final class ClosureAttribute2<A0, A1, ReturnType>
    where A0: JSValueCompatible, A1: JSValueCompatible, ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: (A0, A1) -> ReturnType {
        get { ClosureAttribute2[name, in: jsObject] }
        set { ClosureAttribute2[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> (A0, A1) -> ReturnType {
        get {
            let function = jsObject[name].function!
            return { function($0.jsValue(), $1.jsValue()).fromJSValue()! }
        }
        set {
            jsObject[name] = JSClosure {
                newValue($0[0].fromJSValue()!, $0[1].fromJSValue()!).jsValue()
            }.jsValue()
        }
    }
}

@propertyWrapper public final class ClosureAttribute2Optional<A0, A1, ReturnType>
    where A0: JSValueCompatible, A1: JSValueCompatible, ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: ((A0, A1) -> ReturnType)? {
        get { ClosureAttribute2Optional[name, in: jsObject] }
        set { ClosureAttribute2Optional[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> ((A0, A1) -> ReturnType)? {
        get {
            guard let function = jsObject[name].function else {
                return nil
            }
            return { function($0.jsValue(), $1.jsValue()).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject[name] = JSClosure {
                    newValue($0[0].fromJSValue()!, $0[1].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject[name] = .null
            }
        }
    }
}

@propertyWrapper public final class ClosureAttribute3<A0, A1, A2, ReturnType>
    where A0: JSValueCompatible, A1: JSValueCompatible, A2: JSValueCompatible, ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: (A0, A1, A2) -> ReturnType {
        get { ClosureAttribute3[name, in: jsObject] }
        set { ClosureAttribute3[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> (A0, A1, A2) -> ReturnType {
        get {
            let function = jsObject[name].function!
            return { function($0.jsValue(), $1.jsValue(), $2.jsValue()).fromJSValue()! }
        }
        set {
            jsObject[name] = JSClosure {
                newValue($0[0].fromJSValue()!, $0[1].fromJSValue()!, $0[2].fromJSValue()!).jsValue()
            }.jsValue()
        }
    }
}

@propertyWrapper public final class ClosureAttribute3Optional<A0, A1, A2, ReturnType>
    where A0: JSValueCompatible, A1: JSValueCompatible, A2: JSValueCompatible, ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: ((A0, A1, A2) -> ReturnType)? {
        get { ClosureAttribute3Optional[name, in: jsObject] }
        set { ClosureAttribute3Optional[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> ((A0, A1, A2) -> ReturnType)? {
        get {
            guard let function = jsObject[name].function else {
                return nil
            }
            return { function($0.jsValue(), $1.jsValue(), $2.jsValue()).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject[name] = JSClosure {
                    newValue($0[0].fromJSValue()!, $0[1].fromJSValue()!, $0[2].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject[name] = .null
            }
        }
    }
}

@propertyWrapper public final class ClosureAttribute5<A0, A1, A2, A3, A4, ReturnType>
    where A0: JSValueCompatible, A1: JSValueCompatible, A2: JSValueCompatible, A3: JSValueCompatible, A4: JSValueCompatible, ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: (A0, A1, A2, A3, A4) -> ReturnType {
        get { ClosureAttribute5[name, in: jsObject] }
        set { ClosureAttribute5[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> (A0, A1, A2, A3, A4) -> ReturnType {
        get {
            let function = jsObject[name].function!
            return { function($0.jsValue(), $1.jsValue(), $2.jsValue(), $3.jsValue(), $4.jsValue()).fromJSValue()! }
        }
        set {
            jsObject[name] = JSClosure {
                newValue($0[0].fromJSValue()!, $0[1].fromJSValue()!, $0[2].fromJSValue()!, $0[3].fromJSValue()!, $0[4].fromJSValue()!).jsValue()
            }.jsValue()
        }
    }
}

@propertyWrapper public final class ClosureAttribute5Optional<A0, A1, A2, A3, A4, ReturnType>
    where A0: JSValueCompatible, A1: JSValueCompatible, A2: JSValueCompatible, A3: JSValueCompatible, A4: JSValueCompatible, ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: ((A0, A1, A2, A3, A4) -> ReturnType)? {
        get { ClosureAttribute5Optional[name, in: jsObject] }
        set { ClosureAttribute5Optional[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> ((A0, A1, A2, A3, A4) -> ReturnType)? {
        get {
            guard let function = jsObject[name].function else {
                return nil
            }
            return { function($0.jsValue(), $1.jsValue(), $2.jsValue(), $3.jsValue(), $4.jsValue()).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject[name] = JSClosure {
                    newValue($0[0].fromJSValue()!, $0[1].fromJSValue()!, $0[2].fromJSValue()!, $0[3].fromJSValue()!, $0[4].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject[name] = .null
            }
        }
    }
}
