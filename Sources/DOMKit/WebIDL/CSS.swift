// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum CSS {
    public static var jsObject: JSObject {
        JSObject.global[Strings.CSS].object!
    }

    public static var animationWorklet: Worklet { ReadonlyAttribute[Strings.animationWorklet, in: jsObject] }

    public static func supports(property: String, value: String) -> Bool {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.supports].function!(this: this, arguments: [property.jsValue(), value.jsValue()]).fromJSValue()!
    }

    public static func supports(conditionText: String) -> Bool {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.supports].function!(this: this, arguments: [conditionText.jsValue()]).fromJSValue()!
    }

    public static var highlights: HighlightRegistry { ReadonlyAttribute[Strings.highlights, in: jsObject] }

    public static var elementSources: JSValue { ReadonlyAttribute[Strings.elementSources, in: jsObject] }

    public static var layoutWorklet: Worklet { ReadonlyAttribute[Strings.layoutWorklet, in: jsObject] }

    public static var paintWorklet: Worklet { ReadonlyAttribute[Strings.paintWorklet, in: jsObject] }

    public static func parseStylesheet(css: CSSStringSource, options: CSSParserOptions? = nil) -> JSPromise {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.parseStylesheet].function!(this: this, arguments: [css.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func parseStylesheet(css: CSSStringSource, options: CSSParserOptions? = nil) async throws -> [CSSParserRule] {
        let this = JSObject.global[Strings.CSS].object!
        let _promise: JSPromise = this[Strings.parseStylesheet].function!(this: this, arguments: [css.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public static func parseRuleList(css: CSSStringSource, options: CSSParserOptions? = nil) -> JSPromise {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.parseRuleList].function!(this: this, arguments: [css.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func parseRuleList(css: CSSStringSource, options: CSSParserOptions? = nil) async throws -> [CSSParserRule] {
        let this = JSObject.global[Strings.CSS].object!
        let _promise: JSPromise = this[Strings.parseRuleList].function!(this: this, arguments: [css.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public static func parseRule(css: CSSStringSource, options: CSSParserOptions? = nil) -> JSPromise {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.parseRule].function!(this: this, arguments: [css.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func parseRule(css: CSSStringSource, options: CSSParserOptions? = nil) async throws -> CSSParserRule {
        let this = JSObject.global[Strings.CSS].object!
        let _promise: JSPromise = this[Strings.parseRule].function!(this: this, arguments: [css.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public static func parseDeclarationList(css: CSSStringSource, options: CSSParserOptions? = nil) -> JSPromise {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.parseDeclarationList].function!(this: this, arguments: [css.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func parseDeclarationList(css: CSSStringSource, options: CSSParserOptions? = nil) async throws -> [CSSParserRule] {
        let this = JSObject.global[Strings.CSS].object!
        let _promise: JSPromise = this[Strings.parseDeclarationList].function!(this: this, arguments: [css.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public static func parseDeclaration(css: String, options: CSSParserOptions? = nil) -> CSSParserDeclaration {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.parseDeclaration].function!(this: this, arguments: [css.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public static func parseValue(css: String) -> CSSToken {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.parseValue].function!(this: this, arguments: [css.jsValue()]).fromJSValue()!
    }

    public static func parseValueList(css: String) -> [CSSToken] {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.parseValueList].function!(this: this, arguments: [css.jsValue()]).fromJSValue()!
    }

    public static func parseCommaValueList(css: String) -> [[CSSToken]] {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.parseCommaValueList].function!(this: this, arguments: [css.jsValue()]).fromJSValue()!
    }

    public static func registerProperty(definition: PropertyDefinition) {
        let this = JSObject.global[Strings.CSS].object!
        _ = this[Strings.registerProperty].function!(this: this, arguments: [definition.jsValue()])
    }

    public static func number(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.number].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func percent(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.percent].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func em(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.em].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func ex(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.ex].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func ch(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.ch].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func ic(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.ic].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func rem(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.rem].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func lh(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.lh].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func rlh(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.rlh].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func vw(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.vw].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func vh(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.vh].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func vi(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.vi].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func vb(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.vb].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func vmin(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.vmin].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func vmax(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.vmax].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func svw(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.svw].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func svh(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.svh].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func svi(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.svi].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func svb(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.svb].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func svmin(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.svmin].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func svmax(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.svmax].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func lvw(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.lvw].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func lvh(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.lvh].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func lvi(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.lvi].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func lvb(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.lvb].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func lvmin(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.lvmin].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func lvmax(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.lvmax].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func dvw(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.dvw].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func dvh(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.dvh].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func dvi(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.dvi].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func dvb(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.dvb].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func dvmin(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.dvmin].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func dvmax(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.dvmax].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func cqw(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.cqw].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func cqh(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.cqh].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func cqi(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.cqi].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func cqb(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.cqb].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func cqmin(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.cqmin].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func cqmax(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.cqmax].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func cm(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.cm].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func mm(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.mm].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func Q(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.Q].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func `in`(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.in].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func pt(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.pt].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func pc(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.pc].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func px(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.px].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func deg(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.deg].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func grad(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.grad].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func rad(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.rad].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func turn(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.turn].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func s(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.s].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func ms(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.ms].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func Hz(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.Hz].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func kHz(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.kHz].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func dpi(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.dpi].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func dpcm(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.dpcm].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func dppx(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.dppx].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func fr(value: Double) -> CSSUnitValue {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.fr].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public static func escape(ident: String) -> String {
        let this = JSObject.global[Strings.CSS].object!
        return this[Strings.escape].function!(this: this, arguments: [ident.jsValue()]).fromJSValue()!
    }
}
