# BlinkAccountLinking

Account linking for iOS as a Swift Package: the `BRAccountLinkingManager` API from BlinkEReceipt, without the e-receipt (mail) part and its dependencies. Use it in apps that cannot take BlinkEReceipt, for example because they already ship a newer Google Sign-In.

Add the package in Xcode or in `Package.swift` and link the `BlinkAccountLinking` product:

```swift
// release
.package(url: "https://github.com/BlinkReceipt/blinkaccountlinking-ios.git", exact: "1.0.0")
// release candidate, before the 1.0.0 tag exists
.package(url: "https://github.com/BlinkReceipt/blinkaccountlinking-ios.git", branch: "rc/1.0.0")
```

The package depends on `blinkreceipt-ios` 1.76.x and brings `AccountLinking.xcframework` with it. Do not add BlinkEReceipt, BlinkEReceiptStatic or the AccountLinking CocoaPod to the same app.

```swift
import BlinkAccountLinking
```

Refer to the Actual documentation for the account linking API: https://docs.actualplatform.com/docs/category/ios/
