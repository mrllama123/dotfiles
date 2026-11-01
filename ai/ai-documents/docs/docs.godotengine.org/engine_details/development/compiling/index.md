---
title: Building from source — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/development/compiling/index.html
crawled_at: "2026-08-13T10:25:01+12:00"
content_hash: 4d5ea94acc5cdd07da57505dd2571dc437700226a33a139ad7783aafb43b2d0f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Engine development](../index.md)
  - Building from source
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/development/compiling/index.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Building from source

Godot prides itself on being very easy to build, by C++ project standards.
[Godot uses the SCons build system](../../../about/faq.md#doc-faq-why-scons), and after the initial
setup compiling the engine for your current platform should be as easy as running:

```
scons

```

But you will probably need to use at least some of the available options to configure
the build to match your specific needs, be it a custom engine fork, a lightweight build
stripped of extra modules, or an executable targeting engine development.

The articles below should help you navigate configuration options available, as well as
prerequisites required to compile Godot exactly the way you need.

## Basics of building Godot

Let's start with basics, and learn how to get Godot's source code, and then which options
to use to compile it regardless of your target platform.

- [Getting the source](getting_source.md)
- [Introduction to the buildsystem](introduction_to_the_buildsystem.md)

## Building for target platforms

Below you can find instructions for compiling the engine for your specific target platform.
Note that Godot supports cross-compilation, which means you can compile it for a target platform
that doesn't match your current platform (say, target Linux while being on Windows). The guides
will try their best to cover all possible situations.

- [Compiling for Windows](compiling_for_windows.md)
- [Compiling for Linux, \*BSD](compiling_for_linuxbsd.md)
- [Compiling for macOS](compiling_for_macos.md)
- [Compiling for Android](compiling_for_android.md)
- [Compiling for iOS](compiling_for_ios.md)
- [Compiling for visionOS](compiling_for_visionos.md)
- [Compiling for the Web](compiling_for_web.md)
- [Cross-compiling for iOS on Linux](cross-compiling_for_ios_on_linux.md)

## Other compilation targets and options

Some additional universal compilation options require further setup. Namely, while Godot
does have C#/.NET support as a part of its main codebase, it does not get compiled by
default to reduce the executable size for users who don't need C# for their projects.

Articles below explain how to configure the buildsystem for cases like this, and also
cover some optimization techniques.

- [Compiling with .NET](compiling_with_dotnet.md)
- [Compiling with PCK encryption key](compiling_with_script_encryption_key.md)
- [Optimizing a build for size](optimizing_for_size.md)

[Previous](../configuring_an_ide/xcode.md "Xcode") [Next](getting_source.md "Getting the source")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).