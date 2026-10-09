# Changelog

## 1.0.0

### ADDED
- First release. Account linking only: `BRAccountLinkingManager`, `BRAccountLinkingConnection`, `BRAccountLinkingConfiguration`, `BRAccountLinkingConnectionIdentifier` and `BRDigitalManager`, without the e-receipt part of BlinkEReceipt and without its Google Sign-In, MSAL and MailCore dependencies.
- Built from the account linking sources of BlinkReceipt 1.76.1. Compared with BlinkEReceipt 2.61.0 this includes the foreground re-verify flow for connections that lost their session (`BRAccountLinkingErrorReVerifyRequired`), which has not shipped in a BlinkEReceipt release yet.
- Requires BlinkReceipt 1.76.0 or later. Ships AccountLinking 3.1.32.
