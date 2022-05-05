// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "STPrivilegedTask",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "STPrivilegedTask",
            type: .static,
            targets: ["STPrivilegedTask"]),
    ],
    targets: [
        .target(
            name: "STPrivilegedTask",
            cSettings: [
                .define("SWIFT_PACKAGE"),
                .headerSearchPath("**")
            ],
            linkerSettings: [
                .linkedFramework("Security"),
                .linkedFramework("Foundation")
            ])
    ]
)
