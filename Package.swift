// swift-tools-version: 5.10

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "WacroExample",
    platforms: [
        .macOS("12.0")
    ],
    products: [
        .executable(
            name: "ExampleRaw",
            targets: ["ExampleRaw"]
        ),
        .executable(
            name: "ExampleClient",
            targets: ["ExampleClient"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/kabiroberai/Wacro", branch: "main"),
    ],
    targets: [
        .executableTarget(
            name: "ExampleClient",
            dependencies: [
                "ExampleHost"
            ]
        ),
        .executableTarget(
            name: "ExampleRaw",
            dependencies: [
                .product(name: "WacroPluginRaw", package: "Wacro"),
            ]
        ),
        .macro(
            name: "ExampleHost",
            dependencies: [
                .product(name: "WacroPluginHost", package: "Wacro"),
            ]
        ),
    ]
)
