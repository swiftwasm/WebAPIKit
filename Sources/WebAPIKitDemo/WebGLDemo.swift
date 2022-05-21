// Copyright 2021-2022, GFXFundamentals and WebAPIKit contributors.
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of GFXFundamentals. nor the names of his
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import WebAPIKit

let vertexShaderSource =
  """
  #version 300 es

  // an attribute is an input (in) to a vertex shader.
  // It will receive data from a buffer
  in vec4 a_position;

  // all shaders have a main function
  void main() {

    // gl_Position is a special variable a vertex shader
    // is responsible for setting
    gl_Position = a_position;
  }
  """

let fragmentShaderSource =
  """
  #version 300 es

  // fragment shaders don't have a default precision so we need
  // to pick one. highp is a good default. It means "high precision"
  precision highp float;

  // we need to declare an output for the fragment shader
  out vec4 outColor;

  void main() {
    // Just set the output to a constant redish-purple
    outColor = vec4(1, 0, 0.5, 1);
  }
  """

extension WebGL2RenderingContext {
  func createShader(type: GLenum, source: String) -> WebGLShader? {
    guard let shader = createShader(type: type) else { return nil }

    shaderSource(shader: shader, source: source)
    compileShader(shader: shader)

    switch getShaderParameter(shader: shader, pname: Self.COMPILE_STATUS) {
    case .undefined, .boolean(false):
      if let log = getShaderInfoLog(shader: shader) {
        console.log(data: log.jsValue)
      }
      deleteShader(shader: shader)
      return nil

    default:
      return shader
    }
  }

  func createProgram(vShader: WebGLShader, fShader: WebGLShader) -> WebGLProgram? {
    guard let program = createProgram() else { return nil }

    attachShader(program: program, shader: vShader)
    attachShader(program: program, shader: fShader)
    linkProgram(program: program)

    switch getProgramParameter(program: program, pname: Self.LINK_STATUS) {
    case .undefined, .boolean(false):
      if let log = getProgramInfoLog(program: program) {
        console.log(data: log.jsValue)
      }
      deleteProgram(program: program)
      return nil

    default:
      return program
    }
  }
}

extension HTMLCanvasElement {
  func resizeToDisplaySize() {
    if width != UInt32(clientWidth) || height != UInt32(clientHeight) {
      width = UInt32(clientWidth)
      height = UInt32(clientHeight)
    }
  }
}

func runWebGLDemo() {
  // Get A WebGL context
  let canvas = HTMLCanvasElement(from: document.createElement(localName: "canvas"))!
  _ = document.body?.appendChild(node: canvas)
  let context = canvas.getContext(contextId: "webgl2")!.webGL2RenderingContext!

  // create GLSL shaders, upload the GLSL source, compile the shaders
  guard
    let vShader = context.createShader(type: WebGL2RenderingContext.VERTEX_SHADER, source: vertexShaderSource),
    let fShader = context.createShader(type: WebGL2RenderingContext.FRAGMENT_SHADER, source: fragmentShaderSource),

    // Link the two shaders into a program
    let program = context.createProgram(vShader: vShader, fShader: fShader)
  else {
    console.error(data: "Failed to create or link shaders")
    return
  }

  // look up where the vertex data needs to go.
  let positionAttributeLocation = GLuint(context.getAttribLocation(program: program, name: "a_position"))

  // Create a buffer and put three 2d clip space points in it
  let positionBuffer = context.createBuffer()

  // Bind it to ARRAY_BUFFER (think of it as ARRAY_BUFFER = positionBuffer)
  context.bindBuffer(target: WebGL2RenderingContext.ARRAY_BUFFER, buffer: positionBuffer)
  context.bufferData(
    target: WebGL2RenderingContext.ARRAY_BUFFER,
    srcData: BufferSource.arrayBuffer(
      Float32Array([
        0.0, 0.0,
        0.0, 0.5,
        0.7, 0.0,
      ]).buffer
    ),
    usage: WebGL2RenderingContext.STATIC_DRAW
  )

  // Create a vertex array object (attribute state)
  guard let vao = context.createVertexArray() else {
    console.error(data: "Failed to create VAO")
    return
  }

  // and make it the one we're currently working with
  context.bindVertexArray(array: vao)

  // Turn on the attribute
  context.enableVertexAttribArray(index: positionAttributeLocation)

  context.vertexAttribPointer(
    index: positionAttributeLocation,
    size: 2, // 2 components per iteration
    type: WebGL2RenderingContext.FLOAT, // the data is 32bit floats
    normalized: false, // don't normalize the data
    stride: 0, // 0 = move forward size * sizeof(type) each iteration to get the next position
    offset: 0 // start at the beginning of the buffer
  )

  canvas.resizeToDisplaySize()

  // Tell WebGL how to convert from clip space to pixels
  context.viewport(x: 0, y: 0, width: GLsizei(canvas.width), height: GLsizei(canvas.height))

  // Clear the canvas
  context.clearColor(red: 0, green: 0, blue: 0, alpha: 0)
  context.clear(mask: WebGL2RenderingContext.COLOR_BUFFER_BIT)

  // Tell it to use our program (pair of shaders)
  context.useProgram(program: program)

  // Bind the attribute/buffer set we want.
  context.bindVertexArray(array: vao)

  // draw
  context.drawArrays(mode: WebGL2RenderingContext.TRIANGLES, first: 0, count: 3)
}
