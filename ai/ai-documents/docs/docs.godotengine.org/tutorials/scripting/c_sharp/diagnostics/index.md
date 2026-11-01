---
title: C# diagnostics — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/c_sharp/diagnostics/index.html
crawled_at: "2026-08-13T10:35:15+12:00"
content_hash: f81b12ef6caddb6a1bfbf6dcf55cb265188121d5f83892bd27794cfe0d55cbc6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../../index.md)
  - [Scripting](../../index.md)
  - [C#/.NET](../index.md)
  - C# diagnostics
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/c_sharp/diagnostics/index.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# C\# diagnostics

Godot includes analyzers that inspect your C# source code to check for invalid
or unsupported code and let you know that something is wrong during build time.

## Rules

- [GD0001: Missing partial modifier on declaration of type that derives from GodotObject](GD0001.md)
- [GD0002: Missing partial modifier on declaration of type which contains nested classes that derive from GodotObject](GD0002.md)
- [GD0003: Found multiple classes with the same name in the same script file](GD0003.md)
- [GD0101: The exported member is static](GD0101.md)
- [GD0102: The type of the exported member is not supported](GD0102.md)
- [GD0103: The exported member is read-only](GD0103.md)
- [GD0104: The exported property is write-only](GD0104.md)
- [GD0105: The exported property is an indexer](GD0105.md)
- [GD0106: The exported property is an explicit interface implementation](GD0106.md)
- [GD0107: Types not derived from Node should not export Node members](GD0107.md)
- [GD0108: The exported tool button is not in a tool class](GD0108.md)
- [GD0109: The '\[ExportToolButton\]' attribute cannot be used with another '\[Export\]' attribute](GD0109.md)
- [GD0110: The exported tool button is not a Callable](GD0110.md)
- [GD0111: The exported tool button must be an expression-bodied property](GD0111.md)
- [GD0201: The name of the delegate must end with 'EventHandler'](GD0201.md)
- [GD0202: The parameter of the delegate signature of the signal is not supported](GD0202.md)
- [GD0203: The delegate signature of the signal must return void](GD0203.md)
- [GD0301: The generic type argument must be a Variant compatible type](GD0301.md)
- [GD0302: The generic type parameter must be annotated with the '\[MustBeVariant\]' attribute](GD0302.md)
- [GD0303: The parent symbol of a type argument that must be Variant compatible was not handled](GD0303.md)
- [GD0401: The class must derive from Godot.GodotObject or a derived class](GD0401.md)
- [GD0402: The class must not be generic](GD0402.md)

[Previous](../c_sharp_style_guide.md "C# style guide") [Next](GD0001.md "GD0001: Missing partial modifier on declaration of type that derives from GodotObject")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).