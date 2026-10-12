# Changelog

## 1.0.0

### ADDED
- First release. Account linking only: `BRAccountLinkingManager`, `BRAccountLinkingConnection`, `BRAccountLinkingConfiguration`, `BRAccountLinkingConnectionIdentifier` and `BRDigitalManager`, without the e-receipt part of BlinkEReceipt and without its Google Sign-In, MSAL and MailCore dependencies.
- Built from the account linking sources of BlinkReceipt 1.76.1, the same account linking code as BlinkEReceipt 2.61.0 (including the re-verify flow for connections that lost their session, `BRAccountLinkingErrorReVerifyRequired`), with the unreachable push notification handler removed from `BRDigitalManager`.
- Includes the background refresh fix from BlinkReceipt master (WindfallCore #406): a background session that ends with any terminal error now completes the background task instead of running into the 25 s watchdog, which iOS counted against future refreshes (Costco and Target background sessions were the visible case).
- Requires BlinkReceipt 1.76.x: the package depends on `blinkreceipt-ios` with `upToNextMinor(from: "1.76.0")`, so a newer BlinkReceipt minor line comes with a new package release. Ships AccountLinking 3.1.32.
