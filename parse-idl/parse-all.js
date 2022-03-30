import { parseAll } from "@webref/idl";
import fs from "node:fs/promises";

const parsedFiles = await parseAll();
console.log(JSON.stringify(parsedFiles, null, 2));
