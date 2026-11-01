---
title: AtlasTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_atlastexture.html
crawled_at: "2026-08-13T10:35:20+12:00"
content_hash: 2736f2d63e5505fcaa712a2205e4ae08430d0b0537020e8bbcc64c06e1a0d163
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AtlasTexture

* * *

# AtlasTexture

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A texture that crops out part of another Texture2D.

## Description

[Texture2D](class_texture2d.md#class-texture2d) resource that draws only part of its [atlas](#class-atlastexture-property-atlas) texture, as defined by the [region](#class-atlastexture-property-region). An additional [margin](#class-atlastexture-property-margin) can also be set, which is useful for small adjustments.

Multiple **AtlasTexture** resources can be cropped from the same [atlas](#class-atlastexture-property-atlas). Packing many smaller textures into a singular large texture helps to optimize video memory costs and render calls.

**Note:** **AtlasTexture** cannot be used in an [AnimatedTexture](class_animatedtexture.md#class-animatedtexture), and will not tile properly in nodes such as [TextureRect](class_texturerect.md#class-texturerect) or [Sprite2D](class_sprite2d.md#class-sprite2d). To tile an **AtlasTexture**, modify its [region](#class-atlastexture-property-region) instead.

## Properties

|     |     |     |
| --- | --- | --- |
| [Texture2D](class_texture2d.md#class-texture2d) | [atlas](#class-atlastexture-property-atlas) |  |
| [bool](class_bool.md#class-bool) | [filter\_clip](#class-atlastexture-property-filter-clip) | `false` |
| [Rect2](class_rect2.md#class-rect2) | [margin](#class-atlastexture-property-margin) | `Rect2(0, 0, 0, 0)` |
| [Rect2](class_rect2.md#class-rect2) | [region](#class-atlastexture-property-region) | `Rect2(0, 0, 0, 0)` |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |

* * *

## Property Descriptions

[Texture2D](class_texture2d.md#class-texture2d) **atlas** [🔗](#class-atlastexture-property-atlas)

- void **set\_atlas**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_atlas**()


The texture that contains the atlas. Can be any type inheriting from [Texture2D](class_texture2d.md#class-texture2d), including another **AtlasTexture**.

* * *

[bool](class_bool.md#class-bool) **filter\_clip** = `false` [🔗](#class-atlastexture-property-filter-clip)

- void **set\_filter\_clip**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_filter\_clip**()


If `true`, the area outside of the [region](#class-atlastexture-property-region) is clipped to avoid bleeding of the surrounding texture pixels.

* * *

[Rect2](class_rect2.md#class-rect2) **margin** = `Rect2(0, 0, 0, 0)` [🔗](#class-atlastexture-property-margin)

- void **set\_margin**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_margin**()


The margin around the [region](#class-atlastexture-property-region). Useful for small adjustments. If the [Rect2.size](class_rect2.md#class-rect2-property-size) of this property ("w" and "h" in the editor) is set, the drawn texture is resized to fit within the margin.

* * *

[Rect2](class_rect2.md#class-rect2) **region** = `Rect2(0, 0, 0, 0)` [🔗](#class-atlastexture-property-region)

- void **set\_region**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_region**()


The region used to draw the [atlas](#class-atlastexture-property-atlas). If either dimension of the region's size is `0`, the value from [atlas](#class-atlastexture-property-atlas) size will be used for that axis instead.

[Previous](class_arrayoccluder3d.md "ArrayOccluder3D") [Next](class_audiobuslayout.md "AudioBusLayout")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_arrayoccluder3d.md "ArrayOccluder3D") [Next](class_audiobuslayout.md "AudioBusLayout")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).