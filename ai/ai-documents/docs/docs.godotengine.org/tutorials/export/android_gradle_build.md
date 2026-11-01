---
title: Gradle builds for Android — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/export/android_gradle_build.html
crawled_at: "2026-08-13T10:30:40+12:00"
content_hash: 9d80dbb1fce783a4e25fab18ff7215bd12a74a61d90c4de58d71530fd2e894f0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Export](index.md)
  - Gradle builds for Android
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/export/android_gradle_build.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Gradle builds for Android

Godot provides the option to build using the gradle buildsystem. Instead of
using the already pre-built template that ships with Godot, an Android
Java project gets installed into your project folder. Godot will then build it
and use it as an export template every time you export the project.

There are some reasons why you may want to do this:

- Modify the project before it's built.

- Add external SDKs that build with your project.


Configuring the gradle build is a fairly straightforward process. But first
you need to follow the steps in [exporting for android](exporting_for_android.md#doc-exporting-for-android)
up to **Setting it up in Godot**. After doing that, follow the steps below.

## Set up the gradle build environment

Go to the Project menu, and install the _Gradle Build_ template:

![../../_images/gradle_build_install_template.webp](../../_images/gradle_build_install_template.webp)

Make sure export templates are downloaded. If not, this menu will help you
download them.

A Gradle-based Android project will be created under `res://android/build`.
Editing these files is not needed unless you really need to modify the project.

## Enabling the gradle build and exporting

When setting up the Android project in the **Project > Export** dialog,
**Gradle Build** needs to be enabled:

![../../_images/gradle_build_enable.webp](../../_images/gradle_build_enable.webp)

From now on, attempting to export the project or one-click deploy will call the
[Gradle](https://gradle.org/) build system to generate fresh templates (this
window will appear every time):

![../../_images/gradle_build_gradle.webp](../../_images/gradle_build_gradle.webp)

The templates built will be used automatically afterwards, so no further
configuration is needed.

Note

When using the gradle Android build system, assets that are placed within a
folder whose name begins with an underscore will not be included in the
generated APK. This does not apply to assets whose _file_ name begins with
an underscore.

For example, `_example/image.png` will **not** be included as an asset,
but `_image.png` will.

[Previous](running_on_macos.md "Running Godot apps on macOS") [Next](one-click_deploy.md "One-click deploy")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](running_on_macos.md "Running Godot apps on macOS") [Next](one-click_deploy.md "One-click deploy")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).