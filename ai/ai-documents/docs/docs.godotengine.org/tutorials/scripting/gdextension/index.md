---
title: The GDExtension system — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/gdextension/index.html
crawled_at: "2026-08-13T10:18:21+12:00"
content_hash: e48e0f599e674502bae6d75d3eaf89823efab9d3f4eb92b8e50860e3aeee2bc1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Scripting](../index.md)
  - The GDExtension system
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/gdextension/index.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# The GDExtension system

**GDExtension** is a Godot-specific technology that lets the engine interact with
native [shared libraries](https://en.wikipedia.org/wiki/Library_(computing)#Shared_libraries)
at runtime. You can use it to run native code without compiling it with the engine.

Note

GDExtension is _not_ a scripting language and has no relation to
[GDScript](../gdscript/index.md#doc-gdscript).

This section describes how GDExtension works, and is generally aimed at people wanting to make a GDExtension from
scratch, for example to create language bindings. If you want to use existing language bindings, please refer to other
articles instead, such as the articles about [C++ (godot-cpp)](../cpp/index.md#doc-godot-cpp) or one of the
[community-made ones](../other_languages.md#doc-what-is-gdnative-third-party-bindings).

- [What is GDExtension?](what_is_gdextension.md)
- [The .gdextension file](gdextension_file.md)
- [GDExtension C example](gdextension_c_example.md)

[Previous](../other_languages.md "Other languages") [Next](what_is_gdextension.md "What is GDExtension?")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).