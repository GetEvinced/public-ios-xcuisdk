// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EvincedXCUISDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "EvincedXCUISDK",
            targets: ["EvincedXCUISDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "EvincedXCUISDK",
            url: "https://storage.googleapis.com/evinced-xcui-sdk/EvincedXCUISDK-1.1.3.zip",
            checksum: "f30cb3ec031475dedc0eb006c67ad8f266f5b36b6e18dccfa9dd5e2882f58dcb")
    ]
)
