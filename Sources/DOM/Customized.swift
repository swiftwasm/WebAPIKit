//
//  Customized.swift
//  
//
//  Created by Jed Fox on 2023-01-28.
//

import Foundation

extension HTMLFormControlsCollection {
    // removes `override` since the superclass returns a more constrained type `Element`
    @inlinable public func namedItem(name: String) -> Element_or_RadioNodeList? {
        let this = jsObject
        return this[Strings.namedItem].function!(this: this, arguments: [_toJSValue(name)]).fromJSValue()!
    }
}
