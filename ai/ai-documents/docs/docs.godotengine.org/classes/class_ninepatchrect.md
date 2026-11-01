---
title: NinePatchRect — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_ninepatchrect.html
crawled_at: "2026-08-13T10:30:43+12:00"
content_hash: 37477da08439a62330b807f8319abacc7fb9331243731b93fbe0de053a8ebb5c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NinePatchRect

* * *

# NinePatchRect

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A control that displays a texture by keeping its corners intact, but tiling its edges and center.

## Description

Also known as 9-slice panels, **NinePatchRect** produces clean panels of any size based on a small texture. To do so, it splits the texture in a 3×3 grid. When you scale the node, it tiles the texture's edges horizontally or vertically, tiles the center on both axes, and leaves the corners unchanged.

## Properties

|     |     |     |
| --- | --- | --- |
| [AxisStretchMode](#enum-ninepatchrect-axisstretchmode) | [axis\_stretch\_horizontal](#class-ninepatchrect-property-axis-stretch-horizontal) | `0` |
| [AxisStretchMode](#enum-ninepatchrect-axisstretchmode) | [axis\_stretch\_vertical](#class-ninepatchrect-property-axis-stretch-vertical) | `0` |
| [bool](class_bool.md#class-bool) | [draw\_center](#class-ninepatchrect-property-draw-center) | `true` |
| [MouseFilter](class_control.md#enum-control-mousefilter) | mouse\_filter | `2` (overrides [Control](class_control.md#class-control-property-mouse-filter)) |
| [int](class_int.md#class-int) | [patch\_margin\_bottom](#class-ninepatchrect-property-patch-margin-bottom) | `0` |
| [int](class_int.md#class-int) | [patch\_margin\_left](#class-ninepatchrect-property-patch-margin-left) | `0` |
| [int](class_int.md#class-int) | [patch\_margin\_right](#class-ninepatchrect-property-patch-margin-right) | `0` |
| [int](class_int.md#class-int) | [patch\_margin\_top](#class-ninepatchrect-property-patch-margin-top) | `0` |
| [Rect2](class_rect2.md#class-rect2) | [region\_rect](#class-ninepatchrect-property-region-rect) | `Rect2(0, 0, 0, 0)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-ninepatchrect-property-texture) |  |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_patch\_margin](#class-ninepatchrect-method-get-patch-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| void | [set\_patch\_margin](#class-ninepatchrect-method-set-patch-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int)) |

* * *

## Signals

**texture\_changed**() [🔗](#class-ninepatchrect-signal-texture-changed)

Emitted when the node's texture changes.

* * *

## Enumerations

enum **AxisStretchMode**: [🔗](#enum-ninepatchrect-axisstretchmode)

[AxisStretchMode](#enum-ninepatchrect-axisstretchmode) **AXIS\_STRETCH\_MODE\_STRETCH** = `0`

Stretches the center texture across the NinePatchRect. This may cause the texture to be distorted.

[AxisStretchMode](#enum-ninepatchrect-axisstretchmode) **AXIS\_STRETCH\_MODE\_TILE** = `1`

Repeats the center texture across the NinePatchRect. This won't cause any visible distortion. The texture must be seamless for this to work without displaying artifacts between edges.

[AxisStretchMode](#enum-ninepatchrect-axisstretchmode) **AXIS\_STRETCH\_MODE\_TILE\_FIT** = `2`

Repeats the center texture across the NinePatchRect, but will also stretch the texture to make sure each tile is visible in full. This may cause the texture to be distorted, but less than [AXIS\_STRETCH\_MODE\_STRETCH](#class-ninepatchrect-constant-axis-stretch-mode-stretch). The texture must be seamless for this to work without displaying artifacts between edges.

* * *

## Property Descriptions

[AxisStretchMode](#enum-ninepatchrect-axisstretchmode) **axis\_stretch\_horizontal** = `0` [🔗](#class-ninepatchrect-property-axis-stretch-horizontal)

- void **set\_h\_axis\_stretch\_mode**(value: [AxisStretchMode](#enum-ninepatchrect-axisstretchmode))

- [AxisStretchMode](#enum-ninepatchrect-axisstretchmode) **get\_h\_axis\_stretch\_mode**()


The stretch mode to use for horizontal stretching/tiling.

* * *

[AxisStretchMode](#enum-ninepatchrect-axisstretchmode) **axis\_stretch\_vertical** = `0` [🔗](#class-ninepatchrect-property-axis-stretch-vertical)

- void **set\_v\_axis\_stretch\_mode**(value: [AxisStretchMode](#enum-ninepatchrect-axisstretchmode))

- [AxisStretchMode](#enum-ninepatchrect-axisstretchmode) **get\_v\_axis\_stretch\_mode**()


The stretch mode to use for vertical stretching/tiling.

* * *

[bool](class_bool.md#class-bool) **draw\_center** = `true` [🔗](#class-ninepatchrect-property-draw-center)

- void **set\_draw\_center**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_draw\_center\_enabled**()


If `true`, draw the panel's center. Else, only draw the 9-slice's borders.

* * *

[int](class_int.md#class-int) **patch\_margin\_bottom** = `0` [🔗](#class-ninepatchrect-property-patch-margin-bottom)

- void **set\_patch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_patch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The height of the 9-slice's bottom row. A margin of 16 means the 9-slice's bottom corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.

* * *

[int](class_int.md#class-int) **patch\_margin\_left** = `0` [🔗](#class-ninepatchrect-property-patch-margin-left)

- void **set\_patch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_patch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The width of the 9-slice's left column. A margin of 16 means the 9-slice's left corners and side will have a width of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.

* * *

[int](class_int.md#class-int) **patch\_margin\_right** = `0` [🔗](#class-ninepatchrect-property-patch-margin-right)

- void **set\_patch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_patch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The width of the 9-slice's right column. A margin of 16 means the 9-slice's right corners and side will have a width of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.

* * *

[int](class_int.md#class-int) **patch\_margin\_top** = `0` [🔗](#class-ninepatchrect-property-patch-margin-top)

- void **set\_patch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_patch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The height of the 9-slice's top row. A margin of 16 means the 9-slice's top corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.

* * *

[Rect2](class_rect2.md#class-rect2) **region\_rect** = `Rect2(0, 0, 0, 0)` [🔗](#class-ninepatchrect-property-region-rect)

- void **set\_region\_rect**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_region\_rect**()


Rectangular region of the texture to sample from. If you're working with an atlas, use this property to define the area the 9-slice should use. All other properties are relative to this one. If the rect is empty, NinePatchRect will use the whole texture.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-ninepatchrect-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


The node's texture resource.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_patch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-ninepatchrect-method-get-patch-margin)

Returns the size of the margin on the specified [Side](class_@globalscope.md#enum-globalscope-side).

* * *

void **set\_patch\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), value: [int](class_int.md#class-int)) [🔗](#class-ninepatchrect-method-set-patch-margin)

Sets the size of the margin on the specified [Side](class_@globalscope.md#enum-globalscope-side) to `value` pixels.

[Previous](class_navigationregion3d.md "NavigationRegion3D") [Next](class_node2d.md "Node2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationregion3d.md "NavigationRegion3D") [Next](class_node2d.md "Node2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).