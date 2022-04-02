// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum CSS {
    public static var jsObject: JSObject {
        JSObject.global[Strings.CSS].object!
    }

    public static var animationWorklet: Worklet { ReadonlyAttribute[Strings.animationWorklet, in: jsObject] }

    public static func supports(property: String, value: String) -> Bool {
        JSObject.global[Strings.CSS].object![Strings.supports]!(property.jsValue(), value.jsValue()).fromJSValue()!
    }

    public static func supports(conditionText: String) -> Bool {
        JSObject.global[Strings.CSS].object![Strings.supports]!(conditionText.jsValue()).fromJSValue()!
    }

    public static var highlights: HighlightRegistry { ReadonlyAttribute[Strings.highlights, in: jsObject] }

    public static var elementSources: JSValue { ReadonlyAttribute[Strings.elementSources, in: jsObject] }

    public static var layoutWorklet: Worklet { ReadonlyAttribute[Strings.layoutWorklet, in: jsObject] }

    public static var paintWorklet: Worklet { ReadonlyAttribute[Strings.paintWorklet, in: jsObject] }

    public static func parseStylesheet(css: CSSStringSource, options: CSSParserOptions? = nil) -> JSPromise {
        JSObject.global[Strings.CSS].object![Strings.parseStylesheet]!(css.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func parseStylesheet(css: CSSStringSource, options: CSSParserOptions? = nil) async throws -> [CSSParserRule] {
        let _promise: JSPromise = JSObject.global[Strings.CSS].object![Strings.parseStylesheet]!(css.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public static func parseRuleList(css: CSSStringSource, options: CSSParserOptions? = nil) -> JSPromise {
        JSObject.global[Strings.CSS].object![Strings.parseRuleList]!(css.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func parseRuleList(css: CSSStringSource, options: CSSParserOptions? = nil) async throws -> [CSSParserRule] {
        let _promise: JSPromise = JSObject.global[Strings.CSS].object![Strings.parseRuleList]!(css.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public static func parseRule(css: CSSStringSource, options: CSSParserOptions? = nil) -> JSPromise {
        JSObject.global[Strings.CSS].object![Strings.parseRule]!(css.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func parseRule(css: CSSStringSource, options: CSSParserOptions? = nil) async throws -> CSSParserRule {
        let _promise: JSPromise = JSObject.global[Strings.CSS].object![Strings.parseRule]!(css.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public static func parseDeclarationList(css: CSSStringSource, options: CSSParserOptions? = nil) -> JSPromise {
        JSObject.global[Strings.CSS].object![Strings.parseDeclarationList]!(css.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func parseDeclarationList(css: CSSStringSource, options: CSSParserOptions? = nil) async throws -> [CSSParserRule] {
        let _promise: JSPromise = JSObject.global[Strings.CSS].object![Strings.parseDeclarationList]!(css.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public static func parseDeclaration(css: String, options: CSSParserOptions? = nil) -> CSSParserDeclaration {
        JSObject.global[Strings.CSS].object![Strings.parseDeclaration]!(css.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    public static func parseValue(css: String) -> CSSToken {
        JSObject.global[Strings.CSS].object![Strings.parseValue]!(css.jsValue()).fromJSValue()!
    }

    public static func parseValueList(css: String) -> [CSSToken] {
        JSObject.global[Strings.CSS].object![Strings.parseValueList]!(css.jsValue()).fromJSValue()!
    }

    public static func parseCommaValueList(css: String) -> [[CSSToken]] {
        JSObject.global[Strings.CSS].object![Strings.parseCommaValueList]!(css.jsValue()).fromJSValue()!
    }

    public static func registerProperty(definition: PropertyDefinition) {
        _ = JSObject.global[Strings.CSS].object![Strings.registerProperty]!(definition.jsValue())
    }

    public static func number(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.number]!(value.jsValue()).fromJSValue()!
    }

    public static func percent(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.percent]!(value.jsValue()).fromJSValue()!
    }

    public static func em(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.em]!(value.jsValue()).fromJSValue()!
    }

    public static func ex(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.ex]!(value.jsValue()).fromJSValue()!
    }

    public static func ch(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.ch]!(value.jsValue()).fromJSValue()!
    }

    public static func ic(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.ic]!(value.jsValue()).fromJSValue()!
    }

    public static func rem(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.rem]!(value.jsValue()).fromJSValue()!
    }

    public static func lh(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.lh]!(value.jsValue()).fromJSValue()!
    }

    public static func rlh(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.rlh]!(value.jsValue()).fromJSValue()!
    }

    public static func vw(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.vw]!(value.jsValue()).fromJSValue()!
    }

    public static func vh(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.vh]!(value.jsValue()).fromJSValue()!
    }

    public static func vi(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.vi]!(value.jsValue()).fromJSValue()!
    }

    public static func vb(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.vb]!(value.jsValue()).fromJSValue()!
    }

    public static func vmin(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.vmin]!(value.jsValue()).fromJSValue()!
    }

    public static func vmax(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.vmax]!(value.jsValue()).fromJSValue()!
    }

    public static func svw(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.svw]!(value.jsValue()).fromJSValue()!
    }

    public static func svh(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.svh]!(value.jsValue()).fromJSValue()!
    }

    public static func svi(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.svi]!(value.jsValue()).fromJSValue()!
    }

    public static func svb(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.svb]!(value.jsValue()).fromJSValue()!
    }

    public static func svmin(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.svmin]!(value.jsValue()).fromJSValue()!
    }

    public static func svmax(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.svmax]!(value.jsValue()).fromJSValue()!
    }

    public static func lvw(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.lvw]!(value.jsValue()).fromJSValue()!
    }

    public static func lvh(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.lvh]!(value.jsValue()).fromJSValue()!
    }

    public static func lvi(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.lvi]!(value.jsValue()).fromJSValue()!
    }

    public static func lvb(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.lvb]!(value.jsValue()).fromJSValue()!
    }

    public static func lvmin(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.lvmin]!(value.jsValue()).fromJSValue()!
    }

    public static func lvmax(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.lvmax]!(value.jsValue()).fromJSValue()!
    }

    public static func dvw(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.dvw]!(value.jsValue()).fromJSValue()!
    }

    public static func dvh(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.dvh]!(value.jsValue()).fromJSValue()!
    }

    public static func dvi(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.dvi]!(value.jsValue()).fromJSValue()!
    }

    public static func dvb(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.dvb]!(value.jsValue()).fromJSValue()!
    }

    public static func dvmin(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.dvmin]!(value.jsValue()).fromJSValue()!
    }

    public static func dvmax(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.dvmax]!(value.jsValue()).fromJSValue()!
    }

    public static func cqw(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.cqw]!(value.jsValue()).fromJSValue()!
    }

    public static func cqh(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.cqh]!(value.jsValue()).fromJSValue()!
    }

    public static func cqi(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.cqi]!(value.jsValue()).fromJSValue()!
    }

    public static func cqb(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.cqb]!(value.jsValue()).fromJSValue()!
    }

    public static func cqmin(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.cqmin]!(value.jsValue()).fromJSValue()!
    }

    public static func cqmax(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.cqmax]!(value.jsValue()).fromJSValue()!
    }

    public static func cm(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.cm]!(value.jsValue()).fromJSValue()!
    }

    public static func mm(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.mm]!(value.jsValue()).fromJSValue()!
    }

    public static func Q(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.Q]!(value.jsValue()).fromJSValue()!
    }

    public static func `in`(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.in]!(value.jsValue()).fromJSValue()!
    }

    public static func pt(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.pt]!(value.jsValue()).fromJSValue()!
    }

    public static func pc(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.pc]!(value.jsValue()).fromJSValue()!
    }

    public static func px(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.px]!(value.jsValue()).fromJSValue()!
    }

    public static func deg(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.deg]!(value.jsValue()).fromJSValue()!
    }

    public static func grad(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.grad]!(value.jsValue()).fromJSValue()!
    }

    public static func rad(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.rad]!(value.jsValue()).fromJSValue()!
    }

    public static func turn(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.turn]!(value.jsValue()).fromJSValue()!
    }

    public static func s(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.s]!(value.jsValue()).fromJSValue()!
    }

    public static func ms(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.ms]!(value.jsValue()).fromJSValue()!
    }

    public static func Hz(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.Hz]!(value.jsValue()).fromJSValue()!
    }

    public static func kHz(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.kHz]!(value.jsValue()).fromJSValue()!
    }

    public static func dpi(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.dpi]!(value.jsValue()).fromJSValue()!
    }

    public static func dpcm(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.dpcm]!(value.jsValue()).fromJSValue()!
    }

    public static func dppx(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.dppx]!(value.jsValue()).fromJSValue()!
    }

    public static func fr(value: Double) -> CSSUnitValue {
        JSObject.global[Strings.CSS].object![Strings.fr]!(value.jsValue()).fromJSValue()!
    }

    public static func escape(ident: String) -> String {
        JSObject.global[Strings.CSS].object![Strings.escape]!(ident.jsValue()).fromJSValue()!
    }
}
