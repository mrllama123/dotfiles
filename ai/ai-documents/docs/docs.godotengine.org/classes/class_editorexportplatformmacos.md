---
title: EditorExportPlatformMacOS — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorexportplatformmacos.html
crawled_at: "2026-08-13T10:35:40+12:00"
content_hash: f8c05b224e5ac53462277bc3a0a06d5fcc6a185eb176b9b397ac73353b44a807
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorExportPlatformMacOS

* * *

# EditorExportPlatformMacOS

**Inherits:** [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Exporter for macOS.

## Tutorials

- [Exporting for macOS](../tutorials/export/exporting_for_macos.md)

- [Running Godot apps on macOS](../tutorials/export/running_on_macos.md)


## Properties

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [application/additional\_plist\_content](#class-editorexportplatformmacos-property-application-additional-plist-content) |
| [String](class_string.md#class-string) | [application/app\_category](#class-editorexportplatformmacos-property-application-app-category) |
| [String](class_string.md#class-string) | [application/bundle\_identifier](#class-editorexportplatformmacos-property-application-bundle-identifier) |
| [String](class_string.md#class-string) | [application/copyright](#class-editorexportplatformmacos-property-application-copyright) |
| [Dictionary](class_dictionary.md#class-dictionary) | [application/copyright\_localized](#class-editorexportplatformmacos-property-application-copyright-localized) |
| [int](class_int.md#class-int) | [application/export\_angle](#class-editorexportplatformmacos-property-application-export-angle) |
| [String](class_string.md#class-string) | [application/icon](#class-editorexportplatformmacos-property-application-icon) |
| [int](class_int.md#class-int) | [application/icon\_interpolation](#class-editorexportplatformmacos-property-application-icon-interpolation) |
| [String](class_string.md#class-string) | [application/min\_macos\_version\_arm64](#class-editorexportplatformmacos-property-application-min-macos-version-arm64) |
| [String](class_string.md#class-string) | [application/min\_macos\_version\_x86\_64](#class-editorexportplatformmacos-property-application-min-macos-version-x86-64) |
| [String](class_string.md#class-string) | [application/short\_version](#class-editorexportplatformmacos-property-application-short-version) |
| [String](class_string.md#class-string) | [application/signature](#class-editorexportplatformmacos-property-application-signature) |
| [String](class_string.md#class-string) | [application/version](#class-editorexportplatformmacos-property-application-version) |
| [String](class_string.md#class-string) | [binary\_format/architecture](#class-editorexportplatformmacos-property-binary-format-architecture) |
| [String](class_string.md#class-string) | [codesign/apple\_team\_id](#class-editorexportplatformmacos-property-codesign-apple-team-id) |
| [String](class_string.md#class-string) | [codesign/certificate\_file](#class-editorexportplatformmacos-property-codesign-certificate-file) |
| [String](class_string.md#class-string) | [codesign/certificate\_password](#class-editorexportplatformmacos-property-codesign-certificate-password) |
| [int](class_int.md#class-int) | [codesign/codesign](#class-editorexportplatformmacos-property-codesign-codesign) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [codesign/custom\_options](#class-editorexportplatformmacos-property-codesign-custom-options) |
| [String](class_string.md#class-string) | [codesign/entitlements/additional](#class-editorexportplatformmacos-property-codesign-entitlements-additional) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/address\_book](#class-editorexportplatformmacos-property-codesign-entitlements-address-book) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/allow\_dyld\_environment\_variables](#class-editorexportplatformmacos-property-codesign-entitlements-allow-dyld-environment-variables) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/allow\_jit\_code\_execution](#class-editorexportplatformmacos-property-codesign-entitlements-allow-jit-code-execution) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/allow\_unsigned\_executable\_memory](#class-editorexportplatformmacos-property-codesign-entitlements-allow-unsigned-executable-memory) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/app\_sandbox/device\_bluetooth](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-device-bluetooth) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/app\_sandbox/device\_usb](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-device-usb) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/app\_sandbox/enabled](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-enabled) |
| [int](class_int.md#class-int) | [codesign/entitlements/app\_sandbox/files\_downloads](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-files-downloads) |
| [int](class_int.md#class-int) | [codesign/entitlements/app\_sandbox/files\_movies](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-files-movies) |
| [int](class_int.md#class-int) | [codesign/entitlements/app\_sandbox/files\_music](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-files-music) |
| [int](class_int.md#class-int) | [codesign/entitlements/app\_sandbox/files\_pictures](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-files-pictures) |
| [int](class_int.md#class-int) | [codesign/entitlements/app\_sandbox/files\_user\_selected](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-files-user-selected) |
| [Array](class_array.md#class-array) | [codesign/entitlements/app\_sandbox/helper\_executables](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-helper-executables) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/app\_sandbox/network\_client](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-network-client) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/app\_sandbox/network\_server](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-network-server) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/apple\_events](#class-editorexportplatformmacos-property-codesign-entitlements-apple-events) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/audio\_input](#class-editorexportplatformmacos-property-codesign-entitlements-audio-input) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/calendars](#class-editorexportplatformmacos-property-codesign-entitlements-calendars) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/camera](#class-editorexportplatformmacos-property-codesign-entitlements-camera) |
| [String](class_string.md#class-string) | [codesign/entitlements/custom\_file](#class-editorexportplatformmacos-property-codesign-entitlements-custom-file) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/debugging](#class-editorexportplatformmacos-property-codesign-entitlements-debugging) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/disable\_library\_validation](#class-editorexportplatformmacos-property-codesign-entitlements-disable-library-validation) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/location](#class-editorexportplatformmacos-property-codesign-entitlements-location) |
| [bool](class_bool.md#class-bool) | [codesign/entitlements/photos\_library](#class-editorexportplatformmacos-property-codesign-entitlements-photos-library) |
| [String](class_string.md#class-string) | [codesign/identity](#class-editorexportplatformmacos-property-codesign-identity) |
| [String](class_string.md#class-string) | [codesign/installer\_identity](#class-editorexportplatformmacos-property-codesign-installer-identity) |
| [String](class_string.md#class-string) | [codesign/provisioning\_profile](#class-editorexportplatformmacos-property-codesign-provisioning-profile) |
| [String](class_string.md#class-string) | [custom\_template/debug](#class-editorexportplatformmacos-property-custom-template-debug) |
| [String](class_string.md#class-string) | [custom\_template/release](#class-editorexportplatformmacos-property-custom-template-release) |
| [int](class_int.md#class-int) | [debug/export\_console\_wrapper](#class-editorexportplatformmacos-property-debug-export-console-wrapper) |
| [bool](class_bool.md#class-bool) | [display/high\_res](#class-editorexportplatformmacos-property-display-high-res) |
| [int](class_int.md#class-int) | [export/distribution\_type](#class-editorexportplatformmacos-property-export-distribution-type) |
| [String](class_string.md#class-string) | [notarization/api\_key](#class-editorexportplatformmacos-property-notarization-api-key) |
| [String](class_string.md#class-string) | [notarization/api\_key\_id](#class-editorexportplatformmacos-property-notarization-api-key-id) |
| [String](class_string.md#class-string) | [notarization/api\_uuid](#class-editorexportplatformmacos-property-notarization-api-uuid) |
| [String](class_string.md#class-string) | [notarization/apple\_id\_name](#class-editorexportplatformmacos-property-notarization-apple-id-name) |
| [String](class_string.md#class-string) | [notarization/apple\_id\_password](#class-editorexportplatformmacos-property-notarization-apple-id-password) |
| [int](class_int.md#class-int) | [notarization/notarization](#class-editorexportplatformmacos-property-notarization-notarization) |
| [String](class_string.md#class-string) | [privacy/address\_book\_usage\_description](#class-editorexportplatformmacos-property-privacy-address-book-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/address\_book\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-address-book-usage-description-localized) |
| [String](class_string.md#class-string) | [privacy/calendar\_usage\_description](#class-editorexportplatformmacos-property-privacy-calendar-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/calendar\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-calendar-usage-description-localized) |
| [String](class_string.md#class-string) | [privacy/camera\_usage\_description](#class-editorexportplatformmacos-property-privacy-camera-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/camera\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-camera-usage-description-localized) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/advertising\_data/collected](#class-editorexportplatformmacos-property-privacy-collected-data-advertising-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/advertising\_data/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-advertising-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/advertising\_data/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-advertising-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/advertising\_data/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-advertising-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/audio\_data/collected](#class-editorexportplatformmacos-property-privacy-collected-data-audio-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/audio\_data/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-audio-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/audio\_data/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-audio-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/audio\_data/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-audio-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/browsing\_history/collected](#class-editorexportplatformmacos-property-privacy-collected-data-browsing-history-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/browsing\_history/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-browsing-history-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/browsing\_history/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-browsing-history-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/browsing\_history/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-browsing-history-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/coarse\_location/collected](#class-editorexportplatformmacos-property-privacy-collected-data-coarse-location-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/coarse\_location/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-coarse-location-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/coarse\_location/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-coarse-location-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/coarse\_location/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-coarse-location-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/contacts/collected](#class-editorexportplatformmacos-property-privacy-collected-data-contacts-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/contacts/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-contacts-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/contacts/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-contacts-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/contacts/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-contacts-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/crash\_data/collected](#class-editorexportplatformmacos-property-privacy-collected-data-crash-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/crash\_data/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-crash-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/crash\_data/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-crash-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/crash\_data/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-crash-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/credit\_info/collected](#class-editorexportplatformmacos-property-privacy-collected-data-credit-info-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/credit\_info/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-credit-info-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/credit\_info/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-credit-info-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/credit\_info/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-credit-info-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/customer\_support/collected](#class-editorexportplatformmacos-property-privacy-collected-data-customer-support-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/customer\_support/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-customer-support-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/customer\_support/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-customer-support-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/customer\_support/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-customer-support-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/device\_id/collected](#class-editorexportplatformmacos-property-privacy-collected-data-device-id-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/device\_id/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-device-id-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/device\_id/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-device-id-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/device\_id/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-device-id-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/email\_address/collected](#class-editorexportplatformmacos-property-privacy-collected-data-email-address-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/email\_address/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-email-address-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/email\_address/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-email-address-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/email\_address/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-email-address-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/emails\_or\_text\_messages/collected](#class-editorexportplatformmacos-property-privacy-collected-data-emails-or-text-messages-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/emails\_or\_text\_messages/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-emails-or-text-messages-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/emails\_or\_text\_messages/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-emails-or-text-messages-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/emails\_or\_text\_messages/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-emails-or-text-messages-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/environment\_scanning/collected](#class-editorexportplatformmacos-property-privacy-collected-data-environment-scanning-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/environment\_scanning/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-environment-scanning-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/environment\_scanning/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-environment-scanning-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/environment\_scanning/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-environment-scanning-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/fitness/collected](#class-editorexportplatformmacos-property-privacy-collected-data-fitness-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/fitness/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-fitness-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/fitness/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-fitness-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/fitness/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-fitness-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/gameplay\_content/collected](#class-editorexportplatformmacos-property-privacy-collected-data-gameplay-content-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/gameplay\_content/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-gameplay-content-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/gameplay\_content/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-gameplay-content-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/gameplay\_content/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-gameplay-content-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/hands/collected](#class-editorexportplatformmacos-property-privacy-collected-data-hands-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/hands/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-hands-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/hands/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-hands-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/hands/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-hands-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/head/collected](#class-editorexportplatformmacos-property-privacy-collected-data-head-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/head/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-head-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/head/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-head-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/head/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-head-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/health/collected](#class-editorexportplatformmacos-property-privacy-collected-data-health-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/health/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-health-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/health/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-health-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/health/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-health-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/name/collected](#class-editorexportplatformmacos-property-privacy-collected-data-name-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/name/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-name-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/name/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-name-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/name/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-name-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_contact\_info/collected](#class-editorexportplatformmacos-property-privacy-collected-data-other-contact-info-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_contact\_info/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-other-contact-info-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_contact\_info/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-other-contact-info-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_contact\_info/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-other-contact-info-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_data\_types/collected](#class-editorexportplatformmacos-property-privacy-collected-data-other-data-types-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_data\_types/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-other-data-types-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_data\_types/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-other-data-types-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_data\_types/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-other-data-types-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_diagnostic\_data/collected](#class-editorexportplatformmacos-property-privacy-collected-data-other-diagnostic-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_diagnostic\_data/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-other-diagnostic-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_diagnostic\_data/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-other-diagnostic-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_diagnostic\_data/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-other-diagnostic-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_financial\_info/collected](#class-editorexportplatformmacos-property-privacy-collected-data-other-financial-info-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_financial\_info/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-other-financial-info-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_financial\_info/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-other-financial-info-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_financial\_info/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-other-financial-info-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_usage\_data/collected](#class-editorexportplatformmacos-property-privacy-collected-data-other-usage-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_usage\_data/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-other-usage-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_usage\_data/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-other-usage-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_usage\_data/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-other-usage-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_user\_content/collected](#class-editorexportplatformmacos-property-privacy-collected-data-other-user-content-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/other\_user\_content/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-other-user-content-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_user\_content/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-other-user-content-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/other\_user\_content/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-other-user-content-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/payment\_info/collected](#class-editorexportplatformmacos-property-privacy-collected-data-payment-info-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/payment\_info/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-payment-info-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/payment\_info/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-payment-info-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/payment\_info/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-payment-info-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/performance\_data/collected](#class-editorexportplatformmacos-property-privacy-collected-data-performance-data-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/performance\_data/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-performance-data-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/performance\_data/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-performance-data-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/performance\_data/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-performance-data-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/phone\_number/collected](#class-editorexportplatformmacos-property-privacy-collected-data-phone-number-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/phone\_number/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-phone-number-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/phone\_number/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-phone-number-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/phone\_number/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-phone-number-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/photos\_or\_videos/collected](#class-editorexportplatformmacos-property-privacy-collected-data-photos-or-videos-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/photos\_or\_videos/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-photos-or-videos-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/photos\_or\_videos/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-photos-or-videos-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/photos\_or\_videos/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-photos-or-videos-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/physical\_address/collected](#class-editorexportplatformmacos-property-privacy-collected-data-physical-address-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/physical\_address/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-physical-address-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/physical\_address/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-physical-address-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/physical\_address/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-physical-address-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/precise\_location/collected](#class-editorexportplatformmacos-property-privacy-collected-data-precise-location-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/precise\_location/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-precise-location-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/precise\_location/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-precise-location-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/precise\_location/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-precise-location-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/product\_interaction/collected](#class-editorexportplatformmacos-property-privacy-collected-data-product-interaction-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/product\_interaction/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-product-interaction-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/product\_interaction/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-product-interaction-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/product\_interaction/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-product-interaction-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/purchase\_history/collected](#class-editorexportplatformmacos-property-privacy-collected-data-purchase-history-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/purchase\_history/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-purchase-history-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/purchase\_history/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-purchase-history-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/purchase\_history/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-purchase-history-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/search\_hhistory/collected](#class-editorexportplatformmacos-property-privacy-collected-data-search-hhistory-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/search\_hhistory/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-search-hhistory-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/search\_hhistory/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-search-hhistory-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/search\_hhistory/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-search-hhistory-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/sensitive\_info/collected](#class-editorexportplatformmacos-property-privacy-collected-data-sensitive-info-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/sensitive\_info/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-sensitive-info-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/sensitive\_info/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-sensitive-info-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/sensitive\_info/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-sensitive-info-used-for-tracking) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/user\_id/collected](#class-editorexportplatformmacos-property-privacy-collected-data-user-id-collected) |
| [int](class_int.md#class-int) | [privacy/collected\_data/user\_id/collection\_purposes](#class-editorexportplatformmacos-property-privacy-collected-data-user-id-collection-purposes) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/user\_id/linked\_to\_user](#class-editorexportplatformmacos-property-privacy-collected-data-user-id-linked-to-user) |
| [bool](class_bool.md#class-bool) | [privacy/collected\_data/user\_id/used\_for\_tracking](#class-editorexportplatformmacos-property-privacy-collected-data-user-id-used-for-tracking) |
| [String](class_string.md#class-string) | [privacy/desktop\_folder\_usage\_description](#class-editorexportplatformmacos-property-privacy-desktop-folder-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/desktop\_folder\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-desktop-folder-usage-description-localized) |
| [String](class_string.md#class-string) | [privacy/documents\_folder\_usage\_description](#class-editorexportplatformmacos-property-privacy-documents-folder-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/documents\_folder\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-documents-folder-usage-description-localized) |
| [String](class_string.md#class-string) | [privacy/downloads\_folder\_usage\_description](#class-editorexportplatformmacos-property-privacy-downloads-folder-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/downloads\_folder\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-downloads-folder-usage-description-localized) |
| [String](class_string.md#class-string) | [privacy/location\_usage\_description](#class-editorexportplatformmacos-property-privacy-location-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/location\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-location-usage-description-localized) |
| [String](class_string.md#class-string) | [privacy/microphone\_usage\_description](#class-editorexportplatformmacos-property-privacy-microphone-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/microphone\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-microphone-usage-description-localized) |
| [String](class_string.md#class-string) | [privacy/network\_volumes\_usage\_description](#class-editorexportplatformmacos-property-privacy-network-volumes-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/network\_volumes\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-network-volumes-usage-description-localized) |
| [String](class_string.md#class-string) | [privacy/photos\_library\_usage\_description](#class-editorexportplatformmacos-property-privacy-photos-library-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/photos\_library\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-photos-library-usage-description-localized) |
| [String](class_string.md#class-string) | [privacy/removable\_volumes\_usage\_description](#class-editorexportplatformmacos-property-privacy-removable-volumes-usage-description) |
| [Dictionary](class_dictionary.md#class-dictionary) | [privacy/removable\_volumes\_usage\_description\_localized](#class-editorexportplatformmacos-property-privacy-removable-volumes-usage-description-localized) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [privacy/tracking\_domains](#class-editorexportplatformmacos-property-privacy-tracking-domains) |
| [bool](class_bool.md#class-bool) | [privacy/tracking\_enabled](#class-editorexportplatformmacos-property-privacy-tracking-enabled) |
| [bool](class_bool.md#class-bool) | [shader\_baker/enabled](#class-editorexportplatformmacos-property-shader-baker-enabled) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/cleanup\_script](#class-editorexportplatformmacos-property-ssh-remote-deploy-cleanup-script) |
| [bool](class_bool.md#class-bool) | [ssh\_remote\_deploy/enabled](#class-editorexportplatformmacos-property-ssh-remote-deploy-enabled) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/extra\_args\_scp](#class-editorexportplatformmacos-property-ssh-remote-deploy-extra-args-scp) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/extra\_args\_ssh](#class-editorexportplatformmacos-property-ssh-remote-deploy-extra-args-ssh) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/host](#class-editorexportplatformmacos-property-ssh-remote-deploy-host) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/port](#class-editorexportplatformmacos-property-ssh-remote-deploy-port) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/run\_script](#class-editorexportplatformmacos-property-ssh-remote-deploy-run-script) |
| [String](class_string.md#class-string) | [xcode/platform\_build](#class-editorexportplatformmacos-property-xcode-platform-build) |
| [String](class_string.md#class-string) | [xcode/sdk\_build](#class-editorexportplatformmacos-property-xcode-sdk-build) |
| [String](class_string.md#class-string) | [xcode/sdk\_name](#class-editorexportplatformmacos-property-xcode-sdk-name) |
| [String](class_string.md#class-string) | [xcode/sdk\_version](#class-editorexportplatformmacos-property-xcode-sdk-version) |
| [String](class_string.md#class-string) | [xcode/xcode\_build](#class-editorexportplatformmacos-property-xcode-xcode-build) |
| [String](class_string.md#class-string) | [xcode/xcode\_version](#class-editorexportplatformmacos-property-xcode-xcode-version) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **application/additional\_plist\_content** [🔗](#class-editorexportplatformmacos-property-application-additional-plist-content)

Additional data added to the root `<dict>` section of the [Info.plist](https://developer.apple.com/documentation/bundleresources/information_property_list) file. The value should be an XML section with pairs of key-value elements, e.g.:

```
<key>key_name</key>
<string>value</string>

```

* * *

[String](class_string.md#class-string) **application/app\_category** [🔗](#class-editorexportplatformmacos-property-application-app-category)

Application category for the App Store.

* * *

[String](class_string.md#class-string) **application/bundle\_identifier** [🔗](#class-editorexportplatformmacos-property-application-bundle-identifier)

Unique application identifier in a reverse-DNS format, can only contain alphanumeric characters ( `A-Z`, `a-z`, and `0-9`), hyphens ( `-`), and periods ( `.`).

* * *

[String](class_string.md#class-string) **application/copyright** [🔗](#class-editorexportplatformmacos-property-application-copyright)

Copyright notice for the bundle visible to the user (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **application/copyright\_localized** [🔗](#class-editorexportplatformmacos-property-application-copyright-localized)

Copyright notice for the bundle visible to the user (localized).

* * *

[int](class_int.md#class-int) **application/export\_angle** [🔗](#class-editorexportplatformmacos-property-application-export-angle)

If set to `1`, ANGLE libraries are exported with the exported application. If set to `0`, ANGLE libraries are exported only if [ProjectSettings.rendering/gl\_compatibility/driver](class_projectsettings.md#class-projectsettings-property-rendering-gl-compatibility-driver) is set to `"opengl3_angle"`.

* * *

[String](class_string.md#class-string) **application/icon** [🔗](#class-editorexportplatformmacos-property-application-icon)

Application icon file. If left empty, it will fallback to [ProjectSettings.application/config/macos\_native\_icon](class_projectsettings.md#class-projectsettings-property-application-config-macos-native-icon), and then to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon).

* * *

[int](class_int.md#class-int) **application/icon\_interpolation** [🔗](#class-editorexportplatformmacos-property-application-icon-interpolation)

Interpolation method used to resize application icon.

* * *

[String](class_string.md#class-string) **application/min\_macos\_version\_arm64** [🔗](#class-editorexportplatformmacos-property-application-min-macos-version-arm64)

Minimum version of macOS required for this application to run on Apple Silicon Macs, in the `major.minor.patch` or `major.minor` format, can only contain numeric characters ( `0-9`) and periods ( `.`).

* * *

[String](class_string.md#class-string) **application/min\_macos\_version\_x86\_64** [🔗](#class-editorexportplatformmacos-property-application-min-macos-version-x86-64)

Minimum version of macOS required for this application to run on Intel Macs, in the `major.minor.patch` or `major.minor` format, can only contain numeric characters ( `0-9`) and periods ( `.`).

* * *

[String](class_string.md#class-string) **application/short\_version** [🔗](#class-editorexportplatformmacos-property-application-short-version)

Application version visible to the user. Can only contain numeric characters ( `0-9`) and periods ( `.`). Falls back to [ProjectSettings.application/config/version](class_projectsettings.md#class-projectsettings-property-application-config-version) if left empty.

**Note:** This value is used for the _Identity > Version_ value in the generated Xcode project.

* * *

[String](class_string.md#class-string) **application/signature** [🔗](#class-editorexportplatformmacos-property-application-signature)

A four-character creator code that is specific to the bundle. Optional.

* * *

[String](class_string.md#class-string) **application/version** [🔗](#class-editorexportplatformmacos-property-application-version)

Machine-readable application version in the `major.minor.patch` format. Can only contain numeric characters ( `0-9`) and periods ( `.`). This must be incremented with every new release pushed to the App Store. Falls back to [ProjectSettings.application/config/version](class_projectsettings.md#class-projectsettings-property-application-config-version) if left empty.

**Note:** This value is used for the _Identity > Build_ value in the generated Xcode project.

* * *

[String](class_string.md#class-string) **binary\_format/architecture** [🔗](#class-editorexportplatformmacos-property-binary-format-architecture)

Application executable architecture.

Supported architectures: `x86_64`, `arm64`, and `universal` ( `x86_64 + arm64`).

Official export templates include `universal` binaries only.

* * *

[String](class_string.md#class-string) **codesign/apple\_team\_id** [🔗](#class-editorexportplatformmacos-property-codesign-apple-team-id)

Apple Team ID, unique 10-character string. To locate your Team ID check "Membership details" section in your Apple developer account dashboard, or "Organizational Unit" of your code signing certificate. See [Locate your Team ID](https://developer.apple.com/help/account/manage-your-team/locate-your-team-id).

* * *

[String](class_string.md#class-string) **codesign/certificate\_file** [🔗](#class-editorexportplatformmacos-property-codesign-certificate-file)

PKCS #12 certificate file used to sign `.app` bundle.

Can be overridden with the environment variable `GODOT_MACOS_CODESIGN_CERTIFICATE_FILE`.

* * *

[String](class_string.md#class-string) **codesign/certificate\_password** [🔗](#class-editorexportplatformmacos-property-codesign-certificate-password)

Password for the certificate file used to sign `.app` bundle.

Can be overridden with the environment variable `GODOT_MACOS_CODESIGN_CERTIFICATE_PASSWORD`.

* * *

[int](class_int.md#class-int) **codesign/codesign** [🔗](#class-editorexportplatformmacos-property-codesign-codesign)

Tool to use for code signing.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **codesign/custom\_options** [🔗](#class-editorexportplatformmacos-property-codesign-custom-options)

Array of the additional command line arguments passed to the code signing tool.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[String](class_string.md#class-string) **codesign/entitlements/additional** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-additional)

Additional data added to the root `<dict>` section of the [.entitlements](https://developer.apple.com/documentation/bundleresources/entitlements) file. The value should be an XML section with pairs of key-value elements, for example:

```
<key>key_name</key>
<string>value</string>

```

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/address\_book** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-address-book)

Enable to allow access to contacts in the user's address book, if it's enabled you should also provide usage message in the [privacy/address\_book\_usage\_description](#class-editorexportplatformmacos-property-privacy-address-book-usage-description) option. See [com.apple.security.personal-information.addressbook](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_addressbook).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/allow\_dyld\_environment\_variables** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-allow-dyld-environment-variables)

Allows app to use dynamic linker environment variables to inject code. If you are using add-ons with dynamic or self-modifying native code, enable them according to the add-on documentation. See [com.apple.security.cs.allow-dyld-environment-variables](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-dyld-environment-variables).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/allow\_jit\_code\_execution** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-allow-jit-code-execution)

Allows creating writable and executable memory for JIT code. If you are using add-ons with dynamic or self-modifying native code, enable them according to the add-on documentation. See [com.apple.security.cs.allow-jit](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-jit).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/allow\_unsigned\_executable\_memory** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-allow-unsigned-executable-memory)

Allows creating writable and executable memory without JIT restrictions. If you are using add-ons with dynamic or self-modifying native code, enable them according to the add-on documentation. See [com.apple.security.cs.allow-unsigned-executable-memory](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-unsigned-executable-memory).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/app\_sandbox/device\_bluetooth** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-device-bluetooth)

Enable to allow app to interact with Bluetooth devices. This entitlement is required to use wireless controllers. See [com.apple.security.device.bluetooth](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_bluetooth).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/app\_sandbox/device\_usb** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-device-usb)

Enable to allow app to interact with USB devices. This entitlement is required to use wired controllers. See [com.apple.security.device.usb](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_usb).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/app\_sandbox/enabled** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-enabled)

Enables App Sandbox. The App Sandbox restricts access to user data, networking, and devices. Sandboxed apps can't access most of the file system, can't use custom file dialogs and execute binaries outside the .app bundle. See [App Sandbox](https://developer.apple.com/documentation/security/app_sandbox).

**Note:** To distribute an app through the App Store, you must enable the App Sandbox.

* * *

[int](class_int.md#class-int) **codesign/entitlements/app\_sandbox/files\_downloads** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-files-downloads)

Allows read or write access to the user's "Downloads" folder. See [com.apple.security.files.downloads.read-write](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_downloads_read-write).

* * *

[int](class_int.md#class-int) **codesign/entitlements/app\_sandbox/files\_movies** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-files-movies)

Allows read or write access to the user's "Movies" folder. See [com.apple.security.files.movies.read-write](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_movies_read-write).

* * *

[int](class_int.md#class-int) **codesign/entitlements/app\_sandbox/files\_music** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-files-music)

Allows read or write access to the user's "Music" folder. See [com.apple.security.files.music.read-write](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_music_read-write).

* * *

[int](class_int.md#class-int) **codesign/entitlements/app\_sandbox/files\_pictures** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-files-pictures)

Allows read or write access to the user's "Pictures" folder. See [com.apple.security.files.pictures.read-write](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_pictures_read-write).

* * *

[int](class_int.md#class-int) **codesign/entitlements/app\_sandbox/files\_user\_selected** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-files-user-selected)

Allows read or write access to the locations the user has selected using a native file dialog. See [com.apple.security.files.user-selected.read-write](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_user-selected_read-write).

* * *

[Array](class_array.md#class-array) **codesign/entitlements/app\_sandbox/helper\_executables** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-helper-executables)

List of helper executables to embedded to the app bundle. Sandboxed app are limited to execute only these executable. See [Embedding a command-line tool in a sandboxed app](https://developer.apple.com/documentation/xcode/embedding-a-helper-tool-in-a-sandboxed-app).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/app\_sandbox/network\_client** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-network-client)

Enable to allow app to establish outgoing network connections. See [com.apple.security.network.client](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_client).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/app\_sandbox/network\_server** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-app-sandbox-network-server)

Enable to allow app to listen for incoming network connections. See [com.apple.security.network.server](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_server).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/apple\_events** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-apple-events)

Enable to allow app to send Apple events to other apps. See [com.apple.security.automation.apple-events](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_automation_apple-events).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/audio\_input** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-audio-input)

Enable if you need to use the microphone or other audio input sources, if it's enabled you should also provide usage message in the [privacy/microphone\_usage\_description](#class-editorexportplatformmacos-property-privacy-microphone-usage-description) option. See [com.apple.security.device.audio-input](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_audio-input).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/calendars** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-calendars)

Enable to allow access to the user's calendar, if it's enabled you should also provide usage message in the [privacy/calendar\_usage\_description](#class-editorexportplatformmacos-property-privacy-calendar-usage-description) option. See [com.apple.security.personal-information.calendars](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_calendars).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/camera** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-camera)

Enable if you need to use the camera, if it's enabled you should also provide usage message in the [privacy/camera\_usage\_description](#class-editorexportplatformmacos-property-privacy-camera-usage-description) option. See [com.apple.security.device.camera](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_camera).

* * *

[String](class_string.md#class-string) **codesign/entitlements/custom\_file** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-custom-file)

Custom entitlements `.plist` file, if specified the rest of entitlements in the export config are ignored.

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/debugging** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-debugging)

You can temporarily enable this entitlement to use native debugger (GDB, LLDB) with the exported app. This entitlement should be disabled for production export. See [Embedding a command-line tool in a sandboxed app](https://developer.apple.com/documentation/xcode/embedding-a-helper-tool-in-a-sandboxed-app).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/disable\_library\_validation** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-disable-library-validation)

Allows app to load arbitrary libraries and frameworks (not signed with the same Team ID as the main executable or by Apple). Enable it if you are using GDExtension add-ons or ad-hoc signing, or want to support user-provided external add-ons. See [com.apple.security.cs.disable-library-validation](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_disable-library-validation).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/location** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-location)

Enable if you need to use location information from Location Services, if it's enabled you should also provide usage message in the [privacy/location\_usage\_description](#class-editorexportplatformmacos-property-privacy-location-usage-description) option. See [com.apple.security.personal-information.location](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_location).

* * *

[bool](class_bool.md#class-bool) **codesign/entitlements/photos\_library** [🔗](#class-editorexportplatformmacos-property-codesign-entitlements-photos-library)

Enable to allow access to the user's Photos library, if it's enabled you should also provide usage message in the [privacy/photos\_library\_usage\_description](#class-editorexportplatformmacos-property-privacy-photos-library-usage-description) option. See [com.apple.security.personal-information.photos-library](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_photos-library).

* * *

[String](class_string.md#class-string) **codesign/identity** [🔗](#class-editorexportplatformmacos-property-codesign-identity)

The "Full Name", "Common Name" or SHA-1 hash of the signing identity used to sign `.app` bundle.

* * *

[String](class_string.md#class-string) **codesign/installer\_identity** [🔗](#class-editorexportplatformmacos-property-codesign-installer-identity)

The "Full Name", "Common Name" or SHA-1 hash of the signing identity used to sign `.pkg` installer package for App Store distribution, use `3rd Party Mac Developer Installer: Name.` identity.

* * *

[String](class_string.md#class-string) **codesign/provisioning\_profile** [🔗](#class-editorexportplatformmacos-property-codesign-provisioning-profile)

Provisioning profile file downloaded from Apple developer account dashboard. See [Edit, download, or delete provisioning profiles](https://developer.apple.com/help/account/manage-profiles/edit-download-or-delete-profiles).

Can be overridden with the environment variable `GODOT_MACOS_CODESIGN_PROVISIONING_PROFILE`.

* * *

[String](class_string.md#class-string) **custom\_template/debug** [🔗](#class-editorexportplatformmacos-property-custom-template-debug)

Path to the custom export template. If left empty, default template is used.

* * *

[String](class_string.md#class-string) **custom\_template/release** [🔗](#class-editorexportplatformmacos-property-custom-template-release)

Path to the custom export template. If left empty, default template is used.

* * *

[int](class_int.md#class-int) **debug/export\_console\_wrapper** [🔗](#class-editorexportplatformmacos-property-debug-export-console-wrapper)

If enabled, a wrapper that can be used to run the application with console output is created alongside the exported application.

* * *

[bool](class_bool.md#class-bool) **display/high\_res** [🔗](#class-editorexportplatformmacos-property-display-high-res)

If `true`, the application is rendered at native display resolution, otherwise it is always rendered at loDPI resolution and upscaled by OS when required.

* * *

[int](class_int.md#class-int) **export/distribution\_type** [🔗](#class-editorexportplatformmacos-property-export-distribution-type)

Application distribution target.

* * *

[String](class_string.md#class-string) **notarization/api\_key** [🔗](#class-editorexportplatformmacos-property-notarization-api-key)

Apple App Store Connect API issuer key file.

Can be overridden with the environment variable `GODOT_MACOS_NOTARIZATION_API_KEY`.

* * *

[String](class_string.md#class-string) **notarization/api\_key\_id** [🔗](#class-editorexportplatformmacos-property-notarization-api-key-id)

Apple App Store Connect API issuer key ID.

Can be overridden with the environment variable `GODOT_MACOS_NOTARIZATION_API_KEY_ID`.

* * *

[String](class_string.md#class-string) **notarization/api\_uuid** [🔗](#class-editorexportplatformmacos-property-notarization-api-uuid)

Apple App Store Connect API issuer UUID.

Can be overridden with the environment variable `GODOT_MACOS_NOTARIZATION_API_UUID`.

* * *

[String](class_string.md#class-string) **notarization/apple\_id\_name** [🔗](#class-editorexportplatformmacos-property-notarization-apple-id-name)

Apple ID account name (email address).

Can be overridden with the environment variable `GODOT_MACOS_NOTARIZATION_APPLE_ID_NAME`.

* * *

[String](class_string.md#class-string) **notarization/apple\_id\_password** [🔗](#class-editorexportplatformmacos-property-notarization-apple-id-password)

Apple ID app-specific password.

Can be overridden with the environment variable `GODOT_MACOS_NOTARIZATION_APPLE_ID_PASSWORD`.

* * *

[int](class_int.md#class-int) **notarization/notarization** [🔗](#class-editorexportplatformmacos-property-notarization-notarization)

Tool to use for notarization.

* * *

[String](class_string.md#class-string) **privacy/address\_book\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-address-book-usage-description)

A message displayed when requesting access to the user's contacts (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/address\_book\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-address-book-usage-description-localized)

A message displayed when requesting access to the user's contacts (localized).

* * *

[String](class_string.md#class-string) **privacy/calendar\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-calendar-usage-description)

A message displayed when requesting access to the user's calendar data (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/calendar\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-calendar-usage-description-localized)

A message displayed when requesting access to the user's calendar data (localized).

* * *

[String](class_string.md#class-string) **privacy/camera\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-camera-usage-description)

A message displayed when requesting access to the device's camera (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/camera\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-camera-usage-description-localized)

A message displayed when requesting access to the device's camera (localized).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/advertising\_data/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-advertising-data-collected)

Indicates whether your app collects advertising data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/advertising\_data/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-advertising-data-collection-purposes)

The reasons your app collects advertising data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/advertising\_data/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-advertising-data-linked-to-user)

Indicates whether your app links advertising data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/advertising\_data/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-advertising-data-used-for-tracking)

Indicates whether your app uses advertising data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/audio\_data/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-audio-data-collected)

Indicates whether your app collects audio data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/audio\_data/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-audio-data-collection-purposes)

The reasons your app collects audio data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/audio\_data/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-audio-data-linked-to-user)

Indicates whether your app links audio data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/audio\_data/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-audio-data-used-for-tracking)

Indicates whether your app uses audio data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/browsing\_history/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-browsing-history-collected)

Indicates whether your app collects browsing history.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/browsing\_history/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-browsing-history-collection-purposes)

The reasons your app collects browsing history. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/browsing\_history/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-browsing-history-linked-to-user)

Indicates whether your app links browsing history to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/browsing\_history/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-browsing-history-used-for-tracking)

Indicates whether your app uses browsing history for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/coarse\_location/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-coarse-location-collected)

Indicates whether your app collects coarse location data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/coarse\_location/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-coarse-location-collection-purposes)

The reasons your app collects coarse location data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/coarse\_location/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-coarse-location-linked-to-user)

Indicates whether your app links coarse location data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/coarse\_location/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-coarse-location-used-for-tracking)

Indicates whether your app uses coarse location data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/contacts/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-contacts-collected)

Indicates whether your app collects contacts.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/contacts/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-contacts-collection-purposes)

The reasons your app collects contacts. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/contacts/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-contacts-linked-to-user)

Indicates whether your app links contacts to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/contacts/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-contacts-used-for-tracking)

Indicates whether your app uses contacts for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/crash\_data/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-crash-data-collected)

Indicates whether your app collects crash data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/crash\_data/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-crash-data-collection-purposes)

The reasons your app collects crash data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/crash\_data/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-crash-data-linked-to-user)

Indicates whether your app links crash data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/crash\_data/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-crash-data-used-for-tracking)

Indicates whether your app uses crash data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/credit\_info/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-credit-info-collected)

Indicates whether your app collects credit information.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/credit\_info/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-credit-info-collection-purposes)

The reasons your app collects credit information. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/credit\_info/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-credit-info-linked-to-user)

Indicates whether your app links credit information to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/credit\_info/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-credit-info-used-for-tracking)

Indicates whether your app uses credit information for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/customer\_support/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-customer-support-collected)

Indicates whether your app collects customer support data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/customer\_support/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-customer-support-collection-purposes)

The reasons your app collects customer support data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/customer\_support/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-customer-support-linked-to-user)

Indicates whether your app links customer support data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/customer\_support/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-customer-support-used-for-tracking)

Indicates whether your app uses customer support data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/device\_id/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-device-id-collected)

Indicates whether your app collects device IDs.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/device\_id/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-device-id-collection-purposes)

The reasons your app collects device IDs. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/device\_id/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-device-id-linked-to-user)

Indicates whether your app links device IDs to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/device\_id/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-device-id-used-for-tracking)

Indicates whether your app uses device IDs for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/email\_address/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-email-address-collected)

Indicates whether your app collects email address.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/email\_address/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-email-address-collection-purposes)

The reasons your app collects email address. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/email\_address/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-email-address-linked-to-user)

Indicates whether your app links email address to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/email\_address/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-email-address-used-for-tracking)

Indicates whether your app uses email address for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/emails\_or\_text\_messages/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-emails-or-text-messages-collected)

Indicates whether your app collects emails or text messages.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/emails\_or\_text\_messages/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-emails-or-text-messages-collection-purposes)

The reasons your app collects emails or text messages. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/emails\_or\_text\_messages/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-emails-or-text-messages-linked-to-user)

Indicates whether your app links emails or text messages to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/emails\_or\_text\_messages/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-emails-or-text-messages-used-for-tracking)

Indicates whether your app uses emails or text messages for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/environment\_scanning/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-environment-scanning-collected)

Indicates whether your app collects environment scanning data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/environment\_scanning/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-environment-scanning-collection-purposes)

The reasons your app collects environment scanning data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/environment\_scanning/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-environment-scanning-linked-to-user)

Indicates whether your app links environment scanning data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/environment\_scanning/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-environment-scanning-used-for-tracking)

Indicates whether your app uses environment scanning data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/fitness/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-fitness-collected)

Indicates whether your app collects fitness and exercise data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/fitness/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-fitness-collection-purposes)

The reasons your app collects fitness and exercise data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/fitness/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-fitness-linked-to-user)

Indicates whether your app links fitness and exercise data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/fitness/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-fitness-used-for-tracking)

Indicates whether your app uses fitness and exercise data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/gameplay\_content/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-gameplay-content-collected)

Indicates whether your app collects gameplay content.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/gameplay\_content/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-gameplay-content-collection-purposes)

The reasons your app collects gameplay content. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/gameplay\_content/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-gameplay-content-linked-to-user)

Indicates whether your app links gameplay content to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/gameplay\_content/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-gameplay-content-used-for-tracking)

Indicates whether your app uses gameplay content for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/hands/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-hands-collected)

Indicates whether your app collects user's hand structure and hand movements.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/hands/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-hands-collection-purposes)

The reasons your app collects user's hand structure and hand movements. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/hands/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-hands-linked-to-user)

Indicates whether your app links user's hand structure and hand movements to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/hands/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-hands-used-for-tracking)

Indicates whether your app uses user's hand structure and hand movements for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/head/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-head-collected)

Indicates whether your app collects user's head movement.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/head/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-head-collection-purposes)

The reasons your app collects user's head movement. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/head/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-head-linked-to-user)

Indicates whether your app links user's head movement to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/head/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-head-used-for-tracking)

Indicates whether your app uses user's head movement for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/health/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-health-collected)

Indicates whether your app collects health and medical data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/health/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-health-collection-purposes)

The reasons your app collects health and medical data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/health/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-health-linked-to-user)

Indicates whether your app links health and medical data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/health/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-health-used-for-tracking)

Indicates whether your app uses health and medical data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/name/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-name-collected)

Indicates whether your app collects user's name.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/name/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-name-collection-purposes)

The reasons your app collects user's name. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/name/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-name-linked-to-user)

Indicates whether your app links user's name to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/name/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-name-used-for-tracking)

Indicates whether your app uses user's name for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_contact\_info/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-contact-info-collected)

Indicates whether your app collects any other contact information.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_contact\_info/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-contact-info-collection-purposes)

The reasons your app collects any other contact information. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_contact\_info/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-contact-info-linked-to-user)

Indicates whether your app links any other contact information to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_contact\_info/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-contact-info-used-for-tracking)

Indicates whether your app uses any other contact information for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_data\_types/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-data-types-collected)

Indicates whether your app collects any other data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_data\_types/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-data-types-collection-purposes)

The reasons your app collects any other data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_data\_types/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-data-types-linked-to-user)

Indicates whether your app links any other data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_data\_types/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-data-types-used-for-tracking)

Indicates whether your app uses any other data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_diagnostic\_data/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-diagnostic-data-collected)

Indicates whether your app collects any other diagnostic data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_diagnostic\_data/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-diagnostic-data-collection-purposes)

The reasons your app collects any other diagnostic data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_diagnostic\_data/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-diagnostic-data-linked-to-user)

Indicates whether your app links any other diagnostic data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_diagnostic\_data/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-diagnostic-data-used-for-tracking)

Indicates whether your app uses any other diagnostic data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_financial\_info/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-financial-info-collected)

Indicates whether your app collects any other financial information.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_financial\_info/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-financial-info-collection-purposes)

The reasons your app collects any other financial information. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_financial\_info/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-financial-info-linked-to-user)

Indicates whether your app links any other financial information to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_financial\_info/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-financial-info-used-for-tracking)

Indicates whether your app uses any other financial information for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_usage\_data/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-usage-data-collected)

Indicates whether your app collects any other usage data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_usage\_data/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-usage-data-collection-purposes)

The reasons your app collects any other usage data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_usage\_data/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-usage-data-linked-to-user)

Indicates whether your app links any other usage data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_usage\_data/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-usage-data-used-for-tracking)

Indicates whether your app uses any other usage data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_user\_content/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-user-content-collected)

Indicates whether your app collects any other user generated content.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/other\_user\_content/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-user-content-collection-purposes)

The reasons your app collects any other user generated content. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_user\_content/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-user-content-linked-to-user)

Indicates whether your app links any other user generated content to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/other\_user\_content/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-other-user-content-used-for-tracking)

Indicates whether your app uses any other user generated content for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/payment\_info/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-payment-info-collected)

Indicates whether your app collects payment information.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/payment\_info/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-payment-info-collection-purposes)

The reasons your app collects payment information. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/payment\_info/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-payment-info-linked-to-user)

Indicates whether your app links payment information to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/payment\_info/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-payment-info-used-for-tracking)

Indicates whether your app uses payment information for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/performance\_data/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-performance-data-collected)

Indicates whether your app collects performance data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/performance\_data/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-performance-data-collection-purposes)

The reasons your app collects performance data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/performance\_data/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-performance-data-linked-to-user)

Indicates whether your app links performance data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/performance\_data/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-performance-data-used-for-tracking)

Indicates whether your app uses performance data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/phone\_number/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-phone-number-collected)

Indicates whether your app collects phone number.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/phone\_number/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-phone-number-collection-purposes)

The reasons your app collects phone number. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/phone\_number/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-phone-number-linked-to-user)

Indicates whether your app links phone number to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/phone\_number/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-phone-number-used-for-tracking)

Indicates whether your app uses phone number for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/photos\_or\_videos/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-photos-or-videos-collected)

Indicates whether your app collects photos or videos.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/photos\_or\_videos/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-photos-or-videos-collection-purposes)

The reasons your app collects photos or videos. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/photos\_or\_videos/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-photos-or-videos-linked-to-user)

Indicates whether your app links photos or videos to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/photos\_or\_videos/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-photos-or-videos-used-for-tracking)

Indicates whether your app uses photos or videos for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/physical\_address/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-physical-address-collected)

Indicates whether your app collects physical address.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/physical\_address/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-physical-address-collection-purposes)

The reasons your app collects physical address. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/physical\_address/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-physical-address-linked-to-user)

Indicates whether your app links physical address to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/physical\_address/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-physical-address-used-for-tracking)

Indicates whether your app uses physical address for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/precise\_location/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-precise-location-collected)

Indicates whether your app collects precise location data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/precise\_location/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-precise-location-collection-purposes)

The reasons your app collects precise location data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/precise\_location/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-precise-location-linked-to-user)

Indicates whether your app links precise location data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/precise\_location/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-precise-location-used-for-tracking)

Indicates whether your app uses precise location data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/product\_interaction/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-product-interaction-collected)

Indicates whether your app collects product interaction data.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/product\_interaction/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-product-interaction-collection-purposes)

The reasons your app collects product interaction data. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/product\_interaction/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-product-interaction-linked-to-user)

Indicates whether your app links product interaction data to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/product\_interaction/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-product-interaction-used-for-tracking)

Indicates whether your app uses product interaction data for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/purchase\_history/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-purchase-history-collected)

Indicates whether your app collects purchase history.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/purchase\_history/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-purchase-history-collection-purposes)

