---
title: CompressedCubemapArray — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_compressedcubemaparray.html
crawled_at: "2026-08-13T10:34:53+12:00"
content_hash: c88336169bea9df7d92d3e6b29d81aeaeae76760e7d22bf3eb97533d998fd4ba
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CompressedCubemapArray

* * *

# CompressedCubemapArray

**Inherits:** [CompressedTextureLayered](class_compressedtexturelayered.md#class-compressedtexturelayered) **<** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An optionally compressed [CubemapArray](class_cubemaparray.md#class-cubemaparray).

## Description

A cubemap array that is loaded from a `.ccubearray` file. This file format is internal to Godot; it is created by importing other image formats with the import system. **CompressedCubemapArray** can use one of 4 compression methods:

- Lossless (WebP or PNG, uncompressed on the GPU)

- Lossy (WebP, uncompressed on the GPU)

- VRAM Compressed (compressed on the GPU)

- VRAM Uncompressed (uncompressed on the GPU)

- Basis Universal (compressed on the GPU. Lower file sizes than VRAM Compressed, but slower to compress and lower quality than VRAM Compressed)


Only **VRAM Compressed** actually reduces the memory usage on the GPU. The **Lossless** and **Lossy** compression methods will reduce the required storage on disk, but they will not reduce memory usage on the GPU as the texture is sent to the GPU uncompressed.

Using **VRAM Compressed** also improves loading times, as VRAM-compressed textures are faster to load compared to textures using lossless or lossy compression. VRAM compression can exhibit noticeable artifacts and is intended to be used for 3D rendering, not 2D.

See [CubemapArray](class_cubemaparray.md#class-cubemaparray) for a general description of cubemap arrays.

[Previous](class_compressedcubemap.md "CompressedCubemap") [Next](class_compressedtexture2d.md "CompressedTexture2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_compressedcubemap.md "CompressedCubemap") [Next](class_compressedtexture2d.md "CompressedTexture2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).