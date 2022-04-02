// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SubtleCrypto: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.SubtleCrypto].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func encrypt(algorithm: AlgorithmIdentifier, key: CryptoKey, data: BufferSource) -> JSPromise {
        jsObject[Strings.encrypt]!(algorithm.jsValue(), key.jsValue(), data.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func encrypt(algorithm: AlgorithmIdentifier, key: CryptoKey, data: BufferSource) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.encrypt]!(algorithm.jsValue(), key.jsValue(), data.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func decrypt(algorithm: AlgorithmIdentifier, key: CryptoKey, data: BufferSource) -> JSPromise {
        jsObject[Strings.decrypt]!(algorithm.jsValue(), key.jsValue(), data.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func decrypt(algorithm: AlgorithmIdentifier, key: CryptoKey, data: BufferSource) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.decrypt]!(algorithm.jsValue(), key.jsValue(), data.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func sign(algorithm: AlgorithmIdentifier, key: CryptoKey, data: BufferSource) -> JSPromise {
        jsObject[Strings.sign]!(algorithm.jsValue(), key.jsValue(), data.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func sign(algorithm: AlgorithmIdentifier, key: CryptoKey, data: BufferSource) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.sign]!(algorithm.jsValue(), key.jsValue(), data.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func verify(algorithm: AlgorithmIdentifier, key: CryptoKey, signature: BufferSource, data: BufferSource) -> JSPromise {
        jsObject[Strings.verify]!(algorithm.jsValue(), key.jsValue(), signature.jsValue(), data.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func verify(algorithm: AlgorithmIdentifier, key: CryptoKey, signature: BufferSource, data: BufferSource) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.verify]!(algorithm.jsValue(), key.jsValue(), signature.jsValue(), data.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func digest(algorithm: AlgorithmIdentifier, data: BufferSource) -> JSPromise {
        jsObject[Strings.digest]!(algorithm.jsValue(), data.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func digest(algorithm: AlgorithmIdentifier, data: BufferSource) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.digest]!(algorithm.jsValue(), data.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func generateKey(algorithm: AlgorithmIdentifier, extractable: Bool, keyUsages: [KeyUsage]) -> JSPromise {
        jsObject[Strings.generateKey]!(algorithm.jsValue(), extractable.jsValue(), keyUsages.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func generateKey(algorithm: AlgorithmIdentifier, extractable: Bool, keyUsages: [KeyUsage]) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.generateKey]!(algorithm.jsValue(), extractable.jsValue(), keyUsages.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func deriveKey(algorithm: AlgorithmIdentifier, baseKey: CryptoKey, derivedKeyType: AlgorithmIdentifier, extractable: Bool, keyUsages: [KeyUsage]) -> JSPromise {
        jsObject[Strings.deriveKey]!(algorithm.jsValue(), baseKey.jsValue(), derivedKeyType.jsValue(), extractable.jsValue(), keyUsages.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func deriveKey(algorithm: AlgorithmIdentifier, baseKey: CryptoKey, derivedKeyType: AlgorithmIdentifier, extractable: Bool, keyUsages: [KeyUsage]) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.deriveKey]!(algorithm.jsValue(), baseKey.jsValue(), derivedKeyType.jsValue(), extractable.jsValue(), keyUsages.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func deriveBits(algorithm: AlgorithmIdentifier, baseKey: CryptoKey, length: UInt32) -> JSPromise {
        jsObject[Strings.deriveBits]!(algorithm.jsValue(), baseKey.jsValue(), length.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func deriveBits(algorithm: AlgorithmIdentifier, baseKey: CryptoKey, length: UInt32) async throws -> ArrayBuffer {
        let _promise: JSPromise = jsObject[Strings.deriveBits]!(algorithm.jsValue(), baseKey.jsValue(), length.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func importKey(format: KeyFormat, keyData: __UNSUPPORTED_UNION__, algorithm: AlgorithmIdentifier, extractable: Bool, keyUsages: [KeyUsage]) -> JSPromise {
        jsObject[Strings.importKey]!(format.jsValue(), keyData.jsValue(), algorithm.jsValue(), extractable.jsValue(), keyUsages.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func importKey(format: KeyFormat, keyData: __UNSUPPORTED_UNION__, algorithm: AlgorithmIdentifier, extractable: Bool, keyUsages: [KeyUsage]) async throws -> CryptoKey {
        let _promise: JSPromise = jsObject[Strings.importKey]!(format.jsValue(), keyData.jsValue(), algorithm.jsValue(), extractable.jsValue(), keyUsages.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func exportKey(format: KeyFormat, key: CryptoKey) -> JSPromise {
        jsObject[Strings.exportKey]!(format.jsValue(), key.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func exportKey(format: KeyFormat, key: CryptoKey) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.exportKey]!(format.jsValue(), key.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func wrapKey(format: KeyFormat, key: CryptoKey, wrappingKey: CryptoKey, wrapAlgorithm: AlgorithmIdentifier) -> JSPromise {
        jsObject[Strings.wrapKey]!(format.jsValue(), key.jsValue(), wrappingKey.jsValue(), wrapAlgorithm.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func wrapKey(format: KeyFormat, key: CryptoKey, wrappingKey: CryptoKey, wrapAlgorithm: AlgorithmIdentifier) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.wrapKey]!(format.jsValue(), key.jsValue(), wrappingKey.jsValue(), wrapAlgorithm.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func unwrapKey(format: KeyFormat, wrappedKey: BufferSource, unwrappingKey: CryptoKey, unwrapAlgorithm: AlgorithmIdentifier, unwrappedKeyAlgorithm: AlgorithmIdentifier, extractable: Bool, keyUsages: [KeyUsage]) -> JSPromise {
        let _arg0 = format.jsValue()
        let _arg1 = wrappedKey.jsValue()
        let _arg2 = unwrappingKey.jsValue()
        let _arg3 = unwrapAlgorithm.jsValue()
        let _arg4 = unwrappedKeyAlgorithm.jsValue()
        let _arg5 = extractable.jsValue()
        let _arg6 = keyUsages.jsValue()
        return jsObject[Strings.unwrapKey]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func unwrapKey(format: KeyFormat, wrappedKey: BufferSource, unwrappingKey: CryptoKey, unwrapAlgorithm: AlgorithmIdentifier, unwrappedKeyAlgorithm: AlgorithmIdentifier, extractable: Bool, keyUsages: [KeyUsage]) async throws -> CryptoKey {
        let _arg0 = format.jsValue()
        let _arg1 = wrappedKey.jsValue()
        let _arg2 = unwrappingKey.jsValue()
        let _arg3 = unwrapAlgorithm.jsValue()
        let _arg4 = unwrappedKeyAlgorithm.jsValue()
        let _arg5 = extractable.jsValue()
        let _arg6 = keyUsages.jsValue()
        let _promise: JSPromise = jsObject[Strings.unwrapKey]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}