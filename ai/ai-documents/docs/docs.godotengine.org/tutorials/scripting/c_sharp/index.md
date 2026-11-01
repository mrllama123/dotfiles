---
title: C#/.NET — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/c_sharp/index.html
crawled_at: "2026-08-13T10:31:58+12:00"
content_hash: 52e92439c83734eeb0d1b6601608ff5cd7d6b1e20a0f939028507179f28635c2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Scripting](../index.md)
  - C#/.NET
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/c_sharp/index.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# C\#/.NET

C# is a high-level programming language developed by Microsoft. Godot supports
C# as an option for a scripting language, alongside Godot's own
[GDScript](../gdscript/index.md#doc-gdscript).

The standard Godot executable does not contain C# support out of the box. Instead,
to enable C# support for your project you need to [download a .NET version](https://godotengine.org/download/)
of the editor from the Godot website.

- [C# basics](c_sharp_basics.md)
- [C# language features](c_sharp_features.md)
- [C# style guide](c_sharp_style_guide.md)
- [C# diagnostics](diagnostics/index.md)

## Godot API for C\#

As a general purpose game engine Godot offers some high-level features as a part
of its API. Articles below explain how these features integrate into C# and how
C# API may be different from GDScript.

- [C# API differences to GDScript](c_sharp_differences.md)
- [C# collections](c_sharp_collections.md)
- [C# Variant](c_sharp_variant.md)
- [C# signals](c_sharp_signals.md)
- [C# exported properties](c_sharp_exports.md)
- [C# global classes](c_sharp_global_classes.md)

## C\# platform support

See also

See [System requirements](../../../about/system_requirements.md#doc-system-requirements) for hardware and software version
requirements for the Godot engine.

Note

Since C# projects use the .NET runtime, also check the system requirements
for the version of .NET that you'll be using.
See [supported OS](https://github.com/dotnet/core/tree/main/release-notes#supported-os).

Since Godot 4.2, projects written in C# support all desktop platforms (Windows, Linux,
and macOS), as well as Android and iOS.

Android support is currently experimental.

iOS support is currently experimental and has a few limitations.

- The official export templates for the iOS simulator only supports the `x64` architecture.

- Exporting to iOS can only be done from a MacOS device.


Currently, projects written in C# cannot be exported to the web platform. To use C#
on that platform, consider Godot 3 instead.

[Previous](../gdscript/gdscript_format_string.md "GDScript format strings") [Next](c_sharp_basics.md "C# basics")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).