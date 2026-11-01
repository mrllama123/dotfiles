---
title: Polygon2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_polygon2d.html
crawled_at: "2026-08-13T10:42:18+12:00"
content_hash: d42d326f9b2a548355dd4aa8c8c3cf43a94e69cdf843294cc24f8ebfb662b456
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Polygon2D

* * *

# Polygon2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 2D polygon.

## Description

A Polygon2D is defined by a set of points. Each point is connected to the next, with the final point being connected to the first, resulting in a closed polygon. Polygon2Ds can be filled with color (solid or gradient) or filled with a given texture.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [antialiased](#class-polygon2d-property-antialiased) | `false` |
| [Color](class_color.md#class-color) | [color](#class-polygon2d-property-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [internal\_vertex\_count](#class-polygon2d-property-internal-vertex-count) | `0` |
| [float](class_float.md#class-float) | [invert\_border](#class-polygon2d-property-invert-border) | `100.0` |
| [bool](class_bool.md#class-bool) | [invert\_enabled](#class-polygon2d-property-invert-enabled) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-polygon2d-property-offset) | `Vector2(0, 0)` |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [polygon](#class-polygon2d-property-polygon) | `PackedVector2Array()` |
| [Array](class_array.md#class-array) | [polygons](#class-polygon2d-property-polygons) | `[]` |
| [NodePath](class_nodepath.md#class-nodepath) | [skeleton](#class-polygon2d-property-skeleton) | `NodePath("")` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-polygon2d-property-texture) |  |
| [Vector2](class_vector2.md#class-vector2) | [texture\_offset](#class-polygon2d-property-texture-offset) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [texture\_rotation](#class-polygon2d-property-texture-rotation) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [texture\_scale](#class-polygon2d-property-texture-scale) | `Vector2(1, 1)` |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [uv](#class-polygon2d-property-uv) | `PackedVector2Array()` |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [vertex\_colors](#class-polygon2d-property-vertex-colors) | `PackedColorArray()` |

## Methods

|     |     |
| --- | --- |
| void | [add\_bone](#class-polygon2d-method-add-bone)(path: [NodePath](class_nodepath.md#class-nodepath), weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |
| void | [clear\_bones](#class-polygon2d-method-clear-bones)() |
| void | [erase\_bone](#class-polygon2d-method-erase-bone)(index: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_bone\_count](#class-polygon2d-method-get-bone-count)() const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_bone\_path](#class-polygon2d-method-get-bone-path)(index: [int](class_int.md#class-int)) const |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [get\_bone\_weights](#class-polygon2d-method-get-bone-weights)(index: [int](class_int.md#class-int)) const |
| void | [set\_bone\_path](#class-polygon2d-method-set-bone-path)(index: [int](class_int.md#class-int), path: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [set\_bone\_weights](#class-polygon2d-method-set-bone-weights)(index: [int](class_int.md#class-int), weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **antialiased** = `false` [🔗](#class-polygon2d-property-antialiased)

- void **set\_antialiased**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_antialiased**()


If `true`, polygon edges will be anti-aliased.

* * *

[Color](class_color.md#class-color) **color** = `Color(1, 1, 1, 1)` [🔗](#class-polygon2d-property-color)

- void **set\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_color**()


The polygon's fill color. If [texture](#class-polygon2d-property-texture) is set, it will be multiplied by this color. It will also be the default color for vertices not set in [vertex\_colors](#class-polygon2d-property-vertex-colors).

* * *

[int](class_int.md#class-int) **internal\_vertex\_count** = `0` [🔗](#class-polygon2d-property-internal-vertex-count)

- void **set\_internal\_vertex\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_internal\_vertex\_count**()


Number of internal vertices, used for UV mapping.

* * *

[float](class_float.md#class-float) **invert\_border** = `100.0` [🔗](#class-polygon2d-property-invert-border)

- void **set\_invert\_border**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_invert\_border**()


Added padding applied to the bounding box when [invert\_enabled](#class-polygon2d-property-invert-enabled) is set to `true`. Setting this value too small may result in a "Bad Polygon" error.

* * *

[bool](class_bool.md#class-bool) **invert\_enabled** = `false` [🔗](#class-polygon2d-property-invert-enabled)

- void **set\_invert\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_invert\_enabled**()


If `true`, the polygon will be inverted, containing the area outside the defined points and extending to the [invert\_border](#class-polygon2d-property-invert-border).

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-polygon2d-property-offset)

- void **set\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_offset**()


The offset applied to each vertex.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **polygon** = `PackedVector2Array()` [🔗](#class-polygon2d-property-polygon)

- void **set\_polygon**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_polygon**()


The polygon's list of vertices. The final point will be connected to the first.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

* * *

[Array](class_array.md#class-array) **polygons** = `[]` [🔗](#class-polygon2d-property-polygons)

- void **set\_polygons**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_polygons**()


The list of polygons, in case more than one is being represented. Every individual polygon is stored as a [PackedInt32Array](class_packedint32array.md#class-packedint32array) where each [int](class_int.md#class-int) is an index to a point in [polygon](#class-polygon2d-property-polygon). If empty, this property will be ignored, and the resulting single polygon will be composed of all points in [polygon](#class-polygon2d-property-polygon), using the order they are stored in.

* * *

[NodePath](class_nodepath.md#class-nodepath) **skeleton** = `NodePath("")` [🔗](#class-polygon2d-property-skeleton)

- void **set\_skeleton**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_skeleton**()


Path to a [Skeleton2D](class_skeleton2d.md#class-skeleton2d) node used for skeleton-based deformations of this polygon. If empty or invalid, skeletal deformations will not be used.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-polygon2d-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


The polygon's fill texture. Use [uv](#class-polygon2d-property-uv) to set texture coordinates.

* * *

[Vector2](class_vector2.md#class-vector2) **texture\_offset** = `Vector2(0, 0)` [🔗](#class-polygon2d-property-texture-offset)

- void **set\_texture\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_texture\_offset**()


Amount to offset the polygon's [texture](#class-polygon2d-property-texture). If set to `Vector2(0, 0)`, the texture's origin (its top-left corner) will be placed at the polygon's position.

* * *

[float](class_float.md#class-float) **texture\_rotation** = `0.0` [🔗](#class-polygon2d-property-texture-rotation)

- void **set\_texture\_rotation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_texture\_rotation**()


The texture's rotation in radians.

* * *

[Vector2](class_vector2.md#class-vector2) **texture\_scale** = `Vector2(1, 1)` [🔗](#class-polygon2d-property-texture-scale)

- void **set\_texture\_scale**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_texture\_scale**()


Amount to multiply the [uv](#class-polygon2d-property-uv) coordinates when using [texture](#class-polygon2d-property-texture). Larger values make the texture smaller, and vice versa.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **uv** = `PackedVector2Array()` [🔗](#class-polygon2d-property-uv)

- void **set\_uv**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_uv**()


Texture coordinates for each vertex of the polygon. There should be one UV value per polygon vertex. If there are fewer, undefined vertices will use `Vector2(0, 0)`.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

* * *

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **vertex\_colors** = `PackedColorArray()` [🔗](#class-polygon2d-property-vertex-colors)

- void **set\_vertex\_colors**(value: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray))

- [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **get\_vertex\_colors**()


Color for each vertex. Colors are interpolated between vertices, resulting in smooth gradients. There should be one per polygon vertex. If there are fewer, undefined vertices will use [color](#class-polygon2d-property-color).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) for more details.

* * *

## Method Descriptions

void **add\_bone**(path: [NodePath](class_nodepath.md#class-nodepath), weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-polygon2d-method-add-bone)

Adds a bone with the specified `path` and `weights`.

* * *

void **clear\_bones**() [🔗](#class-polygon2d-method-clear-bones)

Removes all bones from this **Polygon2D**.

* * *

void **erase\_bone**(index: [int](class_int.md#class-int)) [🔗](#class-polygon2d-method-erase-bone)

Removes the specified bone from this **Polygon2D**.

* * *

[int](class_int.md#class-int) **get\_bone\_count**() const [🔗](#class-polygon2d-method-get-bone-count)

Returns the number of bones in this **Polygon2D**.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_bone\_path**(index: [int](class_int.md#class-int)) const [🔗](#class-polygon2d-method-get-bone-path)

Returns the path to the node associated with the specified bone.

* * *

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_bone\_weights**(index: [int](class_int.md#class-int)) const [🔗](#class-polygon2d-method-get-bone-weights)

Returns the weight values of the specified bone.

* * *

void **set\_bone\_path**(index: [int](class_int.md#class-int), path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-polygon2d-method-set-bone-path)

Sets the path to the node associated with the specified bone.

* * *

void **set\_bone\_weights**(index: [int](class_int.md#class-int), weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-polygon2d-method-set-bone-weights)

Sets the weight values for the specified bone.

[Previous](class_pointlight2d.md "PointLight2D") [Next](class_popup.md "Popup")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_pointlight2d.md "PointLight2D") [Next](class_popup.md "Popup")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).