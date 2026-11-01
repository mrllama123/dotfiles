---
title: TextureProgressBar — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_textureprogressbar.html
crawled_at: "2026-08-13T10:36:36+12:00"
content_hash: 466ca9784a977b006437282879b2ed7eb03fca2df9fc51488600caf6dec25c49
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextureProgressBar

* * *

# TextureProgressBar

**Inherits:** [Range](class_range.md#class-range) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Texture-based progress bar. Useful for loading screens and life or stamina bars.

## Description

TextureProgressBar works like [ProgressBar](class_progressbar.md#class-progressbar), but uses up to 3 textures instead of Godot's [Theme](class_theme.md#class-theme) resource. It can be used to create horizontal, vertical and radial progress bars.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [fill\_mode](#class-textureprogressbar-property-fill-mode) | `0` |
| [MouseFilter](class_control.md#enum-control-mousefilter) | mouse\_filter | `1` (overrides [Control](class_control.md#class-control-property-mouse-filter)) |
| [bool](class_bool.md#class-bool) | [nine\_patch\_stretch](#class-textureprogressbar-property-nine-patch-stretch) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [radial\_center\_offset](#class-textureprogressbar-property-radial-center-offset) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [radial\_fill\_degrees](#class-textureprogressbar-property-radial-fill-degrees) | `360.0` |
| [float](class_float.md#class-float) | [radial\_initial\_angle](#class-textureprogressbar-property-radial-initial-angle) | `0.0` |
| BitField\[ [SizeFlags](class_control.md#enum-control-sizeflags)\] | size\_flags\_vertical | `1` (overrides [Control](class_control.md#class-control-property-size-flags-vertical)) |
| [float](class_float.md#class-float) | step | `1.0` (overrides [Range](class_range.md#class-range-property-step)) |
| [int](class_int.md#class-int) | [stretch\_margin\_bottom](#class-textureprogressbar-property-stretch-margin-bottom) | `0` |
| [int](class_int.md#class-int) | [stretch\_margin\_left](#class-textureprogressbar-property-stretch-margin-left) | `0` |
| [int](class_int.md#class-int) | [stretch\_margin\_right](#class-textureprogressbar-property-stretch-margin-right) | `0` |
| [int](class_int.md#class-int) | [stretch\_margin\_top](#class-textureprogressbar-property-stretch-margin-top) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_over](#class-textureprogressbar-property-texture-over) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_progress](#class-textureprogressbar-property-texture-progress) |  |
| [Vector2](class_vector2.md#class-vector2) | [texture\_progress\_offset](#class-textureprogressbar-property-texture-progress-offset) | `Vector2(0, 0)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_under](#class-textureprogressbar-property-texture-under) |  |
| [Color](class_color.md#class-color) | [tint\_over](#class-textureprogressbar-property-tint-over) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [tint\_progress](#class-textureprogressbar-property-tint-progress) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [tint\_under](#class-textureprogressbar-property-tint-under) | `Color(1, 1, 1, 1)` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_stretch\_margin](#class-textureprogressbar-method-get-stretch-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| void | [set\_stretch\_margin](#class-textureprogressbar-method-set-stretch-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int)) |

* * *

## Enumerations

enum **FillMode**: [🔗](#enum-textureprogressbar-fillmode)

[FillMode](#enum-textureprogressbar-fillmode) **FILL\_LEFT\_TO\_RIGHT** = `0`

The [texture\_progress](#class-textureprogressbar-property-texture-progress) fills from left to right.

[FillMode](#enum-textureprogressbar-fillmode) **FILL\_RIGHT\_TO\_LEFT** = `1`

The [texture\_progress](#class-textureprogressbar-property-texture-progress) fills from right to left.

[FillMode](#enum-textureprogressbar-fillmode) **FILL\_TOP\_TO\_BOTTOM** = `2`

The [texture\_progress](#class-textureprogressbar-property-texture-progress) fills from top to bottom.

[FillMode](#enum-textureprogressbar-fillmode) **FILL\_BOTTOM\_TO\_TOP** = `3`

The [texture\_progress](#class-textureprogressbar-property-texture-progress) fills from bottom to top.

[FillMode](#enum-textureprogressbar-fillmode) **FILL\_CLOCKWISE** = `4`

Turns the node into a radial bar. The [texture\_progress](#class-textureprogressbar-property-texture-progress) fills clockwise. See [radial\_center\_offset](#class-textureprogressbar-property-radial-center-offset), [radial\_initial\_angle](#class-textureprogressbar-property-radial-initial-angle) and [radial\_fill\_degrees](#class-textureprogressbar-property-radial-fill-degrees) to control the way the bar fills up.

[FillMode](#enum-textureprogressbar-fillmode) **FILL\_COUNTER\_CLOCKWISE** = `5`

Turns the node into a radial bar. The [texture\_progress](#class-textureprogressbar-property-texture-progress) fills counterclockwise. See [radial\_center\_offset](#class-textureprogressbar-property-radial-center-offset), [radial\_initial\_angle](#class-textureprogressbar-property-radial-initial-angle) and [radial\_fill\_degrees](#class-textureprogressbar-property-radial-fill-degrees) to control the way the bar fills up.

[FillMode](#enum-textureprogressbar-fillmode) **FILL\_BILINEAR\_LEFT\_AND\_RIGHT** = `6`

The [texture\_progress](#class-textureprogressbar-property-texture-progress) fills from the center, expanding both towards the left and the right.

[FillMode](#enum-textureprogressbar-fillmode) **FILL\_BILINEAR\_TOP\_AND\_BOTTOM** = `7`

The [texture\_progress](#class-textureprogressbar-property-texture-progress) fills from the center, expanding both towards the top and the bottom.

[FillMode](#enum-textureprogressbar-fillmode) **FILL\_CLOCKWISE\_AND\_COUNTER\_CLOCKWISE** = `8`

Turns the node into a radial bar. The [texture\_progress](#class-textureprogressbar-property-texture-progress) fills radially from the center, expanding both clockwise and counterclockwise. See [radial\_center\_offset](#class-textureprogressbar-property-radial-center-offset), [radial\_initial\_angle](#class-textureprogressbar-property-radial-initial-angle) and [radial\_fill\_degrees](#class-textureprogressbar-property-radial-fill-degrees) to control the way the bar fills up.

* * *

## Property Descriptions

[int](class_int.md#class-int) **fill\_mode** = `0` [🔗](#class-textureprogressbar-property-fill-mode)

- void **set\_fill\_mode**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fill\_mode**()


The fill direction. See [FillMode](#enum-textureprogressbar-fillmode) for possible values.

* * *

[bool](class_bool.md#class-bool) **nine\_patch\_stretch** = `false` [🔗](#class-textureprogressbar-property-nine-patch-stretch)

- void **set\_nine\_patch\_stretch**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_nine\_patch\_stretch**()


If `true`, Godot treats the bar's textures like in [NinePatchRect](class_ninepatchrect.md#class-ninepatchrect). Use the `stretch_margin_*` properties like [stretch\_margin\_bottom](#class-textureprogressbar-property-stretch-margin-bottom) to set up the nine patch's 3×3 grid. When using a radial [fill\_mode](#class-textureprogressbar-property-fill-mode), this setting will only enable stretching for [texture\_progress](#class-textureprogressbar-property-texture-progress), while [texture\_under](#class-textureprogressbar-property-texture-under) and [texture\_over](#class-textureprogressbar-property-texture-over) will be treated like in [NinePatchRect](class_ninepatchrect.md#class-ninepatchrect).

* * *

[Vector2](class_vector2.md#class-vector2) **radial\_center\_offset** = `Vector2(0, 0)` [🔗](#class-textureprogressbar-property-radial-center-offset)

- void **set\_radial\_center\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_radial\_center\_offset**()


Offsets [texture\_progress](#class-textureprogressbar-property-texture-progress) if [fill\_mode](#class-textureprogressbar-property-fill-mode) is [FILL\_CLOCKWISE](#class-textureprogressbar-constant-fill-clockwise), [FILL\_COUNTER\_CLOCKWISE](#class-textureprogressbar-constant-fill-counter-clockwise), or [FILL\_CLOCKWISE\_AND\_COUNTER\_CLOCKWISE](#class-textureprogressbar-constant-fill-clockwise-and-counter-clockwise).

**Note:** The effective radial center always stays within the [texture\_progress](#class-textureprogressbar-property-texture-progress) bounds. If you need to move it outside the texture's bounds, modify the [texture\_progress](#class-textureprogressbar-property-texture-progress) to contain additional empty space where needed.

* * *

[float](class_float.md#class-float) **radial\_fill\_degrees** = `360.0` [🔗](#class-textureprogressbar-property-radial-fill-degrees)

- void **set\_fill\_degrees**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fill\_degrees**()


Upper limit for the fill of [texture\_progress](#class-textureprogressbar-property-texture-progress) if [fill\_mode](#class-textureprogressbar-property-fill-mode) is [FILL\_CLOCKWISE](#class-textureprogressbar-constant-fill-clockwise), [FILL\_COUNTER\_CLOCKWISE](#class-textureprogressbar-constant-fill-counter-clockwise), or [FILL\_CLOCKWISE\_AND\_COUNTER\_CLOCKWISE](#class-textureprogressbar-constant-fill-clockwise-and-counter-clockwise). When the node's `value` is equal to its `max_value`, the texture fills up to this angle.

See [Range.value](class_range.md#class-range-property-value), [Range.max\_value](class_range.md#class-range-property-max-value).

* * *

[float](class_float.md#class-float) **radial\_initial\_angle** = `0.0` [🔗](#class-textureprogressbar-property-radial-initial-angle)

- void **set\_radial\_initial\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radial\_initial\_angle**()


Starting angle for the fill of [texture\_progress](#class-textureprogressbar-property-texture-progress) if [fill\_mode](#class-textureprogressbar-property-fill-mode) is [FILL\_CLOCKWISE](#class-textureprogressbar-constant-fill-clockwise), [FILL\_COUNTER\_CLOCKWISE](#class-textureprogressbar-constant-fill-counter-clockwise), or [FILL\_CLOCKWISE\_AND\_COUNTER\_CLOCKWISE](#class-textureprogressbar-constant-fill-clockwise-and-counter-clockwise). When the node's `value` is equal to its `min_value`, the texture doesn't show up at all. When the `value` increases, the texture fills and tends towards [radial\_fill\_degrees](#class-textureprogressbar-property-radial-fill-degrees).

**Note:** [radial\_initial\_angle](#class-textureprogressbar-property-radial-initial-angle) is wrapped between `0` and `360` degrees (inclusive).

* * *

[int](class_int.md#class-int) **stretch\_margin\_bottom** = `0` [🔗](#class-textureprogressbar-property-stretch-margin-bottom)

- void **set\_stretch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stretch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The height of the 9-patch's bottom row. A margin of 16 means the 9-slice's bottom corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders. Only effective if [nine\_patch\_stretch](#class-textureprogressbar-property-nine-patch-stretch) is `true`.

* * *

[int](class_int.md#class-int) **stretch\_margin\_left** = `0` [🔗](#class-textureprogressbar-property-stretch-margin-left)

- void **set\_stretch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stretch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The width of the 9-patch's left column. Only effective if [nine\_patch\_stretch](#class-textureprogressbar-property-nine-patch-stretch) is `true`.

* * *

[int](class_int.md#class-int) **stretch\_margin\_right** = `0` [🔗](#class-textureprogressbar-property-stretch-margin-right)

- void **set\_stretch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stretch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The width of the 9-patch's right column. Only effective if [nine\_patch\_stretch](#class-textureprogressbar-property-nine-patch-stretch) is `true`.

* * *

[int](class_int.md#class-int) **stretch\_margin\_top** = `0` [🔗](#class-textureprogressbar-property-stretch-margin-top)

- void **set\_stretch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stretch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The height of the 9-patch's top row. Only effective if [nine\_patch\_stretch](#class-textureprogressbar-property-nine-patch-stretch) is `true`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_over** [🔗](#class-textureprogressbar-property-texture-over)

- void **set\_over\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_over\_texture**()


[Texture2D](class_texture2d.md#class-texture2d) that draws over the progress bar. Use it to add highlights or an upper-frame that hides part of [texture\_progress](#class-textureprogressbar-property-texture-progress).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_progress** [🔗](#class-textureprogressbar-property-texture-progress)

- void **set\_progress\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_progress\_texture**()


[Texture2D](class_texture2d.md#class-texture2d) that clips based on the node's `value` and [fill\_mode](#class-textureprogressbar-property-fill-mode). As `value` increased, the texture fills up. It shows entirely when `value` reaches `max_value`. It doesn't show at all if `value` is equal to `min_value`.

The `value` property comes from [Range](class_range.md#class-range). See [Range.value](class_range.md#class-range-property-value), [Range.min\_value](class_range.md#class-range-property-min-value), [Range.max\_value](class_range.md#class-range-property-max-value).

* * *

[Vector2](class_vector2.md#class-vector2) **texture\_progress\_offset** = `Vector2(0, 0)` [🔗](#class-textureprogressbar-property-texture-progress-offset)

- void **set\_texture\_progress\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_texture\_progress\_offset**()


The offset of [texture\_progress](#class-textureprogressbar-property-texture-progress). Useful for [texture\_over](#class-textureprogressbar-property-texture-over) and [texture\_under](#class-textureprogressbar-property-texture-under) with fancy borders, to avoid transparent margins in your progress texture.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_under** [🔗](#class-textureprogressbar-property-texture-under)

- void **set\_under\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_under\_texture**()


[Texture2D](class_texture2d.md#class-texture2d) that draws under the progress bar. The bar's background.

* * *

[Color](class_color.md#class-color) **tint\_over** = `Color(1, 1, 1, 1)` [🔗](#class-textureprogressbar-property-tint-over)

- void **set\_tint\_over**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_tint\_over**()


Multiplies the color of the bar's [texture\_over](#class-textureprogressbar-property-texture-over) texture. The effect is similar to [CanvasItem.modulate](class_canvasitem.md#class-canvasitem-property-modulate), except it only affects this specific texture instead of the entire node.

* * *

[Color](class_color.md#class-color) **tint\_progress** = `Color(1, 1, 1, 1)` [🔗](#class-textureprogressbar-property-tint-progress)

- void **set\_tint\_progress**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_tint\_progress**()


Multiplies the color of the bar's [texture\_progress](#class-textureprogressbar-property-texture-progress) texture.

* * *

[Color](class_color.md#class-color) **tint\_under** = `Color(1, 1, 1, 1)` [🔗](#class-textureprogressbar-property-tint-under)

- void **set\_tint\_under**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_tint\_under**()


Multiplies the color of the bar's [texture\_under](#class-textureprogressbar-property-texture-under) texture.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_stretch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-textureprogressbar-method-get-stretch-margin)

Returns the stretch margin with the specified index. See [stretch\_margin\_bottom](#class-textureprogressbar-property-stretch-margin-bottom) and related properties.

* * *

void **set\_stretch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int)) [🔗](#class-textureprogressbar-method-set-stretch-margin)

Sets the stretch margin with the specified index. See [stretch\_margin\_bottom](#class-textureprogressbar-property-stretch-margin-bottom) and related properties.

[Previous](class_texturebutton.md "TextureButton") [Next](class_texturerect.md "TextureRect")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_texturebutton.md "TextureButton") [Next](class_texturerect.md "TextureRect")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).