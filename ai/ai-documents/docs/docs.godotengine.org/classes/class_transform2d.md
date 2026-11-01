---
title: Transform2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_transform2d.html
crawled_at: "2026-08-13T10:39:45+12:00"
content_hash: 3fc5b17c308c1b1904643b2aee56dc5eb769782a88a17647347a71948887ae99
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Transform2D

* * *

# Transform2D

A 2×3 matrix representing a 2D transformation.

## Description

The **Transform2D** built-in [Variant](class_variant.md#class-variant) type is a 2×3 [matrix](https://en.wikipedia.org/wiki/Matrix_(mathematics)) representing a transformation in 2D space. It contains three [Vector2](class_vector2.md#class-vector2) values: [x](#class-transform2d-property-x), [y](#class-transform2d-property-y), and [origin](#class-transform2d-property-origin). Together, they can represent translation, rotation, scale, and skew.

The [x](#class-transform2d-property-x) and [y](#class-transform2d-property-y) axes form a 2×2 matrix, known as the transform's **basis**. The length of each axis ( [Vector2.length()](class_vector2.md#class-vector2-method-length)) influences the transform's scale, while the direction of all axes influence the rotation. Usually, both axes are perpendicular to one another. However, when you rotate one axis individually, the transform becomes skewed. Applying a skewed transform to a 2D sprite will make the sprite appear distorted.

For a general introduction, see the [Matrices and transforms](../tutorials/math/matrices_and_transforms.md) tutorial.

**Note:** Unlike [Transform3D](class_transform3d.md#class-transform3d), there is no 2D equivalent to the [Basis](class_basis.md#class-basis) type. All mentions of "basis" refer to the [x](#class-transform2d-property-x) and [y](#class-transform2d-property-y) components of **Transform2D**.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [Math documentation index](../tutorials/math/index.md)

- [Matrices and transforms](../tutorials/math/matrices_and_transforms.md)

- [Matrix Transform Demo](https://godotengine.org/asset-library/asset/2787)

- [2.5D Game Demo](https://godotengine.org/asset-library/asset/2783)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [origin](#class-transform2d-property-origin) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [x](#class-transform2d-property-x) | `Vector2(1, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [y](#class-transform2d-property-y) | `Vector2(0, 1)` |

## Constructors

|     |     |
| --- | --- |
| [Transform2D](#class-transform2d) | [Transform2D](#class-transform2d-constructor-transform2d)() |
| [Transform2D](#class-transform2d) | [Transform2D](#class-transform2d-constructor-transform2d)(from: [Transform2D](#class-transform2d)) |
| [Transform2D](#class-transform2d) | [Transform2D](#class-transform2d-constructor-transform2d)(rotation: [float](class_float.md#class-float), position: [Vector2](class_vector2.md#class-vector2)) |
| [Transform2D](#class-transform2d) | [Transform2D](#class-transform2d-constructor-transform2d)(rotation: [float](class_float.md#class-float), scale: [Vector2](class_vector2.md#class-vector2), skew: [float](class_float.md#class-float), position: [Vector2](class_vector2.md#class-vector2)) |
| [Transform2D](#class-transform2d) | [Transform2D](#class-transform2d-constructor-transform2d)(x\_axis: [Vector2](class_vector2.md#class-vector2), y\_axis: [Vector2](class_vector2.md#class-vector2), origin: [Vector2](class_vector2.md#class-vector2)) |

## Methods

|     |     |
| --- | --- |
| [Transform2D](#class-transform2d) | [affine\_inverse](#class-transform2d-method-affine-inverse)() const |
| [Vector2](class_vector2.md#class-vector2) | [basis\_xform](#class-transform2d-method-basis-xform)(v: [Vector2](class_vector2.md#class-vector2)) const |
| [Vector2](class_vector2.md#class-vector2) | [basis\_xform\_inv](#class-transform2d-method-basis-xform-inv)(v: [Vector2](class_vector2.md#class-vector2)) const |
| [float](class_float.md#class-float) | [determinant](#class-transform2d-method-determinant)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_origin](#class-transform2d-method-get-origin)() const |
| [float](class_float.md#class-float) | [get\_rotation](#class-transform2d-method-get-rotation)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_scale](#class-transform2d-method-get-scale)() const |
| [float](class_float.md#class-float) | [get\_skew](#class-transform2d-method-get-skew)() const |
| [Transform2D](#class-transform2d) | [interpolate\_with](#class-transform2d-method-interpolate-with)(xform: [Transform2D](#class-transform2d), weight: [float](class_float.md#class-float)) const |
| [Transform2D](#class-transform2d) | [inverse](#class-transform2d-method-inverse)() const |
| [bool](class_bool.md#class-bool) | [is\_conformal](#class-transform2d-method-is-conformal)() const |
| [bool](class_bool.md#class-bool) | [is\_equal\_approx](#class-transform2d-method-is-equal-approx)(xform: [Transform2D](#class-transform2d)) const |
| [bool](class_bool.md#class-bool) | [is\_finite](#class-transform2d-method-is-finite)() const |
| [Transform2D](#class-transform2d) | [looking\_at](#class-transform2d-method-looking-at)(target: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) const |
| [Transform2D](#class-transform2d) | [orthonormalized](#class-transform2d-method-orthonormalized)() const |
| [Transform2D](#class-transform2d) | [rotated](#class-transform2d-method-rotated)(angle: [float](class_float.md#class-float)) const |
| [Transform2D](#class-transform2d) | [rotated\_local](#class-transform2d-method-rotated-local)(angle: [float](class_float.md#class-float)) const |
| [Transform2D](#class-transform2d) | [scaled](#class-transform2d-method-scaled)(scale: [Vector2](class_vector2.md#class-vector2)) const |
| [Transform2D](#class-transform2d) | [scaled\_local](#class-transform2d-method-scaled-local)(scale: [Vector2](class_vector2.md#class-vector2)) const |
| [Transform2D](#class-transform2d) | [translated](#class-transform2d-method-translated)(offset: [Vector2](class_vector2.md#class-vector2)) const |
| [Transform2D](#class-transform2d) | [translated\_local](#class-transform2d-method-translated-local)(offset: [Vector2](class_vector2.md#class-vector2)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-transform2d-operator-neq-transform2d)(right: [Transform2D](#class-transform2d)) |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [operator \*](#class-transform2d-operator-mul-packedvector2array)(right: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [Rect2](class_rect2.md#class-rect2) | [operator \*](#class-transform2d-operator-mul-rect2)(right: [Rect2](class_rect2.md#class-rect2)) |
| [Transform2D](#class-transform2d) | [operator \*](#class-transform2d-operator-mul-transform2d)(right: [Transform2D](#class-transform2d)) |
| [Vector2](class_vector2.md#class-vector2) | [operator \*](#class-transform2d-operator-mul-vector2)(right: [Vector2](class_vector2.md#class-vector2)) |
| [Transform2D](#class-transform2d) | [operator \*](#class-transform2d-operator-mul-float)(right: [float](class_float.md#class-float)) |
| [Transform2D](#class-transform2d) | [operator \*](#class-transform2d-operator-mul-int)(right: [int](class_int.md#class-int)) |
| [Transform2D](#class-transform2d) | [operator /](#class-transform2d-operator-div-float)(right: [float](class_float.md#class-float)) |
| [Transform2D](#class-transform2d) | [operator /](#class-transform2d-operator-div-int)(right: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-transform2d-operator-eq-transform2d)(right: [Transform2D](#class-transform2d)) |
| [Vector2](class_vector2.md#class-vector2) | [operator \[\]](#class-transform2d-operator-idx-int)(index: [int](class_int.md#class-int)) |

* * *

## Constants

**IDENTITY** = `Transform2D(1, 0, 0, 1, 0, 0)` [🔗](#class-transform2d-constant-identity)

The identity **Transform2D**. This is a transform with no translation, no rotation, and a scale of [Vector2.ONE](class_vector2.md#class-vector2-constant-one). This also means that:

- The [x](#class-transform2d-property-x) points right ( [Vector2.RIGHT](class_vector2.md#class-vector2-constant-right));

- The [y](#class-transform2d-property-y) points down ( [Vector2.DOWN](class_vector2.md#class-vector2-constant-down)).


```
var transform = Transform2D.IDENTITY
print("| X | Y | Origin")
print("| %.f | %.f | %.f" % [transform.x.x, transform.y.x, transform.origin.x])
print("| %.f | %.f | %.f" % [transform.x.y, transform.y.y, transform.origin.y])
# Prints:
# | X | Y | Origin
# | 1 | 0 | 0
# | 0 | 1 | 0

```

If a [Vector2](class_vector2.md#class-vector2), a [Rect2](class_rect2.md#class-rect2), a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), or another **Transform2D** is transformed (multiplied) by this constant, no transformation occurs.

**Note:** In GDScript, this constant is equivalent to creating a [Transform2D](#class-transform2d-constructor-transform2d) without any arguments. It can be used to make your code clearer, and for consistency with C#.

**FLIP\_X** = `Transform2D(-1, 0, 0, 1, 0, 0)` [🔗](#class-transform2d-constant-flip-x)

When any transform is multiplied by [FLIP\_X](#class-transform2d-constant-flip-x), it negates all components of the [x](#class-transform2d-property-x) axis (the X column).

When [FLIP\_X](#class-transform2d-constant-flip-x) is multiplied by any transform, it negates the [Vector2.x](class_vector2.md#class-vector2-property-x) component of all axes (the X row).

**FLIP\_Y** = `Transform2D(1, 0, 0, -1, 0, 0)` [🔗](#class-transform2d-constant-flip-y)

When any transform is multiplied by [FLIP\_Y](#class-transform2d-constant-flip-y), it negates all components of the [y](#class-transform2d-property-y) axis (the Y column).

When [FLIP\_Y](#class-transform2d-constant-flip-y) is multiplied by any transform, it negates the [Vector2.y](class_vector2.md#class-vector2-property-y) component of all axes (the Y row).

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **origin** = `Vector2(0, 0)` [🔗](#class-transform2d-property-origin)

The translation offset of this transform, and the column `2` of the matrix. In 2D space, this can be seen as the position.

* * *

[Vector2](class_vector2.md#class-vector2) **x** = `Vector2(1, 0)` [🔗](#class-transform2d-property-x)

The transform basis's X axis, and the column `0` of the matrix. Combined with [y](#class-transform2d-property-y), this represents the transform's rotation, scale, and skew.

On the identity transform, this vector points right ( [Vector2.RIGHT](class_vector2.md#class-vector2-constant-right)).

* * *

[Vector2](class_vector2.md#class-vector2) **y** = `Vector2(0, 1)` [🔗](#class-transform2d-property-y)

The transform basis's Y axis, and the column `1` of the matrix. Combined with [x](#class-transform2d-property-x), this represents the transform's rotation, scale, and skew.

On the identity transform, this vector points down ( [Vector2.DOWN](class_vector2.md#class-vector2-constant-down)).

* * *

## Constructor Descriptions

[Transform2D](#class-transform2d) **Transform2D**() [🔗](#class-transform2d-constructor-transform2d)

Constructs a **Transform2D** identical to [IDENTITY](#class-transform2d-constant-identity).

**Note:** In C#, this constructs a **Transform2D** with all of its components set to [Vector2.ZERO](class_vector2.md#class-vector2-constant-zero).

* * *

[Transform2D](#class-transform2d) **Transform2D**(from: [Transform2D](#class-transform2d))

Constructs a **Transform2D** as a copy of the given **Transform2D**.

* * *

[Transform2D](#class-transform2d) **Transform2D**(rotation: [float](class_float.md#class-float), position: [Vector2](class_vector2.md#class-vector2))

Constructs a **Transform2D** from a given angle (in radians) and position.

* * *

[Transform2D](#class-transform2d) **Transform2D**(rotation: [float](class_float.md#class-float), scale: [Vector2](class_vector2.md#class-vector2), skew: [float](class_float.md#class-float), position: [Vector2](class_vector2.md#class-vector2))

Constructs a **Transform2D** from a given angle (in radians), scale, skew (in radians), and position.

* * *

[Transform2D](#class-transform2d) **Transform2D**(x\_axis: [Vector2](class_vector2.md#class-vector2), y\_axis: [Vector2](class_vector2.md#class-vector2), origin: [Vector2](class_vector2.md#class-vector2))

Constructs a **Transform2D** from 3 [Vector2](class_vector2.md#class-vector2) values representing [x](#class-transform2d-property-x), [y](#class-transform2d-property-y), and the [origin](#class-transform2d-property-origin) (the three matrix columns).

* * *

## Method Descriptions

[Transform2D](#class-transform2d) **affine\_inverse**() const [🔗](#class-transform2d-method-affine-inverse)

Returns the inverted version of this transform. Unlike [inverse()](#class-transform2d-method-inverse), this method works with almost any basis, including non-uniform ones, but is slower.

**Note:** For this method to return correctly, the transform's basis needs to have a determinant that is not exactly `0.0` (see [determinant()](#class-transform2d-method-determinant)).

* * *

[Vector2](class_vector2.md#class-vector2) **basis\_xform**(v: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-transform2d-method-basis-xform)

Returns a copy of the `v` vector, transformed (multiplied) by the transform basis's matrix. Unlike the multiplication operator ( `*`), this method ignores the [origin](#class-transform2d-property-origin).

* * *

[Vector2](class_vector2.md#class-vector2) **basis\_xform\_inv**(v: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-transform2d-method-basis-xform-inv)

Returns a copy of the `v` vector, transformed (multiplied) by the inverse transform basis's matrix (see [inverse()](#class-transform2d-method-inverse)). This method ignores the [origin](#class-transform2d-property-origin).

**Note:** This method assumes that this transform's basis is _orthonormal_ (see [orthonormalized()](#class-transform2d-method-orthonormalized)). If the basis is not orthonormal, `transform.affine_inverse().basis_xform(vector)` should be used instead (see [affine\_inverse()](#class-transform2d-method-affine-inverse)).

* * *

[float](class_float.md#class-float) **determinant**() const [🔗](#class-transform2d-method-determinant)

Returns the [determinant](https://en.wikipedia.org/wiki/Determinant) of this transform basis's matrix. For advanced math, this number can be used to determine a few attributes:

- If the determinant is exactly `0.0`, the basis is not invertible (see [inverse()](#class-transform2d-method-inverse)).

- If the determinant is a negative number, the basis represents a negative scale.


**Note:** If the basis's scale is the same for every axis, its determinant is always that scale by the power of 2.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_origin**() const [🔗](#class-transform2d-method-get-origin)

Returns this transform's translation. Equivalent to [origin](#class-transform2d-property-origin).

* * *

[float](class_float.md#class-float) **get\_rotation**() const [🔗](#class-transform2d-method-get-rotation)

Returns this transform's rotation (in radians). This is equivalent to [x](#class-transform2d-property-x)'s angle (see [Vector2.angle()](class_vector2.md#class-vector2-method-angle)).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_scale**() const [🔗](#class-transform2d-method-get-scale)

Returns the length of both [x](#class-transform2d-property-x) and [y](#class-transform2d-property-y), as a [Vector2](class_vector2.md#class-vector2). If this transform's basis is not skewed, this value is the scaling factor. It is not affected by rotation.

GDScriptC#

```
var my_transform = Transform2D(
    Vector2(2, 0),
    Vector2(0, 4),
    Vector2(0, 0)
)
# Rotating the Transform2D in any way preserves its scale.
my_transform = my_transform.rotated(TAU / 2)

print(my_transform.get_scale()) # Prints (2.0, 4.0)

```

```
var myTransform = new Transform2D(
    Vector3(2.0f, 0.0f),
    Vector3(0.0f, 4.0f),
    Vector3(0.0f, 0.0f)
);
// Rotating the Transform2D in any way preserves its scale.
myTransform = myTransform.Rotated(Mathf.Tau / 2.0f);

GD.Print(myTransform.GetScale()); // Prints (2, 4)

```

**Note:** If the value returned by [determinant()](#class-transform2d-method-determinant) is negative, the scale is also negative.

* * *

[float](class_float.md#class-float) **get\_skew**() const [🔗](#class-transform2d-method-get-skew)

Returns this transform's skew (in radians).

* * *

[Transform2D](#class-transform2d) **interpolate\_with**(xform: [Transform2D](#class-transform2d), weight: [float](class_float.md#class-float)) const [🔗](#class-transform2d-method-interpolate-with)

Returns the result of the linear interpolation between this transform and `xform` by the given `weight`.

The `weight` should be between `0.0` and `1.0` (inclusive). Values outside this range are allowed and can be used to perform _extrapolation_ instead.

* * *

[Transform2D](#class-transform2d) **inverse**() const [🔗](#class-transform2d-method-inverse)

Returns the [inverted version of this transform](https://en.wikipedia.org/wiki/Invertible_matrix).

**Note:** For this method to return correctly, the transform's basis needs to be _orthonormal_ (see [orthonormalized()](#class-transform2d-method-orthonormalized)). That means the basis should only represent a rotation. If it does not, use [affine\_inverse()](#class-transform2d-method-affine-inverse) instead.

* * *

[bool](class_bool.md#class-bool) **is\_conformal**() const [🔗](#class-transform2d-method-is-conformal)

Returns `true` if this transform's basis is conformal. A conformal basis is both _orthogonal_ (the axes are perpendicular to each other) and _uniform_ (the axes share the same length). This method can be especially useful during physics calculations.

* * *

[bool](class_bool.md#class-bool) **is\_equal\_approx**(xform: [Transform2D](#class-transform2d)) const [🔗](#class-transform2d-method-is-equal-approx)

Returns `true` if this transform and `xform` are approximately equal, by running [@GlobalScope.is\_equal\_approx()](class_@globalscope.md#class-globalscope-method-is-equal-approx) on each component.

* * *

[bool](class_bool.md#class-bool) **is\_finite**() const [🔗](#class-transform2d-method-is-finite)

Returns `true` if this transform is finite, by calling [@GlobalScope.is\_finite()](class_@globalscope.md#class-globalscope-method-is-finite) on each component.

* * *

[Transform2D](#class-transform2d) **looking\_at**(target: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) const [🔗](#class-transform2d-method-looking-at)

Returns a copy of the transform rotated such that the rotated X-axis points towards the `target` position, in global space.

* * *

[Transform2D](#class-transform2d) **orthonormalized**() const [🔗](#class-transform2d-method-orthonormalized)

Returns a copy of this transform with its basis orthonormalized. An orthonormal basis is both _orthogonal_ (the axes are perpendicular to each other) and _normalized_ (the axes have a length of `1.0`), which also means it can only represent a rotation.

* * *

[Transform2D](#class-transform2d) **rotated**(angle: [float](class_float.md#class-float)) const [🔗](#class-transform2d-method-rotated)

Returns a copy of this transform rotated by the given `angle` (in radians).

If `angle` is positive, the transform is rotated clockwise.

This method is an optimized version of multiplying the given transform `X` with a corresponding rotation transform `R` from the left, i.e., `R * X`.

This can be seen as transforming with respect to the global/parent frame.

* * *

[Transform2D](#class-transform2d) **rotated\_local**(angle: [float](class_float.md#class-float)) const [🔗](#class-transform2d-method-rotated-local)

Returns a copy of the transform rotated by the given `angle` (in radians).

This method is an optimized version of multiplying the given transform `X` with a corresponding rotation transform `R` from the right, i.e., `X * R`.

This can be seen as transforming with respect to the local frame.

* * *

[Transform2D](#class-transform2d) **scaled**(scale: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-transform2d-method-scaled)

Returns a copy of the transform scaled by the given `scale` factor.

This method is an optimized version of multiplying the given transform `X` with a corresponding scaling transform `S` from the left, i.e., `S * X`.

This can be seen as transforming with respect to the global/parent frame.

* * *

[Transform2D](#class-transform2d) **scaled\_local**(scale: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-transform2d-method-scaled-local)

Returns a copy of the transform scaled by the given `scale` factor.

This method is an optimized version of multiplying the given transform `X` with a corresponding scaling transform `S` from the right, i.e., `X * S`.

This can be seen as transforming with respect to the local frame.

* * *

[Transform2D](#class-transform2d) **translated**(offset: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-transform2d-method-translated)

Returns a copy of the transform translated by the given `offset`.

This method is an optimized version of multiplying the given transform `X` with a corresponding translation transform `T` from the left, i.e., `T * X`.

This can be seen as transforming with respect to the global/parent frame.

* * *

[Transform2D](#class-transform2d) **translated\_local**(offset: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-transform2d-method-translated-local)

Returns a copy of the transform translated by the given `offset`.

This method is an optimized version of multiplying the given transform `X` with a corresponding translation transform `T` from the right, i.e., `X * T`.

This can be seen as transforming with respect to the local frame.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Transform2D](#class-transform2d)) [🔗](#class-transform2d-operator-neq-transform2d)

Returns `true` if the components of both transforms are not equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-transform2d-method-is-equal-approx) instead, which is more reliable.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **operator \***(right: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-transform2d-operator-mul-packedvector2array)

Transforms (multiplies) every [Vector2](class_vector2.md#class-vector2) element of the given [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) by this transformation matrix.

On larger arrays, this operation is much faster than transforming each [Vector2](class_vector2.md#class-vector2) individually.

* * *

[Rect2](class_rect2.md#class-rect2) **operator \***(right: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-transform2d-operator-mul-rect2)

Transforms (multiplies) the [Rect2](class_rect2.md#class-rect2) by this transformation matrix.

* * *

[Transform2D](#class-transform2d) **operator \***(right: [Transform2D](#class-transform2d)) [🔗](#class-transform2d-operator-mul-transform2d)

Transforms (multiplies) this transform by the `right` transform.

This is the operation performed between parent and child [CanvasItem](class_canvasitem.md#class-canvasitem) nodes.

**Note:** If you need to only modify one attribute of this transform, consider using one of the following methods, instead:

- For translation, see [translated()](#class-transform2d-method-translated) or [translated\_local()](#class-transform2d-method-translated-local).

- For rotation, see [rotated()](#class-transform2d-method-rotated) or [rotated\_local()](#class-transform2d-method-rotated-local).

- For scale, see [scaled()](#class-transform2d-method-scaled) or [scaled\_local()](#class-transform2d-method-scaled-local).


* * *

[Vector2](class_vector2.md#class-vector2) **operator \***(right: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-transform2d-operator-mul-vector2)

Transforms (multiplies) the [Vector2](class_vector2.md#class-vector2) by this transformation matrix.

* * *

[Transform2D](#class-transform2d) **operator \***(right: [float](class_float.md#class-float)) [🔗](#class-transform2d-operator-mul-float)

Multiplies all components of the **Transform2D** by the given [float](class_float.md#class-float), including the [origin](#class-transform2d-property-origin). This affects the transform's scale uniformly.

* * *

[Transform2D](#class-transform2d) **operator \***(right: [int](class_int.md#class-int)) [🔗](#class-transform2d-operator-mul-int)

Multiplies all components of the **Transform2D** by the given [int](class_int.md#class-int), including the [origin](#class-transform2d-property-origin). This affects the transform's scale uniformly.

* * *

[Transform2D](#class-transform2d) **operator /**(right: [float](class_float.md#class-float)) [🔗](#class-transform2d-operator-div-float)

Divides all components of the **Transform2D** by the given [float](class_float.md#class-float), including the [origin](#class-transform2d-property-origin). This affects the transform's scale uniformly.

* * *

[Transform2D](#class-transform2d) **operator /**(right: [int](class_int.md#class-int)) [🔗](#class-transform2d-operator-div-int)

Divides all components of the **Transform2D** by the given [int](class_int.md#class-int), including the [origin](#class-transform2d-property-origin). This affects the transform's scale uniformly.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Transform2D](#class-transform2d)) [🔗](#class-transform2d-operator-eq-transform2d)

Returns `true` if the components of both transforms are exactly equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-transform2d-method-is-equal-approx) instead, which is more reliable.

* * *

[Vector2](class_vector2.md#class-vector2) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-transform2d-operator-idx-int)

Accesses each axis (column) of this transform by their index. Index `0` is the same as [x](#class-transform2d-property-x), index `1` is the same as [y](#class-transform2d-property-y), and index `2` is the same as [origin](#class-transform2d-property-origin).

[Previous](class_stringname.md "StringName") [Next](class_transform3d.md "Transform3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_stringname.md "StringName") [Next](class_transform3d.md "Transform3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).