---
title: ImageTextureLayered — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_imagetexturelayered.html
crawled_at: "2026-08-13T10:35:34+12:00"
content_hash: a4f2a81c54c17a301303005a21f2d09a7123bc2e08da64635ae98675842be61d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ImageTextureLayered

* * *

# ImageTextureLayered

**Inherits:** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [Cubemap](class_cubemap.md#class-cubemap), [CubemapArray](class_cubemaparray.md#class-cubemaparray), [Texture2DArray](class_texture2darray.md#class-texture2darray)

Base class for texture types which contain the data of multiple [ImageTexture](class_imagetexture.md#class-imagetexture) s. Each image is of the same size and format.

## Description

Base class for [Texture2DArray](class_texture2darray.md#class-texture2darray), [Cubemap](class_cubemap.md#class-cubemap) and [CubemapArray](class_cubemaparray.md#class-cubemaparray). Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also [Texture3D](class_texture3d.md#class-texture3d).

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_from\_images](#class-imagetexturelayered-method-create-from-images)(images: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\]) |
| void | [update\_layer](#class-imagetexturelayered-method-update-layer)(image: [Image](class_image.md#class-image), layer: [int](class_int.md#class-int)) |

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **create\_from\_images**(images: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\]) [🔗](#class-imagetexturelayered-method-create-from-images)

Creates an **ImageTextureLayered** from an array of [Image](class_image.md#class-image) s. See [Image.create()](class_image.md#class-image-method-create) for the expected data format. The first image decides the width, height, image format and mipmapping setting. The other images _must_ have the same width, height, image format and mipmapping setting.

Each [Image](class_image.md#class-image) represents one `layer`.

```
# Fill in an array of Images with different colors.
var images = []
const LAYERS = 6
for i in LAYERS:
    var image = Image.create_empty(128, 128, false, Image.FORMAT_RGB8)
    if i % 3 == 0:
        image.fill(Color.RED)
    elif i % 3 == 1:
        image.fill(Color.GREEN)
    else:
        image.fill(Color.BLUE)
    images.push_back(image)

# Create and save a 2D texture array. The array of images must have at least 1 Image.
var texture_2d_array = Texture2DArray.new()
texture_2d_array.create_from_images(images)
ResourceSaver.save(texture_2d_array, "res://texture_2d_array.res", ResourceSaver.FLAG_COMPRESS)

# Create and save a cubemap. The array of images must have exactly 6 Images.
# The cubemap's images are specified in this order: X+, X-, Y+, Y-, Z+, Z-
# (in Godot's coordinate system, so Y+ is "up" and Z- is "forward").
var cubemap = Cubemap.new()
cubemap.create_from_images(images)
ResourceSaver.save(cubemap, "res://cubemap.res", ResourceSaver.FLAG_COMPRESS)

# Create and save a cubemap array. The array of images must have a multiple of 6 Images.
# Each cubemap's images are specified in this order: X+, X-, Y+, Y-, Z+, Z-
# (in Godot's coordinate system, so Y+ is "up" and Z- is "forward").
var cubemap_array = CubemapArray.new()
cubemap_array.create_from_images(images)
ResourceSaver.save(cubemap_array, "res://cubemap_array.res", ResourceSaver.FLAG_COMPRESS)

```

* * *

void **update\_layer**(image: [Image](class_image.md#class-image), layer: [int](class_int.md#class-int)) [🔗](#class-imagetexturelayered-method-update-layer)

Replaces the existing [Image](class_image.md#class-image) data at the given `layer` with this new image.

The given [Image](class_image.md#class-image) must have the same width, height, image format, and mipmapping flag as the rest of the referenced images.

If the image format is unsupported, it will be decompressed and converted to a similar and supported [Format](class_image.md#enum-image-format).

The update is immediate: it's synchronized with drawing.

[Previous](class_imagetexture3d.md "ImageTexture3D") [Next](class_immediatemesh.md "ImmediateMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_imagetexture3d.md "ImageTexture3D") [Next](class_immediatemesh.md "ImmediateMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).