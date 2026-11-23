// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Map4dServices",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "Map4dServices", targets: ["Map4dServices"])
    ],
    targets: [
        .binaryTarget(
            name: "Map4dServices",
            url: "https://github.com/map4d/map4d-services-ios-sdk/releases/download/2.6.0/Map4dServices-2.6.0.xcframework.zip",
            checksum: "aa74bc84be86be1475f76484cb71b2aee2eac2b7b90ecae5927b9cb243c11ab6"
        )
    ]
)
