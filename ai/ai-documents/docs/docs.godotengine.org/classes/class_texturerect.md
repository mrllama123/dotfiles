---
title: TextureRect — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_texturerect.html
crawled_at: "2026-08-13T10:32:20+12:00"
content_hash: 4e77838cb18651548c4e1879f1a439808f4bb15033c7e2a27038cf88084c32d6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextureRect

* * *

# TextureRect

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A control that displays a texture.

## Description

A control that displays a texture, for example an icon inside a GUI. The texture's placement can be controlled with the [stretch\_mode](#class-texturerect-property-stretch-mode) property. It can scale, tile, or stay centered inside its bounding rectangle.

## Tutorials

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Properties

|     |     |     |
| --- | --- | --- |
| [ExpandMode](#enum-texturerect-expandmode) | [expand\_mode](#class-texturerect-property-expand-mode) | `0` |
| [bool](class_bool.md#class-bool) | [flip\_h](#class-texturerect-property-flip-h) | `false` |
| [bool](class_bool.md#class-bool) | [flip\_v](#class-texturerect-property-flip-v) | `false` |
| [MouseFilter](class_control.md#enum-control-mousefilter) | mouse\_filter | `1` (overrides [Control](class_control.md#class-control-property-mouse-filter)) |
| [StretchMode](#enum-texturerect-stretchmode) | [stretch\_mode](#class-texturerect-property-stretch-mode) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-texturerect-property-texture) |  |

* * *

## Enumerations

enum **ExpandMode**: [🔗](#enum-texturerect-expandmode)

[ExpandMode](#enum-texturerect-expandmode) **EXPAND\_KEEP\_SIZE** = `0`

The minimum size will be equal to texture size, i.e. **TextureRect** can't be smaller than the texture.

[ExpandMode](#enum-texturerect-expandmode) **EXPAND\_IGNORE\_SIZE** = `1`

The size of the texture won't be considered for minimum size calculation, so the **TextureRect** can be shrunk down past the texture size.

[ExpandMode](#enum-texturerect-expandmode) **EXPAND\_FIT\_WIDTH** = `2`

The height of the texture will be ignored. Minimum width will be equal to the current height. Useful for horizontal layouts, e.g. inside [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer).

[ExpandMode](#enum-texturerect-expandmode) **EXPAND\_FIT\_WIDTH\_PROPORTIONAL** = `3`

Same as [EXPAND\_FIT\_WIDTH](#class-texturerect-constant-expand-fit-width), but keeps texture's aspect ratio.

[ExpandMode](#enum-texturerect-expandmode) **EXPAND\_FIT\_HEIGHT** = `4`

The width of the texture will be ignored. Minimum height will be equal to the current width. Useful for vertical layouts, e.g. inside [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer).

[ExpandMode](#enum-texturerect-expandmode) **EXPAND\_FIT\_HEIGHT\_PROPORTIONAL** = `5`

Same as [EXPAND\_FIT\_HEIGHT](#class-texturerect-constant-expand-fit-height), but keeps texture's aspect ratio.

* * *

enum **StretchMode**: [🔗](#enum-texturerect-stretchmode)

[StretchMode](#enum-texturerect-stretchmode) **STRETCH\_SCALE** = `0`

Scale to fit the node's bounding rectangle.

[StretchMode](#enum-texturerect-stretchmode) **STRETCH\_TILE** = `1`

Tile inside the node's bounding rectangle.

[StretchMode](#enum-texturerect-stretchmode) **STRETCH\_KEEP** = `2`

The texture keeps its original size and stays in the bounding rectangle's top-left corner.

[StretchMode](#enum-texturerect-stretchmode) **STRETCH\_KEEP\_CENTERED** = `3`

The texture keeps its original size and stays centered in the node's bounding rectangle.

[StretchMode](#enum-texturerect-stretchmode) **STRETCH\_KEEP\_ASPECT** = `4`

Scale the texture to fit the node's bounding rectangle, but maintain the texture's aspect ratio.

[StretchMode](#enum-texturerect-stretchmode) **STRETCH\_KEEP\_ASPECT\_CENTERED** = `5`

Scale the texture to fit the node's bounding rectangle, center it and maintain its aspect ratio.

[StretchMode](#enum-texturerect-stretchmode) **STRETCH\_KEEP\_ASPECT\_COVERED** = `6`

Scale the texture so that the shorter side fits the bounding rectangle. The other side clips to the node's limits.

* * *

## Property Descriptions

[ExpandMode](#enum-texturerect-expandmode) **expand\_mode** = `0` [🔗](#class-texturerect-property-expand-mode)

- void **set\_expand\_mode**(value: [ExpandMode](#enum-texturerect-expandmode))

- [ExpandMode](#enum-texturerect-expandmode) **get\_expand\_mode**()


**Experimental:** Using [EXPAND\_FIT\_WIDTH](#class-texturerect-constant-expand-fit-width), [EXPAND\_FIT\_WIDTH\_PROPORTIONAL](#class-texturerect-constant-expand-fit-width-proportional), [EXPAND\_FIT\_HEIGHT](#class-texturerect-constant-expand-fit-height), or [EXPAND\_FIT\_HEIGHT\_PROPORTIONAL](#class-texturerect-constant-expand-fit-height-proportional) may result in unstable behavior in some [Container](class_container.md#class-container) controls. This behavior may be re-evaluated and changed in the future.

Defines how minimum size is determined based on the texture's size.

* * *

[bool](class_bool.md#class-bool) **flip\_h** = `false` [🔗](#class-texturerect-property-flip-h)

- void **set\_flip\_h**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flipped\_h**()


If `true`, texture is flipped horizontally.

* * *

[bool](class_bool.md#class-bool) **flip\_v** = `false` [🔗](#class-texturerect-property-flip-v)

- void **set\_flip\_v**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flipped\_v**()


If `true`, texture is flipped vertically.

* * *

[StretchMode](#enum-texturerect-stretchmode) **stretch\_mode** = `0` [🔗](#class-texturerect-property-stretch-mode)

- void **set\_stretch\_mode**(value: [StretchMode](#enum-texturerect-stretchmode))

- [StretchMode](#enum-texturerect-stretchmode) **get\_stretch\_mode**()


Controls the texture's behavior when resizing the node's bounding rectangle.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-texturerect-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


The node's [Texture2D](class_texture2d.md#class-texture2d) resource.

[Previous](class_textureprogressbar.md "TextureProgressBar") [Next](class_tilemap.md "TileMap")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_textureprogressbar.md "TextureProgressBar") [Next](class_tilemap.md "TileMap")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).