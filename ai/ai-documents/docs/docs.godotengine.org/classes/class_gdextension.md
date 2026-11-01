---
title: GDExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gdextension.html
crawled_at: "2026-08-13T10:36:33+12:00"
content_hash: d9b264ad787cd39d5ceb03581d2e25427fc3493c1e5709d0e5f16d22a721dc94
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GDExtension

* * *

# GDExtension

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A native library for GDExtension.

## Description

The **GDExtension** resource type represents a [shared library](https://en.wikipedia.org/wiki/Shared_library) which can expand the functionality of the engine. The [GDExtensionManager](class_gdextensionmanager.md#class-gdextensionmanager) singleton is responsible for loading, reloading, and unloading **GDExtension** resources.

**Note:** GDExtension itself is not a scripting language and has no relation to [GDScript](class_gdscript.md#class-gdscript) resources.

## Tutorials

- [GDExtension overview](../tutorials/scripting/gdextension/what_is_gdextension.md)

- [GDExtension example in C++](../tutorials/scripting/cpp/gdextension_cpp_example.md)


## Methods

|     |     |
| --- | --- |
| [InitializationLevel](#enum-gdextension-initializationlevel) | [get\_minimum\_library\_initialization\_level](#class-gdextension-method-get-minimum-library-initialization-level)() const |
| [bool](class_bool.md#class-bool) | [is\_library\_open](#class-gdextension-method-is-library-open)() const |

* * *

## Enumerations

enum **InitializationLevel**: [🔗](#enum-gdextension-initializationlevel)

[InitializationLevel](#enum-gdextension-initializationlevel) **INITIALIZATION\_LEVEL\_CORE** = `0`

The library is initialized at the same time as the core features of the engine.

[InitializationLevel](#enum-gdextension-initializationlevel) **INITIALIZATION\_LEVEL\_SERVERS** = `1`

The library is initialized at the same time as the engine's servers (such as [RenderingServer](class_renderingserver.md#class-renderingserver) or [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d)).

[InitializationLevel](#enum-gdextension-initializationlevel) **INITIALIZATION\_LEVEL\_SCENE** = `2`

The library is initialized at the same time as the engine's scene-related classes.

[InitializationLevel](#enum-gdextension-initializationlevel) **INITIALIZATION\_LEVEL\_EDITOR** = `3`

The library is initialized at the same time as the engine's editor classes. Only happens when loading the GDExtension in the editor.

* * *

## Method Descriptions

[InitializationLevel](#enum-gdextension-initializationlevel) **get\_minimum\_library\_initialization\_level**() const [🔗](#class-gdextension-method-get-minimum-library-initialization-level)

Returns the lowest level required for this extension to be properly initialized (see the [InitializationLevel](#enum-gdextension-initializationlevel) enum).

* * *

[bool](class_bool.md#class-bool) **is\_library\_open**() const [🔗](#class-gdextension-method-is-library-open)

Returns `true` if this extension's library has been opened.

[Previous](class_fontvariation.md "FontVariation") [Next](class_gdscript.md "GDScript")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_fontvariation.md "FontVariation") [Next](class_gdscript.md "GDScript")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).