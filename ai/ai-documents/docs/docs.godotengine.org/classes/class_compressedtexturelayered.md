---
title: CompressedTextureLayered — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_compressedtexturelayered.html
crawled_at: "2026-08-13T10:30:14+12:00"
content_hash: 8b4f56ef74bf06a11cd22751b8d6506b6dd35f834c8b9a0532cc982b006cd2f3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CompressedTextureLayered

* * *

# CompressedTextureLayered

**Inherits:** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [CompressedCubemap](class_compressedcubemap.md#class-compressedcubemap), [CompressedCubemapArray](class_compressedcubemaparray.md#class-compressedcubemaparray), [CompressedTexture2DArray](class_compressedtexture2darray.md#class-compressedtexture2darray)

Base class for texture arrays that can optionally be compressed.

## Description

Base class for [CompressedTexture2DArray](class_compressedtexture2darray.md#class-compressedtexture2darray) and [CompressedTexture3D](class_compressedtexture3d.md#class-compressedtexture3d). Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also [TextureLayered](class_texturelayered.md#class-texturelayered).

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [load\_path](#class-compressedtexturelayered-property-load-path) | `""` |

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load](#class-compressedtexturelayered-method-load)(path: [String](class_string.md#class-string)) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **load\_path** = `""` [🔗](#class-compressedtexturelayered-property-load-path)

- [Error](class_@globalscope.md#enum-globalscope-error) **load**(path: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_load\_path**()


The path the texture should be loaded from.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **load**(path: [String](class_string.md#class-string)) [🔗](#class-compressedtexturelayered-method-load)

Loads the texture at `path`.

[Previous](class_compressedtexture3d.md "CompressedTexture3D") [Next](class_concavepolygonshape2d.md "ConcavePolygonShape2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_compressedtexture3d.md "CompressedTexture3D") [Next](class_concavepolygonshape2d.md "ConcavePolygonShape2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).