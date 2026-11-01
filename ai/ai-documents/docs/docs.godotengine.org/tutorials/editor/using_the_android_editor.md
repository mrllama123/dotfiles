---
title: Using the Android editor — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/editor/using_the_android_editor.html
crawled_at: "2026-08-13T10:40:47+12:00"
content_hash: b378388d1819da80e1702cce29d6ac097db609b61062e7d74e30e56e5dd40978
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Editor introduction](index.md)
  - Using the Android editor
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/editor/using_the_android_editor.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Using the Android editor

In 2023, we added an [Android port of the editor](https://godotengine.org/article/android_godot_editor_play_store_beta_release/)
that can be used to create, develop, and export 2D and 3D projects on Android devices.

The app can be downloaded from the [Godot download page](https://godotengine.org/download/android/)
or from the [Google Play Store](https://play.google.com/store/apps/details?id=org.godotengine.editor.v4).

Note

The Android editor is in early access, while we continue to refine the experience. See [Limitations & known issues](#doc-using-the-android-editor-limitations) below.

## Android devices support

The Android editor requires devices running Android 5 Lollipop or higher, with at least OpenGL 3 support. This includes (not exhaustive):

- Android tablets, foldables and large phones

- Android-powered netbooks

- Chromebooks supporting Android apps


## Runtime Permissions

- [All files access permission](https://developer.android.com/training/data-storage/manage-all-files#all-files-access):
Enables the editor to create, import, and read project files from any file locations on the device.
Without this permission, the editor is still functional, but has limited access to the device's files and directories.

- [REQUEST\_INSTALL\_PACKAGES](https://developer.android.com/reference/android/Manifest.permission#REQUEST_INSTALL_PACKAGES): Enables the editor to install exported project APKs.

- [RECORD\_AUDIO](https://developer.android.com/reference/android/Manifest.permission#RECORD_AUDIO): Requested when the [audio/driver/enable\_input](https://docs.godotengine.org/en/stable/classes/class_projectsettings.html#class-projectsettings-property-audio-driver-enable-input) project setting is enabled.


## Tips & Tricks

**Input**

- For the best experience and high level of productivity, connecting a bluetooth keyboard & mouse is recommended to interact with the Android editor.
The Android editor supports all of the [usual shortcuts and key mappings](https://docs.godotengine.org/en/stable/tutorials/editor/default_key_mapping.html).

- When interacting with keyboard & mouse, you can decrease the size of the scrollbar using the [interface/touchscreen/increase\_scrollbar\_touch\_area](https://docs.godotengine.org/en/stable/classes/class_editorsettings.html#class-editorsettings-property-interface-touchscreen-increase-scrollbar-touch-area) editor setting.

- For 2D projects, the [block coding plugin](https://godotengine.org/asset-library/asset/3095) can provide a block-based visual alternative to composing scripts when lacking a connected hardware keyboard.


**Multi-tasking**

- On smaller devices, enabling and using picture-in-picture (PiP) mode provides the ability to easily transition between the _Editor_ and the _Play window_.

  - PiP can be enabled via the [run/window\_placement/play\_window\_pip\_mode](https://docs.godotengine.org/en/latest/classes/class_editorsettings.html#class-editorsettings-property-run-window-placement-play-window-pip-mode) editor setting.

  - The [run/window\_placement/android\_window](https://docs.godotengine.org/en/latest/classes/class_editorsettings.html#class-editorsettings-property-run-window-placement-android-window) editor setting can be used to specify whether the _Play_ window should always launch in PiP mode.

  - **Note:** In PiP mode, the _Play_ window does not have input access.

**Projects sync**

- Syncing projects via Git can be done by downloading an Android Git client.
We recommend the [Termux terminal](https://termux.dev/en/), an Android terminal emulator which provides access to common terminal utilities such Git and SSH.

  - **Note:** To use Git with the Termux terminal, you'll need to grant _WRITE_ permission to the terminal.
    This can be done by [running the following command](https://wiki.termux.com/wiki/Termux-setup-storage) from within the terminal: `termux-setup-storage`

**Plugins**

- GDExtension plugins work as expected, but require the plugin developer to provide native Android binaries.


## Limitations & known issues

Here are the known limitations and issues of the Android editor:

- No gradle build support.

- No support for Android plugins as they require gradle build support. GDExtensions plugins are supported.

- No C#/Mono support.

- No support for external script editors.

- While available, the _Vulkan Forward+_ renderer is not recommended due to severe performance issues.

- UX not optimized for Android phones form-factor.

- [Android Go devices](https://developer.android.com/guide/topics/androidgo) lacks
the _All files access_ permission required for device read/write access.
As a workaround, when using an Android Go device, it's recommended to create new projects only in the Android _Documents_ or _Downloads_ directories.

- The editor doesn't properly resume when _Don't keep activities_ is enabled in the _Developer Options_.

- There is a [bug](https://github.com/godotengine/godot/issues/70751) with the Samsung keyboard that causes random input to be inserted when writing scripts.
It's recommended to use the [Google keyboard (Gboard)](https://play.google.com/store/apps/details?id=com.google.android.inputmethod.latin) instead.


See also

See the
[list of open issues on GitHub related to the Android editor](https://github.com/godotengine/godot/issues?q=is%3Aopen+is%3Aissue+label%3Aplatform%3Aandroid+label%3Atopic%3Aeditor) for a list of known bugs.

[Previous](using_the_xr_editor.md "Using the XR editor") [Next](using_the_web_editor.md "Using the Web editor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](using_the_xr_editor.md "Using the XR editor") [Next](using_the_web_editor.md "Using the Web editor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).