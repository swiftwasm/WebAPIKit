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
      "mediacapture-streams",
      "mediastream-recording",
      "css-pseudo",
      "cssom-view",
      "webcodecs",
      "webgl1",
      "webgl2",
    ].map((key) => parsedFiles[key]),
    null,
    2
  )
);
