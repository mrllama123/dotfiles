---
title: Using the XR editor — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/editor/using_the_xr_editor.html
crawled_at: "2026-08-13T10:27:48+12:00"
content_hash: 5fc4d86415a514c4eed9bddf058e60007b7772e165e080b0fbd731ac4eaf6018
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Editor introduction](index.md)
  - Using the XR editor
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/editor/using_the_xr_editor.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Using the XR editor

In 2024, we introduced the [Godot XR editor](https://godotengine.org/article/godot-editor-horizon-store-early-access-release/),
a version of the Godot editor **designed to run natively on XR devices**, enabling the creation,
development and export of 2D, 3D, and **XR** apps and games directly on device.

The app can be downloaded from the [Meta Horizon Store](https://www.meta.com/experiences/godot-game-engine/7713660705416473/),
or from the [Godot download page](https://godotengine.org/download/preview/).

Note

The XR editor is in early access, while we continue to refine the experience. See [Limitations & known issues](#doc-using-the-xr-editor-limitations) below.

## XR devices support

For now, the Godot XR editor is only available for the following [Meta Quest](https://www.meta.com/quest/)
devices running **Meta Horizon OS v69 or higher**:

> - Meta Quest 3
>
> - Meta Quest 3s
>
> - Meta Quest Pro

Note

We are working to add support for more XR devices, including PCVR devices.

## Runtime Permissions

- [All files access permission](https://developer.android.com/training/data-storage/manage-all-files#all-files-access):
Enables the editor to create, import, and read project files from any file locations on the device.
Without this permission, the editor is still functional, but has limited access to the device's files and directories.

- [REQUEST\_INSTALL\_PACKAGES](https://developer.android.com/reference/android/Manifest.permission#REQUEST_INSTALL_PACKAGES): Enables the editor to install exported project APKs.

- [RECORD\_AUDIO](https://developer.android.com/reference/android/Manifest.permission#RECORD_AUDIO): Requested when the [audio/driver/enable\_input](https://docs.godotengine.org/en/stable/classes/class_projectsettings.html#class-projectsettings-property-audio-driver-enable-input) project setting is enabled.

- [USE\_SCENE](https://developers.meta.com/horizon/documentation/native/native-spatial-data-perm/): Required to enable and access the scene APIs when running an XR project.


## Tips & Tricks

**Input**

- For the best experience and high level of productivity, connecting a bluetooth keyboard & mouse is recommended to interact with the XR editor.
The XR editor supports all of the [usual shortcuts and key mappings](https://docs.godotengine.org/en/stable/tutorials/editor/default_key_mapping.html).

- When interacting with tracked controllers or tracked hands, you can toggle on the
[interface/touchscreen/enable\_long\_press\_as\_right\_click](https://docs.godotengine.org/en/stable/classes/class_editorsettings.html#class-editorsettings-property-interface-touchscreen-enable-long-press-as-right-click) editor setting to enable right-click by long press.

- When interacting with tracked controllers or tracked hands, you can increase the size of the scrollbar using the
[interface/touchscreen/increase\_scrollbar\_touch\_area](https://docs.godotengine.org/en/stable/classes/class_editorsettings.html#class-editorsettings-property-interface-touchscreen-increase-scrollbar-touch-area) editor setting.


**Multi-tasking**

- [Theater View](https://www.meta.com/blog/quest/meta-quest-v67-update-new-window-layout-creator-content-horizon-feed/) can be used to fullscreen the _Editor window_.

- Enable [Seamless Multitasking](https://www.uploadvr.com/seamless-multitasking-experimental-quest/), available in the Quest _Experimental Settings_,
to enable the ability to quickly transition between a running XR project and the _Editor window_.

- When developing a non-XR project, the Godot editor app icon will provide the ability to switch between the _Editor window_ and the _Play window_ when the latter is active, using Quest's _App menu_ feature.

- When developing and running an XR project, you can bring back the _Editor window_ by:

  - Pressing on the _Meta_ button to invoke the menu bar

  - Clicking on the Godot editor app icon to summon the _App menu_, and select the _Editor window_ tile.

**Projects sync**

- Syncing projects via Git can be done by downloading an Android Git client. We recommend the [Termux terminal](https://termux.dev/en/),
an Android terminal emulator which provides access to common terminal utilities such Git and SSH.

  - **Note:** To use Git with the Termux terminal, you'll need to grant _WRITE_ permission to the terminal.
    This can be done by [running the following command](https://wiki.termux.com/wiki/Termux-setup-storage) from within the terminal: `termux-setup-storage`

**Plugins**

- GDExtension plugins work as expected, but require the plugin developer to provide native Android binaries.


## Limitations & known issues

Here are the known limitations and issues of the XR editor:

- No Meta Quest 2 support due to the limited amount of memory on the device.
However advanced users can grab the XR editor APK from the [download page](https://godotengine.org/download/preview/)
and sideload it onto their device if they desire to do so.

- No gradle build support.

- No support for Android plugins as they require gradle build support. GDExtension plugins are supported.

- No C#/Mono support.

- No support for external script editors.

- While available, the _Vulkan Forward+_ renderer is not recommended due to severe performance issues.


[Previous](customizing_editor.md "Customizing the interface") [Next](using_the_android_editor.md "Using the Android editor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](customizing_editor.md "Customizing the interface") [Next](using_the_android_editor.md "Using the Android editor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).