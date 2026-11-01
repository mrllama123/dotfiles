---
title: Curve2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_curve2d.html
crawled_at: "2026-08-13T10:34:23+12:00"
content_hash: f5cd32862b6002d53750bc4edc68de3a5c88bcef1f06783fc6b4d6013e41f8fb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Curve2D

* * *

# Curve2D

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Describes a Bézier curve in 2D space.

## Description

This class describes a Bézier curve in 2D space. It is mainly used to give a shape to a [Path2D](class_path2d.md#class-path2d), but can be manually sampled for other purposes.

It keeps a cache of precalculated points along the curve, to speed up further calculations.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [bake\_interval](#class-curve2d-property-bake-interval) | `5.0` |
| [int](class_int.md#class-int) | [point\_count](#class-curve2d-property-point-count) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_point](#class-curve2d-method-add-point)(position: [Vector2](class_vector2.md#class-vector2), in: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0), out: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0), index: [int](class_int.md#class-int) = -1) |
| void | [clear\_points](#class-curve2d-method-clear-points)() |
| [float](class_float.md#class-float) | [get\_baked\_length](#class-curve2d-method-get-baked-length)() const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_baked\_points](#class-curve2d-method-get-baked-points)() const |
| [float](class_float.md#class-float) | [get\_closest\_offset](#class-curve2d-method-get-closest-offset)(to\_point: [Vector2](class_vector2.md#class-vector2)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_closest\_point](#class-curve2d-method-get-closest-point)(to\_point: [Vector2](class_vector2.md#class-vector2)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_point\_in](#class-curve2d-method-get-point-in)(idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_point\_out](#class-curve2d-method-get-point-out)(idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_point\_position](#class-curve2d-method-get-point-position)(idx: [int](class_int.md#class-int)) const |
| void | [remove\_point](#class-curve2d-method-remove-point)(idx: [int](class_int.md#class-int)) |
| [Vector2](class_vector2.md#class-vector2) | [sample](#class-curve2d-method-sample)(idx: [int](class_int.md#class-int), t: [float](class_float.md#class-float)) const |
| [Vector2](class_vector2.md#class-vector2) | [sample\_baked](#class-curve2d-method-sample-baked)(offset: [float](class_float.md#class-float) = 0.0, cubic: [bool](class_bool.md#class-bool) = false) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [sample\_baked\_with\_rotation](#class-curve2d-method-sample-baked-with-rotation)(offset: [float](class_float.md#class-float) = 0.0, cubic: [bool](class_bool.md#class-bool) = false) const |
| [Vector2](class_vector2.md#class-vector2) | [samplef](#class-curve2d-method-samplef)(fofs: [float](class_float.md#class-float)) const |
| void | [set\_point\_in](#class-curve2d-method-set-point-in)(idx: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_point\_out](#class-curve2d-method-set-point-out)(idx: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_point\_position](#class-curve2d-method-set-point-position)(idx: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [tessellate](#class-curve2d-method-tessellate)(max\_stages: [int](class_int.md#class-int) = 5, tolerance\_degrees: [float](class_float.md#class-float) = 4) const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [tessellate\_even\_length](#class-curve2d-method-tessellate-even-length)(max\_stages: [int](class_int.md#class-int) = 5, tolerance\_length: [float](class_float.md#class-float) = 20.0) const |

* * *

## Property Descriptions

[float](class_float.md#class-float) **bake\_interval** = `5.0` [🔗](#class-curve2d-property-bake-interval)

- void **set\_bake\_interval**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bake\_interval**()


The distance in pixels between two adjacent cached points. Changing it forces the cache to be recomputed the next time the [get\_baked\_points()](#class-curve2d-method-get-baked-points) or [get\_baked\_length()](#class-curve2d-method-get-baked-length) function is called. The smaller the distance, the more points in the cache and the more memory it will consume, so use with care.

* * *

[int](class_int.md#class-int) **point\_count** = `0` [🔗](#class-curve2d-property-point-count)

- void **set\_point\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_point\_count**()


The number of points describing the curve.

* * *

## Method Descriptions

void **add\_point**(position: [Vector2](class_vector2.md#class-vector2), in: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0), out: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0), index: [int](class_int.md#class-int) = -1) [🔗](#class-curve2d-method-add-point)

Adds a point with the specified `position` relative to the curve's own position, with control points `in` and `out`. Appends the new point at the end of the point list.

If `index` is given, the new point is inserted before the existing point identified by index `index`. Every existing point starting from `index` is shifted further down the list of points. The index must be greater than or equal to `0` and must not exceed the number of existing points in the line. See [point\_count](#class-curve2d-property-point-count).

* * *

void **clear\_points**() [🔗](#class-curve2d-method-clear-points)

Removes all points from the curve.

* * *

[float](class_float.md#class-float) **get\_baked\_length**() const [🔗](#class-curve2d-method-get-baked-length)

Returns the total length of the curve, based on the cached points. Given enough density (see [bake\_interval](#class-curve2d-property-bake-interval)), it should be approximate enough.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_baked\_points**() const [🔗](#class-curve2d-method-get-baked-points)

Returns the cache of points as a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array).

* * *

[float](class_float.md#class-float) **get\_closest\_offset**(to\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-curve2d-method-get-closest-offset)

Returns the closest offset to `to_point`. This offset is meant to be used in [sample\_baked()](#class-curve2d-method-sample-baked).

`to_point` must be in this curve's local space.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_closest\_point**(to\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-curve2d-method-get-closest-point)

Returns the closest point on baked segments (in curve's local space) to `to_point`.

`to_point` must be in this curve's local space.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_point\_in**(idx: [int](class_int.md#class-int)) const [🔗](#class-curve2d-method-get-point-in)

Returns the position of the control point leading to the vertex `idx`. The returned position is relative to the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0)`.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_point\_out**(idx: [int](class_int.md#class-int)) const [🔗](#class-curve2d-method-get-point-out)

Returns the position of the control point leading out of the vertex `idx`. The returned position is relative to the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0)`.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_point\_position**(idx: [int](class_int.md#class-int)) const [🔗](#class-curve2d-method-get-point-position)

Returns the position of the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0)`.

* * *

void **remove\_point**(idx: [int](class_int.md#class-int)) [🔗](#class-curve2d-method-remove-point)

Deletes the point `idx` from the curve. Sends an error to the console if `idx` is out of bounds.

* * *

[Vector2](class_vector2.md#class-vector2) **sample**(idx: [int](class_int.md#class-int), t: [float](class_float.md#class-float)) const [🔗](#class-curve2d-method-sample)

Returns the position between the vertex `idx` and the vertex `idx + 1`, where `t` controls if the point is the first vertex ( `t = 0.0`), the last vertex ( `t = 1.0`), or in between. Values of `t` outside the range ( `0.0 <= t <= 1.0`) give strange, but predictable results.

If `idx` is out of bounds it is truncated to the first or last vertex, and `t` is ignored. If the curve has no points, the function sends an error to the console, and returns `(0, 0)`.

* * *

[Vector2](class_vector2.md#class-vector2) **sample\_baked**(offset: [float](class_float.md#class-float) = 0.0, cubic: [bool](class_bool.md#class-bool) = false) const [🔗](#class-curve2d-method-sample-baked)

Returns a point within the curve at position `offset`, where `offset` is measured as a pixel distance along the curve.

To do that, it finds the two cached points where the `offset` lies between, then interpolates the values. This interpolation is cubic if `cubic` is set to `true`, or linear if set to `false`.

Cubic interpolation tends to follow the curves better, but linear is faster (and often, precise enough).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **sample\_baked\_with\_rotation**(offset: [float](class_float.md#class-float) = 0.0, cubic: [bool](class_bool.md#class-bool) = false) const [🔗](#class-curve2d-method-sample-baked-with-rotation)

Similar to [sample\_baked()](#class-curve2d-method-sample-baked), but returns [Transform2D](class_transform2d.md#class-transform2d) that includes a rotation along the curve, with [Transform2D.origin](class_transform2d.md#class-transform2d-property-origin) as the point position and the [Transform2D.x](class_transform2d.md#class-transform2d-property-x) vector pointing in the direction of the path at that point. Returns an empty transform if the length of the curve is `0`.

```
var baked = curve.sample_baked_with_rotation(offset)
# The returned Transform2D can be set directly.
transform = baked
# You can also read the origin and rotation separately from the returned Transform2D.
position = baked.get_origin()
rotation = baked.get_rotation()

```

* * *

[Vector2](class_vector2.md#class-vector2) **samplef**(fofs: [float](class_float.md#class-float)) const [🔗](#class-curve2d-method-samplef)

Returns the position at the vertex `fofs`. It calls [sample()](#class-curve2d-method-sample) using the integer part of `fofs` as `idx`, and its fractional part as `t`.

* * *

void **set\_point\_in**(idx: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-curve2d-method-set-point-in)

Sets the position of the control point leading to the vertex `idx`. If the index is out of bounds, the function sends an error to the console. The position is relative to the vertex.

* * *

void **set\_point\_out**(idx: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-curve2d-method-set-point-out)

Sets the position of the control point leading out of the vertex `idx`. If the index is out of bounds, the function sends an error to the console. The position is relative to the vertex.

* * *

void **set\_point\_position**(idx: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-curve2d-method-set-point-position)

Sets the position for the vertex `idx`. If the index is out of bounds, the function sends an error to the console.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **tessellate**(max\_stages: [int](class_int.md#class-int) = 5, tolerance\_degrees: [float](class_float.md#class-float) = 4) const [🔗](#class-curve2d-method-tessellate)

Returns a list of points along the curve, with a curvature controlled point density. That is, the curvier parts will have more points than the straighter parts.

This approximation makes straight segments between each point, then subdivides those segments until the resulting shape is similar enough.

`max_stages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!

`tolerance_degrees` controls how many degrees the midpoint of a segment may deviate from the real curve, before the segment has to be subdivided.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **tessellate\_even\_length**(max\_stages: [int](class_int.md#class-int) = 5, tolerance\_length: [float](class_float.md#class-float) = 20.0) const [🔗](#class-curve2d-method-tessellate-even-length)

Returns a list of points along the curve, with almost uniform density. `max_stages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!

`tolerance_length` controls the maximal distance between two neighboring points, before the segment has to be subdivided.

[Previous](class_curve.md "Curve") [Next](class_curve3d.md "Curve3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_curve.md "Curve") [Next](class_curve3d.md "Curve3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).