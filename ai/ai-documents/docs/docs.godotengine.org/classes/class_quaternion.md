---
title: Quaternion — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_quaternion.html
crawled_at: "2026-08-13T10:23:14+12:00"
content_hash: 44e7b38801badd11254eaf8fefb203a877c957452b82253fb5ef02badede80bd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Quaternion

* * *

# Quaternion

A unit quaternion used for representing 3D rotations.

## Description

The **Quaternion** built-in [Variant](class_variant.md#class-variant) type is a 4D data structure that represents rotation in the form of a [Hamilton convention quaternion](https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation). Compared to the [Basis](class_basis.md#class-basis) type which can store both rotation and scale, quaternions can _only_ store rotation.

A **Quaternion** is composed by 4 floating-point components: [w](#class-quaternion-property-w), [x](#class-quaternion-property-x), [y](#class-quaternion-property-y), and [z](#class-quaternion-property-z). These components are very compact in memory, and because of this some operations are more efficient and less likely to cause floating-point errors. Methods such as [get\_angle()](#class-quaternion-method-get-angle), [get\_axis()](#class-quaternion-method-get-axis), and [slerp()](#class-quaternion-method-slerp) are faster than their [Basis](class_basis.md#class-basis) counterparts.

For a great introduction to quaternions, see [this video by 3Blue1Brown](https://www.youtube.com/watch?v=d4EgbgTm0Bg). You do not need to know the math behind quaternions, as Godot provides several helper methods that handle it for you. These include [slerp()](#class-quaternion-method-slerp) and [spherical\_cubic\_interpolate()](#class-quaternion-method-spherical-cubic-interpolate), as well as the `*` operator.

**Note:** Quaternions must be normalized before being used for rotation (see [normalized()](#class-quaternion-method-normalized)).

**Note:** Similarly to [Vector2](class_vector2.md#class-vector2) and [Vector3](class_vector3.md#class-vector3), the components of a quaternion use 32-bit precision by default, unlike [float](class_float.md#class-float) which is always 64-bit. If double precision is needed, compile the engine with the option `precision=double`.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [3Blue1Brown's video on Quaternions](https://www.youtube.com/watch?v=d4EgbgTm0Bg)

- [Online Quaternion Visualization](https://quaternions.online/)

- [Using 3D transforms](../tutorials/3d/using_transforms.md#interpolating-with-quaternions)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)

- [Advanced Quaternion Visualization](https://iwatake2222.github.io/rotation_master/rotation_master.html)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [w](#class-quaternion-property-w) | `1.0` |
| [float](class_float.md#class-float) | [x](#class-quaternion-property-x) | `0.0` |
| [float](class_float.md#class-float) | [y](#class-quaternion-property-y) | `0.0` |
| [float](class_float.md#class-float) | [z](#class-quaternion-property-z) | `0.0` |

## Constructors

|     |     |
| --- | --- |
| [Quaternion](#class-quaternion) | [Quaternion](#class-quaternion-constructor-quaternion)() |
| [Quaternion](#class-quaternion) | [Quaternion](#class-quaternion-constructor-quaternion)(from: [Quaternion](#class-quaternion)) |
| [Quaternion](#class-quaternion) | [Quaternion](#class-quaternion-constructor-quaternion)(arc\_from: [Vector3](class_vector3.md#class-vector3), arc\_to: [Vector3](class_vector3.md#class-vector3)) |
| [Quaternion](#class-quaternion) | [Quaternion](#class-quaternion-constructor-quaternion)(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) |
| [Quaternion](#class-quaternion) | [Quaternion](#class-quaternion-constructor-quaternion)(from: [Basis](class_basis.md#class-basis)) |
| [Quaternion](#class-quaternion) | [Quaternion](#class-quaternion-constructor-quaternion)(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float), z: [float](class_float.md#class-float), w: [float](class_float.md#class-float)) |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [angle\_to](#class-quaternion-method-angle-to)(to: [Quaternion](#class-quaternion)) const |
| [float](class_float.md#class-float) | [dot](#class-quaternion-method-dot)(with: [Quaternion](#class-quaternion)) const |
| [Quaternion](#class-quaternion) | [exp](#class-quaternion-method-exp)() const |
| [Quaternion](#class-quaternion) | [from\_euler](#class-quaternion-method-from-euler)(euler: [Vector3](class_vector3.md#class-vector3)) static |
| [float](class_float.md#class-float) | [get\_angle](#class-quaternion-method-get-angle)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_axis](#class-quaternion-method-get-axis)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_euler](#class-quaternion-method-get-euler)(order: [int](class_int.md#class-int) = 2) const |
| [Quaternion](#class-quaternion) | [inverse](#class-quaternion-method-inverse)() const |
| [bool](class_bool.md#class-bool) | [is\_equal\_approx](#class-quaternion-method-is-equal-approx)(to: [Quaternion](#class-quaternion)) const |
| [bool](class_bool.md#class-bool) | [is\_finite](#class-quaternion-method-is-finite)() const |
| [bool](class_bool.md#class-bool) | [is\_normalized](#class-quaternion-method-is-normalized)() const |
| [float](class_float.md#class-float) | [length](#class-quaternion-method-length)() const |
| [float](class_float.md#class-float) | [length\_squared](#class-quaternion-method-length-squared)() const |
| [Quaternion](#class-quaternion) | [log](#class-quaternion-method-log)() const |
| [Quaternion](#class-quaternion) | [normalized](#class-quaternion-method-normalized)() const |
| [Quaternion](#class-quaternion) | [slerp](#class-quaternion-method-slerp)(to: [Quaternion](#class-quaternion), weight: [float](class_float.md#class-float)) const |
| [Quaternion](#class-quaternion) | [slerpni](#class-quaternion-method-slerpni)(to: [Quaternion](#class-quaternion), weight: [float](class_float.md#class-float)) const |
| [Quaternion](#class-quaternion) | [spherical\_cubic\_interpolate](#class-quaternion-method-spherical-cubic-interpolate)(b: [Quaternion](#class-quaternion), pre\_a: [Quaternion](#class-quaternion), post\_b: [Quaternion](#class-quaternion), weight: [float](class_float.md#class-float)) const |
| [Quaternion](#class-quaternion) | [spherical\_cubic\_interpolate\_in\_time](#class-quaternion-method-spherical-cubic-interpolate-in-time)(b: [Quaternion](#class-quaternion), pre\_a: [Quaternion](#class-quaternion), post\_b: [Quaternion](#class-quaternion), weight: [float](class_float.md#class-float), b\_t: [float](class_float.md#class-float), pre\_a\_t: [float](class_float.md#class-float), post\_b\_t: [float](class_float.md#class-float)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-quaternion-operator-neq-quaternion)(right: [Quaternion](#class-quaternion)) |
| [Quaternion](#class-quaternion) | [operator \*](#class-quaternion-operator-mul-quaternion)(right: [Quaternion](#class-quaternion)) |
| [Vector3](class_vector3.md#class-vector3) | [operator \*](#class-quaternion-operator-mul-vector3)(right: [Vector3](class_vector3.md#class-vector3)) |
| [Quaternion](#class-quaternion) | [operator \*](#class-quaternion-operator-mul-float)(right: [float](class_float.md#class-float)) |
| [Quaternion](#class-quaternion) | [operator \*](#class-quaternion-operator-mul-int)(right: [int](class_int.md#class-int)) |
| [Quaternion](#class-quaternion) | [operator +](#class-quaternion-operator-sum-quaternion)(right: [Quaternion](#class-quaternion)) |
| [Quaternion](#class-quaternion) | [operator -](#class-quaternion-operator-dif-quaternion)(right: [Quaternion](#class-quaternion)) |
| [Quaternion](#class-quaternion) | [operator /](#class-quaternion-operator-div-float)(right: [float](class_float.md#class-float)) |
| [Quaternion](#class-quaternion) | [operator /](#class-quaternion-operator-div-int)(right: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-quaternion-operator-eq-quaternion)(right: [Quaternion](#class-quaternion)) |
| [float](class_float.md#class-float) | [operator \[\]](#class-quaternion-operator-idx-int)(index: [int](class_int.md#class-int)) |
| [Quaternion](#class-quaternion) | [operator unary+](#class-quaternion-operator-unplus)() |
| [Quaternion](#class-quaternion) | [operator unary-](#class-quaternion-operator-unminus)() |

* * *

## Constants

**IDENTITY** = `Quaternion(0, 0, 0, 1)` [🔗](#class-quaternion-constant-identity)

The identity quaternion, representing no rotation. This has the same rotation as [Basis.IDENTITY](class_basis.md#class-basis-constant-identity).

If a [Vector3](class_vector3.md#class-vector3) is rotated (multiplied) by this quaternion, it does not change.

**Note:** In GDScript, this constant is equivalent to creating a [Quaternion](#class-quaternion-constructor-quaternion) without any arguments. It can be used to make your code clearer, and for consistency with C#.

* * *

## Property Descriptions

[float](class_float.md#class-float) **w** = `1.0` [🔗](#class-quaternion-property-w)

W component of the quaternion. This is the "real" part.

**Note:** Quaternion components should usually not be manipulated directly.

* * *

[float](class_float.md#class-float) **x** = `0.0` [🔗](#class-quaternion-property-x)

X component of the quaternion. This is the value along the "imaginary" `i` axis.

**Note:** Quaternion components should usually not be manipulated directly.

* * *

[float](class_float.md#class-float) **y** = `0.0` [🔗](#class-quaternion-property-y)

Y component of the quaternion. This is the value along the "imaginary" `j` axis.

**Note:** Quaternion components should usually not be manipulated directly.

* * *

[float](class_float.md#class-float) **z** = `0.0` [🔗](#class-quaternion-property-z)

Z component of the quaternion. This is the value along the "imaginary" `k` axis.

**Note:** Quaternion components should usually not be manipulated directly.

* * *

## Constructor Descriptions

[Quaternion](#class-quaternion) **Quaternion**() [🔗](#class-quaternion-constructor-quaternion)

Constructs a **Quaternion** identical to [IDENTITY](#class-quaternion-constant-identity).

**Note:** In C#, this constructs a **Quaternion** with all of its components set to `0.0`.

* * *

[Quaternion](#class-quaternion) **Quaternion**(from: [Quaternion](#class-quaternion))

Constructs a **Quaternion** as a copy of the given **Quaternion**.

* * *

[Quaternion](#class-quaternion) **Quaternion**(arc\_from: [Vector3](class_vector3.md#class-vector3), arc\_to: [Vector3](class_vector3.md#class-vector3))

Constructs a **Quaternion** representing the shortest arc between `arc_from` and `arc_to`. These can be imagined as two points intersecting a sphere's surface, with a radius of `1.0`.

* * *

[Quaternion](#class-quaternion) **Quaternion**(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float))

Constructs a **Quaternion** representing rotation around the `axis` by the given `angle`, in radians. The axis must be a normalized vector.

* * *

[Quaternion](#class-quaternion) **Quaternion**(from: [Basis](class_basis.md#class-basis))

Constructs a **Quaternion** from the given rotation [Basis](class_basis.md#class-basis).

This constructor is faster than [Basis.get\_rotation\_quaternion()](class_basis.md#class-basis-method-get-rotation-quaternion), but the given basis must be _orthonormalized_ (see [Basis.orthonormalized()](class_basis.md#class-basis-method-orthonormalized)). Otherwise, the constructor fails and returns [IDENTITY](#class-quaternion-constant-identity).

* * *

[Quaternion](#class-quaternion) **Quaternion**(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float), z: [float](class_float.md#class-float), w: [float](class_float.md#class-float))

Constructs a **Quaternion** defined by the given values.

**Note:** Only normalized quaternions represent rotation; if these values are not normalized, the new **Quaternion** will not be a valid rotation.

* * *

## Method Descriptions

[float](class_float.md#class-float) **angle\_to**(to: [Quaternion](#class-quaternion)) const [🔗](#class-quaternion-method-angle-to)

Returns the angle between this quaternion and `to`. This is the magnitude of the angle you would need to rotate by to get from one to the other.

**Note:** The magnitude of the floating-point error for this method is abnormally high, so methods such as `is_zero_approx` will not work reliably.

* * *

[float](class_float.md#class-float) **dot**(with: [Quaternion](#class-quaternion)) const [🔗](#class-quaternion-method-dot)

Returns the dot product between this quaternion and `with`.

This is equivalent to `(quat.x * with.x) + (quat.y * with.y) + (quat.z * with.z) + (quat.w * with.w)`.

* * *

[Quaternion](#class-quaternion) **exp**() const [🔗](#class-quaternion-method-exp)

Returns the exponential of this quaternion. The rotation axis of the result is the normalized rotation axis of this quaternion, the angle of the result is the length of the vector part of this quaternion.

* * *

[Quaternion](#class-quaternion) **from\_euler**(euler: [Vector3](class_vector3.md#class-vector3)) static [🔗](#class-quaternion-method-from-euler)

Constructs a new **Quaternion** from the given [Vector3](class_vector3.md#class-vector3) of [Euler angles](https://en.wikipedia.org/wiki/Euler_angles), in radians. This method always uses the YXZ convention ( [@GlobalScope.EULER\_ORDER\_YXZ](class_@globalscope.md#class-globalscope-constant-euler-order-yxz)).

* * *

[float](class_float.md#class-float) **get\_angle**() const [🔗](#class-quaternion-method-get-angle)

Returns the angle of the rotation represented by this quaternion.

**Note:** The quaternion must be normalized.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_axis**() const [🔗](#class-quaternion-method-get-axis)

Returns the rotation axis of the rotation represented by this quaternion.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_euler**(order: [int](class_int.md#class-int) = 2) const [🔗](#class-quaternion-method-get-euler)

Returns this quaternion's rotation as a [Vector3](class_vector3.md#class-vector3) of [Euler angles](https://en.wikipedia.org/wiki/Euler_angles), in radians.

The order of each consecutive rotation can be changed with `order` (see [EulerOrder](class_@globalscope.md#enum-globalscope-eulerorder) constants). By default, the YXZ convention is used ( [@GlobalScope.EULER\_ORDER\_YXZ](class_@globalscope.md#class-globalscope-constant-euler-order-yxz)): Z (roll) is calculated first, then X (pitch), and lastly Y (yaw). When using the opposite method [from\_euler()](#class-quaternion-method-from-euler), this order is reversed.

* * *

[Quaternion](#class-quaternion) **inverse**() const [🔗](#class-quaternion-method-inverse)

Returns the inverse version of this quaternion, inverting the sign of every component except [w](#class-quaternion-property-w).

* * *

[bool](class_bool.md#class-bool) **is\_equal\_approx**(to: [Quaternion](#class-quaternion)) const [🔗](#class-quaternion-method-is-equal-approx)

Returns `true` if this quaternion and `to` are approximately equal, by calling [@GlobalScope.is\_equal\_approx()](class_@globalscope.md#class-globalscope-method-is-equal-approx) on each component.

* * *

[bool](class_bool.md#class-bool) **is\_finite**() const [🔗](#class-quaternion-method-is-finite)

Returns `true` if this quaternion is finite, by calling [@GlobalScope.is\_finite()](class_@globalscope.md#class-globalscope-method-is-finite) on each component.

* * *

[bool](class_bool.md#class-bool) **is\_normalized**() const [🔗](#class-quaternion-method-is-normalized)

Returns `true` if this quaternion is normalized. See also [normalized()](#class-quaternion-method-normalized).

* * *

[float](class_float.md#class-float) **length**() const [🔗](#class-quaternion-method-length)

Returns this quaternion's length, also called magnitude.

* * *

[float](class_float.md#class-float) **length\_squared**() const [🔗](#class-quaternion-method-length-squared)

Returns this quaternion's length, squared.

**Note:** This method is faster than [length()](#class-quaternion-method-length), so prefer it if you only need to compare quaternion lengths.

* * *

[Quaternion](#class-quaternion) **log**() const [🔗](#class-quaternion-method-log)

Returns the logarithm of this quaternion. Multiplies this quaternion's rotation axis by its rotation angle, and stores the result in the returned quaternion's vector part ( [x](#class-quaternion-property-x), [y](#class-quaternion-property-y), and [z](#class-quaternion-property-z)). The returned quaternion's real part ( [w](#class-quaternion-property-w)) is always `0.0`.

* * *

[Quaternion](#class-quaternion) **normalized**() const [🔗](#class-quaternion-method-normalized)

Returns a copy of this quaternion, normalized so that its length is `1.0`. See also [is\_normalized()](#class-quaternion-method-is-normalized).

* * *

[Quaternion](#class-quaternion) **slerp**(to: [Quaternion](#class-quaternion), weight: [float](class_float.md#class-float)) const [🔗](#class-quaternion-method-slerp)

Performs a spherical-linear interpolation with the `to` quaternion, given a `weight` and returns the result. Both this quaternion and `to` must be normalized.

* * *

[Quaternion](#class-quaternion) **slerpni**(to: [Quaternion](#class-quaternion), weight: [float](class_float.md#class-float)) const [🔗](#class-quaternion-method-slerpni)

Performs a spherical-linear interpolation with the `to` quaternion, given a `weight` and returns the result. Unlike [slerp()](#class-quaternion-method-slerp), this method does not check if the rotation path is smaller than 90 degrees. Both this quaternion and `to` must be normalized.

* * *

[Quaternion](#class-quaternion) **spherical\_cubic\_interpolate**(b: [Quaternion](#class-quaternion), pre\_a: [Quaternion](#class-quaternion), post\_b: [Quaternion](#class-quaternion), weight: [float](class_float.md#class-float)) const [🔗](#class-quaternion-method-spherical-cubic-interpolate)

Performs a spherical cubic interpolation between quaternions `pre_a`, this vector, `b`, and `post_b`, by the given amount `weight`.

* * *

[Quaternion](#class-quaternion) **spherical\_cubic\_interpolate\_in\_time**(b: [Quaternion](#class-quaternion), pre\_a: [Quaternion](#class-quaternion), post\_b: [Quaternion](#class-quaternion), weight: [float](class_float.md#class-float), b\_t: [float](class_float.md#class-float), pre\_a\_t: [float](class_float.md#class-float), post\_b\_t: [float](class_float.md#class-float)) const [🔗](#class-quaternion-method-spherical-cubic-interpolate-in-time)

Performs a spherical cubic interpolation between quaternions `pre_a`, this vector, `b`, and `post_b`, by the given amount `weight`.

It can perform smoother interpolation than [spherical\_cubic\_interpolate()](#class-quaternion-method-spherical-cubic-interpolate) by the time values.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Quaternion](#class-quaternion)) [🔗](#class-quaternion-operator-neq-quaternion)

Returns `true` if the components of both quaternions are not exactly equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-quaternion-method-is-equal-approx) instead, which is more reliable.

* * *

[Quaternion](#class-quaternion) **operator \***(right: [Quaternion](#class-quaternion)) [🔗](#class-quaternion-operator-mul-quaternion)

Composes (multiplies) two quaternions. This rotates the `right` quaternion (the child) by this quaternion (the parent).

* * *

[Vector3](class_vector3.md#class-vector3) **operator \***(right: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-quaternion-operator-mul-vector3)

Rotates (multiplies) the `right` vector by this quaternion, returning a [Vector3](class_vector3.md#class-vector3).

* * *

[Quaternion](#class-quaternion) **operator \***(right: [float](class_float.md#class-float)) [🔗](#class-quaternion-operator-mul-float)

Multiplies each component of the **Quaternion** by the right [float](class_float.md#class-float) value.

This operation is not meaningful on its own, but it can be used as a part of a larger expression.

* * *

[Quaternion](#class-quaternion) **operator \***(right: [int](class_int.md#class-int)) [🔗](#class-quaternion-operator-mul-int)

Multiplies each component of the **Quaternion** by the right [int](class_int.md#class-int) value.

This operation is not meaningful on its own, but it can be used as a part of a larger expression.

* * *

[Quaternion](#class-quaternion) **operator +**(right: [Quaternion](#class-quaternion)) [🔗](#class-quaternion-operator-sum-quaternion)

Adds each component of the left **Quaternion** to the right **Quaternion**.

This operation is not meaningful on its own, but it can be used as a part of a larger expression, such as approximating an intermediate rotation between two nearby rotations.

* * *

[Quaternion](#class-quaternion) **operator -**(right: [Quaternion](#class-quaternion)) [🔗](#class-quaternion-operator-dif-quaternion)

Subtracts each component of the left **Quaternion** by the right **Quaternion**.

This operation is not meaningful on its own, but it can be used as a part of a larger expression.

* * *

[Quaternion](#class-quaternion) **operator /**(right: [float](class_float.md#class-float)) [🔗](#class-quaternion-operator-div-float)

Divides each component of the **Quaternion** by the right [float](class_float.md#class-float) value.

This operation is not meaningful on its own, but it can be used as a part of a larger expression.

* * *

[Quaternion](#class-quaternion) **operator /**(right: [int](class_int.md#class-int)) [🔗](#class-quaternion-operator-div-int)

Divides each component of the **Quaternion** by the right [int](class_int.md#class-int) value.

This operation is not meaningful on its own, but it can be used as a part of a larger expression.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Quaternion](#class-quaternion)) [🔗](#class-quaternion-operator-eq-quaternion)

Returns `true` if the components of both quaternions are exactly equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-quaternion-method-is-equal-approx) instead, which is more reliable.

* * *

[float](class_float.md#class-float) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-quaternion-operator-idx-int)

Accesses each component of this quaternion by their index.

Index `0` is the same as [x](#class-quaternion-property-x), index `1` is the same as [y](#class-quaternion-property-y), index `2` is the same as [z](#class-quaternion-property-z), and index `3` is the same as [w](#class-quaternion-property-w).

* * *

[Quaternion](#class-quaternion) **operator unary+**() [🔗](#class-quaternion-operator-unplus)

Returns the same value as if the `+` was not there. Unary `+` does nothing, but sometimes it can make your code more readable.

* * *

[Quaternion](#class-quaternion) **operator unary-**() [🔗](#class-quaternion-operator-unminus)

Returns the negative value of the **Quaternion**. This is the same as multiplying all components by `-1`. This operation results in a quaternion that represents the same rotation.

[Previous](class_projection.md "Projection") [Next](class_rect2.md "Rect2")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_projection.md "Projection") [Next](class_rect2.md "Rect2")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).