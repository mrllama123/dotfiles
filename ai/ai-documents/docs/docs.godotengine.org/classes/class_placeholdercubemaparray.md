---
title: PlaceholderCubemapArray — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_placeholdercubemaparray.html
crawled_at: "2026-08-13T10:26:17+12:00"
content_hash: 3ae2a5506f6bd6a5e083cbde72271ca42196bd3a88356a5deae75534aa33944c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PlaceholderCubemapArray

* * *

# PlaceholderCubemapArray

**Inherits:** [PlaceholderTextureLayered](class_placeholdertexturelayered.md#class-placeholdertexturelayered) **<** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [CubemapArray](class_cubemaparray.md#class-cubemaparray) without image data.

## Description

This class replaces a [CubemapArray](class_cubemaparray.md#class-cubemaparray) or a [CubemapArray](class_cubemaparray.md#class-cubemaparray)-derived class in 2 conditions:

- In dedicated server mode, where the image data shouldn't affect game logic. This allows reducing the exported PCK's size significantly.

- When the [CubemapArray](class_cubemaparray.md#class-cubemaparray)-derived class is missing, for example when using a different engine version.


**Note:** This class is not intended for rendering or for use in shaders. Operations like calculating UV are not guaranteed to work.

[Previous](class_placeholdercubemap.md "PlaceholderCubemap") [Next](class_placeholdermaterial.md "PlaceholderMaterial")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_placeholdercubemap.md "PlaceholderCubemap") [Next](class_placeholdermaterial.md "PlaceholderMaterial")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).