// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "swiftui-text-environment",
    platforms: [.iOS(.v14), .macOS(.v11), .tvOS(.v14), .watchOS(.v7)],
    products: [
        .library(
            name: "_Text",
            targets: ["_Text"]),
        .library(
            name: "_TextCore",
            targets: ["_TextCore"]),
    ],
    targets: [
      .target(
          name: "_Text",
          dependencies: ["_TextCore"]),
        .target(
            name: "_TextCore",
            dependencies: []),
    ]
)
