// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EvincedXCUISDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "EvincedXCUISDK",
            targets: ["EvincedXCUISDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "EvincedXCUISDK",
            url: "https://storage.googleapis.com/evinced-xcui-sdk/EvincedXCUISDK-1.32.0.zip",
            checksum: "5747cdf7b64ff47633e2833095985be4254cbc59c6725084bce37a371b1a3867")
    ]
)
