# Wacro Example

This is an example macro built using [Wacro](https://github.com/kabiroberai/Wacro). You're encouraged to go through the Wacro README for context.

## Updating the raw macro

This step is necessary if you update the ExampleRaw target; you must update ExampleRaw.wasm.dylib in tandem.

1. Install a WASM-compatible toolchain from [swift.org/download](https://www.swift.org/download/). A recent `main` snapshot should definitely work, and the 6.0 snapshots might also work (untested).
2. Install a WASI SDK: see <https://book.swiftwasm.org/getting-started/setup.html#experimental-swift-sdk>
3. Run `make wasm`.

You should see that the file `/ExampleRaw.wasm.dylib` has been changed after running these steps. This is a bona-fide WebAssembly module; the `dylib` extension is merely to pacify the macOS sandbox. 

## Building the host

(You can switch back to a production toolchain for this)

1. Run `make client`. If you're on macOS and want to use the WebKit runner (faster), use `make client WK=1`.
2. That's all! You can now run the produced executable at `.build/debug/ExampleClient`.

Since compiling the host follows standard procedure, you can build and run with Xcode as well. Just open `Package.swift` in Xcode and build `ExampleClient`.
