import DOMKit
import JavaScriptKit

let document = globalThis.document

let button = HTMLElement(from: document.createElement(localName: "button"))!
button.innerText = "Hello World!"
_ = document.body!.appendChild(node: button)

console.log(data: "Hello, world!")

button.onclick = { _ in
  runWebGLDemo()
  return .undefined
}
