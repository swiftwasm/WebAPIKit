import { parseAll } from "@webref/idl";
import fs from "node:fs/promises";

const parsedFiles = await parseAll();
// console.log(Object.keys(parsedFiles).join('\n'))
// console.log(JSON.stringify(Object.values(parsedFiles), null, 2));
console.log(
  JSON.stringify(
    [
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
      "console",
    ].map((key) => parsedFiles[key]),
    null,
    2
  )
);
