// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

/* variadic generics please */
public enum ClosureAttribute {
    // MARK: Required closures

    @propertyWrapper public final class Required0<ReturnType>
        where ReturnType: JSValueCompatible
    {
        @usableFromInline let jsObject: JSObject
        @usableFromInline let name: JSString

        public init(jsObject: JSObject, name: JSString) {
            self.jsObject = jsObject
            self.name = name
        }

        @inlinable public var wrappedValue: () -> ReturnType {
            get { Required0[name, in: jsObject] }
            set { Required0[name, in: jsObject] = newValue }
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

    @propertyWrapper public final class Required1<A0, ReturnType>
        where A0: JSValueCompatible, ReturnType: JSValueCompatible
    {
        @usableFromInline let jsObject: JSObject
        @usableFromInline let name: JSString

        public init(jsObject: JSObject, name: JSString) {
            self.jsObject = jsObject
            self.name = name
        }

        @inlinable public var wrappedValue: (A0) -> ReturnType {
            get { Required1[name, in: jsObject] }
            set { Required1[name, in: jsObject] = newValue }
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

    @propertyWrapper public final class Required2<A0, A1, ReturnType>
        where A0: JSValueCompatible, A1: JSValueCompatible, ReturnType: JSValueCompatible
    {
        @usableFromInline let jsObject: JSObject
        @usableFromInline let name: JSString

        public init(jsObject: JSObject, name: JSString) {
            self.jsObject = jsObject
            self.name = name
        }

        @inlinable public var wrappedValue: (A0, A1) -> ReturnType {
            get { Required2[name, in: jsObject] }
            set { Required2[name, in: jsObject] = newValue }
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

    @propertyWrapper public final class Required3<A0, A1, A2, ReturnType>
        where A0: JSValueCompatible, A1: JSValueCompatible, A2: JSValueCompatible, ReturnType: JSValueCompatible
    {
        @usableFromInline let jsObject: JSObject
        @usableFromInline let name: JSString

        public init(jsObject: JSObject, name: JSString) {
            self.jsObject = jsObject
            self.name = name
        }

        @inlinable public var wrappedValue: (A0, A1, A2) -> ReturnType {
            get { Required3[name, in: jsObject] }
            set { Required3[name, in: jsObject] = newValue }
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

    @propertyWrapper public final class Required5<A0, A1, A2, A3, A4, ReturnType>
        where A0: JSValueCompatible, A1: JSValueCompatible, A2: JSValueCompatible, A3: JSValueCompatible, A4: JSValueCompatible, ReturnType: JSValueCompatible
    {
        @usableFromInline let jsObject: JSObject
        @usableFromInline let name: JSString

        public init(jsObject: JSObject, name: JSString) {
            self.jsObject = jsObject
            self.name = name
        }

        @inlinable public var wrappedValue: (A0, A1, A2, A3, A4) -> ReturnType {
            get { Required5[name, in: jsObject] }
            set { Required5[name, in: jsObject] = newValue }
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

    // MARK: - Optional closures

    @propertyWrapper public final class Optional0<ReturnType>
        where ReturnType: JSValueCompatible
    {
        @usableFromInline let jsObject: JSObject
        @usableFromInline let name: JSString

        public init(jsObject: JSObject, name: JSString) {
            self.jsObject = jsObject
            self.name = name
        }

        @inlinable public var wrappedValue: (() -> ReturnType)? {
            get { Optional0[name, in: jsObject] }
            set { Optional0[name, in: jsObject] = newValue }
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

    @propertyWrapper public final class Optional1<A0, ReturnType>
        where A0: JSValueCompatible, ReturnType: JSValueCompatible
    {
        @usableFromInline let jsObject: JSObject
        @usableFromInline let name: JSString

        public init(jsObject: JSObject, name: JSString) {
            self.jsObject = jsObject
            self.name = name
        }

        @inlinable public var wrappedValue: ((A0) -> ReturnType)? {
            get { Optional1[name, in: jsObject] }
            set { Optional1[name, in: jsObject] = newValue }
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

    @propertyWrapper public final class Optional2<A0, A1, ReturnType>
        where A0: JSValueCompatible, A1: JSValueCompatible, ReturnType: JSValueCompatible
    {
        @usableFromInline let jsObject: JSObject
        @usableFromInline let name: JSString

        public init(jsObject: JSObject, name: JSString) {
            self.jsObject = jsObject
            self.name = name
        }

        @inlinable public var wrappedValue: ((A0, A1) -> ReturnType)? {
            get { Optional2[name, in: jsObject] }
            set { Optional2[name, in: jsObject] = newValue }
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

    @propertyWrapper public final class Optional3<A0, A1, A2, ReturnType>
        where A0: JSValueCompatible, A1: JSValueCompatible, A2: JSValueCompatible, ReturnType: JSValueCompatible
    {
        @usableFromInline let jsObject: JSObject
        @usableFromInline let name: JSString

        public init(jsObject: JSObject, name: JSString) {
            self.jsObject = jsObject
            self.name = name
        }

        @inlinable public var wrappedValue: ((A0, A1, A2) -> ReturnType)? {
            get { Optional3[name, in: jsObject] }
            set { Optional3[name, in: jsObject] = newValue }
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

    @propertyWrapper public final class Optional5<A0, A1, A2, A3, A4, ReturnType>
        where A0: JSValueCompatible, A1: JSValueCompatible, A2: JSValueCompatible, A3: JSValueCompatible, A4: JSValueCompatible, ReturnType: JSValueCompatible
    {
        @usableFromInline let jsObject: JSObject
        @usableFromInline let name: JSString

        public init(jsObject: JSObject, name: JSString) {
            self.jsObject = jsObject
            self.name = name
        }

        @inlinable public var wrappedValue: ((A0, A1, A2, A3, A4) -> ReturnType)? {
            get { Optional5[name, in: jsObject] }
            set { Optional5[name, in: jsObject] = newValue }
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
}
