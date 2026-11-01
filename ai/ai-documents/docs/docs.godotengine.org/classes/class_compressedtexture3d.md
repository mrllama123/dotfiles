---
title: CompressedTexture3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_compressedtexture3d.html
crawled_at: "2026-08-13T10:22:31+12:00"
content_hash: c74381efd2ad93fe0b7a1baccbca7fb34ee7f0f7201ab684dd4b00b694cc02c5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CompressedTexture3D

* * *

# CompressedTexture3D

**Inherits:** [Texture3D](class_texture3d.md#class-texture3d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Texture with 3 dimensions, optionally compressed.

## Description

**CompressedTexture3D** is the VRAM-compressed counterpart of [ImageTexture3D](class_imagetexture3d.md#class-imagetexture3d). The file extension for **CompressedTexture3D** files is `.ctex3d`. This file format is internal to Godot; it is created by importing other image formats with the import system.

**CompressedTexture3D** uses VRAM compression, which allows to reduce memory usage on the GPU when rendering the texture. This also improves loading times, as VRAM-compressed textures are faster to load compared to textures using lossless compression. VRAM compression can exhibit noticeable artifacts and is intended to be used for 3D rendering, not 2D.

See [Texture3D](class_texture3d.md#class-texture3d) for a general description of 3D textures.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [load\_path](#class-compressedtexture3d-property-load-path) | `""` |

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load](#class-compressedtexture3d-method-load)(path: [String](class_string.md#class-string)) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **load\_path** = `""` [🔗](#class-compressedtexture3d-property-load-path)

- [Error](class_@globalscope.md#enum-globalscope-error) **load**(path: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_load\_path**()


The **CompressedTexture3D**'s file path to a `.ctex3d` file.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **load**(path: [String](class_string.md#class-string)) [🔗](#class-compressedtexture3d-method-load)

Loads the texture from the specified `path`.

[Previous](class_compressedtexture2darray.md "CompressedTexture2DArray") [Next](class_compressedtexturelayered.md "CompressedTextureLayered")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_compressedtexture2darray.md "CompressedTexture2DArray") [Next](class_compressedtexturelayered.md "CompressedTextureLayered")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).