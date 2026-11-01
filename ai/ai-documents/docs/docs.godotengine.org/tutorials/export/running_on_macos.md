---
title: Running Godot apps on macOS — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/export/running_on_macos.html
crawled_at: "2026-08-13T10:27:52+12:00"
content_hash: 8d07a65f49516b7159590325731e4a61b173033baeb601fd039f9d9a21401cdf
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Export](index.md)
  - Running Godot apps on macOS
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/export/running_on_macos.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Running Godot apps on macOS

See also

This page covers running Godot projects on macOS.
If you haven't exported your project yet, read [Exporting for macOS](exporting_for_macos.md#doc-exporting-for-macos) first.

By default, macOS will run only applications that are signed and notarized.

Note

When running an app from the Downloads folder or when still in quarantine,
Gatekeeper will perform _path randomization_ as a security measure.
This breaks access to relative paths from the app, which the app relies upon to work.
To resolve this issue, move the app to the `/Applications` folder.

In general, macOS apps should avoid relying on relative paths from the
application folder.

Depending on the way a macOS app is signed and distributed, the following scenarios are possible:

## App is signed, notarized and distributed via App Store

Note

App developers need to join the Apple Developer Program, and configure signing and notarization options during export, then upload the app to the App Store.

The app should run out of the box, without extra user interaction required.

## App is signed, notarized and distributed outside App Store

Note

App developers need to join the Apple Developer Program, and configure signing and notarization options during export, then distribute the app as ".DMG" or ".ZIP" archive.

When you run the app for the first time, the following dialog is displayed:

![../../_images/signed_and_notarized_0.png](../../_images/signed_and_notarized_0.png)

Click `Open` to start the app.

If you see the following warning dialog, your Mac is set up to allow apps only from the App Store.

![../../_images/signed_and_notarized_1.png](../../_images/signed_and_notarized_1.png)

To allow third-party apps, open `System Preferences`, click `Security & Privacy`, then click `General`, unlock settings, and select `App Store and identified developers`.

![../../_images/sys_pref_0.png](../../_images/sys_pref_0.png)

## App is signed (including ad-hoc signatures) but not notarized

Note

App developer used self-signed certificate or ad-hoc signing (default Godot behavior for exported project).

When you run the app for the first time, the following dialog is displayed:

![../../_images/signed_0.png](../../_images/signed_0.png)

To run this app, you can temporarily override Gatekeeper:

- Either open `System Preferences`, click `Security & Privacy`, then click `General`, and click `Open Anyway`.
![../../_images/sys_pref_1.png](../../_images/sys_pref_1.png)
- Or, right-click (Control-click) on the app icon in the Finder window and select `Open` from the menu.
![../../_images/signed_1.png](../../_images/signed_1.png)
- Then click `Open` in the confirmation dialog.
![../../_images/signed_2.png](../../_images/signed_2.png)
- Enter your password if you're prompted.


Another option is to disable Gatekeeper entirely. Note that this does decrease
the security of your computer by allowing you to run any software you want.
To do this, run `sudo spctl --master-disable` in the Terminal, enter your
password, and then the **Anywhere** option will be available:

> ![../../_images/macos_allow_from_anywhere.png](../../_images/macos_allow_from_anywhere.png)

Note that Gatekeeper will re-enable itself when macOS updates.

## App is not signed, executable is linker-signed

Note

App is built using official export templates, but it is not signed.

When you run the app for the first time, the following dialog is displayed:

![../../_images/linker_signed_1.png](../../_images/linker_signed_1.png)

To run this app, you should remove the quarantine extended file attribute manually:

- Open `Terminal.app` (press `Cmd + Space` and enter `Terminal`).

- Navigate to the folder containing the target application.

Use the `cd path_to_the_app_folder` command, e.g. `cd ~/Downloads/` if it's in the `Downloads` folder.

- Run the command `xattr -dr com.apple.quarantine "Unsigned Game.app"` (including quotation marks and `.app` extension).


## Neither app nor executable is signed (relevant for Apple Silicon Macs only)

Note

App is built using custom export templates, compiled using OSXCross, and it is not signed at all.

When you run the app for the first time, the following dialog is displayed:

![../../_images/unsigned_1.png](../../_images/unsigned_1.png)

To run this app, you can ad-hoc sign it yourself:

- Install `Xcode` for the App Store, start it and confirm command line tools installation.

- Open `Terminal.app` (press `Cmd + Space` and enter `Terminal`).

- Navigate to the folder containing the target application.

Use the `cd path_to_the_app_folder` command, e.g. `cd ~/Downloads/` if it's in the `Downloads` folder.

- Run the following commands:

`xattr -dr com.apple.quarantine "Unsigned Game.app"` (including quotation marks and ".app" extension).

`codesign -s - --force --deep "Unsigned Game.app"` (including quotation marks and ".app" extension).


[Previous](changing_application_icon_for_windows.md "Manually changing application icon for Windows") [Next](android_gradle_build.md "Gradle builds for Android")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](changing_application_icon_for_windows.md "Manually changing application icon for Windows") [Next](android_gradle_build.md "Gradle builds for Android")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).