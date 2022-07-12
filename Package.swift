// swift-tools-version:5.3

import PackageDescription
import Foundation

let SCADE_SDK = ProcessInfo.processInfo.environment["SCADE_SDK"] ?? ""

let package = Package(
    name: "ImageControl",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "ImageControl",
            type: .static,
            targets: [
                "ImageControl"
            ]
        )
    ],
    dependencies: [
      
    ],
    targets: [
        .target(
            name: "ImageControl",
            dependencies: [],
            exclude: ["main.page"],
            swiftSettings: [
                .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android])),
            ]
        )
    ]
)