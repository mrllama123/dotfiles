---
title: Projection — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_projection.html
crawled_at: "2026-08-13T10:30:58+12:00"
content_hash: 80fa8efffff532a4f4b5da6613352802acf0d46b0d70ba125ab4f19d5bb13c76
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Projection

* * *

# Projection

A 4×4 matrix for 3D projective transformations.

## Description

A 4×4 matrix used for 3D projective transformations. It can represent transformations such as translation, rotation, scaling, shearing, and perspective division. It consists of four [Vector4](class_vector4.md#class-vector4) columns.

For purely linear transformations (translation, rotation, and scale), it is recommended to use [Transform3D](class_transform3d.md#class-transform3d), as it is more performant and requires less memory.

Used internally as [Camera3D](class_camera3d.md#class-camera3d)'s projection matrix.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector4](class_vector4.md#class-vector4) | [w](#class-projection-property-w) | `Vector4(0, 0, 0, 1)` |
| [Vector4](class_vector4.md#class-vector4) | [x](#class-projection-property-x) | `Vector4(1, 0, 0, 0)` |
| [Vector4](class_vector4.md#class-vector4) | [y](#class-projection-property-y) | `Vector4(0, 1, 0, 0)` |
| [Vector4](class_vector4.md#class-vector4) | [z](#class-projection-property-z) | `Vector4(0, 0, 1, 0)` |

## Constructors

|     |     |
| --- | --- |
| [Projection](#class-projection) | [Projection](#class-projection-constructor-projection)() |
| [Projection](#class-projection) | [Projection](#class-projection-constructor-projection)(from: [Projection](#class-projection)) |
| [Projection](#class-projection) | [Projection](#class-projection-constructor-projection)(from: [Transform3D](class_transform3d.md#class-transform3d)) |
| [Projection](#class-projection) | [Projection](#class-projection-constructor-projection)(x\_axis: [Vector4](class_vector4.md#class-vector4), y\_axis: [Vector4](class_vector4.md#class-vector4), z\_axis: [Vector4](class_vector4.md#class-vector4), w\_axis: [Vector4](class_vector4.md#class-vector4)) |

## Methods

|     |     |
| --- | --- |
| [Projection](#class-projection) | [create\_depth\_correction](#class-projection-method-create-depth-correction)(flip\_y: [bool](class_bool.md#class-bool)) static |
| [Projection](#class-projection) | [create\_fit\_aabb](#class-projection-method-create-fit-aabb)(aabb: [AABB](class_aabb.md#class-aabb)) static |
| [Projection](#class-projection) | [create\_for\_hmd](#class-projection-method-create-for-hmd)(eye: [int](class_int.md#class-int), aspect: [float](class_float.md#class-float), intraocular\_dist: [float](class_float.md#class-float), display\_width: [float](class_float.md#class-float), display\_to\_lens: [float](class_float.md#class-float), oversample: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) static |
| [Projection](#class-projection) | [create\_frustum](#class-projection-method-create-frustum)(left: [float](class_float.md#class-float), right: [float](class_float.md#class-float), bottom: [float](class_float.md#class-float), top: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) static |
| [Projection](#class-projection) | [create\_frustum\_aspect](#class-projection-method-create-frustum-aspect)(size: [float](class_float.md#class-float), aspect: [float](class_float.md#class-float), offset: [Vector2](class_vector2.md#class-vector2), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float), flip\_fov: [bool](class_bool.md#class-bool) = false) static |
| [Projection](#class-projection) | [create\_light\_atlas\_rect](#class-projection-method-create-light-atlas-rect)(rect: [Rect2](class_rect2.md#class-rect2)) static |
| [Projection](#class-projection) | [create\_orthogonal](#class-projection-method-create-orthogonal)(left: [float](class_float.md#class-float), right: [float](class_float.md#class-float), bottom: [float](class_float.md#class-float), top: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) static |
| [Projection](#class-projection) | [create\_orthogonal\_aspect](#class-projection-method-create-orthogonal-aspect)(size: [float](class_float.md#class-float), aspect: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float), flip\_fov: [bool](class_bool.md#class-bool) = false) static |
| [Projection](#class-projection) | [create\_perspective](#class-projection-method-create-perspective)(fovy: [float](class_float.md#class-float), aspect: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float), flip\_fov: [bool](class_bool.md#class-bool) = false) static |
| [Projection](#class-projection) | [create\_perspective\_hmd](#class-projection-method-create-perspective-hmd)(fovy: [float](class_float.md#class-float), aspect: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float), flip\_fov: [bool](class_bool.md#class-bool), eye: [int](class_int.md#class-int), intraocular\_dist: [float](class_float.md#class-float), convergence\_dist: [float](class_float.md#class-float)) static |
| [float](class_float.md#class-float) | [determinant](#class-projection-method-determinant)() const |
| [Projection](#class-projection) | [flipped\_y](#class-projection-method-flipped-y)() const |
| [float](class_float.md#class-float) | [get\_aspect](#class-projection-method-get-aspect)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_far\_plane\_half\_extents](#class-projection-method-get-far-plane-half-extents)() const |
| [float](class_float.md#class-float) | [get\_fov](#class-projection-method-get-fov)() const |
| [float](class_float.md#class-float) | [get\_fovy](#class-projection-method-get-fovy)(fovx: [float](class_float.md#class-float), aspect: [float](class_float.md#class-float)) static |
| [float](class_float.md#class-float) | [get\_lod\_multiplier](#class-projection-method-get-lod-multiplier)() const |
| [int](class_int.md#class-int) | [get\_pixels\_per\_meter](#class-projection-method-get-pixels-per-meter)(for\_pixel\_width: [int](class_int.md#class-int)) const |
| [Plane](class_plane.md#class-plane) | [get\_projection\_plane](#class-projection-method-get-projection-plane)(plane: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_viewport\_half\_extents](#class-projection-method-get-viewport-half-extents)() const |
| [float](class_float.md#class-float) | [get\_z\_far](#class-projection-method-get-z-far)() const |
| [float](class_float.md#class-float) | [get\_z\_near](#class-projection-method-get-z-near)() const |
| [Projection](#class-projection) | [inverse](#class-projection-method-inverse)() const |
| [bool](class_bool.md#class-bool) | [is\_orthogonal](#class-projection-method-is-orthogonal)() const |
| [Projection](#class-projection) | [jitter\_offseted](#class-projection-method-jitter-offseted)(offset: [Vector2](class_vector2.md#class-vector2)) const |
| [Projection](#class-projection) | [perspective\_znear\_adjusted](#class-projection-method-perspective-znear-adjusted)(new\_znear: [float](class_float.md#class-float)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-projection-operator-neq-projection)(right: [Projection](#class-projection)) |
| [Projection](#class-projection) | [operator \*](#class-projection-operator-mul-projection)(right: [Projection](#class-projection)) |
| [Vector4](class_vector4.md#class-vector4) | [operator \*](#class-projection-operator-mul-vector4)(right: [Vector4](class_vector4.md#class-vector4)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-projection-operator-eq-projection)(right: [Projection](#class-projection)) |
| [Vector4](class_vector4.md#class-vector4) | [operator \[\]](#class-projection-operator-idx-int)(index: [int](class_int.md#class-int)) |

* * *

## Enumerations

enum **Planes**: [🔗](#enum-projection-planes)

[Planes](#enum-projection-planes) **PLANE\_NEAR** = `0`

The index value of the projection's near clipping plane.

[Planes](#enum-projection-planes) **PLANE\_FAR** = `1`

The index value of the projection's far clipping plane.

[Planes](#enum-projection-planes) **PLANE\_LEFT** = `2`

The index value of the projection's left clipping plane.

[Planes](#enum-projection-planes) **PLANE\_TOP** = `3`

The index value of the projection's top clipping plane.

[Planes](#enum-projection-planes) **PLANE\_RIGHT** = `4`

The index value of the projection's right clipping plane.

[Planes](#enum-projection-planes) **PLANE\_BOTTOM** = `5`

The index value of the projection bottom clipping plane.

* * *

## Constants

**IDENTITY** = `Projection(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)` [🔗](#class-projection-constant-identity)

A **Projection** with no transformation defined. When applied to other data structures, no transformation is performed.

**ZERO** = `Projection(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)` [🔗](#class-projection-constant-zero)

A **Projection** with all values initialized to 0. When applied to other data structures, they will be zeroed.

* * *

## Property Descriptions

[Vector4](class_vector4.md#class-vector4) **w** = `Vector4(0, 0, 0, 1)` [🔗](#class-projection-property-w)

The projection matrix's W vector (column 3). Equivalent to array index `3`.

* * *

[Vector4](class_vector4.md#class-vector4) **x** = `Vector4(1, 0, 0, 0)` [🔗](#class-projection-property-x)

The projection matrix's X vector (column 0). Equivalent to array index `0`.

* * *

[Vector4](class_vector4.md#class-vector4) **y** = `Vector4(0, 1, 0, 0)` [🔗](#class-projection-property-y)

The projection matrix's Y vector (column 1). Equivalent to array index `1`.

* * *

[Vector4](class_vector4.md#class-vector4) **z** = `Vector4(0, 0, 1, 0)` [🔗](#class-projection-property-z)

The projection matrix's Z vector (column 2). Equivalent to array index `2`.

* * *

## Constructor Descriptions

[Projection](#class-projection) **Projection**() [🔗](#class-projection-constructor-projection)

Constructs a default-initialized **Projection** identical to [IDENTITY](#class-projection-constant-identity).

**Note:** In C#, this constructs a **Projection** identical to [ZERO](#class-projection-constant-zero).

* * *

[Projection](#class-projection) **Projection**(from: [Projection](#class-projection))

Constructs a **Projection** as a copy of the given **Projection**.

* * *

[Projection](#class-projection) **Projection**(from: [Transform3D](class_transform3d.md#class-transform3d))

Constructs a Projection as a copy of the given [Transform3D](class_transform3d.md#class-transform3d).

* * *

[Projection](#class-projection) **Projection**(x\_axis: [Vector4](class_vector4.md#class-vector4), y\_axis: [Vector4](class_vector4.md#class-vector4), z\_axis: [Vector4](class_vector4.md#class-vector4), w\_axis: [Vector4](class_vector4.md#class-vector4))

Constructs a Projection from four [Vector4](class_vector4.md#class-vector4) values (matrix columns).

* * *

## Method Descriptions

[Projection](#class-projection) **create\_depth\_correction**(flip\_y: [bool](class_bool.md#class-bool)) static [🔗](#class-projection-method-create-depth-correction)

Creates a new **Projection** that projects positions from a depth range of `-1` to `1` to one that ranges from `0` to `1`, and flips the projected positions vertically, according to `flip_y`.

* * *

[Projection](#class-projection) **create\_fit\_aabb**(aabb: [AABB](class_aabb.md#class-aabb)) static [🔗](#class-projection-method-create-fit-aabb)

Creates a new **Projection** that scales a given projection to fit around a given [AABB](class_aabb.md#class-aabb) in projection space.

* * *

[Projection](#class-projection) **create\_for\_hmd**(eye: [int](class_int.md#class-int), aspect: [float](class_float.md#class-float), intraocular\_dist: [float](class_float.md#class-float), display\_width: [float](class_float.md#class-float), display\_to\_lens: [float](class_float.md#class-float), oversample: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) static [🔗](#class-projection-method-create-for-hmd)

Creates a new **Projection** for projecting positions onto a head-mounted display with the given X:Y aspect ratio, distance between eyes, display width, distance to lens, oversampling factor, and depth clipping planes.

`eye` creates the projection for the left eye when set to 1, or the right eye when set to 2.

* * *

[Projection](#class-projection) **create\_frustum**(left: [float](class_float.md#class-float), right: [float](class_float.md#class-float), bottom: [float](class_float.md#class-float), top: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) static [🔗](#class-projection-method-create-frustum)

Creates a new **Projection** that projects positions in a frustum with the given clipping planes.

* * *

[Projection](#class-projection) **create\_frustum\_aspect**(size: [float](class_float.md#class-float), aspect: [float](class_float.md#class-float), offset: [Vector2](class_vector2.md#class-vector2), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float), flip\_fov: [bool](class_bool.md#class-bool) = false) static [🔗](#class-projection-method-create-frustum-aspect)

Creates a new **Projection** that projects positions in a frustum with the given size, X:Y aspect ratio, offset, and clipping planes.

`flip_fov` determines whether the projection's field of view is flipped over its diagonal.

* * *

[Projection](#class-projection) **create\_light\_atlas\_rect**(rect: [Rect2](class_rect2.md#class-rect2)) static [🔗](#class-projection-method-create-light-atlas-rect)

Creates a new **Projection** that projects positions into the given [Rect2](class_rect2.md#class-rect2).

* * *

[Projection](#class-projection) **create\_orthogonal**(left: [float](class_float.md#class-float), right: [float](class_float.md#class-float), bottom: [float](class_float.md#class-float), top: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) static [🔗](#class-projection-method-create-orthogonal)

Creates a new **Projection** that projects positions using an orthogonal projection with the given clipping planes.

* * *

[Projection](#class-projection) **create\_orthogonal\_aspect**(size: [float](class_float.md#class-float), aspect: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float), flip\_fov: [bool](class_bool.md#class-bool) = false) static [🔗](#class-projection-method-create-orthogonal-aspect)

Creates a new **Projection** that projects positions using an orthogonal projection with the given size, X:Y aspect ratio, and clipping planes.

`flip_fov` determines whether the projection's field of view is flipped over its diagonal.

* * *

[Projection](#class-projection) **create\_perspective**(fovy: [float](class_float.md#class-float), aspect: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float), flip\_fov: [bool](class_bool.md#class-bool) = false) static [🔗](#class-projection-method-create-perspective)

Creates a new **Projection** that projects positions using a perspective projection with the given Y-axis field of view (in degrees), X:Y aspect ratio, and clipping planes.

`flip_fov` determines whether the projection's field of view is flipped over its diagonal.

* * *

[Projection](#class-projection) **create\_perspective\_hmd**(fovy: [float](class_float.md#class-float), aspect: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float), flip\_fov: [bool](class_bool.md#class-bool), eye: [int](class_int.md#class-int), intraocular\_dist: [float](class_float.md#class-float), convergence\_dist: [float](class_float.md#class-float)) static [🔗](#class-projection-method-create-perspective-hmd)

Creates a new **Projection** that projects positions using a perspective projection with the given Y-axis field of view (in degrees), X:Y aspect ratio, and clipping distances. The projection is adjusted for a head-mounted display with the given distance between eyes and distance to a point that can be focused on.

`eye` creates the projection for the left eye when set to 1, or the right eye when set to 2.

`flip_fov` determines whether the projection's field of view is flipped over its diagonal.

* * *

[float](class_float.md#class-float) **determinant**() const [🔗](#class-projection-method-determinant)

Returns a scalar value that is the signed factor by which areas are scaled by this matrix. If the sign is negative, the matrix flips the orientation of the area.

The determinant can be used to calculate the invertibility of a matrix or solve linear systems of equations involving the matrix, among other applications.

* * *

[Projection](#class-projection) **flipped\_y**() const [🔗](#class-projection-method-flipped-y)

Returns a copy of this **Projection** with the signs of the values of the Y column flipped.

* * *

[float](class_float.md#class-float) **get\_aspect**() const [🔗](#class-projection-method-get-aspect)

Returns the X:Y aspect ratio of this **Projection**'s viewport.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_far\_plane\_half\_extents**() const [🔗](#class-projection-method-get-far-plane-half-extents)

Returns the dimensions of the far clipping plane of the projection, divided by two.

* * *

[float](class_float.md#class-float) **get\_fov**() const [🔗](#class-projection-method-get-fov)

Returns the horizontal field of view of the projection (in degrees).

* * *

[float](class_float.md#class-float) **get\_fovy**(fovx: [float](class_float.md#class-float), aspect: [float](class_float.md#class-float)) static [🔗](#class-projection-method-get-fovy)

Returns the vertical field of view of the projection (in degrees) associated with the given horizontal field of view (in degrees) and aspect ratio.

**Note:** Unlike most methods of **Projection**, `aspect` is expected to be 1 divided by the X:Y aspect ratio.

* * *

[float](class_float.md#class-float) **get\_lod\_multiplier**() const [🔗](#class-projection-method-get-lod-multiplier)

Returns the factor by which the visible level of detail is scaled by this **Projection**.

* * *

[int](class_int.md#class-int) **get\_pixels\_per\_meter**(for\_pixel\_width: [int](class_int.md#class-int)) const [🔗](#class-projection-method-get-pixels-per-meter)

Returns `for_pixel_width` divided by the viewport's width measured in meters on the near plane, after this **Projection** is applied.

* * *

[Plane](class_plane.md#class-plane) **get\_projection\_plane**(plane: [int](class_int.md#class-int)) const [🔗](#class-projection-method-get-projection-plane)

Returns the clipping plane of this **Projection** whose index is given by `plane`.

`plane` should be equal to one of [PLANE\_NEAR](#class-projection-constant-plane-near), [PLANE\_FAR](#class-projection-constant-plane-far), [PLANE\_LEFT](#class-projection-constant-plane-left), [PLANE\_TOP](#class-projection-constant-plane-top), [PLANE\_RIGHT](#class-projection-constant-plane-right), or [PLANE\_BOTTOM](#class-projection-constant-plane-bottom).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_viewport\_half\_extents**() const [🔗](#class-projection-method-get-viewport-half-extents)

Returns the dimensions of the viewport plane that this **Projection** projects positions onto, divided by two.

* * *

[float](class_float.md#class-float) **get\_z\_far**() const [🔗](#class-projection-method-get-z-far)

Returns the distance for this **Projection** beyond which positions are clipped.

* * *

[float](class_float.md#class-float) **get\_z\_near**() const [🔗](#class-projection-method-get-z-near)

Returns the distance for this **Projection** before which positions are clipped.

* * *

[Projection](#class-projection) **inverse**() const [🔗](#class-projection-method-inverse)

Returns a **Projection** that performs the inverse of this **Projection**'s projective transformation.

* * *

[bool](class_bool.md#class-bool) **is\_orthogonal**() const [🔗](#class-projection-method-is-orthogonal)

Returns `true` if this **Projection** performs an orthogonal projection.

* * *

[Projection](#class-projection) **jitter\_offseted**(offset: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-projection-method-jitter-offseted)

Returns a **Projection** with the X and Y values from the given [Vector2](class_vector2.md#class-vector2) added to the first and second values of the final column respectively.

* * *

[Projection](#class-projection) **perspective\_znear\_adjusted**(new\_znear: [float](class_float.md#class-float)) const [🔗](#class-projection-method-perspective-znear-adjusted)

Returns a **Projection** with the near clipping distance adjusted to be `new_znear`.

**Note:** The original **Projection** must be a perspective projection.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Projection](#class-projection)) [🔗](#class-projection-operator-neq-projection)

Returns `true` if the projections are not equal.

**Note:** Due to floating-point precision errors, this may return `true`, even if the projections are virtually equal. An `is_equal_approx` method may be added in a future version of Godot.

* * *

[Projection](#class-projection) **operator \***(right: [Projection](#class-projection)) [🔗](#class-projection-operator-mul-projection)

Returns a **Projection** that applies the combined transformations of this **Projection** and `right`.

* * *

[Vector4](class_vector4.md#class-vector4) **operator \***(right: [Vector4](class_vector4.md#class-vector4)) [🔗](#class-projection-operator-mul-vector4)

Projects (multiplies) the given [Vector4](class_vector4.md#class-vector4) by this **Projection** matrix.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Projection](#class-projection)) [🔗](#class-projection-operator-eq-projection)

Returns `true` if the projections are equal.

**Note:** Due to floating-point precision errors, this may return `false`, even if the projections are virtually equal. An `is_equal_approx` method may be added in a future version of Godot.

* * *

[Vector4](class_vector4.md#class-vector4) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-projection-operator-idx-int)

Returns the column of the **Projection** with the given index.

Indices are in the following order: x, y, z, w.

[Previous](class_plane.md "Plane") [Next](class_quaternion.md "Quaternion")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_plane.md "Plane") [Next](class_quaternion.md "Quaternion")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).