The reasons your app collects purchase history. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/purchase\_history/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-purchase-history-linked-to-user)

Indicates whether your app links purchase history to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/purchase\_history/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-purchase-history-used-for-tracking)

Indicates whether your app uses purchase history for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/search\_hhistory/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-search-hhistory-collected)

Indicates whether your app collects search history.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/search\_hhistory/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-search-hhistory-collection-purposes)

The reasons your app collects search history. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/search\_hhistory/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-search-hhistory-linked-to-user)

Indicates whether your app links search history to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/search\_hhistory/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-search-hhistory-used-for-tracking)

Indicates whether your app uses search history for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/sensitive\_info/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-sensitive-info-collected)

Indicates whether your app collects sensitive user information.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/sensitive\_info/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-sensitive-info-collection-purposes)

The reasons your app collects sensitive user information. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/sensitive\_info/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-sensitive-info-linked-to-user)

Indicates whether your app links sensitive user information to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/sensitive\_info/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-sensitive-info-used-for-tracking)

Indicates whether your app uses sensitive user information for tracking.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/user\_id/collected** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-user-id-collected)

Indicates whether your app collects user IDs.

* * *

[int](class_int.md#class-int) **privacy/collected\_data/user\_id/collection\_purposes** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-user-id-collection-purposes)

The reasons your app collects user IDs. See [Describing data use in privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests).

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/user\_id/linked\_to\_user** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-user-id-linked-to-user)

