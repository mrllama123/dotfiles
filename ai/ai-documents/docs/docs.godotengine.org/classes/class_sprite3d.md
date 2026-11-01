---
title: Sprite3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_sprite3d.html
crawled_at: "2026-08-13T10:40:43+12:00"
content_hash: ee0a67c1c6beb4875730ca4d609192543d9444ad337b0eaeb2624bb595a45837
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Sprite3D

* * *

# Sprite3D

**Inherits:** [SpriteBase3D](class_spritebase3d.md#class-spritebase3d) **<** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

2D sprite node in a 3D world.

## Description

A node that displays a 2D texture in a 3D environment. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation. See also [SpriteBase3D](class_spritebase3d.md#class-spritebase3d) where properties such as the billboard mode are defined.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [frame](#class-sprite3d-property-frame) | `0` |
| [Vector2i](class_vector2i.md#class-vector2i) | [frame\_coords](#class-sprite3d-property-frame-coords) | `Vector2i(0, 0)` |
| [int](class_int.md#class-int) | [hframes](#class-sprite3d-property-hframes) | `1` |
| [bool](class_bool.md#class-bool) | [region\_enabled](#class-sprite3d-property-region-enabled) | `false` |
| [Rect2](class_rect2.md#class-rect2) | [region\_rect](#class-sprite3d-property-region-rect) | `Rect2(0, 0, 0, 0)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-sprite3d-property-texture) |  |
| [int](class_int.md#class-int) | [vframes](#class-sprite3d-property-vframes) | `1` |

* * *

## Signals

**frame\_changed**() [🔗](#class-sprite3d-signal-frame-changed)

Emitted when the [frame](#class-sprite3d-property-frame) changes.

* * *

**texture\_changed**() [🔗](#class-sprite3d-signal-texture-changed)

Emitted when the [texture](#class-sprite3d-property-texture) changes.

* * *

## Property Descriptions

[int](class_int.md#class-int) **frame** = `0` [🔗](#class-sprite3d-property-frame)

- void **set\_frame**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_frame**()


Current frame to display from sprite sheet. [hframes](#class-sprite3d-property-hframes) or [vframes](#class-sprite3d-property-vframes) must be greater than 1. This property is automatically adjusted when [hframes](#class-sprite3d-property-hframes) or [vframes](#class-sprite3d-property-vframes) are changed to keep pointing to the same visual frame (same column and row). If that's impossible, this value is reset to `0`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **frame\_coords** = `Vector2i(0, 0)` [🔗](#class-sprite3d-property-frame-coords)

- void **set\_frame\_coords**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_frame\_coords**()


Coordinates of the frame to display from sprite sheet. This is as an alias for the [frame](#class-sprite3d-property-frame) property. [hframes](#class-sprite3d-property-hframes) or [vframes](#class-sprite3d-property-vframes) must be greater than 1.

* * *

[int](class_int.md#class-int) **hframes** = `1` [🔗](#class-sprite3d-property-hframes)

- void **set\_hframes**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_hframes**()


The number of columns in the sprite sheet. When this property is changed, [frame](#class-sprite3d-property-frame) is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, [frame](#class-sprite3d-property-frame) is reset to `0`.

* * *

[bool](class_bool.md#class-bool) **region\_enabled** = `false` [🔗](#class-sprite3d-property-region-enabled)

- void **set\_region\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_region\_enabled**()


If `true`, the sprite will use [region\_rect](#class-sprite3d-property-region-rect) and display only the specified part of its texture.

* * *

[Rect2](class_rect2.md#class-rect2) **region\_rect** = `Rect2(0, 0, 0, 0)` [🔗](#class-sprite3d-property-region-rect)

- void **set\_region\_rect**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_region\_rect**()


The region of the atlas texture to display. [region\_enabled](#class-sprite3d-property-region-enabled) must be `true`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-sprite3d-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


[Texture2D](class_texture2d.md#class-texture2d) object to draw. If [GeometryInstance3D.material\_override](class_geometryinstance3d.md#class-geometryinstance3d-property-material-override) is used, this will be overridden. The size information is still used.

* * *

[int](class_int.md#class-int) **vframes** = `1` [🔗](#class-sprite3d-property-vframes)

- void **set\_vframes**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_vframes**()


The number of rows in the sprite sheet. When this property is changed, [frame](#class-sprite3d-property-frame) is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, [frame](#class-sprite3d-property-frame) is reset to `0`.

[Previous](class_sprite2d.md "Sprite2D") [Next](class_spritebase3d.md "SpriteBase3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_sprite2d.md "Sprite2D") [Next](class_spritebase3d.md "SpriteBase3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).