import { parseAll } from "@webref/idl";
import fs from "node:fs/promises";

const parsedFiles = await parseAll();
// console.log(Object.keys(parsedFiles).join('\n'))
// console.log(JSON.stringify(Object.values(parsedFiles), null, 2));
console.log(
  JSON.stringify(
    [
      "console",
      "dom",
      "fetch",
      "FileAPI",
      "html",
      "geometry",
      "hr-time",
      "referrer-policy",
      "uievents",
      "wai-aria",
      "webidl",
      "web-animations",
      "xhr",
      "service-workers",
      "url",
      "streams",
      "websockets",
      "css-pseudo",
      "cssom-view",
      "webaudio",
      "mediacapture-streams",
      "mediastream-recording",
      "webcodecs",
      "webgl1",
      "webgl2",
      "webgpu",
    ].map((key) => parsedFiles[key]),
    null,
    2
  )
);
