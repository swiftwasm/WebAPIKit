import JavaScriptKit
import DOMKit

let document = global.document

let header = HTMLElement(from: document.createElement(localName: "h1"))!
header.innerText = "Hello World!"
_ = document.body.appendChild(node: header)

console.log(data: "Hello, world!")
