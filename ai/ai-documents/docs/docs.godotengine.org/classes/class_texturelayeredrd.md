---
title: TextureLayeredRD — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_texturelayeredrd.html
crawled_at: "2026-08-13T10:42:25+12:00"
content_hash: 2b54dae38fb14baa40d2a18f51b68edfbcb57817b282e17d457cfaf552e2bd22
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextureLayeredRD

* * *

# TextureLayeredRD

**Inherits:** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [Texture2DArrayRD](class_texture2darrayrd.md#class-texture2darrayrd), [TextureCubemapArrayRD](class_texturecubemaparrayrd.md#class-texturecubemaparrayrd), [TextureCubemapRD](class_texturecubemaprd.md#class-texturecubemaprd)

Abstract base class for layered texture RD types.

## Description

Base class for [Texture2DArrayRD](class_texture2darrayrd.md#class-texture2darrayrd), [TextureCubemapRD](class_texturecubemaprd.md#class-texturecubemaprd) and [TextureCubemapArrayRD](class_texturecubemaparrayrd.md#class-texturecubemaparrayrd). Cannot be used directly, but contains all the functions necessary for accessing the derived resource types.

## Properties

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [texture\_rd\_rid](#class-texturelayeredrd-property-texture-rd-rid) |

* * *

## Property Descriptions

[RID](class_rid.md#class-rid) **texture\_rd\_rid** [🔗](#class-texturelayeredrd-property-texture-rd-rid)

- void **set\_texture\_rd\_rid**(value: [RID](class_rid.md#class-rid))

- [RID](class_rid.md#class-rid) **get\_texture\_rd\_rid**()


The RID of the texture object created on the [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

[Previous](class_texturelayered.md "TextureLayered") [Next](class_theme.md "Theme")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_texturelayered.md "TextureLayered") [Next](class_theme.md "Theme")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).