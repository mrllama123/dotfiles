---
title: PlaceholderTexture3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_placeholdertexture3d.html
crawled_at: "2026-08-13T10:24:37+12:00"
content_hash: 5f6e7709cb0ec90a15eb8d69a4a1cfe0e157e1af7154ab4665b94dcbf3d921f5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PlaceholderTexture3D

* * *

# PlaceholderTexture3D

**Inherits:** [Texture3D](class_texture3d.md#class-texture3d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Placeholder class for a 3-dimensional texture.

## Description

This class is used when loading a project that uses a [Texture3D](class_texture3d.md#class-texture3d) subclass in 2 conditions:

- When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.

- When this subclass is missing due to using a different engine version or build (e.g. modules disabled).


**Note:** This is not intended to be used as an actual texture for rendering. It is not guaranteed to work like one in shaders or materials (for example when calculating UV).

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3i](class_vector3i.md#class-vector3i) | [size](#class-placeholdertexture3d-property-size) | `Vector3i(1, 1, 1)` |

* * *

## Property Descriptions

[Vector3i](class_vector3i.md#class-vector3i) **size** = `Vector3i(1, 1, 1)` [🔗](#class-placeholdertexture3d-property-size)

- void **set\_size**(value: [Vector3i](class_vector3i.md#class-vector3i))

- [Vector3i](class_vector3i.md#class-vector3i) **get\_size**()


The texture's size (in pixels).

[Previous](class_placeholdertexture2darray.md "PlaceholderTexture2DArray") [Next](class_placeholdertexturelayered.md "PlaceholderTextureLayered")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_placeholdertexture2darray.md "PlaceholderTexture2DArray") [Next](class_placeholdertexturelayered.md "PlaceholderTextureLayered")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).