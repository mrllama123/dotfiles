---
title: PlaceholderTexture2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_placeholdertexture2d.html
crawled_at: "2026-08-13T10:32:10+12:00"
content_hash: 9272f93d05e7043c30d80c7afef7789d23f527a8eabac5f6fe0acf5b8f4da7db
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PlaceholderTexture2D

* * *

# PlaceholderTexture2D

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Placeholder class for a 2-dimensional texture.

## Description

This class is used when loading a project that uses a [Texture2D](class_texture2d.md#class-texture2d) subclass in 2 conditions:

- When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.

- When this subclass is missing due to using a different engine version or build (e.g. modules disabled).


**Note:** This is not intended to be used as an actual texture for rendering. It is not guaranteed to work like one in shaders or materials (for example when calculating UV).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [Vector2](class_vector2.md#class-vector2) | [size](#class-placeholdertexture2d-property-size) | `Vector2(1, 1)` |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **size** = `Vector2(1, 1)` [🔗](#class-placeholdertexture2d-property-size)

- void **set\_size**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_size**()


The texture's size (in pixels).

[Previous](class_placeholdermesh.md "PlaceholderMesh") [Next](class_placeholdertexture2darray.md "PlaceholderTexture2DArray")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_placeholdermesh.md "PlaceholderMesh") [Next](class_placeholdertexture2darray.md "PlaceholderTexture2DArray")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).