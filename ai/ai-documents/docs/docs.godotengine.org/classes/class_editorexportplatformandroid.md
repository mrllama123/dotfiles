---
title: EditorExportPlatformAndroid — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorexportplatformandroid.html
crawled_at: "2026-08-13T10:40:22+12:00"
content_hash: e86899595c76345b07dfcb77916146401b3c5064d4121c799159b6ae3c84ea6f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorExportPlatformAndroid

* * *

# EditorExportPlatformAndroid

**Inherits:** [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Exporter for Android.

## Tutorials

- [Exporting for Android](../tutorials/export/exporting_for_android.md)

- [Gradle builds for Android](../tutorials/export/android_gradle_build.md)

- [Android plugins documentation index](../tutorials/platform/index.md)


## Properties

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [apk\_expansion/SALT](#class-editorexportplatformandroid-property-apk-expansion-salt) |
| [bool](class_bool.md#class-bool) | [apk\_expansion/enable](#class-editorexportplatformandroid-property-apk-expansion-enable) |
| [String](class_string.md#class-string) | [apk\_expansion/public\_key](#class-editorexportplatformandroid-property-apk-expansion-public-key) |
| [bool](class_bool.md#class-bool) | [architectures/arm64-v8a](#class-editorexportplatformandroid-property-architectures-arm64-v8a) |
| [bool](class_bool.md#class-bool) | [architectures/armeabi-v7a](#class-editorexportplatformandroid-property-architectures-armeabi-v7a) |
| [bool](class_bool.md#class-bool) | [architectures/x86](#class-editorexportplatformandroid-property-architectures-x86) |
| [bool](class_bool.md#class-bool) | [architectures/x86\_64](#class-editorexportplatformandroid-property-architectures-x86-64) |
| [String](class_string.md#class-string) | [command\_line/extra\_args](#class-editorexportplatformandroid-property-command-line-extra-args) |
| [String](class_string.md#class-string) | [custom\_template/debug](#class-editorexportplatformandroid-property-custom-template-debug) |
| [String](class_string.md#class-string) | [custom\_template/release](#class-editorexportplatformandroid-property-custom-template-release) |
| [bool](class_bool.md#class-bool) | [gesture/swipe\_to\_dismiss](#class-editorexportplatformandroid-property-gesture-swipe-to-dismiss) |
| [String](class_string.md#class-string) | [gradle\_build/android\_source\_template](#class-editorexportplatformandroid-property-gradle-build-android-source-template) |
| [bool](class_bool.md#class-bool) | [gradle\_build/compress\_native\_libraries](#class-editorexportplatformandroid-property-gradle-build-compress-native-libraries) |
| [Dictionary](class_dictionary.md#class-dictionary) | [gradle\_build/custom\_theme\_attributes](#class-editorexportplatformandroid-property-gradle-build-custom-theme-attributes) |
| [int](class_int.md#class-int) | [gradle\_build/export\_format](#class-editorexportplatformandroid-property-gradle-build-export-format) |
| [String](class_string.md#class-string) | [gradle\_build/gradle\_build\_directory](#class-editorexportplatformandroid-property-gradle-build-gradle-build-directory) |
| [String](class_string.md#class-string) | [gradle\_build/min\_sdk](#class-editorexportplatformandroid-property-gradle-build-min-sdk) |
| [String](class_string.md#class-string) | [gradle\_build/target\_sdk](#class-editorexportplatformandroid-property-gradle-build-target-sdk) |
| [bool](class_bool.md#class-bool) | [gradle\_build/use\_gradle\_build](#class-editorexportplatformandroid-property-gradle-build-use-gradle-build) |
| [bool](class_bool.md#class-bool) | [graphics/opengl\_debug](#class-editorexportplatformandroid-property-graphics-opengl-debug) |
| [String](class_string.md#class-string) | [keystore/debug](#class-editorexportplatformandroid-property-keystore-debug) |
| [String](class_string.md#class-string) | [keystore/debug\_password](#class-editorexportplatformandroid-property-keystore-debug-password) |
| [String](class_string.md#class-string) | [keystore/debug\_user](#class-editorexportplatformandroid-property-keystore-debug-user) |
| [String](class_string.md#class-string) | [keystore/release](#class-editorexportplatformandroid-property-keystore-release) |
| [String](class_string.md#class-string) | [keystore/release\_password](#class-editorexportplatformandroid-property-keystore-release-password) |
| [String](class_string.md#class-string) | [keystore/release\_user](#class-editorexportplatformandroid-property-keystore-release-user) |
| [String](class_string.md#class-string) | [launcher\_icons/adaptive\_background\_432x432](#class-editorexportplatformandroid-property-launcher-icons-adaptive-background-432x432) |
| [String](class_string.md#class-string) | [launcher\_icons/adaptive\_foreground\_432x432](#class-editorexportplatformandroid-property-launcher-icons-adaptive-foreground-432x432) |
| [String](class_string.md#class-string) | [launcher\_icons/adaptive\_monochrome\_432x432](#class-editorexportplatformandroid-property-launcher-icons-adaptive-monochrome-432x432) |
| [String](class_string.md#class-string) | [launcher\_icons/main\_192x192](#class-editorexportplatformandroid-property-launcher-icons-main-192x192) |
| [int](class_int.md#class-int) | [package/app\_category](#class-editorexportplatformandroid-property-package-app-category) |
| [bool](class_bool.md#class-bool) | [package/exclude\_from\_recents](#class-editorexportplatformandroid-property-package-exclude-from-recents) |
| [String](class_string.md#class-string) | [package/name](#class-editorexportplatformandroid-property-package-name) |
| [bool](class_bool.md#class-bool) | [package/retain\_data\_on\_uninstall](#class-editorexportplatformandroid-property-package-retain-data-on-uninstall) |
| [bool](class_bool.md#class-bool) | [package/show\_as\_launcher\_app](#class-editorexportplatformandroid-property-package-show-as-launcher-app) |
| [bool](class_bool.md#class-bool) | [package/show\_in\_android\_tv](#class-editorexportplatformandroid-property-package-show-in-android-tv) |
| [bool](class_bool.md#class-bool) | [package/show\_in\_app\_library](#class-editorexportplatformandroid-property-package-show-in-app-library) |
| [bool](class_bool.md#class-bool) | [package/signed](#class-editorexportplatformandroid-property-package-signed) |
| [String](class_string.md#class-string) | [package/unique\_name](#class-editorexportplatformandroid-property-package-unique-name) |
| [bool](class_bool.md#class-bool) | [permissions/access\_checkin\_properties](#class-editorexportplatformandroid-property-permissions-access-checkin-properties) |
| [bool](class_bool.md#class-bool) | [permissions/access\_coarse\_location](#class-editorexportplatformandroid-property-permissions-access-coarse-location) |
| [bool](class_bool.md#class-bool) | [permissions/access\_fine\_location](#class-editorexportplatformandroid-property-permissions-access-fine-location) |
| [bool](class_bool.md#class-bool) | [permissions/access\_location\_extra\_commands](#class-editorexportplatformandroid-property-permissions-access-location-extra-commands) |
| [bool](class_bool.md#class-bool) | [permissions/access\_media\_location](#class-editorexportplatformandroid-property-permissions-access-media-location) |
| [bool](class_bool.md#class-bool) | [permissions/access\_mock\_location](#class-editorexportplatformandroid-property-permissions-access-mock-location) |
| [bool](class_bool.md#class-bool) | [permissions/access\_network\_state](#class-editorexportplatformandroid-property-permissions-access-network-state) |
| [bool](class_bool.md#class-bool) | [permissions/access\_surface\_flinger](#class-editorexportplatformandroid-property-permissions-access-surface-flinger) |
| [bool](class_bool.md#class-bool) | [permissions/access\_wifi\_state](#class-editorexportplatformandroid-property-permissions-access-wifi-state) |
| [bool](class_bool.md#class-bool) | [permissions/account\_manager](#class-editorexportplatformandroid-property-permissions-account-manager) |
| [bool](class_bool.md#class-bool) | [permissions/add\_voicemail](#class-editorexportplatformandroid-property-permissions-add-voicemail) |
| [bool](class_bool.md#class-bool) | [permissions/authenticate\_accounts](#class-editorexportplatformandroid-property-permissions-authenticate-accounts) |
| [bool](class_bool.md#class-bool) | [permissions/battery\_stats](#class-editorexportplatformandroid-property-permissions-battery-stats) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_accessibility\_service](#class-editorexportplatformandroid-property-permissions-bind-accessibility-service) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_appwidget](#class-editorexportplatformandroid-property-permissions-bind-appwidget) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_device\_admin](#class-editorexportplatformandroid-property-permissions-bind-device-admin) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_input\_method](#class-editorexportplatformandroid-property-permissions-bind-input-method) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_nfc\_service](#class-editorexportplatformandroid-property-permissions-bind-nfc-service) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_notification\_listener\_service](#class-editorexportplatformandroid-property-permissions-bind-notification-listener-service) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_print\_service](#class-editorexportplatformandroid-property-permissions-bind-print-service) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_remoteviews](#class-editorexportplatformandroid-property-permissions-bind-remoteviews) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_text\_service](#class-editorexportplatformandroid-property-permissions-bind-text-service) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_vpn\_service](#class-editorexportplatformandroid-property-permissions-bind-vpn-service) |
| [bool](class_bool.md#class-bool) | [permissions/bind\_wallpaper](#class-editorexportplatformandroid-property-permissions-bind-wallpaper) |
| [bool](class_bool.md#class-bool) | [permissions/bluetooth](#class-editorexportplatformandroid-property-permissions-bluetooth) |
| [bool](class_bool.md#class-bool) | [permissions/bluetooth\_admin](#class-editorexportplatformandroid-property-permissions-bluetooth-admin) |
| [bool](class_bool.md#class-bool) | [permissions/bluetooth\_privileged](#class-editorexportplatformandroid-property-permissions-bluetooth-privileged) |
| [bool](class_bool.md#class-bool) | [permissions/brick](#class-editorexportplatformandroid-property-permissions-brick) |
| [bool](class_bool.md#class-bool) | [permissions/broadcast\_package\_removed](#class-editorexportplatformandroid-property-permissions-broadcast-package-removed) |
| [bool](class_bool.md#class-bool) | [permissions/broadcast\_sms](#class-editorexportplatformandroid-property-permissions-broadcast-sms) |
| [bool](class_bool.md#class-bool) | [permissions/broadcast\_sticky](#class-editorexportplatformandroid-property-permissions-broadcast-sticky) |
| [bool](class_bool.md#class-bool) | [permissions/broadcast\_wap\_push](#class-editorexportplatformandroid-property-permissions-broadcast-wap-push) |
| [bool](class_bool.md#class-bool) | [permissions/call\_phone](#class-editorexportplatformandroid-property-permissions-call-phone) |
| [bool](class_bool.md#class-bool) | [permissions/call\_privileged](#class-editorexportplatformandroid-property-permissions-call-privileged) |
| [bool](class_bool.md#class-bool) | [permissions/camera](#class-editorexportplatformandroid-property-permissions-camera) |
| [bool](class_bool.md#class-bool) | [permissions/capture\_audio\_output](#class-editorexportplatformandroid-property-permissions-capture-audio-output) |
| [bool](class_bool.md#class-bool) | [permissions/capture\_secure\_video\_output](#class-editorexportplatformandroid-property-permissions-capture-secure-video-output) |
| [bool](class_bool.md#class-bool) | [permissions/capture\_video\_output](#class-editorexportplatformandroid-property-permissions-capture-video-output) |
| [bool](class_bool.md#class-bool) | [permissions/change\_component\_enabled\_state](#class-editorexportplatformandroid-property-permissions-change-component-enabled-state) |
| [bool](class_bool.md#class-bool) | [permissions/change\_configuration](#class-editorexportplatformandroid-property-permissions-change-configuration) |
| [bool](class_bool.md#class-bool) | [permissions/change\_network\_state](#class-editorexportplatformandroid-property-permissions-change-network-state) |
| [bool](class_bool.md#class-bool) | [permissions/change\_wifi\_multicast\_state](#class-editorexportplatformandroid-property-permissions-change-wifi-multicast-state) |
| [bool](class_bool.md#class-bool) | [permissions/change\_wifi\_state](#class-editorexportplatformandroid-property-permissions-change-wifi-state) |
| [bool](class_bool.md#class-bool) | [permissions/clear\_app\_cache](#class-editorexportplatformandroid-property-permissions-clear-app-cache) |
| [bool](class_bool.md#class-bool) | [permissions/clear\_app\_user\_data](#class-editorexportplatformandroid-property-permissions-clear-app-user-data) |
| [bool](class_bool.md#class-bool) | [permissions/control\_location\_updates](#class-editorexportplatformandroid-property-permissions-control-location-updates) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [permissions/custom\_permissions](#class-editorexportplatformandroid-property-permissions-custom-permissions) |
| [bool](class_bool.md#class-bool) | [permissions/delete\_cache\_files](#class-editorexportplatformandroid-property-permissions-delete-cache-files) |
| [bool](class_bool.md#class-bool) | [permissions/delete\_packages](#class-editorexportplatformandroid-property-permissions-delete-packages) |
| [bool](class_bool.md#class-bool) | [permissions/device\_power](#class-editorexportplatformandroid-property-permissions-device-power) |
| [bool](class_bool.md#class-bool) | [permissions/diagnostic](#class-editorexportplatformandroid-property-permissions-diagnostic) |
| [bool](class_bool.md#class-bool) | [permissions/disable\_keyguard](#class-editorexportplatformandroid-property-permissions-disable-keyguard) |
| [bool](class_bool.md#class-bool) | [permissions/dump](#class-editorexportplatformandroid-property-permissions-dump) |
| [bool](class_bool.md#class-bool) | [permissions/expand\_status\_bar](#class-editorexportplatformandroid-property-permissions-expand-status-bar) |
| [bool](class_bool.md#class-bool) | [permissions/factory\_test](#class-editorexportplatformandroid-property-permissions-factory-test) |
| [bool](class_bool.md#class-bool) | [permissions/flashlight](#class-editorexportplatformandroid-property-permissions-flashlight) |
| [bool](class_bool.md#class-bool) | [permissions/force\_back](#class-editorexportplatformandroid-property-permissions-force-back) |
| [bool](class_bool.md#class-bool) | [permissions/get\_accounts](#class-editorexportplatformandroid-property-permissions-get-accounts) |
| [bool](class_bool.md#class-bool) | [permissions/get\_package\_size](#class-editorexportplatformandroid-property-permissions-get-package-size) |
| [bool](class_bool.md#class-bool) | [permissions/get\_tasks](#class-editorexportplatformandroid-property-permissions-get-tasks) |
| [bool](class_bool.md#class-bool) | [permissions/get\_top\_activity\_info](#class-editorexportplatformandroid-property-permissions-get-top-activity-info) |
| [bool](class_bool.md#class-bool) | [permissions/global\_search](#class-editorexportplatformandroid-property-permissions-global-search) |
| [bool](class_bool.md#class-bool) | [permissions/hardware\_test](#class-editorexportplatformandroid-property-permissions-hardware-test) |
| [bool](class_bool.md#class-bool) | [permissions/inject\_events](#class-editorexportplatformandroid-property-permissions-inject-events) |
| [bool](class_bool.md#class-bool) | [permissions/install\_location\_provider](#class-editorexportplatformandroid-property-permissions-install-location-provider) |
| [bool](class_bool.md#class-bool) | [permissions/install\_packages](#class-editorexportplatformandroid-property-permissions-install-packages) |
| [bool](class_bool.md#class-bool) | [permissions/install\_shortcut](#class-editorexportplatformandroid-property-permissions-install-shortcut) |
| [bool](class_bool.md#class-bool) | [permissions/internal\_system\_window](#class-editorexportplatformandroid-property-permissions-internal-system-window) |
| [bool](class_bool.md#class-bool) | [permissions/internet](#class-editorexportplatformandroid-property-permissions-internet) |
| [bool](class_bool.md#class-bool) | [permissions/kill\_background\_processes](#class-editorexportplatformandroid-property-permissions-kill-background-processes) |
| [bool](class_bool.md#class-bool) | [permissions/location\_hardware](#class-editorexportplatformandroid-property-permissions-location-hardware) |
| [bool](class_bool.md#class-bool) | [permissions/manage\_accounts](#class-editorexportplatformandroid-property-permissions-manage-accounts) |
| [bool](class_bool.md#class-bool) | [permissions/manage\_app\_tokens](#class-editorexportplatformandroid-property-permissions-manage-app-tokens) |
| [bool](class_bool.md#class-bool) | [permissions/manage\_documents](#class-editorexportplatformandroid-property-permissions-manage-documents) |
| [bool](class_bool.md#class-bool) | [permissions/manage\_external\_storage](#class-editorexportplatformandroid-property-permissions-manage-external-storage) |
| [bool](class_bool.md#class-bool) | [permissions/master\_clear](#class-editorexportplatformandroid-property-permissions-master-clear) |
| [bool](class_bool.md#class-bool) | [permissions/media\_content\_control](#class-editorexportplatformandroid-property-permissions-media-content-control) |
| [bool](class_bool.md#class-bool) | [permissions/modify\_audio\_settings](#class-editorexportplatformandroid-property-permissions-modify-audio-settings) |
| [bool](class_bool.md#class-bool) | [permissions/modify\_phone\_state](#class-editorexportplatformandroid-property-permissions-modify-phone-state) |
| [bool](class_bool.md#class-bool) | [permissions/mount\_format\_filesystems](#class-editorexportplatformandroid-property-permissions-mount-format-filesystems) |
| [bool](class_bool.md#class-bool) | [permissions/mount\_unmount\_filesystems](#class-editorexportplatformandroid-property-permissions-mount-unmount-filesystems) |
| [bool](class_bool.md#class-bool) | [permissions/nfc](#class-editorexportplatformandroid-property-permissions-nfc) |
| [bool](class_bool.md#class-bool) | [permissions/persistent\_activity](#class-editorexportplatformandroid-property-permissions-persistent-activity) |
| [bool](class_bool.md#class-bool) | [permissions/post\_notifications](#class-editorexportplatformandroid-property-permissions-post-notifications) |
| [bool](class_bool.md#class-bool) | [permissions/process\_outgoing\_calls](#class-editorexportplatformandroid-property-permissions-process-outgoing-calls) |
| [bool](class_bool.md#class-bool) | [permissions/read\_calendar](#class-editorexportplatformandroid-property-permissions-read-calendar) |
| [bool](class_bool.md#class-bool) | [permissions/read\_call\_log](#class-editorexportplatformandroid-property-permissions-read-call-log) |
| [bool](class_bool.md#class-bool) | [permissions/read\_contacts](#class-editorexportplatformandroid-property-permissions-read-contacts) |
| [bool](class_bool.md#class-bool) | [permissions/read\_external\_storage](#class-editorexportplatformandroid-property-permissions-read-external-storage) |
| [bool](class_bool.md#class-bool) | [permissions/read\_frame\_buffer](#class-editorexportplatformandroid-property-permissions-read-frame-buffer) |
| [bool](class_bool.md#class-bool) | [permissions/read\_history\_bookmarks](#class-editorexportplatformandroid-property-permissions-read-history-bookmarks) |
| [bool](class_bool.md#class-bool) | [permissions/read\_input\_state](#class-editorexportplatformandroid-property-permissions-read-input-state) |
| [bool](class_bool.md#class-bool) | [permissions/read\_logs](#class-editorexportplatformandroid-property-permissions-read-logs) |
| [bool](class_bool.md#class-bool) | [permissions/read\_media\_audio](#class-editorexportplatformandroid-property-permissions-read-media-audio) |
| [bool](class_bool.md#class-bool) | [permissions/read\_media\_images](#class-editorexportplatformandroid-property-permissions-read-media-images) |
| [bool](class_bool.md#class-bool) | [permissions/read\_media\_video](#class-editorexportplatformandroid-property-permissions-read-media-video) |
| [bool](class_bool.md#class-bool) | [permissions/read\_media\_visual\_user\_selected](#class-editorexportplatformandroid-property-permissions-read-media-visual-user-selected) |
| [bool](class_bool.md#class-bool) | [permissions/read\_phone\_state](#class-editorexportplatformandroid-property-permissions-read-phone-state) |
| [bool](class_bool.md#class-bool) | [permissions/read\_profile](#class-editorexportplatformandroid-property-permissions-read-profile) |
| [bool](class_bool.md#class-bool) | [permissions/read\_sms](#class-editorexportplatformandroid-property-permissions-read-sms) |
| [bool](class_bool.md#class-bool) | [permissions/read\_social\_stream](#class-editorexportplatformandroid-property-permissions-read-social-stream) |
| [bool](class_bool.md#class-bool) | [permissions/read\_sync\_settings](#class-editorexportplatformandroid-property-permissions-read-sync-settings) |
| [bool](class_bool.md#class-bool) | [permissions/read\_sync\_stats](#class-editorexportplatformandroid-property-permissions-read-sync-stats) |
| [bool](class_bool.md#class-bool) | [permissions/read\_user\_dictionary](#class-editorexportplatformandroid-property-permissions-read-user-dictionary) |
| [bool](class_bool.md#class-bool) | [permissions/reboot](#class-editorexportplatformandroid-property-permissions-reboot) |
| [bool](class_bool.md#class-bool) | [permissions/receive\_boot\_completed](#class-editorexportplatformandroid-property-permissions-receive-boot-completed) |
| [bool](class_bool.md#class-bool) | [permissions/receive\_mms](#class-editorexportplatformandroid-property-permissions-receive-mms) |
| [bool](class_bool.md#class-bool) | [permissions/receive\_sms](#class-editorexportplatformandroid-property-permissions-receive-sms) |
| [bool](class_bool.md#class-bool) | [permissions/receive\_wap\_push](#class-editorexportplatformandroid-property-permissions-receive-wap-push) |
| [bool](class_bool.md#class-bool) | [permissions/record\_audio](#class-editorexportplatformandroid-property-permissions-record-audio) |
| [bool](class_bool.md#class-bool) | [permissions/reorder\_tasks](#class-editorexportplatformandroid-property-permissions-reorder-tasks) |
| [bool](class_bool.md#class-bool) | [permissions/restart\_packages](#class-editorexportplatformandroid-property-permissions-restart-packages) |
| [bool](class_bool.md#class-bool) | [permissions/send\_respond\_via\_message](#class-editorexportplatformandroid-property-permissions-send-respond-via-message) |
| [bool](class_bool.md#class-bool) | [permissions/send\_sms](#class-editorexportplatformandroid-property-permissions-send-sms) |
| [bool](class_bool.md#class-bool) | [permissions/set\_activity\_watcher](#class-editorexportplatformandroid-property-permissions-set-activity-watcher) |
| [bool](class_bool.md#class-bool) | [permissions/set\_alarm](#class-editorexportplatformandroid-property-permissions-set-alarm) |
| [bool](class_bool.md#class-bool) | [permissions/set\_always\_finish](#class-editorexportplatformandroid-property-permissions-set-always-finish) |
| [bool](class_bool.md#class-bool) | [permissions/set\_animation\_scale](#class-editorexportplatformandroid-property-permissions-set-animation-scale) |
| [bool](class_bool.md#class-bool) | [permissions/set\_debug\_app](#class-editorexportplatformandroid-property-permissions-set-debug-app) |
| [bool](class_bool.md#class-bool) | [permissions/set\_orientation](#class-editorexportplatformandroid-property-permissions-set-orientation) |
| [bool](class_bool.md#class-bool) | [permissions/set\_pointer\_speed](#class-editorexportplatformandroid-property-permissions-set-pointer-speed) |
| [bool](class_bool.md#class-bool) | [permissions/set\_preferred\_applications](#class-editorexportplatformandroid-property-permissions-set-preferred-applications) |
| [bool](class_bool.md#class-bool) | [permissions/set\_process\_limit](#class-editorexportplatformandroid-property-permissions-set-process-limit) |
| [bool](class_bool.md#class-bool) | [permissions/set\_time](#class-editorexportplatformandroid-property-permissions-set-time) |
| [bool](class_bool.md#class-bool) | [permissions/set\_time\_zone](#class-editorexportplatformandroid-property-permissions-set-time-zone) |
| [bool](class_bool.md#class-bool) | [permissions/set\_wallpaper](#class-editorexportplatformandroid-property-permissions-set-wallpaper) |
| [bool](class_bool.md#class-bool) | [permissions/set\_wallpaper\_hints](#class-editorexportplatformandroid-property-permissions-set-wallpaper-hints) |
| [bool](class_bool.md#class-bool) | [permissions/signal\_persistent\_processes](#class-editorexportplatformandroid-property-permissions-signal-persistent-processes) |
| [bool](class_bool.md#class-bool) | [permissions/status\_bar](#class-editorexportplatformandroid-property-permissions-status-bar) |
| [bool](class_bool.md#class-bool) | [permissions/subscribed\_feeds\_read](#class-editorexportplatformandroid-property-permissions-subscribed-feeds-read) |
| [bool](class_bool.md#class-bool) | [permissions/subscribed\_feeds\_write](#class-editorexportplatformandroid-property-permissions-subscribed-feeds-write) |
| [bool](class_bool.md#class-bool) | [permissions/system\_alert\_window](#class-editorexportplatformandroid-property-permissions-system-alert-window) |
| [bool](class_bool.md#class-bool) | [permissions/transmit\_ir](#class-editorexportplatformandroid-property-permissions-transmit-ir) |
| [bool](class_bool.md#class-bool) | [permissions/uninstall\_shortcut](#class-editorexportplatformandroid-property-permissions-uninstall-shortcut) |
| [bool](class_bool.md#class-bool) | [permissions/update\_device\_stats](#class-editorexportplatformandroid-property-permissions-update-device-stats) |
| [bool](class_bool.md#class-bool) | [permissions/use\_credentials](#class-editorexportplatformandroid-property-permissions-use-credentials) |
| [bool](class_bool.md#class-bool) | [permissions/use\_sip](#class-editorexportplatformandroid-property-permissions-use-sip) |
| [bool](class_bool.md#class-bool) | [permissions/vibrate](#class-editorexportplatformandroid-property-permissions-vibrate) |
| [bool](class_bool.md#class-bool) | [permissions/wake\_lock](#class-editorexportplatformandroid-property-permissions-wake-lock) |
| [bool](class_bool.md#class-bool) | [permissions/write\_apn\_settings](#class-editorexportplatformandroid-property-permissions-write-apn-settings) |
| [bool](class_bool.md#class-bool) | [permissions/write\_calendar](#class-editorexportplatformandroid-property-permissions-write-calendar) |
| [bool](class_bool.md#class-bool) | [permissions/write\_call\_log](#class-editorexportplatformandroid-property-permissions-write-call-log) |
| [bool](class_bool.md#class-bool) | [permissions/write\_contacts](#class-editorexportplatformandroid-property-permissions-write-contacts) |
| [bool](class_bool.md#class-bool) | [permissions/write\_external\_storage](#class-editorexportplatformandroid-property-permissions-write-external-storage) |
| [bool](class_bool.md#class-bool) | [permissions/write\_gservices](#class-editorexportplatformandroid-property-permissions-write-gservices) |
| [bool](class_bool.md#class-bool) | [permissions/write\_history\_bookmarks](#class-editorexportplatformandroid-property-permissions-write-history-bookmarks) |
| [bool](class_bool.md#class-bool) | [permissions/write\_profile](#class-editorexportplatformandroid-property-permissions-write-profile) |
| [bool](class_bool.md#class-bool) | [permissions/write\_secure\_settings](#class-editorexportplatformandroid-property-permissions-write-secure-settings) |
| [bool](class_bool.md#class-bool) | [permissions/write\_settings](#class-editorexportplatformandroid-property-permissions-write-settings) |
| [bool](class_bool.md#class-bool) | [permissions/write\_sms](#class-editorexportplatformandroid-property-permissions-write-sms) |
| [bool](class_bool.md#class-bool) | [permissions/write\_social\_stream](#class-editorexportplatformandroid-property-permissions-write-social-stream) |
| [bool](class_bool.md#class-bool) | [permissions/write\_sync\_settings](#class-editorexportplatformandroid-property-permissions-write-sync-settings) |
| [bool](class_bool.md#class-bool) | [permissions/write\_user\_dictionary](#class-editorexportplatformandroid-property-permissions-write-user-dictionary) |
| [Color](class_color.md#class-color) | [screen/background\_color](#class-editorexportplatformandroid-property-screen-background-color) |
| [bool](class_bool.md#class-bool) | [screen/edge\_to\_edge](#class-editorexportplatformandroid-property-screen-edge-to-edge) |
| [bool](class_bool.md#class-bool) | [screen/immersive\_mode](#class-editorexportplatformandroid-property-screen-immersive-mode) |
| [bool](class_bool.md#class-bool) | [screen/support\_large](#class-editorexportplatformandroid-property-screen-support-large) |
| [bool](class_bool.md#class-bool) | [screen/support\_normal](#class-editorexportplatformandroid-property-screen-support-normal) |
| [bool](class_bool.md#class-bool) | [screen/support\_small](#class-editorexportplatformandroid-property-screen-support-small) |
| [bool](class_bool.md#class-bool) | [screen/support\_xlarge](#class-editorexportplatformandroid-property-screen-support-xlarge) |
| [bool](class_bool.md#class-bool) | [shader\_baker/enabled](#class-editorexportplatformandroid-property-shader-baker-enabled) |
| [bool](class_bool.md#class-bool) | [user\_data\_backup/allow](#class-editorexportplatformandroid-property-user-data-backup-allow) |
| [int](class_int.md#class-int) | [version/code](#class-editorexportplatformandroid-property-version-code) |
| [String](class_string.md#class-string) | [version/name](#class-editorexportplatformandroid-property-version-name) |
| [int](class_int.md#class-int) | [xr\_features/xr\_mode](#class-editorexportplatformandroid-property-xr-features-xr-mode) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **apk\_expansion/SALT** [🔗](#class-editorexportplatformandroid-property-apk-expansion-salt)

Array of random bytes that the licensing Policy uses to create an [Obfuscator](https://developer.android.com/google/play/licensing/adding-licensing#impl-Obfuscator).

* * *

[bool](class_bool.md#class-bool) **apk\_expansion/enable** [🔗](#class-editorexportplatformandroid-property-apk-expansion-enable)

If `true`, project resources are stored in the separate APK expansion file, instead of the APK.

**Note:** APK expansion should be enabled to use PCK encryption. See [APK Expansion Files](https://developer.android.com/google/play/expansion-files)

* * *

[String](class_string.md#class-string) **apk\_expansion/public\_key** [🔗](#class-editorexportplatformandroid-property-apk-expansion-public-key)

Base64 encoded RSA public key for your publisher account, available from the profile page on the "Google Play Console".

* * *

[bool](class_bool.md#class-bool) **architectures/arm64-v8a** [🔗](#class-editorexportplatformandroid-property-architectures-arm64-v8a)

If `true`, `arm64` binaries are included into exported project.

* * *

[bool](class_bool.md#class-bool) **architectures/armeabi-v7a** [🔗](#class-editorexportplatformandroid-property-architectures-armeabi-v7a)

If `true`, `arm32` binaries are included into exported project.

* * *

[bool](class_bool.md#class-bool) **architectures/x86** [🔗](#class-editorexportplatformandroid-property-architectures-x86)

If `true`, `x86_32` binaries are included into exported project.

* * *

[bool](class_bool.md#class-bool) **architectures/x86\_64** [🔗](#class-editorexportplatformandroid-property-architectures-x86-64)

If `true`, `x86_64` binaries are included into exported project.

* * *

[String](class_string.md#class-string) **command\_line/extra\_args** [🔗](#class-editorexportplatformandroid-property-command-line-extra-args)

A list of additional command line arguments, separated by space, which the exported project will receive when started.

* * *

[String](class_string.md#class-string) **custom\_template/debug** [🔗](#class-editorexportplatformandroid-property-custom-template-debug)

Path to an APK file to use as a custom export template for debug exports. If left empty, default template is used.

**Note:** This is only used if [gradle\_build/use\_gradle\_build](#class-editorexportplatformandroid-property-gradle-build-use-gradle-build) is disabled.

* * *

[String](class_string.md#class-string) **custom\_template/release** [🔗](#class-editorexportplatformandroid-property-custom-template-release)

Path to an APK file to use as a custom export template for release exports. If left empty, default template is used.

**Note:** This is only used if [gradle\_build/use\_gradle\_build](#class-editorexportplatformandroid-property-gradle-build-use-gradle-build) is disabled.

* * *

[bool](class_bool.md#class-bool) **gesture/swipe\_to\_dismiss** [🔗](#class-editorexportplatformandroid-property-gesture-swipe-to-dismiss)

If `true`, [Swipe to dismiss](https://developer.android.com/design/ui/wear/guides/components/swipe-to-dismiss) will be enabled.

This functionality is intended for smartwatches and is generally ignored on standard Android devices. However, some devices may not ignore it. Therefore, it is recommended to keep this feature disabled for standard Android apps to avoid unexpected behavior.

**Note:** This is `false` by default. To enable this behavior, [gradle\_build/use\_gradle\_build](#class-editorexportplatformandroid-property-gradle-build-use-gradle-build) is required.

* * *

[String](class_string.md#class-string) **gradle\_build/android\_source\_template** [🔗](#class-editorexportplatformandroid-property-gradle-build-android-source-template)

Path to a ZIP file holding the source for the export template used in a Gradle build. If left empty, the default template is used.

* * *

[bool](class_bool.md#class-bool) **gradle\_build/compress\_native\_libraries** [🔗](#class-editorexportplatformandroid-property-gradle-build-compress-native-libraries)

If `true`, native libraries are compressed when performing a Gradle build.

**Note:** While enabling compression can reduce the size of the binary, it may result in slower application startup because the native libraries must be extracted before use, rather than being loaded directly.

If you're distributing your app via the Play Store, it's generally recommended to keep this option `false`, see [official documentation](https://developer.android.com/build/releases/past-releases/agp-3-6-0-release-notes#extractNativeLibs).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **gradle\_build/custom\_theme\_attributes** [🔗](#class-editorexportplatformandroid-property-gradle-build-custom-theme-attributes)

A dictionary of custom theme attributes to include in the exported Android project. Each entry defines a theme attribute name and its value, and will be added to the **GodotAppMainTheme**.

For example, the key `android:windowSwipeToDismiss` with the value `false` is resolved to `<item name="android:windowSwipeToDismiss">false</item>`.

**Note:** To add a custom attribute to the **GodotAppSplashTheme**, prefix the attribute name with `[splash]`.

**Note:** Reserved attributes configured via other export options or project settings cannot be overridden by `custom_theme_attributes` and are skipped during export.

* * *

[int](class_int.md#class-int) **gradle\_build/export\_format** [🔗](#class-editorexportplatformandroid-property-gradle-build-export-format)

Application export format (\*.apk or \*.aab).

* * *

[String](class_string.md#class-string) **gradle\_build/gradle\_build\_directory** [🔗](#class-editorexportplatformandroid-property-gradle-build-gradle-build-directory)

Path to the Gradle build directory. If left empty, then `res://android` will be used.

* * *

[String](class_string.md#class-string) **gradle\_build/min\_sdk** [🔗](#class-editorexportplatformandroid-property-gradle-build-min-sdk)

Minimum Android API level required for the application to run (used during Gradle build). See [android:minSdkVersion](https://developer.android.com/guide/topics/manifest/uses-sdk-element#uses).

* * *

[String](class_string.md#class-string) **gradle\_build/target\_sdk** [🔗](#class-editorexportplatformandroid-property-gradle-build-target-sdk)

The Android API level on which the application is designed to run (used during Gradle build). See [android:targetSdkVersion](https://developer.android.com/guide/topics/manifest/uses-sdk-element#uses).

* * *

[bool](class_bool.md#class-bool) **gradle\_build/use\_gradle\_build** [🔗](#class-editorexportplatformandroid-property-gradle-build-use-gradle-build)

If `true`, Gradle build is used instead of pre-built APK.

* * *

[bool](class_bool.md#class-bool) **graphics/opengl\_debug** [🔗](#class-editorexportplatformandroid-property-graphics-opengl-debug)

If `true`, OpenGL ES debug context will be created (additional runtime checking, validation, and logging).

* * *

[String](class_string.md#class-string) **keystore/debug** [🔗](#class-editorexportplatformandroid-property-keystore-debug)

Path of the debug keystore file.

Can be overridden with the environment variable `GODOT_ANDROID_KEYSTORE_DEBUG_PATH`.

Fallbacks to `EditorSettings.export/android/debug_keystore` if empty.

* * *

[String](class_string.md#class-string) **keystore/debug\_password** [🔗](#class-editorexportplatformandroid-property-keystore-debug-password)

Password for the debug keystore file.

Can be overridden with the environment variable `GODOT_ANDROID_KEYSTORE_DEBUG_PASSWORD`.

Fallbacks to `EditorSettings.export/android/debug_keystore_pass` if both it and [keystore/debug](#class-editorexportplatformandroid-property-keystore-debug) are empty.

* * *

[String](class_string.md#class-string) **keystore/debug\_user** [🔗](#class-editorexportplatformandroid-property-keystore-debug-user)

User name for the debug keystore file.

Can be overridden with the environment variable `GODOT_ANDROID_KEYSTORE_DEBUG_USER`.

Fallbacks to `EditorSettings.export/android/debug_keystore_user` if both it and [keystore/debug](#class-editorexportplatformandroid-property-keystore-debug) are empty.

* * *

[String](class_string.md#class-string) **keystore/release** [🔗](#class-editorexportplatformandroid-property-keystore-release)

Path of the release keystore file.

Can be overridden with the environment variable `GODOT_ANDROID_KEYSTORE_RELEASE_PATH`.

* * *

[String](class_string.md#class-string) **keystore/release\_password** [🔗](#class-editorexportplatformandroid-property-keystore-release-password)

Password for the release keystore file.

Can be overridden with the environment variable `GODOT_ANDROID_KEYSTORE_RELEASE_PASSWORD`.

* * *

[String](class_string.md#class-string) **keystore/release\_user** [🔗](#class-editorexportplatformandroid-property-keystore-release-user)

User name for the release keystore file.

Can be overridden with the environment variable `GODOT_ANDROID_KEYSTORE_RELEASE_USER`.

* * *

[String](class_string.md#class-string) **launcher\_icons/adaptive\_background\_432x432** [🔗](#class-editorexportplatformandroid-property-launcher-icons-adaptive-background-432x432)

Background layer of the application adaptive icon file. See [Design adaptive icons](https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons).

* * *

[String](class_string.md#class-string) **launcher\_icons/adaptive\_foreground\_432x432** [🔗](#class-editorexportplatformandroid-property-launcher-icons-adaptive-foreground-432x432)

Foreground layer of the application adaptive icon file. See [Design adaptive icons](https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons).

* * *

[String](class_string.md#class-string) **launcher\_icons/adaptive\_monochrome\_432x432** [🔗](#class-editorexportplatformandroid-property-launcher-icons-adaptive-monochrome-432x432)

Monochrome layer of the application adaptive icon file. See [Design adaptive icons](https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons).

* * *

[String](class_string.md#class-string) **launcher\_icons/main\_192x192** [🔗](#class-editorexportplatformandroid-property-launcher-icons-main-192x192)

Application icon file. If left empty, it will fallback to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon).

* * *

[int](class_int.md#class-int) **package/app\_category** [🔗](#class-editorexportplatformandroid-property-package-app-category)

Application category for the Google Play Store. Only define this if your application fits one of the categories well. See [android:appCategory](https://developer.android.com/guide/topics/manifest/application-element#appCategory).

* * *

[bool](class_bool.md#class-bool) **package/exclude\_from\_recents** [🔗](#class-editorexportplatformandroid-property-package-exclude-from-recents)

If `true`, task initiated by main activity will be excluded from the list of recently used applications. See [android:excludeFromRecents](https://developer.android.com/guide/topics/manifest/activity-element#exclude).

* * *

[String](class_string.md#class-string) **package/name** [🔗](#class-editorexportplatformandroid-property-package-name)

Name of the application.

* * *

[bool](class_bool.md#class-bool) **package/retain\_data\_on\_uninstall** [🔗](#class-editorexportplatformandroid-property-package-retain-data-on-uninstall)

If `true`, when the user uninstalls an app, a prompt to keep the app's data will be shown. See [android:hasFragileUserData](https://developer.android.com/guide/topics/manifest/application-element#fragileuserdata).

* * *

[bool](class_bool.md#class-bool) **package/show\_as\_launcher\_app** [🔗](#class-editorexportplatformandroid-property-package-show-as-launcher-app)

If `true`, the user will be able to set this app as the system launcher in Android preferences.

* * *

[bool](class_bool.md#class-bool) **package/show\_in\_android\_tv** [🔗](#class-editorexportplatformandroid-property-package-show-in-android-tv)

If `true`, this app will show in Android TV launcher UI.

* * *

[bool](class_bool.md#class-bool) **package/show\_in\_app\_library** [🔗](#class-editorexportplatformandroid-property-package-show-in-app-library)

If `true`, this app will show in the device's app library.

**Note:** This is `true` by default.

* * *

[bool](class_bool.md#class-bool) **package/signed** [🔗](#class-editorexportplatformandroid-property-package-signed)

If `true`, package signing is enabled.

* * *

[String](class_string.md#class-string) **package/unique\_name** [🔗](#class-editorexportplatformandroid-property-package-unique-name)

Unique application identifier in a reverse-DNS format. The reverse DNS format should preferably match a domain name you control, but this is not strictly required. For instance, if you own `example.com`, your package unique name should preferably be of the form `com.example.mygame`. This identifier can only contain lowercase alphanumeric characters ( `a-z`, and `0-9`), underscores ( `_`), and periods ( `.`). Each component of the reverse DNS format must start with a letter: for instance, `com.example.8game` is not valid.

If `$genname` is present in the value, it will be replaced by the project name converted to lowercase. If there are invalid characters in the project name, they will be stripped. If all characters in the project name are stripped, `$genname` is replaced by `noname`.

**Note:** Changing the package name will cause the package to be considered as a new package, with its own installation and data paths. The new package won't be usable to update existing installations.

**Note:** When publishing to Google Play, the package name must be _globally_ unique. This means no other apps published on Google Play must be using the same package name as yours. Otherwise, you'll be prevented from publishing your app on Google Play.

* * *

[bool](class_bool.md#class-bool) **permissions/access\_checkin\_properties** [🔗](#class-editorexportplatformandroid-property-permissions-access-checkin-properties)

Allows read/write access to the "properties" table in the checkin database. See [ACCESS\_CHECKIN\_PROPERTIES](https://developer.android.com/reference/android/Manifest.permission#ACCESS_CHECKIN_PROPERTIES).

* * *

[bool](class_bool.md#class-bool) **permissions/access\_coarse\_location** [🔗](#class-editorexportplatformandroid-property-permissions-access-coarse-location)

Allows access to the approximate location information. See [ACCESS\_COARSE\_LOCATION](https://developer.android.com/reference/android/Manifest.permission#ACCESS_COARSE_LOCATION).

* * *

[bool](class_bool.md#class-bool) **permissions/access\_fine\_location** [🔗](#class-editorexportplatformandroid-property-permissions-access-fine-location)

Allows access to the precise location information. See [ACCESS\_FINE\_LOCATION](https://developer.android.com/reference/android/Manifest.permission#ACCESS_FINE_LOCATION).

* * *

[bool](class_bool.md#class-bool) **permissions/access\_location\_extra\_commands** [🔗](#class-editorexportplatformandroid-property-permissions-access-location-extra-commands)

Allows access to the extra location provider commands. See [ACCESS\_LOCATION\_EXTRA\_COMMANDS](https://developer.android.com/reference/android/Manifest.permission#ACCESS_LOCATION_EXTRA_COMMANDS).

* * *

[bool](class_bool.md#class-bool) **permissions/access\_media\_location** [🔗](#class-editorexportplatformandroid-property-permissions-access-media-location)

Allows an application to access any geographic locations persisted in the user's shared collection. See [ACCESS\_MEDIA\_LOCATION](https://developer.android.com/reference/android/Manifest.permission#ACCESS_MEDIA_LOCATION).

* * *

[bool](class_bool.md#class-bool) **permissions/access\_mock\_location** [🔗](#class-editorexportplatformandroid-property-permissions-access-mock-location)

Allows an application to create mock location providers for testing.

* * *

[bool](class_bool.md#class-bool) **permissions/access\_network\_state** [🔗](#class-editorexportplatformandroid-property-permissions-access-network-state)

Allows access to the information about networks. See [ACCESS\_NETWORK\_STATE](https://developer.android.com/reference/android/Manifest.permission#ACCESS_NETWORK_STATE).

* * *

[bool](class_bool.md#class-bool) **permissions/access\_surface\_flinger** [🔗](#class-editorexportplatformandroid-property-permissions-access-surface-flinger)

Allows an application to use SurfaceFlinger's low level features.

* * *

[bool](class_bool.md#class-bool) **permissions/access\_wifi\_state** [🔗](#class-editorexportplatformandroid-property-permissions-access-wifi-state)

Allows access to the information about Wi-Fi networks. See [ACCESS\_WIFI\_STATE](https://developer.android.com/reference/android/Manifest.permission#ACCESS_WIFI_STATE).

* * *

[bool](class_bool.md#class-bool) **permissions/account\_manager** [🔗](#class-editorexportplatformandroid-property-permissions-account-manager)

Allows applications to call into AccountAuthenticators. See [ACCOUNT\_MANAGER](https://developer.android.com/reference/android/Manifest.permission#ACCOUNT_MANAGER).

* * *

[bool](class_bool.md#class-bool) **permissions/add\_voicemail** [🔗](#class-editorexportplatformandroid-property-permissions-add-voicemail)

Allows an application to add voicemails into the system. See [ADD\_VOICEMAIL](https://developer.android.com/reference/android/Manifest.permission#ADD_VOICEMAIL).

* * *

[bool](class_bool.md#class-bool) **permissions/authenticate\_accounts** [🔗](#class-editorexportplatformandroid-property-permissions-authenticate-accounts)

Allows an application to act as an AccountAuthenticator for the AccountManager.

* * *

[bool](class_bool.md#class-bool) **permissions/battery\_stats** [🔗](#class-editorexportplatformandroid-property-permissions-battery-stats)

Allows an application to collect battery statistics. See [BATTERY\_STATS](https://developer.android.com/reference/android/Manifest.permission#BATTERY_STATS).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_accessibility\_service** [🔗](#class-editorexportplatformandroid-property-permissions-bind-accessibility-service)

Must be required by an AccessibilityService, to ensure that only the system can bind to it. See [BIND\_ACCESSIBILITY\_SERVICE](https://developer.android.com/reference/android/Manifest.permission#BIND_ACCESSIBILITY_SERVICE).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_appwidget** [🔗](#class-editorexportplatformandroid-property-permissions-bind-appwidget)

Allows an application to tell the AppWidget service which application can access AppWidget's data. See [BIND\_APPWIDGET](https://developer.android.com/reference/android/Manifest.permission#BIND_APPWIDGET).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_device\_admin** [🔗](#class-editorexportplatformandroid-property-permissions-bind-device-admin)

Must be required by device administration receiver, to ensure that only the system can interact with it. See [BIND\_DEVICE\_ADMIN](https://developer.android.com/reference/android/Manifest.permission#BIND_DEVICE_ADMIN).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_input\_method** [🔗](#class-editorexportplatformandroid-property-permissions-bind-input-method)

Must be required by an InputMethodService, to ensure that only the system can bind to it. See [BIND\_INPUT\_METHOD](https://developer.android.com/reference/android/Manifest.permission#BIND_INPUT_METHOD).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_nfc\_service** [🔗](#class-editorexportplatformandroid-property-permissions-bind-nfc-service)

Must be required by a HostApduService or OffHostApduService to ensure that only the system can bind to it. See [BIND\_NFC\_SERVICE](https://developer.android.com/reference/android/Manifest.permission#BIND_NFC_SERVICE).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_notification\_listener\_service** [🔗](#class-editorexportplatformandroid-property-permissions-bind-notification-listener-service)

Must be required by a NotificationListenerService, to ensure that only the system can bind to it. See [BIND\_NOTIFICATION\_LISTENER\_SERVICE](https://developer.android.com/reference/android/Manifest.permission#BIND_NOTIFICATION_LISTENER_SERVICE).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_print\_service** [🔗](#class-editorexportplatformandroid-property-permissions-bind-print-service)

Must be required by a PrintService, to ensure that only the system can bind to it. See [BIND\_PRINT\_SERVICE](https://developer.android.com/reference/android/Manifest.permission#BIND_PRINT_SERVICE).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_remoteviews** [🔗](#class-editorexportplatformandroid-property-permissions-bind-remoteviews)

Must be required by a RemoteViewsService, to ensure that only the system can bind to it. See [BIND\_REMOTEVIEWS](https://developer.android.com/reference/android/Manifest.permission#BIND_REMOTEVIEWS).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_text\_service** [🔗](#class-editorexportplatformandroid-property-permissions-bind-text-service)

Must be required by a TextService (e.g. SpellCheckerService) to ensure that only the system can bind to it. See [BIND\_TEXT\_SERVICE](https://developer.android.com/reference/android/Manifest.permission#BIND_TEXT_SERVICE).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_vpn\_service** [🔗](#class-editorexportplatformandroid-property-permissions-bind-vpn-service)

Must be required by a VpnService, to ensure that only the system can bind to it. See [BIND\_VPN\_SERVICE](https://developer.android.com/reference/android/Manifest.permission#BIND_VPN_SERVICE).

* * *

[bool](class_bool.md#class-bool) **permissions/bind\_wallpaper** [🔗](#class-editorexportplatformandroid-property-permissions-bind-wallpaper)

Must be required by a WallpaperService, to ensure that only the system can bind to it. See [BIND\_WALLPAPER](https://developer.android.com/reference/android/Manifest.permission#BIND_WALLPAPER).

* * *

[bool](class_bool.md#class-bool) **permissions/bluetooth** [🔗](#class-editorexportplatformandroid-property-permissions-bluetooth)

Allows applications to connect to paired bluetooth devices. See [BLUETOOTH](https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH).

* * *

[bool](class_bool.md#class-bool) **permissions/bluetooth\_admin** [🔗](#class-editorexportplatformandroid-property-permissions-bluetooth-admin)

Allows applications to discover and pair bluetooth devices. See [BLUETOOTH\_ADMIN](https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH_ADMIN).

* * *

[bool](class_bool.md#class-bool) **permissions/bluetooth\_privileged** [🔗](#class-editorexportplatformandroid-property-permissions-bluetooth-privileged)

Allows applications to pair bluetooth devices without user interaction, and to allow or disallow phonebook access or message access. See [BLUETOOTH\_PRIVILEGED](https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH_PRIVILEGED).

* * *

[bool](class_bool.md#class-bool) **permissions/brick** [🔗](#class-editorexportplatformandroid-property-permissions-brick)

Required to be able to disable the device (very dangerous!).

* * *

[bool](class_bool.md#class-bool) **permissions/broadcast\_package\_removed** [🔗](#class-editorexportplatformandroid-property-permissions-broadcast-package-removed)

Allows an application to broadcast a notification that an application package has been removed. See [BROADCAST\_PACKAGE\_REMOVED](https://developer.android.com/reference/android/Manifest.permission#BROADCAST_PACKAGE_REMOVED).

* * *

[bool](class_bool.md#class-bool) **permissions/broadcast\_sms** [🔗](#class-editorexportplatformandroid-property-permissions-broadcast-sms)

Allows an application to broadcast an SMS receipt notification. See [BROADCAST\_SMS](https://developer.android.com/reference/android/Manifest.permission#BROADCAST_SMS).

* * *

[bool](class_bool.md#class-bool) **permissions/broadcast\_sticky** [🔗](#class-editorexportplatformandroid-property-permissions-broadcast-sticky)

Allows an application to broadcast sticky intents. See [BROADCAST\_STICKY](https://developer.android.com/reference/android/Manifest.permission#BROADCAST_STICKY).

* * *

[bool](class_bool.md#class-bool) **permissions/broadcast\_wap\_push** [🔗](#class-editorexportplatformandroid-property-permissions-broadcast-wap-push)

Allows an application to broadcast a WAP PUSH receipt notification. See [BROADCAST\_WAP\_PUSH](https://developer.android.com/reference/android/Manifest.permission#BROADCAST_WAP_PUSH).

* * *

[bool](class_bool.md#class-bool) **permissions/call\_phone** [🔗](#class-editorexportplatformandroid-property-permissions-call-phone)

Allows an application to initiate a phone call without going through the Dialer user interface. See [CALL\_PHONE](https://developer.android.com/reference/android/Manifest.permission#CALL_PHONE).

* * *

[bool](class_bool.md#class-bool) **permissions/call\_privileged** [🔗](#class-editorexportplatformandroid-property-permissions-call-privileged)

Allows an application to call any phone number, including emergency numbers, without going through the Dialer user interface. See [CALL\_PRIVILEGED](https://developer.android.com/reference/android/Manifest.permission#CALL_PRIVILEGED).

* * *

[bool](class_bool.md#class-bool) **permissions/camera** [🔗](#class-editorexportplatformandroid-property-permissions-camera)

Required to be able to access the camera device. See [CAMERA](https://developer.android.com/reference/android/Manifest.permission#CAMERA).

* * *

[bool](class_bool.md#class-bool) **permissions/capture\_audio\_output** [🔗](#class-editorexportplatformandroid-property-permissions-capture-audio-output)

Allows an application to capture audio output. See [CAPTURE\_AUDIO\_OUTPUT](https://developer.android.com/reference/android/Manifest.permission#CAPTURE_AUDIO_OUTPUT).

* * *

[bool](class_bool.md#class-bool) **permissions/capture\_secure\_video\_output** [🔗](#class-editorexportplatformandroid-property-permissions-capture-secure-video-output)

Allows an application to capture secure video output.

* * *

[bool](class_bool.md#class-bool) **permissions/capture\_video\_output** [🔗](#class-editorexportplatformandroid-property-permissions-capture-video-output)

Allows an application to capture video output.

* * *

[bool](class_bool.md#class-bool) **permissions/change\_component\_enabled\_state** [🔗](#class-editorexportplatformandroid-property-permissions-change-component-enabled-state)

Allows an application to change whether an application component (other than its own) is enabled or not. See [CHANGE\_COMPONENT\_ENABLED\_STATE](https://developer.android.com/reference/android/Manifest.permission#CHANGE_COMPONENT_ENABLED_STATE).

* * *

[bool](class_bool.md#class-bool) **permissions/change\_configuration** [🔗](#class-editorexportplatformandroid-property-permissions-change-configuration)

Allows an application to modify the current configuration, such as locale. See [CHANGE\_CONFIGURATION](https://developer.android.com/reference/android/Manifest.permission#CHANGE_CONFIGURATION).

* * *

[bool](class_bool.md#class-bool) **permissions/change\_network\_state** [🔗](#class-editorexportplatformandroid-property-permissions-change-network-state)

Allows applications to change network connectivity state. See [CHANGE\_NETWORK\_STATE](https://developer.android.com/reference/android/Manifest.permission#CHANGE_NETWORK_STATE).

* * *

[bool](class_bool.md#class-bool) **permissions/change\_wifi\_multicast\_state** [🔗](#class-editorexportplatformandroid-property-permissions-change-wifi-multicast-state)

Allows applications to enter Wi-Fi Multicast mode. See [CHANGE\_WIFI\_MULTICAST\_STATE](https://developer.android.com/reference/android/Manifest.permission#CHANGE_WIFI_MULTICAST_STATE).

* * *

[bool](class_bool.md#class-bool) **permissions/change\_wifi\_state** [🔗](#class-editorexportplatformandroid-property-permissions-change-wifi-state)

Allows applications to change Wi-Fi connectivity state. See [CHANGE\_WIFI\_STATE](https://developer.android.com/reference/android/Manifest.permission#CHANGE_WIFI_STATE).

* * *

[bool](class_bool.md#class-bool) **permissions/clear\_app\_cache** [🔗](#class-editorexportplatformandroid-property-permissions-clear-app-cache)

Allows an application to clear the caches of all installed applications on the device. See [CLEAR\_APP\_CACHE](https://developer.android.com/reference/android/Manifest.permission#CLEAR_APP_CACHE).

* * *

[bool](class_bool.md#class-bool) **permissions/clear\_app\_user\_data** [🔗](#class-editorexportplatformandroid-property-permissions-clear-app-user-data)

Allows an application to clear user data.

* * *

[bool](class_bool.md#class-bool) **permissions/control\_location\_updates** [🔗](#class-editorexportplatformandroid-property-permissions-control-location-updates)

Allows enabling/disabling location update notifications from the radio. See [CONTROL\_LOCATION\_UPDATES](https://developer.android.com/reference/android/Manifest.permission#CONTROL_LOCATION_UPDATES).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **permissions/custom\_permissions** [🔗](#class-editorexportplatformandroid-property-permissions-custom-permissions)

Array of custom permission strings.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[bool](class_bool.md#class-bool) **permissions/delete\_cache\_files** [🔗](#class-editorexportplatformandroid-property-permissions-delete-cache-files)

**Deprecated:** This property may be changed or removed in future versions.

* * *

[bool](class_bool.md#class-bool) **permissions/delete\_packages** [🔗](#class-editorexportplatformandroid-property-permissions-delete-packages)

Allows an application to delete packages. See [DELETE\_PACKAGES](https://developer.android.com/reference/android/Manifest.permission#DELETE_PACKAGES).

* * *

[bool](class_bool.md#class-bool) **permissions/device\_power** [🔗](#class-editorexportplatformandroid-property-permissions-device-power)

Allows low-level access to power management.

* * *

[bool](class_bool.md#class-bool) **permissions/diagnostic** [🔗](#class-editorexportplatformandroid-property-permissions-diagnostic)

Allows applications to RW to diagnostic resources. See [DIAGNOSTIC](https://developer.android.com/reference/android/Manifest.permission#DIAGNOSTIC).

* * *

[bool](class_bool.md#class-bool) **permissions/disable\_keyguard** [🔗](#class-editorexportplatformandroid-property-permissions-disable-keyguard)

Allows applications to disable the keyguard if it is not secure. See [DISABLE\_KEYGUARD](https://developer.android.com/reference/android/Manifest.permission#DISABLE_KEYGUARD).

* * *

[bool](class_bool.md#class-bool) **permissions/dump** [🔗](#class-editorexportplatformandroid-property-permissions-dump)

Allows an application to retrieve state dump information from system services. See [DUMP](https://developer.android.com/reference/android/Manifest.permission#DUMP).

* * *

[bool](class_bool.md#class-bool) **permissions/expand\_status\_bar** [🔗](#class-editorexportplatformandroid-property-permissions-expand-status-bar)

Allows an application to expand or collapse the status bar. See [EXPAND\_STATUS\_BAR](https://developer.android.com/reference/android/Manifest.permission#EXPAND_STATUS_BAR).

* * *

[bool](class_bool.md#class-bool) **permissions/factory\_test** [🔗](#class-editorexportplatformandroid-property-permissions-factory-test)

Run as a manufacturer test application, running as the root user. See [FACTORY\_TEST](https://developer.android.com/reference/android/Manifest.permission#FACTORY_TEST).

* * *

[bool](class_bool.md#class-bool) **permissions/flashlight** [🔗](#class-editorexportplatformandroid-property-permissions-flashlight)

Allows access to the flashlight.

* * *

[bool](class_bool.md#class-bool) **permissions/force\_back** [🔗](#class-editorexportplatformandroid-property-permissions-force-back)

Allows an application to force a BACK operation on whatever is the top activity.

* * *

[bool](class_bool.md#class-bool) **permissions/get\_accounts** [🔗](#class-editorexportplatformandroid-property-permissions-get-accounts)

Allows access to the list of accounts in the Accounts Service. See [GET\_ACCOUNTS](https://developer.android.com/reference/android/Manifest.permission#GET_ACCOUNTS).

* * *

[bool](class_bool.md#class-bool) **permissions/get\_package\_size** [🔗](#class-editorexportplatformandroid-property-permissions-get-package-size)

Allows an application to find out the space used by any package. See [GET\_PACKAGE\_SIZE](https://developer.android.com/reference/android/Manifest.permission#GET_PACKAGE_SIZE).

* * *

[bool](class_bool.md#class-bool) **permissions/get\_tasks** [🔗](#class-editorexportplatformandroid-property-permissions-get-tasks)

**Deprecated:** Deprecated in API level 21.

* * *

[bool](class_bool.md#class-bool) **permissions/get\_top\_activity\_info** [🔗](#class-editorexportplatformandroid-property-permissions-get-top-activity-info)

Allows an application to retrieve private information about the current top activity.

* * *

[bool](class_bool.md#class-bool) **permissions/global\_search** [🔗](#class-editorexportplatformandroid-property-permissions-global-search)

Used on content providers to allow the global search system to access their data. See [GLOBAL\_SEARCH](https://developer.android.com/reference/android/Manifest.permission#GLOBAL_SEARCH).

* * *

[bool](class_bool.md#class-bool) **permissions/hardware\_test** [🔗](#class-editorexportplatformandroid-property-permissions-hardware-test)

Allows access to hardware peripherals.

* * *

[bool](class_bool.md#class-bool) **permissions/inject\_events** [🔗](#class-editorexportplatformandroid-property-permissions-inject-events)

Allows an application to inject user events (keys, touch, trackball) into the event stream and deliver them to ANY window.

* * *

[bool](class_bool.md#class-bool) **permissions/install\_location\_provider** [🔗](#class-editorexportplatformandroid-property-permissions-install-location-provider)

Allows an application to install a location provider into the Location Manager. See [INSTALL\_LOCATION\_PROVIDER](https://developer.android.com/reference/android/Manifest.permission#INSTALL_LOCATION_PROVIDER).

* * *

[bool](class_bool.md#class-bool) **permissions/install\_packages** [🔗](#class-editorexportplatformandroid-property-permissions-install-packages)

Allows an application to install packages. See [INSTALL\_PACKAGES](https://developer.android.com/reference/android/Manifest.permission#INSTALL_PACKAGES).

* * *

[bool](class_bool.md#class-bool) **permissions/install\_shortcut** [🔗](#class-editorexportplatformandroid-property-permissions-install-shortcut)

Allows an application to install a shortcut in Launcher. See [INSTALL\_SHORTCUT](https://developer.android.com/reference/android/Manifest.permission#INSTALL_SHORTCUT).

* * *

[bool](class_bool.md#class-bool) **permissions/internal\_system\_window** [🔗](#class-editorexportplatformandroid-property-permissions-internal-system-window)

Allows an application to open windows that are for use by parts of the system user interface.

* * *

[bool](class_bool.md#class-bool) **permissions/internet** [🔗](#class-editorexportplatformandroid-property-permissions-internet)

Allows applications to open network sockets. See [INTERNET](https://developer.android.com/reference/android/Manifest.permission#INTERNET).

* * *

[bool](class_bool.md#class-bool) **permissions/kill\_background\_processes** [🔗](#class-editorexportplatformandroid-property-permissions-kill-background-processes)

Allows an application to call ActivityManager.killBackgroundProcesses(String). See [KILL\_BACKGROUND\_PROCESSES](https://developer.android.com/reference/android/Manifest.permission#KILL_BACKGROUND_PROCESSES).

* * *

[bool](class_bool.md#class-bool) **permissions/location\_hardware** [🔗](#class-editorexportplatformandroid-property-permissions-location-hardware)

Allows an application to use location features in hardware, such as the geofencing api. See [LOCATION\_HARDWARE](https://developer.android.com/reference/android/Manifest.permission#LOCATION_HARDWARE).

* * *

[bool](class_bool.md#class-bool) **permissions/manage\_accounts** [🔗](#class-editorexportplatformandroid-property-permissions-manage-accounts)

Allows an application to manage the list of accounts in the AccountManager.

* * *

[bool](class_bool.md#class-bool) **permissions/manage\_app\_tokens** [🔗](#class-editorexportplatformandroid-property-permissions-manage-app-tokens)

Allows an application to manage (create, destroy, Z-order) application tokens in the window manager.

* * *

[bool](class_bool.md#class-bool) **permissions/manage\_documents** [🔗](#class-editorexportplatformandroid-property-permissions-manage-documents)

Allows an application to manage access to documents, usually as part of a document picker. See [MANAGE\_DOCUMENTS](https://developer.android.com/reference/android/Manifest.permission#MANAGE_DOCUMENTS).

* * *

[bool](class_bool.md#class-bool) **permissions/manage\_external\_storage** [🔗](#class-editorexportplatformandroid-property-permissions-manage-external-storage)

Allows an application a broad access to external storage in scoped storage. See [MANAGE\_EXTERNAL\_STORAGE](https://developer.android.com/reference/android/Manifest.permission#MANAGE_EXTERNAL_STORAGE).

* * *

[bool](class_bool.md#class-bool) **permissions/master\_clear** [🔗](#class-editorexportplatformandroid-property-permissions-master-clear)

See [MASTER\_CLEAR](https://developer.android.com/reference/android/Manifest.permission#MASTER_CLEAR).

* * *

[bool](class_bool.md#class-bool) **permissions/media\_content\_control** [🔗](#class-editorexportplatformandroid-property-permissions-media-content-control)

Allows an application to know what content is playing and control its playback. See [MEDIA\_CONTENT\_CONTROL](https://developer.android.com/reference/android/Manifest.permission#MEDIA_CONTENT_CONTROL).

* * *

[bool](class_bool.md#class-bool) **permissions/modify\_audio\_settings** [🔗](#class-editorexportplatformandroid-property-permissions-modify-audio-settings)

Allows an application to modify global audio settings. See [MODIFY\_AUDIO\_SETTINGS](https://developer.android.com/reference/android/Manifest.permission#MODIFY_AUDIO_SETTINGS).

* * *

[bool](class_bool.md#class-bool) **permissions/modify\_phone\_state** [🔗](#class-editorexportplatformandroid-property-permissions-modify-phone-state)

Allows modification of the telephony state - power on, mmi, etc. Does not include placing calls. See [MODIFY\_PHONE\_STATE](https://developer.android.com/reference/android/Manifest.permission#MODIFY_PHONE_STATE).

* * *

[bool](class_bool.md#class-bool) **permissions/mount\_format\_filesystems** [🔗](#class-editorexportplatformandroid-property-permissions-mount-format-filesystems)

Allows formatting file systems for removable storage. See [MOUNT\_FORMAT\_FILESYSTEMS](https://developer.android.com/reference/android/Manifest.permission#MOUNT_FORMAT_FILESYSTEMS).

* * *

[bool](class_bool.md#class-bool) **permissions/mount\_unmount\_filesystems** [🔗](#class-editorexportplatformandroid-property-permissions-mount-unmount-filesystems)

Allows mounting and unmounting file systems for removable storage. See [MOUNT\_UNMOUNT\_FILESYSTEMS](https://developer.android.com/reference/android/Manifest.permission#MOUNT_UNMOUNT_FILESYSTEMS).

* * *

[bool](class_bool.md#class-bool) **permissions/nfc** [🔗](#class-editorexportplatformandroid-property-permissions-nfc)

Allows applications to perform I/O operations over NFC. See [NFC](https://developer.android.com/reference/android/Manifest.permission#NFC).

* * *

[bool](class_bool.md#class-bool) **permissions/persistent\_activity** [🔗](#class-editorexportplatformandroid-property-permissions-persistent-activity)

**Deprecated:** Deprecated in API level 15.

Allows an application to make its activities persistent.

* * *

[bool](class_bool.md#class-bool) **permissions/post\_notifications** [🔗](#class-editorexportplatformandroid-property-permissions-post-notifications)

Allows an application to post notifications. Added in API level 33. See [Notification runtime permission](https://developer.android.com/develop/ui/views/notifications/notification-permission).

* * *

[bool](class_bool.md#class-bool) **permissions/process\_outgoing\_calls** [🔗](#class-editorexportplatformandroid-property-permissions-process-outgoing-calls)

**Deprecated:** Deprecated in API level 29.

Allows an application to see the number being dialed during an outgoing call with the option to redirect the call to a different number or abort the call altogether. See [PROCESS\_OUTGOING\_CALLS](https://developer.android.com/reference/android/Manifest.permission#PROCESS_OUTGOING_CALLS).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_calendar** [🔗](#class-editorexportplatformandroid-property-permissions-read-calendar)

Allows an application to read the user's calendar data. See [READ\_CALENDAR](https://developer.android.com/reference/android/Manifest.permission#READ_CALENDAR).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_call\_log** [🔗](#class-editorexportplatformandroid-property-permissions-read-call-log)

Allows an application to read the user's call log. See [READ\_CALL\_LOG](https://developer.android.com/reference/android/Manifest.permission#READ_CALL_LOG).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_contacts** [🔗](#class-editorexportplatformandroid-property-permissions-read-contacts)

Allows an application to read the user's contacts data. See [READ\_CONTACTS](https://developer.android.com/reference/android/Manifest.permission#READ_CONTACTS).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_external\_storage** [🔗](#class-editorexportplatformandroid-property-permissions-read-external-storage)

**Deprecated:** Deprecated in API level 33.

Allows an application to read from external storage. See [READ\_EXTERNAL\_STORAGE](https://developer.android.com/reference/android/Manifest.permission#READ_EXTERNAL_STORAGE).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_frame\_buffer** [🔗](#class-editorexportplatformandroid-property-permissions-read-frame-buffer)

Allows an application to take screen shots and more generally get access to the frame buffer data.

* * *

[bool](class_bool.md#class-bool) **permissions/read\_history\_bookmarks** [🔗](#class-editorexportplatformandroid-property-permissions-read-history-bookmarks)

Allows an application to read (but not write) the user's browsing history and bookmarks.

* * *

[bool](class_bool.md#class-bool) **permissions/read\_input\_state** [🔗](#class-editorexportplatformandroid-property-permissions-read-input-state)

**Deprecated:** Deprecated in API level 16.

* * *

[bool](class_bool.md#class-bool) **permissions/read\_logs** [🔗](#class-editorexportplatformandroid-property-permissions-read-logs)

Allows an application to read the low-level system log files. See [READ\_LOGS](https://developer.android.com/reference/android/Manifest.permission#READ_LOGS).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_media\_audio** [🔗](#class-editorexportplatformandroid-property-permissions-read-media-audio)

Allows an application to read audio files from external storage. See [READ\_MEDIA\_AUDIO](https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_AUDIO).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_media\_images** [🔗](#class-editorexportplatformandroid-property-permissions-read-media-images)

Allows an application to read image files from external storage. See [READ\_MEDIA\_IMAGES](https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_IMAGES).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_media\_video** [🔗](#class-editorexportplatformandroid-property-permissions-read-media-video)

Allows an application to read video files from external storage. See [READ\_MEDIA\_VIDEO](https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_VIDEO).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_media\_visual\_user\_selected** [🔗](#class-editorexportplatformandroid-property-permissions-read-media-visual-user-selected)

Allows an application to read image or video files from external storage that a user has selected via the permission prompt photo picker. See [READ\_MEDIA\_VISUAL\_USER\_SELECTED](https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_VISUAL_USER_SELECTED).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_phone\_state** [🔗](#class-editorexportplatformandroid-property-permissions-read-phone-state)

Allows read only access to phone state. See [READ\_PHONE\_STATE](https://developer.android.com/reference/android/Manifest.permission#READ_PHONE_STATE).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_profile** [🔗](#class-editorexportplatformandroid-property-permissions-read-profile)

Allows an application to read the user's personal profile data.

* * *

[bool](class_bool.md#class-bool) **permissions/read\_sms** [🔗](#class-editorexportplatformandroid-property-permissions-read-sms)

Allows an application to read SMS messages. See [READ\_SMS](https://developer.android.com/reference/android/Manifest.permission#READ_SMS).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_social\_stream** [🔗](#class-editorexportplatformandroid-property-permissions-read-social-stream)

Allows an application to read from the user's social stream.

* * *

[bool](class_bool.md#class-bool) **permissions/read\_sync\_settings** [🔗](#class-editorexportplatformandroid-property-permissions-read-sync-settings)

Allows applications to read the sync settings. See [READ\_SYNC\_SETTINGS](https://developer.android.com/reference/android/Manifest.permission#READ_SYNC_SETTINGS).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_sync\_stats** [🔗](#class-editorexportplatformandroid-property-permissions-read-sync-stats)

Allows applications to read the sync stats. See [READ\_SYNC\_STATS](https://developer.android.com/reference/android/Manifest.permission#READ_SYNC_STATS).

* * *

[bool](class_bool.md#class-bool) **permissions/read\_user\_dictionary** [🔗](#class-editorexportplatformandroid-property-permissions-read-user-dictionary)

Allows an application to read the user dictionary.

* * *

[bool](class_bool.md#class-bool) **permissions/reboot** [🔗](#class-editorexportplatformandroid-property-permissions-reboot)

Required to be able to reboot the device. See [REBOOT](https://developer.android.com/reference/android/Manifest.permission#REBOOT).

* * *

[bool](class_bool.md#class-bool) **permissions/receive\_boot\_completed** [🔗](#class-editorexportplatformandroid-property-permissions-receive-boot-completed)

Allows an application to receive the Intent.ACTION\_BOOT\_COMPLETED that is broadcast after the system finishes booting. See [RECEIVE\_BOOT\_COMPLETED](https://developer.android.com/reference/android/Manifest.permission#RECEIVE_BOOT_COMPLETED).

* * *

[bool](class_bool.md#class-bool) **permissions/receive\_mms** [🔗](#class-editorexportplatformandroid-property-permissions-receive-mms)

Allows an application to monitor incoming MMS messages. See [RECEIVE\_MMS](https://developer.android.com/reference/android/Manifest.permission#RECEIVE_MMS).

* * *

[bool](class_bool.md#class-bool) **permissions/receive\_sms** [🔗](#class-editorexportplatformandroid-property-permissions-receive-sms)

Allows an application to receive SMS messages. See [RECEIVE\_SMS](https://developer.android.com/reference/android/Manifest.permission#RECEIVE_SMS).

* * *

[bool](class_bool.md#class-bool) **permissions/receive\_wap\_push** [🔗](#class-editorexportplatformandroid-property-permissions-receive-wap-push)

Allows an application to receive WAP push messages. See [RECEIVE\_WAP\_PUSH](https://developer.android.com/reference/android/Manifest.permission#RECEIVE_WAP_PUSH).

* * *

[bool](class_bool.md#class-bool) **permissions/record\_audio** [🔗](#class-editorexportplatformandroid-property-permissions-record-audio)

Allows an application to record audio. See [RECORD\_AUDIO](https://developer.android.com/reference/android/Manifest.permission#RECORD_AUDIO).

* * *

[bool](class_bool.md#class-bool) **permissions/reorder\_tasks** [🔗](#class-editorexportplatformandroid-property-permissions-reorder-tasks)

Allows an application to change the Z-order of tasks. See [REORDER\_TASKS](https://developer.android.com/reference/android/Manifest.permission#REORDER_TASKS).

* * *

[bool](class_bool.md#class-bool) **permissions/restart\_packages** [🔗](#class-editorexportplatformandroid-property-permissions-restart-packages)

**Deprecated:** Deprecated in API level 15.

* * *

[bool](class_bool.md#class-bool) **permissions/send\_respond\_via\_message** [🔗](#class-editorexportplatformandroid-property-permissions-send-respond-via-message)

Allows an application (Phone) to send a request to other applications to handle the respond-via-message action during incoming calls. See [SEND\_RESPOND\_VIA\_MESSAGE](https://developer.android.com/reference/android/Manifest.permission#SEND_RESPOND_VIA_MESSAGE).

* * *

[bool](class_bool.md#class-bool) **permissions/send\_sms** [🔗](#class-editorexportplatformandroid-property-permissions-send-sms)

Allows an application to send SMS messages. See [SEND\_SMS](https://developer.android.com/reference/android/Manifest.permission#SEND_SMS).

* * *

[bool](class_bool.md#class-bool) **permissions/set\_activity\_watcher** [🔗](#class-editorexportplatformandroid-property-permissions-set-activity-watcher)

Allows an application to watch and control how activities are started globally in the system.

* * *

[bool](class_bool.md#class-bool) **permissions/set\_alarm** [🔗](#class-editorexportplatformandroid-property-permissions-set-alarm)

Allows an application to broadcast an Intent to set an alarm for the user. See [SET\_ALARM](https://developer.android.com/reference/android/Manifest.permission#SET_ALARM).

* * *

[bool](class_bool.md#class-bool) **permissions/set\_always\_finish** [🔗](#class-editorexportplatformandroid-property-permissions-set-always-finish)

Allows an application to control whether activities are immediately finished when put in the background. See [SET\_ALWAYS\_FINISH](https://developer.android.com/reference/android/Manifest.permission#SET_ALWAYS_FINISH).

* * *

[bool](class_bool.md#class-bool) **permissions/set\_animation\_scale** [🔗](#class-editorexportplatformandroid-property-permissions-set-animation-scale)

Allows to modify the global animation scaling factor. See [SET\_ANIMATION\_SCALE](https://developer.android.com/reference/android/Manifest.permission#SET_ANIMATION_SCALE).

* * *

[bool](class_bool.md#class-bool) **permissions/set\_debug\_app** [🔗](#class-editorexportplatformandroid-property-permissions-set-debug-app)

Configure an application for debugging. See [SET\_DEBUG\_APP](https://developer.android.com/reference/android/Manifest.permission#SET_DEBUG_APP).

* * *

[bool](class_bool.md#class-bool) **permissions/set\_orientation** [🔗](#class-editorexportplatformandroid-property-permissions-set-orientation)

Allows low-level access to setting the orientation (actually rotation) of the screen.

* * *

[bool](class_bool.md#class-bool) **permissions/set\_pointer\_speed** [🔗](#class-editorexportplatformandroid-property-permissions-set-pointer-speed)

Allows low-level access to setting the pointer speed.

* * *

[bool](class_bool.md#class-bool) **permissions/set\_preferred\_applications** [🔗](#class-editorexportplatformandroid-property-permissions-set-preferred-applications)

**Deprecated:** Deprecated in API level 15.

* * *

[bool](class_bool.md#class-bool) **permissions/set\_process\_limit** [🔗](#class-editorexportplatformandroid-property-permissions-set-process-limit)

Allows an application to set the maximum number of (not needed) application processes that can be running. See [SET\_PROCESS\_LIMIT](https://developer.android.com/reference/android/Manifest.permission#SET_PROCESS_LIMIT).

* * *

[bool](class_bool.md#class-bool) **permissions/set\_time** [🔗](#class-editorexportplatformandroid-property-permissions-set-time)

Allows applications to set the system time directly. See [SET\_TIME](https://developer.android.com/reference/android/Manifest.permission#SET_TIME).

* * *

[bool](class_bool.md#class-bool) **permissions/set\_time\_zone** [🔗](#class-editorexportplatformandroid-property-permissions-set-time-zone)

Allows applications to set the system time zone directly. See [SET\_TIME\_ZONE](https://developer.android.com/reference/android/Manifest.permission#SET_TIME_ZONE).

* * *

[bool](class_bool.md#class-bool) **permissions/set\_wallpaper** [🔗](#class-editorexportplatformandroid-property-permissions-set-wallpaper)

Allows applications to set the wallpaper. See [SET\_WALLPAPER](https://developer.android.com/reference/android/Manifest.permission#SET_WALLPAPER).

* * *

[bool](class_bool.md#class-bool) **permissions/set\_wallpaper\_hints** [🔗](#class-editorexportplatformandroid-property-permissions-set-wallpaper-hints)

Allows applications to set the wallpaper hints. See [SET\_WALLPAPER\_HINTS](https://developer.android.com/reference/android/Manifest.permission#SET_WALLPAPER_HINTS).

* * *

[bool](class_bool.md#class-bool) **permissions/signal\_persistent\_processes** [🔗](#class-editorexportplatformandroid-property-permissions-signal-persistent-processes)

Allow an application to request that a signal be sent to all persistent processes. See [SIGNAL\_PERSISTENT\_PROCESSES](https://developer.android.com/reference/android/Manifest.permission#SIGNAL_PERSISTENT_PROCESSES).

* * *

[bool](class_bool.md#class-bool) **permissions/status\_bar** [🔗](#class-editorexportplatformandroid-property-permissions-status-bar)

Allows an application to open, close, or disable the status bar and its icons. See [STATUS\_BAR](https://developer.android.com/reference/android/Manifest.permission#STATUS_BAR).

* * *

[bool](class_bool.md#class-bool) **permissions/subscribed\_feeds\_read** [🔗](#class-editorexportplatformandroid-property-permissions-subscribed-feeds-read)

Allows an application to allow access the subscribed feeds ContentProvider.

* * *

[bool](class_bool.md#class-bool) **permissions/subscribed\_feeds\_write** [🔗](#class-editorexportplatformandroid-property-permissions-subscribed-feeds-write)

**Deprecated:** This property may be changed or removed in future versions.

* * *

[bool](class_bool.md#class-bool) **permissions/system\_alert\_window** [🔗](#class-editorexportplatformandroid-property-permissions-system-alert-window)

Allows an app to create windows using the type WindowManager.LayoutParams.TYPE\_APPLICATION\_OVERLAY, shown on top of all other apps. See [SYSTEM\_ALERT\_WINDOW](https://developer.android.com/reference/android/Manifest.permission#SYSTEM_ALERT_WINDOW).

* * *

[bool](class_bool.md#class-bool) **permissions/transmit\_ir** [🔗](#class-editorexportplatformandroid-property-permissions-transmit-ir)

Allows using the device's IR transmitter, if available. See [TRANSMIT\_IR](https://developer.android.com/reference/android/Manifest.permission#TRANSMIT_IR).

* * *

[bool](class_bool.md#class-bool) **permissions/uninstall\_shortcut** [🔗](#class-editorexportplatformandroid-property-permissions-uninstall-shortcut)

**Deprecated:** This property may be changed or removed in future versions.

* * *

[bool](class_bool.md#class-bool) **permissions/update\_device\_stats** [🔗](#class-editorexportplatformandroid-property-permissions-update-device-stats)

Allows an application to update device statistics. See [UPDATE\_DEVICE\_STATS](https://developer.android.com/reference/android/Manifest.permission#UPDATE_DEVICE_STATS).

* * *

[bool](class_bool.md#class-bool) **permissions/use\_credentials** [🔗](#class-editorexportplatformandroid-property-permissions-use-credentials)

Allows an application to request authtokens from the AccountManager.

* * *

[bool](class_bool.md#class-bool) **permissions/use\_sip** [🔗](#class-editorexportplatformandroid-property-permissions-use-sip)

Allows an application to use SIP service. See [USE\_SIP](https://developer.android.com/reference/android/Manifest.permission#USE_SIP).

* * *

[bool](class_bool.md#class-bool) **permissions/vibrate** [🔗](#class-editorexportplatformandroid-property-permissions-vibrate)

Allows access to the vibrator. See [VIBRATE](https://developer.android.com/reference/android/Manifest.permission#VIBRATE).

* * *

[bool](class_bool.md#class-bool) **permissions/wake\_lock** [🔗](#class-editorexportplatformandroid-property-permissions-wake-lock)

Allows using PowerManager WakeLocks to keep processor from sleeping or screen from dimming. See [WAKE\_LOCK](https://developer.android.com/reference/android/Manifest.permission#WAKE_LOCK).

* * *

[bool](class_bool.md#class-bool) **permissions/write\_apn\_settings** [🔗](#class-editorexportplatformandroid-property-permissions-write-apn-settings)

Allows applications to write the apn settings and read sensitive fields of an existing apn settings like user and password. See [WRITE\_APN\_SETTINGS](https://developer.android.com/reference/android/Manifest.permission#WRITE_APN_SETTINGS).

* * *

[bool](class_bool.md#class-bool) **permissions/write\_calendar** [🔗](#class-editorexportplatformandroid-property-permissions-write-calendar)

Allows an application to write the user's calendar data. See [WRITE\_CALENDAR](https://developer.android.com/reference/android/Manifest.permission#WRITE_CALENDAR).

* * *

[bool](class_bool.md#class-bool) **permissions/write\_call\_log** [🔗](#class-editorexportplatformandroid-property-permissions-write-call-log)

Allows an application to write (but not read) the user's call log data. See [WRITE\_CALL\_LOG](https://developer.android.com/reference/android/Manifest.permission#WRITE_CALL_LOG).

* * *

[bool](class_bool.md#class-bool) **permissions/write\_contacts** [🔗](#class-editorexportplatformandroid-property-permissions-write-contacts)

Allows an application to write the user's contacts data. See [WRITE\_CONTACTS](https://developer.android.com/reference/android/Manifest.permission#WRITE_CONTACTS).

* * *

[bool](class_bool.md#class-bool) **permissions/write\_external\_storage** [🔗](#class-editorexportplatformandroid-property-permissions-write-external-storage)

Allows an application to write to external storage. See [WRITE\_EXTERNAL\_STORAGE](https://developer.android.com/reference/android/Manifest.permission#WRITE_EXTERNAL_STORAGE).

* * *

[bool](class_bool.md#class-bool) **permissions/write\_gservices** [🔗](#class-editorexportplatformandroid-property-permissions-write-gservices)

Allows an application to modify the Google service map. See [WRITE\_GSERVICES](https://developer.android.com/reference/android/Manifest.permission#WRITE_GSERVICES).

* * *

[bool](class_bool.md#class-bool) **permissions/write\_history\_bookmarks** [🔗](#class-editorexportplatformandroid-property-permissions-write-history-bookmarks)

Allows an application to write (but not read) the user's browsing history and bookmarks.

* * *

[bool](class_bool.md#class-bool) **permissions/write\_profile** [🔗](#class-editorexportplatformandroid-property-permissions-write-profile)

Allows an application to write (but not read) the user's personal profile data.

* * *

[bool](class_bool.md#class-bool) **permissions/write\_secure\_settings** [🔗](#class-editorexportplatformandroid-property-permissions-write-secure-settings)

Allows an application to read or write the secure system settings. See [WRITE\_SECURE\_SETTINGS](https://developer.android.com/reference/android/Manifest.permission#WRITE_SECURE_SETTINGS).

* * *

[bool](class_bool.md#class-bool) **permissions/write\_settings** [🔗](#class-editorexportplatformandroid-property-permissions-write-settings)

Allows an application to read or write the system settings. See [WRITE\_SETTINGS](https://developer.android.com/reference/android/Manifest.permission#WRITE_SETTINGS).

* * *

[bool](class_bool.md#class-bool) **permissions/write\_sms** [🔗](#class-editorexportplatformandroid-property-permissions-write-sms)

Allows an application to write SMS messages.

* * *

[bool](class_bool.md#class-bool) **permissions/write\_social\_stream** [🔗](#class-editorexportplatformandroid-property-permissions-write-social-stream)

Allows an application to write (but not read) the user's social stream data.

* * *

[bool](class_bool.md#class-bool) **permissions/write\_sync\_settings** [🔗](#class-editorexportplatformandroid-property-permissions-write-sync-settings)

Allows applications to write the sync settings. See [WRITE\_SYNC\_SETTINGS](https://developer.android.com/reference/android/Manifest.permission#WRITE_SYNC_SETTINGS).

* * *

[bool](class_bool.md#class-bool) **permissions/write\_user\_dictionary** [🔗](#class-editorexportplatformandroid-property-permissions-write-user-dictionary)

Allows an application to write to the user dictionary.

* * *

[Color](class_color.md#class-color) **screen/background\_color** [🔗](#class-editorexportplatformandroid-property-screen-background-color)

The background color used for the root window. Default is `black`.

* * *

[bool](class_bool.md#class-bool) **screen/edge\_to\_edge** [🔗](#class-editorexportplatformandroid-property-screen-edge-to-edge)

If `true`, this makes the navigation and status bars translucent and allows the application content to extend edge to edge.

**Note:** You should ensure that none of the application content is occluded by system elements by using the [DisplayServer.get\_display\_safe\_area()](class_displayserver.md#class-displayserver-method-get-display-safe-area) and [DisplayServer.get\_display\_cutouts()](class_displayserver.md#class-displayserver-method-get-display-cutouts) methods.

* * *

[bool](class_bool.md#class-bool) **screen/immersive\_mode** [🔗](#class-editorexportplatformandroid-property-screen-immersive-mode)

If `true`, hides the navigation and status bar. Set [DisplayServer.window\_set\_mode()](class_displayserver.md#class-displayserver-method-window-set-mode) to change this at runtime.

* * *

[bool](class_bool.md#class-bool) **screen/support\_large** [🔗](#class-editorexportplatformandroid-property-screen-support-large)

Indicates whether the application supports larger screen form-factors.

* * *

[bool](class_bool.md#class-bool) **screen/support\_normal** [🔗](#class-editorexportplatformandroid-property-screen-support-normal)

Indicates whether an application supports the "normal" screen form-factors.

* * *

[bool](class_bool.md#class-bool) **screen/support\_small** [🔗](#class-editorexportplatformandroid-property-screen-support-small)

Indicates whether the application supports smaller screen form-factors.

* * *

[bool](class_bool.md#class-bool) **screen/support\_xlarge** [🔗](#class-editorexportplatformandroid-property-screen-support-xlarge)

Indicates whether the application supports extra large screen form-factors.

* * *

[bool](class_bool.md#class-bool) **shader\_baker/enabled** [🔗](#class-editorexportplatformandroid-property-shader-baker-enabled)

If `true`, shaders will be compiled and embedded in the application. This option is only supported when using the Forward+ or Mobile renderers.

* * *

[bool](class_bool.md#class-bool) **user\_data\_backup/allow** [🔗](#class-editorexportplatformandroid-property-user-data-backup-allow)

If `true`, allows the application to participate in the backup and restore infrastructure.

* * *

[int](class_int.md#class-int) **version/code** [🔗](#class-editorexportplatformandroid-property-version-code)

Machine-readable application version. This must be incremented for every new release pushed to the Play Store.

* * *

[String](class_string.md#class-string) **version/name** [🔗](#class-editorexportplatformandroid-property-version-name)

Application version visible to the user. Falls back to [ProjectSettings.application/config/version](class_projectsettings.md#class-projectsettings-property-application-config-version) if left empty.

* * *

[int](class_int.md#class-int) **xr\_features/xr\_mode** [🔗](#class-editorexportplatformandroid-property-xr-features-xr-mode)

The extended reality (XR) mode for this application.

[Previous](class_editorexportplatform.md "EditorExportPlatform") [Next](class_editorexportplatformappleembedded.md "EditorExportPlatformAppleEmbedded")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorexportplatform.md "EditorExportPlatform") [Next](class_editorexportplatformappleembedded.md "EditorExportPlatformAppleEmbedded")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).