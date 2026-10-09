# BlinkAccountLinking

Account linking for iOS as a Swift Package: the `BRAccountLinkingManager` API from BlinkEReceipt, without the e-receipt (mail) part and its dependencies.

Add the package in Xcode or in `Package.swift`:

```swift
.package(url: "https://github.com/BlinkReceipt/blinkaccountlinking-ios.git", exact: "1.0.0")
```

and link the `BlinkAccountLinking` product. The package depends on `blinkreceipt-ios` 1.76.x; do not add BlinkEReceipt to the same app.

Refer to the Actual documentation for integration steps: https://docs.actualplatform.com/docs/category/ios/
