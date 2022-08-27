import { parseAll } from "@webref/idl";

const parsedFiles = await parseAll();
// console.log(Object.keys(parsedFiles).join('\n'))
// console.log(JSON.stringify(Object.values(parsedFiles), null, 2));
console.log(
  JSON.stringify(
    process.argv.slice(2).map((key) => parsedFiles[key]),
    null,
    2
  )
);
