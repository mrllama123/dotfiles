---
title: PlaceholderTexture2DArray — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_placeholdertexture2darray.html
crawled_at: "2026-08-13T10:22:57+12:00"
content_hash: 1cf962411faaff5178c80bd1fcc6a1cbae7e7bdb3ee9c217eac9d3158f8e749a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PlaceholderTexture2DArray

* * *

# PlaceholderTexture2DArray

**Inherits:** [PlaceholderTextureLayered](class_placeholdertexturelayered.md#class-placeholdertexturelayered) **<** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Placeholder class for a 2-dimensional texture array.

## Description

This class is used when loading a project that uses a [Texture2D](class_texture2d.md#class-texture2d) subclass in 2 conditions:

- When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.

- When this subclass is missing due to using a different engine version or build (e.g. modules disabled).


**Note:** This is not intended to be used as an actual texture for rendering. It is not guaranteed to work like one in shaders or materials (for example when calculating UV).

[Previous](class_placeholdertexture2d.md "PlaceholderTexture2D") [Next](class_placeholdertexture3d.md "PlaceholderTexture3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_placeholdertexture2d.md "PlaceholderTexture2D") [Next](class_placeholdertexture3d.md "PlaceholderTexture3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).