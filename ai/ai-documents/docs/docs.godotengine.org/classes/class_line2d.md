---
title: Line2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_line2d.html
crawled_at: "2026-08-13T10:41:18+12:00"
content_hash: b1d32d9ac0b3a7cd6713e531997f8a79f618b7496c9f177609c028c9a06cd267
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Line2D

* * *

# Line2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 2D polyline that can optionally be textured.

## Description

This node draws a 2D polyline, i.e. a shape consisting of several points connected by segments. **Line2D** is not a mathematical polyline, i.e. the segments are not infinitely thin. It is intended for rendering and it can be colored and optionally textured.

**Warning:** Certain configurations may be impossible to draw nicely, such as very sharp angles. In these situations, the node uses fallback drawing logic to look decent.

**Note:** **Line2D** is drawn using a 2D mesh.

## Tutorials

- [Matrix Transform Demo](https://godotengine.org/asset-library/asset/2787)

- [2.5D Game Demo](https://godotengine.org/asset-library/asset/2783)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [antialiased](#class-line2d-property-antialiased) | `false` |
| [LineCapMode](#enum-line2d-linecapmode) | [begin\_cap\_mode](#class-line2d-property-begin-cap-mode) | `0` |
| [bool](class_bool.md#class-bool) | [closed](#class-line2d-property-closed) | `false` |
| [Color](class_color.md#class-color) | [default\_color](#class-line2d-property-default-color) | `Color(1, 1, 1, 1)` |
| [LineCapMode](#enum-line2d-linecapmode) | [end\_cap\_mode](#class-line2d-property-end-cap-mode) | `0` |
| [Gradient](class_gradient.md#class-gradient) | [gradient](#class-line2d-property-gradient) |  |
| [LineJointMode](#enum-line2d-linejointmode) | [joint\_mode](#class-line2d-property-joint-mode) | `0` |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [points](#class-line2d-property-points) | `PackedVector2Array()` |
| [int](class_int.md#class-int) | [round\_precision](#class-line2d-property-round-precision) | `8` |
| [float](class_float.md#class-float) | [sharp\_limit](#class-line2d-property-sharp-limit) | `2.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-line2d-property-texture) |  |
| [LineTextureMode](#enum-line2d-linetexturemode) | [texture\_mode](#class-line2d-property-texture-mode) | `0` |
| [float](class_float.md#class-float) | [width](#class-line2d-property-width) | `10.0` |
| [Curve](class_curve.md#class-curve) | [width\_curve](#class-line2d-property-width-curve) |  |

## Methods

|     |     |
| --- | --- |
| void | [add\_point](#class-line2d-method-add-point)(position: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int) = -1) |
| void | [clear\_points](#class-line2d-method-clear-points)() |
| [int](class_int.md#class-int) | [get\_point\_count](#class-line2d-method-get-point-count)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_point\_position](#class-line2d-method-get-point-position)(index: [int](class_int.md#class-int)) const |
| void | [remove\_point](#class-line2d-method-remove-point)(index: [int](class_int.md#class-int)) |
| void | [set\_point\_position](#class-line2d-method-set-point-position)(index: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Enumerations

enum **LineJointMode**: [🔗](#enum-line2d-linejointmode)

[LineJointMode](#enum-line2d-linejointmode) **LINE\_JOINT\_SHARP** = `0`

Makes the polyline's joints pointy, connecting the sides of the two segments by extending them until they intersect. If the rotation of a joint is too big (based on [sharp\_limit](#class-line2d-property-sharp-limit)), the joint falls back to [LINE\_JOINT\_BEVEL](#class-line2d-constant-line-joint-bevel) to prevent very long miters.

[LineJointMode](#enum-line2d-linejointmode) **LINE\_JOINT\_BEVEL** = `1`

Makes the polyline's joints bevelled/chamfered, connecting the sides of the two segments with a simple line.

[LineJointMode](#enum-line2d-linejointmode) **LINE\_JOINT\_ROUND** = `2`

Makes the polyline's joints rounded, connecting the sides of the two segments with an arc. The detail of this arc depends on [round\_precision](#class-line2d-property-round-precision).

* * *

enum **LineCapMode**: [🔗](#enum-line2d-linecapmode)

[LineCapMode](#enum-line2d-linecapmode) **LINE\_CAP\_NONE** = `0`

Draws no line cap.

[LineCapMode](#enum-line2d-linecapmode) **LINE\_CAP\_BOX** = `1`

Draws the line cap as a box, slightly extending the first/last segment.

[LineCapMode](#enum-line2d-linecapmode) **LINE\_CAP\_ROUND** = `2`

Draws the line cap as a semicircle attached to the first/last segment.

* * *

enum **LineTextureMode**: [🔗](#enum-line2d-linetexturemode)

[LineTextureMode](#enum-line2d-linetexturemode) **LINE\_TEXTURE\_NONE** = `0`

Takes the left pixels of the texture and renders them over the whole polyline.

[LineTextureMode](#enum-line2d-linetexturemode) **LINE\_TEXTURE\_TILE** = `1`

Tiles the texture over the polyline. [CanvasItem.texture\_repeat](class_canvasitem.md#class-canvasitem-property-texture-repeat) of the **Line2D** node must be [CanvasItem.TEXTURE\_REPEAT\_ENABLED](class_canvasitem.md#class-canvasitem-constant-texture-repeat-enabled) or [CanvasItem.TEXTURE\_REPEAT\_MIRROR](class_canvasitem.md#class-canvasitem-constant-texture-repeat-mirror) for it to work properly.

[LineTextureMode](#enum-line2d-linetexturemode) **LINE\_TEXTURE\_STRETCH** = `2`

Stretches the texture across the polyline. [CanvasItem.texture\_repeat](class_canvasitem.md#class-canvasitem-property-texture-repeat) of the **Line2D** node must be [CanvasItem.TEXTURE\_REPEAT\_DISABLED](class_canvasitem.md#class-canvasitem-constant-texture-repeat-disabled) for best results.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **antialiased** = `false` [🔗](#class-line2d-property-antialiased)

- void **set\_antialiased**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_antialiased**()


If `true`, the polyline's border will be anti-aliased.

**Note:** **Line2D** is not accelerated by batching when being anti-aliased.

* * *

[LineCapMode](#enum-line2d-linecapmode) **begin\_cap\_mode** = `0` [🔗](#class-line2d-property-begin-cap-mode)

- void **set\_begin\_cap\_mode**(value: [LineCapMode](#enum-line2d-linecapmode))

- [LineCapMode](#enum-line2d-linecapmode) **get\_begin\_cap\_mode**()


The style of the beginning of the polyline, if [closed](#class-line2d-property-closed) is `false`.

* * *

[bool](class_bool.md#class-bool) **closed** = `false` [🔗](#class-line2d-property-closed)

- void **set\_closed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_closed**()


If `true` and the polyline has more than 2 points, the last point and the first one will be connected by a segment.

**Note:** The shape of the closing segment is not guaranteed to be seamless if a [width\_curve](#class-line2d-property-width-curve) is provided.

**Note:** The joint between the closing segment and the first segment is drawn first and it samples the [gradient](#class-line2d-property-gradient) and the [width\_curve](#class-line2d-property-width-curve) at the beginning. This is an implementation detail that might change in a future version.

* * *

[Color](class_color.md#class-color) **default\_color** = `Color(1, 1, 1, 1)` [🔗](#class-line2d-property-default-color)

- void **set\_default\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_default\_color**()


The color of the polyline. Will not be used if a gradient is set.

* * *

[LineCapMode](#enum-line2d-linecapmode) **end\_cap\_mode** = `0` [🔗](#class-line2d-property-end-cap-mode)

- void **set\_end\_cap\_mode**(value: [LineCapMode](#enum-line2d-linecapmode))

- [LineCapMode](#enum-line2d-linecapmode) **get\_end\_cap\_mode**()


The style of the end of the polyline, if [closed](#class-line2d-property-closed) is `false`.

* * *

[Gradient](class_gradient.md#class-gradient) **gradient** [🔗](#class-line2d-property-gradient)

- void **set\_gradient**(value: [Gradient](class_gradient.md#class-gradient))

- [Gradient](class_gradient.md#class-gradient) **get\_gradient**()


The gradient is drawn through the whole line from start to finish. The [default\_color](#class-line2d-property-default-color) will not be used if this property is set.

* * *

[LineJointMode](#enum-line2d-linejointmode) **joint\_mode** = `0` [🔗](#class-line2d-property-joint-mode)

- void **set\_joint\_mode**(value: [LineJointMode](#enum-line2d-linejointmode))

- [LineJointMode](#enum-line2d-linejointmode) **get\_joint\_mode**()


The style of the connections between segments of the polyline.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **points** = `PackedVector2Array()` [🔗](#class-line2d-property-points)

- void **set\_points**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_points**()


The points of the polyline, interpreted in local 2D coordinates. Segments are drawn between the adjacent points in this array.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

* * *

[int](class_int.md#class-int) **round\_precision** = `8` [🔗](#class-line2d-property-round-precision)

- void **set\_round\_precision**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_round\_precision**()


The smoothness used for rounded joints and caps. Higher values result in smoother corners, but are more demanding to render and update.

* * *

[float](class_float.md#class-float) **sharp\_limit** = `2.0` [🔗](#class-line2d-property-sharp-limit)

- void **set\_sharp\_limit**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sharp\_limit**()


Determines the miter limit of the polyline. Normally, when [joint\_mode](#class-line2d-property-joint-mode) is set to [LINE\_JOINT\_SHARP](#class-line2d-constant-line-joint-sharp), sharp angles fall back to using the logic of [LINE\_JOINT\_BEVEL](#class-line2d-constant-line-joint-bevel) joints to prevent very long miters. Higher values of this property mean that the fallback to a bevel joint will happen at sharper angles.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-line2d-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


The texture used for the polyline. Uses [texture\_mode](#class-line2d-property-texture-mode) for drawing style.

* * *

[LineTextureMode](#enum-line2d-linetexturemode) **texture\_mode** = `0` [🔗](#class-line2d-property-texture-mode)

- void **set\_texture\_mode**(value: [LineTextureMode](#enum-line2d-linetexturemode))

- [LineTextureMode](#enum-line2d-linetexturemode) **get\_texture\_mode**()


The style to render the [texture](#class-line2d-property-texture) of the polyline.

* * *

[float](class_float.md#class-float) **width** = `10.0` [🔗](#class-line2d-property-width)

- void **set\_width**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_width**()


The polyline's width.

* * *

[Curve](class_curve.md#class-curve) **width\_curve** [🔗](#class-line2d-property-width-curve)

- void **set\_curve**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_curve**()


The polyline's width curve. The width of the polyline over its length will be equivalent to the value of the width curve over its domain. The width curve should be a unit [Curve](class_curve.md#class-curve).

* * *

## Method Descriptions

void **add\_point**(position: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int) = -1) [🔗](#class-line2d-method-add-point)

Adds a point with the specified `position` relative to the polyline's own position. If no `index` is provided, the new point will be added to the end of the points array.

If `index` is given, the new point is inserted before the existing point identified by index `index`. The indices of the points after the new point get increased by 1. The provided `index` must not exceed the number of existing points in the polyline. See [get\_point\_count()](#class-line2d-method-get-point-count).

* * *

void **clear\_points**() [🔗](#class-line2d-method-clear-points)

Removes all points from the polyline, making it empty.

* * *

[int](class_int.md#class-int) **get\_point\_count**() const [🔗](#class-line2d-method-get-point-count)

Returns the number of points in the polyline.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_point\_position**(index: [int](class_int.md#class-int)) const [🔗](#class-line2d-method-get-point-position)

Returns the position of the point at index `index`.

* * *

void **remove\_point**(index: [int](class_int.md#class-int)) [🔗](#class-line2d-method-remove-point)

Removes the point at index `index` from the polyline.

* * *

void **set\_point\_position**(index: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-line2d-method-set-point-position)

Overwrites the position of the point at the given `index` with the supplied `position`.

[Previous](class_lightoccluder2d.md "LightOccluder2D") [Next](class_lineedit.md "LineEdit")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_lightoccluder2d.md "LightOccluder2D") [Next](class_lineedit.md "LineEdit")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).