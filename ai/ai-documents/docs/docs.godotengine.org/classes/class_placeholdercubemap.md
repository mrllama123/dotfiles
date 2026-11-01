---
title: PlaceholderCubemap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_placeholdercubemap.html
crawled_at: "2026-08-13T10:25:18+12:00"
content_hash: f1ce2ac8f39520ade5c249e69e1814666df2f99a1ed7c60a563b7a60998c9d8d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PlaceholderCubemap

* * *

# PlaceholderCubemap

**Inherits:** [PlaceholderTextureLayered](class_placeholdertexturelayered.md#class-placeholdertexturelayered) **<** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Cubemap](class_cubemap.md#class-cubemap) without image data.

## Description

This class replaces a [Cubemap](class_cubemap.md#class-cubemap) or a [Cubemap](class_cubemap.md#class-cubemap)-derived class in 2 conditions:

- In dedicated server mode, where the image data shouldn't affect game logic. This allows reducing the exported PCK's size significantly.

- When the [Cubemap](class_cubemap.md#class-cubemap)-derived class is missing, for example when using a different engine version.


**Note:** This class is not intended for rendering or for use in shaders. Operations like calculating UV are not guaranteed to work.

[Previous](class_physicsmaterial.md "PhysicsMaterial") [Next](class_placeholdercubemaparray.md "PlaceholderCubemapArray")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsmaterial.md "PhysicsMaterial") [Next](class_placeholdercubemaparray.md "PlaceholderCubemapArray")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).