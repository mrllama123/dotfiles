---
title: Curve3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_curve3d.html
crawled_at: "2026-08-13T10:34:49+12:00"
content_hash: dcaf0710a7232209f60d46170694cfaf483969ee9ad026320bd5a1b3d0ff9d5a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Curve3D

* * *

# Curve3D

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Describes a Bézier curve in 3D space.

## Description

This class describes a Bézier curve in 3D space. It is mainly used to give a shape to a [Path3D](class_path3d.md#class-path3d), but can be manually sampled for other purposes.

It keeps a cache of precalculated points along the curve, to speed up further calculations.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [bake\_interval](#class-curve3d-property-bake-interval) | `0.2` |
| [bool](class_bool.md#class-bool) | [closed](#class-curve3d-property-closed) | `false` |
| [int](class_int.md#class-int) | [point\_count](#class-curve3d-property-point-count) | `0` |
| [bool](class_bool.md#class-bool) | [up\_vector\_enabled](#class-curve3d-property-up-vector-enabled) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [add\_point](#class-curve3d-method-add-point)(position: [Vector3](class_vector3.md#class-vector3), in: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0), out: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0), index: [int](class_int.md#class-int) = -1) |
| void | [clear\_points](#class-curve3d-method-clear-points)() |
| [float](class_float.md#class-float) | [get\_baked\_length](#class-curve3d-method-get-baked-length)() const |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [get\_baked\_points](#class-curve3d-method-get-baked-points)() const |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [get\_baked\_tilts](#class-curve3d-method-get-baked-tilts)() const |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [get\_baked\_up\_vectors](#class-curve3d-method-get-baked-up-vectors)() const |
| [float](class_float.md#class-float) | [get\_closest\_offset](#class-curve3d-method-get-closest-offset)(to\_point: [Vector3](class_vector3.md#class-vector3)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_closest\_point](#class-curve3d-method-get-closest-point)(to\_point: [Vector3](class_vector3.md#class-vector3)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_point\_in](#class-curve3d-method-get-point-in)(idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_point\_out](#class-curve3d-method-get-point-out)(idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_point\_position](#class-curve3d-method-get-point-position)(idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_point\_tilt](#class-curve3d-method-get-point-tilt)(idx: [int](class_int.md#class-int)) const |
| void | [remove\_point](#class-curve3d-method-remove-point)(idx: [int](class_int.md#class-int)) |
| [Vector3](class_vector3.md#class-vector3) | [sample](#class-curve3d-method-sample)(idx: [int](class_int.md#class-int), t: [float](class_float.md#class-float)) const |
| [Vector3](class_vector3.md#class-vector3) | [sample\_baked](#class-curve3d-method-sample-baked)(offset: [float](class_float.md#class-float) = 0.0, cubic: [bool](class_bool.md#class-bool) = false) const |
| [Vector3](class_vector3.md#class-vector3) | [sample\_baked\_up\_vector](#class-curve3d-method-sample-baked-up-vector)(offset: [float](class_float.md#class-float), apply\_tilt: [bool](class_bool.md#class-bool) = false) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [sample\_baked\_with\_rotation](#class-curve3d-method-sample-baked-with-rotation)(offset: [float](class_float.md#class-float) = 0.0, cubic: [bool](class_bool.md#class-bool) = false, apply\_tilt: [bool](class_bool.md#class-bool) = false) const |
| [Vector3](class_vector3.md#class-vector3) | [samplef](#class-curve3d-method-samplef)(fofs: [float](class_float.md#class-float)) const |
| void | [set\_point\_in](#class-curve3d-method-set-point-in)(idx: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_point\_out](#class-curve3d-method-set-point-out)(idx: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_point\_position](#class-curve3d-method-set-point-position)(idx: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_point\_tilt](#class-curve3d-method-set-point-tilt)(idx: [int](class_int.md#class-int), tilt: [float](class_float.md#class-float)) |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [tessellate](#class-curve3d-method-tessellate)(max\_stages: [int](class_int.md#class-int) = 5, tolerance\_degrees: [float](class_float.md#class-float) = 4) const |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [tessellate\_even\_length](#class-curve3d-method-tessellate-even-length)(max\_stages: [int](class_int.md#class-int) = 5, tolerance\_length: [float](class_float.md#class-float) = 0.2) const |

* * *

## Property Descriptions

[float](class_float.md#class-float) **bake\_interval** = `0.2` [🔗](#class-curve3d-property-bake-interval)

- void **set\_bake\_interval**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bake\_interval**()


The distance in meters between two adjacent cached points. Changing it forces the cache to be recomputed the next time the [get\_baked\_points()](#class-curve3d-method-get-baked-points) or [get\_baked\_length()](#class-curve3d-method-get-baked-length) function is called. The smaller the distance, the more points in the cache and the more memory it will consume, so use with care.

* * *

[bool](class_bool.md#class-bool) **closed** = `false` [🔗](#class-curve3d-property-closed)

- void **set\_closed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_closed**()


If `true`, and the curve has more than 2 control points, the last point and the first one will be connected in a loop.

* * *

[int](class_int.md#class-int) **point\_count** = `0` [🔗](#class-curve3d-property-point-count)

- void **set\_point\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_point\_count**()


The number of points describing the curve.

* * *

[bool](class_bool.md#class-bool) **up\_vector\_enabled** = `true` [🔗](#class-curve3d-property-up-vector-enabled)

- void **set\_up\_vector\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_up\_vector\_enabled**()


If `true`, the curve will bake up vectors used for orientation. This is used when [PathFollow3D.rotation\_mode](class_pathfollow3d.md#class-pathfollow3d-property-rotation-mode) is set to [PathFollow3D.ROTATION\_ORIENTED](class_pathfollow3d.md#class-pathfollow3d-constant-rotation-oriented). Changing it forces the cache to be recomputed.

* * *

## Method Descriptions

void **add\_point**(position: [Vector3](class_vector3.md#class-vector3), in: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0), out: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0), index: [int](class_int.md#class-int) = -1) [🔗](#class-curve3d-method-add-point)

Adds a point with the specified `position` relative to the curve's own position, with control points `in` and `out`. Appends the new point at the end of the point list.

If `index` is given, the new point is inserted before the existing point identified by index `index`. Every existing point starting from `index` is shifted further down the list of points. The index must be greater than or equal to `0` and must not exceed the number of existing points in the line. See [point\_count](#class-curve3d-property-point-count).

* * *

void **clear\_points**() [🔗](#class-curve3d-method-clear-points)

Removes all points from the curve.

* * *

[float](class_float.md#class-float) **get\_baked\_length**() const [🔗](#class-curve3d-method-get-baked-length)

Returns the total length of the curve, based on the cached points. Given enough density (see [bake\_interval](#class-curve3d-property-bake-interval)), it should be approximate enough.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_baked\_points**() const [🔗](#class-curve3d-method-get-baked-points)

Returns the cache of points as a [PackedVector3Array](class_packedvector3array.md#class-packedvector3array).

* * *

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_baked\_tilts**() const [🔗](#class-curve3d-method-get-baked-tilts)

Returns the cache of tilts as a [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array).

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_baked\_up\_vectors**() const [🔗](#class-curve3d-method-get-baked-up-vectors)

Returns the cache of up vectors as a [PackedVector3Array](class_packedvector3array.md#class-packedvector3array).

If [up\_vector\_enabled](#class-curve3d-property-up-vector-enabled) is `false`, the cache will be empty.

* * *

[float](class_float.md#class-float) **get\_closest\_offset**(to\_point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-curve3d-method-get-closest-offset)

Returns the closest offset to `to_point`. This offset is meant to be used in [sample\_baked()](#class-curve3d-method-sample-baked) or [sample\_baked\_up\_vector()](#class-curve3d-method-sample-baked-up-vector).

`to_point` must be in this curve's local space.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_closest\_point**(to\_point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-curve3d-method-get-closest-point)

Returns the closest point on baked segments (in curve's local space) to `to_point`.

`to_point` must be in this curve's local space.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_point\_in**(idx: [int](class_int.md#class-int)) const [🔗](#class-curve3d-method-get-point-in)

Returns the position of the control point leading to the vertex `idx`. The returned position is relative to the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0, 0)`.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_point\_out**(idx: [int](class_int.md#class-int)) const [🔗](#class-curve3d-method-get-point-out)

Returns the position of the control point leading out of the vertex `idx`. The returned position is relative to the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0, 0)`.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_point\_position**(idx: [int](class_int.md#class-int)) const [🔗](#class-curve3d-method-get-point-position)

Returns the position of the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0, 0)`.

* * *

[float](class_float.md#class-float) **get\_point\_tilt**(idx: [int](class_int.md#class-int)) const [🔗](#class-curve3d-method-get-point-tilt)

Returns the tilt angle in radians for the point `idx`. If the index is out of bounds, the function sends an error to the console, and returns `0`.

* * *

void **remove\_point**(idx: [int](class_int.md#class-int)) [🔗](#class-curve3d-method-remove-point)

Deletes the point `idx` from the curve. Sends an error to the console if `idx` is out of bounds.

* * *

[Vector3](class_vector3.md#class-vector3) **sample**(idx: [int](class_int.md#class-int), t: [float](class_float.md#class-float)) const [🔗](#class-curve3d-method-sample)

Returns the position between the vertex `idx` and the vertex `idx + 1`, where `t` controls if the point is the first vertex ( `t = 0.0`), the last vertex ( `t = 1.0`), or in between. Values of `t` outside the range ( `0.0 >= t <=1`) give strange, but predictable results.

If `idx` is out of bounds it is truncated to the first or last vertex, and `t` is ignored. If the curve has no points, the function sends an error to the console, and returns `(0, 0, 0)`.

* * *

[Vector3](class_vector3.md#class-vector3) **sample\_baked**(offset: [float](class_float.md#class-float) = 0.0, cubic: [bool](class_bool.md#class-bool) = false) const [🔗](#class-curve3d-method-sample-baked)

Returns a point within the curve at position `offset`, where `offset` is measured as a distance in 3D units along the curve. To do that, it finds the two cached points where the `offset` lies between, then interpolates the values. This interpolation is cubic if `cubic` is set to `true`, or linear if set to `false`.

Cubic interpolation tends to follow the curves better, but linear is faster (and often, precise enough).

* * *

[Vector3](class_vector3.md#class-vector3) **sample\_baked\_up\_vector**(offset: [float](class_float.md#class-float), apply\_tilt: [bool](class_bool.md#class-bool) = false) const [🔗](#class-curve3d-method-sample-baked-up-vector)

Returns an up vector within the curve at position `offset`, where `offset` is measured as a distance in 3D units along the curve. To do that, it finds the two cached up vectors where the `offset` lies between, then interpolates the values. If `apply_tilt` is `true`, an interpolated tilt is applied to the interpolated up vector.

If the curve has no up vectors, the function sends an error to the console, and returns `(0, 1, 0)`.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **sample\_baked\_with\_rotation**(offset: [float](class_float.md#class-float) = 0.0, cubic: [bool](class_bool.md#class-bool) = false, apply\_tilt: [bool](class_bool.md#class-bool) = false) const [🔗](#class-curve3d-method-sample-baked-with-rotation)

Returns a [Transform3D](class_transform3d.md#class-transform3d) with `origin` as point position, `basis.x` as sideway vector, `basis.y` as up vector, `basis.z` as forward vector. When the curve length is 0, there is no reasonable way to calculate the rotation, all vectors aligned with global space axes. See also [sample\_baked()](#class-curve3d-method-sample-baked).

* * *

[Vector3](class_vector3.md#class-vector3) **samplef**(fofs: [float](class_float.md#class-float)) const [🔗](#class-curve3d-method-samplef)

Returns the position at the vertex `fofs`. It calls [sample()](#class-curve3d-method-sample) using the integer part of `fofs` as `idx`, and its fractional part as `t`.

* * *

void **set\_point\_in**(idx: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-curve3d-method-set-point-in)

Sets the position of the control point leading to the vertex `idx`. If the index is out of bounds, the function sends an error to the console. The position is relative to the vertex.

* * *

void **set\_point\_out**(idx: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-curve3d-method-set-point-out)

Sets the position of the control point leading out of the vertex `idx`. If the index is out of bounds, the function sends an error to the console. The position is relative to the vertex.

* * *

void **set\_point\_position**(idx: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-curve3d-method-set-point-position)

Sets the position for the vertex `idx`. If the index is out of bounds, the function sends an error to the console.

* * *

void **set\_point\_tilt**(idx: [int](class_int.md#class-int), tilt: [float](class_float.md#class-float)) [🔗](#class-curve3d-method-set-point-tilt)

Sets the tilt angle in radians for the point `idx`. If the index is out of bounds, the function sends an error to the console.

The tilt controls the rotation along the look-at axis an object traveling the path would have. In the case of a curve controlling a [PathFollow3D](class_pathfollow3d.md#class-pathfollow3d), this tilt is an offset over the natural tilt the [PathFollow3D](class_pathfollow3d.md#class-pathfollow3d) calculates.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **tessellate**(max\_stages: [int](class_int.md#class-int) = 5, tolerance\_degrees: [float](class_float.md#class-float) = 4) const [🔗](#class-curve3d-method-tessellate)

Returns a list of points along the curve, with a curvature controlled point density. That is, the curvier parts will have more points than the straighter parts.

This approximation makes straight segments between each point, then subdivides those segments until the resulting shape is similar enough.

`max_stages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!

`tolerance_degrees` controls how many degrees the midpoint of a segment may deviate from the real curve, before the segment has to be subdivided.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **tessellate\_even\_length**(max\_stages: [int](class_int.md#class-int) = 5, tolerance\_length: [float](class_float.md#class-float) = 0.2) const [🔗](#class-curve3d-method-tessellate-even-length)

Returns a list of points along the curve, with almost uniform density. `max_stages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!

`tolerance_length` controls the maximal distance between two neighboring points, before the segment has to be subdivided.

[Previous](class_curve2d.md "Curve2D") [Next](class_curvetexture.md "CurveTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_curve2d.md "Curve2D") [Next](class_curvetexture.md "CurveTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).