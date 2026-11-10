// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "klaviyo_flutter",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        // If the plugin name contains "_", the library name must use "-".
        .library(name: "klaviyo-flutter", targets: ["klaviyo_flutter"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        // Same range as the podspec's `~> 4.2.1`.
        .package(url: "https://github.com/klaviyo/klaviyo-swift-sdk.git", .upToNextMinor(from: "4.2.1"))
    ],
    targets: [
        .target(
            name: "klaviyo_flutter",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "KlaviyoSwift", package: "klaviyo-swift-sdk")
            ]
        )
    ]
)
