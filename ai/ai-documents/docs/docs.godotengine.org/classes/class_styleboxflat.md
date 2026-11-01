---
title: StyleBoxFlat — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_styleboxflat.html
crawled_at: "2026-08-13T10:24:44+12:00"
content_hash: 03ff7b09737ab052c08e2ecdb5aef4537ddfabffa4ea70087bf55c3b22be9b67
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StyleBoxFlat

* * *

# StyleBoxFlat

**Inherits:** [StyleBox](class_stylebox.md#class-stylebox) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A customizable [StyleBox](class_stylebox.md#class-stylebox) that doesn't use a texture.

## Description

By configuring various properties of this style box, you can achieve many common looks without the need of a texture. This includes optionally rounded borders, antialiasing, shadows, and skew.

Setting corner radius to high values is allowed. As soon as corners overlap, the stylebox will switch to a relative system:

```
height = 30
corner_radius_top_left = 50
corner_radius_bottom_left = 100

```

The relative system now would take the 1:2 ratio of the two left corners to calculate the actual corner width. Both corners added will **never** be more than the height. Result:

```
corner_radius_top_left: 10
corner_radius_bottom_left: 20

```

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [anti\_aliasing](#class-styleboxflat-property-anti-aliasing) | `true` |
| [float](class_float.md#class-float) | [anti\_aliasing\_size](#class-styleboxflat-property-anti-aliasing-size) | `1.0` |
| [Color](class_color.md#class-color) | [bg\_color](#class-styleboxflat-property-bg-color) | `Color(0.6, 0.6, 0.6, 1)` |
| [bool](class_bool.md#class-bool) | [border\_blend](#class-styleboxflat-property-border-blend) | `false` |
| [Color](class_color.md#class-color) | [border\_color](#class-styleboxflat-property-border-color) | `Color(0.8, 0.8, 0.8, 1)` |
| [int](class_int.md#class-int) | [border\_width\_bottom](#class-styleboxflat-property-border-width-bottom) | `0` |
| [int](class_int.md#class-int) | [border\_width\_left](#class-styleboxflat-property-border-width-left) | `0` |
| [int](class_int.md#class-int) | [border\_width\_right](#class-styleboxflat-property-border-width-right) | `0` |
| [int](class_int.md#class-int) | [border\_width\_top](#class-styleboxflat-property-border-width-top) | `0` |
| [int](class_int.md#class-int) | [corner\_detail](#class-styleboxflat-property-corner-detail) | `8` |
| [int](class_int.md#class-int) | [corner\_radius\_bottom\_left](#class-styleboxflat-property-corner-radius-bottom-left) | `0` |
| [int](class_int.md#class-int) | [corner\_radius\_bottom\_right](#class-styleboxflat-property-corner-radius-bottom-right) | `0` |
| [int](class_int.md#class-int) | [corner\_radius\_top\_left](#class-styleboxflat-property-corner-radius-top-left) | `0` |
| [int](class_int.md#class-int) | [corner\_radius\_top\_right](#class-styleboxflat-property-corner-radius-top-right) | `0` |
| [bool](class_bool.md#class-bool) | [draw\_center](#class-styleboxflat-property-draw-center) | `true` |
| [float](class_float.md#class-float) | [expand\_margin\_bottom](#class-styleboxflat-property-expand-margin-bottom) | `0.0` |
| [float](class_float.md#class-float) | [expand\_margin\_left](#class-styleboxflat-property-expand-margin-left) | `0.0` |
| [float](class_float.md#class-float) | [expand\_margin\_right](#class-styleboxflat-property-expand-margin-right) | `0.0` |
| [float](class_float.md#class-float) | [expand\_margin\_top](#class-styleboxflat-property-expand-margin-top) | `0.0` |
| [Color](class_color.md#class-color) | [shadow\_color](#class-styleboxflat-property-shadow-color) | `Color(0, 0, 0, 0.6)` |
| [Vector2](class_vector2.md#class-vector2) | [shadow\_offset](#class-styleboxflat-property-shadow-offset) | `Vector2(0, 0)` |
| [int](class_int.md#class-int) | [shadow\_size](#class-styleboxflat-property-shadow-size) | `0` |
| [Vector2](class_vector2.md#class-vector2) | [skew](#class-styleboxflat-property-skew) | `Vector2(0, 0)` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_border\_width](#class-styleboxflat-method-get-border-width)(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| [int](class_int.md#class-int) | [get\_border\_width\_min](#class-styleboxflat-method-get-border-width-min)() const |
| [int](class_int.md#class-int) | [get\_corner\_radius](#class-styleboxflat-method-get-corner-radius)(corner: [Corner](class_@globalscope.md#enum-globalscope-corner)) const |
| [float](class_float.md#class-float) | [get\_expand\_margin](#class-styleboxflat-method-get-expand-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| void | [set\_border\_width](#class-styleboxflat-method-set-border-width)(margin: [Side](class_@globalscope.md#enum-globalscope-side), width: [int](class_int.md#class-int)) |
| void | [set\_border\_width\_all](#class-styleboxflat-method-set-border-width-all)(width: [int](class_int.md#class-int)) |
| void | [set\_corner\_radius](#class-styleboxflat-method-set-corner-radius)(corner: [Corner](class_@globalscope.md#enum-globalscope-corner), radius: [int](class_int.md#class-int)) |
| void | [set\_corner\_radius\_all](#class-styleboxflat-method-set-corner-radius-all)(radius: [int](class_int.md#class-int)) |
| void | [set\_expand\_margin](#class-styleboxflat-method-set-expand-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float)) |
| void | [set\_expand\_margin\_all](#class-styleboxflat-method-set-expand-margin-all)(size: [float](class_float.md#class-float)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **anti\_aliasing** = `true` [🔗](#class-styleboxflat-property-anti-aliasing)

- void **set\_anti\_aliased**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_anti\_aliased**()


Antialiasing draws a small ring around the edges, which fades to transparency. As a result, edges look much smoother. This is only noticeable when using rounded corners or [skew](#class-styleboxflat-property-skew).

**Note:** When using beveled corners with 45-degree angles ( [corner\_detail](#class-styleboxflat-property-corner-detail) = 1), it is recommended to set [anti\_aliasing](#class-styleboxflat-property-anti-aliasing) to `false` to ensure crisp visuals and avoid possible visual glitches.

* * *

[float](class_float.md#class-float) **anti\_aliasing\_size** = `1.0` [🔗](#class-styleboxflat-property-anti-aliasing-size)

- void **set\_aa\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_aa\_size**()


This changes the size of the antialiasing effect. `1.0` is recommended for an optimal result at 100% scale, identical to how rounded rectangles are rendered in web browsers and most vector drawing software.

**Note:** Higher values may produce a blur effect but can also create undesired artifacts on small boxes with large-radius corners.

* * *

[Color](class_color.md#class-color) **bg\_color** = `Color(0.6, 0.6, 0.6, 1)` [🔗](#class-styleboxflat-property-bg-color)

- void **set\_bg\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_bg\_color**()


The background color of the stylebox.

* * *

[bool](class_bool.md#class-bool) **border\_blend** = `false` [🔗](#class-styleboxflat-property-border-blend)

- void **set\_border\_blend**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_border\_blend**()


If `true`, the border will fade into the background color.

* * *

[Color](class_color.md#class-color) **border\_color** = `Color(0.8, 0.8, 0.8, 1)` [🔗](#class-styleboxflat-property-border-color)

- void **set\_border\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_border\_color**()


Sets the color of the border.

* * *

[int](class_int.md#class-int) **border\_width\_bottom** = `0` [🔗](#class-styleboxflat-property-border-width-bottom)

- void **set\_border\_width**(margin: [Side](class_@globalscope.md#enum-globalscope-side), width: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_border\_width**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Border width for the bottom border.

* * *

[int](class_int.md#class-int) **border\_width\_left** = `0` [🔗](#class-styleboxflat-property-border-width-left)

- void **set\_border\_width**(margin: [Side](class_@globalscope.md#enum-globalscope-side), width: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_border\_width**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Border width for the left border.

* * *

[int](class_int.md#class-int) **border\_width\_right** = `0` [🔗](#class-styleboxflat-property-border-width-right)

- void **set\_border\_width**(margin: [Side](class_@globalscope.md#enum-globalscope-side), width: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_border\_width**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Border width for the right border.

* * *

[int](class_int.md#class-int) **border\_width\_top** = `0` [🔗](#class-styleboxflat-property-border-width-top)

- void **set\_border\_width**(margin: [Side](class_@globalscope.md#enum-globalscope-side), width: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_border\_width**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Border width for the top border.

* * *

[int](class_int.md#class-int) **corner\_detail** = `8` [🔗](#class-styleboxflat-property-corner-detail)

- void **set\_corner\_detail**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_corner\_detail**()


This sets the number of vertices used for each corner. Higher values result in rounder corners but take more processing power to compute. When choosing a value, you should take the corner radius ( [set\_corner\_radius\_all()](#class-styleboxflat-method-set-corner-radius-all)) into account.

For corner radii less than 10, `4` or `5` should be enough. For corner radii less than 30, values between `8` and `12` should be enough.

A corner detail of `1` will result in chamfered corners instead of rounded corners, which is useful for some artistic effects.

* * *

[int](class_int.md#class-int) **corner\_radius\_bottom\_left** = `0` [🔗](#class-styleboxflat-property-corner-radius-bottom-left)

- void **set\_corner\_radius**(corner: [Corner](class_@globalscope.md#enum-globalscope-corner), radius: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_corner\_radius**(corner: [Corner](class_@globalscope.md#enum-globalscope-corner)) const


The bottom-left corner's radius. If `0`, the corner is not rounded.

* * *

[int](class_int.md#class-int) **corner\_radius\_bottom\_right** = `0` [🔗](#class-styleboxflat-property-corner-radius-bottom-right)

- void **set\_corner\_radius**(corner: [Corner](class_@globalscope.md#enum-globalscope-corner), radius: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_corner\_radius**(corner: [Corner](class_@globalscope.md#enum-globalscope-corner)) const


The bottom-right corner's radius. If `0`, the corner is not rounded.

* * *

[int](class_int.md#class-int) **corner\_radius\_top\_left** = `0` [🔗](#class-styleboxflat-property-corner-radius-top-left)

- void **set\_corner\_radius**(corner: [Corner](class_@globalscope.md#enum-globalscope-corner), radius: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_corner\_radius**(corner: [Corner](class_@globalscope.md#enum-globalscope-corner)) const


The top-left corner's radius. If `0`, the corner is not rounded.

* * *

[int](class_int.md#class-int) **corner\_radius\_top\_right** = `0` [🔗](#class-styleboxflat-property-corner-radius-top-right)

- void **set\_corner\_radius**(corner: [Corner](class_@globalscope.md#enum-globalscope-corner), radius: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_corner\_radius**(corner: [Corner](class_@globalscope.md#enum-globalscope-corner)) const


The top-right corner's radius. If `0`, the corner is not rounded.

* * *

[bool](class_bool.md#class-bool) **draw\_center** = `true` [🔗](#class-styleboxflat-property-draw-center)

- void **set\_draw\_center**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_draw\_center\_enabled**()


Toggles drawing of the inner part of the stylebox.

* * *

[float](class_float.md#class-float) **expand\_margin\_bottom** = `0.0` [🔗](#class-styleboxflat-property-expand-margin-bottom)

- void **set\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Expands the stylebox outside of the control rect on the bottom edge. Useful in combination with [border\_width\_bottom](#class-styleboxflat-property-border-width-bottom) to draw a border outside the control rect.

**Note:** Unlike [StyleBox.content\_margin\_bottom](class_stylebox.md#class-stylebox-property-content-margin-bottom), [expand\_margin\_bottom](#class-styleboxflat-property-expand-margin-bottom) does _not_ affect the size of the clickable area for [Control](class_control.md#class-control) s. This can negatively impact usability if used wrong, as the user may try to click an area of the StyleBox that cannot actually receive clicks.

* * *

[float](class_float.md#class-float) **expand\_margin\_left** = `0.0` [🔗](#class-styleboxflat-property-expand-margin-left)

- void **set\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Expands the stylebox outside of the control rect on the left edge. Useful in combination with [border\_width\_left](#class-styleboxflat-property-border-width-left) to draw a border outside the control rect.

**Note:** Unlike [StyleBox.content\_margin\_left](class_stylebox.md#class-stylebox-property-content-margin-left), [expand\_margin\_left](#class-styleboxflat-property-expand-margin-left) does _not_ affect the size of the clickable area for [Control](class_control.md#class-control) s. This can negatively impact usability if used wrong, as the user may try to click an area of the StyleBox that cannot actually receive clicks.

* * *

[float](class_float.md#class-float) **expand\_margin\_right** = `0.0` [🔗](#class-styleboxflat-property-expand-margin-right)

- void **set\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Expands the stylebox outside of the control rect on the right edge. Useful in combination with [border\_width\_right](#class-styleboxflat-property-border-width-right) to draw a border outside the control rect.

**Note:** Unlike [StyleBox.content\_margin\_right](class_stylebox.md#class-stylebox-property-content-margin-right), [expand\_margin\_right](#class-styleboxflat-property-expand-margin-right) does _not_ affect the size of the clickable area for [Control](class_control.md#class-control) s. This can negatively impact usability if used wrong, as the user may try to click an area of the StyleBox that cannot actually receive clicks.

* * *

[float](class_float.md#class-float) **expand\_margin\_top** = `0.0` [🔗](#class-styleboxflat-property-expand-margin-top)

- void **set\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Expands the stylebox outside of the control rect on the top edge. Useful in combination with [border\_width\_top](#class-styleboxflat-property-border-width-top) to draw a border outside the control rect.

**Note:** Unlike [StyleBox.content\_margin\_top](class_stylebox.md#class-stylebox-property-content-margin-top), [expand\_margin\_top](#class-styleboxflat-property-expand-margin-top) does _not_ affect the size of the clickable area for [Control](class_control.md#class-control) s. This can negatively impact usability if used wrong, as the user may try to click an area of the StyleBox that cannot actually receive clicks.

* * *

[Color](class_color.md#class-color) **shadow\_color** = `Color(0, 0, 0, 0.6)` [🔗](#class-styleboxflat-property-shadow-color)

- void **set\_shadow\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_shadow\_color**()


The color of the shadow. This has no effect if [shadow\_size](#class-styleboxflat-property-shadow-size) is lower than 1.

* * *

[Vector2](class_vector2.md#class-vector2) **shadow\_offset** = `Vector2(0, 0)` [🔗](#class-styleboxflat-property-shadow-offset)

- void **set\_shadow\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_shadow\_offset**()


The shadow offset in pixels. Adjusts the position of the shadow relatively to the stylebox.

* * *

[int](class_int.md#class-int) **shadow\_size** = `0` [🔗](#class-styleboxflat-property-shadow-size)

- void **set\_shadow\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_shadow\_size**()


The shadow size in pixels.

* * *

[Vector2](class_vector2.md#class-vector2) **skew** = `Vector2(0, 0)` [🔗](#class-styleboxflat-property-skew)

- void **set\_skew**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_skew**()


If set to a non-zero value on either axis, [skew](#class-styleboxflat-property-skew) distorts the StyleBox horizontally and/or vertically. This can be used for "futuristic"-style UIs. Positive values skew the StyleBox towards the right (X axis) and upwards (Y axis), while negative values skew the StyleBox towards the left (X axis) and downwards (Y axis).

**Note:** To ensure text does not touch the StyleBox's edges, consider increasing the [StyleBox](class_stylebox.md#class-stylebox)'s content margin (see [StyleBox.content\_margin\_bottom](class_stylebox.md#class-stylebox-property-content-margin-bottom)). It is preferable to increase the content margin instead of the expand margin (see [expand\_margin\_bottom](#class-styleboxflat-property-expand-margin-bottom)), as increasing the expand margin does not increase the size of the clickable area for [Control](class_control.md#class-control) s.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_border\_width**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-styleboxflat-method-get-border-width)

Returns the specified [Side](class_@globalscope.md#enum-globalscope-side)'s border width.

* * *

[int](class_int.md#class-int) **get\_border\_width\_min**() const [🔗](#class-styleboxflat-method-get-border-width-min)

Returns the smallest border width out of all four borders.

* * *

[int](class_int.md#class-int) **get\_corner\_radius**(corner: [Corner](class_@globalscope.md#enum-globalscope-corner)) const [🔗](#class-styleboxflat-method-get-corner-radius)

Returns the given `corner`'s radius.

* * *

[float](class_float.md#class-float) **get\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-styleboxflat-method-get-expand-margin)

Returns the size of the specified [Side](class_@globalscope.md#enum-globalscope-side)'s expand margin.

* * *

void **set\_border\_width**(margin: [Side](class_@globalscope.md#enum-globalscope-side), width: [int](class_int.md#class-int)) [🔗](#class-styleboxflat-method-set-border-width)

Sets the specified [Side](class_@globalscope.md#enum-globalscope-side)'s border width to `width` pixels.

* * *

void **set\_border\_width\_all**(width: [int](class_int.md#class-int)) [🔗](#class-styleboxflat-method-set-border-width-all)

Sets the border width to `width` pixels for all sides.

* * *

void **set\_corner\_radius**(corner: [Corner](class_@globalscope.md#enum-globalscope-corner), radius: [int](class_int.md#class-int)) [🔗](#class-styleboxflat-method-set-corner-radius)

Sets the corner radius to `radius` pixels for the given `corner`.

* * *

void **set\_corner\_radius\_all**(radius: [int](class_int.md#class-int)) [🔗](#class-styleboxflat-method-set-corner-radius-all)

Sets the corner radius to `radius` pixels for all corners.

* * *

void **set\_expand\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), size: [float](class_float.md#class-float)) [🔗](#class-styleboxflat-method-set-expand-margin)

Sets the expand margin to `size` pixels for the specified [Side](class_@globalscope.md#enum-globalscope-side).

* * *

void **set\_expand\_margin\_all**(size: [float](class_float.md#class-float)) [🔗](#class-styleboxflat-method-set-expand-margin-all)

Sets the expand margin to `size` pixels for all sides.

[Previous](class_styleboxempty.md "StyleBoxEmpty") [Next](class_styleboxline.md "StyleBoxLine")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_styleboxempty.md "StyleBoxEmpty") [Next](class_styleboxline.md "StyleBoxLine")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).