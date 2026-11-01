---
title: CompressedTexture2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_compressedtexture2d.html
crawled_at: "2026-08-13T10:42:47+12:00"
content_hash: 53d38acc9a742f8d908b177c3d2a4ad6b972aadd4e806e91f91beca3fd2c68cf
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CompressedTexture2D

* * *

# CompressedTexture2D

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Texture with 2 dimensions, optionally compressed.

## Description

A texture that is loaded from a `.ctex` file. This file format is internal to Godot; it is created by importing other image formats with the import system. **CompressedTexture2D** can use one of 4 compression methods (including a lack of any compression):

- Lossless (WebP or PNG, uncompressed on the GPU)

- Lossy (WebP, uncompressed on the GPU)

- VRAM Compressed (compressed on the GPU)

- VRAM Uncompressed (uncompressed on the GPU)

- Basis Universal (compressed on the GPU. Lower file sizes than VRAM Compressed, but slower to compress and lower quality than VRAM Compressed)


Only **VRAM Compressed** actually reduces the memory usage on the GPU. The **Lossless** and **Lossy** compression methods will reduce the required storage on disk, but they will not reduce memory usage on the GPU as the texture is sent to the GPU uncompressed.

Using **VRAM Compressed** also improves loading times, as VRAM-compressed textures are faster to load compared to textures using lossless or lossy compression. VRAM compression can exhibit noticeable artifacts and is intended to be used for 3D rendering, not 2D.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [load\_path](#class-compressedtexture2d-property-load-path) | `""` |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load](#class-compressedtexture2d-method-load)(path: [String](class_string.md#class-string)) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **load\_path** = `""` [🔗](#class-compressedtexture2d-property-load-path)

- [Error](class_@globalscope.md#enum-globalscope-error) **load**(path: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_load\_path**()


The **CompressedTexture2D**'s file path to a `.ctex` file.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **load**(path: [String](class_string.md#class-string)) [🔗](#class-compressedtexture2d-method-load)

Loads the texture from the specified `path`.

[Previous](class_compressedcubemaparray.md "CompressedCubemapArray") [Next](class_compressedtexture2darray.md "CompressedTexture2DArray")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_compressedcubemaparray.md "CompressedCubemapArray") [Next](class_compressedtexture2darray.md "CompressedTexture2DArray")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).