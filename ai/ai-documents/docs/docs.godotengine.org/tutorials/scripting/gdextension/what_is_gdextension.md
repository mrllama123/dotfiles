---
title: What is GDExtension? — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/gdextension/what_is_gdextension.html
crawled_at: "2026-08-13T10:42:28+12:00"
content_hash: dd70f2ac1b3f7d518d46e2bdb4972016fb2ff7fefef5f7527832348a89c573e9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Scripting](../index.md)
  - [The GDExtension system](index.md)
  - What is GDExtension?
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/gdextension/what_is_gdextension.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# What is GDExtension?

**GDExtension** is a Godot-specific technology that lets the engine interact with
native [shared libraries](https://en.wikipedia.org/wiki/Library_(computing)#Shared_libraries)
at runtime. You can use it to run native code without compiling it with the engine.

There are three primary methods with which this is achieved:

- `gdextension_interface.h`: A set of C functions that Godot and a GDExtension can use to communicate.

- `extension_api.json`: A list of C functions that are exposed from Godot APIs ( [Core Features](../index.md#doc-scripting-core-features)).

- [\*.gdextension](gdextension_file.md#doc-gdextension-file): A file format read by Godot to load a GDExtension.


Most people create GDExtensions with some existing language binding, such as [godot-cpp (for C++)](../cpp/index.md#doc-godot-cpp),
or one of the [community-made ones](../other_languages.md#doc-what-is-gdnative-third-party-bindings).

## Version compatibility

See [godot-cpp Version Compatibility](../cpp/about_godot_cpp.md#doc-what-is-gdextension-version-compatibility), which applies to all GDExtensions.

[Previous](index.md "The GDExtension system") [Next](gdextension_file.md "The .gdextension file")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](index.md "The GDExtension system") [Next](gdextension_file.md "The .gdextension file")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).