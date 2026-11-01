---
title: ImageTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_imagetexture.html
crawled_at: "2026-08-13T10:41:57+12:00"
content_hash: d15e8d6de99fc56f655e2c5fcca56f0845b7cc51340d6fa9dcb2d38b95e486e9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ImageTexture

* * *

# ImageTexture

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Texture2D](class_texture2d.md#class-texture2d) based on an [Image](class_image.md#class-image).

## Description

A [Texture2D](class_texture2d.md#class-texture2d) based on an [Image](class_image.md#class-image). For an image to be displayed, an **ImageTexture** has to be created from it using the [create\_from\_image()](#class-imagetexture-method-create-from-image) method:

```
var image = Image.load_from_file("res://icon.svg")
var texture = ImageTexture.create_from_image(image)
$Sprite2D.texture = texture

```

This way, textures can be created at run-time by loading images both from within the editor and externally.

**Warning:** Prefer to load imported textures with [@GDScript.load()](class_@gdscript.md#class-gdscript-method-load) over loading them from within the filesystem dynamically with [Image.load()](class_image.md#class-image-method-load), as it may not work in exported projects:

```
var texture = load("res://icon.svg")
$Sprite2D.texture = texture

```

This is because images have to be imported as a [CompressedTexture2D](class_compressedtexture2d.md#class-compressedtexture2d) first to be loaded with [@GDScript.load()](class_@gdscript.md#class-gdscript-method-load). If you'd still like to load an image file just like any other [Resource](class_resource.md#class-resource), import it as an [Image](class_image.md#class-image) resource instead, and then load it normally using the [@GDScript.load()](class_@gdscript.md#class-gdscript-method-load) method.

**Note:** The image can be retrieved from an imported texture using the [Texture2D.get\_image()](class_texture2d.md#class-texture2d-method-get-image) method, which returns a copy of the image:

```
var texture = load("res://icon.svg")
var image = texture.get_image()

```

An **ImageTexture** is not meant to be operated from within the editor interface directly, and is mostly useful for rendering images on screen dynamically via code. If you need to generate images procedurally from within the editor, consider saving and importing images as custom texture resources implementing a new [EditorImportPlugin](class_editorimportplugin.md#class-editorimportplugin).

**Note:** The maximum texture size is 16384×16384 pixels due to graphics hardware limitations.

## Tutorials

- [Importing images](../tutorials/assets_pipeline/importing_images.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |

## Methods

|     |     |
| --- | --- |
| [ImageTexture](#class-imagetexture) | [create\_from\_image](#class-imagetexture-method-create-from-image)(image: [Image](class_image.md#class-image)) static |
| [Format](class_image.md#enum-image-format) | [get\_format](#class-imagetexture-method-get-format)() const |
| void | [set\_image](#class-imagetexture-method-set-image)(image: [Image](class_image.md#class-image)) |
| void | [set\_size\_override](#class-imagetexture-method-set-size-override)(size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [update](#class-imagetexture-method-update)(image: [Image](class_image.md#class-image)) |

* * *

## Method Descriptions

[ImageTexture](#class-imagetexture) **create\_from\_image**(image: [Image](class_image.md#class-image)) static [🔗](#class-imagetexture-method-create-from-image)

Creates a new **ImageTexture** and initializes it by allocating and setting the data from an [Image](class_image.md#class-image).

* * *

[Format](class_image.md#enum-image-format) **get\_format**() const [🔗](#class-imagetexture-method-get-format)

Returns the format of the texture.

* * *

void **set\_image**(image: [Image](class_image.md#class-image)) [🔗](#class-imagetexture-method-set-image)

Replaces the texture's data with a new [Image](class_image.md#class-image). This will re-allocate new memory for the texture.

If you want to update the image, but don't need to change its parameters (format, size), use [update()](#class-imagetexture-method-update) instead for better performance.

* * *

void **set\_size\_override**(size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-imagetexture-method-set-size-override)

Resizes the texture to the specified dimensions.

* * *

void **update**(image: [Image](class_image.md#class-image)) [🔗](#class-imagetexture-method-update)

Replaces the texture's data with a new [Image](class_image.md#class-image).

**Note:** The texture has to be created using [create\_from\_image()](#class-imagetexture-method-create-from-image) or initialized first with the [set\_image()](#class-imagetexture-method-set-image) method before it can be updated. The new image dimensions, format, and mipmaps configuration should match the existing texture's image configuration.

Use this method over [set\_image()](#class-imagetexture-method-set-image) if you need to update the texture frequently, which is faster than allocating additional memory for a new texture each time.

[Previous](class_image.md "Image") [Next](class_imagetexture3d.md "ImageTexture3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_image.md "Image") [Next](class_imagetexture3d.md "ImageTexture3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).