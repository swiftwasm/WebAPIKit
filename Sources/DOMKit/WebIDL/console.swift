
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public enum console {
    public static var objectRef: JSObjectRef {
        return JSObjectRef.global.console.object!
    }

    public static func assert(condition: Bool = false, data: AnyJSValueCodable...) {
        _ = objectRef.assert!(JSValue(from: condition), JSValue(from: data))
    }

    public static func assert(condition: Bool = false) {
        _ = objectRef.assert!(JSValue(from: condition))
    }

    public static func clear() {
        _ = objectRef.clear!()
    }

    public static func debug(data: AnyJSValueCodable...) {
        _ = objectRef.debug!(JSValue(from: data))
    }

    public static func debug() {
        _ = objectRef.debug!()
    }

    public static func error(data: AnyJSValueCodable...) {
        _ = objectRef.error!(JSValue(from: data))
    }

    public static func error() {
        _ = objectRef.error!()
    }

    public static func info(data: AnyJSValueCodable...) {
        _ = objectRef.info!(JSValue(from: data))
    }

    public static func info() {
        _ = objectRef.info!()
    }

    public static func log(data: AnyJSValueCodable...) {
        _ = objectRef.log!(JSValue(from: data))
    }

    public static func log() {
        _ = objectRef.log!()
    }

    public static func table(tabularData: AnyJSValueCodable, properties: [String]) {
        _ = objectRef.table!(JSValue(from: tabularData), JSValue(from: properties))
    }

    public static func table(tabularData: AnyJSValueCodable) {
        _ = objectRef.table!(JSValue(from: tabularData))
    }

    public static func table() {
        _ = objectRef.table!()
    }

    public static func trace(data: AnyJSValueCodable...) {
        _ = objectRef.trace!(JSValue(from: data))
    }

    public static func trace() {
        _ = objectRef.trace!()
    }

    public static func warn(data: AnyJSValueCodable...) {
        _ = objectRef.warn!(JSValue(from: data))
    }

    public static func warn() {
        _ = objectRef.warn!()
    }

    public static func dir(item: AnyJSValueCodable, options: AnyJSValueCodable?) {
        _ = objectRef.dir!(JSValue(from: item), JSValue(from: options))
    }

    public static func dir(item: AnyJSValueCodable) {
        _ = objectRef.dir!(JSValue(from: item))
    }

    public static func dir() {
        _ = objectRef.dir!()
    }

    public static func dirxml(data: AnyJSValueCodable...) {
        _ = objectRef.dirxml!(JSValue(from: data))
    }

    public static func dirxml() {
        _ = objectRef.dirxml!()
    }

    public static func count(label: String = "default") {
        _ = objectRef.count!(JSValue(from: label))
    }

    public static func countReset(label: String = "default") {
        _ = objectRef.countReset!(JSValue(from: label))
    }

    public static func group(data: AnyJSValueCodable...) {
        _ = objectRef.group!(JSValue(from: data))
    }

    public static func group() {
        _ = objectRef.group!()
    }

    public static func groupCollapsed(data: AnyJSValueCodable...) {
        _ = objectRef.groupCollapsed!(JSValue(from: data))
    }

    public static func groupCollapsed() {
        _ = objectRef.groupCollapsed!()
    }

    public static func groupEnd() {
        _ = objectRef.groupEnd!()
    }

    public static func time(label: String = "default") {
        _ = objectRef.time!(JSValue(from: label))
    }

    public static func timeLog(label: String = "default", data: AnyJSValueCodable...) {
        _ = objectRef.timeLog!(JSValue(from: label), JSValue(from: data))
    }

    public static func timeLog(label: String = "default") {
        _ = objectRef.timeLog!(JSValue(from: label))
    }

    public static func timeEnd(label: String = "default") {
        _ = objectRef.timeEnd!(JSValue(from: label))
    }
}
