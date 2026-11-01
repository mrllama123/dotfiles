---
title: EditorExportPlatformIOS — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorexportplatformios.html
crawled_at: "2026-08-13T10:42:42+12:00"
content_hash: 7375929a4f7e811dd0208b6f3fe93c998a1197d21f9b5205dc1b74526d33f0e9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorExportPlatformIOS

* * *

# EditorExportPlatformIOS

**Inherits:** [EditorExportPlatformAppleEmbedded](class_editorexportplatformappleembedded.md#class-editorexportplatformappleembedded) **<** [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Exporter for iOS.

## Tutorials

- [Exporting for iOS](../tutorials/export/exporting_for_ios.md)

- [iOS plugins documentation index](../tutorials/platform/ios/index.md)


## Properties

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [application/additional\_plist\_content](#class-editorexportplatformios-property-application-additional-plist-content) |
| [String](class_string.md#class-string) | [application/app\_store\_team\_id](#class-editorexportplatformios-property-application-app-store-team-id) |
| [String](class_string.md#class-string) | [application/bundle\_identifier](#class-editorexportplatformios-property-application-bundle-identifier) |
| [String](class_string.md#class-string) | [application/code\_sign\_identity\_debug](#class-editorexportplatformios-property-application-code-sign-identity-debug) |
| [String](class_string.md#class-string) | [application/code\_sign\_identity\_release](#class-editorexportplatformios-property-application-code-sign-identity-release) |
| [bool](class_bool.md#class-bool) | [application/delete\_old\_export\_files\_unconditionally](#class-editorexportplatformios-property-application-delete-old-export-files-unconditionally) |
| [int](class_int.md#class-int) | [application/export\_method\_debug](#class-editorexportplatformios-property-application-export-method-debug) |
| [int](class_int.md#class-int) | [application/export\_method\_release](#class-editorexportplatformios-property-application-export-method-release) |
| [bool](class_bool.md#class-bool) | [application/export\_project\_only](#class-editorexportplatformios-property-application-export-project-only) |
| [int](class_int.md#class-int) | [application/icon\_interpolation](#class-editorexportplatformios-property-application-icon-interpolation) |
| [String](class_string.md#class-string) | [application/min\_ios\_version](#class-editorexportplatformios-property-application-min-ios-version) |
| [String](class_string.md#class-string) | [application/provisioning\_profile\_specifier\_debug](#class-editorexportplatformios-property-application-provisioning-profile-specifier-debug) |
| [String](class_string.md#class-string) | [application/provisioning\_profile\_specifier\_release](#class-editorexportplatformios-property-application-provisioning-profile-specifier-release) |
| [String](class_string.md#class-string) | [application/provisioning\_profile\_uuid\_debug](#class-editorexportplatformios-property-application-provisioning-profile-uuid-debug) |
| [String](class_string.md#class-string) | [application/provisioning\_profile\_uuid\_release](#class-editorexportplatformios-property-application-provisioning-profile-uuid-release) |
| [String](class_string.md#class-string) | [application/short\_version](#class-editorexportplatformios-property-application-short-version) |
| [String](class_string.md#class-string) | [application/signature](#class-editorexportplatformios-property-application-signature) |
| [int](class_int.md#class-int) | [application/targeted\_device\_family](#class-editorexportplatformios-property-application-targeted-device-family) |
| [String](class_string.md#class-string) | [application/version](#class-editorexportplatformios-property-application-version) |
| [bool](class_bool.md#class-bool) | [architectures/arm64](#class-editorexportplatformios-property-architectures-arm64) |
| [bool](class_bool.md#class-bool) | [capabilities/access\_wifi](#class-editorexportplatformios-property-capabilities-access-wifi) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [capabilities/additional](#class-editorexportplatformios-property-capabilities-additional) |
| [bool](class_bool.md#class-bool) | [capabilities/performance\_a12](#class-editorexportplatformios-property-capabilities-performance-a12) |
| [bool](class_bool.md#class-bool) | [capabilities/performance\_gaming\_tier](#class-editorexportplatformios-property-capabilities-performance-gaming-tier) |
| [String](class_string.md#class-string) | [custom\_template/debug](#class-editorexportplatformios-property-custom-template-debug) |
| [String](class_string.md#class-string) | [custom\_template/release](#class-editorexportplatformios-property-custom-template-release) |
| [String](class_string.md#class-string) | [entitlements/additional](#class-editorexportplatformios-property-entitlements-additional) |
| [bool](class_bool.md#class-bool) | [entitlements/game\_center](#class-editorexportplatformios-property-entitlements-game-center) |
| [bool](class_bool.md#class-bool) | [entitlements/increased\_memory\_limit](#class-editorexportplatformios-property-entitlements-increased-memory-limit) |
| [String](class_string.md#class-string) | [entitlements/push\_notifications](#class-editorexportplatformios-property-entitlements-push-notifications) |
| [String](class_string.md#class-string) | [icons/app\_store\_1024x1024](#class-editorexportplatformios-property-icons-app-store-1024x1024) |
| [String](class_string.md#class-string) | [icons/app\_store\_1024x1024\_dark](#class-editorexportplatformios-property-icons-app-store-1024x1024-dark) |
| [String](class_string.md#class-string) | [icons/app\_store\_1024x1024\_tinted](#class-editorexportplatformios-property-icons-app-store-1024x1024-tinted) |
| [String](class_string.md#class-string) | [icons/icon\_1024x1024](#class-editorexportplatformios-property-icons-icon-1024x1024) |
| [String](class_string.md#class-string) | [icons/icon\_1024x1024\_dark](#class-editorexportplatformios-property-icons-icon-1024x1024-dark) |
| [String](class_string.md#class-string) | [icons/icon\_1024x1024\_tinted](#class-editorexportplatformios-property-icons-icon-1024x1024-tinted) |
| [String](class_string.md#class-string) | [icons/ios\_128x128](#class-editorexportplatformios-property-icons-ios-128x128) |
| [String](class_string.md#class-string) | [icons/ios\_128x128\_dark](#class-editorexportplatformios-property-icons-ios-128x128-dark) |
| [String](class_string.md#class-string) | [icons/ios\_128x128\_tinted](#class-editorexportplatformios-property-icons-ios-128x128-tinted) |
| [String](class_string.md#class-string) | [icons/ios\_136x136](#class-editorexportplatformios-property-icons-ios-136x136) |
| [String](class_string.md#class-string) | [icons/ios\_136x136\_dark](#class-editorexportplatformios-property-icons-ios-136x136-dark) |
| [String](class_string.md#class-string) | [icons/ios\_136x136\_tinted](#class-editorexportplatformios-property-icons-ios-136x136-tinted) |
| [String](class_string.md#class-string) | [icons/ios\_192x192](#class-editorexportplatformios-property-icons-ios-192x192) |
| [String](class_string.md#class-string) | [icons/ios\_192x192\_dark](#class-editorexportplatformios-property-icons-ios-192x192-dark) |
| [String](class_string.md#class-string) | [icons/ios\_192x192\_tinted](#class-editorexportplatformios-property-icons-ios-192x192-tinted) |
| [String](class_string.md#class-string) | [icons/ipad\_152x152](#class-editorexportplatformios-property-icons-ipad-152x152) |
| [String](class_string.md#class-string) | [icons/ipad\_152x152\_dark](#class-editorexportplatformios-property-icons-ipad-152x152-dark) |
| [String](class_string.md#class-string) | [icons/ipad\_152x152\_tinted](#class-editorexportplatformios-property-icons-ipad-152x152-tinted) |
| [String](class_string.md#class-string) | [icons/ipad\_167x167](#class-editorexportplatformios-property-icons-ipad-167x167) |
| [String](class_string.md#class-string) | [icons/ipad\_167x167\_dark](#class-editorexportplatformios-property-icons-ipad-167x167-dark) |
| [String](class_string.md#class-string) | [icons/ipad\_167x167\_tinted](#class-editorexportplatformios-property-icons-ipad-167x167-tinted) |
| [String](class_string.md#class-string) | [icons/iphone\_120x120](#class-editorexportplatformios-property-icons-iphone-120x120) |
| [String](class_string.md#class-string) | [icons/iphone\_120x120\_dark](#class-editorexportplatformios-property-icons-iphone-120x120-dark) |
| [String](class_string.md#class-string) | [icons/iphone\_120x120\_tinted](#class-editorexportplatformios-property-icons-iphone-120x120-tinted) |
| [String](class_string.md#class-string) | [icons/iphone\_180x180](#class-editorexportplatformios-property-icons-iphone-180x180) |
| [String](class_string.md#class-string) | [icons/iphone\_180x180\_dark](#class-editorexportplatformios-property-icons-iphone-180x180-dark) |
| [String](class_string.md#class-string) | [icons/iphone\_180x180\_tinted](#class-editorexportplatformios-property-icons-iphone-180x180-tinted) |
| [String](class_string.md#class-string) | [icons/notification\_40x40](#class-editorexportplatformios-property-icons-notification-40x40) |
| [String](class_string.md#class-string) | [icons/notification\_40x40\_dark](#class-editorexportplatformios-property-icons-notification-40x40-dark) |
| [String](class_string.md#class-string) | [icons/notification\_40x40\_tinted](#class-editorexportplatformios-property-icons-notification-40x40-tinted) |
| [String](class_string.md#class-string) | [icons/notification\_60x60](#class-editorexportplatformios-property-icons-notification-60x60) |
| [String](class_string.md#class-string) | [icons/notification\_60x60\_dark](#class-editorexportplatformios-property-icons-notification-60x60-dark) |
| [String](class_string.md#class-string) | [icons/notification\_60x60\_tinted](#class-editorexportplatformios-property-icons-notification-60x60-tinted) |
| [String](class_string.md#class-string) | [icons/notification\_76x76](#class-editorexportplatformios-property-icons-notification-76x76) |
| [String](class_string.md#class-string) | [icons/notification\_76x76\_dark](#class-editorexportplatformios-property-icons-notification-76x76-dark) |
| [String](class_string.md#class-string) | [icons/notification\_76x76\_tinted](#class-editorexportplatformios-property-icons-notification-76x76-tinted) |
| [String](class_string.md#class-string) | [icons/notification\_114x114](#class-editorexportplatformios-property-icons-notification-114x114) |
| [String](class_string.md#class-string) | [icons/notification\_114x114\_dark](#class-editorexportplatformios-property-icons-notification-114x114-dark) |
| [String](class_string.md#class-string) | [icons/notification\_114x114\_tinted](#class-editorexportplatformios-property-icons-notification-114x114-tinted) |
| [String](class_string.md#class-string) | [icons/settings\_58x58](#class-editorexportplatformios-property-icons-settings-58x58) |
| [String](class_string.md#class-string) | [icons/settings\_58x58\_dark](#class-editorexportplatformios-property-icons-settings-58x58-dark) |
| [String](class_string.md#class-string) | [icons/settings\_58x58\_tinted](#class-editorexportplatformios-property-icons-settings-58x58-tinted) |
| [String](class_string.md#class-string) | [icons/settings\_87x87](#class-editorexportplatformios-property-icons-settings-87x87) |
| [String](class_string.md#class-string) | [icons/settings\_87x87\_dark](#class-editorexportplatformios-property-icons-settings-87x87-dark) |
| [String](class_string.md#class-string) | [icons/settings\_87x87\_tinted](#class-editorexportplatformios-property-icons-settings-87x87-tinted) |
| [String](class_string.md#class-string) | [icons/spotlight\_80x80](#class-editorexportplatformios-property-icons-spotlight-80x80) |
| [String](class_string.md#class-string) | [icons/spotlight\_80x80\_dark](#class-editorexportplatformios-property-icons-spotlight-80x80-dark) |
| [String](class_string.md#class-string) | [icons/spotlight\_80x80\_tinted](#class-editorexportplatformios-property-icons-spotlight-80x80-tinted) |
| [String](class_string.md#class-string) | [icons/spotlight\_120x120](#class-editorexportplatformios-property-icons-spotlight-120x120) |
| [String](class_string.md#class-string) | [icons/spotlight\_120x120\_dark](#class-editorexportplatformios-property-icons-spotlight-120x120-dark) |
| [String](class_string.md#class-string) | [icons/spotlight\_120x120\_tinted](#class-editorexportplatformios-property-icons-spotlight-120x120-tinted) |
| [int](class_int.md#class-int) | [privacy/active\_keyboard\_access\_reasons](#class-editorexportplatformios-property-privacy-active-keyboard-access-reasons) |
| [String](class_string.md#class-string) | [privacy/camera\_usage\_description](#class-editorexportplatformios-property-privacy-camera-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/camera\_usage\_description\_localized](#class-editorexportplatformios-property-privacy-camera-usage-description-localized) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/advertising\_data/collected](#class-editorexportplatformios-property-privacy-collected-data-advertising-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/advertising\_data/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-advertising-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/advertising\_data/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-advertising-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/advertising\_data/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-advertising-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/audio\_data/collected](#class-editorexportplatformios-property-privacy-collected-data-audio-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/audio\_data/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-audio-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/audio\_data/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-audio-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/audio\_data/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-audio-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/browsing\_history/collected](#class-editorexportplatformios-property-privacy-collected-data-browsing-history-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/browsing\_history/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-browsing-history-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/browsing\_history/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-browsing-history-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/browsing\_history/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-browsing-history-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/coarse\_location/collected](#class-editorexportplatformios-property-privacy-collected-data-coarse-location-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/coarse\_location/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-coarse-location-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/coarse\_location/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-coarse-location-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/coarse\_location/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-coarse-location-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/contacts/collected](#class-editorexportplatformios-property-privacy-collected-data-contacts-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/contacts/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-contacts-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/contacts/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-contacts-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/contacts/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-contacts-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/crash\_data/collected](#class-editorexportplatformios-property-privacy-collected-data-crash-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/crash\_data/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-crash-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/crash\_data/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-crash-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/crash\_data/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-crash-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/credit\_info/collected](#class-editorexportplatformios-property-privacy-collected-data-credit-info-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/credit\_info/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-credit-info-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/credit\_info/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-credit-info-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/credit\_info/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-credit-info-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/customer\_support/collected](#class-editorexportplatformios-property-privacy-collected-data-customer-support-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/customer\_support/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-customer-support-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/customer\_support/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-customer-support-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/customer\_support/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-customer-support-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/device\_id/collected](#class-editorexportplatformios-property-privacy-collected-data-device-id-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/device\_id/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-device-id-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/device\_id/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-device-id-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/device\_id/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-device-id-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/email\_address/collected](#class-editorexportplatformios-property-privacy-collected-data-email-address-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/email\_address/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-email-address-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/email\_address/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-email-address-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/email\_address/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-email-address-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/emails\_or\_text\_messages/collected](#class-editorexportplatformios-property-privacy-collected-data-emails-or-text-messages-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/emails\_or\_text\_messages/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-emails-or-text-messages-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/emails\_or\_text\_messages/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-emails-or-text-messages-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/emails\_or\_text\_messages/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-emails-or-text-messages-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/environment\_scanning/collected](#class-editorexportplatformios-property-privacy-collected-data-environment-scanning-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/environment\_scanning/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-environment-scanning-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/environment\_scanning/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-environment-scanning-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/environment\_scanning/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-environment-scanning-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/fitness/collected](#class-editorexportplatformios-property-privacy-collected-data-fitness-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/fitness/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-fitness-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/fitness/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-fitness-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/fitness/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-fitness-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/gameplay\_content/collected](#class-editorexportplatformios-property-privacy-collected-data-gameplay-content-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/gameplay\_content/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-gameplay-content-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/gameplay\_content/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-gameplay-content-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/gameplay\_content/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-gameplay-content-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/hands/collected](#class-editorexportplatformios-property-privacy-collected-data-hands-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/hands/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-hands-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/hands/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-hands-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/hands/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-hands-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/head/collected](#class-editorexportplatformios-property-privacy-collected-data-head-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/head/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-head-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/head/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-head-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/head/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-head-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/health/collected](#class-editorexportplatformios-property-privacy-collected-data-health-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/health/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-health-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/health/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-health-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/health/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-health-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/name/collected](#class-editorexportplatformios-property-privacy-collected-data-name-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/name/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-name-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/name/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-name-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/name/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-name-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_contact\_info/collected](#class-editorexportplatformios-property-privacy-collected-data-other-contact-info-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_contact\_info/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-other-contact-info-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_contact\_info/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-other-contact-info-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_contact\_info/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-other-contact-info-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_data\_types/collected](#class-editorexportplatformios-property-privacy-collected-data-other-data-types-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_data\_types/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-other-data-types-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_data\_types/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-other-data-types-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_data\_types/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-other-data-types-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_diagnostic\_data/collected](#class-editorexportplatformios-property-privacy-collected-data-other-diagnostic-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_diagnostic\_data/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-other-diagnostic-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_diagnostic\_data/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-other-diagnostic-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_diagnostic\_data/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-other-diagnostic-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_financial\_info/collected](#class-editorexportplatformios-property-privacy-collected-data-other-financial-info-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_financial\_info/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-other-financial-info-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_financial\_info/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-other-financial-info-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_financial\_info/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-other-financial-info-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_usage\_data/collected](#class-editorexportplatformios-property-privacy-collected-data-other-usage-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_usage\_data/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-other-usage-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_usage\_data/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-other-usage-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_usage\_data/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-other-usage-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_user\_content/collected](#class-editorexportplatformios-property-privacy-collected-data-other-user-content-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_user\_content/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-other-user-content-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_user\_content/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-other-user-content-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_user\_content/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-other-user-content-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/payment\_info/collected](#class-editorexportplatformios-property-privacy-collected-data-payment-info-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/payment\_info/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-payment-info-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/payment\_info/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-payment-info-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/payment\_info/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-payment-info-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/performance\_data/collected](#class-editorexportplatformios-property-privacy-collected-data-performance-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/performance\_data/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-performance-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/performance\_data/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-performance-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/performance\_data/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-performance-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/phone\_number/collected](#class-editorexportplatformios-property-privacy-collected-data-phone-number-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/phone\_number/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-phone-number-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/phone\_number/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-phone-number-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/phone\_number/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-phone-number-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/photos\_or\_videos/collected](#class-editorexportplatformios-property-privacy-collected-data-photos-or-videos-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/photos\_or\_videos/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-photos-or-videos-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/photos\_or\_videos/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-photos-or-videos-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/photos\_or\_videos/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-photos-or-videos-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/physical\_address/collected](#class-editorexportplatformios-property-privacy-collected-data-physical-address-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/physical\_address/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-physical-address-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/physical\_address/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-physical-address-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/physical\_address/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-physical-address-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/precise\_location/collected](#class-editorexportplatformios-property-privacy-collected-data-precise-location-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/precise\_location/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-precise-location-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/precise\_location/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-precise-location-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/precise\_location/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-precise-location-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/product\_interaction/collected](#class-editorexportplatformios-property-privacy-collected-data-product-interaction-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/product\_interaction/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-product-interaction-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/product\_interaction/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-product-interaction-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/product\_interaction/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-product-interaction-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/purchase\_history/collected](#class-editorexportplatformios-property-privacy-collected-data-purchase-history-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/purchase\_history/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-purchase-history-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/purchase\_history/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-purchase-history-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/purchase\_history/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-purchase-history-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/search\_hhistory/collected](#class-editorexportplatformios-property-privacy-collected-data-search-hhistory-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/search\_hhistory/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-search-hhistory-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/search\_hhistory/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-search-hhistory-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/search\_hhistory/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-search-hhistory-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/sensitive\_info/collected](#class-editorexportplatformios-property-privacy-collected-data-sensitive-info-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/sensitive\_info/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-sensitive-info-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/sensitive\_info/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-sensitive-info-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/sensitive\_info/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-sensitive-info-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/user\_id/collected](#class-editorexportplatformios-property-privacy-collected-data-user-id-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/user\_id/collection\_purposes](#class-editorexportplatformios-property-privacy-collected-data-user-id-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/user\_id/linked\_to\_user](#class-editorexportplatformios-property-privacy-collected-data-user-id-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/user\_id/used\_for\_tracking](#class-editorexportplatformios-property-privacy-collected-data-user-id-used-for-tracking) |
| [int](class_int.md#class-int) | [privacy/disk\_space\_access\_reasons](#class-editorexportplatformios-property-privacy-disk-space-access-reasons) |
| [int](class_int.md#class-int) | [privacy/file\_timestamp\_access\_reasons](#class-editorexportplatformios-property-privacy-file-timestamp-access-reasons) |
| [String](class_string.md#class-string) | [privacy/microphone\_usage\_description](#class-editorexportplatformios-property-privacy-microphone-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/microphone\_usage\_description\_localized](#class-editorexportplatformios-property-privacy-microphone-usage-description-localized) |
| [String](class_string.md#class-string) | [privacy/photolibrary\_usage\_description](#class-editorexportplatformios-property-privacy-photolibrary-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/photolibrary\_usage\_description\_localized](#class-editorexportplatformios-property-privacy-photolibrary-usage-description-localized) |
| [int](class_int.md#class-int) | [privacy/system\_boot\_time\_access\_reasons](#class-editorexportplatformios-property-privacy-system-boot-time-access-reasons) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [privacy/tracking\_domains](#class-editorexportplatformios-property-privacy-tracking-domains) |
| [bool](class_bool.md#class-bool) | [privacy/tracking\_enabled](#class-editorexportplatformios-property-privacy-tracking-enabled) |
| [int](class_int.md#class-int) | [privacy/user\_defaults\_access\_reasons](#class-editorexportplatformios-property-privacy-user-defaults-access-reasons) |
| [bool](class_bool.md#class-bool) | [shader\_baker/enabled](#class-editorexportplatformios-property-shader-baker-enabled) |
| [Color](class_color.md#class-color) | [storyboard/custom\_bg\_color](#class-editorexportplatformios-property-storyboard-custom-bg-color) |
| [String](class_string.md#class-string) | [storyboard/custom\_image@2x](#class-editorexportplatformios-property-storyboard-custom-image-2x) |
| [String](class_string.md#class-string) | [storyboard/custom\_image@3x](#class-editorexportplatformios-property-storyboard-custom-image-3x) |
| [int](class_int.md#class-int) | [storyboard/image\_scale\_mode](#class-editorexportplatformios-property-storyboard-image-scale-mode) |
| [bool](class_bool.md#class-bool) | [storyboard/use\_custom\_bg\_color](#class-editorexportplatformios-property-storyboard-use-custom-bg-color) |
| [bool](class_bool.md#class-bool) | [user\_data/accessible\_from\_files\_app](#class-editorexportplatformios-property-user-data-accessible-from-files-app) |
| [bool](class_bool.md#class-bool) | [user\_data/accessible\_from\_itunes\_sharing](#class-editorexportplatformios-property-user-data-accessible-from-itunes-sharing) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **application/additional\_plist\_content** [🔗](#class-editorexportplatformios-property-application-additional-plist-content)

Additional data added to the root `<dict>` section of the [Info.plist](https://developer.apple.com/documentation/bundleresources/information_property_list) file. The value should be an XML section with pairs of key-value elements, e.g.:

```
<key>key_name</key>
<string>value</string>

```

* * *

[String](class_string.md#class-string) **application/app\_store\_team\_id** [🔗](#class-editorexportplatformios-property-application-app-store-team-id)

Apple Team ID, unique 10-character string. To locate your Team ID check "Membership details" section in your Apple developer account dashboard, or "Organizational Unit" of your code signing certificate. See [Locate your Team ID](https://developer.apple.com/help/account/manage-your-team/locate-your-team-id).

* * *

[String](class_string.md#class-string) **application/bundle\_identifier** [🔗](#class-editorexportplatformios-property-application-bundle-identifier)

Unique application identifier in a reverse-DNS format, can only contain alphanumeric characters ( `A-Z`, `a-z`, and `0-9`), hyphens ( `-`), and periods ( `.`).

* * *

[String](class_string.md#class-string) **application/code\_sign\_identity\_debug** [🔗](#class-editorexportplatformios-property-application-code-sign-identity-debug)

The "Full Name", "Common Name", or SHA-1 hash of the signing identity used for debug export.

* * *

[String](class_string.md#class-string) **application/code\_sign\_identity\_release** [🔗](#class-editorexportplatformios-property-application-code-sign-identity-release)

The "Full Name", "Common Name", or SHA-1 hash of the signing identity used for release export.

* * *

[bool](class_bool.md#class-bool) **application/delete\_old\_export\_files\_unconditionally** [🔗](#class-editorexportplatformios-property-application-delete-old-export-files-unconditionally)

If `true`, existing "project name" and "project name.xcodeproj" in the export destination directory will be unconditionally deleted during export.

* * *

[int](class_int.md#class-int) **application/export\_method\_debug** [🔗](#class-editorexportplatformios-property-application-export-method-debug)

Application distribution target (debug export).

* * *

[int](class_int.md#class-int) **application/export\_method\_release** [🔗](#class-editorexportplatformios-property-application-export-method-release)

Application distribution target (release export).

* * *

[bool](class_bool.md#class-bool) **application/export\_project\_only** [🔗](#class-editorexportplatformios-property-application-export-project-only)

If `true`, exports iOS project files without building an XCArchive or `.ipa` file. If `false`, exports iOS project files and builds an XCArchive and `.ipa` file at the same time. When combining Godot with Fastlane or other build pipelines, you may want to set this to `true`.

* * *

[int](class_int.md#class-int) **application/icon\_interpolation** [🔗](#class-editorexportplatformios-property-application-icon-interpolation)

Interpolation method used to resize application icon.

* * *

[String](class_string.md#class-string) **application/min\_ios\_version** [🔗](#class-editorexportplatformios-property-application-min-ios-version)

Minimum version of iOS required for this application to run in the `major.minor.patch` or `major.minor` format, can only contain numeric characters ( `0-9`) and periods ( `.`).

* * *

[String](class_string.md#class-string) **application/provisioning\_profile\_specifier\_debug** [🔗](#class-editorexportplatformios-property-application-provisioning-profile-specifier-debug)

Name of the provisioning profile. Sets Xcode PROVISIONING\_PROFILE\_SPECIFIER for debug. [Used for manual provisioning](https://developer.apple.com/documentation/xcode/build-settings-reference#Provisioning-Profile).

Can be overridden with the environment variable `GODOT_APPLE_PLATFORM_PROFILE_SPECIFIER_DEBUG`.

* * *

[String](class_string.md#class-string) **application/provisioning\_profile\_specifier\_release** [🔗](#class-editorexportplatformios-property-application-provisioning-profile-specifier-release)

Name of the provisioning profile. Sets Xcode PROVISIONING\_PROFILE\_SPECIFIER for release. [Used for manual provisioning](https://developer.apple.com/documentation/xcode/build-settings-reference#Provisioning-Profile).

Can be overridden with the environment variable `GODOT_APPLE_PLATFORM_PROFILE_SPECIFIER_RELEASE`.

* * *

[String](class_string.md#class-string) **application/provisioning\_profile\_uuid\_debug** [🔗](#class-editorexportplatformios-property-application-provisioning-profile-uuid-debug)

UUID of the provisioning profile. If left empty, Xcode will download or create a provisioning profile automatically. See [Edit, download, or delete provisioning profiles](https://developer.apple.com/help/account/manage-profiles/edit-download-or-delete-profiles).

Can be overridden with the environment variable `GODOT_APPLE_PLATFORM_PROVISIONING_PROFILE_UUID_DEBUG`.

* * *

[String](class_string.md#class-string) **application/provisioning\_profile\_uuid\_release** [🔗](#class-editorexportplatformios-property-application-provisioning-profile-uuid-release)

UUID of the provisioning profile. If left empty, Xcode will download or create a provisioning profile automatically. See [Edit, download, or delete provisioning profiles](https://developer.apple.com/help/account/manage-profiles/edit-download-or-delete-profiles).

Can be overridden with the environment variable `GODOT_APPLE_PLATFORM_PROVISIONING_PROFILE_UUID_RELEASE`.

* * *

[String](class_string.md#class-string) **application/short\_version** [🔗](#class-editorexportplatformios-property-application-short-version)

Application version visible to the user. Can only contain numeric characters ( `0-9`) and periods ( `.`). Falls back to [ProjectSettings.application/config/version](class_projectsettings.md#class-projectsettings-property-application-config-version) if left empty.

**Note:** This value is used for the _Identity > Version_ value in the generated Xcode project.

* * *

[String](class_string.md#class-string) **application/signature** [🔗](#class-editorexportplatformios-property-application-signature)

A four-character creator code that is specific to the bundle. Optional.

* * *

[int](class_int.md#class-int) **application/targeted\_device\_family** [🔗](#class-editorexportplatformios-property-application-targeted-device-family)

Supported device family.

* * *

[String](class_string.md#class-string) **application/version** [🔗](#class-editorexportplatformios-property-application-version)

Machine-readable application version in the `major.minor.patch` format. Can only contain numeric characters ( `0-9`) and periods ( `.`). This must be incremented with every new release pushed to the App Store. Falls back to [ProjectSettings.application/config/version](class_projectsettings.md#class-projectsettings-property-application-config-version) if left empty.

**Note:** This value is used for the _Identity > Build_ value in the generated Xcode project.

* * *

[bool](class_bool.md#class-bool) **architectures/arm64** [🔗](#class-editorexportplatformios-property-architectures-arm64)

If `true`, `arm64` binaries are included into exported project.

* * *

[bool](class_bool.md#class-bool) **capabilities/access\_wifi** [🔗](#class-editorexportplatformios-property-capabilities-access-wifi)

If `true`, networking features related to Wi-Fi access are enabled. See [Required Device Capabilities](https://developer.apple.com/support/required-device-capabilities/).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **capabilities/additional** [🔗](#class-editorexportplatformios-property-capabilities-additional)

Additional data added to the `UIRequiredDeviceCapabilities` array of the `Info.plist` file.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[bool](class_bool.md#class-bool) **capabilities/performance\_a12** [🔗](#class-editorexportplatformios-property-capabilities-performance-a12)

Requires the graphics performance and features of the A12 Bionic and later chips (devices supporting all Vulkan renderer features).

Enabling this option limits supported devices to: iPhone XS, iPhone XR, iPad Mini (5th gen.), iPad Air (3rd gen.), iPad (8th gen), and newer.

* * *

[bool](class_bool.md#class-bool) **capabilities/performance\_gaming\_tier** [🔗](#class-editorexportplatformios-property-capabilities-performance-gaming-tier)

Requires the graphics performance and features of the A17 Pro and later chips.

Enabling this option limits supported devices to: iPhone 15 Pro and newer.

* * *

[String](class_string.md#class-string) **custom\_template/debug** [🔗](#class-editorexportplatformios-property-custom-template-debug)

Path to the custom export template. If left empty, default template is used.

* * *

[String](class_string.md#class-string) **custom\_template/release** [🔗](#class-editorexportplatformios-property-custom-template-release)

Path to the custom export template. If left empty, default template is used.

* * *

[String](class_string.md#class-string) **entitlements/additional** [🔗](#class-editorexportplatformios-property-entitlements-additional)

Additional data added to the root `<dict>` section of the [.entitlements](https://developer.apple.com/documentation/bundleresources/entitlements) file. The value should be an XML section with pairs of key-value elements, for example:

```
<key>key_name</key>
<string>value</string>

```

* * *

[bool](class_bool.md#class-bool) **entitlements/game\_center** [🔗](#class-editorexportplatformios-property-entitlements-game-center)

If `true`, allows access to Game Center features. See [com.apple.developer.game-center](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_game-center).

* * *

[bool](class_bool.md#class-bool) **entitlements/increased\_memory\_limit** [🔗](#class-editorexportplatformios-property-entitlements-increased-memory-limit)

If `true`, hints that the app might perform better with a higher memory limit. See [com.apple.developer.kernel.increased-memory-limit](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_kernel_increased-memory-limit).

* * *

[String](class_string.md#class-string) **entitlements/push\_notifications** [🔗](#class-editorexportplatformios-property-entitlements-push-notifications)

Environment for Apple Push Notification service. See [aps-environment](https://developer.apple.com/documentation/bundleresources/entitlements/aps-environment).

* * *

[String](class_string.md#class-string) **icons/app\_store\_1024x1024** [🔗](#class-editorexportplatformios-property-icons-app-store-1024x1024)

App Store application icon file. If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/app\_store\_1024x1024\_dark** [🔗](#class-editorexportplatformios-property-icons-app-store-1024x1024-dark)

App Store application icon file, dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/app\_store\_1024x1024\_tinted** [🔗](#class-editorexportplatformios-property-icons-app-store-1024x1024-tinted)

App Store application icon file, tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/icon\_1024x1024** [🔗](#class-editorexportplatformios-property-icons-icon-1024x1024)

Base application icon used to generate other icons. If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/icon\_1024x1024\_dark** [🔗](#class-editorexportplatformios-property-icons-icon-1024x1024-dark)

Base application icon used to generate other icons, dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/icon\_1024x1024\_tinted** [🔗](#class-editorexportplatformios-property-icons-icon-1024x1024-tinted)

Base application icon used to generate other icons, tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ios\_128x128** [🔗](#class-editorexportplatformios-property-icons-ios-128x128)

iOS application 64x64 icon file (2x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ios\_128x128\_dark** [🔗](#class-editorexportplatformios-property-icons-ios-128x128-dark)

iOS application 64x64 icon file (2x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ios\_128x128\_tinted** [🔗](#class-editorexportplatformios-property-icons-ios-128x128-tinted)

iOS application 64x64 icon file (2x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ios\_136x136** [🔗](#class-editorexportplatformios-property-icons-ios-136x136)

iOS application 68x68 icon file (2x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ios\_136x136\_dark** [🔗](#class-editorexportplatformios-property-icons-ios-136x136-dark)

iOS application 68x68 icon file (2x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ios\_136x136\_tinted** [🔗](#class-editorexportplatformios-property-icons-ios-136x136-tinted)

iOS application 68x68 icon file (2x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ios\_192x192** [🔗](#class-editorexportplatformios-property-icons-ios-192x192)

iOS application 64x64 icon file (3x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ios\_192x192\_dark** [🔗](#class-editorexportplatformios-property-icons-ios-192x192-dark)

iOS application 64x64 icon file (3x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ios\_192x192\_tinted** [🔗](#class-editorexportplatformios-property-icons-ios-192x192-tinted)

iOS application 64x64 icon file (3x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ipad\_152x152** [🔗](#class-editorexportplatformios-property-icons-ipad-152x152)

Home screen application icon file on iPad (2x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ipad\_152x152\_dark** [🔗](#class-editorexportplatformios-property-icons-ipad-152x152-dark)

Home screen application icon file on iPad (2x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ipad\_152x152\_tinted** [🔗](#class-editorexportplatformios-property-icons-ipad-152x152-tinted)

Home screen application icon file on iPad (2x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ipad\_167x167** [🔗](#class-editorexportplatformios-property-icons-ipad-167x167)

Home screen application icon file on iPad (3x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ipad\_167x167\_dark** [🔗](#class-editorexportplatformios-property-icons-ipad-167x167-dark)

Home screen application icon file on iPad (3x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/ipad\_167x167\_tinted** [🔗](#class-editorexportplatformios-property-icons-ipad-167x167-tinted)

Home screen application icon file on iPad (3x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/iphone\_120x120** [🔗](#class-editorexportplatformios-property-icons-iphone-120x120)

Home screen application icon file on iPhone (2x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/iphone\_120x120\_dark** [🔗](#class-editorexportplatformios-property-icons-iphone-120x120-dark)

Home screen application icon file on iPhone (2x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/iphone\_120x120\_tinted** [🔗](#class-editorexportplatformios-property-icons-iphone-120x120-tinted)

Home screen application icon file on iPhone (2x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/iphone\_180x180** [🔗](#class-editorexportplatformios-property-icons-iphone-180x180)

Home screen application icon file on iPhone (3x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/iphone\_180x180\_dark** [🔗](#class-editorexportplatformios-property-icons-iphone-180x180-dark)

Home screen application icon file on iPhone (3x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/iphone\_180x180\_tinted** [🔗](#class-editorexportplatformios-property-icons-iphone-180x180-tinted)

Home screen application icon file on iPhone (3x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_40x40** [🔗](#class-editorexportplatformios-property-icons-notification-40x40)

Notification icon file on iPad and iPhone (2x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_40x40\_dark** [🔗](#class-editorexportplatformios-property-icons-notification-40x40-dark)

Notification icon file on iPad and iPhone (2x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_40x40\_tinted** [🔗](#class-editorexportplatformios-property-icons-notification-40x40-tinted)

Notification icon file on iPad and iPhone (2x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_60x60** [🔗](#class-editorexportplatformios-property-icons-notification-60x60)

Notification icon file on iPhone (3x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_60x60\_dark** [🔗](#class-editorexportplatformios-property-icons-notification-60x60-dark)

Notification icon file on iPhone (3x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_60x60\_tinted** [🔗](#class-editorexportplatformios-property-icons-notification-60x60-tinted)

Notification icon file on iPhone (3x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_76x76** [🔗](#class-editorexportplatformios-property-icons-notification-76x76)

Notification icon file on iPad and iPhone (2x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_76x76\_dark** [🔗](#class-editorexportplatformios-property-icons-notification-76x76-dark)

Notification icon file on iPad and iPhone (2x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_76x76\_tinted** [🔗](#class-editorexportplatformios-property-icons-notification-76x76-tinted)

Notification icon file on iPad and iPhone (2x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_114x114** [🔗](#class-editorexportplatformios-property-icons-notification-114x114)

Notification icon file on iPad and iPhone (3x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_114x114\_dark** [🔗](#class-editorexportplatformios-property-icons-notification-114x114-dark)

Notification icon file on iPad and iPhone (3x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/notification\_114x114\_tinted** [🔗](#class-editorexportplatformios-property-icons-notification-114x114-tinted)

Notification icon file on iPad and iPhone (3x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/settings\_58x58** [🔗](#class-editorexportplatformios-property-icons-settings-58x58)

Application settings icon file on iPad and iPhone (2x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/settings\_58x58\_dark** [🔗](#class-editorexportplatformios-property-icons-settings-58x58-dark)

Application settings icon file on iPad and iPhone (2x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/settings\_58x58\_tinted** [🔗](#class-editorexportplatformios-property-icons-settings-58x58-tinted)

Application settings icon file on iPad and iPhone (2x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/settings\_87x87** [🔗](#class-editorexportplatformios-property-icons-settings-87x87)

Application settings icon file on iPhone (3x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/settings\_87x87\_dark** [🔗](#class-editorexportplatformios-property-icons-settings-87x87-dark)

Application settings icon file on iPhone (3x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/settings\_87x87\_tinted** [🔗](#class-editorexportplatformios-property-icons-settings-87x87-tinted)

Application settings icon file on iPhone (3x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/spotlight\_80x80** [🔗](#class-editorexportplatformios-property-icons-spotlight-80x80)

Spotlight icon file on iPad and iPhone (2x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/spotlight\_80x80\_dark** [🔗](#class-editorexportplatformios-property-icons-spotlight-80x80-dark)

Spotlight icon file on iPad and iPhone (2x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/spotlight\_80x80\_tinted** [🔗](#class-editorexportplatformios-property-icons-spotlight-80x80-tinted)

Spotlight icon file on iPad and iPhone (2x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/spotlight\_120x120** [🔗](#class-editorexportplatformios-property-icons-spotlight-120x120)

Spotlight icon file on iPad and iPhone (3x DPI). If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon). See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/spotlight\_120x120\_dark** [🔗](#class-editorexportplatformios-property-icons-spotlight-120x120-dark)

Spotlight icon file on iPad and iPhone (3x DPI), dark version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[String](class_string.md#class-string) **icons/spotlight\_120x120\_tinted** [🔗](#class-editorexportplatformios-property-icons-spotlight-120x120-tinted)

Spotlight icon file on iPad and iPhone (3x DPI), tinted version. See [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons).

* * *

[int](class_int.md#class-int) **privacy/active\_keyboard\_access\_reasons** [🔗](#class-editorexportplatformios-property-privacy-active-keyboard-access-reasons)

The reasons your app use active keyboard API. See [Describing use of required reason API](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api).

* * *

[String](class_string.md#class-string) **privacy/camera\_usage\_description** [🔗](#class-editorexportplatformios-property-privacy-camera-usage-description)

A message displayed when requesting access to the device's camera (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/camera\_usage\_description\_localized** [🔗](#class-editorexportplatformios-property-privacy-camera-usage-description-localized)

A message displayed when requesting access to the device's camera (localized).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/advertising\_data/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-advertising-data-collected)

Indicates whether your app collects advertising data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/advertising\_data/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-advertising-data-collection-purposes)

The reasons your app collects advertising data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/advertising\_data/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-advertising-data-linked-to-user)

Indicates whether your app links advertising data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/advertising\_data/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-advertising-data-used-for-tracking)

Indicates whether your app uses advertising data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/audio\_data/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-audio-data-collected)

Indicates whether your app collects audio data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/audio\_data/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-audio-data-collection-purposes)

The reasons your app collects audio data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/audio\_data/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-audio-data-linked-to-user)

Indicates whether your app links audio data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/audio\_data/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-audio-data-used-for-tracking)

Indicates whether your app uses audio data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/browsing\_history/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-browsing-history-collected)

Indicates whether your app collects browsing history.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/browsing\_history/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-browsing-history-collection-purposes)

The reasons your app collects browsing history. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/browsing\_history/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-browsing-history-linked-to-user)

Indicates whether your app links browsing history to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/browsing\_history/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-browsing-history-used-for-tracking)

Indicates whether your app uses browsing history for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/coarse\_location/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-coarse-location-collected)

Indicates whether your app collects coarse location data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/coarse\_location/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-coarse-location-collection-purposes)

The reasons your app collects coarse location data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/coarse\_location/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-coarse-location-linked-to-user)

Indicates whether your app links coarse location data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/coarse\_location/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-coarse-location-used-for-tracking)

Indicates whether your app uses coarse location data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/contacts/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-contacts-collected)

Indicates whether your app collects contacts.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/contacts/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-contacts-collection-purposes)

The reasons your app collects contacts. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/contacts/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-contacts-linked-to-user)

Indicates whether your app links contacts to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/contacts/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-contacts-used-for-tracking)

Indicates whether your app uses contacts for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/crash\_data/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-crash-data-collected)

Indicates whether your app collects crash data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/crash\_data/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-crash-data-collection-purposes)

The reasons your app collects crash data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/crash\_data/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-crash-data-linked-to-user)

Indicates whether your app links crash data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/crash\_data/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-crash-data-used-for-tracking)

Indicates whether your app uses crash data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/credit\_info/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-credit-info-collected)

Indicates whether your app collects credit information.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/credit\_info/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-credit-info-collection-purposes)

The reasons your app collects credit information. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/credit\_info/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-credit-info-linked-to-user)

Indicates whether your app links credit information to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/credit\_info/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-credit-info-used-for-tracking)

Indicates whether your app uses credit information for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/customer\_support/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-customer-support-collected)

Indicates whether your app collects customer support data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/customer\_support/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-customer-support-collection-purposes)

The reasons your app collects customer support data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/customer\_support/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-customer-support-linked-to-user)

Indicates whether your app links customer support data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/customer\_support/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-customer-support-used-for-tracking)

Indicates whether your app uses customer support data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/device\_id/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-device-id-collected)

Indicates whether your app collects device IDs.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/device\_id/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-device-id-collection-purposes)

The reasons your app collects device IDs. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/device\_id/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-device-id-linked-to-user)

Indicates whether your app links device IDs to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/device\_id/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-device-id-used-for-tracking)

Indicates whether your app uses device IDs for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/email\_address/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-email-address-collected)

Indicates whether your app collects email address.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/email\_address/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-email-address-collection-purposes)

The reasons your app collects email address. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/email\_address/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-email-address-linked-to-user)

Indicates whether your app links email address to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/email\_address/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-email-address-used-for-tracking)

Indicates whether your app uses email address for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/emails\_or\_text\_messages/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-emails-or-text-messages-collected)

Indicates whether your app collects emails or text messages.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/emails\_or\_text\_messages/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-emails-or-text-messages-collection-purposes)

The reasons your app collects emails or text messages. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/emails\_or\_text\_messages/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-emails-or-text-messages-linked-to-user)

Indicates whether your app links emails or text messages to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/emails\_or\_text\_messages/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-emails-or-text-messages-used-for-tracking)

Indicates whether your app uses emails or text messages for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/environment\_scanning/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-environment-scanning-collected)

Indicates whether your app collects environment scanning data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/environment\_scanning/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-environment-scanning-collection-purposes)

The reasons your app collects environment scanning data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/environment\_scanning/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-environment-scanning-linked-to-user)

Indicates whether your app links environment scanning data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/environment\_scanning/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-environment-scanning-used-for-tracking)

Indicates whether your app uses environment scanning data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/fitness/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-fitness-collected)

Indicates whether your app collects fitness and exercise data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/fitness/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-fitness-collection-purposes)

The reasons your app collects fitness and exercise data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/fitness/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-fitness-linked-to-user)

Indicates whether your app links fitness and exercise data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/fitness/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-fitness-used-for-tracking)

Indicates whether your app uses fitness and exercise data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/gameplay\_content/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-gameplay-content-collected)

Indicates whether your app collects gameplay content.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/gameplay\_content/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-gameplay-content-collection-purposes)

The reasons your app collects gameplay content. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/gameplay\_content/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-gameplay-content-linked-to-user)

Indicates whether your app links gameplay content to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/gameplay\_content/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-gameplay-content-used-for-tracking)

Indicates whether your app uses gameplay content for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/hands/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-hands-collected)

Indicates whether your app collects user's hand structure and hand movements.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/hands/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-hands-collection-purposes)

The reasons your app collects user's hand structure and hand movements. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/hands/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-hands-linked-to-user)

Indicates whether your app links user's hand structure and hand movements to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/hands/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-hands-used-for-tracking)

Indicates whether your app uses user's hand structure and hand movements for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/head/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-head-collected)

Indicates whether your app collects user's head movement.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/head/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-head-collection-purposes)

The reasons your app collects user's head movement. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/head/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-head-linked-to-user)

Indicates whether your app links user's head movement to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/head/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-head-used-for-tracking)

Indicates whether your app uses user's head movement for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/health/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-health-collected)

Indicates whether your app collects health and medical data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/health/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-health-collection-purposes)

The reasons your app collects health and medical data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/health/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-health-linked-to-user)

Indicates whether your app links health and medical data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/health/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-health-used-for-tracking)

Indicates whether your app uses health and medical data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/name/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-name-collected)

Indicates whether your app collects user's name.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/name/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-name-collection-purposes)

The reasons your app collects user's name. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/name/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-name-linked-to-user)

Indicates whether your app links user's name to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/name/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-name-used-for-tracking)

Indicates whether your app uses user's name for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_contact\_info/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-contact-info-collected)

Indicates whether your app collects any other contact information.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_contact\_info/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-contact-info-collection-purposes)

The reasons your app collects any other contact information. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_contact\_info/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-contact-info-linked-to-user)

Indicates whether your app links any other contact information to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_contact\_info/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-contact-info-used-for-tracking)

Indicates whether your app uses any other contact information for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_data\_types/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-data-types-collected)

Indicates whether your app collects any other data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_data\_types/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-data-types-collection-purposes)

The reasons your app collects any other data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_data\_types/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-data-types-linked-to-user)

Indicates whether your app links any other data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_data\_types/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-data-types-used-for-tracking)

Indicates whether your app uses any other data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_diagnostic\_data/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-diagnostic-data-collected)

Indicates whether your app collects any other diagnostic data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_diagnostic\_data/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-diagnostic-data-collection-purposes)

The reasons your app collects any other diagnostic data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_diagnostic\_data/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-diagnostic-data-linked-to-user)

Indicates whether your app links any other diagnostic data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_diagnostic\_data/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-diagnostic-data-used-for-tracking)

Indicates whether your app uses any other diagnostic data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_financial\_info/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-financial-info-collected)

Indicates whether your app collects any other financial information.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_financial\_info/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-financial-info-collection-purposes)

The reasons your app collects any other financial information. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_financial\_info/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-financial-info-linked-to-user)

Indicates whether your app links any other financial information to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_financial\_info/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-financial-info-used-for-tracking)

Indicates whether your app uses any other financial information for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_usage\_data/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-usage-data-collected)

Indicates whether your app collects any other usage data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_usage\_data/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-usage-data-collection-purposes)

The reasons your app collects any other usage data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_usage\_data/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-usage-data-linked-to-user)

Indicates whether your app links any other usage data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_usage\_data/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-usage-data-used-for-tracking)

Indicates whether your app uses any other usage data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_user\_content/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-user-content-collected)

Indicates whether your app collects any other user generated content.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_user\_content/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-user-content-collection-purposes)

The reasons your app collects any other user generated content. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_user\_content/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-user-content-linked-to-user)

Indicates whether your app links any other user generated content to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_user\_content/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-other-user-content-used-for-tracking)

Indicates whether your app uses any other user generated content for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/payment\_info/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-payment-info-collected)

Indicates whether your app collects payment information.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/payment\_info/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-payment-info-collection-purposes)

The reasons your app collects payment information. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/payment\_info/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-payment-info-linked-to-user)

Indicates whether your app links payment information to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/payment\_info/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-payment-info-used-for-tracking)

Indicates whether your app uses payment information for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/performance\_data/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-performance-data-collected)

Indicates whether your app collects performance data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/performance\_data/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-performance-data-collection-purposes)

The reasons your app collects performance data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/performance\_data/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-performance-data-linked-to-user)

Indicates whether your app links performance data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/performance\_data/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-performance-data-used-for-tracking)

Indicates whether your app uses performance data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/phone\_number/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-phone-number-collected)

Indicates whether your app collects phone number.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/phone\_number/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-phone-number-collection-purposes)

The reasons your app collects phone number. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/phone\_number/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-phone-number-linked-to-user)

Indicates whether your app links phone number to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/phone\_number/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-phone-number-used-for-tracking)

Indicates whether your app uses phone number for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/photos\_or\_videos/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-photos-or-videos-collected)

Indicates whether your app collects photos or videos.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/photos\_or\_videos/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-photos-or-videos-collection-purposes)

The reasons your app collects photos or videos. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/photos\_or\_videos/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-photos-or-videos-linked-to-user)

Indicates whether your app links photos or videos to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/photos\_or\_videos/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-photos-or-videos-used-for-tracking)

Indicates whether your app uses photos or videos for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/physical\_address/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-physical-address-collected)

Indicates whether your app collects physical address.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/physical\_address/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-physical-address-collection-purposes)

The reasons your app collects physical address. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/physical\_address/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-physical-address-linked-to-user)

Indicates whether your app links physical address to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/physical\_address/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-physical-address-used-for-tracking)

Indicates whether your app uses physical address for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/precise\_location/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-precise-location-collected)

Indicates whether your app collects precise location data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/precise\_location/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-precise-location-collection-purposes)

The reasons your app collects precise location data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/precise\_location/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-precise-location-linked-to-user)

Indicates whether your app links precise location data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/precise\_location/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-precise-location-used-for-tracking)

Indicates whether your app uses precise location data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/product\_interaction/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-product-interaction-collected)

Indicates whether your app collects product interaction data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/product\_interaction/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-product-interaction-collection-purposes)

The reasons your app collects product interaction data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/product\_interaction/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-product-interaction-linked-to-user)

Indicates whether your app links product interaction data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/product\_interaction/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-product-interaction-used-for-tracking)

Indicates whether your app uses product interaction data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/purchase\_history/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-purchase-history-collected)

Indicates whether your app collects purchase history.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/purchase\_history/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-purchase-history-collection-purposes)

The reasons your app collects purchase history. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/purchase\_history/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-purchase-history-linked-to-user)

Indicates whether your app links purchase history to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/purchase\_history/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-purchase-history-used-for-tracking)

Indicates whether your app uses purchase history for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/search\_hhistory/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-search-hhistory-collected)

Indicates whether your app collects search history.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/search\_hhistory/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-search-hhistory-collection-purposes)

The reasons your app collects search history. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/search\_hhistory/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-search-hhistory-linked-to-user)

Indicates whether your app links search history to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/search\_hhistory/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-search-hhistory-used-for-tracking)

Indicates whether your app uses search history for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/sensitive\_info/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-sensitive-info-collected)

Indicates whether your app collects sensitive user information.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/sensitive\_info/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-sensitive-info-collection-purposes)

The reasons your app collects sensitive user information. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/sensitive\_info/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-sensitive-info-linked-to-user)

Indicates whether your app links sensitive user information to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/sensitive\_info/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-sensitive-info-used-for-tracking)

Indicates whether your app uses sensitive user information for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/user\_id/collected** [🔗](#class-editorexportplatformios-property-privacy-collected-data-user-id-collected)

Indicates whether your app collects user IDs.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/user\_id/collection\_purposes** [🔗](#class-editorexportplatformios-property-privacy-collected-data-user-id-collection-purposes)

The reasons your app collects user IDs. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/user\_id/linked\_to\_user** [🔗](#class-editorexportplatformios-property-privacy-collected-data-user-id-linked-to-user)

Indicates whether your app links user IDs to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/user\_id/used\_for\_tracking** [🔗](#class-editorexportplatformios-property-privacy-collected-data-user-id-used-for-tracking)

Indicates whether your app uses user IDs for tracking.

* * *

[int](class_int.md#class-int) **privacy/disk\_space\_access\_reasons** [🔗](#class-editorexportplatformios-property-privacy-disk-space-access-reasons)

The reasons your app use free disk space API. See [Describing use of required reason API](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api).

* * *

[int](class_int.md#class-int) **privacy/file\_timestamp\_access\_reasons** [🔗](#class-editorexportplatformios-property-privacy-file-timestamp-access-reasons)

The reasons your app use file timestamp/metadata API. See [Describing use of required reason API](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api).

* * *

[String](class_string.md#class-string) **privacy/microphone\_usage\_description** [🔗](#class-editorexportplatformios-property-privacy-microphone-usage-description)

A message displayed when requesting access to the device's microphone (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/microphone\_usage\_description\_localized** [🔗](#class-editorexportplatformios-property-privacy-microphone-usage-description-localized)

A message displayed when requesting access to the device's microphone (localized).

* * *

[String](class_string.md#class-string) **privacy/photolibrary\_usage\_description** [🔗](#class-editorexportplatformios-property-privacy-photolibrary-usage-description)

A message displayed when requesting access to the user's photo library (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/photolibrary\_usage\_description\_localized** [🔗](#class-editorexportplatformios-property-privacy-photolibrary-usage-description-localized)

A message displayed when requesting access to the user's photo library (localized).

* * *

[int](class_int.md#class-int) **privacy/system\_boot\_time\_access\_reasons** [🔗](#class-editorexportplatformios-property-privacy-system-boot-time-access-reasons)

The reasons your app use system boot time / absolute time API. See [Describing use of required reason API](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **privacy/tracking\_domains** [🔗](#class-editorexportplatformios-property-privacy-tracking-domains)

The list of internet domains your app connects to that engage in tracking. See [Privacy manifest files](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[bool](class_bool.md#class-bool) **privacy/tracking\_enabled** [🔗](#class-editorexportplatformios-property-privacy-tracking-enabled)

Indicates whether your app uses data for tracking. See [Privacy manifest files](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files).

* * *

[int](class_int.md#class-int) **privacy/user\_defaults\_access\_reasons** [🔗](#class-editorexportplatformios-property-privacy-user-defaults-access-reasons)

The reasons your app use user defaults API. See [Describing use of required reason API](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api).

* * *

[bool](class_bool.md#class-bool) **shader\_baker/enabled** [🔗](#class-editorexportplatformios-property-shader-baker-enabled)

If `true`, shaders will be compiled and embedded in the application. This option is only supported when using the Forward+ or Mobile renderers.

* * *

[Color](class_color.md#class-color) **storyboard/custom\_bg\_color** [🔗](#class-editorexportplatformios-property-storyboard-custom-bg-color)

A custom background color of the storyboard launch screen.

* * *

[String](class_string.md#class-string) **storyboard/custom\_image@2x** [🔗](#class-editorexportplatformios-property-storyboard-custom-image-2x)

Application launch screen image file (2x DPI). If left empty, it will fallback to [ProjectSettings.application/boot\_splash/image](class_projectsettings.md#class-projectsettings-property-application-boot-splash-image).

* * *

[String](class_string.md#class-string) **storyboard/custom\_image@3x** [🔗](#class-editorexportplatformios-property-storyboard-custom-image-3x)

Application launch screen image file (3x DPI). If left empty, it will fallback to [ProjectSettings.application/boot\_splash/image](class_projectsettings.md#class-projectsettings-property-application-boot-splash-image).

* * *

[int](class_int.md#class-int) **storyboard/image\_scale\_mode** [🔗](#class-editorexportplatformios-property-storyboard-image-scale-mode)

Launch screen image scaling mode.

* * *

[bool](class_bool.md#class-bool) **storyboard/use\_custom\_bg\_color** [🔗](#class-editorexportplatformios-property-storyboard-use-custom-bg-color)

If `true`, [storyboard/custom\_bg\_color](#class-editorexportplatformios-property-storyboard-custom-bg-color) is used as a launch screen background color, otherwise `application/boot_splash/bg_color` project setting is used.

* * *

[bool](class_bool.md#class-bool) **user\_data/accessible\_from\_files\_app** [🔗](#class-editorexportplatformios-property-user-data-accessible-from-files-app)

If `true`, the app "Documents" folder can be accessed via "Files" app. See [LSSupportsOpeningDocumentsInPlace](https://developer.apple.com/documentation/bundleresources/information_property_list/lssupportsopeningdocumentsinplace).

* * *

[bool](class_bool.md#class-bool) **user\_data/accessible\_from\_itunes\_sharing** [🔗](#class-editorexportplatformios-property-user-data-accessible-from-itunes-sharing)

If `true`, the app "Documents" folder can be accessed via iTunes file sharing. See [UIFileSharingEnabled](https://developer.apple.com/documentation/bundleresources/information_property_list/uifilesharingenabled).

[Previous](class_editorexportplatformextension.md "EditorExportPlatformExtension") [Next](class_editorexportplatformlinuxbsd.md "EditorExportPlatformLinuxBSD")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorexportplatformextension.md "EditorExportPlatformExtension") [Next](class_editorexportplatformlinuxbsd.md "EditorExportPlatformLinuxBSD")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).