import { parseAll } from "@webref/idl";
import fs from "node:fs/promises";

const parsedFiles = await parseAll();
await fs.writeFile("out.json", JSON.stringify(parsedFiles, null, 2));
