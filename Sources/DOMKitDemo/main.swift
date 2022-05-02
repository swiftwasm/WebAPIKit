import DOMKit
import JavaScriptKit

let document = globalThis.document

let header = HTMLElement(from: document.createElement(localName: "h1"))!
header.innerText = "Hello World!"
_ = document.body!.appendChild(node: header)

console.log(data: "Hello, world!")

button.onclick = { _ in
  runWebGLDemo()
  return .undefined
}
