---
title: TextureLayered — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_texturelayered.html
crawled_at: "2026-08-13T10:29:19+12:00"
content_hash: 3c9e0f0f637ee0619a01a716ea7f7ae1a81915ca509fd12b7cc9164e6fd595f6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextureLayered

* * *

# TextureLayered

**Inherits:** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [CompressedTextureLayered](class_compressedtexturelayered.md#class-compressedtexturelayered), [ImageTextureLayered](class_imagetexturelayered.md#class-imagetexturelayered), [PlaceholderTextureLayered](class_placeholdertexturelayered.md#class-placeholdertexturelayered), [TextureLayeredRD](class_texturelayeredrd.md#class-texturelayeredrd)

Base class for texture types which contain the data of multiple [Image](class_image.md#class-image) s. Each image is of the same size and format.

## Description

Base class for [ImageTextureLayered](class_imagetexturelayered.md#class-imagetexturelayered) and [CompressedTextureLayered](class_compressedtexturelayered.md#class-compressedtexturelayered). Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also [Texture3D](class_texture3d.md#class-texture3d).

Data is set on a per-layer basis. For [Texture2DArray](class_texture2darray.md#class-texture2darray) s, the layer specifies the array layer.

All images need to have the same width, height and number of mipmap levels.

A **TextureLayered** can be loaded with [ResourceLoader.load()](class_resourceloader.md#class-resourceloader-method-load).

Internally, Godot maps these files to their respective counterparts in the target rendering driver (Vulkan, OpenGL3).

## Methods

|     |     |
| --- | --- |
| [Format](class_image.md#enum-image-format) | [\_get\_format](#class-texturelayered-private-method-get-format)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_height](#class-texturelayered-private-method-get-height)() virtualrequiredconst |
| [Image](class_image.md#class-image) | [\_get\_layer\_data](#class-texturelayered-private-method-get-layer-data)(layer\_index: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_layered\_type](#class-texturelayered-private-method-get-layered-type)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_layers](#class-texturelayered-private-method-get-layers)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_width](#class-texturelayered-private-method-get-width)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_has\_mipmaps](#class-texturelayered-private-method-has-mipmaps)() virtualrequiredconst |
| [Format](class_image.md#enum-image-format) | [get\_format](#class-texturelayered-method-get-format)() const |
| [int](class_int.md#class-int) | [get\_height](#class-texturelayered-method-get-height)() const |
| [Image](class_image.md#class-image) | [get\_layer\_data](#class-texturelayered-method-get-layer-data)(layer: [int](class_int.md#class-int)) const |
| [LayeredType](#enum-texturelayered-layeredtype) | [get\_layered\_type](#class-texturelayered-method-get-layered-type)() const |
| [int](class_int.md#class-int) | [get\_layers](#class-texturelayered-method-get-layers)() const |
| [int](class_int.md#class-int) | [get\_width](#class-texturelayered-method-get-width)() const |
| [bool](class_bool.md#class-bool) | [has\_mipmaps](#class-texturelayered-method-has-mipmaps)() const |

* * *

## Enumerations

enum **LayeredType**: [🔗](#enum-texturelayered-layeredtype)

[LayeredType](#enum-texturelayered-layeredtype) **LAYERED\_TYPE\_2D\_ARRAY** = `0`

Texture is a generic [Texture2DArray](class_texture2darray.md#class-texture2darray).

[LayeredType](#enum-texturelayered-layeredtype) **LAYERED\_TYPE\_CUBEMAP** = `1`

Texture is a [Cubemap](class_cubemap.md#class-cubemap), with each side in its own layer (6 in total).

[LayeredType](#enum-texturelayered-layeredtype) **LAYERED\_TYPE\_CUBEMAP\_ARRAY** = `2`

Texture is a [CubemapArray](class_cubemaparray.md#class-cubemaparray), with each cubemap being made of 6 layers.

* * *

## Method Descriptions

[Format](class_image.md#enum-image-format) **\_get\_format**() virtualrequiredconst [🔗](#class-texturelayered-private-method-get-format)

Called when the **TextureLayered**'s format is queried.

* * *

[int](class_int.md#class-int) **\_get\_height**() virtualrequiredconst [🔗](#class-texturelayered-private-method-get-height)

Called when the **TextureLayered**'s height is queried.

* * *

[Image](class_image.md#class-image) **\_get\_layer\_data**(layer\_index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-texturelayered-private-method-get-layer-data)

Called when the data for a layer in the **TextureLayered** is queried.

* * *

[int](class_int.md#class-int) **\_get\_layered\_type**() virtualrequiredconst [🔗](#class-texturelayered-private-method-get-layered-type)

Called when the layers' type in the **TextureLayered** is queried.

* * *

[int](class_int.md#class-int) **\_get\_layers**() virtualrequiredconst [🔗](#class-texturelayered-private-method-get-layers)

Called when the number of layers in the **TextureLayered** is queried.

* * *

[int](class_int.md#class-int) **\_get\_width**() virtualrequiredconst [🔗](#class-texturelayered-private-method-get-width)

Called when the **TextureLayered**'s width queried.

* * *

[bool](class_bool.md#class-bool) **\_has\_mipmaps**() virtualrequiredconst [🔗](#class-texturelayered-private-method-has-mipmaps)

Called when the presence of mipmaps in the **TextureLayered** is queried.

* * *

[Format](class_image.md#enum-image-format) **get\_format**() const [🔗](#class-texturelayered-method-get-format)

Returns the current format being used by this texture.

* * *

[int](class_int.md#class-int) **get\_height**() const [🔗](#class-texturelayered-method-get-height)

Returns the height of the texture in pixels. Height is typically represented by the Y axis.

* * *

[Image](class_image.md#class-image) **get\_layer\_data**(layer: [int](class_int.md#class-int)) const [🔗](#class-texturelayered-method-get-layer-data)

Returns an [Image](class_image.md#class-image) resource with the data from specified `layer`.

* * *

[LayeredType](#enum-texturelayered-layeredtype) **get\_layered\_type**() const [🔗](#class-texturelayered-method-get-layered-type)

Returns the **TextureLayered**'s type. The type determines how the data is accessed, with cubemaps having special types.

* * *

[int](class_int.md#class-int) **get\_layers**() const [🔗](#class-texturelayered-method-get-layers)

Returns the number of referenced [Image](class_image.md#class-image) s.

* * *

[int](class_int.md#class-int) **get\_width**() const [🔗](#class-texturelayered-method-get-width)

Returns the width of the texture in pixels. Width is typically represented by the X axis.

* * *

[bool](class_bool.md#class-bool) **has\_mipmaps**() const [🔗](#class-texturelayered-method-has-mipmaps)

Returns `true` if the layers have generated mipmaps.

[Previous](class_texturecubemaprd.md "TextureCubemapRD") [Next](class_texturelayeredrd.md "TextureLayeredRD")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_texturecubemaprd.md "TextureCubemapRD") [Next](class_texturelayeredrd.md "TextureLayeredRD")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).