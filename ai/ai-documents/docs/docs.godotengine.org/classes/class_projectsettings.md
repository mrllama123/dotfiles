---
title: ProjectSettings — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_projectsettings.html
crawled_at: "2026-08-13T10:37:56+12:00"
content_hash: 422900f38b65127310184c3b8a38d66136eadfdd5e951b91bc55030a152ea31d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ProjectSettings

* * *

# ProjectSettings

**Inherits:** [Object](class_object.md#class-object)

Stores globally-accessible variables.

## Description

Stores variables that can be accessed from everywhere. Use [get\_setting()](#class-projectsettings-method-get-setting), [set\_setting()](#class-projectsettings-method-set-setting) or [has\_setting()](#class-projectsettings-method-has-setting) to access them. Variables stored in `project.godot` are also loaded into **ProjectSettings**, making this object very useful for reading custom game configuration options.

When naming a Project Settings property, use the full path to the setting including the category. For example, `"application/config/name"` for the project name. Category and property names can be viewed in the Project Settings dialog.

**Feature tags:** Project settings can be overridden for specific platforms and configurations (debug, release, ...) using [feature tags](../tutorials/export/feature_tags.md).

**Overriding:** Any project setting can be overridden by creating a file named `override.cfg` in the project's root directory. This can also be used in exported projects by placing this file in the same directory as the project binary. Overriding will still take the base project settings' [feature tags](../tutorials/export/feature_tags.md) in account. Therefore, make sure to _also_ override the setting with the desired feature tags if you want them to override base project settings on all platforms and configurations.

## Tutorials

- [Project Settings](../tutorials/editor/project_settings.md)

- [3D Physics Tests Demo](https://godotengine.org/asset-library/asset/2747)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [Operating System Testing Demo](https://godotengine.org/asset-library/asset/2789)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [accessibility/general/accessibility\_support](#class-projectsettings-property-accessibility-general-accessibility-support) | `0` |
| [int](class_int.md#class-int) | [accessibility/general/updates\_per\_second](#class-projectsettings-property-accessibility-general-updates-per-second) | `60` |
| [bool](class_bool.md#class-bool) | [animation/warnings/check\_angle\_interpolation\_type\_conflicting](#class-projectsettings-property-animation-warnings-check-angle-interpolation-type-conflicting) | `true` |
| [bool](class_bool.md#class-bool) | [animation/warnings/check\_invalid\_track\_paths](#class-projectsettings-property-animation-warnings-check-invalid-track-paths) | `true` |
| [Color](class_color.md#class-color) | [application/boot\_splash/bg\_color](#class-projectsettings-property-application-boot-splash-bg-color) | `Color(0.14, 0.14, 0.14, 1)` |
| [bool](class_bool.md#class-bool) | [application/boot\_splash/fullsize](#class-projectsettings-property-application-boot-splash-fullsize) | `true` |
| [String](class_string.md#class-string) | [application/boot\_splash/image](#class-projectsettings-property-application-boot-splash-image) | `""` |
| [int](class_int.md#class-int) | [application/boot\_splash/minimum\_display\_time](#class-projectsettings-property-application-boot-splash-minimum-display-time) | `0` |
| [bool](class_bool.md#class-bool) | [application/boot\_splash/show\_image](#class-projectsettings-property-application-boot-splash-show-image) | `true` |
| [bool](class_bool.md#class-bool) | [application/boot\_splash/use\_filter](#class-projectsettings-property-application-boot-splash-use-filter) | `true` |
| [bool](class_bool.md#class-bool) | [application/config/auto\_accept\_quit](#class-projectsettings-property-application-config-auto-accept-quit) | `true` |
| [String](class_string.md#class-string) | [application/config/custom\_user\_dir\_name](#class-projectsettings-property-application-config-custom-user-dir-name) | `""` |
| [String](class_string.md#class-string) | [application/config/description](#class-projectsettings-property-application-config-description) | `""` |
| [String](class_string.md#class-string) | [application/config/icon](#class-projectsettings-property-application-config-icon) | `""` |
| [String](class_string.md#class-string) | [application/config/macos\_native\_icon](#class-projectsettings-property-application-config-macos-native-icon) | `""` |
| [String](class_string.md#class-string) | [application/config/name](#class-projectsettings-property-application-config-name) | `""` |
| [Dictionary](class_dictionary.md#class-dictionary) | [application/config/name\_localized](#class-projectsettings-property-application-config-name-localized) | `{}` |
| [String](class_string.md#class-string) | [application/config/project\_settings\_override](#class-projectsettings-property-application-config-project-settings-override) | `""` |
| [bool](class_bool.md#class-bool) | [application/config/quit\_on\_go\_back](#class-projectsettings-property-application-config-quit-on-go-back) | `true` |
| [bool](class_bool.md#class-bool) | [application/config/use\_custom\_user\_dir](#class-projectsettings-property-application-config-use-custom-user-dir) | `false` |
| [bool](class_bool.md#class-bool) | [application/config/use\_hidden\_project\_data\_directory](#class-projectsettings-property-application-config-use-hidden-project-data-directory) | `true` |
| [String](class_string.md#class-string) | [application/config/version](#class-projectsettings-property-application-config-version) | `""` |
| [String](class_string.md#class-string) | [application/config/windows\_native\_icon](#class-projectsettings-property-application-config-windows-native-icon) | `""` |
| [bool](class_bool.md#class-bool) | [application/run/delta\_smoothing](#class-projectsettings-property-application-run-delta-smoothing) | `true` |
| [bool](class_bool.md#class-bool) | [application/run/disable\_stderr](#class-projectsettings-property-application-run-disable-stderr) | `false` |
| [bool](class_bool.md#class-bool) | [application/run/disable\_stdout](#class-projectsettings-property-application-run-disable-stdout) | `false` |
| [bool](class_bool.md#class-bool) | [application/run/enable\_alt\_space\_menu](#class-projectsettings-property-application-run-enable-alt-space-menu) | `false` |
| [bool](class_bool.md#class-bool) | [application/run/flush\_stdout\_on\_print](#class-projectsettings-property-application-run-flush-stdout-on-print) | `false` |
| [bool](class_bool.md#class-bool) | [application/run/flush\_stdout\_on\_print.debug](#class-projectsettings-property-application-run-flush-stdout-on-print-debug) | `true` |
| [int](class_int.md#class-int) | [application/run/frame\_delay\_msec](#class-projectsettings-property-application-run-frame-delay-msec) | `0` |
| [bool](class_bool.md#class-bool) | [application/run/load\_shell\_environment](#class-projectsettings-property-application-run-load-shell-environment) | `false` |
| [bool](class_bool.md#class-bool) | [application/run/low\_processor\_mode](#class-projectsettings-property-application-run-low-processor-mode) | `false` |
| [int](class_int.md#class-int) | [application/run/low\_processor\_mode\_sleep\_usec](#class-projectsettings-property-application-run-low-processor-mode-sleep-usec) | `6900` |
| [String](class_string.md#class-string) | [application/run/main\_loop\_type](#class-projectsettings-property-application-run-main-loop-type) | `"SceneTree"` |
| [String](class_string.md#class-string) | [application/run/main\_scene](#class-projectsettings-property-application-run-main-scene) | `""` |
| [int](class_int.md#class-int) | [application/run/max\_fps](#class-projectsettings-property-application-run-max-fps) | `0` |
| [bool](class_bool.md#class-bool) | [application/run/print\_header](#class-projectsettings-property-application-run-print-header) | `true` |
| [float](class_float.md#class-float) | [audio/buses/channel\_disable\_threshold\_db](#class-projectsettings-property-audio-buses-channel-disable-threshold-db) | `-60.0` |
| [float](class_float.md#class-float) | [audio/buses/channel\_disable\_time](#class-projectsettings-property-audio-buses-channel-disable-time) | `2.0` |
| [String](class_string.md#class-string) | [audio/buses/default\_bus\_layout](#class-projectsettings-property-audio-buses-default-bus-layout) | `"res://default_bus_layout.tres"` |
| [String](class_string.md#class-string) | [audio/driver/driver](#class-projectsettings-property-audio-driver-driver) |  |
| [bool](class_bool.md#class-bool) | [audio/driver/enable\_input](#class-projectsettings-property-audio-driver-enable-input) | `false` |
| [int](class_int.md#class-int) | [audio/driver/mix\_rate](#class-projectsettings-property-audio-driver-mix-rate) | `44100` |
| [int](class_int.md#class-int) | [audio/driver/mix\_rate.web](#class-projectsettings-property-audio-driver-mix-rate-web) | `0` |
| [int](class_int.md#class-int) | [audio/driver/output\_latency](#class-projectsettings-property-audio-driver-output-latency) | `15` |
| [int](class_int.md#class-int) | [audio/driver/output\_latency.web](#class-projectsettings-property-audio-driver-output-latency-web) | `50` |
| [float](class_float.md#class-float) | [audio/general/2d\_panning\_strength](#class-projectsettings-property-audio-general-2d-panning-strength) | `0.5` |
| [float](class_float.md#class-float) | [audio/general/3d\_panning\_strength](#class-projectsettings-property-audio-general-3d-panning-strength) | `0.5` |
| [int](class_int.md#class-int) | [audio/general/default\_playback\_type](#class-projectsettings-property-audio-general-default-playback-type) | `0` |
| [int](class_int.md#class-int) | [audio/general/default\_playback\_type.web](#class-projectsettings-property-audio-general-default-playback-type-web) | `1` |
| [bool](class_bool.md#class-bool) | [audio/general/ios/mix\_with\_others](#class-projectsettings-property-audio-general-ios-mix-with-others) | `false` |
| [int](class_int.md#class-int) | [audio/general/ios/session\_category](#class-projectsettings-property-audio-general-ios-session-category) | `0` |
| [bool](class_bool.md#class-bool) | [audio/general/text\_to\_speech](#class-projectsettings-property-audio-general-text-to-speech) | `false` |
| [int](class_int.md#class-int) | [audio/video/video\_delay\_compensation\_ms](#class-projectsettings-property-audio-video-video-delay-compensation-ms) | `0` |
| [bool](class_bool.md#class-bool) | [collada/use\_ambient](#class-projectsettings-property-collada-use-ambient) | `false` |
| [int](class_int.md#class-int) | [compression/formats/gzip/compression\_level](#class-projectsettings-property-compression-formats-gzip-compression-level) | `-1` |
| [int](class_int.md#class-int) | [compression/formats/zlib/compression\_level](#class-projectsettings-property-compression-formats-zlib-compression-level) | `-1` |
| [int](class_int.md#class-int) | [compression/formats/zstd/compression\_level](#class-projectsettings-property-compression-formats-zstd-compression-level) | `3` |
| [bool](class_bool.md#class-bool) | [compression/formats/zstd/long\_distance\_matching](#class-projectsettings-property-compression-formats-zstd-long-distance-matching) | `false` |
| [int](class_int.md#class-int) | [compression/formats/zstd/window\_log\_size](#class-projectsettings-property-compression-formats-zstd-window-log-size) | `27` |
| [Color](class_color.md#class-color) | [debug/canvas\_items/debug\_redraw\_color](#class-projectsettings-property-debug-canvas-items-debug-redraw-color) | `Color(1, 0.2, 0.2, 0.5)` |
| [float](class_float.md#class-float) | [debug/canvas\_items/debug\_redraw\_time](#class-projectsettings-property-debug-canvas-items-debug-redraw-time) | `1.0` |
| [bool](class_bool.md#class-bool) | [debug/file\_logging/enable\_file\_logging](#class-projectsettings-property-debug-file-logging-enable-file-logging) | `false` |
| [bool](class_bool.md#class-bool) | [debug/file\_logging/enable\_file\_logging.pc](#class-projectsettings-property-debug-file-logging-enable-file-logging-pc) | `true` |
| [String](class_string.md#class-string) | [debug/file\_logging/log\_path](#class-projectsettings-property-debug-file-logging-log-path) | `"user://logs/godot.log"` |
| [int](class_int.md#class-int) | [debug/file\_logging/max\_log\_files](#class-projectsettings-property-debug-file-logging-max-log-files) | `5` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/assert\_always\_false](#class-projectsettings-property-debug-gdscript-warnings-assert-always-false) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/assert\_always\_true](#class-projectsettings-property-debug-gdscript-warnings-assert-always-true) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/confusable\_capture\_reassignment](#class-projectsettings-property-debug-gdscript-warnings-confusable-capture-reassignment) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/confusable\_identifier](#class-projectsettings-property-debug-gdscript-warnings-confusable-identifier) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/confusable\_local\_declaration](#class-projectsettings-property-debug-gdscript-warnings-confusable-local-declaration) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/confusable\_local\_usage](#class-projectsettings-property-debug-gdscript-warnings-confusable-local-usage) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/deprecated\_keyword](#class-projectsettings-property-debug-gdscript-warnings-deprecated-keyword) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/empty\_file](#class-projectsettings-property-debug-gdscript-warnings-empty-file) | `1` |
| [bool](class_bool.md#class-bool) | [debug/gdscript/warnings/enable](#class-projectsettings-property-debug-gdscript-warnings-enable) | `true` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/enum\_variable\_without\_default](#class-projectsettings-property-debug-gdscript-warnings-enum-variable-without-default) | `1` |
| [bool](class_bool.md#class-bool) | [debug/gdscript/warnings/exclude\_addons](#class-projectsettings-property-debug-gdscript-warnings-exclude-addons) | `true` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/get\_node\_default\_without\_onready](#class-projectsettings-property-debug-gdscript-warnings-get-node-default-without-onready) | `2` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/incompatible\_ternary](#class-projectsettings-property-debug-gdscript-warnings-incompatible-ternary) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/inference\_on\_variant](#class-projectsettings-property-debug-gdscript-warnings-inference-on-variant) | `2` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/inferred\_declaration](#class-projectsettings-property-debug-gdscript-warnings-inferred-declaration) | `0` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/int\_as\_enum\_without\_cast](#class-projectsettings-property-debug-gdscript-warnings-int-as-enum-without-cast) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/int\_as\_enum\_without\_match](#class-projectsettings-property-debug-gdscript-warnings-int-as-enum-without-match) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/integer\_division](#class-projectsettings-property-debug-gdscript-warnings-integer-division) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/missing\_tool](#class-projectsettings-property-debug-gdscript-warnings-missing-tool) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/narrowing\_conversion](#class-projectsettings-property-debug-gdscript-warnings-narrowing-conversion) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/native\_method\_override](#class-projectsettings-property-debug-gdscript-warnings-native-method-override) | `2` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/onready\_with\_export](#class-projectsettings-property-debug-gdscript-warnings-onready-with-export) | `2` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/redundant\_await](#class-projectsettings-property-debug-gdscript-warnings-redundant-await) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/redundant\_static\_unload](#class-projectsettings-property-debug-gdscript-warnings-redundant-static-unload) | `1` |
| [bool](class_bool.md#class-bool) | [debug/gdscript/warnings/renamed\_in\_godot\_4\_hint](#class-projectsettings-property-debug-gdscript-warnings-renamed-in-godot-4-hint) | `true` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/return\_value\_discarded](#class-projectsettings-property-debug-gdscript-warnings-return-value-discarded) | `0` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/shadowed\_global\_identifier](#class-projectsettings-property-debug-gdscript-warnings-shadowed-global-identifier) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/shadowed\_variable](#class-projectsettings-property-debug-gdscript-warnings-shadowed-variable) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/shadowed\_variable\_base\_class](#class-projectsettings-property-debug-gdscript-warnings-shadowed-variable-base-class) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/standalone\_expression](#class-projectsettings-property-debug-gdscript-warnings-standalone-expression) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/standalone\_ternary](#class-projectsettings-property-debug-gdscript-warnings-standalone-ternary) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/static\_called\_on\_instance](#class-projectsettings-property-debug-gdscript-warnings-static-called-on-instance) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unassigned\_variable](#class-projectsettings-property-debug-gdscript-warnings-unassigned-variable) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unassigned\_variable\_op\_assign](#class-projectsettings-property-debug-gdscript-warnings-unassigned-variable-op-assign) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unreachable\_code](#class-projectsettings-property-debug-gdscript-warnings-unreachable-code) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unreachable\_pattern](#class-projectsettings-property-debug-gdscript-warnings-unreachable-pattern) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unsafe\_call\_argument](#class-projectsettings-property-debug-gdscript-warnings-unsafe-call-argument) | `0` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unsafe\_cast](#class-projectsettings-property-debug-gdscript-warnings-unsafe-cast) | `0` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unsafe\_method\_access](#class-projectsettings-property-debug-gdscript-warnings-unsafe-method-access) | `0` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unsafe\_property\_access](#class-projectsettings-property-debug-gdscript-warnings-unsafe-property-access) | `0` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unsafe\_void\_return](#class-projectsettings-property-debug-gdscript-warnings-unsafe-void-return) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/untyped\_declaration](#class-projectsettings-property-debug-gdscript-warnings-untyped-declaration) | `0` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unused\_local\_constant](#class-projectsettings-property-debug-gdscript-warnings-unused-local-constant) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unused\_parameter](#class-projectsettings-property-debug-gdscript-warnings-unused-parameter) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unused\_private\_class\_variable](#class-projectsettings-property-debug-gdscript-warnings-unused-private-class-variable) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unused\_signal](#class-projectsettings-property-debug-gdscript-warnings-unused-signal) | `1` |
| [int](class_int.md#class-int) | [debug/gdscript/warnings/unused\_variable](#class-projectsettings-property-debug-gdscript-warnings-unused-variable) | `1` |
| [String](class_string.md#class-string) | [debug/settings/crash\_handler/message](#class-projectsettings-property-debug-settings-crash-handler-message) | `"Please include this when reporting the bug to the project developer."` |
| [String](class_string.md#class-string) | [debug/settings/crash\_handler/message.editor](#class-projectsettings-property-debug-settings-crash-handler-message-editor) | `"Please include this when reporting the bug on: https://github.com/godotengine/godot/issues"` |
| [bool](class_bool.md#class-bool) | [debug/settings/gdscript/always\_track\_call\_stacks](#class-projectsettings-property-debug-settings-gdscript-always-track-call-stacks) | `false` |
| [bool](class_bool.md#class-bool) | [debug/settings/gdscript/always\_track\_local\_variables](#class-projectsettings-property-debug-settings-gdscript-always-track-local-variables) | `false` |
| [int](class_int.md#class-int) | [debug/settings/gdscript/max\_call\_stack](#class-projectsettings-property-debug-settings-gdscript-max-call-stack) | `1024` |
| [bool](class_bool.md#class-bool) | [debug/settings/physics\_interpolation/enable\_warnings](#class-projectsettings-property-debug-settings-physics-interpolation-enable-warnings) | `true` |
| [int](class_int.md#class-int) | [debug/settings/profiler/max\_functions](#class-projectsettings-property-debug-settings-profiler-max-functions) | `16384` |
| [int](class_int.md#class-int) | [debug/settings/profiler/max\_timestamp\_query\_elements](#class-projectsettings-property-debug-settings-profiler-max-timestamp-query-elements) | `256` |
| [bool](class_bool.md#class-bool) | [debug/settings/stdout/print\_fps](#class-projectsettings-property-debug-settings-stdout-print-fps) | `false` |
| [bool](class_bool.md#class-bool) | [debug/settings/stdout/print\_gpu\_profile](#class-projectsettings-property-debug-settings-stdout-print-gpu-profile) | `false` |
| [bool](class_bool.md#class-bool) | [debug/settings/stdout/verbose\_stdout](#class-projectsettings-property-debug-settings-stdout-verbose-stdout) | `false` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/device\_limit\_exceeded](#class-projectsettings-property-debug-shader-language-warnings-device-limit-exceeded) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/enable](#class-projectsettings-property-debug-shader-language-warnings-enable) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/float\_comparison](#class-projectsettings-property-debug-shader-language-warnings-float-comparison) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/formatting\_error](#class-projectsettings-property-debug-shader-language-warnings-formatting-error) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/magic\_position\_write](#class-projectsettings-property-debug-shader-language-warnings-magic-position-write) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/treat\_warnings\_as\_errors](#class-projectsettings-property-debug-shader-language-warnings-treat-warnings-as-errors) | `false` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/unused\_constant](#class-projectsettings-property-debug-shader-language-warnings-unused-constant) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/unused\_function](#class-projectsettings-property-debug-shader-language-warnings-unused-function) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/unused\_local\_variable](#class-projectsettings-property-debug-shader-language-warnings-unused-local-variable) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/unused\_struct](#class-projectsettings-property-debug-shader-language-warnings-unused-struct) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/unused\_uniform](#class-projectsettings-property-debug-shader-language-warnings-unused-uniform) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shader\_language/warnings/unused\_varying](#class-projectsettings-property-debug-shader-language-warnings-unused-varying) | `true` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/2d/agents\_radius\_color](#class-projectsettings-property-debug-shapes-avoidance-2d-agents-radius-color) | `Color(1, 1, 0, 0.25)` |
| [bool](class_bool.md#class-bool) | [debug/shapes/avoidance/2d/enable\_agents\_radius](#class-projectsettings-property-debug-shapes-avoidance-2d-enable-agents-radius) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/avoidance/2d/enable\_obstacles\_radius](#class-projectsettings-property-debug-shapes-avoidance-2d-enable-obstacles-radius) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/avoidance/2d/enable\_obstacles\_static](#class-projectsettings-property-debug-shapes-avoidance-2d-enable-obstacles-static) | `true` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/2d/obstacles\_radius\_color](#class-projectsettings-property-debug-shapes-avoidance-2d-obstacles-radius-color) | `Color(1, 0.5, 0, 0.25)` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/2d/obstacles\_static\_edge\_pushin\_color](#class-projectsettings-property-debug-shapes-avoidance-2d-obstacles-static-edge-pushin-color) | `Color(1, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/2d/obstacles\_static\_edge\_pushout\_color](#class-projectsettings-property-debug-shapes-avoidance-2d-obstacles-static-edge-pushout-color) | `Color(1, 1, 0, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/2d/obstacles\_static\_face\_pushin\_color](#class-projectsettings-property-debug-shapes-avoidance-2d-obstacles-static-face-pushin-color) | `Color(1, 0, 0, 0)` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/2d/obstacles\_static\_face\_pushout\_color](#class-projectsettings-property-debug-shapes-avoidance-2d-obstacles-static-face-pushout-color) | `Color(1, 1, 0, 0.5)` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/3d/agents\_radius\_color](#class-projectsettings-property-debug-shapes-avoidance-3d-agents-radius-color) | `Color(1, 1, 0, 0.25)` |
| [bool](class_bool.md#class-bool) | [debug/shapes/avoidance/3d/enable\_agents\_radius](#class-projectsettings-property-debug-shapes-avoidance-3d-enable-agents-radius) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/avoidance/3d/enable\_obstacles\_radius](#class-projectsettings-property-debug-shapes-avoidance-3d-enable-obstacles-radius) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/avoidance/3d/enable\_obstacles\_static](#class-projectsettings-property-debug-shapes-avoidance-3d-enable-obstacles-static) | `true` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/3d/obstacles\_radius\_color](#class-projectsettings-property-debug-shapes-avoidance-3d-obstacles-radius-color) | `Color(1, 0.5, 0, 0.25)` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/3d/obstacles\_static\_edge\_pushin\_color](#class-projectsettings-property-debug-shapes-avoidance-3d-obstacles-static-edge-pushin-color) | `Color(1, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/3d/obstacles\_static\_edge\_pushout\_color](#class-projectsettings-property-debug-shapes-avoidance-3d-obstacles-static-edge-pushout-color) | `Color(1, 1, 0, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/3d/obstacles\_static\_face\_pushin\_color](#class-projectsettings-property-debug-shapes-avoidance-3d-obstacles-static-face-pushin-color) | `Color(1, 0, 0, 0)` |
| [Color](class_color.md#class-color) | [debug/shapes/avoidance/3d/obstacles\_static\_face\_pushout\_color](#class-projectsettings-property-debug-shapes-avoidance-3d-obstacles-static-face-pushout-color) | `Color(1, 1, 0, 0.5)` |
| [Color](class_color.md#class-color) | [debug/shapes/collision/contact\_color](#class-projectsettings-property-debug-shapes-collision-contact-color) | `Color(1, 0.2, 0.1, 0.8)` |
| [bool](class_bool.md#class-bool) | [debug/shapes/collision/draw\_2d\_outlines](#class-projectsettings-property-debug-shapes-collision-draw-2d-outlines) | `true` |
| [int](class_int.md#class-int) | [debug/shapes/collision/max\_contacts\_displayed](#class-projectsettings-property-debug-shapes-collision-max-contacts-displayed) | `10000` |
| [Color](class_color.md#class-color) | [debug/shapes/collision/shape\_color](#class-projectsettings-property-debug-shapes-collision-shape-color) | `Color(0, 0.6, 0.7, 0.42)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/2d/agent\_path\_color](#class-projectsettings-property-debug-shapes-navigation-2d-agent-path-color) | `Color(1, 0, 0, 1)` |
| [float](class_float.md#class-float) | [debug/shapes/navigation/2d/agent\_path\_point\_size](#class-projectsettings-property-debug-shapes-navigation-2d-agent-path-point-size) | `4.0` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/2d/edge\_connection\_color](#class-projectsettings-property-debug-shapes-navigation-2d-edge-connection-color) | `Color(1, 0, 1, 1)` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/2d/enable\_agent\_paths](#class-projectsettings-property-debug-shapes-navigation-2d-enable-agent-paths) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/2d/enable\_edge\_connections](#class-projectsettings-property-debug-shapes-navigation-2d-enable-edge-connections) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/2d/enable\_edge\_lines](#class-projectsettings-property-debug-shapes-navigation-2d-enable-edge-lines) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/2d/enable\_geometry\_face\_random\_color](#class-projectsettings-property-debug-shapes-navigation-2d-enable-geometry-face-random-color) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/2d/enable\_link\_connections](#class-projectsettings-property-debug-shapes-navigation-2d-enable-link-connections) | `true` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/2d/geometry\_edge\_color](#class-projectsettings-property-debug-shapes-navigation-2d-geometry-edge-color) | `Color(0.5, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/2d/geometry\_edge\_disabled\_color](#class-projectsettings-property-debug-shapes-navigation-2d-geometry-edge-disabled-color) | `Color(0.5, 0.5, 0.5, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/2d/geometry\_face\_color](#class-projectsettings-property-debug-shapes-navigation-2d-geometry-face-color) | `Color(0.5, 1, 1, 0.4)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/2d/geometry\_face\_disabled\_color](#class-projectsettings-property-debug-shapes-navigation-2d-geometry-face-disabled-color) | `Color(0.5, 0.5, 0.5, 0.4)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/2d/link\_connection\_color](#class-projectsettings-property-debug-shapes-navigation-2d-link-connection-color) | `Color(1, 0.5, 1, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/2d/link\_connection\_disabled\_color](#class-projectsettings-property-debug-shapes-navigation-2d-link-connection-disabled-color) | `Color(0.5, 0.5, 0.5, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/3d/agent\_path\_color](#class-projectsettings-property-debug-shapes-navigation-3d-agent-path-color) | `Color(1, 0, 0, 1)` |
| [float](class_float.md#class-float) | [debug/shapes/navigation/3d/agent\_path\_point\_size](#class-projectsettings-property-debug-shapes-navigation-3d-agent-path-point-size) | `4.0` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/3d/edge\_connection\_color](#class-projectsettings-property-debug-shapes-navigation-3d-edge-connection-color) | `Color(1, 0, 1, 1)` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/3d/enable\_agent\_paths](#class-projectsettings-property-debug-shapes-navigation-3d-enable-agent-paths) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/3d/enable\_agent\_paths\_xray](#class-projectsettings-property-debug-shapes-navigation-3d-enable-agent-paths-xray) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/3d/enable\_edge\_connections](#class-projectsettings-property-debug-shapes-navigation-3d-enable-edge-connections) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/3d/enable\_edge\_connections\_xray](#class-projectsettings-property-debug-shapes-navigation-3d-enable-edge-connections-xray) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/3d/enable\_edge\_lines](#class-projectsettings-property-debug-shapes-navigation-3d-enable-edge-lines) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/3d/enable\_edge\_lines\_xray](#class-projectsettings-property-debug-shapes-navigation-3d-enable-edge-lines-xray) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/3d/enable\_geometry\_face\_random\_color](#class-projectsettings-property-debug-shapes-navigation-3d-enable-geometry-face-random-color) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/3d/enable\_link\_connections](#class-projectsettings-property-debug-shapes-navigation-3d-enable-link-connections) | `true` |
| [bool](class_bool.md#class-bool) | [debug/shapes/navigation/3d/enable\_link\_connections\_xray](#class-projectsettings-property-debug-shapes-navigation-3d-enable-link-connections-xray) | `true` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/3d/geometry\_edge\_color](#class-projectsettings-property-debug-shapes-navigation-3d-geometry-edge-color) | `Color(0.5, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/3d/geometry\_edge\_disabled\_color](#class-projectsettings-property-debug-shapes-navigation-3d-geometry-edge-disabled-color) | `Color(0.5, 0.5, 0.5, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/3d/geometry\_face\_color](#class-projectsettings-property-debug-shapes-navigation-3d-geometry-face-color) | `Color(0.5, 1, 1, 0.4)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/3d/geometry\_face\_disabled\_color](#class-projectsettings-property-debug-shapes-navigation-3d-geometry-face-disabled-color) | `Color(0.5, 0.5, 0.5, 0.4)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/3d/link\_connection\_color](#class-projectsettings-property-debug-shapes-navigation-3d-link-connection-color) | `Color(1, 0.5, 1, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/navigation/3d/link\_connection\_disabled\_color](#class-projectsettings-property-debug-shapes-navigation-3d-link-connection-disabled-color) | `Color(0.5, 0.5, 0.5, 1)` |
| [Color](class_color.md#class-color) | [debug/shapes/paths/geometry\_color](#class-projectsettings-property-debug-shapes-paths-geometry-color) | `Color(0.1, 1, 0.7, 0.4)` |
| [float](class_float.md#class-float) | [debug/shapes/paths/geometry\_width](#class-projectsettings-property-debug-shapes-paths-geometry-width) | `2.0` |
| [String](class_string.md#class-string) | [display/display\_server/driver](#class-projectsettings-property-display-display-server-driver) |  |
| [String](class_string.md#class-string) | [display/display\_server/driver.android](#class-projectsettings-property-display-display-server-driver-android) |  |
| [String](class_string.md#class-string) | [display/display\_server/driver.ios](#class-projectsettings-property-display-display-server-driver-ios) |  |
| [String](class_string.md#class-string) | [display/display\_server/driver.linuxbsd](#class-projectsettings-property-display-display-server-driver-linuxbsd) |  |
| [String](class_string.md#class-string) | [display/display\_server/driver.macos](#class-projectsettings-property-display-display-server-driver-macos) |  |
| [String](class_string.md#class-string) | [display/display\_server/driver.visionos](#class-projectsettings-property-display-display-server-driver-visionos) |  |
| [String](class_string.md#class-string) | [display/display\_server/driver.windows](#class-projectsettings-property-display-display-server-driver-windows) |  |
| [String](class_string.md#class-string) | [display/mouse\_cursor/custom\_image](#class-projectsettings-property-display-mouse-cursor-custom-image) | `""` |
| [Vector2](class_vector2.md#class-vector2) | [display/mouse\_cursor/custom\_image\_hotspot](#class-projectsettings-property-display-mouse-cursor-custom-image-hotspot) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [display/mouse\_cursor/tooltip\_position\_offset](#class-projectsettings-property-display-mouse-cursor-tooltip-position-offset) | `Vector2(10, 10)` |
| [bool](class_bool.md#class-bool) | [display/window/dpi/allow\_hidpi](#class-projectsettings-property-display-window-dpi-allow-hidpi) | `true` |
| [bool](class_bool.md#class-bool) | [display/window/energy\_saving/keep\_screen\_on](#class-projectsettings-property-display-window-energy-saving-keep-screen-on) | `true` |
| [bool](class_bool.md#class-bool) | [display/window/frame\_pacing/android/enable\_frame\_pacing](#class-projectsettings-property-display-window-frame-pacing-android-enable-frame-pacing) | `true` |
| [int](class_int.md#class-int) | [display/window/frame\_pacing/android/swappy\_mode](#class-projectsettings-property-display-window-frame-pacing-android-swappy-mode) | `2` |
| [int](class_int.md#class-int) | [display/window/handheld/orientation](#class-projectsettings-property-display-window-handheld-orientation) | `0` |
| [bool](class_bool.md#class-bool) | [display/window/ios/allow\_high\_refresh\_rate](#class-projectsettings-property-display-window-ios-allow-high-refresh-rate) | `true` |
| [bool](class_bool.md#class-bool) | [display/window/ios/hide\_home\_indicator](#class-projectsettings-property-display-window-ios-hide-home-indicator) | `true` |
| [bool](class_bool.md#class-bool) | [display/window/ios/hide\_status\_bar](#class-projectsettings-property-display-window-ios-hide-status-bar) | `true` |
| [bool](class_bool.md#class-bool) | [display/window/ios/suppress\_ui\_gesture](#class-projectsettings-property-display-window-ios-suppress-ui-gesture) | `true` |
| [bool](class_bool.md#class-bool) | [display/window/per\_pixel\_transparency/allowed](#class-projectsettings-property-display-window-per-pixel-transparency-allowed) | `false` |
| [bool](class_bool.md#class-bool) | [display/window/size/always\_on\_top](#class-projectsettings-property-display-window-size-always-on-top) | `false` |
| [bool](class_bool.md#class-bool) | [display/window/size/borderless](#class-projectsettings-property-display-window-size-borderless) | `false` |
| [bool](class_bool.md#class-bool) | [display/window/size/extend\_to\_title](#class-projectsettings-property-display-window-size-extend-to-title) | `false` |
| [Vector2i](class_vector2i.md#class-vector2i) | [display/window/size/initial\_position](#class-projectsettings-property-display-window-size-initial-position) | `Vector2i(0, 0)` |
| [int](class_int.md#class-int) | [display/window/size/initial\_position\_type](#class-projectsettings-property-display-window-size-initial-position-type) | `1` |
| [int](class_int.md#class-int) | [display/window/size/initial\_screen](#class-projectsettings-property-display-window-size-initial-screen) | `0` |
| [bool](class_bool.md#class-bool) | [display/window/size/maximize\_disabled](#class-projectsettings-property-display-window-size-maximize-disabled) | `false` |
| [bool](class_bool.md#class-bool) | [display/window/size/minimize\_disabled](#class-projectsettings-property-display-window-size-minimize-disabled) | `false` |
| [int](class_int.md#class-int) | [display/window/size/mode](#class-projectsettings-property-display-window-size-mode) | `0` |
| [bool](class_bool.md#class-bool) | [display/window/size/no\_focus](#class-projectsettings-property-display-window-size-no-focus) | `false` |
| [bool](class_bool.md#class-bool) | [display/window/size/resizable](#class-projectsettings-property-display-window-size-resizable) | `true` |
| [bool](class_bool.md#class-bool) | [display/window/size/sharp\_corners](#class-projectsettings-property-display-window-size-sharp-corners) | `false` |
| [bool](class_bool.md#class-bool) | [display/window/size/transparent](#class-projectsettings-property-display-window-size-transparent) | `false` |
| [int](class_int.md#class-int) | [display/window/size/viewport\_height](#class-projectsettings-property-display-window-size-viewport-height) | `648` |
| [int](class_int.md#class-int) | [display/window/size/viewport\_width](#class-projectsettings-property-display-window-size-viewport-width) | `1152` |
| [int](class_int.md#class-int) | [display/window/size/window\_height\_override](#class-projectsettings-property-display-window-size-window-height-override) | `0` |
| [int](class_int.md#class-int) | [display/window/size/window\_width\_override](#class-projectsettings-property-display-window-size-window-width-override) | `0` |
| [String](class_string.md#class-string) | [display/window/stretch/aspect](#class-projectsettings-property-display-window-stretch-aspect) | `"keep"` |
| [String](class_string.md#class-string) | [display/window/stretch/mode](#class-projectsettings-property-display-window-stretch-mode) | `"disabled"` |
| [float](class_float.md#class-float) | [display/window/stretch/scale](#class-projectsettings-property-display-window-stretch-scale) | `1.0` |
| [String](class_string.md#class-string) | [display/window/stretch/scale\_mode](#class-projectsettings-property-display-window-stretch-scale-mode) | `"fractional"` |
| [bool](class_bool.md#class-bool) | [display/window/subwindows/embed\_subwindows](#class-projectsettings-property-display-window-subwindows-embed-subwindows) | `true` |
| [int](class_int.md#class-int) | [display/window/vsync/vsync\_mode](#class-projectsettings-property-display-window-vsync-vsync-mode) | `1` |
| [String](class_string.md#class-string) | [dotnet/project/assembly\_name](#class-projectsettings-property-dotnet-project-assembly-name) | `""` |
| [int](class_int.md#class-int) | [dotnet/project/assembly\_reload\_attempts](#class-projectsettings-property-dotnet-project-assembly-reload-attempts) | `3` |
| [String](class_string.md#class-string) | [dotnet/project/solution\_directory](#class-projectsettings-property-dotnet-project-solution-directory) | `""` |
| [bool](class_bool.md#class-bool) | [editor/export/convert\_text\_resources\_to\_binary](#class-projectsettings-property-editor-export-convert-text-resources-to-binary) | `true` |
| [int](class_int.md#class-int) | [editor/import/atlas\_max\_width](#class-projectsettings-property-editor-import-atlas-max-width) | `2048` |
| [bool](class_bool.md#class-bool) | [editor/import/reimport\_missing\_imported\_files](#class-projectsettings-property-editor-import-reimport-missing-imported-files) | `true` |
| [bool](class_bool.md#class-bool) | [editor/import/use\_multiple\_threads](#class-projectsettings-property-editor-import-use-multiple-threads) | `true` |
| [bool](class_bool.md#class-bool) | [editor/movie\_writer/disable\_vsync](#class-projectsettings-property-editor-movie-writer-disable-vsync) | `false` |
| [int](class_int.md#class-int) | [editor/movie\_writer/fps](#class-projectsettings-property-editor-movie-writer-fps) | `60` |
| [int](class_int.md#class-int) | [editor/movie\_writer/mix\_rate](#class-projectsettings-property-editor-movie-writer-mix-rate) | `48000` |
| [String](class_string.md#class-string) | [editor/movie\_writer/movie\_file](#class-projectsettings-property-editor-movie-writer-movie-file) | `""` |
| [float](class_float.md#class-float) | [editor/movie\_writer/ogv/audio\_quality](#class-projectsettings-property-editor-movie-writer-ogv-audio-quality) | `0.5` |
| [int](class_int.md#class-int) | [editor/movie\_writer/ogv/encoding\_speed](#class-projectsettings-property-editor-movie-writer-ogv-encoding-speed) | `4` |
| [int](class_int.md#class-int) | [editor/movie\_writer/ogv/keyframe\_interval](#class-projectsettings-property-editor-movie-writer-ogv-keyframe-interval) | `64` |
| [int](class_int.md#class-int) | [editor/movie\_writer/speaker\_mode](#class-projectsettings-property-editor-movie-writer-speaker-mode) | `0` |
| [float](class_float.md#class-float) | [editor/movie\_writer/video\_quality](#class-projectsettings-property-editor-movie-writer-video-quality) | `0.75` |
| [String](class_string.md#class-string) | [editor/naming/default\_signal\_callback\_name](#class-projectsettings-property-editor-naming-default-signal-callback-name) | `"_on_{node_name}_{signal_name}"` |
| [String](class_string.md#class-string) | [editor/naming/default\_signal\_callback\_to\_self\_name](#class-projectsettings-property-editor-naming-default-signal-callback-to-self-name) | `"_on_{signal_name}"` |
| [int](class_int.md#class-int) | [editor/naming/node\_name\_casing](#class-projectsettings-property-editor-naming-node-name-casing) | `0` |
| [int](class_int.md#class-int) | [editor/naming/node\_name\_num\_separator](#class-projectsettings-property-editor-naming-node-name-num-separator) | `0` |
| [int](class_int.md#class-int) | [editor/naming/scene\_name\_casing](#class-projectsettings-property-editor-naming-scene-name-casing) | `2` |
| [int](class_int.md#class-int) | [editor/naming/script\_name\_casing](#class-projectsettings-property-editor-naming-script-name-casing) | `0` |
| [String](class_string.md#class-string) | [editor/run/main\_run\_args](#class-projectsettings-property-editor-run-main-run-args) | `""` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [editor/script/search\_in\_file\_extensions](#class-projectsettings-property-editor-script-search-in-file-extensions) |  |
| [String](class_string.md#class-string) | [editor/script/templates\_search\_path](#class-projectsettings-property-editor-script-templates-search-path) | `"res://script_templates"` |
| [bool](class_bool.md#class-bool) | [editor/version\_control/autoload\_on\_startup](#class-projectsettings-property-editor-version-control-autoload-on-startup) | `false` |
| [String](class_string.md#class-string) | [editor/version\_control/plugin\_name](#class-projectsettings-property-editor-version-control-plugin-name) | `""` |
| [bool](class_bool.md#class-bool) | [filesystem/import/blender/enabled](#class-projectsettings-property-filesystem-import-blender-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [filesystem/import/blender/enabled.android](#class-projectsettings-property-filesystem-import-blender-enabled-android) | `false` |
| [bool](class_bool.md#class-bool) | [filesystem/import/blender/enabled.web](#class-projectsettings-property-filesystem-import-blender-enabled-web) | `false` |
| [bool](class_bool.md#class-bool) | [filesystem/import/fbx2gltf/enabled](#class-projectsettings-property-filesystem-import-fbx2gltf-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [filesystem/import/fbx2gltf/enabled.android](#class-projectsettings-property-filesystem-import-fbx2gltf-enabled-android) | `false` |
| [bool](class_bool.md#class-bool) | [filesystem/import/fbx2gltf/enabled.web](#class-projectsettings-property-filesystem-import-fbx2gltf-enabled-web) | `false` |
| [int](class_int.md#class-int) | [gui/common/default\_scroll\_deadzone](#class-projectsettings-property-gui-common-default-scroll-deadzone) | `0` |
| [bool](class_bool.md#class-bool) | [gui/common/snap\_controls\_to\_pixels](#class-projectsettings-property-gui-common-snap-controls-to-pixels) | `true` |
| [int](class_int.md#class-int) | [gui/common/swap\_cancel\_ok](#class-projectsettings-property-gui-common-swap-cancel-ok) | `0` |
| [int](class_int.md#class-int) | [gui/common/text\_edit\_undo\_stack\_max\_size](#class-projectsettings-property-gui-common-text-edit-undo-stack-max-size) | `1024` |
| [bool](class_bool.md#class-bool) | [gui/fonts/dynamic\_fonts/use\_oversampling](#class-projectsettings-property-gui-fonts-dynamic-fonts-use-oversampling) | `true` |
| [String](class_string.md#class-string) | [gui/theme/custom](#class-projectsettings-property-gui-theme-custom) | `""` |
| [String](class_string.md#class-string) | [gui/theme/custom\_font](#class-projectsettings-property-gui-theme-custom-font) | `""` |
| [int](class_int.md#class-int) | [gui/theme/default\_font\_antialiasing](#class-projectsettings-property-gui-theme-default-font-antialiasing) | `1` |
| [bool](class_bool.md#class-bool) | [gui/theme/default\_font\_generate\_mipmaps](#class-projectsettings-property-gui-theme-default-font-generate-mipmaps) | `false` |
| [int](class_int.md#class-int) | [gui/theme/default\_font\_hinting](#class-projectsettings-property-gui-theme-default-font-hinting) | `1` |
| [bool](class_bool.md#class-bool) | [gui/theme/default\_font\_multichannel\_signed\_distance\_field](#class-projectsettings-property-gui-theme-default-font-multichannel-signed-distance-field) | `false` |
| [int](class_int.md#class-int) | [gui/theme/default\_font\_subpixel\_positioning](#class-projectsettings-property-gui-theme-default-font-subpixel-positioning) | `1` |
| [float](class_float.md#class-float) | [gui/theme/default\_theme\_scale](#class-projectsettings-property-gui-theme-default-theme-scale) | `1.0` |
| [int](class_int.md#class-int) | [gui/theme/lcd\_subpixel\_layout](#class-projectsettings-property-gui-theme-lcd-subpixel-layout) | `1` |
| [float](class_float.md#class-float) | [gui/timers/button\_shortcut\_feedback\_highlight\_time](#class-projectsettings-property-gui-timers-button-shortcut-feedback-highlight-time) | `0.2` |
| [int](class_int.md#class-int) | [gui/timers/incremental\_search\_max\_interval\_msec](#class-projectsettings-property-gui-timers-incremental-search-max-interval-msec) | `2000` |
| [float](class_float.md#class-float) | [gui/timers/text\_edit\_idle\_detect\_sec](#class-projectsettings-property-gui-timers-text-edit-idle-detect-sec) | `3` |
| [float](class_float.md#class-float) | [gui/timers/tooltip\_delay\_sec](#class-projectsettings-property-gui-timers-tooltip-delay-sec) | `0.5` |
| [float](class_float.md#class-float) | [gui/timers/tooltip\_delay\_sec.editor\_hint](#class-projectsettings-property-gui-timers-tooltip-delay-sec-editor-hint) | `0.5` |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_accept](#class-projectsettings-property-input-ui-accept) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_accessibility\_drag\_and\_drop](#class-projectsettings-property-input-ui-accessibility-drag-and-drop) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_cancel](#class-projectsettings-property-input-ui-cancel) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_colorpicker\_delete\_preset](#class-projectsettings-property-input-ui-colorpicker-delete-preset) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_copy](#class-projectsettings-property-input-ui-copy) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_cut](#class-projectsettings-property-input-ui-cut) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_down](#class-projectsettings-property-input-ui-down) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_end](#class-projectsettings-property-input-ui-end) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_filedialog\_refresh](#class-projectsettings-property-input-ui-filedialog-refresh) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_filedialog\_show\_hidden](#class-projectsettings-property-input-ui-filedialog-show-hidden) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_filedialog\_up\_one\_level](#class-projectsettings-property-input-ui-filedialog-up-one-level) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_focus\_mode](#class-projectsettings-property-input-ui-focus-mode) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_focus\_next](#class-projectsettings-property-input-ui-focus-next) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_focus\_prev](#class-projectsettings-property-input-ui-focus-prev) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_graph\_delete](#class-projectsettings-property-input-ui-graph-delete) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_graph\_duplicate](#class-projectsettings-property-input-ui-graph-duplicate) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_graph\_follow\_left](#class-projectsettings-property-input-ui-graph-follow-left) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_graph\_follow\_left.macos](#class-projectsettings-property-input-ui-graph-follow-left-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_graph\_follow\_right](#class-projectsettings-property-input-ui-graph-follow-right) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_graph\_follow\_right.macos](#class-projectsettings-property-input-ui-graph-follow-right-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_home](#class-projectsettings-property-input-ui-home) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_left](#class-projectsettings-property-input-ui-left) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_menu](#class-projectsettings-property-input-ui-menu) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_page\_down](#class-projectsettings-property-input-ui-page-down) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_page\_up](#class-projectsettings-property-input-ui-page-up) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_paste](#class-projectsettings-property-input-ui-paste) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_redo](#class-projectsettings-property-input-ui-redo) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_right](#class-projectsettings-property-input-ui-right) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_select](#class-projectsettings-property-input-ui-select) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_swap\_input\_direction](#class-projectsettings-property-input-ui-swap-input-direction) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_add\_selection\_for\_next\_occurrence](#class-projectsettings-property-input-ui-text-add-selection-for-next-occurrence) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_backspace](#class-projectsettings-property-input-ui-text-backspace) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_backspace\_all\_to\_left](#class-projectsettings-property-input-ui-text-backspace-all-to-left) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_backspace\_all\_to\_left.macos](#class-projectsettings-property-input-ui-text-backspace-all-to-left-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_backspace\_word](#class-projectsettings-property-input-ui-text-backspace-word) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_backspace\_word.macos](#class-projectsettings-property-input-ui-text-backspace-word-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_add\_above](#class-projectsettings-property-input-ui-text-caret-add-above) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_add\_above.macos](#class-projectsettings-property-input-ui-text-caret-add-above-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_add\_below](#class-projectsettings-property-input-ui-text-caret-add-below) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_add\_below.macos](#class-projectsettings-property-input-ui-text-caret-add-below-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_document\_end](#class-projectsettings-property-input-ui-text-caret-document-end) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_document\_end.macos](#class-projectsettings-property-input-ui-text-caret-document-end-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_document\_start](#class-projectsettings-property-input-ui-text-caret-document-start) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_document\_start.macos](#class-projectsettings-property-input-ui-text-caret-document-start-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_down](#class-projectsettings-property-input-ui-text-caret-down) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_left](#class-projectsettings-property-input-ui-text-caret-left) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_line\_end](#class-projectsettings-property-input-ui-text-caret-line-end) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_line\_end.macos](#class-projectsettings-property-input-ui-text-caret-line-end-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_line\_start](#class-projectsettings-property-input-ui-text-caret-line-start) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_line\_start.macos](#class-projectsettings-property-input-ui-text-caret-line-start-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_page\_down](#class-projectsettings-property-input-ui-text-caret-page-down) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_page\_up](#class-projectsettings-property-input-ui-text-caret-page-up) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_right](#class-projectsettings-property-input-ui-text-caret-right) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_up](#class-projectsettings-property-input-ui-text-caret-up) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_word\_left](#class-projectsettings-property-input-ui-text-caret-word-left) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_word\_left.macos](#class-projectsettings-property-input-ui-text-caret-word-left-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_word\_right](#class-projectsettings-property-input-ui-text-caret-word-right) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_caret\_word\_right.macos](#class-projectsettings-property-input-ui-text-caret-word-right-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_clear\_carets\_and\_selection](#class-projectsettings-property-input-ui-text-clear-carets-and-selection) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_completion\_accept](#class-projectsettings-property-input-ui-text-completion-accept) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_completion\_query](#class-projectsettings-property-input-ui-text-completion-query) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_completion\_replace](#class-projectsettings-property-input-ui-text-completion-replace) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_dedent](#class-projectsettings-property-input-ui-text-dedent) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_delete](#class-projectsettings-property-input-ui-text-delete) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_delete\_all\_to\_right](#class-projectsettings-property-input-ui-text-delete-all-to-right) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_delete\_all\_to\_right.macos](#class-projectsettings-property-input-ui-text-delete-all-to-right-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_delete\_word](#class-projectsettings-property-input-ui-text-delete-word) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_delete\_word.macos](#class-projectsettings-property-input-ui-text-delete-word-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_indent](#class-projectsettings-property-input-ui-text-indent) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_newline](#class-projectsettings-property-input-ui-text-newline) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_newline\_above](#class-projectsettings-property-input-ui-text-newline-above) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_newline\_blank](#class-projectsettings-property-input-ui-text-newline-blank) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_scroll\_down](#class-projectsettings-property-input-ui-text-scroll-down) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_scroll\_down.macos](#class-projectsettings-property-input-ui-text-scroll-down-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_scroll\_up](#class-projectsettings-property-input-ui-text-scroll-up) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_scroll\_up.macos](#class-projectsettings-property-input-ui-text-scroll-up-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_select\_all](#class-projectsettings-property-input-ui-text-select-all) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_select\_word\_under\_caret](#class-projectsettings-property-input-ui-text-select-word-under-caret) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_select\_word\_under\_caret.macos](#class-projectsettings-property-input-ui-text-select-word-under-caret-macos) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_skip\_selection\_for\_next\_occurrence](#class-projectsettings-property-input-ui-text-skip-selection-for-next-occurrence) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_submit](#class-projectsettings-property-input-ui-text-submit) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_text\_toggle\_insert\_mode](#class-projectsettings-property-input-ui-text-toggle-insert-mode) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_undo](#class-projectsettings-property-input-ui-undo) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_unicode\_start](#class-projectsettings-property-input-ui-unicode-start) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [input/ui\_up](#class-projectsettings-property-input-ui-up) |  |
| [bool](class_bool.md#class-bool) | [input\_devices/buffering/agile\_event\_flushing](#class-projectsettings-property-input-devices-buffering-agile-event-flushing) | `false` |
| [bool](class_bool.md#class-bool) | [input\_devices/compatibility/legacy\_just\_pressed\_behavior](#class-projectsettings-property-input-devices-compatibility-legacy-just-pressed-behavior) | `false` |
| [String](class_string.md#class-string) | [input\_devices/pen\_tablet/driver](#class-projectsettings-property-input-devices-pen-tablet-driver) |  |
| [String](class_string.md#class-string) | [input\_devices/pen\_tablet/driver.windows](#class-projectsettings-property-input-devices-pen-tablet-driver-windows) |  |
| [bool](class_bool.md#class-bool) | [input\_devices/pointing/android/disable\_scroll\_deadzone](#class-projectsettings-property-input-devices-pointing-android-disable-scroll-deadzone) | `false` |
| [bool](class_bool.md#class-bool) | [input\_devices/pointing/android/enable\_long\_press\_as\_right\_click](#class-projectsettings-property-input-devices-pointing-android-enable-long-press-as-right-click) | `false` |
| [bool](class_bool.md#class-bool) | [input\_devices/pointing/android/enable\_pan\_and\_scale\_gestures](#class-projectsettings-property-input-devices-pointing-android-enable-pan-and-scale-gestures) | `false` |
| [bool](class_bool.md#class-bool) | [input\_devices/pointing/android/override\_volume\_buttons](#class-projectsettings-property-input-devices-pointing-android-override-volume-buttons) | `false` |
| [int](class_int.md#class-int) | [input\_devices/pointing/android/rotary\_input\_scroll\_axis](#class-projectsettings-property-input-devices-pointing-android-rotary-input-scroll-axis) | `1` |
| [bool](class_bool.md#class-bool) | [input\_devices/pointing/emulate\_mouse\_from\_touch](#class-projectsettings-property-input-devices-pointing-emulate-mouse-from-touch) | `true` |
| [bool](class_bool.md#class-bool) | [input\_devices/pointing/emulate\_touch\_from\_mouse](#class-projectsettings-property-input-devices-pointing-emulate-touch-from-mouse) | `false` |
| [bool](class_bool.md#class-bool) | [input\_devices/sensors/enable\_accelerometer](#class-projectsettings-property-input-devices-sensors-enable-accelerometer) | `false` |
| [bool](class_bool.md#class-bool) | [input\_devices/sensors/enable\_gravity](#class-projectsettings-property-input-devices-sensors-enable-gravity) | `false` |
| [bool](class_bool.md#class-bool) | [input\_devices/sensors/enable\_gyroscope](#class-projectsettings-property-input-devices-sensors-enable-gyroscope) | `false` |
| [bool](class_bool.md#class-bool) | [input\_devices/sensors/enable\_magnetometer](#class-projectsettings-property-input-devices-sensors-enable-magnetometer) | `false` |
| [String](class_string.md#class-string) | [internationalization/locale/fallback](#class-projectsettings-property-internationalization-locale-fallback) | `"en"` |
| [bool](class_bool.md#class-bool) | [internationalization/locale/include\_text\_server\_data](#class-projectsettings-property-internationalization-locale-include-text-server-data) | `false` |
| [int](class_int.md#class-int) | [internationalization/locale/line\_breaking\_strictness](#class-projectsettings-property-internationalization-locale-line-breaking-strictness) | `0` |
| [String](class_string.md#class-string) | [internationalization/locale/test](#class-projectsettings-property-internationalization-locale-test) | `""` |
| [bool](class_bool.md#class-bool) | [internationalization/pseudolocalization/double\_vowels](#class-projectsettings-property-internationalization-pseudolocalization-double-vowels) | `false` |
| [float](class_float.md#class-float) | [internationalization/pseudolocalization/expansion\_ratio](#class-projectsettings-property-internationalization-pseudolocalization-expansion-ratio) | `0.0` |
| [bool](class_bool.md#class-bool) | [internationalization/pseudolocalization/fake\_bidi](#class-projectsettings-property-internationalization-pseudolocalization-fake-bidi) | `false` |
| [bool](class_bool.md#class-bool) | [internationalization/pseudolocalization/override](#class-projectsettings-property-internationalization-pseudolocalization-override) | `false` |
| [String](class_string.md#class-string) | [internationalization/pseudolocalization/prefix](#class-projectsettings-property-internationalization-pseudolocalization-prefix) | `"["` |
| [bool](class_bool.md#class-bool) | [internationalization/pseudolocalization/replace\_with\_accents](#class-projectsettings-property-internationalization-pseudolocalization-replace-with-accents) | `true` |
| [bool](class_bool.md#class-bool) | [internationalization/pseudolocalization/skip\_placeholders](#class-projectsettings-property-internationalization-pseudolocalization-skip-placeholders) | `true` |
| [String](class_string.md#class-string) | [internationalization/pseudolocalization/suffix](#class-projectsettings-property-internationalization-pseudolocalization-suffix) | `"]"` |
| [bool](class_bool.md#class-bool) | [internationalization/pseudolocalization/use\_pseudolocalization](#class-projectsettings-property-internationalization-pseudolocalization-use-pseudolocalization) | `false` |
| [bool](class_bool.md#class-bool) | [internationalization/rendering/force\_right\_to\_left\_layout\_direction](#class-projectsettings-property-internationalization-rendering-force-right-to-left-layout-direction) | `false` |
| [bool](class_bool.md#class-bool) | [internationalization/rendering/root\_node\_auto\_translate](#class-projectsettings-property-internationalization-rendering-root-node-auto-translate) | `true` |
| [int](class_int.md#class-int) | [internationalization/rendering/root\_node\_layout\_direction](#class-projectsettings-property-internationalization-rendering-root-node-layout-direction) | `0` |
| [String](class_string.md#class-string) | [internationalization/rendering/text\_driver](#class-projectsettings-property-internationalization-rendering-text-driver) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_1](#class-projectsettings-property-layer-names-2d-navigation-layer-1) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_2](#class-projectsettings-property-layer-names-2d-navigation-layer-2) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_3](#class-projectsettings-property-layer-names-2d-navigation-layer-3) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_4](#class-projectsettings-property-layer-names-2d-navigation-layer-4) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_5](#class-projectsettings-property-layer-names-2d-navigation-layer-5) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_6](#class-projectsettings-property-layer-names-2d-navigation-layer-6) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_7](#class-projectsettings-property-layer-names-2d-navigation-layer-7) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_8](#class-projectsettings-property-layer-names-2d-navigation-layer-8) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_9](#class-projectsettings-property-layer-names-2d-navigation-layer-9) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_10](#class-projectsettings-property-layer-names-2d-navigation-layer-10) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_11](#class-projectsettings-property-layer-names-2d-navigation-layer-11) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_12](#class-projectsettings-property-layer-names-2d-navigation-layer-12) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_13](#class-projectsettings-property-layer-names-2d-navigation-layer-13) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_14](#class-projectsettings-property-layer-names-2d-navigation-layer-14) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_15](#class-projectsettings-property-layer-names-2d-navigation-layer-15) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_16](#class-projectsettings-property-layer-names-2d-navigation-layer-16) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_17](#class-projectsettings-property-layer-names-2d-navigation-layer-17) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_18](#class-projectsettings-property-layer-names-2d-navigation-layer-18) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_19](#class-projectsettings-property-layer-names-2d-navigation-layer-19) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_20](#class-projectsettings-property-layer-names-2d-navigation-layer-20) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_21](#class-projectsettings-property-layer-names-2d-navigation-layer-21) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_22](#class-projectsettings-property-layer-names-2d-navigation-layer-22) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_23](#class-projectsettings-property-layer-names-2d-navigation-layer-23) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_24](#class-projectsettings-property-layer-names-2d-navigation-layer-24) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_25](#class-projectsettings-property-layer-names-2d-navigation-layer-25) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_26](#class-projectsettings-property-layer-names-2d-navigation-layer-26) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_27](#class-projectsettings-property-layer-names-2d-navigation-layer-27) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_28](#class-projectsettings-property-layer-names-2d-navigation-layer-28) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_29](#class-projectsettings-property-layer-names-2d-navigation-layer-29) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_30](#class-projectsettings-property-layer-names-2d-navigation-layer-30) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_31](#class-projectsettings-property-layer-names-2d-navigation-layer-31) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_navigation/layer\_32](#class-projectsettings-property-layer-names-2d-navigation-layer-32) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_1](#class-projectsettings-property-layer-names-2d-physics-layer-1) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_2](#class-projectsettings-property-layer-names-2d-physics-layer-2) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_3](#class-projectsettings-property-layer-names-2d-physics-layer-3) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_4](#class-projectsettings-property-layer-names-2d-physics-layer-4) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_5](#class-projectsettings-property-layer-names-2d-physics-layer-5) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_6](#class-projectsettings-property-layer-names-2d-physics-layer-6) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_7](#class-projectsettings-property-layer-names-2d-physics-layer-7) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_8](#class-projectsettings-property-layer-names-2d-physics-layer-8) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_9](#class-projectsettings-property-layer-names-2d-physics-layer-9) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_10](#class-projectsettings-property-layer-names-2d-physics-layer-10) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_11](#class-projectsettings-property-layer-names-2d-physics-layer-11) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_12](#class-projectsettings-property-layer-names-2d-physics-layer-12) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_13](#class-projectsettings-property-layer-names-2d-physics-layer-13) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_14](#class-projectsettings-property-layer-names-2d-physics-layer-14) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_15](#class-projectsettings-property-layer-names-2d-physics-layer-15) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_16](#class-projectsettings-property-layer-names-2d-physics-layer-16) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_17](#class-projectsettings-property-layer-names-2d-physics-layer-17) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_18](#class-projectsettings-property-layer-names-2d-physics-layer-18) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_19](#class-projectsettings-property-layer-names-2d-physics-layer-19) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_20](#class-projectsettings-property-layer-names-2d-physics-layer-20) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_21](#class-projectsettings-property-layer-names-2d-physics-layer-21) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_22](#class-projectsettings-property-layer-names-2d-physics-layer-22) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_23](#class-projectsettings-property-layer-names-2d-physics-layer-23) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_24](#class-projectsettings-property-layer-names-2d-physics-layer-24) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_25](#class-projectsettings-property-layer-names-2d-physics-layer-25) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_26](#class-projectsettings-property-layer-names-2d-physics-layer-26) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_27](#class-projectsettings-property-layer-names-2d-physics-layer-27) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_28](#class-projectsettings-property-layer-names-2d-physics-layer-28) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_29](#class-projectsettings-property-layer-names-2d-physics-layer-29) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_30](#class-projectsettings-property-layer-names-2d-physics-layer-30) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_31](#class-projectsettings-property-layer-names-2d-physics-layer-31) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_physics/layer\_32](#class-projectsettings-property-layer-names-2d-physics-layer-32) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_1](#class-projectsettings-property-layer-names-2d-render-layer-1) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_2](#class-projectsettings-property-layer-names-2d-render-layer-2) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_3](#class-projectsettings-property-layer-names-2d-render-layer-3) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_4](#class-projectsettings-property-layer-names-2d-render-layer-4) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_5](#class-projectsettings-property-layer-names-2d-render-layer-5) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_6](#class-projectsettings-property-layer-names-2d-render-layer-6) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_7](#class-projectsettings-property-layer-names-2d-render-layer-7) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_8](#class-projectsettings-property-layer-names-2d-render-layer-8) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_9](#class-projectsettings-property-layer-names-2d-render-layer-9) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_10](#class-projectsettings-property-layer-names-2d-render-layer-10) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_11](#class-projectsettings-property-layer-names-2d-render-layer-11) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_12](#class-projectsettings-property-layer-names-2d-render-layer-12) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_13](#class-projectsettings-property-layer-names-2d-render-layer-13) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_14](#class-projectsettings-property-layer-names-2d-render-layer-14) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_15](#class-projectsettings-property-layer-names-2d-render-layer-15) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_16](#class-projectsettings-property-layer-names-2d-render-layer-16) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_17](#class-projectsettings-property-layer-names-2d-render-layer-17) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_18](#class-projectsettings-property-layer-names-2d-render-layer-18) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_19](#class-projectsettings-property-layer-names-2d-render-layer-19) | `""` |
| [String](class_string.md#class-string) | [layer\_names/2d\_render/layer\_20](#class-projectsettings-property-layer-names-2d-render-layer-20) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_1](#class-projectsettings-property-layer-names-3d-navigation-layer-1) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_2](#class-projectsettings-property-layer-names-3d-navigation-layer-2) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_3](#class-projectsettings-property-layer-names-3d-navigation-layer-3) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_4](#class-projectsettings-property-layer-names-3d-navigation-layer-4) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_5](#class-projectsettings-property-layer-names-3d-navigation-layer-5) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_6](#class-projectsettings-property-layer-names-3d-navigation-layer-6) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_7](#class-projectsettings-property-layer-names-3d-navigation-layer-7) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_8](#class-projectsettings-property-layer-names-3d-navigation-layer-8) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_9](#class-projectsettings-property-layer-names-3d-navigation-layer-9) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_10](#class-projectsettings-property-layer-names-3d-navigation-layer-10) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_11](#class-projectsettings-property-layer-names-3d-navigation-layer-11) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_12](#class-projectsettings-property-layer-names-3d-navigation-layer-12) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_13](#class-projectsettings-property-layer-names-3d-navigation-layer-13) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_14](#class-projectsettings-property-layer-names-3d-navigation-layer-14) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_15](#class-projectsettings-property-layer-names-3d-navigation-layer-15) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_16](#class-projectsettings-property-layer-names-3d-navigation-layer-16) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_17](#class-projectsettings-property-layer-names-3d-navigation-layer-17) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_18](#class-projectsettings-property-layer-names-3d-navigation-layer-18) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_19](#class-projectsettings-property-layer-names-3d-navigation-layer-19) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_20](#class-projectsettings-property-layer-names-3d-navigation-layer-20) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_21](#class-projectsettings-property-layer-names-3d-navigation-layer-21) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_22](#class-projectsettings-property-layer-names-3d-navigation-layer-22) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_23](#class-projectsettings-property-layer-names-3d-navigation-layer-23) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_24](#class-projectsettings-property-layer-names-3d-navigation-layer-24) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_25](#class-projectsettings-property-layer-names-3d-navigation-layer-25) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_26](#class-projectsettings-property-layer-names-3d-navigation-layer-26) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_27](#class-projectsettings-property-layer-names-3d-navigation-layer-27) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_28](#class-projectsettings-property-layer-names-3d-navigation-layer-28) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_29](#class-projectsettings-property-layer-names-3d-navigation-layer-29) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_30](#class-projectsettings-property-layer-names-3d-navigation-layer-30) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_31](#class-projectsettings-property-layer-names-3d-navigation-layer-31) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_navigation/layer\_32](#class-projectsettings-property-layer-names-3d-navigation-layer-32) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_1](#class-projectsettings-property-layer-names-3d-physics-layer-1) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_2](#class-projectsettings-property-layer-names-3d-physics-layer-2) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_3](#class-projectsettings-property-layer-names-3d-physics-layer-3) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_4](#class-projectsettings-property-layer-names-3d-physics-layer-4) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_5](#class-projectsettings-property-layer-names-3d-physics-layer-5) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_6](#class-projectsettings-property-layer-names-3d-physics-layer-6) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_7](#class-projectsettings-property-layer-names-3d-physics-layer-7) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_8](#class-projectsettings-property-layer-names-3d-physics-layer-8) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_9](#class-projectsettings-property-layer-names-3d-physics-layer-9) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_10](#class-projectsettings-property-layer-names-3d-physics-layer-10) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_11](#class-projectsettings-property-layer-names-3d-physics-layer-11) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_12](#class-projectsettings-property-layer-names-3d-physics-layer-12) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_13](#class-projectsettings-property-layer-names-3d-physics-layer-13) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_14](#class-projectsettings-property-layer-names-3d-physics-layer-14) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_15](#class-projectsettings-property-layer-names-3d-physics-layer-15) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_16](#class-projectsettings-property-layer-names-3d-physics-layer-16) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_17](#class-projectsettings-property-layer-names-3d-physics-layer-17) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_18](#class-projectsettings-property-layer-names-3d-physics-layer-18) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_19](#class-projectsettings-property-layer-names-3d-physics-layer-19) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_20](#class-projectsettings-property-layer-names-3d-physics-layer-20) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_21](#class-projectsettings-property-layer-names-3d-physics-layer-21) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_22](#class-projectsettings-property-layer-names-3d-physics-layer-22) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_23](#class-projectsettings-property-layer-names-3d-physics-layer-23) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_24](#class-projectsettings-property-layer-names-3d-physics-layer-24) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_25](#class-projectsettings-property-layer-names-3d-physics-layer-25) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_26](#class-projectsettings-property-layer-names-3d-physics-layer-26) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_27](#class-projectsettings-property-layer-names-3d-physics-layer-27) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_28](#class-projectsettings-property-layer-names-3d-physics-layer-28) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_29](#class-projectsettings-property-layer-names-3d-physics-layer-29) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_30](#class-projectsettings-property-layer-names-3d-physics-layer-30) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_31](#class-projectsettings-property-layer-names-3d-physics-layer-31) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_physics/layer\_32](#class-projectsettings-property-layer-names-3d-physics-layer-32) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_1](#class-projectsettings-property-layer-names-3d-render-layer-1) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_2](#class-projectsettings-property-layer-names-3d-render-layer-2) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_3](#class-projectsettings-property-layer-names-3d-render-layer-3) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_4](#class-projectsettings-property-layer-names-3d-render-layer-4) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_5](#class-projectsettings-property-layer-names-3d-render-layer-5) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_6](#class-projectsettings-property-layer-names-3d-render-layer-6) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_7](#class-projectsettings-property-layer-names-3d-render-layer-7) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_8](#class-projectsettings-property-layer-names-3d-render-layer-8) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_9](#class-projectsettings-property-layer-names-3d-render-layer-9) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_10](#class-projectsettings-property-layer-names-3d-render-layer-10) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_11](#class-projectsettings-property-layer-names-3d-render-layer-11) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_12](#class-projectsettings-property-layer-names-3d-render-layer-12) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_13](#class-projectsettings-property-layer-names-3d-render-layer-13) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_14](#class-projectsettings-property-layer-names-3d-render-layer-14) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_15](#class-projectsettings-property-layer-names-3d-render-layer-15) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_16](#class-projectsettings-property-layer-names-3d-render-layer-16) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_17](#class-projectsettings-property-layer-names-3d-render-layer-17) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_18](#class-projectsettings-property-layer-names-3d-render-layer-18) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_19](#class-projectsettings-property-layer-names-3d-render-layer-19) | `""` |
| [String](class_string.md#class-string) | [layer\_names/3d\_render/layer\_20](#class-projectsettings-property-layer-names-3d-render-layer-20) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_1](#class-projectsettings-property-layer-names-avoidance-layer-1) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_2](#class-projectsettings-property-layer-names-avoidance-layer-2) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_3](#class-projectsettings-property-layer-names-avoidance-layer-3) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_4](#class-projectsettings-property-layer-names-avoidance-layer-4) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_5](#class-projectsettings-property-layer-names-avoidance-layer-5) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_6](#class-projectsettings-property-layer-names-avoidance-layer-6) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_7](#class-projectsettings-property-layer-names-avoidance-layer-7) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_8](#class-projectsettings-property-layer-names-avoidance-layer-8) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_9](#class-projectsettings-property-layer-names-avoidance-layer-9) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_10](#class-projectsettings-property-layer-names-avoidance-layer-10) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_11](#class-projectsettings-property-layer-names-avoidance-layer-11) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_12](#class-projectsettings-property-layer-names-avoidance-layer-12) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_13](#class-projectsettings-property-layer-names-avoidance-layer-13) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_14](#class-projectsettings-property-layer-names-avoidance-layer-14) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_15](#class-projectsettings-property-layer-names-avoidance-layer-15) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_16](#class-projectsettings-property-layer-names-avoidance-layer-16) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_17](#class-projectsettings-property-layer-names-avoidance-layer-17) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_18](#class-projectsettings-property-layer-names-avoidance-layer-18) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_19](#class-projectsettings-property-layer-names-avoidance-layer-19) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_20](#class-projectsettings-property-layer-names-avoidance-layer-20) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_21](#class-projectsettings-property-layer-names-avoidance-layer-21) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_22](#class-projectsettings-property-layer-names-avoidance-layer-22) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_23](#class-projectsettings-property-layer-names-avoidance-layer-23) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_24](#class-projectsettings-property-layer-names-avoidance-layer-24) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_25](#class-projectsettings-property-layer-names-avoidance-layer-25) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_26](#class-projectsettings-property-layer-names-avoidance-layer-26) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_27](#class-projectsettings-property-layer-names-avoidance-layer-27) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_28](#class-projectsettings-property-layer-names-avoidance-layer-28) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_29](#class-projectsettings-property-layer-names-avoidance-layer-29) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_30](#class-projectsettings-property-layer-names-avoidance-layer-30) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_31](#class-projectsettings-property-layer-names-avoidance-layer-31) | `""` |
| [String](class_string.md#class-string) | [layer\_names/avoidance/layer\_32](#class-projectsettings-property-layer-names-avoidance-layer-32) | `""` |
| [int](class_int.md#class-int) | [memory/limits/message\_queue/max\_size\_mb](#class-projectsettings-property-memory-limits-message-queue-max-size-mb) | `32` |
| [float](class_float.md#class-float) | [navigation/2d/default\_cell\_size](#class-projectsettings-property-navigation-2d-default-cell-size) | `1.0` |
| [float](class_float.md#class-float) | [navigation/2d/default\_edge\_connection\_margin](#class-projectsettings-property-navigation-2d-default-edge-connection-margin) | `1.0` |
| [float](class_float.md#class-float) | [navigation/2d/default\_link\_connection\_radius](#class-projectsettings-property-navigation-2d-default-link-connection-radius) | `4.0` |
| [float](class_float.md#class-float) | [navigation/2d/merge\_rasterizer\_cell\_scale](#class-projectsettings-property-navigation-2d-merge-rasterizer-cell-scale) | `1.0` |
| [bool](class_bool.md#class-bool) | [navigation/2d/use\_edge\_connections](#class-projectsettings-property-navigation-2d-use-edge-connections) | `true` |
| [bool](class_bool.md#class-bool) | [navigation/2d/warnings/navmesh\_cell\_size\_mismatch](#class-projectsettings-property-navigation-2d-warnings-navmesh-cell-size-mismatch) | `true` |
| [bool](class_bool.md#class-bool) | [navigation/2d/warnings/navmesh\_edge\_merge\_errors](#class-projectsettings-property-navigation-2d-warnings-navmesh-edge-merge-errors) | `true` |
| [float](class_float.md#class-float) | [navigation/3d/default\_cell\_height](#class-projectsettings-property-navigation-3d-default-cell-height) | `0.25` |
| [float](class_float.md#class-float) | [navigation/3d/default\_cell\_size](#class-projectsettings-property-navigation-3d-default-cell-size) | `0.25` |
| [float](class_float.md#class-float) | [navigation/3d/default\_edge\_connection\_margin](#class-projectsettings-property-navigation-3d-default-edge-connection-margin) | `0.25` |
| [float](class_float.md#class-float) | [navigation/3d/default\_link\_connection\_radius](#class-projectsettings-property-navigation-3d-default-link-connection-radius) | `1.0` |
| [Vector3](class_vector3.md#class-vector3) | [navigation/3d/default\_up](#class-projectsettings-property-navigation-3d-default-up) | `Vector3(0, 1, 0)` |
| [float](class_float.md#class-float) | [navigation/3d/merge\_rasterizer\_cell\_scale](#class-projectsettings-property-navigation-3d-merge-rasterizer-cell-scale) | `1.0` |
| [bool](class_bool.md#class-bool) | [navigation/3d/use\_edge\_connections](#class-projectsettings-property-navigation-3d-use-edge-connections) | `true` |
| [bool](class_bool.md#class-bool) | [navigation/3d/warnings/navmesh\_cell\_size\_mismatch](#class-projectsettings-property-navigation-3d-warnings-navmesh-cell-size-mismatch) | `true` |
| [bool](class_bool.md#class-bool) | [navigation/3d/warnings/navmesh\_edge\_merge\_errors](#class-projectsettings-property-navigation-3d-warnings-navmesh-edge-merge-errors) | `true` |
| [bool](class_bool.md#class-bool) | [navigation/avoidance/thread\_model/avoidance\_use\_high\_priority\_threads](#class-projectsettings-property-navigation-avoidance-thread-model-avoidance-use-high-priority-threads) | `true` |
| [bool](class_bool.md#class-bool) | [navigation/avoidance/thread\_model/avoidance\_use\_multiple\_threads](#class-projectsettings-property-navigation-avoidance-thread-model-avoidance-use-multiple-threads) | `true` |
| [bool](class_bool.md#class-bool) | [navigation/baking/thread\_model/baking\_use\_high\_priority\_threads](#class-projectsettings-property-navigation-baking-thread-model-baking-use-high-priority-threads) | `true` |
| [bool](class_bool.md#class-bool) | [navigation/baking/thread\_model/baking\_use\_multiple\_threads](#class-projectsettings-property-navigation-baking-thread-model-baking-use-multiple-threads) | `true` |
| [bool](class_bool.md#class-bool) | [navigation/baking/use\_crash\_prevention\_checks](#class-projectsettings-property-navigation-baking-use-crash-prevention-checks) | `true` |
| [int](class_int.md#class-int) | [navigation/pathfinding/max\_threads](#class-projectsettings-property-navigation-pathfinding-max-threads) | `4` |
| [bool](class_bool.md#class-bool) | [navigation/world/map\_use\_async\_iterations](#class-projectsettings-property-navigation-world-map-use-async-iterations) | `true` |
| [bool](class_bool.md#class-bool) | [navigation/world/region\_use\_async\_iterations](#class-projectsettings-property-navigation-world-region-use-async-iterations) | `true` |
| [int](class_int.md#class-int) | [network/limits/debugger/max\_chars\_per\_second](#class-projectsettings-property-network-limits-debugger-max-chars-per-second) | `32768` |
| [int](class_int.md#class-int) | [network/limits/debugger/max\_errors\_per\_second](#class-projectsettings-property-network-limits-debugger-max-errors-per-second) | `400` |
| [int](class_int.md#class-int) | [network/limits/debugger/max\_queued\_messages](#class-projectsettings-property-network-limits-debugger-max-queued-messages) | `2048` |
| [int](class_int.md#class-int) | [network/limits/debugger/max\_warnings\_per\_second](#class-projectsettings-property-network-limits-debugger-max-warnings-per-second) | `400` |
| [int](class_int.md#class-int) | [network/limits/packet\_peer\_stream/max\_buffer\_po2](#class-projectsettings-property-network-limits-packet-peer-stream-max-buffer-po2) | `16` |
| [int](class_int.md#class-int) | [network/limits/tcp/connect\_timeout\_seconds](#class-projectsettings-property-network-limits-tcp-connect-timeout-seconds) | `30` |
| [int](class_int.md#class-int) | [network/limits/webrtc/max\_channel\_in\_buffer\_kb](#class-projectsettings-property-network-limits-webrtc-max-channel-in-buffer-kb) | `64` |
| [String](class_string.md#class-string) | [network/tls/certificate\_bundle\_override](#class-projectsettings-property-network-tls-certificate-bundle-override) | `""` |
| [bool](class_bool.md#class-bool) | [network/tls/enable\_tls\_v1.3](#class-projectsettings-property-network-tls-enable-tls-v1-3) | `true` |
| [float](class_float.md#class-float) | [physics/2d/default\_angular\_damp](#class-projectsettings-property-physics-2d-default-angular-damp) | `1.0` |
| [float](class_float.md#class-float) | [physics/2d/default\_gravity](#class-projectsettings-property-physics-2d-default-gravity) | `980.0` |
| [Vector2](class_vector2.md#class-vector2) | [physics/2d/default\_gravity\_vector](#class-projectsettings-property-physics-2d-default-gravity-vector) | `Vector2(0, 1)` |
| [float](class_float.md#class-float) | [physics/2d/default\_linear\_damp](#class-projectsettings-property-physics-2d-default-linear-damp) | `0.1` |
| [String](class_string.md#class-string) | [physics/2d/physics\_engine](#class-projectsettings-property-physics-2d-physics-engine) | `"DEFAULT"` |
| [bool](class_bool.md#class-bool) | [physics/2d/run\_on\_separate\_thread](#class-projectsettings-property-physics-2d-run-on-separate-thread) | `false` |
| [float](class_float.md#class-float) | [physics/2d/sleep\_threshold\_angular](#class-projectsettings-property-physics-2d-sleep-threshold-angular) | `0.13962634` |
| [float](class_float.md#class-float) | [physics/2d/sleep\_threshold\_linear](#class-projectsettings-property-physics-2d-sleep-threshold-linear) | `2.0` |
| [float](class_float.md#class-float) | [physics/2d/solver/contact\_max\_allowed\_penetration](#class-projectsettings-property-physics-2d-solver-contact-max-allowed-penetration) | `0.3` |
| [float](class_float.md#class-float) | [physics/2d/solver/contact\_max\_separation](#class-projectsettings-property-physics-2d-solver-contact-max-separation) | `1.5` |
| [float](class_float.md#class-float) | [physics/2d/solver/contact\_recycle\_radius](#class-projectsettings-property-physics-2d-solver-contact-recycle-radius) | `1.0` |
| [float](class_float.md#class-float) | [physics/2d/solver/default\_constraint\_bias](#class-projectsettings-property-physics-2d-solver-default-constraint-bias) | `0.2` |
| [float](class_float.md#class-float) | [physics/2d/solver/default\_contact\_bias](#class-projectsettings-property-physics-2d-solver-default-contact-bias) | `0.8` |
| [int](class_int.md#class-int) | [physics/2d/solver/solver\_iterations](#class-projectsettings-property-physics-2d-solver-solver-iterations) | `16` |
| [float](class_float.md#class-float) | [physics/2d/time\_before\_sleep](#class-projectsettings-property-physics-2d-time-before-sleep) | `0.5` |
| [float](class_float.md#class-float) | [physics/3d/default\_angular\_damp](#class-projectsettings-property-physics-3d-default-angular-damp) | `0.1` |
| [float](class_float.md#class-float) | [physics/3d/default\_gravity](#class-projectsettings-property-physics-3d-default-gravity) | `9.8` |
| [Vector3](class_vector3.md#class-vector3) | [physics/3d/default\_gravity\_vector](#class-projectsettings-property-physics-3d-default-gravity-vector) | `Vector3(0, -1, 0)` |
| [float](class_float.md#class-float) | [physics/3d/default\_linear\_damp](#class-projectsettings-property-physics-3d-default-linear-damp) | `0.1` |
| [String](class_string.md#class-string) | [physics/3d/physics\_engine](#class-projectsettings-property-physics-3d-physics-engine) | `"DEFAULT"` |
| [String](class_string.md#class-string) | [physics/3d/physics\_interpolation/scene\_traversal](#class-projectsettings-property-physics-3d-physics-interpolation-scene-traversal) | `"DEFAULT"` |
| [bool](class_bool.md#class-bool) | [physics/3d/run\_on\_separate\_thread](#class-projectsettings-property-physics-3d-run-on-separate-thread) | `false` |
| [float](class_float.md#class-float) | [physics/3d/sleep\_threshold\_angular](#class-projectsettings-property-physics-3d-sleep-threshold-angular) | `0.13962634` |
| [float](class_float.md#class-float) | [physics/3d/sleep\_threshold\_linear](#class-projectsettings-property-physics-3d-sleep-threshold-linear) | `0.1` |
| [float](class_float.md#class-float) | [physics/3d/solver/contact\_max\_allowed\_penetration](#class-projectsettings-property-physics-3d-solver-contact-max-allowed-penetration) | `0.01` |
| [float](class_float.md#class-float) | [physics/3d/solver/contact\_max\_separation](#class-projectsettings-property-physics-3d-solver-contact-max-separation) | `0.05` |
| [float](class_float.md#class-float) | [physics/3d/solver/contact\_recycle\_radius](#class-projectsettings-property-physics-3d-solver-contact-recycle-radius) | `0.01` |
| [float](class_float.md#class-float) | [physics/3d/solver/default\_contact\_bias](#class-projectsettings-property-physics-3d-solver-default-contact-bias) | `0.8` |
| [int](class_int.md#class-int) | [physics/3d/solver/solver\_iterations](#class-projectsettings-property-physics-3d-solver-solver-iterations) | `16` |
| [float](class_float.md#class-float) | [physics/3d/time\_before\_sleep](#class-projectsettings-property-physics-3d-time-before-sleep) | `0.5` |
| [bool](class_bool.md#class-bool) | [physics/common/enable\_object\_picking](#class-projectsettings-property-physics-common-enable-object-picking) | `true` |
| [int](class_int.md#class-int) | [physics/common/max\_physics\_steps\_per\_frame](#class-projectsettings-property-physics-common-max-physics-steps-per-frame) | `8` |
| [bool](class_bool.md#class-bool) | [physics/common/physics\_interpolation](#class-projectsettings-property-physics-common-physics-interpolation) | `false` |
| [float](class_float.md#class-float) | [physics/common/physics\_jitter\_fix](#class-projectsettings-property-physics-common-physics-jitter-fix) | `0.5` |
| [int](class_int.md#class-int) | [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second) | `60` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/collisions/active\_edge\_threshold](#class-projectsettings-property-physics-jolt-physics-3d-collisions-active-edge-threshold) | `0.87266463` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/collisions/collision\_margin\_fraction](#class-projectsettings-property-physics-jolt-physics-3d-collisions-collision-margin-fraction) | `0.08` |
| [int](class_int.md#class-int) | [physics/jolt\_physics\_3d/joints/world\_node](#class-projectsettings-property-physics-jolt-physics-3d-joints-world-node) | `0` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/limits/max\_angular\_velocity](#class-projectsettings-property-physics-jolt-physics-3d-limits-max-angular-velocity) | `47.12389` |
| [int](class_int.md#class-int) | [physics/jolt\_physics\_3d/limits/max\_bodies](#class-projectsettings-property-physics-jolt-physics-3d-limits-max-bodies) | `10240` |
| [int](class_int.md#class-int) | [physics/jolt\_physics\_3d/limits/max\_body\_pairs](#class-projectsettings-property-physics-jolt-physics-3d-limits-max-body-pairs) | `65536` |
| [int](class_int.md#class-int) | [physics/jolt\_physics\_3d/limits/max\_contact\_constraints](#class-projectsettings-property-physics-jolt-physics-3d-limits-max-contact-constraints) | `20480` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/limits/max\_linear\_velocity](#class-projectsettings-property-physics-jolt-physics-3d-limits-max-linear-velocity) | `500.0` |
| [int](class_int.md#class-int) | [physics/jolt\_physics\_3d/limits/temporary\_memory\_buffer\_size](#class-projectsettings-property-physics-jolt-physics-3d-limits-temporary-memory-buffer-size) | `32` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/limits/world\_boundary\_shape\_size](#class-projectsettings-property-physics-jolt-physics-3d-limits-world-boundary-shape-size) | `2000.0` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/motion\_queries/recovery\_amount](#class-projectsettings-property-physics-jolt-physics-3d-motion-queries-recovery-amount) | `0.4` |
| [int](class_int.md#class-int) | [physics/jolt\_physics\_3d/motion\_queries/recovery\_iterations](#class-projectsettings-property-physics-jolt-physics-3d-motion-queries-recovery-iterations) | `4` |
| [bool](class_bool.md#class-bool) | [physics/jolt\_physics\_3d/motion\_queries/use\_enhanced\_internal\_edge\_removal](#class-projectsettings-property-physics-jolt-physics-3d-motion-queries-use-enhanced-internal-edge-removal) | `true` |
| [bool](class_bool.md#class-bool) | [physics/jolt\_physics\_3d/queries/enable\_ray\_cast\_face\_index](#class-projectsettings-property-physics-jolt-physics-3d-queries-enable-ray-cast-face-index) | `false` |
| [bool](class_bool.md#class-bool) | [physics/jolt\_physics\_3d/queries/use\_enhanced\_internal\_edge\_removal](#class-projectsettings-property-physics-jolt-physics-3d-queries-use-enhanced-internal-edge-removal) | `false` |
| [bool](class_bool.md#class-bool) | [physics/jolt\_physics\_3d/simulation/allow\_sleep](#class-projectsettings-property-physics-jolt-physics-3d-simulation-allow-sleep) | `true` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/baumgarte\_stabilization\_factor](#class-projectsettings-property-physics-jolt-physics-3d-simulation-baumgarte-stabilization-factor) | `0.2` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/body\_pair\_contact\_cache\_angle\_threshold](#class-projectsettings-property-physics-jolt-physics-3d-simulation-body-pair-contact-cache-angle-threshold) | `0.034906585` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/body\_pair\_contact\_cache\_distance\_threshold](#class-projectsettings-property-physics-jolt-physics-3d-simulation-body-pair-contact-cache-distance-threshold) | `0.001` |
| [bool](class_bool.md#class-bool) | [physics/jolt\_physics\_3d/simulation/body\_pair\_contact\_cache\_enabled](#class-projectsettings-property-physics-jolt-physics-3d-simulation-body-pair-contact-cache-enabled) | `true` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/bounce\_velocity\_threshold](#class-projectsettings-property-physics-jolt-physics-3d-simulation-bounce-velocity-threshold) | `1.0` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/continuous\_cd\_max\_penetration](#class-projectsettings-property-physics-jolt-physics-3d-simulation-continuous-cd-max-penetration) | `0.25` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/continuous\_cd\_movement\_threshold](#class-projectsettings-property-physics-jolt-physics-3d-simulation-continuous-cd-movement-threshold) | `0.75` |
| [bool](class_bool.md#class-bool) | [physics/jolt\_physics\_3d/simulation/generate\_all\_kinematic\_contacts](#class-projectsettings-property-physics-jolt-physics-3d-simulation-generate-all-kinematic-contacts) | `false` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/penetration\_slop](#class-projectsettings-property-physics-jolt-physics-3d-simulation-penetration-slop) | `0.02` |
| [int](class_int.md#class-int) | [physics/jolt\_physics\_3d/simulation/position\_steps](#class-projectsettings-property-physics-jolt-physics-3d-simulation-position-steps) | `2` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/sleep\_time\_threshold](#class-projectsettings-property-physics-jolt-physics-3d-simulation-sleep-time-threshold) | `0.5` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/sleep\_velocity\_threshold](#class-projectsettings-property-physics-jolt-physics-3d-simulation-sleep-velocity-threshold) | `0.03` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/soft\_body\_point\_radius](#class-projectsettings-property-physics-jolt-physics-3d-simulation-soft-body-point-radius) | `0.01` |
| [float](class_float.md#class-float) | [physics/jolt\_physics\_3d/simulation/speculative\_contact\_distance](#class-projectsettings-property-physics-jolt-physics-3d-simulation-speculative-contact-distance) | `0.02` |
| [bool](class_bool.md#class-bool) | [physics/jolt\_physics\_3d/simulation/use\_enhanced\_internal\_edge\_removal](#class-projectsettings-property-physics-jolt-physics-3d-simulation-use-enhanced-internal-edge-removal) | `true` |
| [int](class_int.md#class-int) | [physics/jolt\_physics\_3d/simulation/velocity\_steps](#class-projectsettings-property-physics-jolt-physics-3d-simulation-velocity-steps) | `10` |
| [int](class_int.md#class-int) | [rendering/2d/batching/item\_buffer\_size](#class-projectsettings-property-rendering-2d-batching-item-buffer-size) | `16384` |
| [int](class_int.md#class-int) | [rendering/2d/batching/uniform\_set\_cache\_size](#class-projectsettings-property-rendering-2d-batching-uniform-set-cache-size) | `4096` |
| [int](class_int.md#class-int) | [rendering/2d/sdf/oversize](#class-projectsettings-property-rendering-2d-sdf-oversize) | `1` |
| [int](class_int.md#class-int) | [rendering/2d/sdf/scale](#class-projectsettings-property-rendering-2d-sdf-scale) | `1` |
| [int](class_int.md#class-int) | [rendering/2d/shadow\_atlas/size](#class-projectsettings-property-rendering-2d-shadow-atlas-size) | `2048` |
| [bool](class_bool.md#class-bool) | [rendering/2d/snap/snap\_2d\_transforms\_to\_pixel](#class-projectsettings-property-rendering-2d-snap-snap-2d-transforms-to-pixel) | `false` |
| [bool](class_bool.md#class-bool) | [rendering/2d/snap/snap\_2d\_vertices\_to\_pixel](#class-projectsettings-property-rendering-2d-snap-snap-2d-vertices-to-pixel) | `false` |
| [int](class_int.md#class-int) | [rendering/anti\_aliasing/quality/msaa\_2d](#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-2d) | `0` |
| [int](class_int.md#class-int) | [rendering/anti\_aliasing/quality/msaa\_3d](#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-3d) | `0` |
| [int](class_int.md#class-int) | [rendering/anti\_aliasing/quality/screen\_space\_aa](#class-projectsettings-property-rendering-anti-aliasing-quality-screen-space-aa) | `0` |
| [float](class_float.md#class-float) | [rendering/anti\_aliasing/quality/smaa\_edge\_detection\_threshold](#class-projectsettings-property-rendering-anti-aliasing-quality-smaa-edge-detection-threshold) | `0.05` |
| [bool](class_bool.md#class-bool) | [rendering/anti\_aliasing/quality/use\_debanding](#class-projectsettings-property-rendering-anti-aliasing-quality-use-debanding) | `false` |
| [bool](class_bool.md#class-bool) | [rendering/anti\_aliasing/quality/use\_taa](#class-projectsettings-property-rendering-anti-aliasing-quality-use-taa) | `false` |
| [float](class_float.md#class-float) | [rendering/anti\_aliasing/screen\_space\_roughness\_limiter/amount](#class-projectsettings-property-rendering-anti-aliasing-screen-space-roughness-limiter-amount) | `0.25` |
| [bool](class_bool.md#class-bool) | [rendering/anti\_aliasing/screen\_space\_roughness\_limiter/enabled](#class-projectsettings-property-rendering-anti-aliasing-screen-space-roughness-limiter-enabled) | `true` |
| [float](class_float.md#class-float) | [rendering/anti\_aliasing/screen\_space\_roughness\_limiter/limit](#class-projectsettings-property-rendering-anti-aliasing-screen-space-roughness-limiter-limit) | `0.18` |
| [int](class_int.md#class-int) | [rendering/camera/depth\_of\_field/depth\_of\_field\_bokeh\_quality](#class-projectsettings-property-rendering-camera-depth-of-field-depth-of-field-bokeh-quality) | `1` |
| [int](class_int.md#class-int) | [rendering/camera/depth\_of\_field/depth\_of\_field\_bokeh\_shape](#class-projectsettings-property-rendering-camera-depth-of-field-depth-of-field-bokeh-shape) | `1` |
| [bool](class_bool.md#class-bool) | [rendering/camera/depth\_of\_field/depth\_of\_field\_use\_jitter](#class-projectsettings-property-rendering-camera-depth-of-field-depth-of-field-use-jitter) | `false` |
| [String](class_string.md#class-string) | [rendering/driver/depth\_prepass/disable\_for\_vendors](#class-projectsettings-property-rendering-driver-depth-prepass-disable-for-vendors) | `"PowerVR,Mali,Adreno,Apple"` |
| [bool](class_bool.md#class-bool) | [rendering/driver/depth\_prepass/enable](#class-projectsettings-property-rendering-driver-depth-prepass-enable) | `true` |
| [int](class_int.md#class-int) | [rendering/driver/threads/thread\_model](#class-projectsettings-property-rendering-driver-threads-thread-model) | `1` |
| [Color](class_color.md#class-color) | [rendering/environment/defaults/default\_clear\_color](#class-projectsettings-property-rendering-environment-defaults-default-clear-color) | `Color(0.3, 0.3, 0.3, 1)` |
| [String](class_string.md#class-string) | [rendering/environment/defaults/default\_environment](#class-projectsettings-property-rendering-environment-defaults-default-environment) | `""` |
| [int](class_int.md#class-int) | [rendering/environment/glow/upscale\_mode](#class-projectsettings-property-rendering-environment-glow-upscale-mode) | `1` |
| [int](class_int.md#class-int) | [rendering/environment/glow/upscale\_mode.mobile](#class-projectsettings-property-rendering-environment-glow-upscale-mode-mobile) | `0` |
| [int](class_int.md#class-int) | [rendering/environment/screen\_space\_reflection/roughness\_quality](#class-projectsettings-property-rendering-environment-screen-space-reflection-roughness-quality) | `1` |
| [float](class_float.md#class-float) | [rendering/environment/ssao/adaptive\_target](#class-projectsettings-property-rendering-environment-ssao-adaptive-target) | `0.5` |
| [int](class_int.md#class-int) | [rendering/environment/ssao/blur\_passes](#class-projectsettings-property-rendering-environment-ssao-blur-passes) | `2` |
| [float](class_float.md#class-float) | [rendering/environment/ssao/fadeout\_from](#class-projectsettings-property-rendering-environment-ssao-fadeout-from) | `50.0` |
| [float](class_float.md#class-float) | [rendering/environment/ssao/fadeout\_to](#class-projectsettings-property-rendering-environment-ssao-fadeout-to) | `300.0` |
| [bool](class_bool.md#class-bool) | [rendering/environment/ssao/half\_size](#class-projectsettings-property-rendering-environment-ssao-half-size) | `true` |
| [int](class_int.md#class-int) | [rendering/environment/ssao/quality](#class-projectsettings-property-rendering-environment-ssao-quality) | `2` |
| [float](class_float.md#class-float) | [rendering/environment/ssil/adaptive\_target](#class-projectsettings-property-rendering-environment-ssil-adaptive-target) | `0.5` |
| [int](class_int.md#class-int) | [rendering/environment/ssil/blur\_passes](#class-projectsettings-property-rendering-environment-ssil-blur-passes) | `4` |
| [float](class_float.md#class-float) | [rendering/environment/ssil/fadeout\_from](#class-projectsettings-property-rendering-environment-ssil-fadeout-from) | `50.0` |
| [float](class_float.md#class-float) | [rendering/environment/ssil/fadeout\_to](#class-projectsettings-property-rendering-environment-ssil-fadeout-to) | `300.0` |
| [bool](class_bool.md#class-bool) | [rendering/environment/ssil/half\_size](#class-projectsettings-property-rendering-environment-ssil-half-size) | `true` |
| [int](class_int.md#class-int) | [rendering/environment/ssil/quality](#class-projectsettings-property-rendering-environment-ssil-quality) | `2` |
| [float](class_float.md#class-float) | [rendering/environment/subsurface\_scattering/subsurface\_scattering\_depth\_scale](#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-depth-scale) | `0.01` |
| [int](class_int.md#class-int) | [rendering/environment/subsurface\_scattering/subsurface\_scattering\_quality](#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-quality) | `1` |
| [float](class_float.md#class-float) | [rendering/environment/subsurface\_scattering/subsurface\_scattering\_scale](#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-scale) | `0.05` |
| [int](class_int.md#class-int) | [rendering/environment/volumetric\_fog/use\_filter](#class-projectsettings-property-rendering-environment-volumetric-fog-use-filter) | `1` |
| [int](class_int.md#class-int) | [rendering/environment/volumetric\_fog/volume\_depth](#class-projectsettings-property-rendering-environment-volumetric-fog-volume-depth) | `64` |
| [int](class_int.md#class-int) | [rendering/environment/volumetric\_fog/volume\_size](#class-projectsettings-property-rendering-environment-volumetric-fog-volume-size) | `64` |
| [String](class_string.md#class-string) | [rendering/gl\_compatibility/driver](#class-projectsettings-property-rendering-gl-compatibility-driver) | `"opengl3"` |
| [String](class_string.md#class-string) | [rendering/gl\_compatibility/driver.android](#class-projectsettings-property-rendering-gl-compatibility-driver-android) | `"opengl3"` |
| [String](class_string.md#class-string) | [rendering/gl\_compatibility/driver.ios](#class-projectsettings-property-rendering-gl-compatibility-driver-ios) | `"opengl3"` |
| [String](class_string.md#class-string) | [rendering/gl\_compatibility/driver.linuxbsd](#class-projectsettings-property-rendering-gl-compatibility-driver-linuxbsd) | `"opengl3"` |
| [String](class_string.md#class-string) | [rendering/gl\_compatibility/driver.macos](#class-projectsettings-property-rendering-gl-compatibility-driver-macos) | `"opengl3"` |
| [String](class_string.md#class-string) | [rendering/gl\_compatibility/driver.web](#class-projectsettings-property-rendering-gl-compatibility-driver-web) | `"opengl3"` |
| [String](class_string.md#class-string) | [rendering/gl\_compatibility/driver.windows](#class-projectsettings-property-rendering-gl-compatibility-driver-windows) | `"opengl3"` |
| [bool](class_bool.md#class-bool) | [rendering/gl\_compatibility/fallback\_to\_angle](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-angle) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/gl\_compatibility/fallback\_to\_gles](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-gles) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/gl\_compatibility/fallback\_to\_native](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-native) | `true` |
| [Array](class_array.md#class-array) | [rendering/gl\_compatibility/force\_angle\_on\_devices](#class-projectsettings-property-rendering-gl-compatibility-force-angle-on-devices) |  |
| [int](class_int.md#class-int) | [rendering/gl\_compatibility/item\_buffer\_size](#class-projectsettings-property-rendering-gl-compatibility-item-buffer-size) | `16384` |
| [bool](class_bool.md#class-bool) | [rendering/gl\_compatibility/nvidia\_disable\_threaded\_optimization](#class-projectsettings-property-rendering-gl-compatibility-nvidia-disable-threaded-optimization) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/global\_illumination/gi/use\_half\_resolution](#class-projectsettings-property-rendering-global-illumination-gi-use-half-resolution) | `false` |
| [int](class_int.md#class-int) | [rendering/global\_illumination/sdfgi/frames\_to\_converge](#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-converge) | `5` |
| [int](class_int.md#class-int) | [rendering/global\_illumination/sdfgi/frames\_to\_update\_lights](#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-update-lights) | `2` |
| [int](class_int.md#class-int) | [rendering/global\_illumination/sdfgi/probe\_ray\_count](#class-projectsettings-property-rendering-global-illumination-sdfgi-probe-ray-count) | `1` |
| [int](class_int.md#class-int) | [rendering/global\_illumination/voxel\_gi/quality](#class-projectsettings-property-rendering-global-illumination-voxel-gi-quality) | `0` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_performance/max\_rays\_per\_pass](#class-projectsettings-property-rendering-lightmapping-bake-performance-max-rays-per-pass) | `4` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_performance/max\_rays\_per\_probe\_pass](#class-projectsettings-property-rendering-lightmapping-bake-performance-max-rays-per-probe-pass) | `64` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_performance/max\_transparency\_rays](#class-projectsettings-property-rendering-lightmapping-bake-performance-max-transparency-rays) | `8` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_performance/region\_size](#class-projectsettings-property-rendering-lightmapping-bake-performance-region-size) | `512` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_quality/high\_quality\_probe\_ray\_count](#class-projectsettings-property-rendering-lightmapping-bake-quality-high-quality-probe-ray-count) | `512` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_quality/high\_quality\_ray\_count](#class-projectsettings-property-rendering-lightmapping-bake-quality-high-quality-ray-count) | `512` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_quality/low\_quality\_probe\_ray\_count](#class-projectsettings-property-rendering-lightmapping-bake-quality-low-quality-probe-ray-count) | `64` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_quality/low\_quality\_ray\_count](#class-projectsettings-property-rendering-lightmapping-bake-quality-low-quality-ray-count) | `32` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_quality/medium\_quality\_probe\_ray\_count](#class-projectsettings-property-rendering-lightmapping-bake-quality-medium-quality-probe-ray-count) | `256` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_quality/medium\_quality\_ray\_count](#class-projectsettings-property-rendering-lightmapping-bake-quality-medium-quality-ray-count) | `128` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_quality/ultra\_quality\_probe\_ray\_count](#class-projectsettings-property-rendering-lightmapping-bake-quality-ultra-quality-probe-ray-count) | `2048` |
| [int](class_int.md#class-int) | [rendering/lightmapping/bake\_quality/ultra\_quality\_ray\_count](#class-projectsettings-property-rendering-lightmapping-bake-quality-ultra-quality-ray-count) | `2048` |
| [int](class_int.md#class-int) | [rendering/lightmapping/denoising/denoiser](#class-projectsettings-property-rendering-lightmapping-denoising-denoiser) | `0` |
| [bool](class_bool.md#class-bool) | [rendering/lightmapping/lightmap\_gi/use\_bicubic\_filter](#class-projectsettings-property-rendering-lightmapping-lightmap-gi-use-bicubic-filter) | `true` |
| [float](class_float.md#class-float) | [rendering/lightmapping/primitive\_meshes/texel\_size](#class-projectsettings-property-rendering-lightmapping-primitive-meshes-texel-size) | `0.2` |
| [float](class_float.md#class-float) | [rendering/lightmapping/probe\_capture/update\_speed](#class-projectsettings-property-rendering-lightmapping-probe-capture-update-speed) | `15` |
| [bool](class_bool.md#class-bool) | [rendering/lights\_and\_shadows/directional\_shadow/16\_bits](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-16-bits) | `true` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/directional\_shadow/size](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-size) | `4096` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/directional\_shadow/size.mobile](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-size-mobile) | `2048` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/directional\_shadow/soft\_shadow\_filter\_quality](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-soft-shadow-filter-quality) | `2` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/directional\_shadow/soft\_shadow\_filter\_quality.mobile](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-soft-shadow-filter-quality-mobile) | `0` |
| [bool](class_bool.md#class-bool) | [rendering/lights\_and\_shadows/positional\_shadow/atlas\_16\_bits](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-16-bits) | `true` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/positional\_shadow/atlas\_quadrant\_0\_subdiv](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-quadrant-0-subdiv) | `2` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/positional\_shadow/atlas\_quadrant\_1\_subdiv](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-quadrant-1-subdiv) | `2` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/positional\_shadow/atlas\_quadrant\_2\_subdiv](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-quadrant-2-subdiv) | `3` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/positional\_shadow/atlas\_quadrant\_3\_subdiv](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-quadrant-3-subdiv) | `4` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/positional\_shadow/atlas\_size](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-size) | `4096` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/positional\_shadow/atlas\_size.mobile](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-size-mobile) | `2048` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/positional\_shadow/soft\_shadow\_filter\_quality](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-soft-shadow-filter-quality) | `2` |
| [int](class_int.md#class-int) | [rendering/lights\_and\_shadows/positional\_shadow/soft\_shadow\_filter\_quality.mobile](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-soft-shadow-filter-quality-mobile) | `0` |
| [bool](class_bool.md#class-bool) | [rendering/lights\_and\_shadows/tighter\_shadow\_caster\_culling](#class-projectsettings-property-rendering-lights-and-shadows-tighter-shadow-caster-culling) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/lights\_and\_shadows/use\_physical\_light\_units](#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units) | `false` |
| [float](class_float.md#class-float) | [rendering/limits/cluster\_builder/max\_clustered\_elements](#class-projectsettings-property-rendering-limits-cluster-builder-max-clustered-elements) | `512` |
| [int](class_int.md#class-int) | [rendering/limits/global\_shader\_variables/buffer\_size](#class-projectsettings-property-rendering-limits-global-shader-variables-buffer-size) | `65536` |
| [int](class_int.md#class-int) | [rendering/limits/opengl/max\_lights\_per\_object](#class-projectsettings-property-rendering-limits-opengl-max-lights-per-object) | `8` |
| [int](class_int.md#class-int) | [rendering/limits/opengl/max\_renderable\_elements](#class-projectsettings-property-rendering-limits-opengl-max-renderable-elements) | `65536` |
| [int](class_int.md#class-int) | [rendering/limits/opengl/max\_renderable\_lights](#class-projectsettings-property-rendering-limits-opengl-max-renderable-lights) | `32` |
| [int](class_int.md#class-int) | [rendering/limits/spatial\_indexer/threaded\_cull\_minimum\_instances](#class-projectsettings-property-rendering-limits-spatial-indexer-threaded-cull-minimum-instances) | `1000` |
| [int](class_int.md#class-int) | [rendering/limits/spatial\_indexer/update\_iterations\_per\_frame](#class-projectsettings-property-rendering-limits-spatial-indexer-update-iterations-per-frame) | `10` |
| [float](class_float.md#class-float) | [rendering/limits/time/time\_rollover\_secs](#class-projectsettings-property-rendering-limits-time-time-rollover-secs) | `3600` |
| [float](class_float.md#class-float) | [rendering/mesh\_lod/lod\_change/threshold\_pixels](#class-projectsettings-property-rendering-mesh-lod-lod-change-threshold-pixels) | `1.0` |
| [int](class_int.md#class-int) | [rendering/occlusion\_culling/bvh\_build\_quality](#class-projectsettings-property-rendering-occlusion-culling-bvh-build-quality) | `2` |
| [bool](class_bool.md#class-bool) | [rendering/occlusion\_culling/jitter\_projection](#class-projectsettings-property-rendering-occlusion-culling-jitter-projection) | `true` |
| [int](class_int.md#class-int) | [rendering/occlusion\_culling/occlusion\_rays\_per\_thread](#class-projectsettings-property-rendering-occlusion-culling-occlusion-rays-per-thread) | `512` |
| [bool](class_bool.md#class-bool) | [rendering/occlusion\_culling/use\_occlusion\_culling](#class-projectsettings-property-rendering-occlusion-culling-use-occlusion-culling) | `false` |
| [int](class_int.md#class-int) | [rendering/reflections/reflection\_atlas/reflection\_count](#class-projectsettings-property-rendering-reflections-reflection-atlas-reflection-count) | `64` |
| [int](class_int.md#class-int) | [rendering/reflections/reflection\_atlas/reflection\_size](#class-projectsettings-property-rendering-reflections-reflection-atlas-reflection-size) | `256` |
| [int](class_int.md#class-int) | [rendering/reflections/reflection\_atlas/reflection\_size.mobile](#class-projectsettings-property-rendering-reflections-reflection-atlas-reflection-size-mobile) | `128` |
| [bool](class_bool.md#class-bool) | [rendering/reflections/sky\_reflections/fast\_filter\_high\_quality](#class-projectsettings-property-rendering-reflections-sky-reflections-fast-filter-high-quality) | `false` |
| [int](class_int.md#class-int) | [rendering/reflections/sky\_reflections/ggx\_samples](#class-projectsettings-property-rendering-reflections-sky-reflections-ggx-samples) | `32` |
| [int](class_int.md#class-int) | [rendering/reflections/sky\_reflections/ggx\_samples.mobile](#class-projectsettings-property-rendering-reflections-sky-reflections-ggx-samples-mobile) | `16` |
| [int](class_int.md#class-int) | [rendering/reflections/sky\_reflections/roughness\_layers](#class-projectsettings-property-rendering-reflections-sky-reflections-roughness-layers) | `8` |
| [bool](class_bool.md#class-bool) | [rendering/reflections/sky\_reflections/texture\_array\_reflections](#class-projectsettings-property-rendering-reflections-sky-reflections-texture-array-reflections) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/reflections/sky\_reflections/texture\_array\_reflections.mobile](#class-projectsettings-property-rendering-reflections-sky-reflections-texture-array-reflections-mobile) | `false` |
| [bool](class_bool.md#class-bool) | [rendering/reflections/specular\_occlusion/enabled](#class-projectsettings-property-rendering-reflections-specular-occlusion-enabled) | `true` |
| [String](class_string.md#class-string) | [rendering/renderer/rendering\_method](#class-projectsettings-property-rendering-renderer-rendering-method) | `"forward_plus"` |
| [String](class_string.md#class-string) | [rendering/renderer/rendering\_method.mobile](#class-projectsettings-property-rendering-renderer-rendering-method-mobile) | `"mobile"` |
| [String](class_string.md#class-string) | [rendering/renderer/rendering\_method.web](#class-projectsettings-property-rendering-renderer-rendering-method-web) | `"gl_compatibility"` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/d3d12/agility\_sdk\_version](#class-projectsettings-property-rendering-rendering-device-d3d12-agility-sdk-version) | `613` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/d3d12/max\_misc\_descriptors\_per\_frame](#class-projectsettings-property-rendering-rendering-device-d3d12-max-misc-descriptors-per-frame) | `512` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/d3d12/max\_resource\_descriptors\_per\_frame](#class-projectsettings-property-rendering-rendering-device-d3d12-max-resource-descriptors-per-frame) | `16384` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/d3d12/max\_sampler\_descriptors\_per\_frame](#class-projectsettings-property-rendering-rendering-device-d3d12-max-sampler-descriptors-per-frame) | `1024` |
| [String](class_string.md#class-string) | [rendering/rendering\_device/driver](#class-projectsettings-property-rendering-rendering-device-driver) | `"vulkan"` |
| [String](class_string.md#class-string) | [rendering/rendering\_device/driver.android](#class-projectsettings-property-rendering-rendering-device-driver-android) | `"vulkan"` |
| [String](class_string.md#class-string) | [rendering/rendering\_device/driver.ios](#class-projectsettings-property-rendering-rendering-device-driver-ios) | `"metal"` |
| [String](class_string.md#class-string) | [rendering/rendering\_device/driver.linuxbsd](#class-projectsettings-property-rendering-rendering-device-driver-linuxbsd) | `"vulkan"` |
| [String](class_string.md#class-string) | [rendering/rendering\_device/driver.macos](#class-projectsettings-property-rendering-rendering-device-driver-macos) | `"metal"` |
| [String](class_string.md#class-string) | [rendering/rendering\_device/driver.visionos](#class-projectsettings-property-rendering-rendering-device-driver-visionos) | `"metal"` |
| [String](class_string.md#class-string) | [rendering/rendering\_device/driver.windows](#class-projectsettings-property-rendering-rendering-device-driver-windows) | `"vulkan"` |
| [bool](class_bool.md#class-bool) | [rendering/rendering\_device/fallback\_to\_d3d12](#class-projectsettings-property-rendering-rendering-device-fallback-to-d3d12) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/rendering\_device/fallback\_to\_opengl3](#class-projectsettings-property-rendering-rendering-device-fallback-to-opengl3) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/rendering\_device/fallback\_to\_vulkan](#class-projectsettings-property-rendering-rendering-device-fallback-to-vulkan) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/rendering\_device/pipeline\_cache/enable](#class-projectsettings-property-rendering-rendering-device-pipeline-cache-enable) | `true` |
| [float](class_float.md#class-float) | [rendering/rendering\_device/pipeline\_cache/save\_chunk\_size\_mb](#class-projectsettings-property-rendering-rendering-device-pipeline-cache-save-chunk-size-mb) | `3.0` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/staging\_buffer/block\_size\_kb](#class-projectsettings-property-rendering-rendering-device-staging-buffer-block-size-kb) | `256` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/staging\_buffer/max\_size\_mb](#class-projectsettings-property-rendering-rendering-device-staging-buffer-max-size-mb) | `128` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/staging\_buffer/texture\_download\_region\_size\_px](#class-projectsettings-property-rendering-rendering-device-staging-buffer-texture-download-region-size-px) | `64` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/staging\_buffer/texture\_upload\_region\_size\_px](#class-projectsettings-property-rendering-rendering-device-staging-buffer-texture-upload-region-size-px) | `64` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/vsync/frame\_queue\_size](#class-projectsettings-property-rendering-rendering-device-vsync-frame-queue-size) | `2` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/vsync/swapchain\_image\_count](#class-projectsettings-property-rendering-rendering-device-vsync-swapchain-image-count) | `3` |
| [int](class_int.md#class-int) | [rendering/rendering\_device/vulkan/max\_descriptors\_per\_pool](#class-projectsettings-property-rendering-rendering-device-vulkan-max-descriptors-per-pool) | `64` |
| [float](class_float.md#class-float) | [rendering/scaling\_3d/fsr\_sharpness](#class-projectsettings-property-rendering-scaling-3d-fsr-sharpness) | `0.2` |
| [int](class_int.md#class-int) | [rendering/scaling\_3d/mode](#class-projectsettings-property-rendering-scaling-3d-mode) | `0` |
| [int](class_int.md#class-int) | [rendering/scaling\_3d/mode.ios](#class-projectsettings-property-rendering-scaling-3d-mode-ios) |  |
| [int](class_int.md#class-int) | [rendering/scaling\_3d/mode.macos](#class-projectsettings-property-rendering-scaling-3d-mode-macos) |  |
| [float](class_float.md#class-float) | [rendering/scaling\_3d/scale](#class-projectsettings-property-rendering-scaling-3d-scale) | `1.0` |
| [bool](class_bool.md#class-bool) | [rendering/shader\_compiler/shader\_cache/compress](#class-projectsettings-property-rendering-shader-compiler-shader-cache-compress) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/shader\_compiler/shader\_cache/enabled](#class-projectsettings-property-rendering-shader-compiler-shader-cache-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/shader\_compiler/shader\_cache/strip\_debug](#class-projectsettings-property-rendering-shader-compiler-shader-cache-strip-debug) | `false` |
| [bool](class_bool.md#class-bool) | [rendering/shader\_compiler/shader\_cache/strip\_debug.release](#class-projectsettings-property-rendering-shader-compiler-shader-cache-strip-debug-release) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/shader\_compiler/shader\_cache/use\_zstd\_compression](#class-projectsettings-property-rendering-shader-compiler-shader-cache-use-zstd-compression) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/shading/overrides/force\_lambert\_over\_burley](#class-projectsettings-property-rendering-shading-overrides-force-lambert-over-burley) | `false` |
| [bool](class_bool.md#class-bool) | [rendering/shading/overrides/force\_lambert\_over\_burley.mobile](#class-projectsettings-property-rendering-shading-overrides-force-lambert-over-burley-mobile) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/shading/overrides/force\_vertex\_shading](#class-projectsettings-property-rendering-shading-overrides-force-vertex-shading) | `false` |
| [int](class_int.md#class-int) | [rendering/textures/basis\_universal/rdo\_dict\_size](#class-projectsettings-property-rendering-textures-basis-universal-rdo-dict-size) | `1024` |
| [bool](class_bool.md#class-bool) | [rendering/textures/basis\_universal/zstd\_supercompression](#class-projectsettings-property-rendering-textures-basis-universal-zstd-supercompression) | `true` |
| [int](class_int.md#class-int) | [rendering/textures/basis\_universal/zstd\_supercompression\_level](#class-projectsettings-property-rendering-textures-basis-universal-zstd-supercompression-level) | `6` |
| [int](class_int.md#class-int) | [rendering/textures/canvas\_textures/default\_texture\_filter](#class-projectsettings-property-rendering-textures-canvas-textures-default-texture-filter) | `1` |
| [int](class_int.md#class-int) | [rendering/textures/canvas\_textures/default\_texture\_repeat](#class-projectsettings-property-rendering-textures-canvas-textures-default-texture-repeat) | `0` |
| [int](class_int.md#class-int) | [rendering/textures/decals/filter](#class-projectsettings-property-rendering-textures-decals-filter) | `3` |
| [int](class_int.md#class-int) | [rendering/textures/default\_filters/anisotropic\_filtering\_level](#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level) | `2` |
| [float](class_float.md#class-float) | [rendering/textures/default\_filters/texture\_mipmap\_bias](#class-projectsettings-property-rendering-textures-default-filters-texture-mipmap-bias) | `0.0` |
| [bool](class_bool.md#class-bool) | [rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) | `false` |
| [int](class_int.md#class-int) | [rendering/textures/light\_projectors/filter](#class-projectsettings-property-rendering-textures-light-projectors-filter) | `3` |
| [bool](class_bool.md#class-bool) | [rendering/textures/lossless\_compression/force\_png](#class-projectsettings-property-rendering-textures-lossless-compression-force-png) | `false` |
| [bool](class_bool.md#class-bool) | [rendering/textures/vram\_compression/cache\_gpu\_compressor](#class-projectsettings-property-rendering-textures-vram-compression-cache-gpu-compressor) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/textures/vram\_compression/compress\_with\_gpu](#class-projectsettings-property-rendering-textures-vram-compression-compress-with-gpu) | `true` |
| [bool](class_bool.md#class-bool) | [rendering/textures/vram\_compression/import\_etc2\_astc](#class-projectsettings-property-rendering-textures-vram-compression-import-etc2-astc) | `false` |
| [bool](class_bool.md#class-bool) | [rendering/textures/vram\_compression/import\_s3tc\_bptc](#class-projectsettings-property-rendering-textures-vram-compression-import-s3tc-bptc) | `false` |
| [int](class_int.md#class-int) | [rendering/textures/webp\_compression/compression\_method](#class-projectsettings-property-rendering-textures-webp-compression-compression-method) | `2` |
| [float](class_float.md#class-float) | [rendering/textures/webp\_compression/lossless\_compression\_factor](#class-projectsettings-property-rendering-textures-webp-compression-lossless-compression-factor) | `25` |
| [bool](class_bool.md#class-bool) | [rendering/viewport/hdr\_2d](#class-projectsettings-property-rendering-viewport-hdr-2d) | `false` |
| [bool](class_bool.md#class-bool) | [rendering/viewport/transparent\_background](#class-projectsettings-property-rendering-viewport-transparent-background) | `false` |
| [int](class_int.md#class-int) | [rendering/vrs/mode](#class-projectsettings-property-rendering-vrs-mode) | `0` |
| [String](class_string.md#class-string) | [rendering/vrs/texture](#class-projectsettings-property-rendering-vrs-texture) | `""` |
| [float](class_float.md#class-float) | [threading/worker\_pool/low\_priority\_thread\_ratio](#class-projectsettings-property-threading-worker-pool-low-priority-thread-ratio) | `0.3` |
| [int](class_int.md#class-int) | [threading/worker\_pool/max\_threads](#class-projectsettings-property-threading-worker-pool-max-threads) | `-1` |
| [bool](class_bool.md#class-bool) | [xr/openxr/binding\_modifiers/analog\_threshold](#class-projectsettings-property-xr-openxr-binding-modifiers-analog-threshold) | `false` |
| [bool](class_bool.md#class-bool) | [xr/openxr/binding\_modifiers/dpad\_binding](#class-projectsettings-property-xr-openxr-binding-modifiers-dpad-binding) | `false` |
| [String](class_string.md#class-string) | [xr/openxr/default\_action\_map](#class-projectsettings-property-xr-openxr-default-action-map) | `"res://openxr_action_map.tres"` |
| [bool](class_bool.md#class-bool) | [xr/openxr/enabled](#class-projectsettings-property-xr-openxr-enabled) | `false` |
| [int](class_int.md#class-int) | [xr/openxr/environment\_blend\_mode](#class-projectsettings-property-xr-openxr-environment-blend-mode) | `"0"` |
| [int](class_int.md#class-int) | [xr/openxr/extensions/debug\_message\_types](#class-projectsettings-property-xr-openxr-extensions-debug-message-types) | `"15"` |
| [int](class_int.md#class-int) | [xr/openxr/extensions/debug\_utils](#class-projectsettings-property-xr-openxr-extensions-debug-utils) | `"0"` |
| [bool](class_bool.md#class-bool) | [xr/openxr/extensions/eye\_gaze\_interaction](#class-projectsettings-property-xr-openxr-extensions-eye-gaze-interaction) | `false` |
| [bool](class_bool.md#class-bool) | [xr/openxr/extensions/hand\_interaction\_profile](#class-projectsettings-property-xr-openxr-extensions-hand-interaction-profile) | `false` |
| [bool](class_bool.md#class-bool) | [xr/openxr/extensions/hand\_tracking](#class-projectsettings-property-xr-openxr-extensions-hand-tracking) | `false` |
| [bool](class_bool.md#class-bool) | [xr/openxr/extensions/hand\_tracking\_controller\_data\_source](#class-projectsettings-property-xr-openxr-extensions-hand-tracking-controller-data-source) | `false` |
| [bool](class_bool.md#class-bool) | [xr/openxr/extensions/hand\_tracking\_unobstructed\_data\_source](#class-projectsettings-property-xr-openxr-extensions-hand-tracking-unobstructed-data-source) | `false` |
| [bool](class_bool.md#class-bool) | [xr/openxr/extensions/render\_model](#class-projectsettings-property-xr-openxr-extensions-render-model) | `false` |
| [int](class_int.md#class-int) | [xr/openxr/form\_factor](#class-projectsettings-property-xr-openxr-form-factor) | `"0"` |
| [bool](class_bool.md#class-bool) | [xr/openxr/foveation\_dynamic](#class-projectsettings-property-xr-openxr-foveation-dynamic) | `false` |
| [int](class_int.md#class-int) | [xr/openxr/foveation\_level](#class-projectsettings-property-xr-openxr-foveation-level) | `"0"` |
| [int](class_int.md#class-int) | [xr/openxr/reference\_space](#class-projectsettings-property-xr-openxr-reference-space) | `"1"` |
| [bool](class_bool.md#class-bool) | [xr/openxr/startup\_alert](#class-projectsettings-property-xr-openxr-startup-alert) | `true` |
| [bool](class_bool.md#class-bool) | [xr/openxr/submit\_depth\_buffer](#class-projectsettings-property-xr-openxr-submit-depth-buffer) | `false` |
| [int](class_int.md#class-int) | [xr/openxr/view\_configuration](#class-projectsettings-property-xr-openxr-view-configuration) | `"1"` |
| [bool](class_bool.md#class-bool) | [xr/shaders/enabled](#class-projectsettings-property-xr-shaders-enabled) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [add\_property\_info](#class-projectsettings-method-add-property-info)(hint: [Dictionary](class_dictionary.md#class-dictionary)) |
| void | [clear](#class-projectsettings-method-clear)(name: [String](class_string.md#class-string)) |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_global\_class\_list](#class-projectsettings-method-get-global-class-list)() |
| [int](class_int.md#class-int) | [get\_order](#class-projectsettings-method-get-order)(name: [String](class_string.md#class-string)) const |
| [Variant](class_variant.md#class-variant) | [get\_setting](#class-projectsettings-method-get-setting)(name: [String](class_string.md#class-string), default\_value: [Variant](class_variant.md#class-variant) = null) const |
| [Variant](class_variant.md#class-variant) | [get\_setting\_with\_override](#class-projectsettings-method-get-setting-with-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [Variant](class_variant.md#class-variant) | [get\_setting\_with\_override\_and\_custom\_features](#class-projectsettings-method-get-setting-with-override-and-custom-features)(name: [StringName](class_stringname.md#class-stringname), features: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) const |
| [String](class_string.md#class-string) | [globalize\_path](#class-projectsettings-method-globalize-path)(path: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_setting](#class-projectsettings-method-has-setting)(name: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [load\_resource\_pack](#class-projectsettings-method-load-resource-pack)(pack: [String](class_string.md#class-string), replace\_files: [bool](class_bool.md#class-bool) = true, offset: [int](class_int.md#class-int) = 0) |
| [String](class_string.md#class-string) | [localize\_path](#class-projectsettings-method-localize-path)(path: [String](class_string.md#class-string)) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save](#class-projectsettings-method-save)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_custom](#class-projectsettings-method-save-custom)(file: [String](class_string.md#class-string)) |
| void | [set\_as\_basic](#class-projectsettings-method-set-as-basic)(name: [String](class_string.md#class-string), basic: [bool](class_bool.md#class-bool)) |
| void | [set\_as\_internal](#class-projectsettings-method-set-as-internal)(name: [String](class_string.md#class-string), internal: [bool](class_bool.md#class-bool)) |
| void | [set\_initial\_value](#class-projectsettings-method-set-initial-value)(name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) |
| void | [set\_order](#class-projectsettings-method-set-order)(name: [String](class_string.md#class-string), position: [int](class_int.md#class-int)) |
| void | [set\_restart\_if\_changed](#class-projectsettings-method-set-restart-if-changed)(name: [String](class_string.md#class-string), restart: [bool](class_bool.md#class-bool)) |
| void | [set\_setting](#class-projectsettings-method-set-setting)(name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) |

* * *

## Signals

**settings\_changed**() [🔗](#class-projectsettings-signal-settings-changed)

Emitted when any setting is changed, up to once per process frame.

* * *

## Property Descriptions

[int](class_int.md#class-int) **accessibility/general/accessibility\_support** = `0` [🔗](#class-projectsettings-property-accessibility-general-accessibility-support)

Accessibility support mode:

- **Auto** ( `0`): Accessibility support is enabled, but updates to the accessibility information are processed only if an assistive app (such as a screen reader or a Braille display) is active (default).

- **Always Active** ( `1`): Accessibility support is enabled, and updates to the accessibility information are always processed, regardless of the status of assistive apps.

- **Disabled** ( `2`): Accessibility support is fully disabled.


**Note:** Accessibility debugging tools, such as Accessibility Insights for Windows, Accessibility Inspector (macOS), or AT-SPI Browser (Linux/BSD) do not count as assistive apps. To test your project with these tools, use **Always Active**.

* * *

[int](class_int.md#class-int) **accessibility/general/updates\_per\_second** = `60` [🔗](#class-projectsettings-property-accessibility-general-updates-per-second)

The number of accessibility information updates per second.

* * *

[bool](class_bool.md#class-bool) **animation/warnings/check\_angle\_interpolation\_type\_conflicting** = `true` [🔗](#class-projectsettings-property-animation-warnings-check-angle-interpolation-type-conflicting)

If `true`, [AnimationMixer](class_animationmixer.md#class-animationmixer) prints the warning of interpolation being forced to choose the shortest rotation path due to multiple angle interpolation types being mixed in the [AnimationMixer](class_animationmixer.md#class-animationmixer) cache.

* * *

[bool](class_bool.md#class-bool) **animation/warnings/check\_invalid\_track\_paths** = `true` [🔗](#class-projectsettings-property-animation-warnings-check-invalid-track-paths)

If `true`, [AnimationMixer](class_animationmixer.md#class-animationmixer) prints the warning of no matching object of the track path in the scene.

* * *

[Color](class_color.md#class-color) **application/boot\_splash/bg\_color** = `Color(0.14, 0.14, 0.14, 1)` [🔗](#class-projectsettings-property-application-boot-splash-bg-color)

Background color for the boot splash.

* * *

[bool](class_bool.md#class-bool) **application/boot\_splash/fullsize** = `true` [🔗](#class-projectsettings-property-application-boot-splash-fullsize)

If `true`, scale the boot splash image to the full window size (preserving the aspect ratio) when the engine starts. If `false`, the engine will leave it at the default pixel size.

* * *

[String](class_string.md#class-string) **application/boot\_splash/image** = `""` [🔗](#class-projectsettings-property-application-boot-splash-image)

Path to an image used as the boot splash. If left empty, the default Godot Engine splash will be displayed instead.

**Note:** Only effective if [application/boot\_splash/show\_image](#class-projectsettings-property-application-boot-splash-show-image) is `true`.

**Note:** The only supported format is PNG. Using another image format will result in an error.

**Note:** The image will also show when opening the project in the editor. If you want to display the default splash image in the editor, add an empty override for `editor_hint` feature.

* * *

[int](class_int.md#class-int) **application/boot\_splash/minimum\_display\_time** = `0` [🔗](#class-projectsettings-property-application-boot-splash-minimum-display-time)

Minimum boot splash display time (in milliseconds). It is not recommended to set too high values for this setting.

* * *

[bool](class_bool.md#class-bool) **application/boot\_splash/show\_image** = `true` [🔗](#class-projectsettings-property-application-boot-splash-show-image)

If `true`, displays the image specified in [application/boot\_splash/image](#class-projectsettings-property-application-boot-splash-image) when the engine starts. If `false`, only displays the plain color specified in [application/boot\_splash/bg\_color](#class-projectsettings-property-application-boot-splash-bg-color).

* * *

[bool](class_bool.md#class-bool) **application/boot\_splash/use\_filter** = `true` [🔗](#class-projectsettings-property-application-boot-splash-use-filter)

If `true`, applies linear filtering when scaling the image (recommended for high-resolution artwork). If `false`, uses nearest-neighbor interpolation (recommended for pixel art).

* * *

[bool](class_bool.md#class-bool) **application/config/auto\_accept\_quit** = `true` [🔗](#class-projectsettings-property-application-config-auto-accept-quit)

If `true`, the application automatically accepts quitting requests.

* * *

[String](class_string.md#class-string) **application/config/custom\_user\_dir\_name** = `""` [🔗](#class-projectsettings-property-application-config-custom-user-dir-name)

This user directory is used for storing persistent data ( `user://` filesystem). If a custom directory name is defined, this name will be appended to the system-specific user data directory (same parent folder as the Godot configuration folder documented in [OS.get\_user\_data\_dir()](class_os.md#class-os-method-get-user-data-dir)).

The [application/config/use\_custom\_user\_dir](#class-projectsettings-property-application-config-use-custom-user-dir) setting must be enabled for this to take effect.

**Note:** If [application/config/custom\_user\_dir\_name](#class-projectsettings-property-application-config-custom-user-dir-name) contains trailing periods, they will be stripped as folder names ending with a period are not allowed on Windows.

* * *

[String](class_string.md#class-string) **application/config/description** = `""` [🔗](#class-projectsettings-property-application-config-description)

The project's description, displayed as a tooltip in the Project Manager when hovering the project.

* * *

[String](class_string.md#class-string) **application/config/icon** = `""` [🔗](#class-projectsettings-property-application-config-icon)

Icon used for the project, set when project loads. Exporters will also use this icon as a fallback if necessary.

* * *

[String](class_string.md#class-string) **application/config/macos\_native\_icon** = `""` [🔗](#class-projectsettings-property-application-config-macos-native-icon)

Icon set in `.icns` format used on macOS to set the game's icon. This is done automatically on start by calling [DisplayServer.set\_native\_icon()](class_displayserver.md#class-displayserver-method-set-native-icon).

* * *

[String](class_string.md#class-string) **application/config/name** = `""` [🔗](#class-projectsettings-property-application-config-name)

The project's name. It is used both by the Project Manager and by exporters. The project name can be translated by translating its value in localization files. The window title will be set to match the project name automatically on startup.

**Note:** Changing this value will also change the user data folder's path if [application/config/use\_custom\_user\_dir](#class-projectsettings-property-application-config-use-custom-user-dir) is `false`. After renaming the project, you will no longer be able to access existing data in `user://` unless you rename the old folder to match the new project name. See [Data paths](../tutorials/io/data_paths.md) in the documentation for more information.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **application/config/name\_localized** = `{}` [🔗](#class-projectsettings-property-application-config-name-localized)

Translations of the project's name. This setting is used by OS tools to translate application name on Android, iOS and macOS.

* * *

[String](class_string.md#class-string) **application/config/project\_settings\_override** = `""` [🔗](#class-projectsettings-property-application-config-project-settings-override)

Specifies a file to override project settings. For example: `user://custom_settings.cfg`. See "Overriding" in the **ProjectSettings** class description at the top for more information.

**Note:** Regardless of this setting's value, `res://override.cfg` will still be read to override the project settings.

* * *

[bool](class_bool.md#class-bool) **application/config/quit\_on\_go\_back** = `true` [🔗](#class-projectsettings-property-application-config-quit-on-go-back)

If `true`, the application quits automatically when navigating back (e.g. using the system "Back" button on Android).

* * *

[bool](class_bool.md#class-bool) **application/config/use\_custom\_user\_dir** = `false` [🔗](#class-projectsettings-property-application-config-use-custom-user-dir)

If `true`, the project will save user data to its own user directory. If [application/config/custom\_user\_dir\_name](#class-projectsettings-property-application-config-custom-user-dir-name) is empty, `<OS user data directory>/<project name>` directory will be used. If `false`, the project will save user data to `<OS user data directory>/Godot/app_userdata/<project name>`.

See also [File paths in Godot projects](../tutorials/io/data_paths.md#accessing-persistent-user-data-user). This setting is only effective on desktop platforms.

* * *

[bool](class_bool.md#class-bool) **application/config/use\_hidden\_project\_data\_directory** = `true` [🔗](#class-projectsettings-property-application-config-use-hidden-project-data-directory)

If `true`, the project will use a hidden directory ( `.godot`) for storing project-specific data (metadata, shader cache, etc.).

If `false`, a non-hidden directory ( `godot`) will be used instead.

**Note:** Restart the application after changing this setting.

**Note:** Changing this value can help on platforms or with third-party tools where hidden directory patterns are disallowed. Only modify this setting if you know that your environment requires it, as changing the default can impact compatibility with some external tools or plugins which expect the default `.godot` folder.

* * *

[String](class_string.md#class-string) **application/config/version** = `""` [🔗](#class-projectsettings-property-application-config-version)

The project's human-readable version identifier. This is used by exporters if the version identifier isn't overridden there. If [application/config/version](#class-projectsettings-property-application-config-version) is an empty string and the version identifier isn't overridden in an exporter, the exporter will use `1.0.0` as a version identifier.

* * *

[String](class_string.md#class-string) **application/config/windows\_native\_icon** = `""` [🔗](#class-projectsettings-property-application-config-windows-native-icon)

Icon set in `.ico` format used on Windows to set the game's icon. This is done automatically on start by calling [DisplayServer.set\_native\_icon()](class_displayserver.md#class-displayserver-method-set-native-icon).

* * *

[bool](class_bool.md#class-bool) **application/run/delta\_smoothing** = `true` [🔗](#class-projectsettings-property-application-run-delta-smoothing)

Time samples for frame deltas are subject to random variation introduced by the platform, even when frames are displayed at regular intervals thanks to V-Sync. This can lead to jitter. Delta smoothing can often give a better result by filtering the input deltas to correct for minor fluctuations from the refresh rate.

**Note:** Delta smoothing is only attempted when [display/window/vsync/vsync\_mode](#class-projectsettings-property-display-window-vsync-vsync-mode) is set to `enabled`, as it does not work well without V-Sync.

It may take several seconds at a stable frame rate before the smoothing is initially activated. It will only be active on machines where performance is adequate to render frames at the refresh rate.

* * *

[bool](class_bool.md#class-bool) **application/run/disable\_stderr** = `false` [🔗](#class-projectsettings-property-application-run-disable-stderr)

If `true`, disables printing to standard error. If `true`, this also hides error and warning messages printed by [@GlobalScope.push\_error()](class_@globalscope.md#class-globalscope-method-push-error) and [@GlobalScope.push\_warning()](class_@globalscope.md#class-globalscope-method-push-warning). See also [application/run/disable\_stdout](#class-projectsettings-property-application-run-disable-stdout).

Changes to this setting will only be applied upon restarting the application. To control this at runtime, use [Engine.print\_error\_messages](class_engine.md#class-engine-property-print-error-messages).

* * *

[bool](class_bool.md#class-bool) **application/run/disable\_stdout** = `false` [🔗](#class-projectsettings-property-application-run-disable-stdout)

If `true`, disables printing to standard output. This is equivalent to starting the editor or project with the `--quiet` [command line argument](../tutorials/editor/command_line_tutorial.md). See also [application/run/disable\_stderr](#class-projectsettings-property-application-run-disable-stderr).

Changes to this setting will only be applied upon restarting the application. To control this at runtime, use [Engine.print\_to\_stdout](class_engine.md#class-engine-property-print-to-stdout).

* * *

[bool](class_bool.md#class-bool) **application/run/enable\_alt\_space\_menu** = `false` [🔗](#class-projectsettings-property-application-run-enable-alt-space-menu)

If `true`, allows the `Alt + Space` keys to display the window menu. This menu allows the user to perform various window management operations such as moving, resizing, or minimizing the window.

**Note:** When the menu is displayed, project execution will pause until the menu is _fully_ closed due to Windows behavior. Consider this when enabling this setting in a networked multiplayer game. The menu is only considered fully closed when an option is selected, when the user clicks outside, or when `Escape` is pressed after bringing up the window menu _and_ another key is pressed afterwards.

**Note:** This setting is implemented only on Windows.

* * *

[bool](class_bool.md#class-bool) **application/run/flush\_stdout\_on\_print** = `false` [🔗](#class-projectsettings-property-application-run-flush-stdout-on-print)

If `true`, flushes the standard output stream every time a line is printed. This affects both terminal logging and file logging.

When running a project, this setting must be enabled if you want logs to be collected by service managers such as systemd/journalctl. This setting is disabled by default on release builds, since flushing on every printed line will negatively affect performance if lots of lines are printed in a rapid succession. Also, if this setting is enabled, logged files will still be written successfully if the application crashes or is otherwise killed by the user (without being closed "normally").

**Note:** Regardless of this setting, the standard error stream ( `stderr`) is always flushed when a line is printed to it.

Changes to this setting will only be applied upon restarting the application.

* * *

[bool](class_bool.md#class-bool) **application/run/flush\_stdout\_on\_print.debug** = `true` [🔗](#class-projectsettings-property-application-run-flush-stdout-on-print-debug)

Debug build override for [application/run/flush\_stdout\_on\_print](#class-projectsettings-property-application-run-flush-stdout-on-print), as performance is less important during debugging.

Changes to this setting will only be applied upon restarting the application.

* * *

[int](class_int.md#class-int) **application/run/frame\_delay\_msec** = `0` [🔗](#class-projectsettings-property-application-run-frame-delay-msec)

Forces a _constant_ delay between frames in the main loop (in milliseconds). In most situations, [application/run/max\_fps](#class-projectsettings-property-application-run-max-fps) should be preferred as an FPS limiter as it's more precise.

This setting can be overridden using the `--frame-delay <ms;>` command line argument.

* * *

[bool](class_bool.md#class-bool) **application/run/load\_shell\_environment** = `false` [🔗](#class-projectsettings-property-application-run-load-shell-environment)

If `true`, loads the default shell and copies environment variables set by the shell startup scripts to the app environment.

**Note:** This setting is implemented on macOS for non-sandboxed applications only.

* * *

[bool](class_bool.md#class-bool) **application/run/low\_processor\_mode** = `false` [🔗](#class-projectsettings-property-application-run-low-processor-mode)

If `true`, enables low-processor usage mode. When enabled, the engine takes longer to redraw, but only redraws the screen if necessary. This may lower power consumption, and is intended for editors or mobile applications. For most games, because the screen needs to be redrawn every frame, it is recommended to keep this setting disabled.

* * *

[int](class_int.md#class-int) **application/run/low\_processor\_mode\_sleep\_usec** = `6900` [🔗](#class-projectsettings-property-application-run-low-processor-mode-sleep-usec)

Amount of sleeping between frames when the low-processor usage mode is enabled (in microseconds). Higher values will result in lower CPU usage.

* * *

[String](class_string.md#class-string) **application/run/main\_loop\_type** = `"SceneTree"` [🔗](#class-projectsettings-property-application-run-main-loop-type)

The name of the type implementing the engine's main loop.

* * *

[String](class_string.md#class-string) **application/run/main\_scene** = `""` [🔗](#class-projectsettings-property-application-run-main-scene)

Path to the main scene file that will be loaded when the project runs.

* * *

[int](class_int.md#class-int) **application/run/max\_fps** = `0` [🔗](#class-projectsettings-property-application-run-max-fps)

Maximum number of frames per second allowed. A value of `0` means "no limit". The actual number of frames per second may still be below this value if the CPU or GPU cannot keep up with the project logic and rendering.

Limiting the FPS can be useful to reduce system power consumption, which reduces heat and noise emissions (and improves battery life on mobile devices).

If [display/window/vsync/vsync\_mode](#class-projectsettings-property-display-window-vsync-vsync-mode) is set to `Enabled` or `Adaptive`, it takes precedence and the forced FPS number cannot exceed the monitor's refresh rate.

If [display/window/vsync/vsync\_mode](#class-projectsettings-property-display-window-vsync-vsync-mode) is `Enabled`, on monitors with variable refresh rate enabled (G-Sync/FreeSync), using an FPS limit a few frames lower than the monitor's refresh rate will [reduce input lag while avoiding tearing](https://blurbusters.com/howto-low-lag-vsync-on/).

If [display/window/vsync/vsync\_mode](#class-projectsettings-property-display-window-vsync-vsync-mode) is `Disabled`, limiting the FPS to a high value that can be consistently reached on the system can reduce input lag compared to an uncapped framerate. Since this works by ensuring the GPU load is lower than 100%, this latency reduction is only effective in GPU-bottlenecked scenarios, not CPU-bottlenecked scenarios.

See also [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second).

This setting can be overridden using the `--max-fps <fps>` command line argument (including with a value of `0` for unlimited framerate).

**Note:** This property is only read when the project starts. To change the rendering FPS cap at runtime, set [Engine.max\_fps](class_engine.md#class-engine-property-max-fps) instead.

* * *

[bool](class_bool.md#class-bool) **application/run/print\_header** = `true` [🔗](#class-projectsettings-property-application-run-print-header)

If `true`, the engine header is printed in the console on startup. This header describes the current version of the engine, as well as the renderer being used. This behavior can also be disabled on the command line with the `--no-header` option.

* * *

[float](class_float.md#class-float) **audio/buses/channel\_disable\_threshold\_db** = `-60.0` [🔗](#class-projectsettings-property-audio-buses-channel-disable-threshold-db)

Audio buses will disable automatically when sound goes below a given dB threshold for a given time. This saves CPU as effects assigned to that bus will no longer do any processing.

* * *

[float](class_float.md#class-float) **audio/buses/channel\_disable\_time** = `2.0` [🔗](#class-projectsettings-property-audio-buses-channel-disable-time)

Audio buses will disable automatically when sound goes below a given dB threshold for a given time. This saves CPU as effects assigned to that bus will no longer do any processing.

* * *

[String](class_string.md#class-string) **audio/buses/default\_bus\_layout** = `"res://default_bus_layout.tres"` [🔗](#class-projectsettings-property-audio-buses-default-bus-layout)

Default [AudioBusLayout](class_audiobuslayout.md#class-audiobuslayout) resource file to use in the project, unless overridden by the scene.

* * *

[String](class_string.md#class-string) **audio/driver/driver** [🔗](#class-projectsettings-property-audio-driver-driver)

Specifies the audio driver to use. This setting is platform-dependent as each platform supports different audio drivers. If left empty, the default audio driver will be used.

The `Dummy` audio driver disables all audio playback and recording, which is useful for non-game applications as it reduces CPU usage. It also prevents the engine from appearing as an application playing audio in the OS' audio mixer.

To query the value that is being used at run-time (which may be overridden by command-line arguments or headless mode), use [AudioServer.get\_driver\_name()](class_audioserver.md#class-audioserver-method-get-driver-name).

**Note:** The driver in use can be overridden at runtime via the `--audio-driver` [command line argument](../tutorials/editor/command_line_tutorial.md).

* * *

[bool](class_bool.md#class-bool) **audio/driver/enable\_input** = `false` [🔗](#class-projectsettings-property-audio-driver-enable-input)

If `true`, microphone input will be allowed. This requires appropriate permissions to be set when exporting to Android or iOS.

**Note:** If the operating system blocks access to audio input devices (due to the user's privacy settings), audio capture will only return silence. On Windows, make sure that apps are allowed to access the microphone in the OS' privacy settings.

* * *

[int](class_int.md#class-int) **audio/driver/mix\_rate** = `44100` [🔗](#class-projectsettings-property-audio-driver-mix-rate)

Target mixing rate used for audio (in Hz). In general, it's better to not touch this and leave it to the host operating system.

**Note:** On iOS and macOS, mixing rate is determined by audio driver, this value is ignored.

**Note:** Input and output mixing rates might be different. Use [AudioServer.get\_mix\_rate()](class_audioserver.md#class-audioserver-method-get-mix-rate) and [AudioServer.get\_input\_mix\_rate()](class_audioserver.md#class-audioserver-method-get-input-mix-rate) to get actual values.

* * *

[int](class_int.md#class-int) **audio/driver/mix\_rate.web** = `0` [🔗](#class-projectsettings-property-audio-driver-mix-rate-web)

Safer override for [audio/driver/mix\_rate](#class-projectsettings-property-audio-driver-mix-rate) in the Web platform. Here `0` means "let the browser choose" (since some browsers do not like forcing the mix rate).

* * *

[int](class_int.md#class-int) **audio/driver/output\_latency** = `15` [🔗](#class-projectsettings-property-audio-driver-output-latency)

Specifies the preferred output latency in milliseconds for audio. Lower values will result in lower audio latency at the cost of increased CPU usage. Low values may result in audible crackling on slower hardware.

Audio output latency may be constrained by the host operating system and audio hardware drivers. If the host can not provide the specified audio output latency then Godot will attempt to use the nearest latency allowed by the host. As such you should always use [AudioServer.get\_output\_latency()](class_audioserver.md#class-audioserver-method-get-output-latency) to determine the actual audio output latency.

Audio output latency can be overridden using the `--audio-output-latency <ms>` command line argument.

**Note:** This setting is ignored on Android.

* * *

[int](class_int.md#class-int) **audio/driver/output\_latency.web** = `50` [🔗](#class-projectsettings-property-audio-driver-output-latency-web)

Safer override for [audio/driver/output\_latency](#class-projectsettings-property-audio-driver-output-latency) in the Web platform, to avoid audio issues especially on mobile devices.

* * *

[float](class_float.md#class-float) **audio/general/2d\_panning\_strength** = `0.5` [🔗](#class-projectsettings-property-audio-general-2d-panning-strength)

The base strength of the panning effect for all [AudioStreamPlayer2D](class_audiostreamplayer2d.md#class-audiostreamplayer2d) nodes. The panning strength can be further scaled on each Node using [AudioStreamPlayer2D.panning\_strength](class_audiostreamplayer2d.md#class-audiostreamplayer2d-property-panning-strength). A value of `0.0` disables stereo panning entirely, leaving only volume attenuation in place. A value of `1.0` completely mutes one of the channels if the sound is located exactly to the left (or right) of the listener.

The default value of `0.5` is tuned for headphones. When using speakers, you may find lower values to sound better as speakers have a lower stereo separation compared to headphones.

* * *

[float](class_float.md#class-float) **audio/general/3d\_panning\_strength** = `0.5` [🔗](#class-projectsettings-property-audio-general-3d-panning-strength)

The base strength of the panning effect for all [AudioStreamPlayer3D](class_audiostreamplayer3d.md#class-audiostreamplayer3d) nodes. The panning strength can be further scaled on each Node using [AudioStreamPlayer3D.panning\_strength](class_audiostreamplayer3d.md#class-audiostreamplayer3d-property-panning-strength). A value of `0.0` disables stereo panning entirely, leaving only volume attenuation in place. A value of `1.0` completely mutes one of the channels if the sound is located exactly to the left (or right) of the listener.

The default value of `0.5` is tuned for headphones which means that the opposite side channel goes no lower than 50% of the volume of the nearside channel. You may find that you can set this value higher for speakers to have the same effect since both ears can hear from each speaker.

* * *

[int](class_int.md#class-int) **audio/general/default\_playback\_type** = `0` [🔗](#class-projectsettings-property-audio-general-default-playback-type)

**Experimental:** This property may be changed or removed in future versions.

Specifies the default playback type of the platform.

The default value is set to **Stream**, as most platforms have no issues mixing streams.

* * *

[int](class_int.md#class-int) **audio/general/default\_playback\_type.web** = `1` [🔗](#class-projectsettings-property-audio-general-default-playback-type-web)

**Experimental:** This property may be changed or removed in future versions.

Specifies the default playback type of the Web platform.

The default value is set to **Sample** as the Web platform is not suited to mix audio streams outside of the Web Audio API, especially when exporting a single-threaded game. **Sample** allows for lower latency on the web platform at the cost of flexibility ( [AudioEffect](class_audioeffect.md#class-audioeffect) s are not supported).

**Warning:** Forcing **Stream** on the Web platform may cause high audio latency and crackling, especially when exporting a multi-threaded game.

* * *

[bool](class_bool.md#class-bool) **audio/general/ios/mix\_with\_others** = `false` [🔗](#class-projectsettings-property-audio-general-ios-mix-with-others)

Sets the [mixWithOthers](https://developer.apple.com/documentation/avfaudio/avaudiosession/categoryoptions/1616611-mixwithothers) option for the AVAudioSession on iOS. This will override the mix behavior, if the category is set to `Play and Record`, `Playback`, or `Multi Route`.

`Ambient` always has this set per default.

* * *

[int](class_int.md#class-int) **audio/general/ios/session\_category** = `0` [🔗](#class-projectsettings-property-audio-general-ios-session-category)

Sets the [AVAudioSessionCategory](https://developer.apple.com/documentation/avfaudio/avaudiosessioncategory) on iOS. Use the `Playback` category to get sound output, even if the phone is in silent mode.

* * *

[bool](class_bool.md#class-bool) **audio/general/text\_to\_speech** = `false` [🔗](#class-projectsettings-property-audio-general-text-to-speech)

If `true`, text-to-speech support is enabled on startup, otherwise it is enabled first time TTS method is used, see [DisplayServer.tts\_get\_voices()](class_displayserver.md#class-displayserver-method-tts-get-voices) and [DisplayServer.tts\_speak()](class_displayserver.md#class-displayserver-method-tts-speak).

**Note:** Enabling TTS can cause addition idle CPU usage and interfere with the sleep mode, so consider disabling it if TTS is not used.

* * *

[int](class_int.md#class-int) **audio/video/video\_delay\_compensation\_ms** = `0` [🔗](#class-projectsettings-property-audio-video-video-delay-compensation-ms)

Setting to hardcode audio delay when playing video. Best to leave this unchanged unless you know what you are doing.

* * *

[bool](class_bool.md#class-bool) **collada/use\_ambient** = `false` [🔗](#class-projectsettings-property-collada-use-ambient)

If `true`, ambient lights will be imported from COLLADA models as [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d). If `false`, ambient lights will be ignored.

* * *

[int](class_int.md#class-int) **compression/formats/gzip/compression\_level** = `-1` [🔗](#class-projectsettings-property-compression-formats-gzip-compression-level)

The default compression level for gzip. Affects compressed scenes and resources. Higher levels result in smaller files at the cost of compression speed. Decompression speed is mostly unaffected by the compression level. `-1` uses the default gzip compression level, which is identical to `6` but could change in the future due to underlying zlib updates.

* * *

[int](class_int.md#class-int) **compression/formats/zlib/compression\_level** = `-1` [🔗](#class-projectsettings-property-compression-formats-zlib-compression-level)

The default compression level for Zlib. Affects compressed scenes and resources. Higher levels result in smaller files at the cost of compression speed. Decompression speed is mostly unaffected by the compression level. `-1` uses the default gzip compression level, which is identical to `6` but could change in the future due to underlying zlib updates.

* * *

[int](class_int.md#class-int) **compression/formats/zstd/compression\_level** = `3` [🔗](#class-projectsettings-property-compression-formats-zstd-compression-level)

The default compression level for Zstandard. Affects compressed scenes and resources. Higher levels result in smaller files at the cost of compression speed. Decompression speed is mostly unaffected by the compression level.

* * *

[bool](class_bool.md#class-bool) **compression/formats/zstd/long\_distance\_matching** = `false` [🔗](#class-projectsettings-property-compression-formats-zstd-long-distance-matching)

Enables [long-distance matching](https://github.com/facebook/zstd/releases/tag/v1.3.2) in Zstandard.

* * *

[int](class_int.md#class-int) **compression/formats/zstd/window\_log\_size** = `27` [🔗](#class-projectsettings-property-compression-formats-zstd-window-log-size)

Largest size limit (in power of 2) allowed when compressing using long-distance matching with Zstandard. Higher values can result in better compression, but will require more memory when compressing and decompressing.

* * *

[Color](class_color.md#class-color) **debug/canvas\_items/debug\_redraw\_color** = `Color(1, 0.2, 0.2, 0.5)` [🔗](#class-projectsettings-property-debug-canvas-items-debug-redraw-color)

If canvas item redraw debugging is active, this color will be flashed on canvas items when they redraw.

* * *

[float](class_float.md#class-float) **debug/canvas\_items/debug\_redraw\_time** = `1.0` [🔗](#class-projectsettings-property-debug-canvas-items-debug-redraw-time)

If canvas item redraw debugging is active, this will be the time the flash will last each time they redraw.

* * *

[bool](class_bool.md#class-bool) **debug/file\_logging/enable\_file\_logging** = `false` [🔗](#class-projectsettings-property-debug-file-logging-enable-file-logging)

If `true`, logs all output and error messages to files. See also [debug/file\_logging/log\_path](#class-projectsettings-property-debug-file-logging-log-path), [debug/file\_logging/max\_log\_files](#class-projectsettings-property-debug-file-logging-max-log-files), and [application/run/flush\_stdout\_on\_print](#class-projectsettings-property-application-run-flush-stdout-on-print).

* * *

[bool](class_bool.md#class-bool) **debug/file\_logging/enable\_file\_logging.pc** = `true` [🔗](#class-projectsettings-property-debug-file-logging-enable-file-logging-pc)

Desktop override for [debug/file\_logging/enable\_file\_logging](#class-projectsettings-property-debug-file-logging-enable-file-logging), as log files are not readily accessible on mobile/Web platforms.

* * *

[String](class_string.md#class-string) **debug/file\_logging/log\_path** = `"user://logs/godot.log"` [🔗](#class-projectsettings-property-debug-file-logging-log-path)

Path at which to store log files for the project. Using a path under `user://` is recommended.

This can be specified manually on the command line using the `--log-file <file>` [command line argument](../tutorials/editor/command_line_tutorial.md). If this command line argument is specified, log rotation is automatically disabled (see [debug/file\_logging/max\_log\_files](#class-projectsettings-property-debug-file-logging-max-log-files)).

* * *

[int](class_int.md#class-int) **debug/file\_logging/max\_log\_files** = `5` [🔗](#class-projectsettings-property-debug-file-logging-max-log-files)

Specifies the maximum number of log files allowed (used for rotation). Set to `1` to disable log file rotation.

If the `--log-file <file>` [command line argument](../tutorials/editor/command_line_tutorial.md) is used, log rotation is always disabled.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/assert\_always\_false** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-assert-always-false)

When set to `warn` or `error`, produces a warning or an error respectively when an `assert` call always evaluates to `false`.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/assert\_always\_true** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-assert-always-true)

When set to `warn` or `error`, produces a warning or an error respectively when an `assert` call always evaluates to `true`.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/confusable\_capture\_reassignment** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-confusable-capture-reassignment)

When set to `warn` or `error`, produces a warning or an error respectively when a local variable captured by a lambda is reassigned, since this does not modify the outer local variable.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/confusable\_identifier** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-confusable-identifier)

When set to `warn` or `error`, produces a warning or an error respectively when an identifier contains characters that can be confused with something else, like when mixing different alphabets.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/confusable\_local\_declaration** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-confusable-local-declaration)

When set to `warn` or `error`, produces a warning or an error respectively when an identifier declared in the nested block has the same name as an identifier declared below in the parent block.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/confusable\_local\_usage** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-confusable-local-usage)

When set to `warn` or `error`, produces a warning or an error respectively when an identifier that will be shadowed below in the block is used.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/deprecated\_keyword** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-deprecated-keyword)

When set to `warn` or `error`, produces a warning or an error respectively when deprecated keywords are used.

**Note:** There are currently no deprecated keywords, so this warning is never produced.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/empty\_file** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-empty-file)

When set to `warn` or `error`, produces a warning or an error respectively when an empty file is parsed.

* * *

[bool](class_bool.md#class-bool) **debug/gdscript/warnings/enable** = `true` [🔗](#class-projectsettings-property-debug-gdscript-warnings-enable)

If `true`, enables specific GDScript warnings (see `debug/gdscript/warnings/*` settings). If `false`, disables all GDScript warnings.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/enum\_variable\_without\_default** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-enum-variable-without-default)

When set to `warn` or `error`, produces a warning or an error respectively when a variable has an enum type but no explicit default value, but only if the enum does not contain `0` as a valid value.

* * *

[bool](class_bool.md#class-bool) **debug/gdscript/warnings/exclude\_addons** = `true` [🔗](#class-projectsettings-property-debug-gdscript-warnings-exclude-addons)

If `true`, scripts in the `res://addons` folder will not generate warnings.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/get\_node\_default\_without\_onready** = `2` [🔗](#class-projectsettings-property-debug-gdscript-warnings-get-node-default-without-onready)

When set to `warn` or `error`, produces a warning or an error respectively when [Node.get\_node()](class_node.md#class-node-method-get-node) (or the shorthand `$`) is used as default value of a class variable without the `@onready` annotation.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/incompatible\_ternary** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-incompatible-ternary)

When set to `warn` or `error`, produces a warning or an error respectively when a ternary operator may emit values with incompatible types.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/inference\_on\_variant** = `2` [🔗](#class-projectsettings-property-debug-gdscript-warnings-inference-on-variant)

When set to `warn` or `error`, produces a warning or an error respectively when a static inferred type uses a [Variant](class_variant.md#class-variant) as initial value, which makes the static type to also be Variant.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/inferred\_declaration** = `0` [🔗](#class-projectsettings-property-debug-gdscript-warnings-inferred-declaration)

When set to `warn` or `error`, produces a warning or an error respectively when a variable, constant, or parameter has an implicitly inferred static type. In GDScript, type inference is performed by declaring a variable with `:=` instead of `=` and leaving out the type specifier. For example, `var x := 1` will _infer_ the [int](class_int.md#class-int) type, while `var x: int = 1` explicitly declares the variable as [int](class_int.md#class-int).

**Note:** This warning is recommended _in addition_ to [debug/gdscript/warnings/untyped\_declaration](#class-projectsettings-property-debug-gdscript-warnings-untyped-declaration) if you want to always specify the type explicitly. Having `INFERRED_DECLARATION` warning level higher than `UNTYPED_DECLARATION` warning level makes little sense and is not recommended.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/int\_as\_enum\_without\_cast** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-int-as-enum-without-cast)

When set to `warn` or `error`, produces a warning or an error respectively when trying to use an integer as an enum without an explicit cast.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/int\_as\_enum\_without\_match** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-int-as-enum-without-match)

When set to `warn` or `error`, produces a warning or an error respectively when trying to use an integer as an enum when there is no matching enum member for that numeric value.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/integer\_division** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-integer-division)

When set to `warn` or `error`, produces a warning or an error respectively when dividing an integer by another integer (the decimal part will be discarded).

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/missing\_tool** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-missing-tool)

When set to `warn` or `error`, produces a warning or an error respectively when the base class script has the `@tool` annotation, but the current class script does not have it.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/narrowing\_conversion** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-narrowing-conversion)

When set to `warn` or `error`, produces a warning or an error respectively when passing a floating-point value to a function that expects an integer (it will be converted and lose precision).

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/native\_method\_override** = `2` [🔗](#class-projectsettings-property-debug-gdscript-warnings-native-method-override)

When set to `warn` or `error`, produces a warning or an error respectively when a method in the script overrides a native method, because it may not behave as expected.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/onready\_with\_export** = `2` [🔗](#class-projectsettings-property-debug-gdscript-warnings-onready-with-export)

When set to `warn` or `error`, produces a warning or an error respectively when the `@onready` annotation is used together with the `@export` annotation, since it may not behave as expected.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/redundant\_await** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-redundant-await)

When set to `warn` or `error`, produces a warning or an error respectively when a function that is not a coroutine is called with await.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/redundant\_static\_unload** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-redundant-static-unload)

When set to `warn` or `error`, produces a warning or an error respectively when the `@static_unload` annotation is used in a script without any static variables.

* * *

[bool](class_bool.md#class-bool) **debug/gdscript/warnings/renamed\_in\_godot\_4\_hint** = `true` [🔗](#class-projectsettings-property-debug-gdscript-warnings-renamed-in-godot-4-hint)

When enabled, using a property, enum, or function that was renamed since Godot 3 will produce a hint if an error occurs.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/return\_value\_discarded** = `0` [🔗](#class-projectsettings-property-debug-gdscript-warnings-return-value-discarded)

When set to `warn` or `error`, produces a warning or an error respectively when calling a function without using its return value (by assigning it to a variable or using it as a function argument). These return values are sometimes used to indicate possible errors using the [Error](class_@globalscope.md#enum-globalscope-error) enum.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/shadowed\_global\_identifier** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-shadowed-global-identifier)

When set to `warn` or `error`, produces a warning or an error respectively when defining a local or member variable, signal, or enum that would have the same name as a built-in function or global class name, thus shadowing it.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/shadowed\_variable** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-shadowed-variable)

When set to `warn` or `error`, produces a warning or an error respectively when a local variable or local constant shadows a member declared in the current class.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/shadowed\_variable\_base\_class** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-shadowed-variable-base-class)

When set to `warn` or `error`, produces a warning or an error respectively when a local variable or local constant shadows a member declared in a base class.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/standalone\_expression** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-standalone-expression)

When set to `warn` or `error`, produces a warning or an error respectively when calling an expression that may have no effect on the surrounding code, such as writing `2 + 2` as a statement.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/standalone\_ternary** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-standalone-ternary)

When set to `warn` or `error`, produces a warning or an error respectively when calling a ternary expression that may have no effect on the surrounding code, such as writing `42 if active else 0` as a statement.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/static\_called\_on\_instance** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-static-called-on-instance)

When set to `warn` or `error`, produces a warning or an error respectively when calling a static method from an instance of a class instead of from the class directly.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unassigned\_variable** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unassigned-variable)

When set to `warn` or `error`, produces a warning or an error respectively when using a variable that wasn't previously assigned.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unassigned\_variable\_op\_assign** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unassigned-variable-op-assign)

When set to `warn` or `error`, produces a warning or an error respectively when assigning a variable using an assignment operator like `+=` if the variable wasn't previously assigned.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unreachable\_code** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unreachable-code)

When set to `warn` or `error`, produces a warning or an error respectively when unreachable code is detected (such as after a `return` statement that will always be executed).

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unreachable\_pattern** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unreachable-pattern)

When set to `warn` or `error`, produces a warning or an error respectively when an unreachable `match` pattern is detected.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unsafe\_call\_argument** = `0` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unsafe-call-argument)

When set to `warn` or `error`, produces a warning or an error respectively when using an expression whose type may not be compatible with the function parameter expected.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unsafe\_cast** = `0` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unsafe-cast)

When set to `warn` or `error`, produces a warning or an error respectively when a [Variant](class_variant.md#class-variant) value is cast to a non-Variant.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unsafe\_method\_access** = `0` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unsafe-method-access)

When set to `warn` or `error`, produces a warning or an error respectively when calling a method whose presence is not guaranteed at compile-time in the class.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unsafe\_property\_access** = `0` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unsafe-property-access)

When set to `warn` or `error`, produces a warning or an error respectively when accessing a property whose presence is not guaranteed at compile-time in the class.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unsafe\_void\_return** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unsafe-void-return)

When set to `warn` or `error`, produces a warning or an error respectively when returning a call from a `void` function when such call cannot be guaranteed to be also `void`.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/untyped\_declaration** = `0` [🔗](#class-projectsettings-property-debug-gdscript-warnings-untyped-declaration)

When set to `warn` or `error`, produces a warning or an error respectively when a variable or parameter has no static type, or if a function has no static return type.

**Note:** This warning is recommended together with [EditorSettings.text\_editor/completion/add\_type\_hints](class_editorsettings.md#class-editorsettings-property-text-editor-completion-add-type-hints) to help achieve type safety.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unused\_local\_constant** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unused-local-constant)

When set to `warn` or `error`, produces a warning or an error respectively when a local constant is never used.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unused\_parameter** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unused-parameter)

When set to `warn` or `error`, produces a warning or an error respectively when a function parameter is never used.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unused\_private\_class\_variable** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unused-private-class-variable)

When set to `warn` or `error`, produces a warning or an error respectively when a private member variable is never used.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unused\_signal** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unused-signal)

When set to `warn` or `error`, produces a warning or an error respectively when a signal is declared but never explicitly used in the class.

* * *

[int](class_int.md#class-int) **debug/gdscript/warnings/unused\_variable** = `1` [🔗](#class-projectsettings-property-debug-gdscript-warnings-unused-variable)

When set to `warn` or `error`, produces a warning or an error respectively when a local variable is unused.

* * *

[String](class_string.md#class-string) **debug/settings/crash\_handler/message** = `"Please include this when reporting the bug to the project developer."` [🔗](#class-projectsettings-property-debug-settings-crash-handler-message)

Message to be displayed before the backtrace when the engine crashes. By default, this message is only used in exported projects due to the editor-only override applied to this setting.

* * *

[String](class_string.md#class-string) **debug/settings/crash\_handler/message.editor** = `"Please include this when reporting the bug on: https://github.com/godotengine/godot/issues"` [🔗](#class-projectsettings-property-debug-settings-crash-handler-message-editor)

Editor-only override for [debug/settings/crash\_handler/message](#class-projectsettings-property-debug-settings-crash-handler-message). Does not affect exported projects in debug or release mode.

* * *

[bool](class_bool.md#class-bool) **debug/settings/gdscript/always\_track\_call\_stacks** = `false` [🔗](#class-projectsettings-property-debug-settings-gdscript-always-track-call-stacks)

Whether GDScript call stacks will be tracked in release builds, thus allowing [Engine.capture\_script\_backtraces()](class_engine.md#class-engine-method-capture-script-backtraces) to function.

**Note:** This setting has no effect on editor builds or debug builds, where GDScript call stacks are tracked regardless.

* * *

[bool](class_bool.md#class-bool) **debug/settings/gdscript/always\_track\_local\_variables** = `false` [🔗](#class-projectsettings-property-debug-settings-gdscript-always-track-local-variables)

Whether GDScript local variables will be tracked in all builds, including export builds, thus allowing [Engine.capture\_script\_backtraces()](class_engine.md#class-engine-method-capture-script-backtraces) to capture them when enabling its `include_variables` parameter.

Enabling this comes at the cost of roughly 50 bytes of memory per local variable, for every compiled class in the entire project, so can be several MiB in larger projects.

**Note:** This setting has no effect when running the game from the editor, where GDScript local variables are tracked regardless.

* * *

[int](class_int.md#class-int) **debug/settings/gdscript/max\_call\_stack** = `1024` [🔗](#class-projectsettings-property-debug-settings-gdscript-max-call-stack)

Maximum call stack allowed for debugging GDScript.

* * *

[bool](class_bool.md#class-bool) **debug/settings/physics\_interpolation/enable\_warnings** = `true` [🔗](#class-projectsettings-property-debug-settings-physics-interpolation-enable-warnings)

If `true`, enables warnings which can help pinpoint where nodes are being incorrectly updated, which will result in incorrect interpolation and visual glitches.

When a node is being interpolated, it is essential that the transform is set during [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) (during a physics tick) rather than [Node.\_process()](class_node.md#class-node-private-method-process) (during a frame).

* * *

[int](class_int.md#class-int) **debug/settings/profiler/max\_functions** = `16384` [🔗](#class-projectsettings-property-debug-settings-profiler-max-functions)

Maximum number of functions per frame allowed when profiling.

* * *

[int](class_int.md#class-int) **debug/settings/profiler/max\_timestamp\_query\_elements** = `256` [🔗](#class-projectsettings-property-debug-settings-profiler-max-timestamp-query-elements)

Maximum number of timestamp query elements allowed per frame for visual profiling.

* * *

[bool](class_bool.md#class-bool) **debug/settings/stdout/print\_fps** = `false` [🔗](#class-projectsettings-property-debug-settings-stdout-print-fps)

Print frames per second to standard output every second.

* * *

[bool](class_bool.md#class-bool) **debug/settings/stdout/print\_gpu\_profile** = `false` [🔗](#class-projectsettings-property-debug-settings-stdout-print-gpu-profile)

Print GPU profile information to standard output every second. This includes how long each frame takes the GPU to render on average, broken down into different steps of the render pipeline, such as CanvasItems, shadows, glow, etc.

* * *

[bool](class_bool.md#class-bool) **debug/settings/stdout/verbose\_stdout** = `false` [🔗](#class-projectsettings-property-debug-settings-stdout-verbose-stdout)

Print more information to standard output when running. It displays information such as memory leaks, which scenes and resources are being loaded, etc. This can also be enabled using the `--verbose` or `-v` [command line argument](../tutorials/editor/command_line_tutorial.md), even on an exported project. See also [OS.is\_stdout\_verbose()](class_os.md#class-os-method-is-stdout-verbose) and [@GlobalScope.print\_verbose()](class_@globalscope.md#class-globalscope-method-print-verbose).

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/device\_limit\_exceeded** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-device-limit-exceeded)

When set to `true`, produces a warning when the shader exceeds certain device limits. Currently, the only device limit checked is the limit on uniform buffer size. More device limits will be added in the future.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/enable** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-enable)

If `true`, enables specific shader warnings (see `debug/shader_language/warnings/*` settings). If `false`, disables all shader warnings.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/float\_comparison** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-float-comparison)

When set to `true`, produces a warning when two floating-point numbers are compared directly with the `==` operator or the `!=` operator.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/formatting\_error** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-formatting-error)

When set to `true`, produces a warning upon encountering certain formatting errors. Currently this only checks for empty statements. More formatting errors may be added over time.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/magic\_position\_write** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-magic-position-write)

When set to `true`, produces a warning when the shader contains `POSITION = vec4(vertex,` as this was very common code written in Godot 4.2 and earlier that was paired with a QuadMesh to produce a full screen post processes pass. With the switch to reversed z in 4.3, this trick no longer works, as it implicitly relied on the `VERTEX.z` being 0.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/treat\_warnings\_as\_errors** = `false` [🔗](#class-projectsettings-property-debug-shader-language-warnings-treat-warnings-as-errors)

When set to `true`, warnings are treated as errors.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/unused\_constant** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-unused-constant)

When set to `true`, produces a warning when a constant is never used.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/unused\_function** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-unused-function)

When set to `true`, produces a warning when a function is never used.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/unused\_local\_variable** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-unused-local-variable)

When set to `true`, produces a warning when a local variable is never used.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/unused\_struct** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-unused-struct)

When set to `true`, produces a warning when a struct is never used.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/unused\_uniform** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-unused-uniform)

When set to `true`, produces a warning when a uniform is never used.

* * *

[bool](class_bool.md#class-bool) **debug/shader\_language/warnings/unused\_varying** = `true` [🔗](#class-projectsettings-property-debug-shader-language-warnings-unused-varying)

When set to `true`, produces a warning when a varying is never used.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/2d/agents\_radius\_color** = `Color(1, 1, 0, 0.25)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-2d-agents-radius-color)

Color of the avoidance agents radius, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/avoidance/2d/enable\_agents\_radius** = `true` [🔗](#class-projectsettings-property-debug-shapes-avoidance-2d-enable-agents-radius)

If enabled, displays avoidance agents radius when "Visible Avoidance" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/avoidance/2d/enable\_obstacles\_radius** = `true` [🔗](#class-projectsettings-property-debug-shapes-avoidance-2d-enable-obstacles-radius)

If enabled, displays avoidance obstacles radius when "Visible Avoidance" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/avoidance/2d/enable\_obstacles\_static** = `true` [🔗](#class-projectsettings-property-debug-shapes-avoidance-2d-enable-obstacles-static)

If enabled, displays static avoidance obstacles when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/2d/obstacles\_radius\_color** = `Color(1, 0.5, 0, 0.25)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-2d-obstacles-radius-color)

Color of the avoidance obstacles radius, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/2d/obstacles\_static\_edge\_pushin\_color** = `Color(1, 0, 0, 1)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-2d-obstacles-static-edge-pushin-color)

Color of the static avoidance obstacles edges when their vertices are winded in order to push agents in, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/2d/obstacles\_static\_edge\_pushout\_color** = `Color(1, 1, 0, 1)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-2d-obstacles-static-edge-pushout-color)

Color of the static avoidance obstacles edges when their vertices are winded in order to push agents out, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/2d/obstacles\_static\_face\_pushin\_color** = `Color(1, 0, 0, 0)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-2d-obstacles-static-face-pushin-color)

Color of the static avoidance obstacles faces when their vertices are winded in order to push agents in, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/2d/obstacles\_static\_face\_pushout\_color** = `Color(1, 1, 0, 0.5)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-2d-obstacles-static-face-pushout-color)

Color of the static avoidance obstacles faces when their vertices are winded in order to push agents out, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/3d/agents\_radius\_color** = `Color(1, 1, 0, 0.25)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-3d-agents-radius-color)

Color of the avoidance agents radius, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/avoidance/3d/enable\_agents\_radius** = `true` [🔗](#class-projectsettings-property-debug-shapes-avoidance-3d-enable-agents-radius)

If enabled, displays avoidance agents radius when "Visible Avoidance" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/avoidance/3d/enable\_obstacles\_radius** = `true` [🔗](#class-projectsettings-property-debug-shapes-avoidance-3d-enable-obstacles-radius)

If enabled, displays avoidance obstacles radius when "Visible Avoidance" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/avoidance/3d/enable\_obstacles\_static** = `true` [🔗](#class-projectsettings-property-debug-shapes-avoidance-3d-enable-obstacles-static)

If enabled, displays static avoidance obstacles when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/3d/obstacles\_radius\_color** = `Color(1, 0.5, 0, 0.25)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-3d-obstacles-radius-color)

Color of the avoidance obstacles radius, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/3d/obstacles\_static\_edge\_pushin\_color** = `Color(1, 0, 0, 1)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-3d-obstacles-static-edge-pushin-color)

Color of the static avoidance obstacles edges when their vertices are winded in order to push agents in, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/3d/obstacles\_static\_edge\_pushout\_color** = `Color(1, 1, 0, 1)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-3d-obstacles-static-edge-pushout-color)

Color of the static avoidance obstacles edges when their vertices are winded in order to push agents out, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/3d/obstacles\_static\_face\_pushin\_color** = `Color(1, 0, 0, 0)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-3d-obstacles-static-face-pushin-color)

Color of the static avoidance obstacles faces when their vertices are winded in order to push agents in, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/avoidance/3d/obstacles\_static\_face\_pushout\_color** = `Color(1, 1, 0, 0.5)` [🔗](#class-projectsettings-property-debug-shapes-avoidance-3d-obstacles-static-face-pushout-color)

Color of the static avoidance obstacles faces when their vertices are winded in order to push agents out, visible when "Visible Avoidance" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/collision/contact\_color** = `Color(1, 0.2, 0.1, 0.8)` [🔗](#class-projectsettings-property-debug-shapes-collision-contact-color)

Color of the contact points between collision shapes, visible when "Visible Collision Shapes" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/collision/draw\_2d\_outlines** = `true` [🔗](#class-projectsettings-property-debug-shapes-collision-draw-2d-outlines)

Sets whether 2D physics will display collision outlines in game when "Visible Collision Shapes" is enabled in the Debug menu.

* * *

[int](class_int.md#class-int) **debug/shapes/collision/max\_contacts\_displayed** = `10000` [🔗](#class-projectsettings-property-debug-shapes-collision-max-contacts-displayed)

Maximum number of contact points between collision shapes to display when "Visible Collision Shapes" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/collision/shape\_color** = `Color(0, 0.6, 0.7, 0.42)` [🔗](#class-projectsettings-property-debug-shapes-collision-shape-color)

Color of the collision shapes, visible when "Visible Collision Shapes" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/2d/agent\_path\_color** = `Color(1, 0, 0, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-agent-path-color)

Color to display enabled navigation agent paths when an agent has debug enabled.

* * *

[float](class_float.md#class-float) **debug/shapes/navigation/2d/agent\_path\_point\_size** = `4.0` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-agent-path-point-size)

Rasterized size (pixel) used to render navigation agent path points when an agent has debug enabled.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/2d/edge\_connection\_color** = `Color(1, 0, 1, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-edge-connection-color)

Color to display edge connections between navigation regions, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/2d/enable\_agent\_paths** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-enable-agent-paths)

If enabled, displays navigation agent paths when an agent has debug enabled.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/2d/enable\_edge\_connections** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-enable-edge-connections)

If enabled, displays edge connections between navigation regions when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/2d/enable\_edge\_lines** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-enable-edge-lines)

If enabled, displays navigation mesh polygon edges when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/2d/enable\_geometry\_face\_random\_color** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-enable-geometry-face-random-color)

If enabled, colorizes each navigation mesh polygon face with a random color when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/2d/enable\_link\_connections** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-enable-link-connections)

If enabled, displays navigation link connections when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/2d/geometry\_edge\_color** = `Color(0.5, 1, 1, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-geometry-edge-color)

Color to display enabled navigation mesh polygon edges, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/2d/geometry\_edge\_disabled\_color** = `Color(0.5, 0.5, 0.5, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-geometry-edge-disabled-color)

Color to display disabled navigation mesh polygon edges, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/2d/geometry\_face\_color** = `Color(0.5, 1, 1, 0.4)` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-geometry-face-color)

Color to display enabled navigation mesh polygon faces, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/2d/geometry\_face\_disabled\_color** = `Color(0.5, 0.5, 0.5, 0.4)` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-geometry-face-disabled-color)

Color to display disabled navigation mesh polygon faces, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/2d/link\_connection\_color** = `Color(1, 0.5, 1, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-link-connection-color)

Color to use to display navigation link connections, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/2d/link\_connection\_disabled\_color** = `Color(0.5, 0.5, 0.5, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-2d-link-connection-disabled-color)

Color to use to display disabled navigation link connections, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/3d/agent\_path\_color** = `Color(1, 0, 0, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-agent-path-color)

Color to display enabled navigation agent paths when an agent has debug enabled.

* * *

[float](class_float.md#class-float) **debug/shapes/navigation/3d/agent\_path\_point\_size** = `4.0` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-agent-path-point-size)

Rasterized size (pixel) used to render navigation agent path points when an agent has debug enabled.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/3d/edge\_connection\_color** = `Color(1, 0, 1, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-edge-connection-color)

Color to display edge connections between navigation regions, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/3d/enable\_agent\_paths** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-enable-agent-paths)

If enabled, displays navigation agent paths when an agent has debug enabled.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/3d/enable\_agent\_paths\_xray** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-enable-agent-paths-xray)

If enabled, displays navigation agent paths through geometry when an agent has debug enabled.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/3d/enable\_edge\_connections** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-enable-edge-connections)

If enabled, displays edge connections between navigation regions when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/3d/enable\_edge\_connections\_xray** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-enable-edge-connections-xray)

If enabled, displays edge connections between navigation regions through geometry when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/3d/enable\_edge\_lines** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-enable-edge-lines)

If enabled, displays navigation mesh polygon edges when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/3d/enable\_edge\_lines\_xray** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-enable-edge-lines-xray)

If enabled, displays navigation mesh polygon edges through geometry when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/3d/enable\_geometry\_face\_random\_color** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-enable-geometry-face-random-color)

If enabled, colorizes each navigation mesh polygon face with a random color when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/3d/enable\_link\_connections** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-enable-link-connections)

If enabled, displays navigation link connections when "Visible Navigation" is enabled in the Debug menu.

* * *

[bool](class_bool.md#class-bool) **debug/shapes/navigation/3d/enable\_link\_connections\_xray** = `true` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-enable-link-connections-xray)

If enabled, displays navigation link connections through geometry when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/3d/geometry\_edge\_color** = `Color(0.5, 1, 1, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-geometry-edge-color)

Color to display enabled navigation mesh polygon edges, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/3d/geometry\_edge\_disabled\_color** = `Color(0.5, 0.5, 0.5, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-geometry-edge-disabled-color)

Color to display disabled navigation mesh polygon edges, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/3d/geometry\_face\_color** = `Color(0.5, 1, 1, 0.4)` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-geometry-face-color)

Color to display enabled navigation mesh polygon faces, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/3d/geometry\_face\_disabled\_color** = `Color(0.5, 0.5, 0.5, 0.4)` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-geometry-face-disabled-color)

Color to display disabled navigation mesh polygon faces, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/3d/link\_connection\_color** = `Color(1, 0.5, 1, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-link-connection-color)

Color to use to display navigation link connections, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/navigation/3d/link\_connection\_disabled\_color** = `Color(0.5, 0.5, 0.5, 1)` [🔗](#class-projectsettings-property-debug-shapes-navigation-3d-link-connection-disabled-color)

Color to use to display disabled navigation link connections, visible when "Visible Navigation" is enabled in the Debug menu.

* * *

[Color](class_color.md#class-color) **debug/shapes/paths/geometry\_color** = `Color(0.1, 1, 0.7, 0.4)` [🔗](#class-projectsettings-property-debug-shapes-paths-geometry-color)

Color of the curve path geometry, visible when "Visible Paths" is enabled in the Debug menu.

* * *

[float](class_float.md#class-float) **debug/shapes/paths/geometry\_width** = `2.0` [🔗](#class-projectsettings-property-debug-shapes-paths-geometry-width)

Line width of the curve path geometry, visible when "Visible Paths" is enabled in the Debug menu.

* * *

[String](class_string.md#class-string) **display/display\_server/driver** [🔗](#class-projectsettings-property-display-display-server-driver)

Sets the driver to be used by the display server. This property can not be edited directly, instead, set the driver using the platform-specific overrides.

* * *

[String](class_string.md#class-string) **display/display\_server/driver.android** [🔗](#class-projectsettings-property-display-display-server-driver-android)

Android override for [display/display\_server/driver](#class-projectsettings-property-display-display-server-driver).

* * *

[String](class_string.md#class-string) **display/display\_server/driver.ios** [🔗](#class-projectsettings-property-display-display-server-driver-ios)

iOS override for [display/display\_server/driver](#class-projectsettings-property-display-display-server-driver).

* * *

[String](class_string.md#class-string) **display/display\_server/driver.linuxbsd** [🔗](#class-projectsettings-property-display-display-server-driver-linuxbsd)

LinuxBSD override for [display/display\_server/driver](#class-projectsettings-property-display-display-server-driver).

* * *

[String](class_string.md#class-string) **display/display\_server/driver.macos** [🔗](#class-projectsettings-property-display-display-server-driver-macos)

MacOS override for [display/display\_server/driver](#class-projectsettings-property-display-display-server-driver).

* * *

[String](class_string.md#class-string) **display/display\_server/driver.visionos** [🔗](#class-projectsettings-property-display-display-server-driver-visionos)

visionOS override for [display/display\_server/driver](#class-projectsettings-property-display-display-server-driver).

* * *

[String](class_string.md#class-string) **display/display\_server/driver.windows** [🔗](#class-projectsettings-property-display-display-server-driver-windows)

Windows override for [display/display\_server/driver](#class-projectsettings-property-display-display-server-driver).

* * *

[String](class_string.md#class-string) **display/mouse\_cursor/custom\_image** = `""` [🔗](#class-projectsettings-property-display-mouse-cursor-custom-image)

Custom image for the mouse cursor (limited to 256×256).

* * *

[Vector2](class_vector2.md#class-vector2) **display/mouse\_cursor/custom\_image\_hotspot** = `Vector2(0, 0)` [🔗](#class-projectsettings-property-display-mouse-cursor-custom-image-hotspot)

Hotspot for the custom mouse cursor image.

* * *

[Vector2](class_vector2.md#class-vector2) **display/mouse\_cursor/tooltip\_position\_offset** = `Vector2(10, 10)` [🔗](#class-projectsettings-property-display-mouse-cursor-tooltip-position-offset)

Position offset for tooltips, relative to the mouse cursor's hotspot.

* * *

[bool](class_bool.md#class-bool) **display/window/dpi/allow\_hidpi** = `true` [🔗](#class-projectsettings-property-display-window-dpi-allow-hidpi)

If `true`, allows HiDPI display on Windows, macOS, Android, iOS and Web. If `false`, the platform's low-DPI fallback will be used on HiDPI displays, which causes the window to be displayed in a blurry or pixelated manner (and can cause various window management bugs). Therefore, it is recommended to make your project scale to [multiple resolutions](../tutorials/rendering/multiple_resolutions.md) instead of disabling this setting.

**Note:** This setting has no effect on Linux as DPI-awareness fallbacks are not supported there.

* * *

[bool](class_bool.md#class-bool) **display/window/energy\_saving/keep\_screen\_on** = `true` [🔗](#class-projectsettings-property-display-window-energy-saving-keep-screen-on)

If `true`, keeps the screen on (even in case of inactivity), so the screensaver does not take over. Works on desktop and mobile platforms.

* * *

[bool](class_bool.md#class-bool) **display/window/frame\_pacing/android/enable\_frame\_pacing** = `true` [🔗](#class-projectsettings-property-display-window-frame-pacing-android-enable-frame-pacing)

Enable Swappy for stable frame pacing on Android. Highly recommended.

**Note:** This option will be forced off when using OpenXR.

* * *

[int](class_int.md#class-int) **display/window/frame\_pacing/android/swappy\_mode** = `2` [🔗](#class-projectsettings-property-display-window-frame-pacing-android-swappy-mode)

Swappy mode to use. The options are:

- `pipeline_forced_on`: Try to honor [Engine.max\_fps](class_engine.md#class-engine-property-max-fps). Pipelining is always on. This is the same behavior as a desktop PC.

- `auto_fps_pipeline_forced_on`: Calculate the max FPS automatically. The actual max FPS will be between `0` and [Engine.max\_fps](class_engine.md#class-engine-property-max-fps). While this sounds convenient, beware that Swappy will often downgrade the max FPS until it finds a value that can be maintained. That means, if your game runs between 40fps and 60fps on a 60hz screen, after some time Swappy will downgrade the max FPS so that the game renders at a perfect 30fps.

- `auto_fps_auto_pipeline`: Same as `auto_fps_pipeline_forced_on`, but if Swappy detects that rendering is very fast (for example it takes less than 8ms to render on a 60hz screen), Swappy will disable pipelining to minimize input latency. This is the default.


**Note:** If [Engine.max\_fps](class_engine.md#class-engine-property-max-fps) is `0`, the actual max FPS will be considered to be the screen's refresh rate (often 60hz, 90hz, or 120hz, depending on device model and OS settings).

* * *

[int](class_int.md#class-int) **display/window/handheld/orientation** = `0` [🔗](#class-projectsettings-property-display-window-handheld-orientation)

The default screen orientation to use on mobile devices. See [ScreenOrientation](class_displayserver.md#enum-displayserver-screenorientation) for possible values.

**Note:** When set to a portrait orientation, this project setting does not flip the project resolution's width and height automatically. Instead, you have to set [display/window/size/viewport\_width](#class-projectsettings-property-display-window-size-viewport-width) and [display/window/size/viewport\_height](#class-projectsettings-property-display-window-size-viewport-height) accordingly.

* * *

[bool](class_bool.md#class-bool) **display/window/ios/allow\_high\_refresh\_rate** = `true` [🔗](#class-projectsettings-property-display-window-ios-allow-high-refresh-rate)

If `true`, iOS devices that support high refresh rate/"ProMotion" will be allowed to render at up to 120 frames per second.

* * *

[bool](class_bool.md#class-bool) **display/window/ios/hide\_home\_indicator** = `true` [🔗](#class-projectsettings-property-display-window-ios-hide-home-indicator)

If `true`, the home indicator is hidden automatically. This only affects iOS devices without a physical home button.

* * *

[bool](class_bool.md#class-bool) **display/window/ios/hide\_status\_bar** = `true` [🔗](#class-projectsettings-property-display-window-ios-hide-status-bar)

If `true`, the status bar is hidden while the app is running.

* * *

[bool](class_bool.md#class-bool) **display/window/ios/suppress\_ui\_gesture** = `true` [🔗](#class-projectsettings-property-display-window-ios-suppress-ui-gesture)

If `true`, it will require two swipes to access iOS UI that uses gestures.

**Note:** This setting has no effect on the home indicator if `hide_home_indicator` is `true`.

* * *

[bool](class_bool.md#class-bool) **display/window/per\_pixel\_transparency/allowed** = `false` [🔗](#class-projectsettings-property-display-window-per-pixel-transparency-allowed)

If `true`, allows per-pixel transparency for the window background. This affects performance, so leave it on `false` unless you need it. See also [display/window/size/transparent](#class-projectsettings-property-display-window-size-transparent) and [rendering/viewport/transparent\_background](#class-projectsettings-property-rendering-viewport-transparent-background).

* * *

[bool](class_bool.md#class-bool) **display/window/size/always\_on\_top** = `false` [🔗](#class-projectsettings-property-display-window-size-always-on-top)

Forces the main window to be always on top.

**Note:** This setting is ignored on iOS, Android, and Web.

* * *

[bool](class_bool.md#class-bool) **display/window/size/borderless** = `false` [🔗](#class-projectsettings-property-display-window-size-borderless)

Forces the main window to be borderless.

**Note:** This setting is ignored on iOS, Android, and Web.

* * *

[bool](class_bool.md#class-bool) **display/window/size/extend\_to\_title** = `false` [🔗](#class-projectsettings-property-display-window-size-extend-to-title)

Main window content is expanded to the full size of the window. Unlike a borderless window, the frame is left intact and can be used to resize the window, and the title bar is transparent, but has minimize/maximize/close buttons.

**Note:** This setting is implemented only on macOS.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **display/window/size/initial\_position** = `Vector2i(0, 0)` [🔗](#class-projectsettings-property-display-window-size-initial-position)

Main window initial position (in virtual desktop coordinates), this setting is used only if [display/window/size/initial\_position\_type](#class-projectsettings-property-display-window-size-initial-position-type) is set to "Absolute" ( `0`).

**Note:** This setting only affects the exported project, or when the project is run from the command line. In the editor, the value of [EditorSettings.run/window\_placement/rect\_custom\_position](class_editorsettings.md#class-editorsettings-property-run-window-placement-rect-custom-position) is used instead.

* * *

[int](class_int.md#class-int) **display/window/size/initial\_position\_type** = `1` [🔗](#class-projectsettings-property-display-window-size-initial-position-type)

Main window initial position.

`0` \- "Absolute", [display/window/size/initial\_position](#class-projectsettings-property-display-window-size-initial-position) is used to set window position.

`1` \- "Primary Screen Center".

`2` \- "Other Screen Center", [display/window/size/initial\_screen](#class-projectsettings-property-display-window-size-initial-screen) is used to set the screen.

**Note:** This setting only affects the exported project, or when the project is run from the command line. In the editor, the value of [EditorSettings.run/window\_placement/rect](class_editorsettings.md#class-editorsettings-property-run-window-placement-rect) is used instead.

* * *

[int](class_int.md#class-int) **display/window/size/initial\_screen** = `0` [🔗](#class-projectsettings-property-display-window-size-initial-screen)

Main window initial screen, this setting is used only if [display/window/size/initial\_position\_type](#class-projectsettings-property-display-window-size-initial-position-type) is set to "Other Screen Center" ( `2`).

**Note:** This setting only affects the exported project, or when the project is run from the command line. In the editor, the value of [EditorSettings.run/window\_placement/screen](class_editorsettings.md#class-editorsettings-property-run-window-placement-screen) is used instead.

* * *

[bool](class_bool.md#class-bool) **display/window/size/maximize\_disabled** = `false` [🔗](#class-projectsettings-property-display-window-size-maximize-disabled)

If `true`, the main window's maximize button is disabled.

* * *

[bool](class_bool.md#class-bool) **display/window/size/minimize\_disabled** = `false` [🔗](#class-projectsettings-property-display-window-size-minimize-disabled)

If `true`, the main window's minimize button is disabled.

* * *

[int](class_int.md#class-int) **display/window/size/mode** = `0` [🔗](#class-projectsettings-property-display-window-size-mode)

Main window mode. See [WindowMode](class_displayserver.md#enum-displayserver-windowmode) for possible values and how each mode behaves.

**Note:** Game embedding is available only in the "Windowed" mode.

* * *

[bool](class_bool.md#class-bool) **display/window/size/no\_focus** = `false` [🔗](#class-projectsettings-property-display-window-size-no-focus)

Main window can't be focused. No-focus window will ignore all input, except mouse clicks.

* * *

[bool](class_bool.md#class-bool) **display/window/size/resizable** = `true` [🔗](#class-projectsettings-property-display-window-size-resizable)

If `true`, allows the window to be resizable by default.

**Note:** This property is only read when the project starts. To change whether the window is resizable at runtime, set [Window.unresizable](class_window.md#class-window-property-unresizable) instead on the root Window, which can be retrieved using `get_viewport().get_window()`. [Window.unresizable](class_window.md#class-window-property-unresizable) takes the opposite value of this setting.

**Note:** Certain window managers can be configured to ignore the non-resizable status of a window. Do not rely on this setting as a guarantee that the window will _never_ be resizable.

**Note:** This setting is ignored on iOS.

* * *

[bool](class_bool.md#class-bool) **display/window/size/sharp\_corners** = `false` [🔗](#class-projectsettings-property-display-window-size-sharp-corners)

If `true`, the main window uses sharp corners by default.

**Note:** This property is implemented only on Windows (11).

* * *

[bool](class_bool.md#class-bool) **display/window/size/transparent** = `false` [🔗](#class-projectsettings-property-display-window-size-transparent)

If `true`, enables a window manager hint that the main window background _can_ be transparent. This does not make the background actually transparent. For the background to be transparent, the root viewport must also be made transparent by enabling [rendering/viewport/transparent\_background](#class-projectsettings-property-rendering-viewport-transparent-background).

**Note:** To use a transparent splash screen, set [application/boot\_splash/bg\_color](#class-projectsettings-property-application-boot-splash-bg-color) to `Color(0, 0, 0, 0)`.

**Note:** This setting has no effect if [display/window/per\_pixel\_transparency/allowed](#class-projectsettings-property-display-window-per-pixel-transparency-allowed) is set to `false`.

**Note:** This setting has no effect on Android as transparency is controlled only via [display/window/per\_pixel\_transparency/allowed](#class-projectsettings-property-display-window-per-pixel-transparency-allowed).

* * *

[int](class_int.md#class-int) **display/window/size/viewport\_height** = `648` [🔗](#class-projectsettings-property-display-window-size-viewport-height)

Sets the game's main viewport height. On desktop platforms, this is also the initial window height, represented by an indigo-colored rectangle in the 2D editor. Stretch mode settings also use this as a reference when using the `canvas_items` or `viewport` stretch modes. See also [display/window/size/viewport\_width](#class-projectsettings-property-display-window-size-viewport-width), [display/window/size/window\_width\_override](#class-projectsettings-property-display-window-size-window-width-override) and [display/window/size/window\_height\_override](#class-projectsettings-property-display-window-size-window-height-override).

* * *

[int](class_int.md#class-int) **display/window/size/viewport\_width** = `1152` [🔗](#class-projectsettings-property-display-window-size-viewport-width)

Sets the game's main viewport width. On desktop platforms, this is also the initial window width, represented by an indigo-colored rectangle in the 2D editor. Stretch mode settings also use this as a reference when using the `canvas_items` or `viewport` stretch modes. See also [display/window/size/viewport\_height](#class-projectsettings-property-display-window-size-viewport-height), [display/window/size/window\_width\_override](#class-projectsettings-property-display-window-size-window-width-override) and [display/window/size/window\_height\_override](#class-projectsettings-property-display-window-size-window-height-override).

* * *

[int](class_int.md#class-int) **display/window/size/window\_height\_override** = `0` [🔗](#class-projectsettings-property-display-window-size-window-height-override)

On desktop platforms, overrides the game's initial window height. See also [display/window/size/window\_width\_override](#class-projectsettings-property-display-window-size-window-width-override), [display/window/size/viewport\_width](#class-projectsettings-property-display-window-size-viewport-width) and [display/window/size/viewport\_height](#class-projectsettings-property-display-window-size-viewport-height).

**Note:** By default, or when set to `0`, the initial window height is the [display/window/size/viewport\_height](#class-projectsettings-property-display-window-size-viewport-height). This setting is ignored on iOS, Android, and Web.

* * *

[int](class_int.md#class-int) **display/window/size/window\_width\_override** = `0` [🔗](#class-projectsettings-property-display-window-size-window-width-override)

On desktop platforms, overrides the game's initial window width. See also [display/window/size/window\_height\_override](#class-projectsettings-property-display-window-size-window-height-override), [display/window/size/viewport\_width](#class-projectsettings-property-display-window-size-viewport-width) and [display/window/size/viewport\_height](#class-projectsettings-property-display-window-size-viewport-height).

**Note:** By default, or when set to `0`, the initial window width is the [display/window/size/viewport\_width](#class-projectsettings-property-display-window-size-viewport-width). This setting is ignored on iOS, Android, and Web.

* * *

[String](class_string.md#class-string) **display/window/stretch/aspect** = `"keep"` [🔗](#class-projectsettings-property-display-window-stretch-aspect)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **display/window/stretch/mode** = `"disabled"` [🔗](#class-projectsettings-property-display-window-stretch-mode)

Defines how the base size is stretched to fit the resolution of the window or screen.

**"disabled"**: No stretching happens. One unit in the scene corresponds to one pixel on the screen. In this mode, [display/window/stretch/aspect](#class-projectsettings-property-display-window-stretch-aspect) has no effect. Recommended for non-game applications.

**"canvas\_items"**: The base size specified in width and height in the project settings is stretched to cover the whole screen (taking [display/window/stretch/aspect](#class-projectsettings-property-display-window-stretch-aspect) into account). This means that everything is rendered directly at the target resolution. 3D is unaffected, while in 2D, there is no longer a 1:1 correspondence between sprite pixels and screen pixels, which may result in scaling artifacts. Recommended for most games that don't use a pixel art aesthetic, although it is possible to use this stretch mode for pixel art games too (especially in 3D).

**"viewport"**: The size of the root [Viewport](class_viewport.md#class-viewport) is set precisely to the base size specified in the Project Settings' Display section. The scene is rendered to this viewport first. Finally, this viewport is scaled to fit the screen (taking [display/window/stretch/aspect](#class-projectsettings-property-display-window-stretch-aspect) into account). Recommended for games that use a pixel art aesthetic.

* * *

[float](class_float.md#class-float) **display/window/stretch/scale** = `1.0` [🔗](#class-projectsettings-property-display-window-stretch-scale)

The scale factor multiplier to use for 2D elements. This multiplies the final scale factor determined by [display/window/stretch/mode](#class-projectsettings-property-display-window-stretch-mode). If using the **Disabled** stretch mode, this scale factor is applied as-is. This can be adjusted to make the UI easier to read on certain displays.

* * *

[String](class_string.md#class-string) **display/window/stretch/scale\_mode** = `"fractional"` [🔗](#class-projectsettings-property-display-window-stretch-scale-mode)

The policy to use to determine the final scale factor for 2D elements. This affects how [display/window/stretch/scale](#class-projectsettings-property-display-window-stretch-scale) is applied, in addition to the automatic scale factor determined by [display/window/stretch/mode](#class-projectsettings-property-display-window-stretch-mode).

**"fractional"**: The scale factor will not be modified.

**"integer"**: The scale factor will be floored to an integer value, which means that the screen size will always be an integer multiple of the base viewport size. This provides a crisp pixel art appearance.

**Note:** When using integer scaling with a stretch mode, resizing the window to be smaller than the base viewport size will clip the contents. Consider preventing that by setting [Window.min\_size](class_window.md#class-window-property-min-size) to the same value as the base viewport size defined in [display/window/size/viewport\_width](#class-projectsettings-property-display-window-size-viewport-width) and [display/window/size/viewport\_height](#class-projectsettings-property-display-window-size-viewport-height).

* * *

[bool](class_bool.md#class-bool) **display/window/subwindows/embed\_subwindows** = `true` [🔗](#class-projectsettings-property-display-window-subwindows-embed-subwindows)

If `true`, subwindows are embedded in the main window (this is also called single-window mode). Single-window mode can be faster as it does not need to create a separate window for every popup and tooltip, which can be a slow operation depending on the operating system and rendering method in use.

If `false`, subwindows are created as separate windows (this is also called multi-window mode). This allows them to be moved outside the main window and use native operating system window decorations.

This is equivalent to [EditorSettings.interface/editor/single\_window\_mode](class_editorsettings.md#class-editorsettings-property-interface-editor-single-window-mode) in the editor, except the setting's value is inverted.

* * *

[int](class_int.md#class-int) **display/window/vsync/vsync\_mode** = `1` [🔗](#class-projectsettings-property-display-window-vsync-vsync-mode)

Sets the V-Sync mode for the main game window. The editor's own V-Sync mode can be set using [EditorSettings.interface/editor/vsync\_mode](class_editorsettings.md#class-editorsettings-property-interface-editor-vsync-mode).

See [VSyncMode](class_displayserver.md#enum-displayserver-vsyncmode) for possible values and how they affect the behavior of your application.

Depending on the platform and rendering method, the engine will fall back to **Enabled** if the desired mode is not supported.

V-Sync can be disabled on the command line using the `--disable-vsync` [command line argument](../tutorials/editor/command_line_tutorial.md).

**Note:** The **Adaptive** and **Mailbox** V-Sync modes are only supported in the Forward+ and Mobile rendering methods, not Compatibility.

**Note:** This property is only read when the project starts. To change the V-Sync mode at runtime, call [DisplayServer.window\_set\_vsync\_mode()](class_displayserver.md#class-displayserver-method-window-set-vsync-mode) instead.

* * *

[String](class_string.md#class-string) **dotnet/project/assembly\_name** = `""` [🔗](#class-projectsettings-property-dotnet-project-assembly-name)

Name of the .NET assembly. This name is used as the name of the `.csproj` and `.sln` files. By default, it's set to the name of the project ( [application/config/name](#class-projectsettings-property-application-config-name)) allowing to change it in the future without affecting the .NET assembly.

* * *

[int](class_int.md#class-int) **dotnet/project/assembly\_reload\_attempts** = `3` [🔗](#class-projectsettings-property-dotnet-project-assembly-reload-attempts)

Number of times to attempt assembly reloading after rebuilding .NET assemblies. Effectively also the timeout in seconds to wait for unloading of script assemblies to finish.

* * *

[String](class_string.md#class-string) **dotnet/project/solution\_directory** = `""` [🔗](#class-projectsettings-property-dotnet-project-solution-directory)

Directory that contains the `.sln` file. By default, the `.sln` files is in the root of the project directory, next to the `project.godot` and `.csproj` files.

Changing this value allows setting up a multi-project scenario where there are multiple `.csproj`. Keep in mind that the Godot project is considered one of the C# projects in the workspace and it's root directory should contain the `project.godot` and `.csproj` next to each other.

* * *

[bool](class_bool.md#class-bool) **editor/export/convert\_text\_resources\_to\_binary** = `true` [🔗](#class-projectsettings-property-editor-export-convert-text-resources-to-binary)

If `true`, text resource ( `tres`) and text scene ( `tscn`) files are converted to their corresponding binary format on export. This decreases file sizes and speeds up loading slightly.

**Note:** Because a resource's file extension may change in an exported project, it is heavily recommended to use [@GDScript.load()](class_@gdscript.md#class-gdscript-method-load) or [ResourceLoader](class_resourceloader.md#class-resourceloader) instead of [FileAccess](class_fileaccess.md#class-fileaccess) to load resources dynamically.

**Note:** The project settings file ( `project.godot`) will always be converted to binary on export, regardless of this setting.

* * *

[int](class_int.md#class-int) **editor/import/atlas\_max\_width** = `2048` [🔗](#class-projectsettings-property-editor-import-atlas-max-width)

The maximum width to use when importing textures as an atlas. The value will be rounded to the nearest power of two when used. Use this to prevent imported textures from growing too large in the other direction.

* * *

[bool](class_bool.md#class-bool) **editor/import/reimport\_missing\_imported\_files** = `true` [🔗](#class-projectsettings-property-editor-import-reimport-missing-imported-files)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **editor/import/use\_multiple\_threads** = `true` [🔗](#class-projectsettings-property-editor-import-use-multiple-threads)

If `true` importing of resources is run on multiple threads.

* * *

[bool](class_bool.md#class-bool) **editor/movie\_writer/disable\_vsync** = `false` [🔗](#class-projectsettings-property-editor-movie-writer-disable-vsync)

If `true`, requests V-Sync to be disabled when writing a movie (similar to setting [display/window/vsync/vsync\_mode](#class-projectsettings-property-display-window-vsync-vsync-mode) to **Disabled**). This can speed up video writing if the hardware is fast enough to render, encode and save the video at a framerate higher than the monitor's refresh rate.

**Note:** [editor/movie\_writer/disable\_vsync](#class-projectsettings-property-editor-movie-writer-disable-vsync) has no effect if the operating system or graphics driver forces V-Sync with no way for applications to disable it.

* * *

[int](class_int.md#class-int) **editor/movie\_writer/fps** = `60` [🔗](#class-projectsettings-property-editor-movie-writer-fps)

The number of frames per second to record in the video when writing a movie. Simulation speed will adjust to always match the specified framerate, which means the engine will appear to run slower at higher [editor/movie\_writer/fps](#class-projectsettings-property-editor-movie-writer-fps) values. Certain FPS values will require you to adjust [editor/movie\_writer/mix\_rate](#class-projectsettings-property-editor-movie-writer-mix-rate) to prevent audio from desynchronizing over time.

This can be specified manually on the command line using the `--fixed-fps <fps>` [command line argument](../tutorials/editor/command_line_tutorial.md).

* * *

[int](class_int.md#class-int) **editor/movie\_writer/mix\_rate** = `48000` [🔗](#class-projectsettings-property-editor-movie-writer-mix-rate)

The audio mix rate to use in the recorded audio when writing a movie (in Hz). This can be different from [audio/driver/mix\_rate](#class-projectsettings-property-audio-driver-mix-rate), but this value must be divisible by [editor/movie\_writer/fps](#class-projectsettings-property-editor-movie-writer-fps) to prevent audio from desynchronizing over time.

* * *

[String](class_string.md#class-string) **editor/movie\_writer/movie\_file** = `""` [🔗](#class-projectsettings-property-editor-movie-writer-movie-file)

The output path for the movie. The file extension determines the [MovieWriter](class_moviewriter.md#class-moviewriter) that will be used.

Godot has 3 built-in [MovieWriter](class_moviewriter.md#class-moviewriter) s:

- OGV container with Theora for video and Vorbis for audio ( `.ogv` file extension). Lossy compression, medium file sizes, fast encoding. The lossy compression quality can be adjusted by changing [editor/movie\_writer/video\_quality](#class-projectsettings-property-editor-movie-writer-video-quality) and [editor/movie\_writer/ogv/audio\_quality](#class-projectsettings-property-editor-movie-writer-ogv-audio-quality). The resulting file can be viewed in Godot with [VideoStreamPlayer](class_videostreamplayer.md#class-videostreamplayer) and most video players, but not web browsers as they don't support Theora.

- AVI container with MJPEG for video and uncompressed audio ( `.avi` file extension). Lossy compression, medium file sizes, fast encoding. The lossy compression quality can be adjusted by changing [editor/movie\_writer/video\_quality](#class-projectsettings-property-editor-movie-writer-video-quality). The resulting file can be viewed in most video players, but it must be converted to another format for viewing on the web or by Godot with [VideoStreamPlayer](class_videostreamplayer.md#class-videostreamplayer). MJPEG does not support transparency. AVI output is currently limited to a file of 4 GB in size at most.

- PNG image sequence for video and WAV for audio ( `.png` file extension). Lossless compression, large file sizes, slow encoding. Designed to be encoded to a video file with another tool such as [FFmpeg](https://ffmpeg.org/) after recording. Transparency is currently not supported, even if the root viewport is set to be transparent.


If you need to encode to a different format or pipe a stream through third-party software, you can extend this [MovieWriter](class_moviewriter.md#class-moviewriter) class to create your own movie writers.

When using PNG output, the frame number will be appended at the end of the file name. It starts from 0 and is padded with 8 digits to ensure correct sorting and easier processing. For example, if the output path is `/tmp/hello.png`, the first two frames will be `/tmp/hello00000000.png` and `/tmp/hello00000001.png`. The audio will be saved at `/tmp/hello.wav`.

* * *

[float](class_float.md#class-float) **editor/movie\_writer/ogv/audio\_quality** = `0.5` [🔗](#class-projectsettings-property-editor-movie-writer-ogv-audio-quality)

The audio encoding quality to use when writing Vorbis audio to a file, between `-0.1` and `1.0` (inclusive). Higher `quality` values result in better-sounding output at the cost of larger file sizes. Even at quality `1.0`, compression remains lossy.

**Note:** This does not affect video quality, which is controlled by [editor/movie\_writer/video\_quality](#class-projectsettings-property-editor-movie-writer-video-quality) instead.

* * *

[int](class_int.md#class-int) **editor/movie\_writer/ogv/encoding\_speed** = `4` [🔗](#class-projectsettings-property-editor-movie-writer-ogv-encoding-speed)

The tradeoff between encoding speed and compression efficiency. Speed `1` is the slowest but provides the best compression. Speed `4` is the fastest but provides the worst compression. Video quality is generally not affected significantly by this setting.

* * *

[int](class_int.md#class-int) **editor/movie\_writer/ogv/keyframe\_interval** = `64` [🔗](#class-projectsettings-property-editor-movie-writer-ogv-keyframe-interval)

Forces keyframes at the specified interval (in frame count). Higher values can improve compression up to a certain level at the expense of higher latency when seeking.

* * *

[int](class_int.md#class-int) **editor/movie\_writer/speaker\_mode** = `0` [🔗](#class-projectsettings-property-editor-movie-writer-speaker-mode)

The speaker mode to use in the recorded audio when writing a movie. See [SpeakerMode](class_audioserver.md#enum-audioserver-speakermode) for possible values.

* * *

[float](class_float.md#class-float) **editor/movie\_writer/video\_quality** = `0.75` [🔗](#class-projectsettings-property-editor-movie-writer-video-quality)

The video encoding quality to use when writing a Theora or AVI (MJPEG) video to a file, between `0.0` and `1.0` (inclusive). Higher `quality` values result in better-looking output at the cost of larger file sizes. Recommended `quality` values are between `0.75` and `0.9`. Even at quality `1.0`, compression remains lossy.

* * *

[String](class_string.md#class-string) **editor/naming/default\_signal\_callback\_name** = `"_on_{node_name}_{signal_name}"` [🔗](#class-projectsettings-property-editor-naming-default-signal-callback-name)

The format of the default signal callback name (in the Signal Connection Dialog). The following substitutions are available: `{NodeName}`, `{nodeName}`, `{node_name}`, `{SignalName}`, `{signalName}`, and `{signal_name}`.

* * *

[String](class_string.md#class-string) **editor/naming/default\_signal\_callback\_to\_self\_name** = `"_on_{signal_name}"` [🔗](#class-projectsettings-property-editor-naming-default-signal-callback-to-self-name)

The format of the default signal callback name when a signal connects to the same node that emits it (in the Signal Connection Dialog). The following substitutions are available: `{NodeName}`, `{nodeName}`, `{node_name}`, `{SignalName}`, `{signalName}`, and `{signal_name}`.

* * *

[int](class_int.md#class-int) **editor/naming/node\_name\_casing** = `0` [🔗](#class-projectsettings-property-editor-naming-node-name-casing)

When creating node names automatically, set the type of casing to use in this project. This is mostly an editor setting.

* * *

[int](class_int.md#class-int) **editor/naming/node\_name\_num\_separator** = `0` [🔗](#class-projectsettings-property-editor-naming-node-name-num-separator)

What to use to separate node name from number. This is mostly an editor setting.

* * *

[int](class_int.md#class-int) **editor/naming/scene\_name\_casing** = `2` [🔗](#class-projectsettings-property-editor-naming-scene-name-casing)

When generating scene file names from scene root node, set the type of casing to use in this project. This is mostly an editor setting.

* * *

[int](class_int.md#class-int) **editor/naming/script\_name\_casing** = `0` [🔗](#class-projectsettings-property-editor-naming-script-name-casing)

When generating script file names from the selected node, set the type of casing to use in this project. This is mostly an editor setting.

* * *

[String](class_string.md#class-string) **editor/run/main\_run\_args** = `""` [🔗](#class-projectsettings-property-editor-run-main-run-args)

The command-line arguments to append to Godot's own command line when running the project. This doesn't affect the editor itself.

It is possible to make another executable run Godot by using the `%command%` placeholder. The placeholder will be replaced with Godot's own command line. Program-specific arguments should be placed _before_ the placeholder, whereas Godot-specific arguments should be placed _after_ the placeholder.

For example, this can be used to force the project to run on the dedicated GPU in an NVIDIA Optimus system on Linux:

```
prime-run %command%

```

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **editor/script/search\_in\_file\_extensions** [🔗](#class-projectsettings-property-editor-script-search-in-file-extensions)

Text-based file extensions to include in the script editor's "Find in Files" feature. You can add e.g. `tscn` if you wish to also parse your scene files, especially if you use built-in scripts which are serialized in the scene files.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[String](class_string.md#class-string) **editor/script/templates\_search\_path** = `"res://script_templates"` [🔗](#class-projectsettings-property-editor-script-templates-search-path)

Search path for project-specific script templates. Godot will search for script templates both in the editor-specific path and in this project-specific path.

* * *

[bool](class_bool.md#class-bool) **editor/version\_control/autoload\_on\_startup** = `false` [🔗](#class-projectsettings-property-editor-version-control-autoload-on-startup)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **editor/version\_control/plugin\_name** = `""` [🔗](#class-projectsettings-property-editor-version-control-plugin-name)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **filesystem/import/blender/enabled** = `true` [🔗](#class-projectsettings-property-filesystem-import-blender-enabled)

If `true`, Blender 3D scene files with the `.blend` extension will be imported by converting them to glTF 2.0.

This requires configuring a path to a Blender executable in the [EditorSettings.filesystem/import/blender/blender\_path](class_editorsettings.md#class-editorsettings-property-filesystem-import-blender-blender-path) setting. Blender 3.0 or later is required.

* * *

[bool](class_bool.md#class-bool) **filesystem/import/blender/enabled.android** = `false` [🔗](#class-projectsettings-property-filesystem-import-blender-enabled-android)

Override for [filesystem/import/blender/enabled](#class-projectsettings-property-filesystem-import-blender-enabled) on Android where Blender can't easily be accessed from Godot.

* * *

[bool](class_bool.md#class-bool) **filesystem/import/blender/enabled.web** = `false` [🔗](#class-projectsettings-property-filesystem-import-blender-enabled-web)

Override for [filesystem/import/blender/enabled](#class-projectsettings-property-filesystem-import-blender-enabled) on the Web where Blender can't easily be accessed from Godot.

* * *

[bool](class_bool.md#class-bool) **filesystem/import/fbx2gltf/enabled** = `true` [🔗](#class-projectsettings-property-filesystem-import-fbx2gltf-enabled)

If `true`, Autodesk FBX 3D scene files with the `.fbx` extension will be imported by converting them to glTF 2.0.

This requires configuring a path to an FBX2glTF executable in the editor settings at [EditorSettings.filesystem/import/fbx/fbx2gltf\_path](class_editorsettings.md#class-editorsettings-property-filesystem-import-fbx-fbx2gltf-path).

* * *

[bool](class_bool.md#class-bool) **filesystem/import/fbx2gltf/enabled.android** = `false` [🔗](#class-projectsettings-property-filesystem-import-fbx2gltf-enabled-android)

Override for [filesystem/import/fbx2gltf/enabled](#class-projectsettings-property-filesystem-import-fbx2gltf-enabled) on Android where FBX2glTF can't easily be accessed from Godot.

* * *

[bool](class_bool.md#class-bool) **filesystem/import/fbx2gltf/enabled.web** = `false` [🔗](#class-projectsettings-property-filesystem-import-fbx2gltf-enabled-web)

Override for [filesystem/import/fbx2gltf/enabled](#class-projectsettings-property-filesystem-import-fbx2gltf-enabled) on the Web where FBX2glTF can't easily be accessed from Godot.

* * *

[int](class_int.md#class-int) **gui/common/default\_scroll\_deadzone** = `0` [🔗](#class-projectsettings-property-gui-common-default-scroll-deadzone)

Default value for [ScrollContainer.scroll\_deadzone](class_scrollcontainer.md#class-scrollcontainer-property-scroll-deadzone), which will be used for all [ScrollContainer](class_scrollcontainer.md#class-scrollcontainer) s unless overridden.

* * *

[bool](class_bool.md#class-bool) **gui/common/snap\_controls\_to\_pixels** = `true` [🔗](#class-projectsettings-property-gui-common-snap-controls-to-pixels)

If `true`, snaps [Control](class_control.md#class-control) node vertices to the nearest pixel to ensure they remain crisp even when the camera moves or zooms.

* * *

[int](class_int.md#class-int) **gui/common/swap\_cancel\_ok** = `0` [🔗](#class-projectsettings-property-gui-common-swap-cancel-ok)

How to position the Cancel and OK buttons in the project's [AcceptDialog](class_acceptdialog.md#class-acceptdialog) s. Different platforms have different standard behaviors for this, which can be overridden using this setting.

- **Auto** ( `0`) follows the platform convention: OK first on Windows, KDE, and LXQt, Cancel first on macOS and other Linux desktop environments. [DisplayServer.get\_swap\_cancel\_ok()](class_displayserver.md#class-displayserver-method-get-swap-cancel-ok) can be used to query whether buttons are swapped at run-time.

- **Cancel First** ( `1`) forces the ordering Cancel/OK.

- **OK First** ( `2`) forces the ordering OK/Cancel.


**Note:** This doesn't affect native dialogs such as the ones spawned by [DisplayServer.dialog\_show()](class_displayserver.md#class-displayserver-method-dialog-show).

* * *

[int](class_int.md#class-int) **gui/common/text\_edit\_undo\_stack\_max\_size** = `1024` [🔗](#class-projectsettings-property-gui-common-text-edit-undo-stack-max-size)

Maximum undo/redo history size for [TextEdit](class_textedit.md#class-textedit) fields.

* * *

[bool](class_bool.md#class-bool) **gui/fonts/dynamic\_fonts/use\_oversampling** = `true` [🔗](#class-projectsettings-property-gui-fonts-dynamic-fonts-use-oversampling)

If set to `true` and [display/window/stretch/mode](#class-projectsettings-property-display-window-stretch-mode) is set to **"canvas\_items"**, font and [DPITexture](class_dpitexture.md#class-dpitexture) oversampling is enabled in the main window. Use [Viewport.oversampling](class_viewport.md#class-viewport-property-oversampling) to control oversampling in other viewports and windows.

* * *

[String](class_string.md#class-string) **gui/theme/custom** = `""` [🔗](#class-projectsettings-property-gui-theme-custom)

Path to a custom [Theme](class_theme.md#class-theme) resource file to use for the project ( `.theme` or generic `.tres`/ `.res` extension).

* * *

[String](class_string.md#class-string) **gui/theme/custom\_font** = `""` [🔗](#class-projectsettings-property-gui-theme-custom-font)

Path to a custom [Font](class_font.md#class-font) resource to use as default for all GUI elements of the project.

* * *

[int](class_int.md#class-int) **gui/theme/default\_font\_antialiasing** = `1` [🔗](#class-projectsettings-property-gui-theme-default-font-antialiasing)

Font anti-aliasing mode for the default project font. See [FontFile.antialiasing](class_fontfile.md#class-fontfile-property-antialiasing).

**Note:** This setting does not affect custom [Font](class_font.md#class-font) s used within the project. Use the **Import** dock for that instead (see [ResourceImporterDynamicFont.antialiasing](class_resourceimporterdynamicfont.md#class-resourceimporterdynamicfont-property-antialiasing)).

* * *

[bool](class_bool.md#class-bool) **gui/theme/default\_font\_generate\_mipmaps** = `false` [🔗](#class-projectsettings-property-gui-theme-default-font-generate-mipmaps)

If set to `true`, the default font will have mipmaps generated. This prevents text from looking grainy when a [Control](class_control.md#class-control) is scaled down, or when a [Label3D](class_label3d.md#class-label3d) is viewed from a long distance (if [Label3D.texture\_filter](class_label3d.md#class-label3d-property-texture-filter) is set to a mode that displays mipmaps).

Enabling [gui/theme/default\_font\_generate\_mipmaps](#class-projectsettings-property-gui-theme-default-font-generate-mipmaps) increases font generation time and memory usage. Only enable this setting if you actually need it.

**Note:** This setting does not affect custom [Font](class_font.md#class-font) s used within the project. Use the **Import** dock for that instead (see [ResourceImporterDynamicFont.generate\_mipmaps](class_resourceimporterdynamicfont.md#class-resourceimporterdynamicfont-property-generate-mipmaps)).

* * *

[int](class_int.md#class-int) **gui/theme/default\_font\_hinting** = `1` [🔗](#class-projectsettings-property-gui-theme-default-font-hinting)

Font hinting mode for the default project font. See [FontFile.hinting](class_fontfile.md#class-fontfile-property-hinting).

**Note:** This setting does not affect custom [Font](class_font.md#class-font) s used within the project. Use the **Import** dock for that instead (see [ResourceImporterDynamicFont.hinting](class_resourceimporterdynamicfont.md#class-resourceimporterdynamicfont-property-hinting)).

* * *

[bool](class_bool.md#class-bool) **gui/theme/default\_font\_multichannel\_signed\_distance\_field** = `false` [🔗](#class-projectsettings-property-gui-theme-default-font-multichannel-signed-distance-field)

If set to `true`, the default font will use multichannel signed distance field (MSDF) for crisp rendering at any size. Since this approach does not rely on rasterizing the font every time its size changes, this allows for resizing the font in real-time without any performance penalty. Text will also not look grainy for [Control](class_control.md#class-control) s that are scaled down (or for [Label3D](class_label3d.md#class-label3d) s viewed from a long distance).

MSDF font rendering can be combined with [gui/theme/default\_font\_generate\_mipmaps](#class-projectsettings-property-gui-theme-default-font-generate-mipmaps) to further improve font rendering quality when scaled down.

**Note:** This setting does not affect custom [Font](class_font.md#class-font) s used within the project. Use the **Import** dock for that instead (see [ResourceImporterDynamicFont.multichannel\_signed\_distance\_field](class_resourceimporterdynamicfont.md#class-resourceimporterdynamicfont-property-multichannel-signed-distance-field)).

* * *

[int](class_int.md#class-int) **gui/theme/default\_font\_subpixel\_positioning** = `1` [🔗](#class-projectsettings-property-gui-theme-default-font-subpixel-positioning)

Font glyph subpixel positioning mode for the default project font. See [FontFile.subpixel\_positioning](class_fontfile.md#class-fontfile-property-subpixel-positioning).

**Note:** This setting does not affect custom [Font](class_font.md#class-font) s used within the project. Use the **Import** dock for that instead (see [ResourceImporterDynamicFont.subpixel\_positioning](class_resourceimporterdynamicfont.md#class-resourceimporterdynamicfont-property-subpixel-positioning)).

* * *

[float](class_float.md#class-float) **gui/theme/default\_theme\_scale** = `1.0` [🔗](#class-projectsettings-property-gui-theme-default-theme-scale)

The default scale factor for [Control](class_control.md#class-control) s, when not overridden by a [Theme](class_theme.md#class-theme).

**Note:** This property is only read when the project starts. To change the default scale at runtime, set [ThemeDB.fallback\_base\_scale](class_themedb.md#class-themedb-property-fallback-base-scale) instead.

* * *

[int](class_int.md#class-int) **gui/theme/lcd\_subpixel\_layout** = `1` [🔗](#class-projectsettings-property-gui-theme-lcd-subpixel-layout)

LCD subpixel layout used for font anti-aliasing. See [FontLCDSubpixelLayout](class_textserver.md#enum-textserver-fontlcdsubpixellayout).

* * *

[float](class_float.md#class-float) **gui/timers/button\_shortcut\_feedback\_highlight\_time** = `0.2` [🔗](#class-projectsettings-property-gui-timers-button-shortcut-feedback-highlight-time)

When [BaseButton.shortcut\_feedback](class_basebutton.md#class-basebutton-property-shortcut-feedback) is enabled, this is the time the [BaseButton](class_basebutton.md#class-basebutton) will remain highlighted after a shortcut.

* * *

[int](class_int.md#class-int) **gui/timers/incremental\_search\_max\_interval\_msec** = `2000` [🔗](#class-projectsettings-property-gui-timers-incremental-search-max-interval-msec)

Timer setting for incremental search in [Tree](class_tree.md#class-tree), [ItemList](class_itemlist.md#class-itemlist), etc. controls (in milliseconds).

* * *

[float](class_float.md#class-float) **gui/timers/text\_edit\_idle\_detect\_sec** = `3` [🔗](#class-projectsettings-property-gui-timers-text-edit-idle-detect-sec)

Timer for detecting idle in [TextEdit](class_textedit.md#class-textedit) (in seconds).

* * *

[float](class_float.md#class-float) **gui/timers/tooltip\_delay\_sec** = `0.5` [🔗](#class-projectsettings-property-gui-timers-tooltip-delay-sec)

Default delay for tooltips (in seconds).

* * *

[float](class_float.md#class-float) **gui/timers/tooltip\_delay\_sec.editor\_hint** = `0.5` [🔗](#class-projectsettings-property-gui-timers-tooltip-delay-sec-editor-hint)

Delay for tooltips in the editor.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_accept** [🔗](#class-projectsettings-property-input-ui-accept)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to confirm a focused button, menu or list item, or validate input.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_accessibility\_drag\_and\_drop** [🔗](#class-projectsettings-property-input-ui-accessibility-drag-and-drop)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to start or end a drag-and-drop operation without using mouse.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_cancel** [🔗](#class-projectsettings-property-input-ui-cancel)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to discard a modal or pending input.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_colorpicker\_delete\_preset** [🔗](#class-projectsettings-property-input-ui-colorpicker-delete-preset)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to delete a color preset in a [ColorPicker](class_colorpicker.md#class-colorpicker).

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_copy** [🔗](#class-projectsettings-property-input-ui-copy)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to copy a selection to the clipboard.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_cut** [🔗](#class-projectsettings-property-input-ui-cut)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to cut a selection to the clipboard.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_down** [🔗](#class-projectsettings-property-input-ui-down)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move down in the UI.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_end** [🔗](#class-projectsettings-property-input-ui-end)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to go to the end position of a [Control](class_control.md#class-control) (e.g. last item in an [ItemList](class_itemlist.md#class-itemlist) or a [Tree](class_tree.md#class-tree)), matching the behavior of [@GlobalScope.KEY\_END](class_@globalscope.md#class-globalscope-constant-key-end) on typical desktop UI systems.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_filedialog\_refresh** [🔗](#class-projectsettings-property-input-ui-filedialog-refresh)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to refresh the contents of the current directory of a [FileDialog](class_filedialog.md#class-filedialog).

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_filedialog\_show\_hidden** [🔗](#class-projectsettings-property-input-ui-filedialog-show-hidden)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to toggle showing hidden files and directories in a [FileDialog](class_filedialog.md#class-filedialog).

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_filedialog\_up\_one\_level** [🔗](#class-projectsettings-property-input-ui-filedialog-up-one-level)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to go up one directory in a [FileDialog](class_filedialog.md#class-filedialog).

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_focus\_mode** [🔗](#class-projectsettings-property-input-ui-focus-mode)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to switch [TextEdit](class_textedit.md#class-textedit) [input/ui\_text\_indent](#class-projectsettings-property-input-ui-text-indent) between moving keyboard focus to the next [Control](class_control.md#class-control) in the scene and inputting a `Tab` character.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_focus\_next** [🔗](#class-projectsettings-property-input-ui-focus-next)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to focus the next [Control](class_control.md#class-control) in the scene. The focus behavior can be configured via [Control.focus\_next](class_control.md#class-control-property-focus-next).

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_focus\_prev** [🔗](#class-projectsettings-property-input-ui-focus-prev)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to focus the previous [Control](class_control.md#class-control) in the scene. The focus behavior can be configured via [Control.focus\_previous](class_control.md#class-control-property-focus-previous).

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_graph\_delete** [🔗](#class-projectsettings-property-input-ui-graph-delete)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to delete a [GraphNode](class_graphnode.md#class-graphnode) in a [GraphEdit](class_graphedit.md#class-graphedit).

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_graph\_duplicate** [🔗](#class-projectsettings-property-input-ui-graph-duplicate)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to duplicate a [GraphNode](class_graphnode.md#class-graphnode) in a [GraphEdit](class_graphedit.md#class-graphedit).

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_graph\_follow\_left** [🔗](#class-projectsettings-property-input-ui-graph-follow-left)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to follow a [GraphNode](class_graphnode.md#class-graphnode) input port connection.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_graph\_follow\_left.macos** [🔗](#class-projectsettings-property-input-ui-graph-follow-left-macos)

macOS specific override for the shortcut to follow a [GraphNode](class_graphnode.md#class-graphnode) input port connection.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_graph\_follow\_right** [🔗](#class-projectsettings-property-input-ui-graph-follow-right)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to follow a [GraphNode](class_graphnode.md#class-graphnode) output port connection.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_graph\_follow\_right.macos** [🔗](#class-projectsettings-property-input-ui-graph-follow-right-macos)

macOS specific override for the shortcut to follow a [GraphNode](class_graphnode.md#class-graphnode) output port connection.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_home** [🔗](#class-projectsettings-property-input-ui-home)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to go to the start position of a [Control](class_control.md#class-control) (e.g. first item in an [ItemList](class_itemlist.md#class-itemlist) or a [Tree](class_tree.md#class-tree)), matching the behavior of [@GlobalScope.KEY\_HOME](class_@globalscope.md#class-globalscope-constant-key-home) on typical desktop UI systems.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_left** [🔗](#class-projectsettings-property-input-ui-left)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move left in the UI.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_menu** [🔗](#class-projectsettings-property-input-ui-menu)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to open a context menu in a text field.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_page\_down** [🔗](#class-projectsettings-property-input-ui-page-down)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to go down a page in a [Control](class_control.md#class-control) (e.g. in an [ItemList](class_itemlist.md#class-itemlist) or a [Tree](class_tree.md#class-tree)), matching the behavior of [@GlobalScope.KEY\_PAGEDOWN](class_@globalscope.md#class-globalscope-constant-key-pagedown) on typical desktop UI systems.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_page\_up** [🔗](#class-projectsettings-property-input-ui-page-up)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to go up a page in a [Control](class_control.md#class-control) (e.g. in an [ItemList](class_itemlist.md#class-itemlist) or a [Tree](class_tree.md#class-tree)), matching the behavior of [@GlobalScope.KEY\_PAGEUP](class_@globalscope.md#class-globalscope-constant-key-pageup) on typical desktop UI systems.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_paste** [🔗](#class-projectsettings-property-input-ui-paste)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to paste from the clipboard.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_redo** [🔗](#class-projectsettings-property-input-ui-redo)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to redo an undone action.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_right** [🔗](#class-projectsettings-property-input-ui-right)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move right in the UI.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_select** [🔗](#class-projectsettings-property-input-ui-select)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to select an item in a [Control](class_control.md#class-control) (e.g. in an [ItemList](class_itemlist.md#class-itemlist) or a [Tree](class_tree.md#class-tree)).

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_swap\_input\_direction** [🔗](#class-projectsettings-property-input-ui-swap-input-direction)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to swap input direction, i.e. change between left-to-right to right-to-left modes. Affects text-editing controls ( [LineEdit](class_lineedit.md#class-lineedit), [TextEdit](class_textedit.md#class-textedit)).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_add\_selection\_for\_next\_occurrence** [🔗](#class-projectsettings-property-input-ui-text-add-selection-for-next-occurrence)

If a selection is currently active with the last caret in text fields, searches for the next occurrence of the selection, adds a caret and selects the next occurrence.

If no selection is currently active with the last caret in text fields, selects the word currently under the caret.

The action can be performed sequentially for all occurrences of the selection of the last caret and for all existing carets.

The viewport is adjusted to the latest newly added caret.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_backspace** [🔗](#class-projectsettings-property-input-ui-text-backspace)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to delete the character before the text cursor.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_backspace\_all\_to\_left** [🔗](#class-projectsettings-property-input-ui-text-backspace-all-to-left)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to delete **all** text before the text cursor.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_backspace\_all\_to\_left.macos** [🔗](#class-projectsettings-property-input-ui-text-backspace-all-to-left-macos)

macOS specific override for the shortcut to delete all text before the text cursor.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_backspace\_word** [🔗](#class-projectsettings-property-input-ui-text-backspace-word)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to delete all characters before the cursor up until a whitespace or punctuation character.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_backspace\_word.macos** [🔗](#class-projectsettings-property-input-ui-text-backspace-word-macos)

macOS specific override for the shortcut to delete a word.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_add\_above** [🔗](#class-projectsettings-property-input-ui-text-caret-add-above)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to add an additional caret above every caret of a text.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_add\_above.macos** [🔗](#class-projectsettings-property-input-ui-text-caret-add-above-macos)

macOS specific override for the shortcut to add a caret above every caret.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_add\_below** [🔗](#class-projectsettings-property-input-ui-text-caret-add-below)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to add an additional caret below every caret of a text.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_add\_below.macos** [🔗](#class-projectsettings-property-input-ui-text-caret-add-below-macos)

macOS specific override for the shortcut to add a caret below every caret.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_document\_end** [🔗](#class-projectsettings-property-input-ui-text-caret-document-end)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor to the end of the text.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_document\_end.macos** [🔗](#class-projectsettings-property-input-ui-text-caret-document-end-macos)

macOS specific override for the shortcut to move the text cursor to the end of the text.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_document\_start** [🔗](#class-projectsettings-property-input-ui-text-caret-document-start)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor to the start of the text.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_document\_start.macos** [🔗](#class-projectsettings-property-input-ui-text-caret-document-start-macos)

macOS specific override for the shortcut to move the text cursor to the start of the text.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_down** [🔗](#class-projectsettings-property-input-ui-text-caret-down)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor down.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_left** [🔗](#class-projectsettings-property-input-ui-text-caret-left)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor left.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_line\_end** [🔗](#class-projectsettings-property-input-ui-text-caret-line-end)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor to the end of the line.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_line\_end.macos** [🔗](#class-projectsettings-property-input-ui-text-caret-line-end-macos)

macOS specific override for the shortcut to move the text cursor to the end of the line.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_line\_start** [🔗](#class-projectsettings-property-input-ui-text-caret-line-start)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor to the start of the line.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_line\_start.macos** [🔗](#class-projectsettings-property-input-ui-text-caret-line-start-macos)

macOS specific override for the shortcut to move the text cursor to the start of the line.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_page\_down** [🔗](#class-projectsettings-property-input-ui-text-caret-page-down)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor down one page.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_page\_up** [🔗](#class-projectsettings-property-input-ui-text-caret-page-up)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor up one page.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_right** [🔗](#class-projectsettings-property-input-ui-text-caret-right)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor right.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_up** [🔗](#class-projectsettings-property-input-ui-text-caret-up)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor up.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_word\_left** [🔗](#class-projectsettings-property-input-ui-text-caret-word-left)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor left to the next whitespace or punctuation.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_word\_left.macos** [🔗](#class-projectsettings-property-input-ui-text-caret-word-left-macos)

macOS specific override for the shortcut to move the text cursor back one word.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_word\_right** [🔗](#class-projectsettings-property-input-ui-text-caret-word-right)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move the text cursor right to the next whitespace or punctuation.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_caret\_word\_right.macos** [🔗](#class-projectsettings-property-input-ui-text-caret-word-right-macos)

macOS specific override for the shortcut to move the text cursor forward one word.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_clear\_carets\_and\_selection** [🔗](#class-projectsettings-property-input-ui-text-clear-carets-and-selection)

If there's only one caret active and with a selection, clears the selection.

In case there's more than one caret active, removes the secondary carets and clears their selections.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_completion\_accept** [🔗](#class-projectsettings-property-input-ui-text-completion-accept)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to accept an autocompletion hint.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_completion\_query** [🔗](#class-projectsettings-property-input-ui-text-completion-query)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to request autocompletion.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_completion\_replace** [🔗](#class-projectsettings-property-input-ui-text-completion-replace)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to accept an autocompletion hint, replacing existing text.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_dedent** [🔗](#class-projectsettings-property-input-ui-text-dedent)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to unindent text.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_delete** [🔗](#class-projectsettings-property-input-ui-text-delete)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to delete the character after the text cursor.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_delete\_all\_to\_right** [🔗](#class-projectsettings-property-input-ui-text-delete-all-to-right)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to delete **all** text after the text cursor.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_delete\_all\_to\_right.macos** [🔗](#class-projectsettings-property-input-ui-text-delete-all-to-right-macos)

macOS specific override for the shortcut to delete all text after the text cursor.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_delete\_word** [🔗](#class-projectsettings-property-input-ui-text-delete-word)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to delete all characters after the cursor up until a whitespace or punctuation character.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_delete\_word.macos** [🔗](#class-projectsettings-property-input-ui-text-delete-word-macos)

macOS specific override for the shortcut to delete a word after the text cursor.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_indent** [🔗](#class-projectsettings-property-input-ui-text-indent)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to indent the current line.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_newline** [🔗](#class-projectsettings-property-input-ui-text-newline)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to insert a new line at the position of the text cursor.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_newline\_above** [🔗](#class-projectsettings-property-input-ui-text-newline-above)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to insert a new line before the current one.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_newline\_blank** [🔗](#class-projectsettings-property-input-ui-text-newline-blank)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to insert a new line after the current one.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_scroll\_down** [🔗](#class-projectsettings-property-input-ui-text-scroll-down)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to scroll down one line of text.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_scroll\_down.macos** [🔗](#class-projectsettings-property-input-ui-text-scroll-down-macos)

macOS specific override for the shortcut to scroll down one line.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_scroll\_up** [🔗](#class-projectsettings-property-input-ui-text-scroll-up)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to scroll up one line of text.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_scroll\_up.macos** [🔗](#class-projectsettings-property-input-ui-text-scroll-up-macos)

macOS specific override for the shortcut to scroll up one line.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_select\_all** [🔗](#class-projectsettings-property-input-ui-text-select-all)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to select all text.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_select\_word\_under\_caret** [🔗](#class-projectsettings-property-input-ui-text-select-word-under-caret)

If no selection is currently active, selects the word currently under the caret in text fields. If a selection is currently active, deselects the current selection.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_select\_word\_under\_caret.macos** [🔗](#class-projectsettings-property-input-ui-text-select-word-under-caret-macos)

macOS specific override for the shortcut to select the word currently under the caret.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_skip\_selection\_for\_next\_occurrence** [🔗](#class-projectsettings-property-input-ui-text-skip-selection-for-next-occurrence)

If no selection is currently active with the last caret in text fields, searches for the next occurrence of the word currently under the caret and moves the caret to the next occurrence. The action can be performed sequentially for other occurrences of the word under the last caret.

If a selection is currently active with the last caret in text fields, searches for the next occurrence of the selection, adds a caret, selects the next occurrence then deselects the previous selection and its associated caret. The action can be performed sequentially for other occurrences of the selection of the last caret.

The viewport is adjusted to the latest newly added caret.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_submit** [🔗](#class-projectsettings-property-input-ui-text-submit)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to submit a text field.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_text\_toggle\_insert\_mode** [🔗](#class-projectsettings-property-input-ui-text-toggle-insert-mode)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to toggle _insert mode_ in a text field. While in insert mode, inserting new text overrides the character after the cursor, unless the next character is a new line.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_undo** [🔗](#class-projectsettings-property-input-ui-undo)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to undo the most recent action.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_unicode\_start** [🔗](#class-projectsettings-property-input-ui-unicode-start)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to start Unicode character hexadecimal code input in a text field.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **input/ui\_up** [🔗](#class-projectsettings-property-input-ui-up)

Default [InputEventAction](class_inputeventaction.md#class-inputeventaction) to move up in the UI.

**Note:** Default `ui_*` actions cannot be removed as they are necessary for the internal logic of several [Control](class_control.md#class-control) s. The events assigned to the action can however be modified.

* * *

[bool](class_bool.md#class-bool) **input\_devices/buffering/agile\_event\_flushing** = `false` [🔗](#class-projectsettings-property-input-devices-buffering-agile-event-flushing)

If `true`, key/touch/joystick events will be flushed just before every idle and physics frame.

If `false`, such events will be flushed only once per process frame, between iterations of the engine.

Enabling this can greatly improve the responsiveness to input, specially in devices that need to run multiple physics frames per visible (process) frame, because they can't run at the target frame rate.

**Note:** Currently implemented only on Android.

* * *

[bool](class_bool.md#class-bool) **input\_devices/compatibility/legacy\_just\_pressed\_behavior** = `false` [🔗](#class-projectsettings-property-input-devices-compatibility-legacy-just-pressed-behavior)

If `true`, [Input.is\_action\_just\_pressed()](class_input.md#class-input-method-is-action-just-pressed) and [Input.is\_action\_just\_released()](class_input.md#class-input-method-is-action-just-released) will only return `true` if the action is still in the respective state, i.e. an action that is pressed _and_ released on the same frame will be missed.

If `false`, no input will be lost.

**Note:** You should in nearly all cases prefer the `false` setting. The legacy behavior is to enable supporting old projects that rely on the old logic, without changes to script.

* * *

[String](class_string.md#class-string) **input\_devices/pen\_tablet/driver** [🔗](#class-projectsettings-property-input-devices-pen-tablet-driver)

Specifies the tablet driver to use. If left empty, the default driver will be used.

**Note:** The driver in use can be overridden at runtime via the `--tablet-driver` [command line argument](../tutorials/editor/command_line_tutorial.md).

**Note:** Use [DisplayServer.tablet\_set\_current\_driver()](class_displayserver.md#class-displayserver-method-tablet-set-current-driver) to switch tablet driver in runtime.

* * *

[String](class_string.md#class-string) **input\_devices/pen\_tablet/driver.windows** [🔗](#class-projectsettings-property-input-devices-pen-tablet-driver-windows)

Override for [input\_devices/pen\_tablet/driver](#class-projectsettings-property-input-devices-pen-tablet-driver) on Windows. Supported values are:

- `auto` (default), uses `wintab` if Windows Ink is disabled in the Wacom Tablet Properties or system settings, `winink` otherwise.

- `winink`, uses Windows native "Windows Ink" driver.

- `wintab`, uses Wacom "WinTab" driver.

- `dummy`, tablet input is disabled.


* * *

[bool](class_bool.md#class-bool) **input\_devices/pointing/android/disable\_scroll\_deadzone** = `false` [🔗](#class-projectsettings-property-input-devices-pointing-android-disable-scroll-deadzone)

If `true`, disables the scroll deadzone on Android, allowing even very small scroll movements to be registered. This may increase scroll sensitivity but can also lead to unintended scrolling from slight finger movements.

* * *

[bool](class_bool.md#class-bool) **input\_devices/pointing/android/enable\_long\_press\_as\_right\_click** = `false` [🔗](#class-projectsettings-property-input-devices-pointing-android-enable-long-press-as-right-click)

If `true`, long press events on an Android touchscreen are transformed into right click events.

* * *

[bool](class_bool.md#class-bool) **input\_devices/pointing/android/enable\_pan\_and\_scale\_gestures** = `false` [🔗](#class-projectsettings-property-input-devices-pointing-android-enable-pan-and-scale-gestures)

If `true`, multi-touch pan and scale gestures are enabled on Android devices.

* * *

[bool](class_bool.md#class-bool) **input\_devices/pointing/android/override\_volume\_buttons** = `false` [🔗](#class-projectsettings-property-input-devices-pointing-android-override-volume-buttons)

If `true`, system volume changes are disabled when the buttons are used within the app.

* * *

[int](class_int.md#class-int) **input\_devices/pointing/android/rotary\_input\_scroll\_axis** = `1` [🔗](#class-projectsettings-property-input-devices-pointing-android-rotary-input-scroll-axis)

On Wear OS devices, defines which axis of the mouse wheel rotary input is mapped to. This rotary input is usually performed by rotating the physical or virtual (touch-based) bezel on a smartwatch.

* * *

[bool](class_bool.md#class-bool) **input\_devices/pointing/emulate\_mouse\_from\_touch** = `true` [🔗](#class-projectsettings-property-input-devices-pointing-emulate-mouse-from-touch)

If `true`, sends mouse input events when tapping or swiping on the touchscreen.

* * *

[bool](class_bool.md#class-bool) **input\_devices/pointing/emulate\_touch\_from\_mouse** = `false` [🔗](#class-projectsettings-property-input-devices-pointing-emulate-touch-from-mouse)

If `true`, sends touch input events when clicking or dragging the mouse.

* * *

[bool](class_bool.md#class-bool) **input\_devices/sensors/enable\_accelerometer** = `false` [🔗](#class-projectsettings-property-input-devices-sensors-enable-accelerometer)

If `true`, the accelerometer sensor is enabled and [Input.get\_accelerometer()](class_input.md#class-input-method-get-accelerometer) returns valid data.

* * *

[bool](class_bool.md#class-bool) **input\_devices/sensors/enable\_gravity** = `false` [🔗](#class-projectsettings-property-input-devices-sensors-enable-gravity)

If `true`, the gravity sensor is enabled and [Input.get\_gravity()](class_input.md#class-input-method-get-gravity) returns valid data.

* * *

[bool](class_bool.md#class-bool) **input\_devices/sensors/enable\_gyroscope** = `false` [🔗](#class-projectsettings-property-input-devices-sensors-enable-gyroscope)

If `true`, the gyroscope sensor is enabled and [Input.get\_gyroscope()](class_input.md#class-input-method-get-gyroscope) returns valid data.

* * *

[bool](class_bool.md#class-bool) **input\_devices/sensors/enable\_magnetometer** = `false` [🔗](#class-projectsettings-property-input-devices-sensors-enable-magnetometer)

If `true`, the magnetometer sensor is enabled and [Input.get\_magnetometer()](class_input.md#class-input-method-get-magnetometer) returns valid data.

* * *

[String](class_string.md#class-string) **internationalization/locale/fallback** = `"en"` [🔗](#class-projectsettings-property-internationalization-locale-fallback)

The locale to fall back to if a translation isn't available in a given language. If left empty, `en` (English) will be used.

**Note:** Not to be confused with [TextServerFallback](class_textserverfallback.md#class-textserverfallback).

* * *

[bool](class_bool.md#class-bool) **internationalization/locale/include\_text\_server\_data** = `false` [🔗](#class-projectsettings-property-internationalization-locale-include-text-server-data)

If `true`, text server break iteration rule sets, dictionaries and other optional data are included in the exported project.

**Note:** "ICU / HarfBuzz / Graphite" text server data includes dictionaries for Burmese, Chinese, Japanese, Khmer, Lao and Thai as well as Unicode Standard Annex #29 and Unicode Standard Annex #14 word and line breaking rules. Data is about 4 MB large.

**Note:** [TextServerFallback](class_textserverfallback.md#class-textserverfallback) does not use additional data.

* * *

[int](class_int.md#class-int) **internationalization/locale/line\_breaking\_strictness** = `0` [🔗](#class-projectsettings-property-internationalization-locale-line-breaking-strictness)

Default strictness of line-breaking rules. Can be overridden by adding `@lb={auto,loose,normal,strict}` to the language code.

- **Auto** ( `0`) \- strictness is based on the length of the line.

- **Loose** ( `1`) \- the least restrictive set of line-breaking rules. Typically used for short lines.

- **Normal** ( `2`) \- the most common set of line-breaking rules.

- **Strict** ( `3`) \- the most stringent set of line-breaking rules.


See [Line Breaking Strictness: the line-break property](https://www.w3.org/TR/css-text-3/#line-break-property) for more info.

* * *

[String](class_string.md#class-string) **internationalization/locale/test** = `""` [🔗](#class-projectsettings-property-internationalization-locale-test)

If non-empty, this locale will be used instead of the automatically detected system locale.

**Note:** This setting also applies to the exported project. To only affect testing within the editor, override this setting with an `editor` [feature tag](../tutorials/export/feature_tags.md) for localization testing purposes.

* * *

[bool](class_bool.md#class-bool) **internationalization/pseudolocalization/double\_vowels** = `false` [🔗](#class-projectsettings-property-internationalization-pseudolocalization-double-vowels)

Double vowels in strings during pseudolocalization to simulate the lengthening of text due to localization.

* * *

[float](class_float.md#class-float) **internationalization/pseudolocalization/expansion\_ratio** = `0.0` [🔗](#class-projectsettings-property-internationalization-pseudolocalization-expansion-ratio)

The expansion ratio to use during pseudolocalization. A value of `0.3` is sufficient for most practical purposes, and will increase the length of each string by 30%.

* * *

[bool](class_bool.md#class-bool) **internationalization/pseudolocalization/fake\_bidi** = `false` [🔗](#class-projectsettings-property-internationalization-pseudolocalization-fake-bidi)

If `true`, emulate bidirectional (right-to-left) text when pseudolocalization is enabled. This can be used to spot issues with RTL layout and UI mirroring that will crop up if the project is localized to RTL languages such as Arabic or Hebrew. See also [internationalization/rendering/force\_right\_to\_left\_layout\_direction](#class-projectsettings-property-internationalization-rendering-force-right-to-left-layout-direction).

* * *

[bool](class_bool.md#class-bool) **internationalization/pseudolocalization/override** = `false` [🔗](#class-projectsettings-property-internationalization-pseudolocalization-override)

Replace all characters in the string with `*`. Useful for finding non-localizable strings.

* * *

[String](class_string.md#class-string) **internationalization/pseudolocalization/prefix** = `"["` [🔗](#class-projectsettings-property-internationalization-pseudolocalization-prefix)

Prefix that will be prepended to the pseudolocalized string.

* * *

[bool](class_bool.md#class-bool) **internationalization/pseudolocalization/replace\_with\_accents** = `true` [🔗](#class-projectsettings-property-internationalization-pseudolocalization-replace-with-accents)

Replace all characters with their accented variants during pseudolocalization.

* * *

[bool](class_bool.md#class-bool) **internationalization/pseudolocalization/skip\_placeholders** = `true` [🔗](#class-projectsettings-property-internationalization-pseudolocalization-skip-placeholders)

Skip placeholders for string formatting like `%s` or `%f` during pseudolocalization. Useful to identify strings which need additional control characters to display correctly.

* * *

[String](class_string.md#class-string) **internationalization/pseudolocalization/suffix** = `"]"` [🔗](#class-projectsettings-property-internationalization-pseudolocalization-suffix)

Suffix that will be appended to the pseudolocalized string.

* * *

[bool](class_bool.md#class-bool) **internationalization/pseudolocalization/use\_pseudolocalization** = `false` [🔗](#class-projectsettings-property-internationalization-pseudolocalization-use-pseudolocalization)

If `true`, enables pseudolocalization for the project. This can be used to spot untranslatable strings or layout issues that may occur once the project is localized to languages that have longer strings than the source language.

**Note:** This property is only read when the project starts. To toggle pseudolocalization at run-time, use [TranslationServer.pseudolocalization\_enabled](class_translationserver.md#class-translationserver-property-pseudolocalization-enabled) instead.

* * *

[bool](class_bool.md#class-bool) **internationalization/rendering/force\_right\_to\_left\_layout\_direction** = `false` [🔗](#class-projectsettings-property-internationalization-rendering-force-right-to-left-layout-direction)

Force layout direction and text writing direction to RTL for all controls, even if the current locale is intended to use a left-to-right layout and text writing direction. This should be enabled for testing purposes only. See also [internationalization/pseudolocalization/fake\_bidi](#class-projectsettings-property-internationalization-pseudolocalization-fake-bidi).

* * *

[bool](class_bool.md#class-bool) **internationalization/rendering/root\_node\_auto\_translate** = `true` [🔗](#class-projectsettings-property-internationalization-rendering-root-node-auto-translate)

If `true`, root node will use [Node.AUTO\_TRANSLATE\_MODE\_ALWAYS](class_node.md#class-node-constant-auto-translate-mode-always), otherwise [Node.AUTO\_TRANSLATE\_MODE\_DISABLED](class_node.md#class-node-constant-auto-translate-mode-disabled) will be used.

**Note:** This property is only read when the project starts. To change the auto translate mode at runtime, set [Node.auto\_translate\_mode](class_node.md#class-node-property-auto-translate-mode) of [SceneTree.root](class_scenetree.md#class-scenetree-property-root) instead.

* * *

[int](class_int.md#class-int) **internationalization/rendering/root\_node\_layout\_direction** = `0` [🔗](#class-projectsettings-property-internationalization-rendering-root-node-layout-direction)

Root node default layout direction.

* * *

[String](class_string.md#class-string) **internationalization/rendering/text\_driver** = `""` [🔗](#class-projectsettings-property-internationalization-rendering-text-driver)

Specifies the [TextServer](class_textserver.md#class-textserver) to use. If left empty, the default will be used.

"ICU / HarfBuzz / Graphite" ( [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced)) is the most advanced text driver, supporting right-to-left typesetting and complex scripts (for languages like Arabic, Hebrew, etc.). The "Fallback" text driver ( [TextServerFallback](class_textserverfallback.md#class-textserverfallback)) does not support right-to-left typesetting and complex scripts.

**Note:** The driver in use can be overridden at runtime via the `--text-driver` [command line argument](../tutorials/editor/command_line_tutorial.md).

**Note:** There is an additional `Dummy` text driver available, which disables all text rendering and font-related functionality. This driver is not listed in the project settings, but it can be enabled when running the editor or project using the `--text-driver Dummy` [command line argument](../tutorials/editor/command_line_tutorial.md).

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_1** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-1)

Optional name for the 2D navigation layer 1. If left empty, the layer will display as "Layer 1".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_2** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-2)

Optional name for the 2D navigation layer 2. If left empty, the layer will display as "Layer 2".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_3** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-3)

Optional name for the 2D navigation layer 3. If left empty, the layer will display as "Layer 3".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_4** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-4)

Optional name for the 2D navigation layer 4. If left empty, the layer will display as "Layer 4".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_5** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-5)

Optional name for the 2D navigation layer 5. If left empty, the layer will display as "Layer 5".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_6** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-6)

Optional name for the 2D navigation layer 6. If left empty, the layer will display as "Layer 6".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_7** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-7)

Optional name for the 2D navigation layer 7. If left empty, the layer will display as "Layer 7".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_8** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-8)

Optional name for the 2D navigation layer 8. If left empty, the layer will display as "Layer 8".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_9** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-9)

Optional name for the 2D navigation layer 9. If left empty, the layer will display as "Layer 9".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_10** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-10)

Optional name for the 2D navigation layer 10. If left empty, the layer will display as "Layer 10".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_11** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-11)

Optional name for the 2D navigation layer 11. If left empty, the layer will display as "Layer 11".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_12** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-12)

Optional name for the 2D navigation layer 12. If left empty, the layer will display as "Layer 12".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_13** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-13)

Optional name for the 2D navigation layer 13. If left empty, the layer will display as "Layer 13".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_14** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-14)

Optional name for the 2D navigation layer 14. If left empty, the layer will display as "Layer 14".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_15** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-15)

Optional name for the 2D navigation layer 15. If left empty, the layer will display as "Layer 15".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_16** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-16)

Optional name for the 2D navigation layer 16. If left empty, the layer will display as "Layer 16".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_17** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-17)

Optional name for the 2D navigation layer 17. If left empty, the layer will display as "Layer 17".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_18** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-18)

Optional name for the 2D navigation layer 18. If left empty, the layer will display as "Layer 18".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_19** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-19)

Optional name for the 2D navigation layer 19. If left empty, the layer will display as "Layer 19".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_20** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-20)

Optional name for the 2D navigation layer 20. If left empty, the layer will display as "Layer 20".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_21** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-21)

Optional name for the 2D navigation layer 21. If left empty, the layer will display as "Layer 21".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_22** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-22)

Optional name for the 2D navigation layer 22. If left empty, the layer will display as "Layer 22".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_23** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-23)

Optional name for the 2D navigation layer 23. If left empty, the layer will display as "Layer 23".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_24** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-24)

Optional name for the 2D navigation layer 24. If left empty, the layer will display as "Layer 24".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_25** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-25)

Optional name for the 2D navigation layer 25. If left empty, the layer will display as "Layer 25".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_26** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-26)

Optional name for the 2D navigation layer 26. If left empty, the layer will display as "Layer 26".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_27** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-27)

Optional name for the 2D navigation layer 27. If left empty, the layer will display as "Layer 27".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_28** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-28)

Optional name for the 2D navigation layer 28. If left empty, the layer will display as "Layer 28".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_29** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-29)

Optional name for the 2D navigation layer 29. If left empty, the layer will display as "Layer 29".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_30** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-30)

Optional name for the 2D navigation layer 30. If left empty, the layer will display as "Layer 30".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_31** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-31)

Optional name for the 2D navigation layer 31. If left empty, the layer will display as "Layer 31".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_navigation/layer\_32** = `""` [🔗](#class-projectsettings-property-layer-names-2d-navigation-layer-32)

Optional name for the 2D navigation layer 32. If left empty, the layer will display as "Layer 32".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_1** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-1)

Optional name for the 2D physics layer 1. If left empty, the layer will display as "Layer 1".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_2** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-2)

Optional name for the 2D physics layer 2. If left empty, the layer will display as "Layer 2".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_3** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-3)

Optional name for the 2D physics layer 3. If left empty, the layer will display as "Layer 3".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_4** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-4)

Optional name for the 2D physics layer 4. If left empty, the layer will display as "Layer 4".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_5** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-5)

Optional name for the 2D physics layer 5. If left empty, the layer will display as "Layer 5".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_6** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-6)

Optional name for the 2D physics layer 6. If left empty, the layer will display as "Layer 6".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_7** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-7)

Optional name for the 2D physics layer 7. If left empty, the layer will display as "Layer 7".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_8** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-8)

Optional name for the 2D physics layer 8. If left empty, the layer will display as "Layer 8".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_9** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-9)

Optional name for the 2D physics layer 9. If left empty, the layer will display as "Layer 9".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_10** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-10)

Optional name for the 2D physics layer 10. If left empty, the layer will display as "Layer 10".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_11** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-11)

Optional name for the 2D physics layer 11. If left empty, the layer will display as "Layer 11".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_12** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-12)

Optional name for the 2D physics layer 12. If left empty, the layer will display as "Layer 12".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_13** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-13)

Optional name for the 2D physics layer 13. If left empty, the layer will display as "Layer 13".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_14** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-14)

Optional name for the 2D physics layer 14. If left empty, the layer will display as "Layer 14".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_15** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-15)

Optional name for the 2D physics layer 15. If left empty, the layer will display as "Layer 15".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_16** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-16)

Optional name for the 2D physics layer 16. If left empty, the layer will display as "Layer 16".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_17** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-17)

Optional name for the 2D physics layer 17. If left empty, the layer will display as "Layer 17".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_18** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-18)

Optional name for the 2D physics layer 18. If left empty, the layer will display as "Layer 18".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_19** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-19)

Optional name for the 2D physics layer 19. If left empty, the layer will display as "Layer 19".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_20** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-20)

Optional name for the 2D physics layer 20. If left empty, the layer will display as "Layer 20".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_21** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-21)

Optional name for the 2D physics layer 21. If left empty, the layer will display as "Layer 21".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_22** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-22)

Optional name for the 2D physics layer 22. If left empty, the layer will display as "Layer 22".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_23** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-23)

Optional name for the 2D physics layer 23. If left empty, the layer will display as "Layer 23".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_24** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-24)

Optional name for the 2D physics layer 24. If left empty, the layer will display as "Layer 24".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_25** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-25)

Optional name for the 2D physics layer 25. If left empty, the layer will display as "Layer 25".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_26** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-26)

Optional name for the 2D physics layer 26. If left empty, the layer will display as "Layer 26".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_27** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-27)

Optional name for the 2D physics layer 27. If left empty, the layer will display as "Layer 27".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_28** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-28)

Optional name for the 2D physics layer 28. If left empty, the layer will display as "Layer 28".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_29** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-29)

Optional name for the 2D physics layer 29. If left empty, the layer will display as "Layer 29".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_30** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-30)

Optional name for the 2D physics layer 30. If left empty, the layer will display as "Layer 30".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_31** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-31)

Optional name for the 2D physics layer 31. If left empty, the layer will display as "Layer 31".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_physics/layer\_32** = `""` [🔗](#class-projectsettings-property-layer-names-2d-physics-layer-32)

Optional name for the 2D physics layer 32. If left empty, the layer will display as "Layer 32".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_1** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-1)

Optional name for the 2D render layer 1. If left empty, the layer will display as "Layer 1".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_2** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-2)

Optional name for the 2D render layer 2. If left empty, the layer will display as "Layer 2".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_3** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-3)

Optional name for the 2D render layer 3. If left empty, the layer will display as "Layer 3".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_4** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-4)

Optional name for the 2D render layer 4. If left empty, the layer will display as "Layer 4".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_5** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-5)

Optional name for the 2D render layer 5. If left empty, the layer will display as "Layer 5".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_6** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-6)

Optional name for the 2D render layer 6. If left empty, the layer will display as "Layer 6".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_7** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-7)

Optional name for the 2D render layer 7. If left empty, the layer will display as "Layer 7".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_8** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-8)

Optional name for the 2D render layer 8. If left empty, the layer will display as "Layer 8".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_9** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-9)

Optional name for the 2D render layer 9. If left empty, the layer will display as "Layer 9".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_10** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-10)

Optional name for the 2D render layer 10. If left empty, the layer will display as "Layer 10".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_11** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-11)

Optional name for the 2D render layer 11. If left empty, the layer will display as "Layer 11".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_12** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-12)

Optional name for the 2D render layer 12. If left empty, the layer will display as "Layer 12".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_13** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-13)

Optional name for the 2D render layer 13. If left empty, the layer will display as "Layer 13".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_14** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-14)

Optional name for the 2D render layer 14. If left empty, the layer will display as "Layer 14".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_15** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-15)

Optional name for the 2D render layer 15. If left empty, the layer will display as "Layer 15".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_16** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-16)

Optional name for the 2D render layer 16. If left empty, the layer will display as "Layer 16".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_17** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-17)

Optional name for the 2D render layer 17. If left empty, the layer will display as "Layer 17".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_18** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-18)

Optional name for the 2D render layer 18. If left empty, the layer will display as "Layer 18".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_19** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-19)

Optional name for the 2D render layer 19. If left empty, the layer will display as "Layer 19".

* * *

[String](class_string.md#class-string) **layer\_names/2d\_render/layer\_20** = `""` [🔗](#class-projectsettings-property-layer-names-2d-render-layer-20)

Optional name for the 2D render layer 20. If left empty, the layer will display as "Layer 20".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_1** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-1)

Optional name for the 3D navigation layer 1. If left empty, the layer will display as "Layer 1".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_2** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-2)

Optional name for the 3D navigation layer 2. If left empty, the layer will display as "Layer 2".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_3** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-3)

Optional name for the 3D navigation layer 3. If left empty, the layer will display as "Layer 3".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_4** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-4)

Optional name for the 3D navigation layer 4. If left empty, the layer will display as "Layer 4".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_5** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-5)

Optional name for the 3D navigation layer 5. If left empty, the layer will display as "Layer 5".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_6** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-6)

Optional name for the 3D navigation layer 6. If left empty, the layer will display as "Layer 6".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_7** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-7)

Optional name for the 3D navigation layer 7. If left empty, the layer will display as "Layer 7".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_8** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-8)

Optional name for the 3D navigation layer 8. If left empty, the layer will display as "Layer 8".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_9** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-9)

Optional name for the 3D navigation layer 9. If left empty, the layer will display as "Layer 9".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_10** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-10)

Optional name for the 3D navigation layer 10. If left empty, the layer will display as "Layer 10".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_11** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-11)

Optional name for the 3D navigation layer 11. If left empty, the layer will display as "Layer 11".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_12** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-12)

Optional name for the 3D navigation layer 12. If left empty, the layer will display as "Layer 12".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_13** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-13)

Optional name for the 3D navigation layer 13. If left empty, the layer will display as "Layer 13".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_14** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-14)

Optional name for the 3D navigation layer 14. If left empty, the layer will display as "Layer 14".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_15** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-15)

Optional name for the 3D navigation layer 15. If left empty, the layer will display as "Layer 15".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_16** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-16)

Optional name for the 3D navigation layer 16. If left empty, the layer will display as "Layer 16".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_17** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-17)

Optional name for the 3D navigation layer 17. If left empty, the layer will display as "Layer 17".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_18** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-18)

Optional name for the 3D navigation layer 18. If left empty, the layer will display as "Layer 18".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_19** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-19)

Optional name for the 3D navigation layer 19. If left empty, the layer will display as "Layer 19".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_20** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-20)

Optional name for the 3D navigation layer 20. If left empty, the layer will display as "Layer 20".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_21** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-21)

Optional name for the 3D navigation layer 21. If left empty, the layer will display as "Layer 21".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_22** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-22)

Optional name for the 3D navigation layer 22. If left empty, the layer will display as "Layer 22".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_23** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-23)

Optional name for the 3D navigation layer 23. If left empty, the layer will display as "Layer 23".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_24** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-24)

Optional name for the 3D navigation layer 24. If left empty, the layer will display as "Layer 24".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_25** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-25)

Optional name for the 3D navigation layer 25. If left empty, the layer will display as "Layer 25".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_26** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-26)

Optional name for the 3D navigation layer 26. If left empty, the layer will display as "Layer 26".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_27** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-27)

Optional name for the 3D navigation layer 27. If left empty, the layer will display as "Layer 27".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_28** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-28)

Optional name for the 3D navigation layer 28. If left empty, the layer will display as "Layer 28".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_29** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-29)

Optional name for the 3D navigation layer 29. If left empty, the layer will display as "Layer 29".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_30** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-30)

Optional name for the 3D navigation layer 30. If left empty, the layer will display as "Layer 30".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_31** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-31)

Optional name for the 3D navigation layer 31. If left empty, the layer will display as "Layer 31".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_navigation/layer\_32** = `""` [🔗](#class-projectsettings-property-layer-names-3d-navigation-layer-32)

Optional name for the 3D navigation layer 32. If left empty, the layer will display as "Layer 32".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_1** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-1)

Optional name for the 3D physics layer 1. If left empty, the layer will display as "Layer 1".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_2** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-2)

Optional name for the 3D physics layer 2. If left empty, the layer will display as "Layer 2".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_3** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-3)

Optional name for the 3D physics layer 3. If left empty, the layer will display as "Layer 3".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_4** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-4)

Optional name for the 3D physics layer 4. If left empty, the layer will display as "Layer 4".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_5** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-5)

Optional name for the 3D physics layer 5. If left empty, the layer will display as "Layer 5".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_6** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-6)

Optional name for the 3D physics layer 6. If left empty, the layer will display as "Layer 6".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_7** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-7)

Optional name for the 3D physics layer 7. If left empty, the layer will display as "Layer 7".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_8** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-8)

Optional name for the 3D physics layer 8. If left empty, the layer will display as "Layer 8".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_9** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-9)

Optional name for the 3D physics layer 9. If left empty, the layer will display as "Layer 9".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_10** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-10)

Optional name for the 3D physics layer 10. If left empty, the layer will display as "Layer 10".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_11** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-11)

Optional name for the 3D physics layer 11. If left empty, the layer will display as "Layer 11".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_12** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-12)

Optional name for the 3D physics layer 12. If left empty, the layer will display as "Layer 12".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_13** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-13)

Optional name for the 3D physics layer 13. If left empty, the layer will display as "Layer 13".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_14** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-14)

Optional name for the 3D physics layer 14. If left empty, the layer will display as "Layer 14".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_15** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-15)

Optional name for the 3D physics layer 15. If left empty, the layer will display as "Layer 15".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_16** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-16)

Optional name for the 3D physics layer 16. If left empty, the layer will display as "Layer 16".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_17** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-17)

Optional name for the 3D physics layer 17. If left empty, the layer will display as "Layer 17".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_18** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-18)

Optional name for the 3D physics layer 18. If left empty, the layer will display as "Layer 18".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_19** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-19)

Optional name for the 3D physics layer 19. If left empty, the layer will display as "Layer 19".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_20** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-20)

Optional name for the 3D physics layer 20. If left empty, the layer will display as "Layer 20".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_21** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-21)

Optional name for the 3D physics layer 21. If left empty, the layer will display as "Layer 21".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_22** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-22)

Optional name for the 3D physics layer 22. If left empty, the layer will display as "Layer 22".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_23** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-23)

Optional name for the 3D physics layer 23. If left empty, the layer will display as "Layer 23".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_24** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-24)

Optional name for the 3D physics layer 24. If left empty, the layer will display as "Layer 24".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_25** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-25)

Optional name for the 3D physics layer 25. If left empty, the layer will display as "Layer 25".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_26** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-26)

Optional name for the 3D physics layer 26. If left empty, the layer will display as "Layer 26".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_27** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-27)

Optional name for the 3D physics layer 27. If left empty, the layer will display as "Layer 27".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_28** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-28)

Optional name for the 3D physics layer 28. If left empty, the layer will display as "Layer 28".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_29** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-29)

Optional name for the 3D physics layer 29. If left empty, the layer will display as "Layer 29".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_30** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-30)

Optional name for the 3D physics layer 30. If left empty, the layer will display as "Layer 30".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_31** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-31)

Optional name for the 3D physics layer 31. If left empty, the layer will display as "Layer 31".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_physics/layer\_32** = `""` [🔗](#class-projectsettings-property-layer-names-3d-physics-layer-32)

Optional name for the 3D physics layer 32. If left empty, the layer will display as "Layer 32".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_1** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-1)

Optional name for the 3D render layer 1. If left empty, the layer will display as "Layer 1".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_2** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-2)

Optional name for the 3D render layer 2. If left empty, the layer will display as "Layer 2".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_3** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-3)

Optional name for the 3D render layer 3. If left empty, the layer will display as "Layer 3".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_4** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-4)

Optional name for the 3D render layer 4. If left empty, the layer will display as "Layer 4".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_5** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-5)

Optional name for the 3D render layer 5. If left empty, the layer will display as "Layer 5".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_6** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-6)

Optional name for the 3D render layer 6. If left empty, the layer will display as "Layer 6".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_7** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-7)

Optional name for the 3D render layer 7. If left empty, the layer will display as "Layer 7".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_8** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-8)

Optional name for the 3D render layer 8. If left empty, the layer will display as "Layer 8".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_9** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-9)

Optional name for the 3D render layer 9. If left empty, the layer will display as "Layer 9".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_10** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-10)

Optional name for the 3D render layer 10. If left empty, the layer will display as "Layer 10".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_11** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-11)

Optional name for the 3D render layer 11. If left empty, the layer will display as "Layer 11".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_12** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-12)

Optional name for the 3D render layer 12. If left empty, the layer will display as "Layer 12".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_13** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-13)

Optional name for the 3D render layer 13. If left empty, the layer will display as "Layer 13".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_14** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-14)

Optional name for the 3D render layer 14. If left empty, the layer will display as "Layer 14".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_15** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-15)

Optional name for the 3D render layer 15. If left empty, the layer will display as "Layer 15".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_16** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-16)

Optional name for the 3D render layer 16. If left empty, the layer will display as "Layer 16".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_17** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-17)

Optional name for the 3D render layer 17. If left empty, the layer will display as "Layer 17".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_18** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-18)

Optional name for the 3D render layer 18. If left empty, the layer will display as "Layer 18".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_19** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-19)

Optional name for the 3D render layer 19. If left empty, the layer will display as "Layer 19".

* * *

[String](class_string.md#class-string) **layer\_names/3d\_render/layer\_20** = `""` [🔗](#class-projectsettings-property-layer-names-3d-render-layer-20)

Optional name for the 3D render layer 20. If left empty, the layer will display as "Layer 20".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_1** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-1)

Optional name for the navigation avoidance layer 1. If left empty, the layer will display as "Layer 1".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_2** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-2)

Optional name for the navigation avoidance layer 2. If left empty, the layer will display as "Layer 2".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_3** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-3)

Optional name for the navigation avoidance layer 3. If left empty, the layer will display as "Layer 3".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_4** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-4)

Optional name for the navigation avoidance layer 4. If left empty, the layer will display as "Layer 4".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_5** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-5)

Optional name for the navigation avoidance layer 5. If left empty, the layer will display as "Layer 5".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_6** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-6)

Optional name for the navigation avoidance layer 6. If left empty, the layer will display as "Layer 6".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_7** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-7)

Optional name for the navigation avoidance layer 7. If left empty, the layer will display as "Layer 7".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_8** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-8)

Optional name for the navigation avoidance layer 8. If left empty, the layer will display as "Layer 8".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_9** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-9)

Optional name for the navigation avoidance layer 9. If left empty, the layer will display as "Layer 9".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_10** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-10)

Optional name for the navigation avoidance layer 10. If left empty, the layer will display as "Layer 10".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_11** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-11)

Optional name for the navigation avoidance layer 11. If left empty, the layer will display as "Layer 11".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_12** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-12)

Optional name for the navigation avoidance layer 12. If left empty, the layer will display as "Layer 12".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_13** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-13)

Optional name for the navigation avoidance layer 13. If left empty, the layer will display as "Layer 13".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_14** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-14)

Optional name for the navigation avoidance layer 14. If left empty, the layer will display as "Layer 14".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_15** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-15)

Optional name for the navigation avoidance layer 15. If left empty, the layer will display as "Layer 15".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_16** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-16)

Optional name for the navigation avoidance layer 16. If left empty, the layer will display as "Layer 16".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_17** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-17)

Optional name for the navigation avoidance layer 17. If left empty, the layer will display as "Layer 17".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_18** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-18)

Optional name for the navigation avoidance layer 18. If left empty, the layer will display as "Layer 18".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_19** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-19)

Optional name for the navigation avoidance layer 19. If left empty, the layer will display as "Layer 19".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_20** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-20)

Optional name for the navigation avoidance layer 20. If left empty, the layer will display as "Layer 20".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_21** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-21)

Optional name for the navigation avoidance layer 21. If left empty, the layer will display as "Layer 21".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_22** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-22)

Optional name for the navigation avoidance layer 22. If left empty, the layer will display as "Layer 22".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_23** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-23)

Optional name for the navigation avoidance layer 23. If left empty, the layer will display as "Layer 23".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_24** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-24)

Optional name for the navigation avoidance layer 24. If left empty, the layer will display as "Layer 24".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_25** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-25)

Optional name for the navigation avoidance layer 25. If left empty, the layer will display as "Layer 25".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_26** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-26)

Optional name for the navigation avoidance layer 26. If left empty, the layer will display as "Layer 26".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_27** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-27)

Optional name for the navigation avoidance layer 27. If left empty, the layer will display as "Layer 27".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_28** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-28)

Optional name for the navigation avoidance layer 28. If left empty, the layer will display as "Layer 28".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_29** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-29)

Optional name for the navigation avoidance layer 29. If left empty, the layer will display as "Layer 29".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_30** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-30)

Optional name for the navigation avoidance layer 30. If left empty, the layer will display as "Layer 30".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_31** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-31)

Optional name for the navigation avoidance layer 31. If left empty, the layer will display as "Layer 31".

* * *

[String](class_string.md#class-string) **layer\_names/avoidance/layer\_32** = `""` [🔗](#class-projectsettings-property-layer-names-avoidance-layer-32)

Optional name for the navigation avoidance layer 32. If left empty, the layer will display as "Layer 32".

* * *

[int](class_int.md#class-int) **memory/limits/message\_queue/max\_size\_mb** = `32` [🔗](#class-projectsettings-property-memory-limits-message-queue-max-size-mb)

Godot uses a message queue to defer some function calls. If you run out of space on it (you will see an error), you can increase the size here.

* * *

[float](class_float.md#class-float) **navigation/2d/default\_cell\_size** = `1.0` [🔗](#class-projectsettings-property-navigation-2d-default-cell-size)

Default cell size for 2D navigation maps. See [NavigationServer2D.map\_set\_cell\_size()](class_navigationserver2d.md#class-navigationserver2d-method-map-set-cell-size).

* * *

[float](class_float.md#class-float) **navigation/2d/default\_edge\_connection\_margin** = `1.0` [🔗](#class-projectsettings-property-navigation-2d-default-edge-connection-margin)

Default edge connection margin for 2D navigation maps. See [NavigationServer2D.map\_set\_edge\_connection\_margin()](class_navigationserver2d.md#class-navigationserver2d-method-map-set-edge-connection-margin).

* * *

[float](class_float.md#class-float) **navigation/2d/default\_link\_connection\_radius** = `4.0` [🔗](#class-projectsettings-property-navigation-2d-default-link-connection-radius)

Default link connection radius for 2D navigation maps. See [NavigationServer2D.map\_set\_link\_connection\_radius()](class_navigationserver2d.md#class-navigationserver2d-method-map-set-link-connection-radius).

* * *

[float](class_float.md#class-float) **navigation/2d/merge\_rasterizer\_cell\_scale** = `1.0` [🔗](#class-projectsettings-property-navigation-2d-merge-rasterizer-cell-scale)

Default merge rasterizer cell scale for 2D navigation maps. See [NavigationServer2D.map\_set\_merge\_rasterizer\_cell\_scale()](class_navigationserver2d.md#class-navigationserver2d-method-map-set-merge-rasterizer-cell-scale).

* * *

[bool](class_bool.md#class-bool) **navigation/2d/use\_edge\_connections** = `true` [🔗](#class-projectsettings-property-navigation-2d-use-edge-connections)

If enabled 2D navigation regions will use edge connections to connect with other navigation regions within proximity of the navigation map edge connection margin. This setting only affects World2D default navigation maps.

* * *

[bool](class_bool.md#class-bool) **navigation/2d/warnings/navmesh\_cell\_size\_mismatch** = `true` [🔗](#class-projectsettings-property-navigation-2d-warnings-navmesh-cell-size-mismatch)

If `true`, the navigation system will print warnings when a navigation mesh with a small cell size is used on a navigation map with a larger size as this commonly causes rasterization errors.

* * *

[bool](class_bool.md#class-bool) **navigation/2d/warnings/navmesh\_edge\_merge\_errors** = `true` [🔗](#class-projectsettings-property-navigation-2d-warnings-navmesh-edge-merge-errors)

If `true`, the navigation system will print warnings about navigation mesh edge merge errors occurring in navigation regions or maps.

* * *

[float](class_float.md#class-float) **navigation/3d/default\_cell\_height** = `0.25` [🔗](#class-projectsettings-property-navigation-3d-default-cell-height)

Default cell height for 3D navigation maps. See [NavigationServer3D.map\_set\_cell\_height()](class_navigationserver3d.md#class-navigationserver3d-method-map-set-cell-height).

* * *

[float](class_float.md#class-float) **navigation/3d/default\_cell\_size** = `0.25` [🔗](#class-projectsettings-property-navigation-3d-default-cell-size)

Default cell size for 3D navigation maps. See [NavigationServer3D.map\_set\_cell\_size()](class_navigationserver3d.md#class-navigationserver3d-method-map-set-cell-size).

* * *

[float](class_float.md#class-float) **navigation/3d/default\_edge\_connection\_margin** = `0.25` [🔗](#class-projectsettings-property-navigation-3d-default-edge-connection-margin)

Default edge connection margin for 3D navigation maps. See [NavigationServer3D.map\_set\_edge\_connection\_margin()](class_navigationserver3d.md#class-navigationserver3d-method-map-set-edge-connection-margin).

* * *

[float](class_float.md#class-float) **navigation/3d/default\_link\_connection\_radius** = `1.0` [🔗](#class-projectsettings-property-navigation-3d-default-link-connection-radius)

Default link connection radius for 3D navigation maps. See [NavigationServer3D.map\_set\_link\_connection\_radius()](class_navigationserver3d.md#class-navigationserver3d-method-map-set-link-connection-radius).

* * *

[Vector3](class_vector3.md#class-vector3) **navigation/3d/default\_up** = `Vector3(0, 1, 0)` [🔗](#class-projectsettings-property-navigation-3d-default-up)

Default up orientation for 3D navigation maps. See [NavigationServer3D.map\_set\_up()](class_navigationserver3d.md#class-navigationserver3d-method-map-set-up).

* * *

[float](class_float.md#class-float) **navigation/3d/merge\_rasterizer\_cell\_scale** = `1.0` [🔗](#class-projectsettings-property-navigation-3d-merge-rasterizer-cell-scale)

Default merge rasterizer cell scale for 3D navigation maps. See [NavigationServer3D.map\_set\_merge\_rasterizer\_cell\_scale()](class_navigationserver3d.md#class-navigationserver3d-method-map-set-merge-rasterizer-cell-scale).

* * *

[bool](class_bool.md#class-bool) **navigation/3d/use\_edge\_connections** = `true` [🔗](#class-projectsettings-property-navigation-3d-use-edge-connections)

If enabled 3D navigation regions will use edge connections to connect with other navigation regions within proximity of the navigation map edge connection margin. This setting only affects World3D default navigation maps.

* * *

[bool](class_bool.md#class-bool) **navigation/3d/warnings/navmesh\_cell\_size\_mismatch** = `true` [🔗](#class-projectsettings-property-navigation-3d-warnings-navmesh-cell-size-mismatch)

If `true`, the navigation system will print warnings when a navigation mesh with a small cell size (or in 3D height) is used on a navigation map with a larger size as this commonly causes rasterization errors.

* * *

[bool](class_bool.md#class-bool) **navigation/3d/warnings/navmesh\_edge\_merge\_errors** = `true` [🔗](#class-projectsettings-property-navigation-3d-warnings-navmesh-edge-merge-errors)

If `true`, the navigation system will print warnings about navigation mesh edge merge errors occurring in navigation regions or maps.

* * *

[bool](class_bool.md#class-bool) **navigation/avoidance/thread\_model/avoidance\_use\_high\_priority\_threads** = `true` [🔗](#class-projectsettings-property-navigation-avoidance-thread-model-avoidance-use-high-priority-threads)

If enabled and avoidance calculations use multiple threads the threads run with high priority.

* * *

[bool](class_bool.md#class-bool) **navigation/avoidance/thread\_model/avoidance\_use\_multiple\_threads** = `true` [🔗](#class-projectsettings-property-navigation-avoidance-thread-model-avoidance-use-multiple-threads)

If enabled the avoidance calculations use multiple threads.

* * *

[bool](class_bool.md#class-bool) **navigation/baking/thread\_model/baking\_use\_high\_priority\_threads** = `true` [🔗](#class-projectsettings-property-navigation-baking-thread-model-baking-use-high-priority-threads)

If enabled and async navmesh baking uses multiple threads the threads run with high priority.

* * *

[bool](class_bool.md#class-bool) **navigation/baking/thread\_model/baking\_use\_multiple\_threads** = `true` [🔗](#class-projectsettings-property-navigation-baking-thread-model-baking-use-multiple-threads)

If enabled the async navmesh baking uses multiple threads.

* * *

[bool](class_bool.md#class-bool) **navigation/baking/use\_crash\_prevention\_checks** = `true` [🔗](#class-projectsettings-property-navigation-baking-use-crash-prevention-checks)

If enabled, and baking would potentially lead to an engine crash, the baking will be interrupted and an error message with explanation will be raised.

* * *

[int](class_int.md#class-int) **navigation/pathfinding/max\_threads** = `4` [🔗](#class-projectsettings-property-navigation-pathfinding-max-threads)

Maximum number of threads that can run pathfinding queries simultaneously on the same pathfinding graph, for example the same navigation map. Additional threads increase memory consumption and synchronization time due to the need for extra data copies prepared for each thread. A value of `-1` means unlimited and the maximum available OS processor count is used. Defaults to `1` when the OS does not support threads.

* * *

[bool](class_bool.md#class-bool) **navigation/world/map\_use\_async\_iterations** = `true` [🔗](#class-projectsettings-property-navigation-world-map-use-async-iterations)

If enabled, navigation map synchronization uses an async process that runs on a background thread. This avoids stalling the main thread but adds an additional delay to any navigation map change.

* * *

[bool](class_bool.md#class-bool) **navigation/world/region\_use\_async\_iterations** = `true` [🔗](#class-projectsettings-property-navigation-world-region-use-async-iterations)

If enabled, navigation region synchronization uses an async process that runs on a background thread. This avoids stalling the main thread but adds an additional delay to any navigation region change.

* * *

[int](class_int.md#class-int) **network/limits/debugger/max\_chars\_per\_second** = `32768` [🔗](#class-projectsettings-property-network-limits-debugger-max-chars-per-second)

Maximum number of characters allowed to send as output from the debugger. Over this value, content is dropped. This helps not to stall the debugger connection.

* * *

[int](class_int.md#class-int) **network/limits/debugger/max\_errors\_per\_second** = `400` [🔗](#class-projectsettings-property-network-limits-debugger-max-errors-per-second)

Maximum number of errors allowed to be sent from the debugger. Over this value, content is dropped. This helps not to stall the debugger connection.

* * *

[int](class_int.md#class-int) **network/limits/debugger/max\_queued\_messages** = `2048` [🔗](#class-projectsettings-property-network-limits-debugger-max-queued-messages)

Maximum number of messages in the debugger queue. Over this value, content is dropped. This helps to limit the debugger memory usage.

* * *

[int](class_int.md#class-int) **network/limits/debugger/max\_warnings\_per\_second** = `400` [🔗](#class-projectsettings-property-network-limits-debugger-max-warnings-per-second)

Maximum number of warnings allowed to be sent from the debugger. Over this value, content is dropped. This helps not to stall the debugger connection.

* * *

[int](class_int.md#class-int) **network/limits/packet\_peer\_stream/max\_buffer\_po2** = `16` [🔗](#class-projectsettings-property-network-limits-packet-peer-stream-max-buffer-po2)

Default size of packet peer stream for deserializing Godot data (in bytes, specified as a power of two). The default value `16` is equal to 65,536 bytes. Over this size, data is dropped.

* * *

[int](class_int.md#class-int) **network/limits/tcp/connect\_timeout\_seconds** = `30` [🔗](#class-projectsettings-property-network-limits-tcp-connect-timeout-seconds)

Timeout (in seconds) for connection attempts using TCP.

* * *

[int](class_int.md#class-int) **network/limits/webrtc/max\_channel\_in\_buffer\_kb** = `64` [🔗](#class-projectsettings-property-network-limits-webrtc-max-channel-in-buffer-kb)

Maximum size (in kiB) for the [WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel) input buffer.

* * *

[String](class_string.md#class-string) **network/tls/certificate\_bundle\_override** = `""` [🔗](#class-projectsettings-property-network-tls-certificate-bundle-override)

The CA certificates bundle to use for TLS connections. If this is set to a non-empty value, this will _override_ Godot's default [Mozilla certificate bundle](https://github.com/godotengine/godot/blob/master/thirdparty/certs/ca-certificates.crt). If left empty, the default certificate bundle will be used.

If in doubt, leave this setting empty.

* * *

[bool](class_bool.md#class-bool) **network/tls/enable\_tls\_v1.3** = `true` [🔗](#class-projectsettings-property-network-tls-enable-tls-v1-3)

If `true`, enable TLSv1.3 negotiation.

**Note:** Only supported when using Mbed TLS 3.0 or later (Linux distribution packages may be compiled against older system Mbed TLS packages), otherwise the maximum supported TLS version is always TLSv1.2.

* * *

[float](class_float.md#class-float) **physics/2d/default\_angular\_damp** = `1.0` [🔗](#class-projectsettings-property-physics-2d-default-angular-damp)

The default rotational motion damping in 2D. Damping is used to gradually slow down physical objects over time. RigidBodies will fall back to this value when combining their own damping values and no area damping value is present.

Suggested values are in the range `0` to `30`. At value `0` objects will keep moving with the same velocity. Greater values will stop the object faster. A value equal to or greater than the physics tick rate ( [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second)) will bring the object to a stop in one iteration.

**Note:** Godot damping calculations are velocity-dependent, meaning bodies moving faster will take a longer time to come to rest. They do not simulate inertia, friction, or air resistance. Therefore heavier or larger bodies will lose speed at the same proportional rate as lighter or smaller bodies.

During each physics tick, Godot will multiply the linear velocity of RigidBodies by `1.0 - combined_damp / physics_ticks_per_second`. By default, bodies combine damp factors: `combined_damp` is the sum of the damp value of the body and this value or the area's value the body is in. See [DampMode](class_rigidbody2d.md#enum-rigidbody2d-dampmode).

**Warning:** Godot's damping calculations are simulation tick rate dependent. Changing [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second) may significantly change the outcomes and feel of your simulation. This is true for the entire range of damping values greater than 0. To get back to a similar feel, you also need to change your damp values. This needed change is not proportional and differs from case to case.

* * *

[float](class_float.md#class-float) **physics/2d/default\_gravity** = `980.0` [🔗](#class-projectsettings-property-physics-2d-default-gravity)

The default gravity strength in 2D (in pixels per second squared).

**Note:** This property is only read when the project starts. To change the default gravity at runtime, use the following code sample:

GDScriptC#

```
# Set the default gravity strength to 980.
PhysicsServer2D.area_set_param(get_viewport().find_world_2d().space, PhysicsServer2D.AREA_PARAM_GRAVITY, 980)

```

```
// Set the default gravity strength to 980.
PhysicsServer2D.AreaSetParam(GetViewport().FindWorld2D().Space, PhysicsServer2D.AreaParameter.Gravity, 980);

```

* * *

[Vector2](class_vector2.md#class-vector2) **physics/2d/default\_gravity\_vector** = `Vector2(0, 1)` [🔗](#class-projectsettings-property-physics-2d-default-gravity-vector)

The default gravity direction in 2D.

**Note:** This property is only read when the project starts. To change the default gravity vector at runtime, use the following code sample:

GDScriptC#

```
# Set the default gravity direction to `Vector2(0, 1)`.
PhysicsServer2D.area_set_param(get_viewport().find_world_2d().space, PhysicsServer2D.AREA_PARAM_GRAVITY_VECTOR, Vector2.DOWN)

```

```
// Set the default gravity direction to `Vector2(0, 1)`.
PhysicsServer2D.AreaSetParam(GetViewport().FindWorld2D().Space, PhysicsServer2D.AreaParameter.GravityVector, Vector2.Down)

```

* * *

[float](class_float.md#class-float) **physics/2d/default\_linear\_damp** = `0.1` [🔗](#class-projectsettings-property-physics-2d-default-linear-damp)

The default linear motion damping in 2D. Damping is used to gradually slow down physical objects over time. RigidBodies will fall back to this value when combining their own damping values and no area damping value is present.

Suggested values are in the range `0` to `30`. At value `0` objects will keep moving with the same velocity. Greater values will stop the object faster. A value equal to or greater than the physics tick rate ( [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second)) will bring the object to a stop in one iteration.

**Note:** Godot damping calculations are velocity-dependent, meaning bodies moving faster will take a longer time to come to rest. They do not simulate inertia, friction, or air resistance. Therefore heavier or larger bodies will lose speed at the same proportional rate as lighter or smaller bodies.

During each physics tick, Godot will multiply the linear velocity of RigidBodies by `1.0 - combined_damp / physics_ticks_per_second`, where `combined_damp` is the sum of the linear damp of the body and this value, or the area's value the body is in, assuming the body defaults to combine damp values. See [DampMode](class_rigidbody2d.md#enum-rigidbody2d-dampmode).

**Warning:** Godot's damping calculations are simulation tick rate dependent. Changing [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second) may significantly change the outcomes and feel of your simulation. This is true for the entire range of damping values greater than 0. To get back to a similar feel, you also need to change your damp values. This needed change is not proportional and differs from case to case.

* * *

[String](class_string.md#class-string) **physics/2d/physics\_engine** = `"DEFAULT"` [🔗](#class-projectsettings-property-physics-2d-physics-engine)

Sets which physics engine to use for 2D physics.

**DEFAULT** is currently equivalent to **GodotPhysics2D**, but may change in future releases. Select an explicit implementation if you want to ensure that your project stays on the same engine.

**GodotPhysics2D** is Godot's internal 2D physics engine.

**Dummy** is a 2D physics server that does nothing and returns only dummy values, effectively disabling all 2D physics functionality.

Third-party extensions and modules can add other physics engines to select with this setting.

* * *

[bool](class_bool.md#class-bool) **physics/2d/run\_on\_separate\_thread** = `false` [🔗](#class-projectsettings-property-physics-2d-run-on-separate-thread)

If `true`, the 2D physics server runs on a separate thread, making better use of multi-core CPUs. If `false`, the 2D physics server runs on the main thread. Running the physics server on a separate thread can increase performance, but restricts API access to only physics process.

* * *

[float](class_float.md#class-float) **physics/2d/sleep\_threshold\_angular** = `0.13962634` [🔗](#class-projectsettings-property-physics-2d-sleep-threshold-angular)

Threshold angular velocity under which a 2D physics body will be considered inactive. See [PhysicsServer2D.SPACE\_PARAM\_BODY\_ANGULAR\_VELOCITY\_SLEEP\_THRESHOLD](class_physicsserver2d.md#class-physicsserver2d-constant-space-param-body-angular-velocity-sleep-threshold).

* * *

[float](class_float.md#class-float) **physics/2d/sleep\_threshold\_linear** = `2.0` [🔗](#class-projectsettings-property-physics-2d-sleep-threshold-linear)

Threshold linear velocity under which a 2D physics body will be considered inactive. See [PhysicsServer2D.SPACE\_PARAM\_BODY\_LINEAR\_VELOCITY\_SLEEP\_THRESHOLD](class_physicsserver2d.md#class-physicsserver2d-constant-space-param-body-linear-velocity-sleep-threshold).

* * *

[float](class_float.md#class-float) **physics/2d/solver/contact\_max\_allowed\_penetration** = `0.3` [🔗](#class-projectsettings-property-physics-2d-solver-contact-max-allowed-penetration)

Maximum distance a shape can penetrate another shape before it is considered a collision. See [PhysicsServer2D.SPACE\_PARAM\_CONTACT\_MAX\_ALLOWED\_PENETRATION](class_physicsserver2d.md#class-physicsserver2d-constant-space-param-contact-max-allowed-penetration).

* * *

[float](class_float.md#class-float) **physics/2d/solver/contact\_max\_separation** = `1.5` [🔗](#class-projectsettings-property-physics-2d-solver-contact-max-separation)

Maximum distance a shape can be from another before they are considered separated and the contact is discarded. See [PhysicsServer2D.SPACE\_PARAM\_CONTACT\_MAX\_SEPARATION](class_physicsserver2d.md#class-physicsserver2d-constant-space-param-contact-max-separation).

* * *

[float](class_float.md#class-float) **physics/2d/solver/contact\_recycle\_radius** = `1.0` [🔗](#class-projectsettings-property-physics-2d-solver-contact-recycle-radius)

Maximum distance a pair of bodies has to move before their collision status has to be recalculated. See [PhysicsServer2D.SPACE\_PARAM\_CONTACT\_RECYCLE\_RADIUS](class_physicsserver2d.md#class-physicsserver2d-constant-space-param-contact-recycle-radius).

* * *

[float](class_float.md#class-float) **physics/2d/solver/default\_constraint\_bias** = `0.2` [🔗](#class-projectsettings-property-physics-2d-solver-default-constraint-bias)

Default solver bias for all physics constraints. Defines how much bodies react to enforce constraints. See [PhysicsServer2D.SPACE\_PARAM\_CONSTRAINT\_DEFAULT\_BIAS](class_physicsserver2d.md#class-physicsserver2d-constant-space-param-constraint-default-bias).

Individual constraints can have a specific bias value (see [Joint2D.bias](class_joint2d.md#class-joint2d-property-bias)).

* * *

[float](class_float.md#class-float) **physics/2d/solver/default\_contact\_bias** = `0.8` [🔗](#class-projectsettings-property-physics-2d-solver-default-contact-bias)

Default solver bias for all physics contacts. Defines how much bodies react to enforce contact separation. See [PhysicsServer2D.SPACE\_PARAM\_CONTACT\_DEFAULT\_BIAS](class_physicsserver2d.md#class-physicsserver2d-constant-space-param-contact-default-bias).

Individual shapes can have a specific bias value (see [Shape2D.custom\_solver\_bias](class_shape2d.md#class-shape2d-property-custom-solver-bias)).

* * *

[int](class_int.md#class-int) **physics/2d/solver/solver\_iterations** = `16` [🔗](#class-projectsettings-property-physics-2d-solver-solver-iterations)

Number of solver iterations for all contacts and constraints. The greater the number of iterations, the more accurate the collisions will be. However, a greater number of iterations requires more CPU power, which can decrease performance. See [PhysicsServer2D.SPACE\_PARAM\_SOLVER\_ITERATIONS](class_physicsserver2d.md#class-physicsserver2d-constant-space-param-solver-iterations).

* * *

[float](class_float.md#class-float) **physics/2d/time\_before\_sleep** = `0.5` [🔗](#class-projectsettings-property-physics-2d-time-before-sleep)

Time (in seconds) of inactivity before which a 2D physics body will put to sleep. See [PhysicsServer2D.SPACE\_PARAM\_BODY\_TIME\_TO\_SLEEP](class_physicsserver2d.md#class-physicsserver2d-constant-space-param-body-time-to-sleep).

* * *

[float](class_float.md#class-float) **physics/3d/default\_angular\_damp** = `0.1` [🔗](#class-projectsettings-property-physics-3d-default-angular-damp)

The default rotational motion damping in 3D. Damping is used to gradually slow down physical objects over time. RigidBodies will fall back to this value when combining their own damping values and no area damping value is present.

Suggested values are in the range `0` to `30`. At value `0` objects will keep moving with the same velocity. Greater values will stop the object faster. A value equal to or greater than the physics tick rate ( [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second)) will bring the object to a stop in one iteration.

**Note:** Godot damping calculations are velocity-dependent, meaning bodies moving faster will take a longer time to come to rest. They do not simulate inertia, friction, or air resistance. Therefore heavier or larger bodies will lose speed at the same proportional rate as lighter or smaller bodies.

During each physics tick, Godot will multiply the angular velocity of RigidBodies by `1.0 - combined_damp / physics_ticks_per_second`. By default, bodies combine damp factors: `combined_damp` is the sum of the damp value of the body and this value or the area's value the body is in. See [DampMode](class_rigidbody3d.md#enum-rigidbody3d-dampmode).

**Warning:** Godot's damping calculations are simulation tick rate dependent. Changing [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second) may significantly change the outcomes and feel of your simulation. This is true for the entire range of damping values greater than 0. To get back to a similar feel, you also need to change your damp values. This needed change is not proportional and differs from case to case.

* * *

[float](class_float.md#class-float) **physics/3d/default\_gravity** = `9.8` [🔗](#class-projectsettings-property-physics-3d-default-gravity)

The default gravity strength in 3D (in meters per second squared).

**Note:** This property is only read when the project starts. To change the default gravity at runtime, use the following code sample:

GDScriptC#

```
# Set the default gravity strength to 9.8.
PhysicsServer3D.area_set_param(get_viewport().find_world_3d().space, PhysicsServer3D.AREA_PARAM_GRAVITY, 9.8)

```

```
// Set the default gravity strength to 9.8.
PhysicsServer3D.AreaSetParam(GetViewport().FindWorld3D().Space, PhysicsServer3D.AreaParameter.Gravity, 9.8);

```

* * *

[Vector3](class_vector3.md#class-vector3) **physics/3d/default\_gravity\_vector** = `Vector3(0, -1, 0)` [🔗](#class-projectsettings-property-physics-3d-default-gravity-vector)

The default gravity direction in 3D.

**Note:** This property is only read when the project starts. To change the default gravity vector at runtime, use the following code sample:

GDScriptC#

```
# Set the default gravity direction to `Vector3(0, -1, 0)`.
PhysicsServer3D.area_set_param(get_viewport().find_world_3d().space, PhysicsServer3D.AREA_PARAM_GRAVITY_VECTOR, Vector3.DOWN)

```

```
// Set the default gravity direction to `Vector3(0, -1, 0)`.
PhysicsServer3D.AreaSetParam(GetViewport().FindWorld3D().Space, PhysicsServer3D.AreaParameter.GravityVector, Vector3.Down)

```

* * *

[float](class_float.md#class-float) **physics/3d/default\_linear\_damp** = `0.1` [🔗](#class-projectsettings-property-physics-3d-default-linear-damp)

The default linear motion damping in 3D. Damping is used to gradually slow down physical objects over time. RigidBodies will fall back to this value when combining their own damping values and no area damping value is present.

Suggested values are in the range `0` to `30`. At value `0` objects will keep moving with the same velocity. Greater values will stop the object faster. A value equal to or greater than the physics tick rate ( [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second)) will bring the object to a stop in one iteration.

**Note:** Godot damping calculations are velocity-dependent, meaning bodies moving faster will take a longer time to come to rest. They do not simulate inertia, friction, or air resistance. Therefore heavier or larger bodies will lose speed at the same proportional rate as lighter or smaller bodies.

During each physics tick, Godot will multiply the linear velocity of RigidBodies by `1.0 - combined_damp / physics_ticks_per_second`. By default, bodies combine damp factors: `combined_damp` is the sum of the damp value of the body and this value or the area's value the body is in. See [DampMode](class_rigidbody3d.md#enum-rigidbody3d-dampmode).

**Warning:** Godot's damping calculations are simulation tick rate dependent. Changing [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second) may significantly change the outcomes and feel of your simulation. This is true for the entire range of damping values greater than 0. To get back to a similar feel, you also need to change your damp values. This needed change is not proportional and differs from case to case.

* * *

[String](class_string.md#class-string) **physics/3d/physics\_engine** = `"DEFAULT"` [🔗](#class-projectsettings-property-physics-3d-physics-engine)

Sets which physics engine to use for 3D physics.

**DEFAULT** is currently equivalent to **GodotPhysics3D**, but may change in future releases. Select an explicit implementation if you want to ensure that your project stays on the same engine.

**GodotPhysics3D** is Godot's internal 3D physics engine.

**Jolt Physics** is an alternative physics engine that is generally faster and more reliable than **GodotPhysics3D**. As it was recently implemented, it is currently considered experimental and its behavior may change in future releases.

**Dummy** is a 3D physics server that does nothing and returns only dummy values, effectively disabling all 3D physics functionality.

Third-party extensions and modules can add other physics engines to select with this setting.

* * *

[String](class_string.md#class-string) **physics/3d/physics\_interpolation/scene\_traversal** = `"DEFAULT"` [🔗](#class-projectsettings-property-physics-3d-physics-interpolation-scene-traversal)

The approach used for 3D scene traversal when physics interpolation is enabled.

- `DEFAULT`: The default optimized method.

- `Legacy`: The previous reference method used for scene tree traversal, which is slower.

- `Debug`: Swaps between `DEFAULT` and `Legacy` methods on alternating frames, and provides logging information (which in turn makes it slower). Intended for debugging only; you should use the `DEFAULT` method in most cases.


* * *

[bool](class_bool.md#class-bool) **physics/3d/run\_on\_separate\_thread** = `false` [🔗](#class-projectsettings-property-physics-3d-run-on-separate-thread)

If `true`, the 3D physics server runs on a separate thread, making better use of multi-core CPUs. If `false`, the 3D physics server runs on the main thread. Running the physics server on a separate thread can increase performance, but restricts API access to only physics process.

**Note:** When [physics/3d/physics\_engine](#class-projectsettings-property-physics-3d-physics-engine) is set to `Jolt Physics`, enabling this setting will prevent the 3D physics server from being able to provide any context when reporting errors and warnings, and will instead always refer to nodes as `<unknown>`.

* * *

[float](class_float.md#class-float) **physics/3d/sleep\_threshold\_angular** = `0.13962634` [🔗](#class-projectsettings-property-physics-3d-sleep-threshold-angular)

Threshold angular velocity under which a 3D physics body will be considered inactive. See [PhysicsServer3D.SPACE\_PARAM\_BODY\_ANGULAR\_VELOCITY\_SLEEP\_THRESHOLD](class_physicsserver3d.md#class-physicsserver3d-constant-space-param-body-angular-velocity-sleep-threshold).

* * *

[float](class_float.md#class-float) **physics/3d/sleep\_threshold\_linear** = `0.1` [🔗](#class-projectsettings-property-physics-3d-sleep-threshold-linear)

Threshold linear velocity under which a 3D physics body will be considered inactive. See [PhysicsServer3D.SPACE\_PARAM\_BODY\_LINEAR\_VELOCITY\_SLEEP\_THRESHOLD](class_physicsserver3d.md#class-physicsserver3d-constant-space-param-body-linear-velocity-sleep-threshold).

* * *

[float](class_float.md#class-float) **physics/3d/solver/contact\_max\_allowed\_penetration** = `0.01` [🔗](#class-projectsettings-property-physics-3d-solver-contact-max-allowed-penetration)

Maximum distance a shape can penetrate another shape before it is considered a collision. See [PhysicsServer3D.SPACE\_PARAM\_CONTACT\_MAX\_ALLOWED\_PENETRATION](class_physicsserver3d.md#class-physicsserver3d-constant-space-param-contact-max-allowed-penetration).

* * *

[float](class_float.md#class-float) **physics/3d/solver/contact\_max\_separation** = `0.05` [🔗](#class-projectsettings-property-physics-3d-solver-contact-max-separation)

Maximum distance a shape can be from another before they are considered separated and the contact is discarded. See [PhysicsServer3D.SPACE\_PARAM\_CONTACT\_MAX\_SEPARATION](class_physicsserver3d.md#class-physicsserver3d-constant-space-param-contact-max-separation).

* * *

[float](class_float.md#class-float) **physics/3d/solver/contact\_recycle\_radius** = `0.01` [🔗](#class-projectsettings-property-physics-3d-solver-contact-recycle-radius)

Maximum distance a pair of bodies has to move before their collision status has to be recalculated. See [PhysicsServer3D.SPACE\_PARAM\_CONTACT\_RECYCLE\_RADIUS](class_physicsserver3d.md#class-physicsserver3d-constant-space-param-contact-recycle-radius).

* * *

[float](class_float.md#class-float) **physics/3d/solver/default\_contact\_bias** = `0.8` [🔗](#class-projectsettings-property-physics-3d-solver-default-contact-bias)

Default solver bias for all physics contacts. Defines how much bodies react to enforce contact separation. See [PhysicsServer3D.SPACE\_PARAM\_CONTACT\_DEFAULT\_BIAS](class_physicsserver3d.md#class-physicsserver3d-constant-space-param-contact-default-bias).

Individual shapes can have a specific bias value (see [Shape3D.custom\_solver\_bias](class_shape3d.md#class-shape3d-property-custom-solver-bias)).

* * *

[int](class_int.md#class-int) **physics/3d/solver/solver\_iterations** = `16` [🔗](#class-projectsettings-property-physics-3d-solver-solver-iterations)

Number of solver iterations for all contacts and constraints. The greater the number of iterations, the more accurate the collisions will be. However, a greater number of iterations requires more CPU power, which can decrease performance. See [PhysicsServer3D.SPACE\_PARAM\_SOLVER\_ITERATIONS](class_physicsserver3d.md#class-physicsserver3d-constant-space-param-solver-iterations).

* * *

[float](class_float.md#class-float) **physics/3d/time\_before\_sleep** = `0.5` [🔗](#class-projectsettings-property-physics-3d-time-before-sleep)

Time (in seconds) of inactivity before which a 3D physics body will put to sleep. See [PhysicsServer3D.SPACE\_PARAM\_BODY\_TIME\_TO\_SLEEP](class_physicsserver3d.md#class-physicsserver3d-constant-space-param-body-time-to-sleep).

* * *

[bool](class_bool.md#class-bool) **physics/common/enable\_object\_picking** = `true` [🔗](#class-projectsettings-property-physics-common-enable-object-picking)

Enables [Viewport.physics\_object\_picking](class_viewport.md#class-viewport-property-physics-object-picking) on the root viewport.

* * *

[int](class_int.md#class-int) **physics/common/max\_physics\_steps\_per\_frame** = `8` [🔗](#class-projectsettings-property-physics-common-max-physics-steps-per-frame)

Controls the maximum number of physics steps that can be simulated each rendered frame. The default value is tuned to avoid situations where the framerate suddenly drops to a very low value beyond a certain amount of physics simulation. This occurs because the physics engine can't keep up with the expected simulation rate. In this case, the framerate will start dropping, but the engine is only allowed to simulate a certain number of physics steps per rendered frame. This snowballs into a situation where framerate keeps dropping until it reaches a very low framerate (typically 1-2 FPS) and is called the _physics spiral of death_.

However, the game will appear to slow down if the rendering FPS is less than `1 / max_physics_steps_per_frame` of [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second). This occurs even if `delta` is consistently used in physics calculations. To avoid this, increase [physics/common/max\_physics\_steps\_per\_frame](#class-projectsettings-property-physics-common-max-physics-steps-per-frame) if you have increased [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second) significantly above its default value.

**Note:** This property is only read when the project starts. To change the maximum number of simulated physics steps per frame at runtime, set [Engine.max\_physics\_steps\_per\_frame](class_engine.md#class-engine-property-max-physics-steps-per-frame) instead.

* * *

[bool](class_bool.md#class-bool) **physics/common/physics\_interpolation** = `false` [🔗](#class-projectsettings-property-physics-common-physics-interpolation)

If `true`, the renderer will interpolate the transforms of objects (both physics and non-physics) between the last two transforms, so that smooth motion is seen even when physics ticks do not coincide with rendered frames. See also [Node.reset\_physics\_interpolation()](class_node.md#class-node-method-reset-physics-interpolation).

**Note:** Although this is a global setting, finer control of individual branches of the [SceneTree](class_scenetree.md#class-scenetree) is possible using [Node.physics\_interpolation\_mode](class_node.md#class-node-property-physics-interpolation-mode).

**Note:** This property is only read when the project starts. To toggle physics interpolation at runtime, set [SceneTree.physics\_interpolation](class_scenetree.md#class-scenetree-property-physics-interpolation) instead.

**Note:** Property [physics/common/physics\_jitter\_fix](#class-projectsettings-property-physics-common-physics-jitter-fix) is automatically disabled if [physics/common/physics\_interpolation](#class-projectsettings-property-physics-common-physics-interpolation) is set to `true`, as the two methods are incompatible.

* * *

[float](class_float.md#class-float) **physics/common/physics\_jitter\_fix** = `0.5` [🔗](#class-projectsettings-property-physics-common-physics-jitter-fix)

Controls how much physics ticks are synchronized with real time. For 0 or less, the ticks are synchronized. Such values are recommended for network games, where clock synchronization matters. Higher values cause higher deviation of in-game clock and real clock, but allows smoothing out framerate jitters. The default value of 0.5 should be good enough for most; values above 2 could cause the game to react to dropped frames with a noticeable delay and are not recommended.

**Note:** Jitter fix is automatically disabled at runtime when [physics/common/physics\_interpolation](#class-projectsettings-property-physics-common-physics-interpolation) is enabled.

**Note:** When using a custom physics interpolation solution, the physics jitter fix should be disabled by setting [physics/common/physics\_jitter\_fix](#class-projectsettings-property-physics-common-physics-jitter-fix) to `0.0`.

**Note:** This property is only read when the project starts. To change the physics jitter fix at runtime, set [Engine.physics\_jitter\_fix](class_engine.md#class-engine-property-physics-jitter-fix) instead.

* * *

[int](class_int.md#class-int) **physics/common/physics\_ticks\_per\_second** = `60` [🔗](#class-projectsettings-property-physics-common-physics-ticks-per-second)

The number of fixed iterations per second. This controls how often physics simulation and [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) methods are run. See also [application/run/max\_fps](#class-projectsettings-property-application-run-max-fps).

**Note:** This property is only read when the project starts. To change the physics FPS at runtime, set [Engine.physics\_ticks\_per\_second](class_engine.md#class-engine-property-physics-ticks-per-second) instead.

**Note:** Only [physics/common/max\_physics\_steps\_per\_frame](#class-projectsettings-property-physics-common-max-physics-steps-per-frame) physics ticks may be simulated per rendered frame at most. If more physics ticks have to be simulated per rendered frame to keep up with rendering, the project will appear to slow down (even if `delta` is used consistently in physics calculations). Therefore, it is recommended to also increase [physics/common/max\_physics\_steps\_per\_frame](#class-projectsettings-property-physics-common-max-physics-steps-per-frame) if increasing [physics/common/physics\_ticks\_per\_second](#class-projectsettings-property-physics-common-physics-ticks-per-second) significantly above its default value.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/collisions/active\_edge\_threshold** = `0.87266463` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-collisions-active-edge-threshold)

The maximum angle, in radians, between two adjacent triangles in a [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) or [HeightMapShape3D](class_heightmapshape3d.md#class-heightmapshape3d) for which the edge between those triangles is considered inactive.

Collisions against an inactive edge will have its normal overridden to instead be the surface normal of the triangle. This can help alleviate ghost collisions.

**Note:** Setting this too high can result in objects not depenetrating properly.

**Note:** This applies to all shape queries, as well as physics bodies within the simulation.

**Note:** This does not apply when enabling Jolt's enhanced internal edge removal, which supersedes this.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/collisions/collision\_margin\_fraction** = `0.08` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-collisions-collision-margin-fraction)

The amount of collision margin to use for certain convex collision shapes, such as [BoxShape3D](class_boxshape3d.md#class-boxshape3d), [CylinderShape3D](class_cylindershape3d.md#class-cylindershape3d) and [ConvexPolygonShape3D](class_convexpolygonshape3d.md#class-convexpolygonshape3d), as a fraction of the shape's shortest axis, with [Shape3D.margin](class_shape3d.md#class-shape3d-property-margin) as the upper bound. This is mainly used to speed up collision detection with convex shapes.

**Note:** Collision margins in Jolt do not add any extra size to the shape. Instead the shape is first shrunk by the margin and then expanded by the same amount, resulting in a shape with rounded corners.

**Note:** Setting this value too close to `0.0` may also negatively affect the accuracy of the collision detection with convex shapes.

* * *

[int](class_int.md#class-int) **physics/jolt\_physics\_3d/joints/world\_node** = `0` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-joints-world-node)

Which of the two nodes bound by a joint should represent the world when one of the two is omitted, as either [Joint3D.node\_a](class_joint3d.md#class-joint3d-property-node-a) or [Joint3D.node\_b](class_joint3d.md#class-joint3d-property-node-b). This can be thought of as having the omitted node be a [StaticBody3D](class_staticbody3d.md#class-staticbody3d) at the joint's position. Joint limits are more easily expressed when [Joint3D.node\_a](class_joint3d.md#class-joint3d-property-node-a) represents the world.

**Note:** In Godot Physics, only [Joint3D.node\_b](class_joint3d.md#class-joint3d-property-node-b) can represent the world.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/limits/max\_angular\_velocity** = `47.12389` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-limits-max-angular-velocity)

The maximum angular velocity that a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) can reach, in radians per second.

This is mainly used as a fail-safe, to prevent the simulation from exploding, as fast-moving objects colliding with complex physics structures can otherwise cause them to go out of control. Fast-moving objects can also cause a lot of stress on the collision detection system, which can slow down the simulation considerably.

* * *

[int](class_int.md#class-int) **physics/jolt\_physics\_3d/limits/max\_bodies** = `10240` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-limits-max-bodies)

The maximum number of [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) to support at the same time, awake or sleeping. When this limit is exceeded, an error is reported and anything past that point is undefined behavior.

**Note:** This limit also applies within the editor.

* * *

[int](class_int.md#class-int) **physics/jolt\_physics\_3d/limits/max\_body\_pairs** = `65536` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-limits-max-body-pairs)

The maximum number of body pairs to allow processing of. When this limit is exceeded, a warning is reported and collisions will randomly be ignored while bodies pass through each other.

* * *

[int](class_int.md#class-int) **physics/jolt\_physics\_3d/limits/max\_contact\_constraints** = `20480` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-limits-max-contact-constraints)

The maximum number of contact constraints to allow processing of. When this limit is exceeded, a warning is reported and collisions will randomly be ignored while bodies pass through each other.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/limits/max\_linear\_velocity** = `500.0` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-limits-max-linear-velocity)

The maximum linear velocity that a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) can reach, in meters per second.

This is mainly used as a fail-safe, to prevent the simulation from exploding, as fast-moving objects colliding with complex physics structures can otherwise cause them to go out of control. Fast-moving objects can also cause a lot of stress on the collision detection system, which can slow down the simulation considerably.

* * *

[int](class_int.md#class-int) **physics/jolt\_physics\_3d/limits/temporary\_memory\_buffer\_size** = `32` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-limits-temporary-memory-buffer-size)

The amount of memory to pre-allocate for the stack allocator used within Jolt, in MiB. This allocator is used within the physics step to store things that are only needed during it, like which bodies are in contact, how they form islands and the data needed to solve the contacts.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/limits/world\_boundary\_shape\_size** = `2000.0` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-limits-world-boundary-shape-size)

The size of [WorldBoundaryShape3D](class_worldboundaryshape3d.md#class-worldboundaryshape3d) boundaries, for all three dimensions. The plane is effectively centered within a box of this size, and anything outside of the box will not collide with it. This is necessary as [WorldBoundaryShape3D](class_worldboundaryshape3d.md#class-worldboundaryshape3d) is not unbounded when using Jolt, in order to prevent precision issues.

**Note:** Setting this value too high can make collision detection less accurate.

**Note:** Collisions against the effective edges of a [WorldBoundaryShape3D](class_worldboundaryshape3d.md#class-worldboundaryshape3d) will be inconsistent.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/motion\_queries/recovery\_amount** = `0.4` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-motion-queries-recovery-amount)

Fraction of the total penetration to depenetrate per iteration during motion queries.

**Note:** This affects methods [CharacterBody3D.move\_and\_slide()](class_characterbody3d.md#class-characterbody3d-method-move-and-slide), [PhysicsBody3D.move\_and\_collide()](class_physicsbody3d.md#class-physicsbody3d-method-move-and-collide), [PhysicsBody3D.test\_move()](class_physicsbody3d.md#class-physicsbody3d-method-test-move) and [PhysicsServer3D.body\_test\_motion()](class_physicsserver3d.md#class-physicsserver3d-method-body-test-motion).

* * *

[int](class_int.md#class-int) **physics/jolt\_physics\_3d/motion\_queries/recovery\_iterations** = `4` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-motion-queries-recovery-iterations)

The number of iterations to run when depenetrating during motion queries.

**Note:** This affects methods [CharacterBody3D.move\_and\_slide()](class_characterbody3d.md#class-characterbody3d-method-move-and-slide), [PhysicsBody3D.move\_and\_collide()](class_physicsbody3d.md#class-physicsbody3d-method-move-and-collide), [PhysicsBody3D.test\_move()](class_physicsbody3d.md#class-physicsbody3d-method-test-move) and [PhysicsServer3D.body\_test\_motion()](class_physicsserver3d.md#class-physicsserver3d-method-body-test-motion).

* * *

[bool](class_bool.md#class-bool) **physics/jolt\_physics\_3d/motion\_queries/use\_enhanced\_internal\_edge\_removal** = `true` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-motion-queries-use-enhanced-internal-edge-removal)

If `true`, enables Jolt's enhanced internal edge removal during motion queries. This can help alleviate ghost collisions, but only with edges within a single body, meaning edges between separate bodies can still cause ghost collisions.

**Note:** This affects methods [CharacterBody3D.move\_and\_slide()](class_characterbody3d.md#class-characterbody3d-method-move-and-slide), [PhysicsBody3D.move\_and\_collide()](class_physicsbody3d.md#class-physicsbody3d-method-move-and-collide), [PhysicsBody3D.test\_move()](class_physicsbody3d.md#class-physicsbody3d-method-test-move) and [PhysicsServer3D.body\_test\_motion()](class_physicsserver3d.md#class-physicsserver3d-method-body-test-motion).

* * *

[bool](class_bool.md#class-bool) **physics/jolt\_physics\_3d/queries/enable\_ray\_cast\_face\_index** = `false` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-queries-enable-ray-cast-face-index)

If `true`, populates the `face_index` field in the results of [PhysicsDirectSpaceState3D.intersect\_ray()](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d-method-intersect-ray), also accessed through [RayCast3D.get\_collision\_face\_index()](class_raycast3d.md#class-raycast3d-method-get-collision-face-index). If `false`, the `face_index` field will be left at its default value of `-1`.

**Note:** Enabling this setting will increase Jolt's memory usage for [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) by around 25%.

* * *

[bool](class_bool.md#class-bool) **physics/jolt\_physics\_3d/queries/use\_enhanced\_internal\_edge\_removal** = `false` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-queries-use-enhanced-internal-edge-removal)

If `true`, enables Jolt's enhanced internal edge removal during shape queries. This can help alleviate ghost collisions when using shape queries for things like character movement, but only with edges within a single body, meaning edges between separate bodies can still cause ghost collisions.

**Note:** This affects methods [PhysicsDirectSpaceState3D.cast\_motion()](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d-method-cast-motion), [PhysicsDirectSpaceState3D.collide\_shape()](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d-method-collide-shape), [PhysicsDirectSpaceState3D.get\_rest\_info()](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d-method-get-rest-info) and [PhysicsDirectSpaceState3D.intersect\_shape()](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d-method-intersect-shape).

**Note:** Enabling this setting can cause certain shapes to be culled from the results entirely, but you will get at least one intersection per body.

* * *

[bool](class_bool.md#class-bool) **physics/jolt\_physics\_3d/simulation/allow\_sleep** = `true` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-allow-sleep)

If `true`, [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) nodes are allowed to go to sleep if their velocity is below the threshold defined in [physics/jolt\_physics\_3d/simulation/sleep\_velocity\_threshold](#class-projectsettings-property-physics-jolt-physics-3d-simulation-sleep-velocity-threshold) for the duration set in [physics/jolt\_physics\_3d/simulation/sleep\_time\_threshold](#class-projectsettings-property-physics-jolt-physics-3d-simulation-sleep-time-threshold). This can improve physics simulation performance when there are non-moving [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) nodes, at the cost of some nodes possibly failing to wake up in certain scenarios. Consider disabling this temporarily to troubleshoot [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) nodes not moving when they should.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/baumgarte\_stabilization\_factor** = `0.2` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-baumgarte-stabilization-factor)

How much of the position error of a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) to fix during a physics step, where `0.0` is none and `1.0` is the full amount. This affects things like how quickly bodies depenetrate.

**Note:** Setting this value too high can make [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) nodes unstable.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/body\_pair\_contact\_cache\_angle\_threshold** = `0.034906585` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-body-pair-contact-cache-angle-threshold)

The maximum relative angle by which a body pair can move and still reuse the collision results from the previous physics step, in radians.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/body\_pair\_contact\_cache\_distance\_threshold** = `0.001` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-body-pair-contact-cache-distance-threshold)

The maximum relative distance by which a body pair can move and still reuse the collision results from the previous physics step, in meters.

* * *

[bool](class_bool.md#class-bool) **physics/jolt\_physics\_3d/simulation/body\_pair\_contact\_cache\_enabled** = `true` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-body-pair-contact-cache-enabled)

If `true`, enables the body pair contact cache, which removes the need for potentially expensive collision detection when the relative orientation between two bodies hasn't changed much.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/bounce\_velocity\_threshold** = `1.0` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-bounce-velocity-threshold)

The minimum velocity needed before a collision can be bouncy, in meters per second.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/continuous\_cd\_max\_penetration** = `0.25` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-continuous-cd-max-penetration)

Fraction of a body's inner radius that may penetrate another body while using continuous collision detection.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/continuous\_cd\_movement\_threshold** = `0.75` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-continuous-cd-movement-threshold)

Fraction of a body's inner radius that the body must move per step to make use of continuous collision detection.

* * *

[bool](class_bool.md#class-bool) **physics/jolt\_physics\_3d/simulation/generate\_all\_kinematic\_contacts** = `false` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-generate-all-kinematic-contacts)

If `true`, a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) frozen with [RigidBody3D.FREEZE\_MODE\_KINEMATIC](class_rigidbody3d.md#class-rigidbody3d-constant-freeze-mode-kinematic) is able to collide with other kinematic and static bodies, and therefore generate contacts for them.

**Note:** This setting can come at a heavy CPU and memory cost if you allow many/large frozen kinematic bodies with a non-zero [RigidBody3D.max\_contacts\_reported](class_rigidbody3d.md#class-rigidbody3d-property-max-contacts-reported) to overlap with complex static geometry, such as [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) or [HeightMapShape3D](class_heightmapshape3d.md#class-heightmapshape3d).

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/penetration\_slop** = `0.02` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-penetration-slop)

How much bodies are allowed to penetrate each other, in meters.

* * *

[int](class_int.md#class-int) **physics/jolt\_physics\_3d/simulation/position\_steps** = `2` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-position-steps)

Number of solver position iterations. The greater the number of iterations, the more accurate the simulation will be, at the cost of CPU performance.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/sleep\_time\_threshold** = `0.5` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-sleep-time-threshold)

Time in seconds a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) will spend below the sleep velocity threshold before going to sleep.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/sleep\_velocity\_threshold** = `0.03` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-sleep-velocity-threshold)

The linear velocity of specific points on the bounding box of a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d), below which it can be put to sleep, in meters per second. These points help capture both the linear and angular motion of a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d).

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/soft\_body\_point\_radius** = `0.01` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-soft-body-point-radius)

How big the points of a [SoftBody3D](class_softbody3d.md#class-softbody3d) are, in meters. A higher value can prevent behavior such as cloth laying perfectly flush against other surfaces and causing Z-fighting.

* * *

[float](class_float.md#class-float) **physics/jolt\_physics\_3d/simulation/speculative\_contact\_distance** = `0.02` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-speculative-contact-distance)

Radius around physics bodies, inside which speculative contact points will be detected, in meters. This is mainly used to prevent tunneling/penetration for [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) nodes during simulation.

**Note:** Setting this too high may result in ghost collisions, as speculative contacts are based on the closest points during the collision detection step which may not be the actual closest points by the time the two bodies hit.

* * *

[bool](class_bool.md#class-bool) **physics/jolt\_physics\_3d/simulation/use\_enhanced\_internal\_edge\_removal** = `true` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-use-enhanced-internal-edge-removal)

If `true`, enables Jolt's enhanced internal edge removal for [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d). This can help alleviate ghost collisions when, for example, a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) collides with the edges of two perfectly joined [BoxShape3D](class_boxshape3d.md#class-boxshape3d). The removal only applies to edges internal to a single body, meaning edges between separate bodies can still cause ghost collisions.

* * *

[int](class_int.md#class-int) **physics/jolt\_physics\_3d/simulation/velocity\_steps** = `10` [🔗](#class-projectsettings-property-physics-jolt-physics-3d-simulation-velocity-steps)

Number of solver velocity iterations. The greater the number of iterations, the more accurate the simulation will be, at the cost of CPU performance.

**Note:** This needs to be at least `2` in order for friction to work, as friction is applied using the non-penetration impulse from the previous iteration.

* * *

[int](class_int.md#class-int) **rendering/2d/batching/item\_buffer\_size** = `16384` [🔗](#class-projectsettings-property-rendering-2d-batching-item-buffer-size)

Maximum number of canvas item commands that can be batched into a single draw call.

* * *

[int](class_int.md#class-int) **rendering/2d/batching/uniform\_set\_cache\_size** = `4096` [🔗](#class-projectsettings-property-rendering-2d-batching-uniform-set-cache-size)

Maximum number of uniform sets that will be cached by the 2D renderer when batching draw calls.

**Note:** Increasing this value can improve performance if the project renders many unique sprite textures every frame.

* * *

[int](class_int.md#class-int) **rendering/2d/sdf/oversize** = `1` [🔗](#class-projectsettings-property-rendering-2d-sdf-oversize)

Controls how much of the original viewport size should be covered by the 2D signed distance field. This SDF can be sampled in [CanvasItem](class_canvasitem.md#class-canvasitem) shaders and is used for [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) collision. Higher values allow portions of occluders located outside the viewport to still be taken into account in the generated signed distance field, at the cost of performance. If you notice particles falling through [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d) s as the occluders leave the viewport, increase this setting.

The percentage specified is added on each axis and on both sides. For example, with the default setting of 120%, the signed distance field will cover 20% of the viewport's size outside the viewport on each side (top, right, bottom, left).

**Note:** This property is only read when the project starts. To change the 2D SDF oversizing percentage at runtime, use [RenderingServer.viewport\_set\_sdf\_oversize\_and\_scale()](class_renderingserver.md#class-renderingserver-method-viewport-set-sdf-oversize-and-scale) instead.

* * *

[int](class_int.md#class-int) **rendering/2d/sdf/scale** = `1` [🔗](#class-projectsettings-property-rendering-2d-sdf-scale)

The resolution scale to use for the 2D signed distance field. Higher values lead to a more precise and more stable signed distance field as the camera moves, at the cost of performance. The default value (50%) renders at half the resolution of the viewport size on each axis, which means the SDF is generated with 25% of the viewport's pixel count.

**Note:** This property is only read when the project starts. To change the 2D SDF resolution scale at runtime, use [RenderingServer.viewport\_set\_sdf\_oversize\_and\_scale()](class_renderingserver.md#class-renderingserver-method-viewport-set-sdf-oversize-and-scale) instead.

* * *

[int](class_int.md#class-int) **rendering/2d/shadow\_atlas/size** = `2048` [🔗](#class-projectsettings-property-rendering-2d-shadow-atlas-size)

The size of the 2D shadow atlas in pixels. Higher values result in more precise [Light2D](class_light2d.md#class-light2d) shadows, at the cost of performance and video memory usage. The specified value is rounded up to the nearest power of 2.

**Note:** This property is only read when the project starts. To change the 2D shadow atlas size at runtime, use [RenderingServer.canvas\_set\_shadow\_texture\_size()](class_renderingserver.md#class-renderingserver-method-canvas-set-shadow-texture-size) instead.

* * *

[bool](class_bool.md#class-bool) **rendering/2d/snap/snap\_2d\_transforms\_to\_pixel** = `false` [🔗](#class-projectsettings-property-rendering-2d-snap-snap-2d-transforms-to-pixel)

If `true`, [CanvasItem](class_canvasitem.md#class-canvasitem) nodes will internally snap to full pixels. Useful for low-resolution pixel art games. Their position can still be sub-pixel, but the decimals will not have effect as the position is rounded. This can lead to a crisper appearance at the cost of less smooth movement, especially when [Camera2D](class_camera2d.md#class-camera2d) smoothing is enabled.

**Note:** This property is only read when the project starts. To toggle 2D transform snapping at runtime, use [RenderingServer.viewport\_set\_snap\_2d\_transforms\_to\_pixel()](class_renderingserver.md#class-renderingserver-method-viewport-set-snap-2d-transforms-to-pixel) on the root [Viewport](class_viewport.md#class-viewport) instead.

**Note:** [Control](class_control.md#class-control) nodes are snapped to the nearest pixel by default. This is controlled by [gui/common/snap\_controls\_to\_pixels](#class-projectsettings-property-gui-common-snap-controls-to-pixels).

**Note:** It is not recommended to use this setting together with [rendering/2d/snap/snap\_2d\_vertices\_to\_pixel](#class-projectsettings-property-rendering-2d-snap-snap-2d-vertices-to-pixel), as movement may appear even less smooth. Prefer only enabling this setting instead.

* * *

[bool](class_bool.md#class-bool) **rendering/2d/snap/snap\_2d\_vertices\_to\_pixel** = `false` [🔗](#class-projectsettings-property-rendering-2d-snap-snap-2d-vertices-to-pixel)

If `true`, vertices of [CanvasItem](class_canvasitem.md#class-canvasitem) nodes will snap to full pixels. Useful for low-resolution pixel art games. Only affects the final vertex positions, not the transforms. This can lead to a crisper appearance at the cost of less smooth movement, especially when [Camera2D](class_camera2d.md#class-camera2d) smoothing is enabled.

**Note:** This property is only read when the project starts. To toggle 2D vertex snapping at runtime, use [RenderingServer.viewport\_set\_snap\_2d\_vertices\_to\_pixel()](class_renderingserver.md#class-renderingserver-method-viewport-set-snap-2d-vertices-to-pixel) on the root [Viewport](class_viewport.md#class-viewport) instead.

**Note:** [Control](class_control.md#class-control) nodes are snapped to the nearest pixel by default. This is controlled by [gui/common/snap\_controls\_to\_pixels](#class-projectsettings-property-gui-common-snap-controls-to-pixels).

**Note:** It is not recommended to use this setting together with [rendering/2d/snap/snap\_2d\_transforms\_to\_pixel](#class-projectsettings-property-rendering-2d-snap-snap-2d-transforms-to-pixel), as movement may appear even less smooth. Prefer only enabling that setting instead.

* * *

[int](class_int.md#class-int) **rendering/anti\_aliasing/quality/msaa\_2d** = `0` [🔗](#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-2d)

Sets the number of multisample antialiasing (MSAA) samples to use for 2D/Canvas rendering (as a power of two). MSAA is used to reduce aliasing around the edges of polygons. A higher MSAA value results in smoother edges but can be significantly slower on some hardware, especially integrated graphics due to their limited memory bandwidth. This has no effect on shader-induced aliasing or texture aliasing.

**Note:** MSAA is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

**Note:** This property is only read when the project starts. To set the number of 2D MSAA samples at runtime, set [Viewport.msaa\_2d](class_viewport.md#class-viewport-property-msaa-2d) or use [RenderingServer.viewport\_set\_msaa\_2d()](class_renderingserver.md#class-renderingserver-method-viewport-set-msaa-2d).

* * *

[int](class_int.md#class-int) **rendering/anti\_aliasing/quality/msaa\_3d** = `0` [🔗](#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-3d)

Sets the number of multisample antialiasing (MSAA) samples to use for 3D rendering (as a power of two). MSAA is used to reduce aliasing around the edges of polygons. A higher MSAA value results in smoother edges but can be significantly slower on some hardware, especially integrated graphics due to their limited memory bandwidth. See also [rendering/scaling\_3d/mode](#class-projectsettings-property-rendering-scaling-3d-mode) for supersampling, which provides higher quality but is much more expensive. This has no effect on shader-induced aliasing or texture aliasing.

**Note:** This property is only read when the project starts. To set the number of 3D MSAA samples at runtime, set [Viewport.msaa\_3d](class_viewport.md#class-viewport-property-msaa-3d) or use [RenderingServer.viewport\_set\_msaa\_3d()](class_renderingserver.md#class-renderingserver-method-viewport-set-msaa-3d).

* * *

[int](class_int.md#class-int) **rendering/anti\_aliasing/quality/screen\_space\_aa** = `0` [🔗](#class-projectsettings-property-rendering-anti-aliasing-quality-screen-space-aa)

Sets the screen-space antialiasing mode for the default screen [Viewport](class_viewport.md#class-viewport). Screen-space antialiasing works by selectively blurring edges in a post-process shader. It differs from MSAA which takes multiple coverage samples while rendering objects. Screen-space AA methods are typically faster than MSAA and will smooth out specular aliasing, but tend to make scenes appear blurry. The blurriness is partially counteracted by automatically using a negative mipmap LOD bias (see [rendering/textures/default\_filters/texture\_mipmap\_bias](#class-projectsettings-property-rendering-textures-default-filters-texture-mipmap-bias)).

Another way to combat specular aliasing is to enable [rendering/anti\_aliasing/screen\_space\_roughness\_limiter/enabled](#class-projectsettings-property-rendering-anti-aliasing-screen-space-roughness-limiter-enabled).

**Note:** Screen-space antialiasing is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

**Note:** This property is only read when the project starts. To set the screen-space antialiasing mode at runtime, set [Viewport.screen\_space\_aa](class_viewport.md#class-viewport-property-screen-space-aa) on the root [Viewport](class_viewport.md#class-viewport) instead, or use [RenderingServer.viewport\_set\_screen\_space\_aa()](class_renderingserver.md#class-renderingserver-method-viewport-set-screen-space-aa).

* * *

[float](class_float.md#class-float) **rendering/anti\_aliasing/quality/smaa\_edge\_detection\_threshold** = `0.05` [🔗](#class-projectsettings-property-rendering-anti-aliasing-quality-smaa-edge-detection-threshold)

Sets the sensitivity to edges when using SMAA for antialiasing. Lower values will catch more edges, at a potentially higher performance cost.

**Note:** This property is only read when the project starts. There is currently no way to change this setting at run-time.

* * *

[bool](class_bool.md#class-bool) **rendering/anti\_aliasing/quality/use\_debanding** = `false` [🔗](#class-projectsettings-property-rendering-anti-aliasing-quality-use-debanding)

If `true`, uses a fast post-processing filter to make banding significantly less visible. If [rendering/viewport/hdr\_2d](#class-projectsettings-property-rendering-viewport-hdr-2d) is `false`, 2D rendering is _not_ affected by debanding unless the [Environment.background\_mode](class_environment.md#class-environment-property-background-mode) is [Environment.BG\_CANVAS](class_environment.md#class-environment-constant-bg-canvas). If [rendering/viewport/hdr\_2d](#class-projectsettings-property-rendering-viewport-hdr-2d) is `true`, debanding will affect all 2D and 3D rendering, including canvas items.

In some cases, debanding may introduce a slightly noticeable dithering pattern. It's recommended to enable debanding only when actually needed since the dithering pattern will make lossless-compressed screenshots larger.

**Note:** This property is only read when the project starts. To set debanding at runtime, set [Viewport.use\_debanding](class_viewport.md#class-viewport-property-use-debanding) on the root [Viewport](class_viewport.md#class-viewport) instead, or use [RenderingServer.viewport\_set\_use\_debanding()](class_renderingserver.md#class-renderingserver-method-viewport-set-use-debanding).

* * *

[bool](class_bool.md#class-bool) **rendering/anti\_aliasing/quality/use\_taa** = `false` [🔗](#class-projectsettings-property-rendering-anti-aliasing-quality-use-taa)

Enables temporal antialiasing for the default screen [Viewport](class_viewport.md#class-viewport). TAA works by jittering the camera and accumulating the images of the last rendered frames, motion vector rendering is used to account for camera and object motion. Enabling TAA can make the image blurrier, which is partially counteracted by automatically using a negative mipmap LOD bias (see [rendering/textures/default\_filters/texture\_mipmap\_bias](#class-projectsettings-property-rendering-textures-default-filters-texture-mipmap-bias)).

**Note:** The implementation is not complete yet. Some visual instances such as particles and skinned meshes may show ghosting artifacts in motion.

**Note:** TAA is only supported in the Forward+ rendering method, not Mobile or Compatibility.

**Note:** This property is only read when the project starts. To set TAA at runtime, set [Viewport.use\_taa](class_viewport.md#class-viewport-property-use-taa) on the root [Viewport](class_viewport.md#class-viewport) instead, or use [RenderingServer.viewport\_set\_use\_taa()](class_renderingserver.md#class-renderingserver-method-viewport-set-use-taa).

* * *

[float](class_float.md#class-float) **rendering/anti\_aliasing/screen\_space\_roughness\_limiter/amount** = `0.25` [🔗](#class-projectsettings-property-rendering-anti-aliasing-screen-space-roughness-limiter-amount)

**Note:** This property is only read when the project starts. To control the screen-space roughness limiter at runtime, call [RenderingServer.screen\_space\_roughness\_limiter\_set\_active()](class_renderingserver.md#class-renderingserver-method-screen-space-roughness-limiter-set-active) instead.

* * *

[bool](class_bool.md#class-bool) **rendering/anti\_aliasing/screen\_space\_roughness\_limiter/enabled** = `true` [🔗](#class-projectsettings-property-rendering-anti-aliasing-screen-space-roughness-limiter-enabled)

If `true`, enables a spatial filter to limit roughness in areas with high-frequency detail. This can help reduce specular aliasing to an extent, though not as much as enabling [rendering/anti\_aliasing/quality/use\_taa](#class-projectsettings-property-rendering-anti-aliasing-quality-use-taa). This filter has a small performance cost, so consider disabling it if it doesn't benefit your scene noticeably.

**Note:** The screen-space roughness limiter is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

**Note:** This property is only read when the project starts. To control the screen-space roughness limiter at runtime, call [RenderingServer.screen\_space\_roughness\_limiter\_set\_active()](class_renderingserver.md#class-renderingserver-method-screen-space-roughness-limiter-set-active) instead.

* * *

[float](class_float.md#class-float) **rendering/anti\_aliasing/screen\_space\_roughness\_limiter/limit** = `0.18` [🔗](#class-projectsettings-property-rendering-anti-aliasing-screen-space-roughness-limiter-limit)

**Note:** This property is only read when the project starts. To control the screen-space roughness limiter at runtime, call [RenderingServer.screen\_space\_roughness\_limiter\_set\_active()](class_renderingserver.md#class-renderingserver-method-screen-space-roughness-limiter-set-active) instead.

* * *

[int](class_int.md#class-int) **rendering/camera/depth\_of\_field/depth\_of\_field\_bokeh\_quality** = `1` [🔗](#class-projectsettings-property-rendering-camera-depth-of-field-depth-of-field-bokeh-quality)

Sets the quality of the depth of field effect. Higher quality takes more samples, which is slower but looks smoother.

* * *

[int](class_int.md#class-int) **rendering/camera/depth\_of\_field/depth\_of\_field\_bokeh\_shape** = `1` [🔗](#class-projectsettings-property-rendering-camera-depth-of-field-depth-of-field-bokeh-shape)

Sets the depth of field shape. Can be Box, Hexagon, or Circle. Box is the fastest. Circle is the most realistic, but also the most expensive to compute.

* * *

[bool](class_bool.md#class-bool) **rendering/camera/depth\_of\_field/depth\_of\_field\_use\_jitter** = `false` [🔗](#class-projectsettings-property-rendering-camera-depth-of-field-depth-of-field-use-jitter)

If `true`, jitters DOF samples to make effect slightly blurrier and hide lines created from low sample rates. This can result in a slightly grainy appearance when used with a low number of samples.

* * *

[String](class_string.md#class-string) **rendering/driver/depth\_prepass/disable\_for\_vendors** = `"PowerVR,Mali,Adreno,Apple"` [🔗](#class-projectsettings-property-rendering-driver-depth-prepass-disable-for-vendors)

Disables [rendering/driver/depth\_prepass/enable](#class-projectsettings-property-rendering-driver-depth-prepass-enable) conditionally for certain vendors. By default, disables the depth prepass for mobile devices as mobile devices do not benefit from the depth prepass due to their unique architecture.

* * *

[bool](class_bool.md#class-bool) **rendering/driver/depth\_prepass/enable** = `true` [🔗](#class-projectsettings-property-rendering-driver-depth-prepass-enable)

If `true`, performs a previous depth pass before rendering 3D materials. This increases performance significantly in scenes with high overdraw, when complex materials and lighting are used. However, in scenes with few occluded surfaces, the depth prepass may reduce performance. If your game is viewed from a fixed angle that makes it easy to avoid overdraw (such as top-down or side-scrolling perspective), consider disabling the depth prepass to improve performance. This setting can be changed at run-time to optimize performance depending on the scene currently being viewed.

**Note:** Depth prepass is only supported when using the Forward+ or Compatibility rendering method. When using the Mobile rendering method, there is no depth prepass performed.

* * *

[int](class_int.md#class-int) **rendering/driver/threads/thread\_model** = `1` [🔗](#class-projectsettings-property-rendering-driver-threads-thread-model)

**Experimental:** This setting has several known bugs which can lead to crashing, especially when using particles or resizing the window. Not recommended for use in production at this stage.

The thread model to use for rendering. Rendering on a thread may improve performance, but synchronizing to the main thread can cause a bit more jitter.

* * *

[Color](class_color.md#class-color) **rendering/environment/defaults/default\_clear\_color** = `Color(0.3, 0.3, 0.3, 1)` [🔗](#class-projectsettings-property-rendering-environment-defaults-default-clear-color)

Default background clear color. Overridable per [Viewport](class_viewport.md#class-viewport) using its [Environment](class_environment.md#class-environment). See [Environment.background\_mode](class_environment.md#class-environment-property-background-mode) and [Environment.background\_color](class_environment.md#class-environment-property-background-color) in particular. To change this default color programmatically, use [RenderingServer.set\_default\_clear\_color()](class_renderingserver.md#class-renderingserver-method-set-default-clear-color).

* * *

[String](class_string.md#class-string) **rendering/environment/defaults/default\_environment** = `""` [🔗](#class-projectsettings-property-rendering-environment-defaults-default-environment)

[Environment](class_environment.md#class-environment) that will be used as a fallback environment in case a scene does not specify its own environment. The default environment is loaded in at scene load time regardless of whether you have set an environment or not. If you do not rely on the fallback environment, you do not need to set this property.

* * *

[int](class_int.md#class-int) **rendering/environment/glow/upscale\_mode** = `1` [🔗](#class-projectsettings-property-rendering-environment-glow-upscale-mode)

Sets how the glow effect is upscaled before being copied onto the screen. Linear is faster, but looks blocky. Bicubic is slower but looks smooth.

**Note:** [rendering/environment/glow/upscale\_mode](#class-projectsettings-property-rendering-environment-glow-upscale-mode) is only effective when using the Forward+ or Mobile rendering methods, as Compatibility uses a different glow implementation.

* * *

[int](class_int.md#class-int) **rendering/environment/glow/upscale\_mode.mobile** = `0` [🔗](#class-projectsettings-property-rendering-environment-glow-upscale-mode-mobile)

Lower-end override for [rendering/environment/glow/upscale\_mode](#class-projectsettings-property-rendering-environment-glow-upscale-mode) on mobile devices, due to performance concerns or driver support.

* * *

[int](class_int.md#class-int) **rendering/environment/screen\_space\_reflection/roughness\_quality** = `1` [🔗](#class-projectsettings-property-rendering-environment-screen-space-reflection-roughness-quality)

Sets the quality for rough screen-space reflections. Turning off will make all screen space reflections sharp, while higher values make rough reflections look better.

* * *

[float](class_float.md#class-float) **rendering/environment/ssao/adaptive\_target** = `0.5` [🔗](#class-projectsettings-property-rendering-environment-ssao-adaptive-target)

Quality target to use when [rendering/environment/ssao/quality](#class-projectsettings-property-rendering-environment-ssao-quality) is set to `Ultra`. A value of `0.0` provides a quality and speed similar to `Medium` while a value of `1.0` provides much higher quality than any of the other settings at the cost of performance.

* * *

[int](class_int.md#class-int) **rendering/environment/ssao/blur\_passes** = `2` [🔗](#class-projectsettings-property-rendering-environment-ssao-blur-passes)

Number of blur passes to use when computing screen-space ambient occlusion. A higher number will result in a smoother look, but will be slower to compute and will have less high-frequency detail.

* * *

[float](class_float.md#class-float) **rendering/environment/ssao/fadeout\_from** = `50.0` [🔗](#class-projectsettings-property-rendering-environment-ssao-fadeout-from)

Distance at which the screen-space ambient occlusion effect starts to fade out. Use this hide ambient occlusion from far away.

* * *

[float](class_float.md#class-float) **rendering/environment/ssao/fadeout\_to** = `300.0` [🔗](#class-projectsettings-property-rendering-environment-ssao-fadeout-to)

Distance at which the screen-space ambient occlusion is fully faded out. Use this hide ambient occlusion from far away.

* * *

[bool](class_bool.md#class-bool) **rendering/environment/ssao/half\_size** = `true` [🔗](#class-projectsettings-property-rendering-environment-ssao-half-size)

If `true`, screen-space ambient occlusion will be rendered at half size and then upscaled before being added to the scene. This is significantly faster but may miss small details. If `false`, screen-space ambient occlusion will be rendered at full size.

* * *

[int](class_int.md#class-int) **rendering/environment/ssao/quality** = `2` [🔗](#class-projectsettings-property-rendering-environment-ssao-quality)

Sets the quality of the screen-space ambient occlusion effect. Higher values take more samples and so will result in better quality, at the cost of performance. Setting to `Ultra` will use the [rendering/environment/ssao/adaptive\_target](#class-projectsettings-property-rendering-environment-ssao-adaptive-target) setting.

* * *

[float](class_float.md#class-float) **rendering/environment/ssil/adaptive\_target** = `0.5` [🔗](#class-projectsettings-property-rendering-environment-ssil-adaptive-target)

Quality target to use when [rendering/environment/ssil/quality](#class-projectsettings-property-rendering-environment-ssil-quality) is set to `Ultra`. A value of `0.0` provides a quality and speed similar to `Medium` while a value of `1.0` provides much higher quality than any of the other settings at the cost of performance. When using the adaptive target, the performance cost scales with the complexity of the scene.

* * *

[int](class_int.md#class-int) **rendering/environment/ssil/blur\_passes** = `4` [🔗](#class-projectsettings-property-rendering-environment-ssil-blur-passes)

Number of blur passes to use when computing screen-space indirect lighting. A higher number will result in a smoother look, but will be slower to compute and will have less high-frequency detail.

* * *

[float](class_float.md#class-float) **rendering/environment/ssil/fadeout\_from** = `50.0` [🔗](#class-projectsettings-property-rendering-environment-ssil-fadeout-from)

Distance at which the screen-space indirect lighting effect starts to fade out. Use this to hide screen-space indirect lighting from far away.

* * *

[float](class_float.md#class-float) **rendering/environment/ssil/fadeout\_to** = `300.0` [🔗](#class-projectsettings-property-rendering-environment-ssil-fadeout-to)

Distance at which the screen-space indirect lighting is fully faded out. Use this to hide screen-space indirect lighting from far away.

* * *

[bool](class_bool.md#class-bool) **rendering/environment/ssil/half\_size** = `true` [🔗](#class-projectsettings-property-rendering-environment-ssil-half-size)

If `true`, screen-space indirect lighting will be rendered at half size and then upscaled before being added to the scene. This is significantly faster but may miss small details and may result in some objects appearing to glow at their edges.

* * *

[int](class_int.md#class-int) **rendering/environment/ssil/quality** = `2` [🔗](#class-projectsettings-property-rendering-environment-ssil-quality)

Sets the quality of the screen-space indirect lighting effect. Higher values take more samples and so will result in better quality, at the cost of performance. Setting to `Ultra` will use the [rendering/environment/ssil/adaptive\_target](#class-projectsettings-property-rendering-environment-ssil-adaptive-target) setting.

* * *

[float](class_float.md#class-float) **rendering/environment/subsurface\_scattering/subsurface\_scattering\_depth\_scale** = `0.01` [🔗](#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-depth-scale)

Scales the depth over which the subsurface scattering effect is applied. A high value may allow light to scatter into a part of the mesh or another mesh that is close in screen space but far in depth. See also [rendering/environment/subsurface\_scattering/subsurface\_scattering\_scale](#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-scale).

**Note:** This property is only read when the project starts. To set the subsurface scattering depth scale at runtime, call [RenderingServer.sub\_surface\_scattering\_set\_scale()](class_renderingserver.md#class-renderingserver-method-sub-surface-scattering-set-scale) instead.

* * *

[int](class_int.md#class-int) **rendering/environment/subsurface\_scattering/subsurface\_scattering\_quality** = `1` [🔗](#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-quality)

Sets the quality of the subsurface scattering effect. Higher values are slower but look nicer. This affects the rendering of materials that have [BaseMaterial3D.subsurf\_scatter\_enabled](class_basematerial3d.md#class-basematerial3d-property-subsurf-scatter-enabled) set to `true`, along with [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) s that set `SSS_STRENGTH`.

**Note:** This property is only read when the project starts. To set the subsurface scattering quality at runtime, call [RenderingServer.sub\_surface\_scattering\_set\_quality()](class_renderingserver.md#class-renderingserver-method-sub-surface-scattering-set-quality) instead.

* * *

[float](class_float.md#class-float) **rendering/environment/subsurface\_scattering/subsurface\_scattering\_scale** = `0.05` [🔗](#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-scale)

Scales the distance over which samples are taken for subsurface scattering effect. Changing this does not impact performance, but higher values will result in significant artifacts as the samples will become obviously spread out. A lower value results in a smaller spread of scattered light. See also [rendering/environment/subsurface\_scattering/subsurface\_scattering\_depth\_scale](#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-depth-scale).

**Note:** This property is only read when the project starts. To set the subsurface scattering scale at runtime, call [RenderingServer.sub\_surface\_scattering\_set\_scale()](class_renderingserver.md#class-renderingserver-method-sub-surface-scattering-set-scale) instead.

* * *

[int](class_int.md#class-int) **rendering/environment/volumetric\_fog/use\_filter** = `1` [🔗](#class-projectsettings-property-rendering-environment-volumetric-fog-use-filter)

Enables filtering of the volumetric fog effect prior to integration. This substantially blurs the fog which reduces fine details but also smooths out harsh edges and aliasing artifacts. Disable when more detail is required.

* * *

[int](class_int.md#class-int) **rendering/environment/volumetric\_fog/volume\_depth** = `64` [🔗](#class-projectsettings-property-rendering-environment-volumetric-fog-volume-depth)

Number of slices to use along the depth of the froxel buffer for volumetric fog. A lower number will be more efficient but may result in artifacts appearing during camera movement. See also [Environment.volumetric\_fog\_length](class_environment.md#class-environment-property-volumetric-fog-length).

* * *

[int](class_int.md#class-int) **rendering/environment/volumetric\_fog/volume\_size** = `64` [🔗](#class-projectsettings-property-rendering-environment-volumetric-fog-volume-size)

Base size used to determine size of froxel buffer in the camera X-axis and Y-axis. The final size is scaled by the aspect ratio of the screen, so actual values may differ from what is set. Set a larger size for more detailed fog, set a smaller size for better performance.

* * *

[String](class_string.md#class-string) **rendering/gl\_compatibility/driver** = `"opengl3"` [🔗](#class-projectsettings-property-rendering-gl-compatibility-driver)

Sets the driver to be used by the renderer when using the Compatibility renderer. Editing this property has no effect in the default configuration, as first-party platforms each have platform-specific overrides. Use those overrides to configure the driver for each platform.

This can be overridden using the `--rendering-driver <driver>` command line argument.

Supported values are:

- `opengl3`, OpenGL 3.3 on desktop platforms, OpenGL ES 3.0 on mobile platforms, WebGL 2.0 on web.

- `opengl3_angle`, OpenGL ES 3.0 using the ANGLE compatibility layer, supported on macOS (over native OpenGL) and Windows (over Direct3D 11).

- `opengl3_es`, OpenGL ES 3.0 on Linux/BSD.


**Note:** The availability of these options depends on whether the engine was compiled with support for them (determined by SCons options `opengl3` and `angle_libs`).

**Note:** The actual rendering driver may be automatically changed by the engine as a result of a fallback, or a user-specified command line argument. To get the actual rendering driver that is used at runtime, use [RenderingServer.get\_current\_rendering\_driver\_name()](class_renderingserver.md#class-renderingserver-method-get-current-rendering-driver-name) instead of reading this project setting's value.

* * *

[String](class_string.md#class-string) **rendering/gl\_compatibility/driver.android** = `"opengl3"` [🔗](#class-projectsettings-property-rendering-gl-compatibility-driver-android)

Android override for [rendering/gl\_compatibility/driver](#class-projectsettings-property-rendering-gl-compatibility-driver).

Only one option is supported:

- `opengl3`, OpenGL ES 3.0 from native drivers.


* * *

[String](class_string.md#class-string) **rendering/gl\_compatibility/driver.ios** = `"opengl3"` [🔗](#class-projectsettings-property-rendering-gl-compatibility-driver-ios)

iOS override for [rendering/gl\_compatibility/driver](#class-projectsettings-property-rendering-gl-compatibility-driver).

Only one option is supported:

- `opengl3`, OpenGL ES 3.0 from native drivers.


* * *

[String](class_string.md#class-string) **rendering/gl\_compatibility/driver.linuxbsd** = `"opengl3"` [🔗](#class-projectsettings-property-rendering-gl-compatibility-driver-linuxbsd)

LinuxBSD override for [rendering/gl\_compatibility/driver](#class-projectsettings-property-rendering-gl-compatibility-driver).

Two options are supported:

- `opengl3` (default), OpenGL 3.3 from native drivers.

- `opengl3_es`, OpenGL ES 3.0 from native drivers. If [rendering/gl\_compatibility/fallback\_to\_gles](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-gles) is enabled, this is used as a fallback if OpenGL 3.3 is not supported.


* * *

[String](class_string.md#class-string) **rendering/gl\_compatibility/driver.macos** = `"opengl3"` [🔗](#class-projectsettings-property-rendering-gl-compatibility-driver-macos)

macOS override for [rendering/gl\_compatibility/driver](#class-projectsettings-property-rendering-gl-compatibility-driver).

Two options are supported:

- `opengl3` (default), OpenGL 3.3 from native drivers. If [rendering/gl\_compatibility/fallback\_to\_native](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-native) is enabled, this is used as a fallback if ANGLE is configured as the preferred driver but not supported.

- `opengl3_angle`, OpenGL ES 3.0 using the ANGLE compatibility layer over native OpenGL drivers. If [rendering/gl\_compatibility/fallback\_to\_angle](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-angle) is enabled, this is used as a fallback if OpenGL 3.3 is not supported.


* * *

[String](class_string.md#class-string) **rendering/gl\_compatibility/driver.web** = `"opengl3"` [🔗](#class-projectsettings-property-rendering-gl-compatibility-driver-web)

Web override for [rendering/gl\_compatibility/driver](#class-projectsettings-property-rendering-gl-compatibility-driver).

Only one option is supported:

- `opengl3`, WebGL 2.0. The underlying native API depends on the target OS, browser, and browser configuration.


* * *

[String](class_string.md#class-string) **rendering/gl\_compatibility/driver.windows** = `"opengl3"` [🔗](#class-projectsettings-property-rendering-gl-compatibility-driver-windows)

Windows override for [rendering/gl\_compatibility/driver](#class-projectsettings-property-rendering-gl-compatibility-driver).

Two options are supported:

- `opengl3` (default), OpenGL 3.3 from native drivers. If [rendering/gl\_compatibility/fallback\_to\_native](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-native) is enabled, this is used as a fallback if ANGLE is configured as the preferred driver but not supported.

- `opengl3_angle`, OpenGL ES 3.0 using the ANGLE compatibility layer over native Direct3D 11 drivers. If [rendering/gl\_compatibility/fallback\_to\_angle](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-angle) is enabled, this is used as a fallback if OpenGL 3.3 is not supported. By default, ANGLE is used as the default driver for some devices listed in [rendering/gl\_compatibility/force\_angle\_on\_devices](#class-projectsettings-property-rendering-gl-compatibility-force-angle-on-devices).


* * *

[bool](class_bool.md#class-bool) **rendering/gl\_compatibility/fallback\_to\_angle** = `true` [🔗](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-angle)

If `true`, the Compatibility renderer will fall back to ANGLE if native OpenGL is not supported or the device is listed in [rendering/gl\_compatibility/force\_angle\_on\_devices](#class-projectsettings-property-rendering-gl-compatibility-force-angle-on-devices).

**Note:** This setting is implemented only on Windows.

* * *

[bool](class_bool.md#class-bool) **rendering/gl\_compatibility/fallback\_to\_gles** = `true` [🔗](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-gles)

If `true`, the Compatibility renderer will fall back to OpenGLES if desktop OpenGL is not supported.

**Note:** This setting is implemented only on Linux/X11.

* * *

[bool](class_bool.md#class-bool) **rendering/gl\_compatibility/fallback\_to\_native** = `true` [🔗](#class-projectsettings-property-rendering-gl-compatibility-fallback-to-native)

If `true`, the Compatibility renderer will fall back to native OpenGL if ANGLE is not supported, or ANGLE dynamic libraries aren't found.

**Note:** This setting is implemented on macOS and Windows.

* * *

[Array](class_array.md#class-array) **rendering/gl\_compatibility/force\_angle\_on\_devices** [🔗](#class-projectsettings-property-rendering-gl-compatibility-force-angle-on-devices)

An [Array](class_array.md#class-array) of devices which should always use the ANGLE renderer.

Each entry is a [Dictionary](class_dictionary.md#class-dictionary) with the following keys: `vendor` and `name`. `name` can be set to `*` to add all devices with the specified `vendor`.

**Note:** This setting is implemented only on Windows.

* * *

[int](class_int.md#class-int) **rendering/gl\_compatibility/item\_buffer\_size** = `16384` [🔗](#class-projectsettings-property-rendering-gl-compatibility-item-buffer-size)

Maximum number of canvas items commands that can be drawn in a single viewport update. If more render commands are issued they will be ignored. Decreasing this limit may improve performance on bandwidth limited devices. Increase this limit if you find that not all objects are being drawn in a frame.

* * *

[bool](class_bool.md#class-bool) **rendering/gl\_compatibility/nvidia\_disable\_threaded\_optimization** = `true` [🔗](#class-projectsettings-property-rendering-gl-compatibility-nvidia-disable-threaded-optimization)

If `true`, disables the threaded optimization feature from the NVIDIA drivers, which are known to cause stuttering in most OpenGL applications.

**Note:** This setting only works on Windows, as threaded optimization is disabled by default on other platforms.

* * *

[bool](class_bool.md#class-bool) **rendering/global\_illumination/gi/use\_half\_resolution** = `false` [🔗](#class-projectsettings-property-rendering-global-illumination-gi-use-half-resolution)

If `true`, renders [VoxelGI](class_voxelgi.md#class-voxelgi) and SDFGI ( [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)) buffers at halved resolution (e.g. 960×540 when the viewport size is 1920×1080). This improves performance significantly when VoxelGI or SDFGI is enabled, at the cost of artifacts that may be visible on polygon edges. The loss in quality becomes less noticeable as the viewport resolution increases. [LightmapGI](class_lightmapgi.md#class-lightmapgi) rendering is not affected by this setting.

**Note:** This property is only read when the project starts. To set half-resolution GI at run-time, call [RenderingServer.gi\_set\_use\_half\_resolution()](class_renderingserver.md#class-renderingserver-method-gi-set-use-half-resolution) instead.

* * *

[int](class_int.md#class-int) **rendering/global\_illumination/sdfgi/frames\_to\_converge** = `5` [🔗](#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-converge)

The number of frames to use for converging signed distance field global illumination. Higher values lead to a less noisy result, at the cost of taking a longer time to fully converge. This means the scene's global illumination will be too dark for a longer period of time, especially when the camera moves fast. The actual convergence speed depends on rendered framerate. For example, with the default setting of 30 frames, rendering at 60 FPS will make SDFGI fully converge after 0.5 seconds. See also [rendering/global\_illumination/sdfgi/frames\_to\_update\_lights](#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-update-lights) and [rendering/global\_illumination/sdfgi/probe\_ray\_count](#class-projectsettings-property-rendering-global-illumination-sdfgi-probe-ray-count).

**Note:** This property is only read when the project starts. To control SDFGI convergence speed at runtime, call [RenderingServer.environment\_set\_sdfgi\_frames\_to\_converge()](class_renderingserver.md#class-renderingserver-method-environment-set-sdfgi-frames-to-converge) instead.

* * *

[int](class_int.md#class-int) **rendering/global\_illumination/sdfgi/frames\_to\_update\_lights** = `2` [🔗](#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-update-lights)

The number of frames over which dynamic lights should be updated in signed distance field global illumination. Higher values take more time to update indirect lighting coming from dynamic lights, but result in better performance when many dynamic lights are present. See also [rendering/global\_illumination/sdfgi/frames\_to\_converge](#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-converge) and [rendering/global\_illumination/sdfgi/probe\_ray\_count](#class-projectsettings-property-rendering-global-illumination-sdfgi-probe-ray-count).

**Note:** This only affects [Light3D](class_light3d.md#class-light3d) nodes whose [Light3D.light\_bake\_mode](class_light3d.md#class-light3d-property-light-bake-mode) is [Light3D.BAKE\_DYNAMIC](class_light3d.md#class-light3d-constant-bake-dynamic) (which is the default). Consider making non-moving lights use the [Light3D.BAKE\_STATIC](class_light3d.md#class-light3d-constant-bake-static) bake mode to improve performance.

**Note:** This property is only read when the project starts. To control SDFGI light update speed at runtime, call [RenderingServer.environment\_set\_sdfgi\_frames\_to\_update\_light()](class_renderingserver.md#class-renderingserver-method-environment-set-sdfgi-frames-to-update-light) instead.

* * *

[int](class_int.md#class-int) **rendering/global\_illumination/sdfgi/probe\_ray\_count** = `1` [🔗](#class-projectsettings-property-rendering-global-illumination-sdfgi-probe-ray-count)

The number of rays to throw per frame when computing signed distance field global illumination. Higher values lead to a less noisy result, at the cost of performance. See also [rendering/global\_illumination/sdfgi/frames\_to\_converge](#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-converge) and [rendering/global\_illumination/sdfgi/frames\_to\_update\_lights](#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-update-lights).

**Note:** This property is only read when the project starts. To control SDFGI quality at runtime, call [RenderingServer.environment\_set\_sdfgi\_ray\_count()](class_renderingserver.md#class-renderingserver-method-environment-set-sdfgi-ray-count) instead.

* * *

[int](class_int.md#class-int) **rendering/global\_illumination/voxel\_gi/quality** = `0` [🔗](#class-projectsettings-property-rendering-global-illumination-voxel-gi-quality)

The VoxelGI quality to use. High quality leads to more precise lighting and better reflections, but is slower to render. This setting does not affect the baked data and doesn't require baking the [VoxelGI](class_voxelgi.md#class-voxelgi) again to apply.

**Note:** This property is only read when the project starts. To control VoxelGI quality at runtime, call [RenderingServer.voxel\_gi\_set\_quality()](class_renderingserver.md#class-renderingserver-method-voxel-gi-set-quality) instead.

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_performance/max\_rays\_per\_pass** = `4` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-performance-max-rays-per-pass)

The maximum number of rays that can be thrown per pass when baking lightmaps with [LightmapGI](class_lightmapgi.md#class-lightmapgi). Depending on the scene, adjusting this value may result in higher GPU utilization when baking lightmaps, leading to faster bake times.

**Note:** Using a value that is too high for your system can cause crashes due to the GPU being unresponsive for long periods of time, and the graphics driver being reset by the OS.

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_performance/max\_rays\_per\_probe\_pass** = `64` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-performance-max-rays-per-probe-pass)

The maximum number of rays that can be thrown per pass when baking dynamic object lighting in [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) s with [LightmapGI](class_lightmapgi.md#class-lightmapgi). Depending on the scene, adjusting this value may result in higher GPU utilization when baking lightmaps, leading to faster bake times.

**Note:** Using a value that is too high for your system can cause crashes due to the GPU being unresponsive for long periods of time, and the graphics driver being reset by the OS.

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_performance/max\_transparency\_rays** = `8` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-performance-max-transparency-rays)

The maximum number of retry rays that can be thrown per pass when hitting a transparent surface when baking lightmaps with [LightmapGI](class_lightmapgi.md#class-lightmapgi). Depending on the scene, reducing this value may lead to faster bake times.

**Note:** Using a value that is too high for your system can cause crashes due to the GPU being unresponsive for long periods of time, and the graphics driver being reset by the OS.

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_performance/region\_size** = `512` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-performance-region-size)

The region size to use when baking lightmaps with [LightmapGI](class_lightmapgi.md#class-lightmapgi). The specified value is rounded up to the nearest power of 2.

**Note:** Using a value that is too high for your system can cause crashes due to the GPU being unresponsive for long periods of time, and the graphics driver being reset by the OS.

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_quality/high\_quality\_probe\_ray\_count** = `512` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-quality-high-quality-probe-ray-count)

The number of rays to use for baking dynamic object lighting in [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) s when [LightmapGI.quality](class_lightmapgi.md#class-lightmapgi-property-quality) is [LightmapGI.BAKE\_QUALITY\_HIGH](class_lightmapgi.md#class-lightmapgi-constant-bake-quality-high).

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_quality/high\_quality\_ray\_count** = `512` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-quality-high-quality-ray-count)

The number of rays to use for baking lightmaps with [LightmapGI](class_lightmapgi.md#class-lightmapgi) when [LightmapGI.quality](class_lightmapgi.md#class-lightmapgi-property-quality) is [LightmapGI.BAKE\_QUALITY\_HIGH](class_lightmapgi.md#class-lightmapgi-constant-bake-quality-high).

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_quality/low\_quality\_probe\_ray\_count** = `64` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-quality-low-quality-probe-ray-count)

The number of rays to use for baking dynamic object lighting in [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) s when [LightmapGI.quality](class_lightmapgi.md#class-lightmapgi-property-quality) is [LightmapGI.BAKE\_QUALITY\_LOW](class_lightmapgi.md#class-lightmapgi-constant-bake-quality-low).

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_quality/low\_quality\_ray\_count** = `32` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-quality-low-quality-ray-count)

The number of rays to use for baking lightmaps with [LightmapGI](class_lightmapgi.md#class-lightmapgi) when [LightmapGI.quality](class_lightmapgi.md#class-lightmapgi-property-quality) is [LightmapGI.BAKE\_QUALITY\_LOW](class_lightmapgi.md#class-lightmapgi-constant-bake-quality-low).

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_quality/medium\_quality\_probe\_ray\_count** = `256` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-quality-medium-quality-probe-ray-count)

The number of rays to use for baking dynamic object lighting in [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) s when [LightmapGI.quality](class_lightmapgi.md#class-lightmapgi-property-quality) is [LightmapGI.BAKE\_QUALITY\_MEDIUM](class_lightmapgi.md#class-lightmapgi-constant-bake-quality-medium).

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_quality/medium\_quality\_ray\_count** = `128` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-quality-medium-quality-ray-count)

The number of rays to use for baking lightmaps with [LightmapGI](class_lightmapgi.md#class-lightmapgi) when [LightmapGI.quality](class_lightmapgi.md#class-lightmapgi-property-quality) is [LightmapGI.BAKE\_QUALITY\_MEDIUM](class_lightmapgi.md#class-lightmapgi-constant-bake-quality-medium).

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_quality/ultra\_quality\_probe\_ray\_count** = `2048` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-quality-ultra-quality-probe-ray-count)

The number of rays to use for baking dynamic object lighting in [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) s when [LightmapGI.quality](class_lightmapgi.md#class-lightmapgi-property-quality) is [LightmapGI.BAKE\_QUALITY\_ULTRA](class_lightmapgi.md#class-lightmapgi-constant-bake-quality-ultra).

* * *

[int](class_int.md#class-int) **rendering/lightmapping/bake\_quality/ultra\_quality\_ray\_count** = `2048` [🔗](#class-projectsettings-property-rendering-lightmapping-bake-quality-ultra-quality-ray-count)

The number of rays to use for baking lightmaps with [LightmapGI](class_lightmapgi.md#class-lightmapgi) when [LightmapGI.quality](class_lightmapgi.md#class-lightmapgi-property-quality) is [LightmapGI.BAKE\_QUALITY\_ULTRA](class_lightmapgi.md#class-lightmapgi-constant-bake-quality-ultra).

* * *

[int](class_int.md#class-int) **rendering/lightmapping/denoising/denoiser** = `0` [🔗](#class-projectsettings-property-rendering-lightmapping-denoising-denoiser)

Denoiser tool used for denoising lightmaps.

Using [OpenImageDenoise](https://www.openimagedenoise.org/) (OIDN) requires configuring a path to an OIDN executable in the editor settings at [EditorSettings.filesystem/tools/oidn/oidn\_denoise\_path](class_editorsettings.md#class-editorsettings-property-filesystem-tools-oidn-oidn-denoise-path). OIDN can be downloaded from [OpenImageDenoise's downloads page](https://www.openimagedenoise.org/downloads.html).

OIDN will use GPU acceleration when available. Unlike JNLM which uses compute shaders for acceleration, OIDN uses vendor-specific acceleration methods. For GPU acceleration to be available, the following libraries must be installed on the system depending on your GPU:

- NVIDIA GPUs: CUDA libraries

- AMD GPUs: HIP libraries

- Intel GPUs: SYCL libraries


If no GPU acceleration is configured on the system, multi-threaded CPU-based denoising will be performed instead. This CPU-based denoising is significantly slower than the JNLM denoiser in most cases.

* * *

[bool](class_bool.md#class-bool) **rendering/lightmapping/lightmap\_gi/use\_bicubic\_filter** = `true` [🔗](#class-projectsettings-property-rendering-lightmapping-lightmap-gi-use-bicubic-filter)

If `true`, applies a bicubic filter during lightmap sampling. This makes lightmaps look much smoother, at a moderate performance cost.

**Note:** The bicubic filter exaggerates the 'bleeding' effect that occurs when a lightmap's resolution is low enough.

* * *

[float](class_float.md#class-float) **rendering/lightmapping/primitive\_meshes/texel\_size** = `0.2` [🔗](#class-projectsettings-property-rendering-lightmapping-primitive-meshes-texel-size)

The texel\_size that is used to calculate the [Mesh.lightmap\_size\_hint](class_mesh.md#class-mesh-property-lightmap-size-hint) on [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) resources if [PrimitiveMesh.add\_uv2](class_primitivemesh.md#class-primitivemesh-property-add-uv2) is enabled.

* * *

[float](class_float.md#class-float) **rendering/lightmapping/probe\_capture/update\_speed** = `15` [🔗](#class-projectsettings-property-rendering-lightmapping-probe-capture-update-speed)

The framerate-independent update speed when representing dynamic object lighting from [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) s. Higher values make dynamic object lighting update faster. Higher values can prevent fast-moving objects from having "outdated" indirect lighting displayed on them, at the cost of possible flickering when an object moves from a bright area to a shaded area.

* * *

[bool](class_bool.md#class-bool) **rendering/lights\_and\_shadows/directional\_shadow/16\_bits** = `true` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-16-bits)

Use 16 bits for the directional shadow depth map. Enabling this results in shadows having less precision and may result in shadow acne, but can lead to performance improvements on some devices.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/directional\_shadow/size** = `4096` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-size)

The directional shadow's size in pixels. Higher values will result in sharper shadows, at the cost of performance. The value is rounded up to the nearest power of 2.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/directional\_shadow/size.mobile** = `2048` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-size-mobile)

Lower-end override for [rendering/lights\_and\_shadows/directional\_shadow/size](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-size) on mobile devices, due to performance concerns or driver support.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/directional\_shadow/soft\_shadow\_filter\_quality** = `2` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-soft-shadow-filter-quality)

Quality setting for shadows cast by [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) s. Higher quality settings use more samples when reading from shadow maps and are thus slower. Low quality settings may result in shadows looking grainy.

**Note:** The Soft Very Low setting will automatically multiply _constant_ shadow blur by 0.75x to reduce the amount of noise visible. This automatic blur change only affects the constant blur factor defined in [Light3D.shadow\_blur](class_light3d.md#class-light3d-property-shadow-blur), not the variable blur performed by [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) s' [Light3D.light\_angular\_distance](class_light3d.md#class-light3d-property-light-angular-distance).

**Note:** The Soft High and Soft Ultra settings will automatically multiply _constant_ shadow blur by 1.5× and 2× respectively to make better use of the increased sample count. This increased blur also improves stability of dynamic object shadows.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/directional\_shadow/soft\_shadow\_filter\_quality.mobile** = `0` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-soft-shadow-filter-quality-mobile)

Lower-end override for [rendering/lights\_and\_shadows/directional\_shadow/soft\_shadow\_filter\_quality](#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-soft-shadow-filter-quality) on mobile devices, due to performance concerns or driver support.

* * *

[bool](class_bool.md#class-bool) **rendering/lights\_and\_shadows/positional\_shadow/atlas\_16\_bits** = `true` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-16-bits)

Use 16 bits for the omni/spot shadow depth map. Enabling this results in shadows having less precision and may result in shadow acne, but can lead to performance improvements on some devices.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/positional\_shadow/atlas\_quadrant\_0\_subdiv** = `2` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-quadrant-0-subdiv)

The subdivision amount of the first quadrant on the shadow atlas. See the [documentation](../tutorials/3d/lights_and_shadows.md#shadow-atlas) for more information.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/positional\_shadow/atlas\_quadrant\_1\_subdiv** = `2` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-quadrant-1-subdiv)

The subdivision amount of the second quadrant on the shadow atlas. See the [documentation](../tutorials/3d/lights_and_shadows.md#shadow-atlas) for more information.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/positional\_shadow/atlas\_quadrant\_2\_subdiv** = `3` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-quadrant-2-subdiv)

The subdivision amount of the third quadrant on the shadow atlas. See the [documentation](../tutorials/3d/lights_and_shadows.md#shadow-atlas) for more information.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/positional\_shadow/atlas\_quadrant\_3\_subdiv** = `4` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-quadrant-3-subdiv)

The subdivision amount of the fourth quadrant on the shadow atlas. See the [documentation](../tutorials/3d/lights_and_shadows.md#shadow-atlas) for more information.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/positional\_shadow/atlas\_size** = `4096` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-size)

The size of the shadow atlas used for [OmniLight3D](class_omnilight3d.md#class-omnilight3d) and [SpotLight3D](class_spotlight3d.md#class-spotlight3d) nodes. See the [documentation](../tutorials/3d/lights_and_shadows.md#shadow-atlas) for more information.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/positional\_shadow/atlas\_size.mobile** = `2048` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-size-mobile)

Lower-end override for [rendering/lights\_and\_shadows/positional\_shadow/atlas\_size](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-atlas-size) on mobile devices, due to performance concerns or driver support.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/positional\_shadow/soft\_shadow\_filter\_quality** = `2` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-soft-shadow-filter-quality)

Quality setting for shadows cast by [OmniLight3D](class_omnilight3d.md#class-omnilight3d) s and [SpotLight3D](class_spotlight3d.md#class-spotlight3d) s. Higher quality settings use more samples when reading from shadow maps and are thus slower. Low quality settings may result in shadows looking grainy.

**Note:** The Soft Very Low setting will automatically multiply _constant_ shadow blur by 0.75x to reduce the amount of noise visible. This automatic blur change only affects the constant blur factor defined in [Light3D.shadow\_blur](class_light3d.md#class-light3d-property-shadow-blur), not the variable blur performed by [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) s' [Light3D.light\_angular\_distance](class_light3d.md#class-light3d-property-light-angular-distance).

**Note:** The Soft High and Soft Ultra settings will automatically multiply shadow blur by 1.5× and 2× respectively to make better use of the increased sample count. This increased blur also improves stability of dynamic object shadows.

* * *

[int](class_int.md#class-int) **rendering/lights\_and\_shadows/positional\_shadow/soft\_shadow\_filter\_quality.mobile** = `0` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-soft-shadow-filter-quality-mobile)

Lower-end override for [rendering/lights\_and\_shadows/positional\_shadow/soft\_shadow\_filter\_quality](#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-soft-shadow-filter-quality) on mobile devices, due to performance concerns or driver support.

* * *

[bool](class_bool.md#class-bool) **rendering/lights\_and\_shadows/tighter\_shadow\_caster\_culling** = `true` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-tighter-shadow-caster-culling)

If `true`, items that cannot cast shadows into the view frustum will not be rendered into shadow maps.

This can increase performance.

* * *

[bool](class_bool.md#class-bool) **rendering/lights\_and\_shadows/use\_physical\_light\_units** = `false` [🔗](#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units)

Enables the use of physically based units for light sources. Physically based units tend to be much larger than the arbitrary units used by Godot, but they can be used to match lighting within Godot to real-world lighting. Due to the large dynamic range of lighting conditions present in nature, Godot bakes exposure into the various lighting quantities before rendering. Most light sources bake exposure automatically at run time based on the active [CameraAttributes](class_cameraattributes.md#class-cameraattributes) resource, but [LightmapGI](class_lightmapgi.md#class-lightmapgi) and [VoxelGI](class_voxelgi.md#class-voxelgi) require a [CameraAttributes](class_cameraattributes.md#class-cameraattributes) resource to be set at bake time to reduce the dynamic range. At run time, Godot will automatically reconcile the baked exposure with the active exposure to ensure lighting remains consistent.

* * *

[float](class_float.md#class-float) **rendering/limits/cluster\_builder/max\_clustered\_elements** = `512` [🔗](#class-projectsettings-property-rendering-limits-cluster-builder-max-clustered-elements)

The maximum number of clustered elements ( [OmniLight3D](class_omnilight3d.md#class-omnilight3d) \+ [SpotLight3D](class_spotlight3d.md#class-spotlight3d) \+ [Decal](class_decal.md#class-decal) \+ [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe)) that can be rendered at once in the camera view. If there are more clustered elements present in the camera view, some of them will not be rendered (leading to pop-in during camera movement). Enabling distance fade on lights and decals ( [Light3D.distance\_fade\_enabled](class_light3d.md#class-light3d-property-distance-fade-enabled), [Decal.distance\_fade\_enabled](class_decal.md#class-decal-property-distance-fade-enabled)) can help avoid reaching this limit.

Decreasing this value may improve GPU performance on certain setups, even if the maximum number of clustered elements is never reached in the project.

**Note:** This setting is only effective when using the Forward+ rendering method, not Mobile and Compatibility.

* * *

[int](class_int.md#class-int) **rendering/limits/global\_shader\_variables/buffer\_size** = `65536` [🔗](#class-projectsettings-property-rendering-limits-global-shader-variables-buffer-size)

The maximum number of uniforms that can be used by the global shader uniform buffer. Each item takes up one slot. In other words, a single uniform float and a uniform vec4 will take the same amount of space in the buffer.

**Note:** When using the Compatibility renderer, most mobile devices (and all web exports) will be limited to a maximum size of 1024 due to hardware constraints.

* * *

[int](class_int.md#class-int) **rendering/limits/opengl/max\_lights\_per\_object** = `8` [🔗](#class-projectsettings-property-rendering-limits-opengl-max-lights-per-object)

Max number of omnilights and spotlights renderable per object. At the default value of 8, this means that each surface can be affected by up to 8 omnilights and 8 spotlights. This is further limited by hardware support and [rendering/limits/opengl/max\_renderable\_lights](#class-projectsettings-property-rendering-limits-opengl-max-renderable-lights). Setting this low will slightly reduce memory usage, may decrease shader compile times, and may result in faster rendering on low-end, mobile, or web devices.

**Note:** This setting is only effective when using the Compatibility rendering method, not Forward+ and Mobile.

* * *

[int](class_int.md#class-int) **rendering/limits/opengl/max\_renderable\_elements** = `65536` [🔗](#class-projectsettings-property-rendering-limits-opengl-max-renderable-elements)

Max number of elements renderable in a frame. If more elements than this are visible per frame, they will not be drawn. Keep in mind elements refer to mesh surfaces and not meshes themselves. Setting this low will slightly reduce memory usage and may decrease shader compile times, particularly on web. For most uses, the default value is suitable, but consider lowering as much as possible on web export.

**Note:** This setting is only effective when using the Compatibility rendering method, not Forward+ and Mobile.

* * *

[int](class_int.md#class-int) **rendering/limits/opengl/max\_renderable\_lights** = `32` [🔗](#class-projectsettings-property-rendering-limits-opengl-max-renderable-lights)

Max number of positional lights renderable in a frame. If more lights than this number are used, they will be ignored. Setting this low will slightly reduce memory usage and may decrease shader compile times, particularly on web. For most uses, the default value is suitable, but consider lowering as much as possible on web export.

**Note:** This setting is only effective when using the Compatibility rendering method, not Forward+ and Mobile.

* * *

[int](class_int.md#class-int) **rendering/limits/spatial\_indexer/threaded\_cull\_minimum\_instances** = `1000` [🔗](#class-projectsettings-property-rendering-limits-spatial-indexer-threaded-cull-minimum-instances)

The minimum number of instances that must be present in a scene to enable culling computations on multiple threads. If a scene has fewer instances than this number, culling is done on a single thread.

* * *

[int](class_int.md#class-int) **rendering/limits/spatial\_indexer/update\_iterations\_per\_frame** = `10` [🔗](#class-projectsettings-property-rendering-limits-spatial-indexer-update-iterations-per-frame)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **rendering/limits/time/time\_rollover\_secs** = `3600` [🔗](#class-projectsettings-property-rendering-limits-time-time-rollover-secs)

Maximum time (in seconds) before the `TIME` shader built-in variable rolls over. The `TIME` variable increments by `delta` each frame, and when it exceeds this value, it rolls over to `0.0`. Since large floating-point values are less precise than small floating-point values, this should be set as low as possible to maximize the precision of the `TIME` built-in variable in shaders. This is especially important on mobile platforms where precision in shaders is significantly reduced. However, if this is set too low, shader animations may appear to restart from the beginning while the project is running.

On desktop platforms, values below `4096` are recommended, ideally below `2048`. On mobile platforms, values below `64` are recommended, ideally below `32`.

* * *

[float](class_float.md#class-float) **rendering/mesh\_lod/lod\_change/threshold\_pixels** = `1.0` [🔗](#class-projectsettings-property-rendering-mesh-lod-lod-change-threshold-pixels)

The automatic LOD bias to use for meshes rendered within the [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe). Higher values will use less detailed versions of meshes that have LOD variations generated. If set to `0.0`, automatic LOD is disabled. Increase [rendering/mesh\_lod/lod\_change/threshold\_pixels](#class-projectsettings-property-rendering-mesh-lod-lod-change-threshold-pixels) to improve performance at the cost of geometry detail.

**Note:** [rendering/mesh\_lod/lod\_change/threshold\_pixels](#class-projectsettings-property-rendering-mesh-lod-lod-change-threshold-pixels) does not affect [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) visibility ranges (also known as "manual" LOD or hierarchical LOD).

**Note:** This property is only read when the project starts. To adjust the automatic LOD threshold at runtime, set [Viewport.mesh\_lod\_threshold](class_viewport.md#class-viewport-property-mesh-lod-threshold) on the root [Viewport](class_viewport.md#class-viewport).

* * *

[int](class_int.md#class-int) **rendering/occlusion\_culling/bvh\_build\_quality** = `2` [🔗](#class-projectsettings-property-rendering-occlusion-culling-bvh-build-quality)

The [Bounding Volume Hierarchy](https://en.wikipedia.org/wiki/Bounding_volume_hierarchy) quality to use when rendering the occlusion culling buffer. Higher values will result in more accurate occlusion culling, at the cost of higher CPU usage. See also [rendering/occlusion\_culling/occlusion\_rays\_per\_thread](#class-projectsettings-property-rendering-occlusion-culling-occlusion-rays-per-thread).

**Note:** This property is only read when the project starts. To adjust the BVH build quality at runtime, use [RenderingServer.viewport\_set\_occlusion\_culling\_build\_quality()](class_renderingserver.md#class-renderingserver-method-viewport-set-occlusion-culling-build-quality).

* * *

[bool](class_bool.md#class-bool) **rendering/occlusion\_culling/jitter\_projection** = `true` [🔗](#class-projectsettings-property-rendering-occlusion-culling-jitter-projection)

If `true`, the projection used for rendering the occlusion buffer will be jittered. This can help prevent objects being incorrectly culled when visible through small gaps.

* * *

[int](class_int.md#class-int) **rendering/occlusion\_culling/occlusion\_rays\_per\_thread** = `512` [🔗](#class-projectsettings-property-rendering-occlusion-culling-occlusion-rays-per-thread)

The number of occlusion rays traced per CPU thread. Higher values will result in more accurate occlusion culling, at the cost of higher CPU usage. The occlusion culling buffer's pixel count is roughly equal to `occlusion_rays_per_thread * number_of_logical_cpu_cores`, so it will depend on the system's CPU. Therefore, CPUs with fewer cores will use a lower resolution to attempt keeping performance costs even across devices. See also [rendering/occlusion\_culling/bvh\_build\_quality](#class-projectsettings-property-rendering-occlusion-culling-bvh-build-quality).

**Note:** This property is only read when the project starts. To adjust the number of occlusion rays traced per thread at runtime, use [RenderingServer.viewport\_set\_occlusion\_rays\_per\_thread()](class_renderingserver.md#class-renderingserver-method-viewport-set-occlusion-rays-per-thread).

* * *

[bool](class_bool.md#class-bool) **rendering/occlusion\_culling/use\_occlusion\_culling** = `false` [🔗](#class-projectsettings-property-rendering-occlusion-culling-use-occlusion-culling)

If `true`, [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d) nodes will be usable for occlusion culling in 3D in the root viewport. In custom viewports, [Viewport.use\_occlusion\_culling](class_viewport.md#class-viewport-property-use-occlusion-culling) must be set to `true` instead.

**Note:** Enabling occlusion culling has a cost on the CPU. Only enable occlusion culling if you actually plan to use it. Large open scenes with few or no objects blocking the view will generally not benefit much from occlusion culling. Large open scenes generally benefit more from mesh LOD and visibility ranges ( [GeometryInstance3D.visibility\_range\_begin](class_geometryinstance3d.md#class-geometryinstance3d-property-visibility-range-begin) and [GeometryInstance3D.visibility\_range\_end](class_geometryinstance3d.md#class-geometryinstance3d-property-visibility-range-end)) compared to occlusion culling.

**Note:** Due to memory constraints, occlusion culling is not supported by default in Web export templates. It can be enabled by compiling custom Web export templates with `module_raycast_enabled=yes`.

* * *

[int](class_int.md#class-int) **rendering/reflections/reflection\_atlas/reflection\_count** = `64` [🔗](#class-projectsettings-property-rendering-reflections-reflection-atlas-reflection-count)

Number of cubemaps to store in the reflection atlas. The number of [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe) s in a scene will be limited by this amount. A higher number requires more VRAM.

* * *

[int](class_int.md#class-int) **rendering/reflections/reflection\_atlas/reflection\_size** = `256` [🔗](#class-projectsettings-property-rendering-reflections-reflection-atlas-reflection-size)

Size of cubemap faces for [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe) s. A higher number requires more VRAM and may make reflection probe updating slower.

* * *

[int](class_int.md#class-int) **rendering/reflections/reflection\_atlas/reflection\_size.mobile** = `128` [🔗](#class-projectsettings-property-rendering-reflections-reflection-atlas-reflection-size-mobile)

Lower-end override for [rendering/reflections/reflection\_atlas/reflection\_size](#class-projectsettings-property-rendering-reflections-reflection-atlas-reflection-size) on mobile devices, due to performance concerns or driver support.

* * *

[bool](class_bool.md#class-bool) **rendering/reflections/sky\_reflections/fast\_filter\_high\_quality** = `false` [🔗](#class-projectsettings-property-rendering-reflections-sky-reflections-fast-filter-high-quality)

Use a higher quality variant of the fast filtering algorithm. Significantly slower than using default quality, but results in smoother reflections. Should only be used when the scene is especially detailed.

* * *

[int](class_int.md#class-int) **rendering/reflections/sky\_reflections/ggx\_samples** = `32` [🔗](#class-projectsettings-property-rendering-reflections-sky-reflections-ggx-samples)

Sets the number of samples to take when using importance sampling for [Sky](class_sky.md#class-sky) s and [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe) s. A higher value will result in smoother, higher quality reflections, but increases time to calculate radiance maps. In general, fewer samples are needed for simpler, low dynamic range environments while more samples are needed for HDR environments and environments with a high level of detail.

* * *

[int](class_int.md#class-int) **rendering/reflections/sky\_reflections/ggx\_samples.mobile** = `16` [🔗](#class-projectsettings-property-rendering-reflections-sky-reflections-ggx-samples-mobile)

Lower-end override for [rendering/reflections/sky\_reflections/ggx\_samples](#class-projectsettings-property-rendering-reflections-sky-reflections-ggx-samples) on mobile devices, due to performance concerns or driver support.

* * *

[int](class_int.md#class-int) **rendering/reflections/sky\_reflections/roughness\_layers** = `8` [🔗](#class-projectsettings-property-rendering-reflections-sky-reflections-roughness-layers)

Limits the number of layers to use in radiance maps when using importance sampling. A lower number will be slightly faster and take up less VRAM.

* * *

[bool](class_bool.md#class-bool) **rendering/reflections/sky\_reflections/texture\_array\_reflections** = `true` [🔗](#class-projectsettings-property-rendering-reflections-sky-reflections-texture-array-reflections)

If `true`, uses texture arrays instead of mipmaps for reflection probes and panorama backgrounds (sky). This reduces jitter noise and upscaling artifacts on reflections, but is significantly slower to compute and uses [rendering/reflections/sky\_reflections/roughness\_layers](#class-projectsettings-property-rendering-reflections-sky-reflections-roughness-layers) times more memory.

**Note:** Texture array reflections are always disabled on macOS on Intel GPUs due to driver bugs.

* * *

[bool](class_bool.md#class-bool) **rendering/reflections/sky\_reflections/texture\_array\_reflections.mobile** = `false` [🔗](#class-projectsettings-property-rendering-reflections-sky-reflections-texture-array-reflections-mobile)

Lower-end override for [rendering/reflections/sky\_reflections/texture\_array\_reflections](#class-projectsettings-property-rendering-reflections-sky-reflections-texture-array-reflections) on mobile devices, due to performance concerns or driver support.

* * *

[bool](class_bool.md#class-bool) **rendering/reflections/specular\_occlusion/enabled** = `true` [🔗](#class-projectsettings-property-rendering-reflections-specular-occlusion-enabled)

If `true`, reduces reflections based on ambient light.

* * *

[String](class_string.md#class-string) **rendering/renderer/rendering\_method** = `"forward_plus"` [🔗](#class-projectsettings-property-rendering-renderer-rendering-method)

Sets the renderer that will be used by the project. Options are:

**forward\_plus** (Forward+): High-end renderer designed for desktop devices. Has a higher base overhead, but scales well with complex scenes. Not suitable for older devices or mobile.

**mobile** (Mobile): Modern renderer designed for mobile devices. Has a lower base overhead than Forward+, but does not scale as well to large scenes with many elements.

**gl\_compatibility** (Compatibility): Low-end renderer designed for older devices. Based on the limitations of the OpenGL 3.3 / OpenGL ES 3.0 / WebGL 2 APIs.

This can be overridden using the `--rendering-method <method>` command line argument.

**Note:** The actual rendering method may be automatically changed by the engine as a result of a fallback, or a user-specified command line argument. To get the actual rendering method that is used at runtime, use [RenderingServer.get\_current\_rendering\_method()](class_renderingserver.md#class-renderingserver-method-get-current-rendering-method) instead of reading this project setting's value.

* * *

[String](class_string.md#class-string) **rendering/renderer/rendering\_method.mobile** = `"mobile"` [🔗](#class-projectsettings-property-rendering-renderer-rendering-method-mobile)

Override for [rendering/renderer/rendering\_method](#class-projectsettings-property-rendering-renderer-rendering-method) on mobile devices.

* * *

[String](class_string.md#class-string) **rendering/renderer/rendering\_method.web** = `"gl_compatibility"` [🔗](#class-projectsettings-property-rendering-renderer-rendering-method-web)

Override for [rendering/renderer/rendering\_method](#class-projectsettings-property-rendering-renderer-rendering-method) on web.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/d3d12/agility\_sdk\_version** = `613` [🔗](#class-projectsettings-property-rendering-rendering-device-d3d12-agility-sdk-version)

Version code of the [Direct3D 12 Agility SDK](https://devblogs.microsoft.com/directx/directx12agility/) to use ( `D3D12SDKVersion`). This must match the _minor_ version that is installed next to the editor binary and in the export templates directory for the current editor version. For example, if you have `1.613.3` installed, you need to input `613` here.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/d3d12/max\_misc\_descriptors\_per\_frame** = `512` [🔗](#class-projectsettings-property-rendering-rendering-device-d3d12-max-misc-descriptors-per-frame)

The number of entries in the miscellaneous descriptors heap the Direct3D 12 rendering driver uses each frame, used for various operations like clearing a texture.

Depending on the complexity of scenes, this value may be lowered or may need to be raised.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/d3d12/max\_resource\_descriptors\_per\_frame** = `16384` [🔗](#class-projectsettings-property-rendering-rendering-device-d3d12-max-resource-descriptors-per-frame)

The number of entries in the resource descriptors heap the Direct3D 12 rendering driver uses each frame, used for most rendering operations.

Depending on the complexity of scenes, this value may be lowered or may need to be raised.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/d3d12/max\_sampler\_descriptors\_per\_frame** = `1024` [🔗](#class-projectsettings-property-rendering-rendering-device-d3d12-max-sampler-descriptors-per-frame)

The number of entries in the sampler descriptors heap the Direct3D 12 rendering driver uses each frame, used for most rendering operations.

Depending on the complexity of scenes, this value may be lowered or may need to be raised.

* * *

[String](class_string.md#class-string) **rendering/rendering\_device/driver** = `"vulkan"` [🔗](#class-projectsettings-property-rendering-rendering-device-driver)

Sets the driver to be used by the renderer when using a RenderingDevice-based renderer like the Forward+ or Mobile renderers. Editing this property has no effect in the default configuration, as first-party platforms each have platform-specific overrides. Use those overrides to configure the driver for each platform.

This can be overridden using the `--rendering-driver <driver>` command line argument.

Supported values are:

- `metal`, Metal (supported on Apple Silicon Macs and iOS).

- `vulkan`, Vulkan (supported on all desktop and mobile platforms).

- `d3d12`, Direct3D 12 (supported on Windows).


**Note:** The availability of these options depends on whether the engine was compiled with support for them (determined by SCons options `vulkan`, `metal`, and `d3d12`).

**Note:** If a given platform has no registered drivers, it can fall back to the Compatibility renderer (OpenGL 3) if [rendering/rendering\_device/fallback\_to\_opengl3](#class-projectsettings-property-rendering-rendering-device-fallback-to-opengl3) is enabled. This fallback happens automatically for the Web platform regardless of that property.

**Note:** The actual rendering driver may be automatically changed by the engine as a result of a fallback, or a user-specified command line argument. To get the actual rendering driver that is used at runtime, use [RenderingServer.get\_current\_rendering\_driver\_name()](class_renderingserver.md#class-renderingserver-method-get-current-rendering-driver-name) instead of reading this project setting's value.

* * *

[String](class_string.md#class-string) **rendering/rendering\_device/driver.android** = `"vulkan"` [🔗](#class-projectsettings-property-rendering-rendering-device-driver-android)

Android override for [rendering/rendering\_device/driver](#class-projectsettings-property-rendering-rendering-device-driver).

Only one option is supported:

- `vulkan`, Vulkan from native drivers.


**Note:** If Vulkan was disabled at compile time, there is no alternative RenderingDevice driver.

* * *

[String](class_string.md#class-string) **rendering/rendering\_device/driver.ios** = `"metal"` [🔗](#class-projectsettings-property-rendering-rendering-device-driver-ios)

iOS override for [rendering/rendering\_device/driver](#class-projectsettings-property-rendering-rendering-device-driver).

Two options are supported:

- `metal` (default), Metal from native drivers.

- `vulkan`, Vulkan over Metal via MoltenVK.


* * *

[String](class_string.md#class-string) **rendering/rendering\_device/driver.linuxbsd** = `"vulkan"` [🔗](#class-projectsettings-property-rendering-rendering-device-driver-linuxbsd)

LinuxBSD override for [rendering/rendering\_device/driver](#class-projectsettings-property-rendering-rendering-device-driver).

Only one option is supported:

- `vulkan`, Vulkan from native drivers.


**Note:** If Vulkan was disabled at compile time, there is no alternative RenderingDevice driver.

* * *

[String](class_string.md#class-string) **rendering/rendering\_device/driver.macos** = `"metal"` [🔗](#class-projectsettings-property-rendering-rendering-device-driver-macos)

macOS override for [rendering/rendering\_device/driver](#class-projectsettings-property-rendering-rendering-device-driver).

Two options are supported:

- `metal` (default), Metal from native drivers, only supported on Apple Silicon Macs. On Intel Macs, it will automatically fall back to `vulkan` as Metal support is not implemented.

- `vulkan`, Vulkan over Metal via MoltenVK, supported on both Apple Silicon and Intel Macs.


* * *

[String](class_string.md#class-string) **rendering/rendering\_device/driver.visionos** = `"metal"` [🔗](#class-projectsettings-property-rendering-rendering-device-driver-visionos)

visionOS override for [rendering/rendering\_device/driver](#class-projectsettings-property-rendering-rendering-device-driver).

Only one option is supported:

- `metal` (default), Metal from native drivers.


* * *

[String](class_string.md#class-string) **rendering/rendering\_device/driver.windows** = `"vulkan"` [🔗](#class-projectsettings-property-rendering-rendering-device-driver-windows)

Windows override for [rendering/rendering\_device/driver](#class-projectsettings-property-rendering-rendering-device-driver).

Two options are supported:

- `vulkan` (default), Vulkan from native drivers. If [rendering/rendering\_device/fallback\_to\_vulkan](#class-projectsettings-property-rendering-rendering-device-fallback-to-vulkan) is enabled, this is used as a fallback if Direct3D 12 is not supported.

- `d3d12`, Direct3D 12 from native drivers. If [rendering/rendering\_device/fallback\_to\_d3d12](#class-projectsettings-property-rendering-rendering-device-fallback-to-d3d12) is enabled, this is used as a fallback if Vulkan is not supported.


* * *

[bool](class_bool.md#class-bool) **rendering/rendering\_device/fallback\_to\_d3d12** = `true` [🔗](#class-projectsettings-property-rendering-rendering-device-fallback-to-d3d12)

If `true`, the forward renderer will fall back to Direct3D 12 if Vulkan is not supported. The fallback is always attempted regardless of this setting if Vulkan driver support was disabled at compile time.

**Note:** This setting is implemented only on Windows.

* * *

[bool](class_bool.md#class-bool) **rendering/rendering\_device/fallback\_to\_opengl3** = `true` [🔗](#class-projectsettings-property-rendering-rendering-device-fallback-to-opengl3)

If `true`, the forward renderer will fall back to OpenGL 3 if Direct3D 12, Metal, and Vulkan are not supported.

**Note:** This setting is implemented on Windows, Android, macOS, iOS, and Linux/X11.

* * *

[bool](class_bool.md#class-bool) **rendering/rendering\_device/fallback\_to\_vulkan** = `true` [🔗](#class-projectsettings-property-rendering-rendering-device-fallback-to-vulkan)

If `true`, the forward renderer will fall back to Vulkan if Direct3D 12 (on Windows) or Metal (on macOS x86\_64) are not supported. The fallback is always attempted regardless of this setting if Direct3D 12 (Windows) or Metal (macOS) driver support was disabled at compile time.

**Note:** This setting is implemented on Windows and macOS.

* * *

[bool](class_bool.md#class-bool) **rendering/rendering\_device/pipeline\_cache/enable** = `true` [🔗](#class-projectsettings-property-rendering-rendering-device-pipeline-cache-enable)

Enable the pipeline cache that is saved to disk if the graphics API supports it.

**Note:** This property is unable to control the pipeline caching the GPU driver itself does. Only turn this off along with deleting the contents of the driver's cache if you wish to simulate the experience a user will get when starting the game for the first time.

* * *

[float](class_float.md#class-float) **rendering/rendering\_device/pipeline\_cache/save\_chunk\_size\_mb** = `3.0` [🔗](#class-projectsettings-property-rendering-rendering-device-pipeline-cache-save-chunk-size-mb)

Determines at which interval pipeline cache is saved to disk. The lower the value, the more often it is saved.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/staging\_buffer/block\_size\_kb** = `256` [🔗](#class-projectsettings-property-rendering-rendering-device-staging-buffer-block-size-kb)

The size of a block allocated in the staging buffers. Staging buffers are the intermediate resources the engine uses to upload or download data to the GPU. This setting determines the max amount of data that can be transferred in a copy operation. Increasing this will result in faster data transfers at the cost of extra memory.

**Note:** This property is only read when the project starts. There is currently no way to change this value at run-time.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/staging\_buffer/max\_size\_mb** = `128` [🔗](#class-projectsettings-property-rendering-rendering-device-staging-buffer-max-size-mb)

The maximum amount of memory allowed to be used by staging buffers. If the amount of data being uploaded or downloaded exceeds this amount, the GPU will stall and wait for previous frames to finish.

**Note:** This property is only read when the project starts. There is currently no way to change this value at run-time.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/staging\_buffer/texture\_download\_region\_size\_px** = `64` [🔗](#class-projectsettings-property-rendering-rendering-device-staging-buffer-texture-download-region-size-px)

The region size in pixels used to download texture data from the GPU when using methods like [RenderingDevice.texture\_get\_data\_async()](class_renderingdevice.md#class-renderingdevice-method-texture-get-data-async).

**Note:** This property's upper limit is controlled by [rendering/rendering\_device/staging\_buffer/block\_size\_kb](#class-projectsettings-property-rendering-rendering-device-staging-buffer-block-size-kb) and whether it's possible to allocate a single block of texture data with this region size in the format that is requested.

**Note:** This property is only read when the project starts. There is currently no way to change this value at run-time.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/staging\_buffer/texture\_upload\_region\_size\_px** = `64` [🔗](#class-projectsettings-property-rendering-rendering-device-staging-buffer-texture-upload-region-size-px)

The region size in pixels used to upload texture data from the GPU when using methods like [RenderingDevice.texture\_update()](class_renderingdevice.md#class-renderingdevice-method-texture-update).

**Note:** This property's upper limit is controlled by [rendering/rendering\_device/staging\_buffer/block\_size\_kb](#class-projectsettings-property-rendering-rendering-device-staging-buffer-block-size-kb) and whether it's possible to allocate a single block of texture data with this region size in the format that is requested.

**Note:** This property is only read when the project starts. There is currently no way to change this value at run-time.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/vsync/frame\_queue\_size** = `2` [🔗](#class-projectsettings-property-rendering-rendering-device-vsync-frame-queue-size)

The number of frames to track on the CPU side before stalling to wait for the GPU.

Try the [V-Sync Simulator](https://darksylinc.github.io/vsync_simulator/), an interactive interface that simulates presentation to better understand how it is affected by different variables under various conditions.

**Note:** This property is only read when the project starts. There is currently no way to change this value at run-time.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/vsync/swapchain\_image\_count** = `3` [🔗](#class-projectsettings-property-rendering-rendering-device-vsync-swapchain-image-count)

The number of images the swapchain will consist of (back buffers + front buffer).

`2` corresponds to double-buffering and `3` to triple-buffering.

Double-buffering may give you the lowest lag/latency but if V-Sync is on and the system can't render at 60 fps, the framerate will go down in multiples of it (e.g. 30 fps, 15, 7.5, etc.). Triple buffering gives you higher framerate (specially if the system can't reach a constant 60 fps) at the cost of up to 1 frame of latency, with [DisplayServer.VSYNC\_ENABLED](class_displayserver.md#class-displayserver-constant-vsync-enabled) (FIFO).

Use double-buffering with [DisplayServer.VSYNC\_ENABLED](class_displayserver.md#class-displayserver-constant-vsync-enabled). Triple-buffering is a must if you plan on using [DisplayServer.VSYNC\_MAILBOX](class_displayserver.md#class-displayserver-constant-vsync-mailbox) mode.

Try the [V-Sync Simulator](https://darksylinc.github.io/vsync_simulator/), an interactive interface that simulates presentation to better understand how it is affected by different variables under various conditions.

**Note:** This property is only read when the project starts. There is currently no way to change this value at run-time.

**Note:** Some platforms may restrict the actual value.

* * *

[int](class_int.md#class-int) **rendering/rendering\_device/vulkan/max\_descriptors\_per\_pool** = `64` [🔗](#class-projectsettings-property-rendering-rendering-device-vulkan-max-descriptors-per-pool)

The number of descriptors per pool. Godot's Vulkan backend uses linear pools for descriptors that will be created and destroyed within a single frame. Instead of destroying every single descriptor every frame, they all can be destroyed at once by resetting the pool they belong to.

A larger number is more efficient up to a limit, after that it will only waste RAM (maximum efficiency is achieved when there is no more than 1 pool per frame). A small number could end up with one pool per descriptor, which negatively impacts performance.

**Note:** Changing this property requires a restart to take effect.

* * *

[float](class_float.md#class-float) **rendering/scaling\_3d/fsr\_sharpness** = `0.2` [🔗](#class-projectsettings-property-rendering-scaling-3d-fsr-sharpness)

Determines how sharp the upscaled image will be when using the FSR upscaling mode. Sharpness halves with every whole number. Values go from 0.0 (sharpest) to 2.0. Values above 2.0 won't make a visible difference.

* * *

[int](class_int.md#class-int) **rendering/scaling\_3d/mode** = `0` [🔗](#class-projectsettings-property-rendering-scaling-3d-mode)

Sets the scaling 3D mode. Bilinear scaling renders at different resolution to either undersample or supersample the viewport. FidelityFX Super Resolution 1.0, abbreviated to FSR, is an upscaling technology that produces high quality images at fast framerates by using a spatially-aware upscaling algorithm. FSR is slightly more expensive than bilinear, but it produces significantly higher image quality. On particularly low-end GPUs, the added cost of FSR may not be worth it (compared to using bilinear scaling with a slightly higher resolution scale to match performance).

**Note:** FSR is only effective when using the Forward+ rendering method, not Mobile or Compatibility. If using an incompatible rendering method, FSR will fall back to bilinear scaling.

* * *

[int](class_int.md#class-int) **rendering/scaling\_3d/mode.ios** [🔗](#class-projectsettings-property-rendering-scaling-3d-mode-ios)

iOS override for [rendering/scaling\_3d/mode](#class-projectsettings-property-rendering-scaling-3d-mode). This allows selecting the MetalFX spatial and MetalFX temporal scaling modes, which are exclusive to platforms where the Metal rendering driver is used.

* * *

[int](class_int.md#class-int) **rendering/scaling\_3d/mode.macos** [🔗](#class-projectsettings-property-rendering-scaling-3d-mode-macos)

macOS override for [rendering/scaling\_3d/mode](#class-projectsettings-property-rendering-scaling-3d-mode). This allows selecting the MetalFX spatial and MetalFX temporal scaling modes, which are exclusive to platforms where the Metal rendering driver is used.

* * *

[float](class_float.md#class-float) **rendering/scaling\_3d/scale** = `1.0` [🔗](#class-projectsettings-property-rendering-scaling-3d-scale)

Scales the 3D render buffer based on the viewport size uses an image filter specified in [rendering/scaling\_3d/mode](#class-projectsettings-property-rendering-scaling-3d-mode) to scale the output image to the full viewport size. Values lower than `1.0` can be used to speed up 3D rendering at the cost of quality (undersampling). Values greater than `1.0` are only valid for bilinear mode and can be used to improve 3D rendering quality at a high performance cost (supersampling). See also [rendering/anti\_aliasing/quality/msaa\_3d](#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-3d) for multi-sample antialiasing, which is significantly cheaper but only smooths the edges of polygons.

* * *

[bool](class_bool.md#class-bool) **rendering/shader\_compiler/shader\_cache/compress** = `true` [🔗](#class-projectsettings-property-rendering-shader-compiler-shader-cache-compress)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **rendering/shader\_compiler/shader\_cache/enabled** = `true` [🔗](#class-projectsettings-property-rendering-shader-compiler-shader-cache-enabled)

Enable the shader cache, which stores compiled shaders to disk to prevent stuttering from shader compilation the next time the shader is needed.

* * *

[bool](class_bool.md#class-bool) **rendering/shader\_compiler/shader\_cache/strip\_debug** = `false` [🔗](#class-projectsettings-property-rendering-shader-compiler-shader-cache-strip-debug)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **rendering/shader\_compiler/shader\_cache/strip\_debug.release** = `true` [🔗](#class-projectsettings-property-rendering-shader-compiler-shader-cache-strip-debug-release)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **rendering/shader\_compiler/shader\_cache/use\_zstd\_compression** = `true` [🔗](#class-projectsettings-property-rendering-shader-compiler-shader-cache-use-zstd-compression)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **rendering/shading/overrides/force\_lambert\_over\_burley** = `false` [🔗](#class-projectsettings-property-rendering-shading-overrides-force-lambert-over-burley)

If `true`, uses faster but lower-quality Lambert material lighting model instead of Burley.

* * *

[bool](class_bool.md#class-bool) **rendering/shading/overrides/force\_lambert\_over\_burley.mobile** = `true` [🔗](#class-projectsettings-property-rendering-shading-overrides-force-lambert-over-burley-mobile)

Lower-end override for [rendering/shading/overrides/force\_lambert\_over\_burley](#class-projectsettings-property-rendering-shading-overrides-force-lambert-over-burley) on mobile devices, due to performance concerns or driver support.

* * *

[bool](class_bool.md#class-bool) **rendering/shading/overrides/force\_vertex\_shading** = `false` [🔗](#class-projectsettings-property-rendering-shading-overrides-force-vertex-shading)

If `true`, forces vertex shading for all rendering. This can increase performance a lot, but also reduces quality immensely. Can be used to optimize performance on low-end mobile devices.

* * *

[int](class_int.md#class-int) **rendering/textures/basis\_universal/rdo\_dict\_size** = `1024` [🔗](#class-projectsettings-property-rendering-textures-basis-universal-rdo-dict-size)

The dictionary size for Rate-Distortion Optimization (RDO) when importing textures as Basis Universal and when RDO is enabled, ranging from `64` to `65536`. Higher values reduce the file sizes further, but make encoding times significantly longer.

* * *

[bool](class_bool.md#class-bool) **rendering/textures/basis\_universal/zstd\_supercompression** = `true` [🔗](#class-projectsettings-property-rendering-textures-basis-universal-zstd-supercompression)

If `true`, enables Zstandard supercompression to reduce file size when importing textures as Basis Universal.

**Note:** Basis Universal textures need to be compressed to gain the benefit of smaller file sizes, otherwise they are as large as VRAM-compressed textures.

* * *

[int](class_int.md#class-int) **rendering/textures/basis\_universal/zstd\_supercompression\_level** = `6` [🔗](#class-projectsettings-property-rendering-textures-basis-universal-zstd-supercompression-level)

Specify the compression level for Basis Universal Zstandard supercompression, ranging from `1` to `22`.

* * *

[int](class_int.md#class-int) **rendering/textures/canvas\_textures/default\_texture\_filter** = `1` [🔗](#class-projectsettings-property-rendering-textures-canvas-textures-default-texture-filter)

The default texture filtering mode to use for [CanvasItem](class_canvasitem.md#class-canvasitem) s built-in texture. In shaders, this texture is accessed as `TEXTURE`.

**Note:** For pixel art aesthetics, see also [rendering/2d/snap/snap\_2d\_vertices\_to\_pixel](#class-projectsettings-property-rendering-2d-snap-snap-2d-vertices-to-pixel) and [rendering/2d/snap/snap\_2d\_transforms\_to\_pixel](#class-projectsettings-property-rendering-2d-snap-snap-2d-transforms-to-pixel).

* * *

[int](class_int.md#class-int) **rendering/textures/canvas\_textures/default\_texture\_repeat** = `0` [🔗](#class-projectsettings-property-rendering-textures-canvas-textures-default-texture-repeat)

The default texture repeating mode to use for [CanvasItem](class_canvasitem.md#class-canvasitem) s built-in texture. In shaders, this texture is accessed as `TEXTURE`.

* * *

[int](class_int.md#class-int) **rendering/textures/decals/filter** = `3` [🔗](#class-projectsettings-property-rendering-textures-decals-filter)

The filtering quality to use for [Decal](class_decal.md#class-decal) nodes. When using one of the anisotropic filtering modes, the anisotropic filtering level is controlled by [rendering/textures/default\_filters/anisotropic\_filtering\_level](#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

* * *

[int](class_int.md#class-int) **rendering/textures/default\_filters/anisotropic\_filtering\_level** = `2` [🔗](#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level)

Sets the maximum number of samples to take when using anisotropic filtering on textures (as a power of two). A higher sample count will result in sharper textures at oblique angles, but is more expensive to compute. A value of `0` forcibly disables anisotropic filtering, even on materials where it is enabled.

The anisotropic filtering level also affects decals and light projectors if they are configured to use anisotropic filtering. See [rendering/textures/decals/filter](#class-projectsettings-property-rendering-textures-decals-filter) and [rendering/textures/light\_projectors/filter](#class-projectsettings-property-rendering-textures-light-projectors-filter).

**Note:** In 3D, for this setting to have an effect, set [BaseMaterial3D.texture\_filter](class_basematerial3d.md#class-basematerial3d-property-texture-filter) to [BaseMaterial3D.TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS\_ANISOTROPIC](class_basematerial3d.md#class-basematerial3d-constant-texture-filter-linear-with-mipmaps-anisotropic) or [BaseMaterial3D.TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS\_ANISOTROPIC](class_basematerial3d.md#class-basematerial3d-constant-texture-filter-nearest-with-mipmaps-anisotropic) on materials.

**Note:** In 2D, for this setting to have an effect, set [CanvasItem.texture\_filter](class_canvasitem.md#class-canvasitem-property-texture-filter) to [CanvasItem.TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS\_ANISOTROPIC](class_canvasitem.md#class-canvasitem-constant-texture-filter-linear-with-mipmaps-anisotropic) or [CanvasItem.TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS\_ANISOTROPIC](class_canvasitem.md#class-canvasitem-constant-texture-filter-nearest-with-mipmaps-anisotropic) on the [CanvasItem](class_canvasitem.md#class-canvasitem) node displaying the texture (or in [CanvasTexture](class_canvastexture.md#class-canvastexture)). However, anisotropic filtering is rarely useful in 2D, so only enable it for textures in 2D if it makes a meaningful visual difference.

**Note:** This property is only read when the project starts. To change the anisotropic filtering level at runtime, set [Viewport.anisotropic\_filtering\_level](class_viewport.md#class-viewport-property-anisotropic-filtering-level) on the root [Viewport](class_viewport.md#class-viewport) instead.

* * *

[float](class_float.md#class-float) **rendering/textures/default\_filters/texture\_mipmap\_bias** = `0.0` [🔗](#class-projectsettings-property-rendering-textures-default-filters-texture-mipmap-bias)

Affects the final texture sharpness by reading from a lower or higher mipmap (also called "texture LOD bias"). Negative values make mipmapped textures sharper but grainier when viewed at a distance, while positive values make mipmapped textures blurrier (even when up close).

Enabling temporal antialiasing ( [rendering/anti\_aliasing/quality/use\_taa](#class-projectsettings-property-rendering-anti-aliasing-quality-use-taa)) will automatically apply a `-0.5` offset to this value, while enabling FXAA ( [rendering/anti\_aliasing/quality/screen\_space\_aa](#class-projectsettings-property-rendering-anti-aliasing-quality-screen-space-aa)) will automatically apply a `-0.25` offset to this value. If both TAA and FXAA are enabled at the same time, an offset of `-0.75` is applied to this value.

**Note:** If [rendering/scaling\_3d/scale](#class-projectsettings-property-rendering-scaling-3d-scale) is lower than `1.0` (exclusive), [rendering/textures/default\_filters/texture\_mipmap\_bias](#class-projectsettings-property-rendering-textures-default-filters-texture-mipmap-bias) is used to adjust the automatic mipmap bias which is calculated internally based on the scale factor. The formula for this is `log2(scaling_3d_scale) + mipmap_bias`.

* * *

[bool](class_bool.md#class-bool) **rendering/textures/default\_filters/use\_nearest\_mipmap\_filter** = `false` [🔗](#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter)

If `true`, uses nearest-neighbor mipmap filtering when using mipmaps (also called "bilinear filtering"), which will result in visible seams appearing between mipmap stages. This may increase performance in mobile as less memory bandwidth is used. If `false`, linear mipmap filtering (also called "trilinear filtering") is used.

**Note:** This property is only read when the project starts. There is currently no way to change this setting at run-time.

* * *

[int](class_int.md#class-int) **rendering/textures/light\_projectors/filter** = `3` [🔗](#class-projectsettings-property-rendering-textures-light-projectors-filter)

The filtering quality to use for [OmniLight3D](class_omnilight3d.md#class-omnilight3d) and [SpotLight3D](class_spotlight3d.md#class-spotlight3d) projectors. When using one of the anisotropic filtering modes, the anisotropic filtering level is controlled by [rendering/textures/default\_filters/anisotropic\_filtering\_level](#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

* * *

[bool](class_bool.md#class-bool) **rendering/textures/lossless\_compression/force\_png** = `false` [🔗](#class-projectsettings-property-rendering-textures-lossless-compression-force-png)

If `true`, the texture importer will import lossless textures using the PNG format. Otherwise, it will default to using WebP.

* * *

[bool](class_bool.md#class-bool) **rendering/textures/vram\_compression/cache\_gpu\_compressor** = `true` [🔗](#class-projectsettings-property-rendering-textures-vram-compression-cache-gpu-compressor)

If `true`, the GPU texture compressor will cache the local RenderingDevice and its resources (shaders and pipelines), allowing for faster subsequent imports at a memory cost.

* * *

[bool](class_bool.md#class-bool) **rendering/textures/vram\_compression/compress\_with\_gpu** = `true` [🔗](#class-projectsettings-property-rendering-textures-vram-compression-compress-with-gpu)

If `true`, the texture importer will utilize the GPU for compressing textures, improving the import time of large images.

**Note:** This only functions on a device which supports either Vulkan, Direct3D 12, or Metal as a rendering driver.

**Note:** Currently this only affects certain compressed formats (BC1, BC3, BC4, BC5, and BC6), all of which are exclusive to desktop platforms and consoles.

* * *

[bool](class_bool.md#class-bool) **rendering/textures/vram\_compression/import\_etc2\_astc** = `false` [🔗](#class-projectsettings-property-rendering-textures-vram-compression-import-etc2-astc)

If `true`, the texture importer will import VRAM-compressed textures using the Ericsson Texture Compression 2 algorithm for lower quality textures and normal maps and Adaptable Scalable Texture Compression algorithm for high quality textures (in 4×4 block size).

**Note:** This setting is an override. The texture importer will always import the format the host platform needs, even if this is set to `false`.

**Note:** Changing this setting does _not_ impact textures that were already imported before. To make this setting apply to textures that were already imported, exit the editor, remove the `.godot/imported/` folder located inside the project folder then restart the editor (see [application/config/use\_hidden\_project\_data\_directory](#class-projectsettings-property-application-config-use-hidden-project-data-directory)).

* * *

[bool](class_bool.md#class-bool) **rendering/textures/vram\_compression/import\_s3tc\_bptc** = `false` [🔗](#class-projectsettings-property-rendering-textures-vram-compression-import-s3tc-bptc)

If `true`, the texture importer will import VRAM-compressed textures using the S3 Texture Compression algorithm (DXT1-5) for lower quality textures and the BPTC algorithm (BC6H and BC7) for high quality textures. This algorithm is only supported on PC desktop platforms and consoles.

**Note:** This setting is an override. The texture importer will always import the format the host platform needs, even if this is set to `false`.

**Note:** Changing this setting does _not_ impact textures that were already imported before. To make this setting apply to textures that were already imported, exit the editor, remove the `.godot/imported/` folder located inside the project folder then restart the editor (see [application/config/use\_hidden\_project\_data\_directory](#class-projectsettings-property-application-config-use-hidden-project-data-directory)).

* * *

[int](class_int.md#class-int) **rendering/textures/webp\_compression/compression\_method** = `2` [🔗](#class-projectsettings-property-rendering-textures-webp-compression-compression-method)

The default compression method for WebP. Affects both lossy and lossless WebP. A higher value results in smaller files at the cost of compression speed. Decompression speed is mostly unaffected by the compression method. Supported values are 0 to 6. Note that compression methods above 4 are very slow and offer very little savings.

* * *

[float](class_float.md#class-float) **rendering/textures/webp\_compression/lossless\_compression\_factor** = `25` [🔗](#class-projectsettings-property-rendering-textures-webp-compression-lossless-compression-factor)

The default compression factor for lossless WebP. Decompression speed is mostly unaffected by the compression factor. Supported values are 0 to 100.

* * *

[bool](class_bool.md#class-bool) **rendering/viewport/hdr\_2d** = `false` [🔗](#class-projectsettings-property-rendering-viewport-hdr-2d)

If `true`, enables [Viewport.use\_hdr\_2d](class_viewport.md#class-viewport-property-use-hdr-2d) on the root viewport. 2D rendering will use a high dynamic range (HDR) format framebuffer matching the bit depth of the 3D framebuffer. When using the Forward+ or Compatibility renderer, this will be an `RGBA16` framebuffer. When using the Mobile renderer, it will be an `RGB10_A2` framebuffer.

Additionally, 2D rendering will take place in linear color space and will be converted to sRGB space immediately before blitting to the screen (if the Viewport is attached to the screen).

Practically speaking, this means that the end result of the Viewport will not be clamped to the `0-1` range and can be used in 3D rendering without color space adjustments. This allows 2D rendering to take advantage of effects requiring high dynamic range (e.g. 2D glow) as well as substantially improves the appearance of effects requiring highly detailed gradients.

**Note:** This property is only read when the project starts. To toggle HDR 2D at runtime, set [Viewport.use\_hdr\_2d](class_viewport.md#class-viewport-property-use-hdr-2d) on the root [Viewport](class_viewport.md#class-viewport).

* * *

[bool](class_bool.md#class-bool) **rendering/viewport/transparent\_background** = `false` [🔗](#class-projectsettings-property-rendering-viewport-transparent-background)

If `true`, enables [Viewport.transparent\_bg](class_viewport.md#class-viewport-property-transparent-bg) on the root viewport. This allows per-pixel transparency to be effective after also enabling [display/window/size/transparent](#class-projectsettings-property-display-window-size-transparent) and [display/window/per\_pixel\_transparency/allowed](#class-projectsettings-property-display-window-per-pixel-transparency-allowed).

* * *

[int](class_int.md#class-int) **rendering/vrs/mode** = `0` [🔗](#class-projectsettings-property-rendering-vrs-mode)

Set the default Variable Rate Shading (VRS) mode for the main viewport. See [Viewport.vrs\_mode](class_viewport.md#class-viewport-property-vrs-mode) to change this at runtime, and [VRSMode](class_viewport.md#enum-viewport-vrsmode) for possible values.

* * *

[String](class_string.md#class-string) **rendering/vrs/texture** = `""` [🔗](#class-projectsettings-property-rendering-vrs-texture)

If [rendering/vrs/mode](#class-projectsettings-property-rendering-vrs-mode) is set to **Texture**, this is the path to default texture loaded as the VRS image.

The texture _must_ use a lossless compression format so that colors can be matched precisely. The following VRS densities are mapped to various colors, with brighter colors representing a lower level of shading precision:

```
- 1×1 = rgb(0, 0, 0)     - #000000
- 1×2 = rgb(0, 85, 0)    - #005500
- 2×1 = rgb(85, 0, 0)    - #550000
- 2×2 = rgb(85, 85, 0)   - #555500
- 2×4 = rgb(85, 170, 0)  - #55aa00
- 4×2 = rgb(170, 85, 0)  - #aa5500
- 4×4 = rgb(170, 170, 0) - #aaaa00
- 4×8 = rgb(170, 255, 0) - #aaff00 - Not supported on most hardware
- 8×4 = rgb(255, 170, 0) - #ffaa00 - Not supported on most hardware
- 8×8 = rgb(255, 255, 0) - #ffff00 - Not supported on most hardware

```

* * *

[float](class_float.md#class-float) **threading/worker\_pool/low\_priority\_thread\_ratio** = `0.3` [🔗](#class-projectsettings-property-threading-worker-pool-low-priority-thread-ratio)

The ratio of [WorkerThreadPool](class_workerthreadpool.md#class-workerthreadpool)'s threads that will be reserved for low-priority tasks. For example, if 10 threads are available and this value is set to `0.3`, 3 of the worker threads will be reserved for low-priority tasks. The actual value won't exceed the number of CPU cores minus one, and if possible, at least one worker thread will be dedicated to low-priority tasks.

* * *

[int](class_int.md#class-int) **threading/worker\_pool/max\_threads** = `-1` [🔗](#class-projectsettings-property-threading-worker-pool-max-threads)

Maximum number of threads to be used by [WorkerThreadPool](class_workerthreadpool.md#class-workerthreadpool). Value of `-1` means `1` on Web, or a number of _logical_ CPU cores available on other platforms (see [OS.get\_processor\_count()](class_os.md#class-os-method-get-processor-count)).

* * *

[bool](class_bool.md#class-bool) **xr/openxr/binding\_modifiers/analog\_threshold** = `false` [🔗](#class-projectsettings-property-xr-openxr-binding-modifiers-analog-threshold)

If `true`, enables the analog threshold binding modifier if supported by the XR runtime.

* * *

[bool](class_bool.md#class-bool) **xr/openxr/binding\_modifiers/dpad\_binding** = `false` [🔗](#class-projectsettings-property-xr-openxr-binding-modifiers-dpad-binding)

If `true`, enables the D-pad binding modifier if supported by the XR runtime.

* * *

[String](class_string.md#class-string) **xr/openxr/default\_action\_map** = `"res://openxr_action_map.tres"` [🔗](#class-projectsettings-property-xr-openxr-default-action-map)

Action map configuration to load by default.

* * *

[bool](class_bool.md#class-bool) **xr/openxr/enabled** = `false` [🔗](#class-projectsettings-property-xr-openxr-enabled)

If `true`, Godot will setup and initialize OpenXR on startup.

* * *

[int](class_int.md#class-int) **xr/openxr/environment\_blend\_mode** = `"0"` [🔗](#class-projectsettings-property-xr-openxr-environment-blend-mode)

Specify how OpenXR should blend in the environment. This is specific to certain AR and passthrough devices where camera images are blended in by the XR compositor.

* * *

[int](class_int.md#class-int) **xr/openxr/extensions/debug\_message\_types** = `"15"` [🔗](#class-projectsettings-property-xr-openxr-extensions-debug-message-types)

Specifies the message types for which we request debug messages. Requires [xr/openxr/extensions/debug\_utils](#class-projectsettings-property-xr-openxr-extensions-debug-utils) to be set and the extension to be supported by the XR runtime.

* * *

[int](class_int.md#class-int) **xr/openxr/extensions/debug\_utils** = `"0"` [🔗](#class-projectsettings-property-xr-openxr-extensions-debug-utils)

Enables debug utilities on XR runtimes that supports the debug utils extension. Sets the maximum severity being reported (0 = disabled, 1 = error, 2 = warning, 3 = info, 4 = verbose).

* * *

[bool](class_bool.md#class-bool) **xr/openxr/extensions/eye\_gaze\_interaction** = `false` [🔗](#class-projectsettings-property-xr-openxr-extensions-eye-gaze-interaction)

Specify whether to enable eye tracking for this project. Depending on the platform, additional export configuration may be needed.

* * *

[bool](class_bool.md#class-bool) **xr/openxr/extensions/hand\_interaction\_profile** = `false` [🔗](#class-projectsettings-property-xr-openxr-extensions-hand-interaction-profile)

If `true` the hand interaction profile extension will be activated if supported by the platform.

* * *

[bool](class_bool.md#class-bool) **xr/openxr/extensions/hand\_tracking** = `false` [🔗](#class-projectsettings-property-xr-openxr-extensions-hand-tracking)

If `true`, the hand tracking extension is enabled if available.

**Note:** By default hand tracking will only work for data sources chosen by the XR runtime. For SteamVR this is the controller inferred data source, for most other runtimes this is the unobstructed data source. There is no way to query this. If a runtime supports the OpenXR data source extension you can use the [xr/openxr/extensions/hand\_tracking\_controller\_data\_source](#class-projectsettings-property-xr-openxr-extensions-hand-tracking-controller-data-source) and/or [xr/openxr/extensions/hand\_tracking\_unobstructed\_data\_source](#class-projectsettings-property-xr-openxr-extensions-hand-tracking-unobstructed-data-source) to indicate you wish to enable these data sources. If neither is selected the data source extension is not enabled and the XR runtimes default behavior persists.

* * *

[bool](class_bool.md#class-bool) **xr/openxr/extensions/hand\_tracking\_controller\_data\_source** = `false` [🔗](#class-projectsettings-property-xr-openxr-extensions-hand-tracking-controller-data-source)

If `true`, support for the controller inferred data source is requested. If supported, you will receive hand tracking data even if the user has a controller in hand, with finger positions automatically inferred from controller input and/or sensors.

**Note:** This requires the OpenXR data source extension and controller inferred handtracking to be supported by the XR runtime. If not supported this setting will be ignored. [xr/openxr/extensions/hand\_tracking](#class-projectsettings-property-xr-openxr-extensions-hand-tracking) must be enabled for this setting to be used.

* * *

[bool](class_bool.md#class-bool) **xr/openxr/extensions/hand\_tracking\_unobstructed\_data\_source** = `false` [🔗](#class-projectsettings-property-xr-openxr-extensions-hand-tracking-unobstructed-data-source)

If `true`, support for the unobstructed data source is requested. If supported, you will receive hand tracking data based on the actual finger positions of the user often determined by optical tracking.

**Note:** This requires the OpenXR data source extension and unobstructed handtracking to be supported by the XR runtime. If not supported this setting will be ignored. [xr/openxr/extensions/hand\_tracking](#class-projectsettings-property-xr-openxr-extensions-hand-tracking) must be enabled for this setting to be used.

* * *

[bool](class_bool.md#class-bool) **xr/openxr/extensions/render\_model** = `false` [🔗](#class-projectsettings-property-xr-openxr-extensions-render-model)

If `true` we enable the render model extension if available.

**Note:** This relates to the core OpenXR render model extension and has no relation to any vendor render model extensions.

* * *

[int](class_int.md#class-int) **xr/openxr/form\_factor** = `"0"` [🔗](#class-projectsettings-property-xr-openxr-form-factor)

Specify whether OpenXR should be configured for an HMD or a hand held device.

* * *

[bool](class_bool.md#class-bool) **xr/openxr/foveation\_dynamic** = `false` [🔗](#class-projectsettings-property-xr-openxr-foveation-dynamic)

If `true` and foveation is supported, will automatically adjust foveation level based on framerate up to the level set on [xr/openxr/foveation\_level](#class-projectsettings-property-xr-openxr-foveation-level).

* * *

[int](class_int.md#class-int) **xr/openxr/foveation\_level** = `"0"` [🔗](#class-projectsettings-property-xr-openxr-foveation-level)

Applied foveation level if supported: 0 = off, 1 = low, 2 = medium, 3 = high.

**Note:** On platforms other than Android, if [rendering/anti\_aliasing/quality/msaa\_3d](#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-3d) is enabled, this feature will be disabled.

* * *

[int](class_int.md#class-int) **xr/openxr/reference\_space** = `"1"` [🔗](#class-projectsettings-property-xr-openxr-reference-space)

Specify the default reference space.

* * *

[bool](class_bool.md#class-bool) **xr/openxr/startup\_alert** = `true` [🔗](#class-projectsettings-property-xr-openxr-startup-alert)

If `true`, Godot will display an alert modal when OpenXR initialization fails on startup.

* * *

[bool](class_bool.md#class-bool) **xr/openxr/submit\_depth\_buffer** = `false` [🔗](#class-projectsettings-property-xr-openxr-submit-depth-buffer)

If `true`, OpenXR will manage the depth buffer and use the depth buffer for advanced reprojection provided this is supported by the XR runtime. Note that some rendering features in Godot can't be used with this feature.

* * *

[int](class_int.md#class-int) **xr/openxr/view\_configuration** = `"1"` [🔗](#class-projectsettings-property-xr-openxr-view-configuration)

Specify the view configuration with which to configure OpenXR setting up either Mono or Stereo rendering.

* * *

[bool](class_bool.md#class-bool) **xr/shaders/enabled** = `false` [🔗](#class-projectsettings-property-xr-shaders-enabled)

If `true`, Godot will compile shaders required for XR.

* * *

## Method Descriptions

void **add\_property\_info**(hint: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-projectsettings-method-add-property-info)

Adds a custom property info to a property. The dictionary must contain:

- `"name"`: [String](class_string.md#class-string) (the property's name)

- `"type"`: [int](class_int.md#class-int) (see [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type))

- optionally `"hint"`: [int](class_int.md#class-int) (see [PropertyHint](class_@globalscope.md#enum-globalscope-propertyhint)) and `"hint_string"`: [String](class_string.md#class-string)


GDScriptC#

```
ProjectSettings.set("category/property_name", 0)

var property_info = {
    "name": "category/property_name",
    "type": TYPE_INT,
    "hint": PROPERTY_HINT_ENUM,
    "hint_string": "one,two,three"
}

ProjectSettings.add_property_info(property_info)

```

```
ProjectSettings.Singleton.Set("category/property_name", 0);

var propertyInfo = new Godot.Collections.Dictionary
{
    { "name", "category/propertyName" },
    { "type", (int)Variant.Type.Int },
    { "hint", (int)PropertyHint.Enum },
    { "hint_string", "one,two,three" },
};

ProjectSettings.AddPropertyInfo(propertyInfo);

```

**Note:** Setting `"usage"` for the property is not supported. Use [set\_as\_basic()](#class-projectsettings-method-set-as-basic), [set\_restart\_if\_changed()](#class-projectsettings-method-set-restart-if-changed), and [set\_as\_internal()](#class-projectsettings-method-set-as-internal) to modify usage flags.

* * *

void **clear**(name: [String](class_string.md#class-string)) [🔗](#class-projectsettings-method-clear)

Clears the whole configuration (not recommended, may break things).

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_global\_class\_list**() [🔗](#class-projectsettings-method-get-global-class-list)

Returns an [Array](class_array.md#class-array) of registered global classes. Each global class is represented as a [Dictionary](class_dictionary.md#class-dictionary) that contains the following entries:

- `base` is a name of the base class;

- `class` is a name of the registered global class;

- `icon` is a path to a custom icon of the global class, if it has any;

- `language` is a name of a programming language in which the global class is written;

- `path` is a path to a file containing the global class.


**Note:** Both the script and the icon paths are local to the project filesystem, i.e. they start with `res://`.

* * *

[int](class_int.md#class-int) **get\_order**(name: [String](class_string.md#class-string)) const [🔗](#class-projectsettings-method-get-order)

Returns the order of a configuration value (influences when saved to the config file).

* * *

[Variant](class_variant.md#class-variant) **get\_setting**(name: [String](class_string.md#class-string), default\_value: [Variant](class_variant.md#class-variant) = null) const [🔗](#class-projectsettings-method-get-setting)

Returns the value of the setting identified by `name`. If the setting doesn't exist and `default_value` is specified, the value of `default_value` is returned. Otherwise, `null` is returned.

GDScriptC#

```
print(ProjectSettings.get_setting("application/config/name"))
print(ProjectSettings.get_setting("application/config/custom_description", "No description specified."))

```

```
GD.Print(ProjectSettings.GetSetting("application/config/name"));
GD.Print(ProjectSettings.GetSetting("application/config/custom_description", "No description specified."));

```

**Note:** This method doesn't take potential feature overrides into account automatically. Use [get\_setting\_with\_override()](#class-projectsettings-method-get-setting-with-override) to handle seamlessly.

See also [has\_setting()](#class-projectsettings-method-has-setting) to check whether a setting exists.

* * *

[Variant](class_variant.md#class-variant) **get\_setting\_with\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-projectsettings-method-get-setting-with-override)

Similar to [get\_setting()](#class-projectsettings-method-get-setting), but applies feature tag overrides if any exists and is valid.

**Example:** If the setting override `"application/config/name.windows"` exists, and the following code is executed on a _Windows_ operating system, the overridden setting is printed instead:

GDScriptC#

```
print(ProjectSettings.get_setting_with_override("application/config/name"))

```

```
GD.Print(ProjectSettings.GetSettingWithOverride("application/config/name"));

```

* * *

[Variant](class_variant.md#class-variant) **get\_setting\_with\_override\_and\_custom\_features**(name: [StringName](class_stringname.md#class-stringname), features: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) const [🔗](#class-projectsettings-method-get-setting-with-override-and-custom-features)

Similar to [get\_setting\_with\_override()](#class-projectsettings-method-get-setting-with-override), but applies feature tag overrides instead of current OS features.

* * *

[String](class_string.md#class-string) **globalize\_path**(path: [String](class_string.md#class-string)) const [🔗](#class-projectsettings-method-globalize-path)

Returns the absolute, native OS path corresponding to the localized `path` (starting with `res://` or `user://`). The returned path will vary depending on the operating system and user preferences. See [File paths in Godot projects](../tutorials/io/data_paths.md) to see what those paths convert to. See also [localize\_path()](#class-projectsettings-method-localize-path).

**Note:** [globalize\_path()](#class-projectsettings-method-globalize-path) with `res://` will not work in an exported project. Instead, prepend the executable's base directory to the path when running from an exported project:

```
var path = ""
if OS.has_feature("editor"):
    # Running from an editor binary.
    # `path` will contain the absolute path to `hello.txt` located in the project root.
    path = ProjectSettings.globalize_path("res://hello.txt")
else:
    # Running from an exported project.
    # `path` will contain the absolute path to `hello.txt` next to the executable.
    # This is *not* identical to using `ProjectSettings.globalize_path()` with a `res://` path,
    # but is close enough in spirit.
    path = OS.get_executable_path().get_base_dir().path_join("hello.txt")

```

* * *

[bool](class_bool.md#class-bool) **has\_setting**(name: [String](class_string.md#class-string)) const [🔗](#class-projectsettings-method-has-setting)

Returns `true` if a configuration value is present.

**Note:** In order to be be detected, custom settings have to be either defined with [set\_setting()](#class-projectsettings-method-set-setting), or exist in the `project.godot` file. This is especially relevant when using [set\_initial\_value()](#class-projectsettings-method-set-initial-value).

* * *

[bool](class_bool.md#class-bool) **load\_resource\_pack**(pack: [String](class_string.md#class-string), replace\_files: [bool](class_bool.md#class-bool) = true, offset: [int](class_int.md#class-int) = 0) [🔗](#class-projectsettings-method-load-resource-pack)

Loads the contents of the .pck or .zip file specified by `pack` into the resource filesystem ( `res://`). Returns `true` on success.

**Note:** If a file from `pack` shares the same path as a file already in the resource filesystem, any attempts to load that file will use the file from `pack` unless `replace_files` is set to `false`.

**Note:** The optional `offset` parameter can be used to specify the offset in bytes to the start of the resource pack. This is only supported for .pck files.

**Note:** [DirAccess](class_diraccess.md#class-diraccess) will not show changes made to the contents of `res://` after calling this function.

* * *

[String](class_string.md#class-string) **localize\_path**(path: [String](class_string.md#class-string)) const [🔗](#class-projectsettings-method-localize-path)

Returns the localized path (starting with `res://`) corresponding to the absolute, native OS `path`. See also [globalize\_path()](#class-projectsettings-method-globalize-path).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save**() [🔗](#class-projectsettings-method-save)

Saves the configuration to the `project.godot` file.

**Note:** This method is intended to be used by editor plugins, as modified **ProjectSettings** can't be loaded back in the running app. If you want to change project settings in exported projects, use [save\_custom()](#class-projectsettings-method-save-custom) to save `override.cfg` file.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_custom**(file: [String](class_string.md#class-string)) [🔗](#class-projectsettings-method-save-custom)

Saves the configuration to a custom file. The file extension must be `.godot` (to save in text-based [ConfigFile](class_configfile.md#class-configfile) format) or `.binary` (to save in binary format). You can also save `override.cfg` file, which is also text, but can be used in exported projects unlike other formats.

* * *

void **set\_as\_basic**(name: [String](class_string.md#class-string), basic: [bool](class_bool.md#class-bool)) [🔗](#class-projectsettings-method-set-as-basic)

Defines if the specified setting is considered basic or advanced. Basic settings will always be shown in the project settings. Advanced settings will only be shown if the user enables the "Advanced Settings" option.

* * *

void **set\_as\_internal**(name: [String](class_string.md#class-string), internal: [bool](class_bool.md#class-bool)) [🔗](#class-projectsettings-method-set-as-internal)

Defines if the specified setting is considered internal. An internal setting won't show up in the Project Settings dialog. This is mostly useful for addons that need to store their own internal settings without exposing them directly to the user.

* * *

void **set\_initial\_value**(name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) [🔗](#class-projectsettings-method-set-initial-value)

Sets the specified setting's initial value. This is the value the setting reverts to. The setting should already exist before calling this method. Note that project settings equal to their default value are not saved, so your code needs to account for that.

```
extends EditorPlugin

const SETTING_NAME = "addons/my_setting"
const SETTING_DEFAULT = 10.0

func _enter_tree():
    if not ProjectSettings.has_setting(SETTING_NAME):
        ProjectSettings.set_setting(SETTING_NAME, SETTING_DEFAULT)

    ProjectSettings.set_initial_value(SETTING_NAME, SETTING_DEFAULT)

```

If you have a project setting defined by an [EditorPlugin](class_editorplugin.md#class-editorplugin), but want to use it in a running project, you will need a similar code at runtime.

* * *

void **set\_order**(name: [String](class_string.md#class-string), position: [int](class_int.md#class-int)) [🔗](#class-projectsettings-method-set-order)

Sets the order of a configuration value (influences when saved to the config file).

* * *

void **set\_restart\_if\_changed**(name: [String](class_string.md#class-string), restart: [bool](class_bool.md#class-bool)) [🔗](#class-projectsettings-method-set-restart-if-changed)

Sets whether a setting requires restarting the editor to properly take effect.

**Note:** This is just a hint to display to the user that the editor must be restarted for changes to take effect. Enabling [set\_restart\_if\_changed()](#class-projectsettings-method-set-restart-if-changed) does _not_ delay the setting being set when changed.

* * *

void **set\_setting**(name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) [🔗](#class-projectsettings-method-set-setting)

Sets the value of a setting.

GDScriptC#

```
ProjectSettings.set_setting("application/config/name", "Example")

```

```
ProjectSettings.SetSetting("application/config/name", "Example");

```

This can also be used to erase custom project settings. To do this change the setting value to `null`.

[Previous](class_physicstestmotionresult3d.md "PhysicsTestMotionResult3D") [Next](class_propertytweener.md "PropertyTweener")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicstestmotionresult3d.md "PhysicsTestMotionResult3D") [Next](class_propertytweener.md "PropertyTweener")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).