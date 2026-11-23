// swift-tools-version:5.3
import PackageDescription

// Replace this file with the generated Package.swift after packaging the 2.6.0 binary.
// See the release instructions in README.md.

let package = Package(
    name: "Map4dServices",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "Map4dServices", targets: ["Map4dServices"])
    ],
    targets: [
        .binaryTarget(
            name: "Map4dServices",
            url: "https://github.com/map4d/map4d-services-ios-sdk/releases/download/2.6.0/Map4dServices.xcframework.zip",
            checksum: "GENERATED_AFTER_BUILD_BY_PACKAGE_RELEASE_SCRIPT"
        )
    ]
)
