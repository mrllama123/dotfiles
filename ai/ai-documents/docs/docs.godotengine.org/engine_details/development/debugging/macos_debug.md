---
title: Debugging on macOS — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/development/debugging/macos_debug.html
crawled_at: "2026-08-13T10:38:06+12:00"
content_hash: 38f8568b992a7551c207e365566f2f0c3492eb104c5da06a7b389398bcf3c4be
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Engine development](../index.md)
  - [Debugging and profiling](index.md)
  - Debugging on macOS
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/development/debugging/macos_debug.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Debugging on macOS

## Debugging Godot editor

Attaching a debugger to the signed macOS process requires the "com.apple.security.get-task-allow" entitlement, which is not enabled by default, since apps can't be notarized as long as it is enabled.
If you want to debug an official build of the editor it should be re-signed with the proper entitlements.

Create an `editor.entitlements` text file with the following contents:

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>com.apple.security.cs.allow-dyld-environment-variables</key>
        <true/>
        <key>com.apple.security.cs.allow-jit</key>
        <true/>
        <key>com.apple.security.cs.allow-unsigned-executable-memory</key>
        <true/>
        <key>com.apple.security.cs.disable-executable-page-protection</key>
        <true/>
        <key>com.apple.security.cs.disable-library-validation</key>
        <true/>
        <key>com.apple.security.device.audio-input</key>
        <true/>
        <key>com.apple.security.device.camera</key>
        <true/>
        <key>com.apple.security.get-task-allow</key>
        <true/>
    </dict>
</plist>

```

Then use the following command to re-sign the editor:

```
codesign -s - --deep --force --options=runtime --entitlements ./editor.entitlements ./path/to/Godot.app

```

## Debugging exported project

To allow debugging, select the `codesign\debugging` ( `com.apple.security.get-task-allow`) entitlement during the export. When it is selected, notarization is not supported and should be disabled.

[Previous](using_sanitizers.md "Using sanitizers") [Next](vulkan/index.md "Vulkan")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](using_sanitizers.md "Using sanitizers") [Next](vulkan/index.md "Vulkan")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).