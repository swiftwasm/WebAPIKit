
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public protocol NodeFilter: JSBridgedType {
    func acceptNode(node: Node) -> UInt16
}

public extension NodeFilter {
    var FILTER_ACCEPT: UInt16 {
        return 1
    }

    var FILTER_REJECT: UInt16 {
        return 2
    }

    var FILTER_SKIP: UInt16 {
        return 3
    }

    var SHOW_ALL: UInt32 {
        return 4_294_967_295
    }

    var SHOW_ELEMENT: UInt32 {
        return 1
    }

    var SHOW_ATTRIBUTE: UInt32 {
        return 2
    }

    var SHOW_TEXT: UInt32 {
        return 4
    }

    var SHOW_CDATA_SECTION: UInt32 {
        return 8
    }

    var SHOW_ENTITY_REFERENCE: UInt32 {
        return 16
    }

    var SHOW_ENTITY: UInt32 {
        return 32
    }

    var SHOW_PROCESSING_INSTRUCTION: UInt32 {
        return 64
    }

    var SHOW_COMMENT: UInt32 {
        return 128
    }

    var SHOW_DOCUMENT: UInt32 {
        return 256
    }

    var SHOW_DOCUMENT_TYPE: UInt32 {
        return 512
    }

    var SHOW_DOCUMENT_FRAGMENT: UInt32 {
        return 1024
    }

    var SHOW_NOTATION: UInt32 {
        return 2048
    }
}
