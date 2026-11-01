---
title: Compiling for iOS — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/development/compiling/compiling_for_ios.html
crawled_at: "2026-08-13T10:24:57+12:00"
content_hash: c78cc2c64d6e058f0b570c7d83d4d5cd2dad8934d989233a93a1ee4b62ad8b20
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Engine development](../index.md)
  - [Building from source](index.md)
  - Compiling for iOS
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/development/compiling/compiling_for_ios.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Compiling for iOS

See also

This page describes how to compile iOS export template binaries from source.
If you're looking to export your project to iOS instead, read [Exporting for iOS](../../../tutorials/export/exporting_for_ios.md#doc-exporting-for-ios).

## Requirements

- [Python 3.8+](https://www.python.org/downloads/macos/).

- [SCons 4.0+](https://scons.org/pages/download.html) build system.

- [Xcode](https://apps.apple.com/us/app/xcode/id497799835).

- Launch Xcode once and install iOS support. If you have already launched
Xcode and need to install iOS support, go to _Xcode -> Settings... -> Platforms_.

- Go to _Xcode -> Settings... -> Locations -> Command Line Tools_ and select
an installed version. Even if one is already selected, re-select it.


- Download and follow README instructions to build a static `.xcframework`
from the [MoltenVK SDK](https://github.com/KhronosGroup/MoltenVK#fetching-moltenvk-source-code).


Note

If you have [Homebrew](https://brew.sh/) installed, you can easily
install SCons using the following command:

```
brew install scons

```

Installing Homebrew will also fetch the Command Line Tools
for Xcode automatically if you don't have them already.

Similarly, if you have [MacPorts](https://www.macports.org/)
installed, you can easily install SCons using the
following command:

```
sudo port install scons

```

See also

To get the Godot source code for compiling, see
[Getting the source](getting_source.md#doc-getting-source).

For a general overview of SCons usage for Godot, see
[Introduction to the buildsystem](introduction_to_the_buildsystem.md#doc-introduction-to-the-buildsystem).

## Compiling

Open a Terminal, go to the root folder of the engine source code and type
the following to compile a debug build:

```
scons platform=ios target=template_debug generate_bundle=yes

```

To compile a release build:

```
scons platform=ios target=template_release generate_bundle=yes

```

To create an Xcode project like in the official builds, you need to use the
template located in `misc/dist/ios_xcode`. The release and debug libraries
should be placed in `libgodot.ios.debug.xcframework` and
`libgodot.ios.release.xcframework` respectively. This process can be automated
by using the `generate_bundle=yes` option on the _last_ SCons command used to
build export templates (so that all binaries can be included).

The MoltenVK static `.xcframework` folder must also be placed in the
`ios_xcode` folder once it has been created. MoltenVK is always statically
linked on iOS; there is no dynamic linking option available, unlike macOS.

Warning

Compiling for the iOS simulator is currently not supported as per
[GH-102149](https://github.com/godotengine/godot/issues/102149).

Apple Silicon Macs can run iOS apps natively, so you can run exported iOS projects
directly on an Apple Silicon Mac without needing the iOS simulator.

## Run

To run on a device, follow these instructions:
[Exporting for iOS](../../../tutorials/export/exporting_for_ios.md#doc-exporting-for-ios).

iOS exports can run directly on an Apple Silicon Mac. To run exported iOS project
on Mac, open exported project in Xcode and select `My Mac` in the `Run Destinations`
dropdown.

## Troubleshooting

### Fatal error: 'cstdint' file not found

If you get a compilation error of this form early on, it's likely because
the Xcode command line tools installation needs to be repaired after
a macOS or Xcode update:

```
./core/typedefs.h:45:10: fatal error: 'cstdint' file not found
45 | #include <cstdint>
   |          ^~~~~~~~~

```

Run these two commands to reinstall Xcode command line tools
(enter your administrator password as needed):

```
sudo rm -rf /Library/Developer/CommandLineTools
sudo xcode-select --install

```

If it still does not work, try updating Xcode from the Mac App Store and try again.

[Previous](compiling_for_android.md "Compiling for Android") [Next](compiling_for_visionos.md "Compiling for visionOS")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](compiling_for_android.md "Compiling for Android") [Next](compiling_for_visionos.md "Compiling for visionOS")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).