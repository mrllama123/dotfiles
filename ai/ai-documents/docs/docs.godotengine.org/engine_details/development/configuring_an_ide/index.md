---
title: Configuring an IDE — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/development/configuring_an_ide/index.html
crawled_at: "2026-08-13T10:24:23+12:00"
content_hash: 00bf276e684c3a94edc5e440c1e1ae858bb08233a3c6fb06349a4842b31acc82
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Engine development](../index.md)
  - Configuring an IDE
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/development/configuring_an_ide/index.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Configuring an IDE

We assume that you have already [cloned](https://github.com/godotengine/godot)
and [compiled](../compiling/index.md#toc-devel-compiling) Godot.

You can easily develop Godot with any text editor and by invoking `scons`
on the command line, but if you want to work with an IDE (Integrated
Development Environment), here are setup instructions for some popular ones:

- [Android Studio](android_studio.md)
- [CLion](clion.md)
- [Code::Blocks](code_blocks.md)
- [KDevelop](kdevelop.md)
- [Qt Creator](qt_creator.md)
- [JetBrains Rider](rider.md)
- [Visual Studio](visual_studio.md)
- [Visual Studio Code](visual_studio_code.md)
- [Xcode](xcode.md)

It is possible to use other IDEs, but their setup is not documented yet.

If your editor supports the [language server protocol](https://microsoft.github.io/language-server-protocol/),
you can use [clangd](https://clangd.llvm.org) for completion, diagnostics, and more.
You can generate a compilation database for use with clangd one of two ways:

```
# Generate compile_commands.json while compiling
scons compiledb=yes

# Generate compile_commands.json without compiling
scons compiledb=yes compile_commands.json

```

[Previous](../index.md "Engine development") [Next](android_studio.md "Android Studio")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).