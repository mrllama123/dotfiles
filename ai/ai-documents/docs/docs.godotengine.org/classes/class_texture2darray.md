---
title: Texture2DArray — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_texture2darray.html
crawled_at: "2026-08-13T10:41:59+12:00"
content_hash: 93fa7fbe9f2c1a3d06c1c51a80cd8a920ce3f47a46baa311e443eafbfdf5c0b5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Texture2DArray

* * *

# Texture2DArray

**Inherits:** [ImageTextureLayered](class_imagetexturelayered.md#class-imagetexturelayered) **<** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A single texture resource which consists of multiple, separate images. Each image has the same dimensions and number of mipmap levels.

## Description

A Texture2DArray is different from a Texture3D: The Texture2DArray does not support trilinear interpolation between the [Image](class_image.md#class-image) s, i.e. no blending. See also [Cubemap](class_cubemap.md#class-cubemap) and [CubemapArray](class_cubemaparray.md#class-cubemaparray), which are texture arrays with specialized cubemap functions.

A Texture2DArray is also different from an [AtlasTexture](class_atlastexture.md#class-atlastexture): In a Texture2DArray, all images are treated separately. In an atlas, the regions (i.e. the single images) can be of different sizes. Furthermore, you usually need to add a padding around the regions, to prevent accidental UV mapping to more than one region. The same goes for mipmapping: Mipmap chains are handled separately for each layer. In an atlas, the slicing has to be done manually in the fragment shader.

To create such a texture file yourself, reimport your image files using the Godot Editor import presets. To create a Texture2DArray from code, use [ImageTextureLayered.create\_from\_images()](class_imagetexturelayered.md#class-imagetexturelayered-method-create-from-images) on an instance of the Texture2DArray class.

## Methods

|     |     |
| --- | --- |
| [Resource](class_resource.md#class-resource) | [create\_placeholder](#class-texture2darray-method-create-placeholder)() const |

* * *

## Method Descriptions

[Resource](class_resource.md#class-resource) **create\_placeholder**() const [🔗](#class-texture2darray-method-create-placeholder)

Creates a placeholder version of this resource ( [PlaceholderTexture2DArray](class_placeholdertexture2darray.md#class-placeholdertexture2darray)).

[Previous](class_texture2d.md "Texture2D") [Next](class_texture2darrayrd.md "Texture2DArrayRD")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_texture2d.md "Texture2D") [Next](class_texture2darrayrd.md "Texture2DArrayRD")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).