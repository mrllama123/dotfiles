---
title: Texture3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_texture3d.html
crawled_at: "2026-08-13T10:25:47+12:00"
content_hash: f6275523316aadc4e85f689b57bdfe058e4a8d3b7313532b8e686975dd508bc8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Texture3D

* * *

# Texture3D

**Inherits:** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [CompressedTexture3D](class_compressedtexture3d.md#class-compressedtexture3d), [ImageTexture3D](class_imagetexture3d.md#class-imagetexture3d), [NoiseTexture3D](class_noisetexture3d.md#class-noisetexture3d), [PlaceholderTexture3D](class_placeholdertexture3d.md#class-placeholdertexture3d), [Texture3DRD](class_texture3drd.md#class-texture3drd)

Base class for 3-dimensional textures.

## Description

Base class for [ImageTexture3D](class_imagetexture3d.md#class-imagetexture3d) and [CompressedTexture3D](class_compressedtexture3d.md#class-compressedtexture3d). Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. **Texture3D** is the base class for all 3-dimensional texture types. See also [TextureLayered](class_texturelayered.md#class-texturelayered).

All images need to have the same width, height and number of mipmap levels.

To create such a texture file yourself, reimport your image files using the Godot Editor import presets.

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] | [\_get\_data](#class-texture3d-private-method-get-data)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_depth](#class-texture3d-private-method-get-depth)() virtualrequiredconst |
| [Format](class_image.md#enum-image-format) | [\_get\_format](#class-texture3d-private-method-get-format)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_height](#class-texture3d-private-method-get-height)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_width](#class-texture3d-private-method-get-width)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_has\_mipmaps](#class-texture3d-private-method-has-mipmaps)() virtualrequiredconst |
| [Resource](class_resource.md#class-resource) | [create\_placeholder](#class-texture3d-method-create-placeholder)() const |
| [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] | [get\_data](#class-texture3d-method-get-data)() const |
| [int](class_int.md#class-int) | [get\_depth](#class-texture3d-method-get-depth)() const |
| [Format](class_image.md#enum-image-format) | [get\_format](#class-texture3d-method-get-format)() const |
| [int](class_int.md#class-int) | [get\_height](#class-texture3d-method-get-height)() const |
| [int](class_int.md#class-int) | [get\_width](#class-texture3d-method-get-width)() const |
| [bool](class_bool.md#class-bool) | [has\_mipmaps](#class-texture3d-method-has-mipmaps)() const |

* * *

## Method Descriptions

[Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] **\_get\_data**() virtualrequiredconst [🔗](#class-texture3d-private-method-get-data)

Called when the **Texture3D**'s data is queried.

* * *

[int](class_int.md#class-int) **\_get\_depth**() virtualrequiredconst [🔗](#class-texture3d-private-method-get-depth)

Called when the **Texture3D**'s depth is queried.

* * *

[Format](class_image.md#enum-image-format) **\_get\_format**() virtualrequiredconst [🔗](#class-texture3d-private-method-get-format)

Called when the **Texture3D**'s format is queried.

* * *

[int](class_int.md#class-int) **\_get\_height**() virtualrequiredconst [🔗](#class-texture3d-private-method-get-height)

Called when the **Texture3D**'s height is queried.

* * *

[int](class_int.md#class-int) **\_get\_width**() virtualrequiredconst [🔗](#class-texture3d-private-method-get-width)

Called when the **Texture3D**'s width is queried.

* * *

[bool](class_bool.md#class-bool) **\_has\_mipmaps**() virtualrequiredconst [🔗](#class-texture3d-private-method-has-mipmaps)

Called when the presence of mipmaps in the **Texture3D** is queried.

* * *

[Resource](class_resource.md#class-resource) **create\_placeholder**() const [🔗](#class-texture3d-method-create-placeholder)

Creates a placeholder version of this resource ( [PlaceholderTexture3D](class_placeholdertexture3d.md#class-placeholdertexture3d)).

* * *

[Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] **get\_data**() const [🔗](#class-texture3d-method-get-data)

Returns the **Texture3D**'s data as an array of [Image](class_image.md#class-image) s. Each [Image](class_image.md#class-image) represents a _slice_ of the **Texture3D**, with different slices mapping to different depth (Z axis) levels.

* * *

[int](class_int.md#class-int) **get\_depth**() const [🔗](#class-texture3d-method-get-depth)

Returns the **Texture3D**'s depth in pixels. Depth is typically represented by the Z axis (a dimension not present in [Texture2D](class_texture2d.md#class-texture2d)).

* * *

[Format](class_image.md#enum-image-format) **get\_format**() const [🔗](#class-texture3d-method-get-format)

Returns the current format being used by this texture.

* * *

[int](class_int.md#class-int) **get\_height**() const [🔗](#class-texture3d-method-get-height)

Returns the **Texture3D**'s height in pixels. Width is typically represented by the Y axis.

* * *

[int](class_int.md#class-int) **get\_width**() const [🔗](#class-texture3d-method-get-width)

Returns the **Texture3D**'s width in pixels. Width is typically represented by the X axis.

* * *

[bool](class_bool.md#class-bool) **has\_mipmaps**() const [🔗](#class-texture3d-method-has-mipmaps)

Returns `true` if the **Texture3D** has generated mipmaps.

[Previous](class_texture2drd.md "Texture2DRD") [Next](class_texture3drd.md "Texture3DRD")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_texture2drd.md "Texture2DRD") [Next](class_texture3drd.md "Texture3DRD")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).