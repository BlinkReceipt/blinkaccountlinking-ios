// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BlinkAccountLinking",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "BlinkAccountLinking",
            targets: ["BlinkAccountLinking", "AccountLinking", "BlinkAccountLinkingWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/BlinkReceipt/blinkreceipt-ios.git", .upToNextMinor(from: "1.76.0"))
    ],
    targets: [
        // Account linking API (BRAccountLinkingManager and friends), built from the BlinkEReceipt sources without the e-receipt part.
        .binaryTarget(
            name: "BlinkAccountLinking",
            path: "BlinkAccountLinking.xcframework"
        ),
        // Retailer scripts engine the account linking API drives. Same artifact as the AccountLinking CocoaPod.
        .binaryTarget(
            name: "AccountLinking",
            path: "AccountLinking.xcframework"
        ),
        // Wrapper target that declares the BlinkReceipt dependency for the binary frameworks.
        .target(
            name: "BlinkAccountLinkingWrapper",
            dependencies: [
                "BlinkAccountLinking",
                "AccountLinking",
                .product(name: "BlinkReceipt", package: "blinkreceipt-ios")
            ],
            path: "BlinkAccountLinkingWrapper"
        )
    ]
)