Indicates whether your app links user IDs to the user's identity.

* * *

[bool](class_bool.md#class-bool) **privacy/collected\_data/user\_id/used\_for\_tracking** [🔗](#class-editorexportplatformmacos-property-privacy-collected-data-user-id-used-for-tracking)

Indicates whether your app uses user IDs for tracking.

* * *

[String](class_string.md#class-string) **privacy/desktop\_folder\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-desktop-folder-usage-description)

A message displayed when requesting access to the user's "Desktop" folder (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/desktop\_folder\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-desktop-folder-usage-description-localized)

A message displayed when requesting access to the user's "Desktop" folder (localized).

* * *

[String](class_string.md#class-string) **privacy/documents\_folder\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-documents-folder-usage-description)

A message displayed when requesting access to the user's "Documents" folder (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/documents\_folder\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-documents-folder-usage-description-localized)

A message displayed when requesting access to the user's "Documents" folder (localized).

* * *

[String](class_string.md#class-string) **privacy/downloads\_folder\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-downloads-folder-usage-description)

A message displayed when requesting access to the user's "Downloads" folder (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/downloads\_folder\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-downloads-folder-usage-description-localized)

A message displayed when requesting access to the user's "Downloads" folder (localized).

* * *

[String](class_string.md#class-string) **privacy/location\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-location-usage-description)

A message displayed when requesting access to the user's location information (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/location\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-location-usage-description-localized)

A message displayed when requesting access to the user's location information (localized).

* * *

[String](class_string.md#class-string) **privacy/microphone\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-microphone-usage-description)

A message displayed when requesting access to the device's microphone (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/microphone\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-microphone-usage-description-localized)

A message displayed when requesting access to the device's microphone (localized).

* * *

[String](class_string.md#class-string) **privacy/network\_volumes\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-network-volumes-usage-description)

A message displayed when requesting access to the user's network drives (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/network\_volumes\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-network-volumes-usage-description-localized)

A message displayed when requesting access to the user's network drives (localized).

* * *

[String](class_string.md#class-string) **privacy/photos\_library\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-photos-library-usage-description)

A message displayed when requesting access to the user's photo library (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/photos\_library\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-photos-library-usage-description-localized)

A message displayed when requesting access to the user's photo library (localized).

* * *

[String](class_string.md#class-string) **privacy/removable\_volumes\_usage\_description** [🔗](#class-editorexportplatformmacos-property-privacy-removable-volumes-usage-description)

A message displayed when requesting access to the user's removable drives (in English).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **privacy/removable\_volumes\_usage\_description\_localized** [🔗](#class-editorexportplatformmacos-property-privacy-removable-volumes-usage-description-localized)

A message displayed when requesting access to the user's removable drives (localized).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **privacy/tracking\_domains** [🔗](#class-editorexportplatformmacos-property-privacy-tracking-domains)

The list of internet domains your app connects to that engage in tracking. See [Privacy manifest files](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[bool](class_bool.md#class-bool) **privacy/tracking\_enabled** [🔗](#class-editorexportplatformmacos-property-privacy-tracking-enabled)

Indicates whether your app uses data for tracking. See [Privacy manifest files](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files).

* * *

[bool](class_bool.md#class-bool) **shader\_baker/enabled** [🔗](#class-editorexportplatformmacos-property-shader-baker-enabled)

If `true`, shaders will be compiled and embedded in the application. This option is only supported when using the Forward+ or Mobile renderers.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/cleanup\_script** [🔗](#class-editorexportplatformmacos-property-ssh-remote-deploy-cleanup-script)

Script code to execute on the remote host when app is finished.

The following variables can be used in the script:

- `{temp_dir}` \- Path of temporary folder on the remote, used to upload app and scripts to.

- `{archive_name}` \- Name of the ZIP containing uploaded application.

- `{exe_name}` \- Name of application executable.

- `{cmd_args}` \- Array of the command line argument for the application.


* * *

[bool](class_bool.md#class-bool) **ssh\_remote\_deploy/enabled** [🔗](#class-editorexportplatformmacos-property-ssh-remote-deploy-enabled)

Enables remote deploy using SSH/SCP.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/extra\_args\_scp** [🔗](#class-editorexportplatformmacos-property-ssh-remote-deploy-extra-args-scp)

Array of the additional command line arguments passed to the SCP.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/extra\_args\_ssh** [🔗](#class-editorexportplatformmacos-property-ssh-remote-deploy-extra-args-ssh)

Array of the additional command line arguments passed to the SSH.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/host** [🔗](#class-editorexportplatformmacos-property-ssh-remote-deploy-host)

Remote host SSH user name and address, in `user@address` format.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/port** [🔗](#class-editorexportplatformmacos-property-ssh-remote-deploy-port)

Remote host SSH port number.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/run\_script** [🔗](#class-editorexportplatformmacos-property-ssh-remote-deploy-run-script)

Script code to execute on the remote host when running the app.

The following variables can be used in the script:

- `{temp_dir}` \- Path of temporary folder on the remote, used to upload app and scripts to.

- `{archive_name}` \- Name of the ZIP containing uploaded application.

- `{exe_name}` \- Name of application executable.

- `{cmd_args}` \- Array of the command line argument for the application.


* * *

[String](class_string.md#class-string) **xcode/platform\_build** [🔗](#class-editorexportplatformmacos-property-xcode-platform-build)

macOS build number used to build application executable.

* * *

[String](class_string.md#class-string) **xcode/sdk\_build** [🔗](#class-editorexportplatformmacos-property-xcode-sdk-build)

macOS SDK build number used to build application executable.

* * *

[String](class_string.md#class-string) **xcode/sdk\_name** [🔗](#class-editorexportplatformmacos-property-xcode-sdk-name)

macOS SDK name used to build application executable.

* * *

[String](class_string.md#class-string) **xcode/sdk\_version** [🔗](#class-editorexportplatformmacos-property-xcode-sdk-version)

macOS SDK version used to build application executable in the `major.minor` format.

* * *

[String](class_string.md#class-string) **xcode/xcode\_build** [🔗](#class-editorexportplatformmacos-property-xcode-xcode-build)

Xcode build number used to build application executable.

* * *

[String](class_string.md#class-string) **xcode/xcode\_version** [🔗](#class-editorexportplatformmacos-property-xcode-xcode-version)

Xcode version used to build application executable.

[Previous](class_editorexportplatformlinuxbsd.md "EditorExportPlatformLinuxBSD") [Next](class_editorexportplatformpc.md "EditorExportPlatformPC")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorexportplatformlinuxbsd.md "EditorExportPlatformLinuxBSD") [Next](class_editorexportplatformpc.md "EditorExportPlatformPC")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).