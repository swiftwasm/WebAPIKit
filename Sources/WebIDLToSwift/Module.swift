/// Represents a group of IDL modules from which a corresponding Swift module is generated.
struct Module {
    /// Name of the generated Swift module.
    let swiftModule: String

    /// Names of source IDL modules.
    let idlModules: [String]

    /// Names of Swift modules that this module should depend on. This array should also include any transitive
    /// dependencies, that are directly referenced in this module, as those aren't automatically inferred at the moment.
    let dependencies: [String]
}

let baseModule = Module(
    swiftModule: "WebAPIBase",
    idlModules: ["console", "webidl", "url"],
    dependencies: []
)

let domModule = Module(
    swiftModule: "DOM",
    idlModules: [
        "dom",
        "html",
        "wai-aria",
        "uievents",
        "css-pseudo",
        "geometry",
        "cssom-view",
        "hr-time",
        "FileAPI",
        "xhr",
        "referrer-policy",
        "fetch",
        "streams",
        "mediacapture-streams",
        "mediastream-recording",
        "webcodecs",
        "service-workers",
    ],
    dependencies: ["WebAPIBase"]
)

let modules = [
    domModule,
    Module(
        swiftModule: "WebSockets",
        idlModules: ["websockets"],
        dependencies: ["DOM", "WebAPIBase"]
    ),
    Module(
        swiftModule: "WebAudio",
        idlModules: ["webaudio"],
        dependencies: ["DOM", "WebAPIBase"]
    ),
    Module(
        swiftModule: "WebAnimations",
        idlModules: ["web-animations"],
        dependencies: ["DOM", "WebAPIBase", "WebAudio"]
    ),
    Module(
        swiftModule: "WebGL1",
        idlModules: ["webgl1"],
        dependencies: ["DOM", "WebAPIBase", "WebAudio", "WebAnimations"]
    ),
    Module(
        swiftModule: "WebGL2",
        idlModules: ["webgl2"],
        dependencies: ["DOM", "WebAPIBase", "WebAudio", "WebAnimations", "WebGL1"]
    ),
    Module(
        swiftModule: "WebGPU",
        idlModules: ["webgpu"],
        dependencies: ["DOM", "WebAPIBase", "WebAudio", "WebAnimations", "WebGL1"]
    ),
]
