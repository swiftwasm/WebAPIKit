import { parseAll } from "@webref/idl";
import fs from "node:fs/promises";

const parsedFiles = await parseAll();
console.log(JSON.stringify(Object.values(parsedFiles), null, 2));
