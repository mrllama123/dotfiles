---
title: StyleBoxTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_styleboxtexture.html
crawled_at: "2026-08-13T10:34:48+12:00"
content_hash: 7a305f570841cbb475f95457b1fc8079040375ee6ff7e5742e012ed5a893d761
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StyleBoxTexture

* * *

# StyleBoxTexture

**Inherits:** [StyleBox](class_stylebox.md#class-stylebox) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A texture-based nine-patch [StyleBox](class_stylebox.md#class-stylebox).

## Description

A texture-based nine-patch [StyleBox](class_stylebox.md#class-stylebox), in a way similar to [NinePatchRect](class_ninepatchrect.md#class-ninepatchrect). This stylebox performs a 3×3 scaling of a texture, where only the center cell is fully stretched. This makes it possible to design bordered styles regardless of the stylebox's size.

## Properties

|     |     |     |
| --- | --- | --- |
| [AxisStretchMode](#enum-styleboxtexture-axisstretchmode) | [axis\_stretch\_horizontal](#class-styleboxtexture-property-axis-stretch-horizontal) | `0` |
| [AxisStretchMode](#enum-styleboxtexture-axisstretchmode) | [axis\_stretch\_vertical](#class-styleboxtexture-property-axis-stretch-vertical) | `0` |
| [bool](class_bool.md#class-bool) | [draw\_center](#class-styleboxtexture-property-draw-center) | `true` |
| [float](class_float.md#class-float) | [expand\_margin\_bottom](#class-styleboxtexture-property-expand-margin-bottom) | `0.0` |
| [float](class_float.md#class-float) | [expand\_margin\_left](#class-styleboxtexture-property-expand-margin-left) | `0.0` |
| [float](class_float.md#class-float) | [expand\_margin\_right](#class-styleboxtexture-property-expand-margin-right) | `0.0` |
| [float](class_float.md#class-float) | [expand\_margin\_top](#class-styleboxtexture-property-expand-margin-top) | `0.0` |
| [Color](class_color.md#class-color) | [modulate\_color](#class-styleboxtexture-property-modulate-color) | `Color(1, 1, 1, 1)` |
| [Rect2](class_rect2.md#class-rect2) | [region\_rect](#class-styleboxtexture-property-region-rect) | `Rect2(0, 0, 0, 0)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-styleboxtexture-property-texture) |  |
| [float](class_float.md#class-float) | [texture\_margin\_bottom](#class-styleboxtexture-property-texture-margin-bottom) | `0.0` |
| [float](class_float.md#class-float) | [texture\_margin\_left](#class-styleboxtexture-property-texture-margin-left) | `0.0` |
| [float](class_float.md#class-float) | [texture\_margin\_right](#class-styleboxtexture-property-texture-margin-right) | `0.0` |
| [float](class_float.md#class-float) | [texture\_margin\_top](#class-styleboxtexture-property-texture-margin-top) | `0.0` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_expand\_margin](#class-styleboxtexture-method-get-expand-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| [float](class_float.md#class-float) | [get\_texture\_margin](#class-styleboxtexture-method-get-texture-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| void | [set\_expand\_margin](#class-styleboxtexture-method-set-expand-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float)) |
| void | [set\_expand\_margin\_all](#class-styleboxtexture-method-set-expand-margin-all)(size: [float](class_float.md#class-float)) |
| void | [set\_texture\_margin](#class-styleboxtexture-method-set-texture-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float)) |
| void | [set\_texture\_margin\_all](#class-styleboxtexture-method-set-texture-margin-all)(size: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **AxisStretchMode**: [🔗](#enum-styleboxtexture-axisstretchmode)

[AxisStretchMode](#enum-styleboxtexture-axisstretchmode) **AXIS\_STRETCH\_MODE\_STRETCH** = `0`

Stretch the stylebox's texture. This results in visible distortion unless the texture size matches the stylebox's size perfectly.

[AxisStretchMode](#enum-styleboxtexture-axisstretchmode) **AXIS\_STRETCH\_MODE\_TILE** = `1`

Repeats the stylebox's texture to match the stylebox's size according to the nine-patch system.

[AxisStretchMode](#enum-styleboxtexture-axisstretchmode) **AXIS\_STRETCH\_MODE\_TILE\_FIT** = `2`

Repeats the stylebox's texture to match the stylebox's size according to the nine-patch system. Unlike [AXIS\_STRETCH\_MODE\_TILE](#class-styleboxtexture-constant-axis-stretch-mode-tile), the texture may be slightly stretched to make the nine-patch texture tile seamlessly.

* * *

## Property Descriptions

[AxisStretchMode](#enum-styleboxtexture-axisstretchmode) **axis\_stretch\_horizontal** = `0` [🔗](#class-styleboxtexture-property-axis-stretch-horizontal)

- void **set\_h\_axis\_stretch\_mode**(value: [AxisStretchMode](#enum-styleboxtexture-axisstretchmode))

- [AxisStretchMode](#enum-styleboxtexture-axisstretchmode) **get\_h\_axis\_stretch\_mode**()


Controls how the stylebox's texture will be stretched or tiled horizontally.

* * *

[AxisStretchMode](#enum-styleboxtexture-axisstretchmode) **axis\_stretch\_vertical** = `0` [🔗](#class-styleboxtexture-property-axis-stretch-vertical)

- void **set\_v\_axis\_stretch\_mode**(value: [AxisStretchMode](#enum-styleboxtexture-axisstretchmode))

- [AxisStretchMode](#enum-styleboxtexture-axisstretchmode) **get\_v\_axis\_stretch\_mode**()


Controls how the stylebox's texture will be stretched or tiled vertically.

* * *

[bool](class_bool.md#class-bool) **draw\_center** = `true` [🔗](#class-styleboxtexture-property-draw-center)

- void **set\_draw\_center**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_draw\_center\_enabled**()


If `true`, the nine-patch texture's center tile will be drawn.

* * *

[float](class_float.md#class-float) **expand\_margin\_bottom** = `0.0` [🔗](#class-styleboxtexture-property-expand-margin-bottom)

- void **set\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Expands the bottom margin of this style box when drawing, causing it to be drawn larger than requested.

* * *

[float](class_float.md#class-float) **expand\_margin\_left** = `0.0` [🔗](#class-styleboxtexture-property-expand-margin-left)

- void **set\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Expands the left margin of this style box when drawing, causing it to be drawn larger than requested.

* * *

[float](class_float.md#class-float) **expand\_margin\_right** = `0.0` [🔗](#class-styleboxtexture-property-expand-margin-right)

- void **set\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Expands the right margin of this style box when drawing, causing it to be drawn larger than requested.

* * *

[float](class_float.md#class-float) **expand\_margin\_top** = `0.0` [🔗](#class-styleboxtexture-property-expand-margin-top)

- void **set\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Expands the top margin of this style box when drawing, causing it to be drawn larger than requested.

* * *

[Color](class_color.md#class-color) **modulate\_color** = `Color(1, 1, 1, 1)` [🔗](#class-styleboxtexture-property-modulate-color)

- void **set\_modulate**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_modulate**()


Modulates the color of the texture when this style box is drawn.

* * *

[Rect2](class_rect2.md#class-rect2) **region\_rect** = `Rect2(0, 0, 0, 0)` [🔗](#class-styleboxtexture-property-region-rect)

- void **set\_region\_rect**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_region\_rect**()


The region to use from the [texture](#class-styleboxtexture-property-texture).

This is equivalent to first wrapping the [texture](#class-styleboxtexture-property-texture) in an [AtlasTexture](class_atlastexture.md#class-atlastexture) with the same region.

If empty ( `Rect2(0, 0, 0, 0)`), the whole [texture](#class-styleboxtexture-property-texture) is used.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-styleboxtexture-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


The texture to use when drawing this style box.

* * *

[float](class_float.md#class-float) **texture\_margin\_bottom** = `0.0` [🔗](#class-styleboxtexture-property-texture-margin-bottom)

- void **set\_texture\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_texture\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Increases the bottom margin of the 3×3 texture box.

A higher value means more of the source texture is considered to be part of the bottom border of the 3×3 box.

This is also the value used as fallback for [StyleBox.content\_margin\_bottom](class_stylebox.md#class-stylebox-property-content-margin-bottom) if it is negative.

* * *

[float](class_float.md#class-float) **texture\_margin\_left** = `0.0` [🔗](#class-styleboxtexture-property-texture-margin-left)

- void **set\_texture\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_texture\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Increases the left margin of the 3×3 texture box.

A higher value means more of the source texture is considered to be part of the left border of the 3×3 box.

This is also the value used as fallback for [StyleBox.content\_margin\_left](class_stylebox.md#class-stylebox-property-content-margin-left) if it is negative.

* * *

[float](class_float.md#class-float) **texture\_margin\_right** = `0.0` [🔗](#class-styleboxtexture-property-texture-margin-right)

- void **set\_texture\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_texture\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Increases the right margin of the 3×3 texture box.

A higher value means more of the source texture is considered to be part of the right border of the 3×3 box.

This is also the value used as fallback for [StyleBox.content\_margin\_right](class_stylebox.md#class-stylebox-property-content-margin-right) if it is negative.

* * *

[float](class_float.md#class-float) **texture\_margin\_top** = `0.0` [🔗](#class-styleboxtexture-property-texture-margin-top)

- void **set\_texture\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_texture\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Increases the top margin of the 3×3 texture box.

A higher value means more of the source texture is considered to be part of the top border of the 3×3 box.

This is also the value used as fallback for [StyleBox.content\_margin\_top](class_stylebox.md#class-stylebox-property-content-margin-top) if it is negative.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-styleboxtexture-method-get-expand-margin)

Returns the expand margin size of the specified [Side](class_@globalscope.md#enum-globalscope-side).

* * *

[float](class_float.md#class-float) **get\_texture\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-styleboxtexture-method-get-texture-margin)

Returns the margin size of the specified [Side](class_@globalscope.md#enum-globalscope-side).

* * *

void **set\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float)) [🔗](#class-styleboxtexture-method-set-expand-margin)

Sets the expand margin to `size` pixels for the specified [Side](class_@globalscope.md#enum-globalscope-side).

* * *

void **set\_expand\_margin\_all**(size: [float](class_float.md#class-float)) [🔗](#class-styleboxtexture-method-set-expand-margin-all)

Sets the expand margin to `size` pixels for all sides.

* * *

void **set\_texture\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float)) [🔗](#class-styleboxtexture-method-set-texture-margin)

Sets the margin to `size` pixels for the specified [Side](class_@globalscope.md#enum-globalscope-side).

* * *

void **set\_texture\_margin\_all**(size: [float](class_float.md#class-float)) [🔗](#class-styleboxtexture-method-set-texture-margin-all)

Sets the margin to `size` pixels for all sides.

[Previous](class_styleboxline.md "StyleBoxLine") [Next](class_syntaxhighlighter.md "SyntaxHighlighter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_styleboxline.md "StyleBoxLine") [Next](class_syntaxhighlighter.md "SyntaxHighlighter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).