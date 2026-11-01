---
title: PlaceholderTextureLayered — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_placeholdertexturelayered.html
crawled_at: "2026-08-13T10:27:10+12:00"
content_hash: 9340f41af9f091d42de21eb1339423228d844399b91e342d69dbb52074e42d36
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PlaceholderTextureLayered

* * *

# PlaceholderTextureLayered

**Inherits:** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [PlaceholderCubemap](class_placeholdercubemap.md#class-placeholdercubemap), [PlaceholderCubemapArray](class_placeholdercubemaparray.md#class-placeholdercubemaparray), [PlaceholderTexture2DArray](class_placeholdertexture2darray.md#class-placeholdertexture2darray)

Placeholder class for a 2-dimensional texture array.

## Description

This class is used when loading a project that uses a [TextureLayered](class_texturelayered.md#class-texturelayered) subclass in 2 conditions:

- When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.

- When this subclass is missing due to using a different engine version or build (e.g. modules disabled).


**Note:** This is not intended to be used as an actual texture for rendering. It is not guaranteed to work like one in shaders or materials (for example when calculating UV).

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [layers](#class-placeholdertexturelayered-property-layers) | `1` |
| [Vector2i](class_vector2i.md#class-vector2i) | [size](#class-placeholdertexturelayered-property-size) | `Vector2i(1, 1)` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **layers** = `1` [🔗](#class-placeholdertexturelayered-property-layers)

- void **set\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_layers**()


The number of layers in the texture array.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **size** = `Vector2i(1, 1)` [🔗](#class-placeholdertexturelayered-property-size)

- void **set\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_size**()


The size of each texture layer (in pixels).

[Previous](class_placeholdertexture3d.md "PlaceholderTexture3D") [Next](class_planemesh.md "PlaneMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_placeholdertexture3d.md "PlaceholderTexture3D") [Next](class_planemesh.md "PlaneMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).