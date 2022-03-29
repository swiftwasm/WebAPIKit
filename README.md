# DOMKit

🚨 Very experimental 🚨

Type-safe access to DOM APIs from Swift, using [webidl2swift](https://github.com/Apodini/webidl2swift/pull/8) to generate the bindings and [JavaScriptKit](https://github.com/swiftwasm/JavaScriptKit) to enable access to the actual objects.

## Contributing

```sh
git submodule init
cd deps
# download the specs
./dl-specs.sh

cd webidl2swift/
swift run webidl2swift -i ../webidl-sources -o ../output --no-pretty-print
cd ../../
cp deps/output/WebAPI/Sources/WebAPI/* ./Sources/DOMKit/WebIDL/
swiftformat ./Sources/DOMKit/WebIDL/
```
