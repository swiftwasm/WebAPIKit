import fs from "node:fs/promises";
import * as WebIDL2 from "webidl2";

const idlPath = process.argv[2];
const idlContent = await fs.readFile(idlPath, "utf8");
console.log(JSON.stringify(WebIDL2.parse(idlContent), null, 2));
