
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum console {
    public static var objectRef: JSObjectRef {
        return JSObjectRef.global.console.object!
    }

    public static func assert(condition: Bool = false, data: AnyJSValueCodable...) {
        _ = objectRef.assert!(condition.jsValue(), data.jsValue())
    }

    public static func assert(condition: Bool = false) {
        _ = objectRef.assert!(condition.jsValue())
    }

    public static func clear() {
        _ = objectRef.clear!()
    }

    public static func debug(data: AnyJSValueCodable...) {
        _ = objectRef.debug!(data.jsValue())
    }

    public static func debug() {
        _ = objectRef.debug!()
    }

    public static func error(data: AnyJSValueCodable...) {
        _ = objectRef.error!(data.jsValue())
    }

    public static func error() {
        _ = objectRef.error!()
    }

    public static func info(data: AnyJSValueCodable...) {
        _ = objectRef.info!(data.jsValue())
    }

    public static func info() {
        _ = objectRef.info!()
    }

    public static func log(data: AnyJSValueCodable...) {
        _ = objectRef.log!(data.jsValue())
    }

    public static func log() {
        _ = objectRef.log!()
    }

    public static func table(tabularData: AnyJSValueCodable, properties: [String]) {
        _ = objectRef.table!(tabularData.jsValue(), properties.jsValue())
    }

    public static func table(tabularData: AnyJSValueCodable) {
        _ = objectRef.table!(tabularData.jsValue())
    }

    public static func table() {
        _ = objectRef.table!()
    }

    public static func trace(data: AnyJSValueCodable...) {
        _ = objectRef.trace!(data.jsValue())
    }

    public static func trace() {
        _ = objectRef.trace!()
    }

    public static func warn(data: AnyJSValueCodable...) {
        _ = objectRef.warn!(data.jsValue())
    }

    public static func warn() {
        _ = objectRef.warn!()
    }

    public static func dir(item: AnyJSValueCodable, options: AnyJSValueCodable?) {
        _ = objectRef.dir!(item.jsValue(), options.jsValue())
    }

    public static func dir(item: AnyJSValueCodable) {
        _ = objectRef.dir!(item.jsValue())
    }

    public static func dir() {
        _ = objectRef.dir!()
    }

    public static func dirxml(data: AnyJSValueCodable...) {
        _ = objectRef.dirxml!(data.jsValue())
    }

    public static func dirxml() {
        _ = objectRef.dirxml!()
    }

    public static func count(label: String = "default") {
        _ = objectRef.count!(label.jsValue())
    }

    public static func countReset(label: String = "default") {
        _ = objectRef.countReset!(label.jsValue())
    }

    public static func group(data: AnyJSValueCodable...) {
        _ = objectRef.group!(data.jsValue())
    }

    public static func group() {
        _ = objectRef.group!()
    }

    public static func groupCollapsed(data: AnyJSValueCodable...) {
        _ = objectRef.groupCollapsed!(data.jsValue())
    }

    public static func groupCollapsed() {
        _ = objectRef.groupCollapsed!()
    }

    public static func groupEnd() {
        _ = objectRef.groupEnd!()
    }

    public static func time(label: String = "default") {
        _ = objectRef.time!(label.jsValue())
    }

    public static func timeLog(label: String = "default", data: AnyJSValueCodable...) {
        _ = objectRef.timeLog!(label.jsValue(), data.jsValue())
    }

    public static func timeLog(label: String = "default") {
        _ = objectRef.timeLog!(label.jsValue())
    }

    public static func timeEnd(label: String = "default") {
        _ = objectRef.timeEnd!(label.jsValue())
    }
}
