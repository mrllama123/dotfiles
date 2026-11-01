---
title: Transform3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_transform3d.html
crawled_at: "2026-08-13T10:38:10+12:00"
content_hash: e8a169fc4988d34b669e38f827d6108c0dfe2962e829562e487fb726a1fe9a3d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Transform3D

* * *

# Transform3D

A 3×4 matrix representing a 3D transformation.

## Description

The **Transform3D** built-in [Variant](class_variant.md#class-variant) type is a 3×4 matrix representing a transformation in 3D space. It contains a [Basis](class_basis.md#class-basis), which on its own can represent rotation, scale, and shear. Additionally, combined with its own [origin](#class-transform3d-property-origin), the transform can also represent a translation.

For a general introduction, see the [Matrices and transforms](../tutorials/math/matrices_and_transforms.md) tutorial.

**Note:** Godot uses a [right-handed coordinate system](https://en.wikipedia.org/wiki/Right-hand_rule), which is a common standard. For directions, the convention for built-in types like [Camera3D](class_camera3d.md#class-camera3d) is for -Z to point forward (+X is right, +Y is up, and +Z is back). Other objects may use different direction conventions. For more information, see the [3D asset direction conventions](../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.md#d-asset-direction-conventions) tutorial.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [Math documentation index](../tutorials/math/index.md)

- [Matrices and transforms](../tutorials/math/matrices_and_transforms.md)

- [Using 3D transforms](../tutorials/3d/using_transforms.md)

- [Matrix Transform Demo](https://godotengine.org/asset-library/asset/2787)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [2.5D Game Demo](https://godotengine.org/asset-library/asset/2783)


## Properties

|     |     |     |
| --- | --- | --- |
| [Basis](class_basis.md#class-basis) | [basis](#class-transform3d-property-basis) | `Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)` |
| [Vector3](class_vector3.md#class-vector3) | [origin](#class-transform3d-property-origin) | `Vector3(0, 0, 0)` |

## Constructors

|     |     |
| --- | --- |
| [Transform3D](#class-transform3d) | [Transform3D](#class-transform3d-constructor-transform3d)() |
| [Transform3D](#class-transform3d) | [Transform3D](#class-transform3d-constructor-transform3d)(from: [Transform3D](#class-transform3d)) |
| [Transform3D](#class-transform3d) | [Transform3D](#class-transform3d-constructor-transform3d)(basis: [Basis](class_basis.md#class-basis), origin: [Vector3](class_vector3.md#class-vector3)) |
| [Transform3D](#class-transform3d) | [Transform3D](#class-transform3d-constructor-transform3d)(from: [Projection](class_projection.md#class-projection)) |
| [Transform3D](#class-transform3d) | [Transform3D](#class-transform3d-constructor-transform3d)(x\_axis: [Vector3](class_vector3.md#class-vector3), y\_axis: [Vector3](class_vector3.md#class-vector3), z\_axis: [Vector3](class_vector3.md#class-vector3), origin: [Vector3](class_vector3.md#class-vector3)) |

## Methods

|     |     |
| --- | --- |
| [Transform3D](#class-transform3d) | [affine\_inverse](#class-transform3d-method-affine-inverse)() const |
| [Transform3D](#class-transform3d) | [interpolate\_with](#class-transform3d-method-interpolate-with)(xform: [Transform3D](#class-transform3d), weight: [float](class_float.md#class-float)) const |
| [Transform3D](#class-transform3d) | [inverse](#class-transform3d-method-inverse)() const |
| [bool](class_bool.md#class-bool) | [is\_equal\_approx](#class-transform3d-method-is-equal-approx)(xform: [Transform3D](#class-transform3d)) const |
| [bool](class_bool.md#class-bool) | [is\_finite](#class-transform3d-method-is-finite)() const |
| [Transform3D](#class-transform3d) | [looking\_at](#class-transform3d-method-looking-at)(target: [Vector3](class_vector3.md#class-vector3), up: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0), use\_model\_front: [bool](class_bool.md#class-bool) = false) const |
| [Transform3D](#class-transform3d) | [orthonormalized](#class-transform3d-method-orthonormalized)() const |
| [Transform3D](#class-transform3d) | [rotated](#class-transform3d-method-rotated)(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) const |
| [Transform3D](#class-transform3d) | [rotated\_local](#class-transform3d-method-rotated-local)(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) const |
| [Transform3D](#class-transform3d) | [scaled](#class-transform3d-method-scaled)(scale: [Vector3](class_vector3.md#class-vector3)) const |
| [Transform3D](#class-transform3d) | [scaled\_local](#class-transform3d-method-scaled-local)(scale: [Vector3](class_vector3.md#class-vector3)) const |
| [Transform3D](#class-transform3d) | [translated](#class-transform3d-method-translated)(offset: [Vector3](class_vector3.md#class-vector3)) const |
| [Transform3D](#class-transform3d) | [translated\_local](#class-transform3d-method-translated-local)(offset: [Vector3](class_vector3.md#class-vector3)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-transform3d-operator-neq-transform3d)(right: [Transform3D](#class-transform3d)) |
| [AABB](class_aabb.md#class-aabb) | [operator \*](#class-transform3d-operator-mul-aabb)(right: [AABB](class_aabb.md#class-aabb)) |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [operator \*](#class-transform3d-operator-mul-packedvector3array)(right: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array)) |
| [Plane](class_plane.md#class-plane) | [operator \*](#class-transform3d-operator-mul-plane)(right: [Plane](class_plane.md#class-plane)) |
| [Transform3D](#class-transform3d) | [operator \*](#class-transform3d-operator-mul-transform3d)(right: [Transform3D](#class-transform3d)) |
| [Vector3](class_vector3.md#class-vector3) | [operator \*](#class-transform3d-operator-mul-vector3)(right: [Vector3](class_vector3.md#class-vector3)) |
| [Transform3D](#class-transform3d) | [operator \*](#class-transform3d-operator-mul-float)(right: [float](class_float.md#class-float)) |
| [Transform3D](#class-transform3d) | [operator \*](#class-transform3d-operator-mul-int)(right: [int](class_int.md#class-int)) |
| [Transform3D](#class-transform3d) | [operator /](#class-transform3d-operator-div-float)(right: [float](class_float.md#class-float)) |
| [Transform3D](#class-transform3d) | [operator /](#class-transform3d-operator-div-int)(right: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-transform3d-operator-eq-transform3d)(right: [Transform3D](#class-transform3d)) |

* * *

## Constants

**IDENTITY** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-transform3d-constant-identity)

The identity **Transform3D**. This is a transform with no translation, no rotation, and a scale of [Vector3.ONE](class_vector3.md#class-vector3-constant-one). Its [basis](#class-transform3d-property-basis) is equal to [Basis.IDENTITY](class_basis.md#class-basis-constant-identity). This also means that:

- Its [Basis.x](class_basis.md#class-basis-property-x) points right ( [Vector3.RIGHT](class_vector3.md#class-vector3-constant-right));

- Its [Basis.y](class_basis.md#class-basis-property-y) points up ( [Vector3.UP](class_vector3.md#class-vector3-constant-up));

- Its [Basis.z](class_basis.md#class-basis-property-z) points back ( [Vector3.BACK](class_vector3.md#class-vector3-constant-back)).


```
var transform = Transform3D.IDENTITY
var basis = transform.basis
print("| X | Y | Z | Origin")
print("| %.f | %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x, transform.origin.x])
print("| %.f | %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y, transform.origin.y])
print("| %.f | %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z, transform.origin.z])
# Prints:
# | X | Y | Z | Origin
# | 1 | 0 | 0 | 0
# | 0 | 1 | 0 | 0
# | 0 | 0 | 1 | 0

```

If a [Vector3](class_vector3.md#class-vector3), an [AABB](class_aabb.md#class-aabb), a [Plane](class_plane.md#class-plane), a [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), or another **Transform3D** is transformed (multiplied) by this constant, no transformation occurs.

**Note:** In GDScript, this constant is equivalent to creating a [Transform3D](#class-transform3d-constructor-transform3d) without any arguments. It can be used to make your code clearer, and for consistency with C#.

**FLIP\_X** = `Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-transform3d-constant-flip-x)

**Transform3D** with mirroring applied perpendicular to the YZ plane. Its [basis](#class-transform3d-property-basis) is equal to [Basis.FLIP\_X](class_basis.md#class-basis-constant-flip-x).

**FLIP\_Y** = `Transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-transform3d-constant-flip-y)

**Transform3D** with mirroring applied perpendicular to the XZ plane. Its [basis](#class-transform3d-property-basis) is equal to [Basis.FLIP\_Y](class_basis.md#class-basis-constant-flip-y).

**FLIP\_Z** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)` [🔗](#class-transform3d-constant-flip-z)

**Transform3D** with mirroring applied perpendicular to the XY plane. Its [basis](#class-transform3d-property-basis) is equal to [Basis.FLIP\_Z](class_basis.md#class-basis-constant-flip-z).

* * *

## Property Descriptions

[Basis](class_basis.md#class-basis) **basis** = `Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)` [🔗](#class-transform3d-property-basis)

The [Basis](class_basis.md#class-basis) of this transform. It is composed by 3 axes ( [Basis.x](class_basis.md#class-basis-property-x), [Basis.y](class_basis.md#class-basis-property-y), and [Basis.z](class_basis.md#class-basis-property-z)). Together, these represent the transform's rotation, scale, and shear.

* * *

[Vector3](class_vector3.md#class-vector3) **origin** = `Vector3(0, 0, 0)` [🔗](#class-transform3d-property-origin)

The translation offset of this transform. In 3D space, this can be seen as the position.

* * *

## Constructor Descriptions

[Transform3D](#class-transform3d) **Transform3D**() [🔗](#class-transform3d-constructor-transform3d)

Constructs a **Transform3D** identical to [IDENTITY](#class-transform3d-constant-identity).

**Note:** In C#, this constructs a **Transform3D** with its [origin](#class-transform3d-property-origin) and the components of its [basis](#class-transform3d-property-basis) set to [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

* * *

[Transform3D](#class-transform3d) **Transform3D**(from: [Transform3D](#class-transform3d))

Constructs a **Transform3D** as a copy of the given **Transform3D**.

* * *

[Transform3D](#class-transform3d) **Transform3D**(basis: [Basis](class_basis.md#class-basis), origin: [Vector3](class_vector3.md#class-vector3))

Constructs a **Transform3D** from a [Basis](class_basis.md#class-basis) and [Vector3](class_vector3.md#class-vector3).

* * *

[Transform3D](#class-transform3d) **Transform3D**(from: [Projection](class_projection.md#class-projection))

Constructs a **Transform3D** from a [Projection](class_projection.md#class-projection). Because **Transform3D** is a 3×4 matrix and [Projection](class_projection.md#class-projection) is a 4×4 matrix, this operation trims the last row of the projection matrix ( `from.x.w`, `from.y.w`, `from.z.w`, and `from.w.w` are not included in the new transform).

* * *

[Transform3D](#class-transform3d) **Transform3D**(x\_axis: [Vector3](class_vector3.md#class-vector3), y\_axis: [Vector3](class_vector3.md#class-vector3), z\_axis: [Vector3](class_vector3.md#class-vector3), origin: [Vector3](class_vector3.md#class-vector3))

Constructs a **Transform3D** from four [Vector3](class_vector3.md#class-vector3) values (also called matrix columns).

The first three arguments are the [basis](#class-transform3d-property-basis)'s axes ( [Basis.x](class_basis.md#class-basis-property-x), [Basis.y](class_basis.md#class-basis-property-y), and [Basis.z](class_basis.md#class-basis-property-z)).

* * *

## Method Descriptions

[Transform3D](#class-transform3d) **affine\_inverse**() const [🔗](#class-transform3d-method-affine-inverse)

Returns the inverted version of this transform. Unlike [inverse()](#class-transform3d-method-inverse), this method works with almost any [basis](#class-transform3d-property-basis), including non-uniform ones, but is slower. See also [Basis.inverse()](class_basis.md#class-basis-method-inverse).

**Note:** For this method to return correctly, the transform's [basis](#class-transform3d-property-basis) needs to have a determinant that is not exactly `0.0` (see [Basis.determinant()](class_basis.md#class-basis-method-determinant)).

* * *

[Transform3D](#class-transform3d) **interpolate\_with**(xform: [Transform3D](#class-transform3d), weight: [float](class_float.md#class-float)) const [🔗](#class-transform3d-method-interpolate-with)

Returns the result of the linear interpolation between this transform and `xform` by the given `weight`.

The `weight` should be between `0.0` and `1.0` (inclusive). Values outside this range are allowed and can be used to perform _extrapolation_ instead.

* * *

[Transform3D](#class-transform3d) **inverse**() const [🔗](#class-transform3d-method-inverse)

Returns the [inverted version of this transform](https://en.wikipedia.org/wiki/Invertible_matrix). See also [Basis.inverse()](class_basis.md#class-basis-method-inverse).

**Note:** For this method to return correctly, the transform's [basis](#class-transform3d-property-basis) needs to be _orthonormal_ (see [orthonormalized()](#class-transform3d-method-orthonormalized)). That means the basis should only represent a rotation. If it does not, use [affine\_inverse()](#class-transform3d-method-affine-inverse) instead.

* * *

[bool](class_bool.md#class-bool) **is\_equal\_approx**(xform: [Transform3D](#class-transform3d)) const [🔗](#class-transform3d-method-is-equal-approx)

Returns `true` if this transform and `xform` are approximately equal, by running [@GlobalScope.is\_equal\_approx()](class_@globalscope.md#class-globalscope-method-is-equal-approx) on each component.

* * *

[bool](class_bool.md#class-bool) **is\_finite**() const [🔗](#class-transform3d-method-is-finite)

Returns `true` if this transform is finite, by calling [@GlobalScope.is\_finite()](class_@globalscope.md#class-globalscope-method-is-finite) on each component.

* * *

[Transform3D](#class-transform3d) **looking\_at**(target: [Vector3](class_vector3.md#class-vector3), up: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0), use\_model\_front: [bool](class_bool.md#class-bool) = false) const [🔗](#class-transform3d-method-looking-at)

Returns a copy of this transform rotated so that the forward axis (-Z) points towards the `target` position.

The up axis (+Y) points as close to the `up` vector as possible while staying perpendicular to the forward axis. The resulting transform is orthonormalized. The existing rotation, scale, and skew information from the original transform is discarded. The `target` and `up` vectors cannot be zero, cannot be parallel to each other, and are defined in global/parent space.

If `use_model_front` is `true`, the +Z axis (asset front) is treated as forward (implies +X is left) and points toward the `target` position. By default, the -Z axis (camera forward) is treated as forward (implies +X is right).

* * *

[Transform3D](#class-transform3d) **orthonormalized**() const [🔗](#class-transform3d-method-orthonormalized)

Returns a copy of this transform with its [basis](#class-transform3d-property-basis) orthonormalized. An orthonormal basis is both _orthogonal_ (the axes are perpendicular to each other) and _normalized_ (the axes have a length of `1.0`), which also means it can only represent a rotation. See also [Basis.orthonormalized()](class_basis.md#class-basis-method-orthonormalized).

* * *

[Transform3D](#class-transform3d) **rotated**(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) const [🔗](#class-transform3d-method-rotated)

Returns a copy of this transform rotated around the given `axis` by the given `angle` (in radians).

The `axis` must be a normalized vector (see [Vector3.normalized()](class_vector3.md#class-vector3-method-normalized)). If `angle` is positive, the basis is rotated counter-clockwise around the axis.

This method is an optimized version of multiplying the given transform `X` with a corresponding rotation transform `R` from the left, i.e., `R * X`.

This can be seen as transforming with respect to the global/parent frame.

* * *

[Transform3D](#class-transform3d) **rotated\_local**(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) const [🔗](#class-transform3d-method-rotated-local)

Returns a copy of this transform rotated around the given `axis` by the given `angle` (in radians).

The `axis` must be a normalized vector in the transform's local coordinate system. For example, to rotate around the local X-axis, use [Vector3.RIGHT](class_vector3.md#class-vector3-constant-right).

This method is an optimized version of multiplying the given transform `X` with a corresponding rotation transform `R` from the right, i.e., `X * R`.

This can be seen as transforming with respect to the local frame.

* * *

[Transform3D](#class-transform3d) **scaled**(scale: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-transform3d-method-scaled)

Returns a copy of this transform scaled by the given `scale` factor.

This method is an optimized version of multiplying the given transform `X` with a corresponding scaling transform `S` from the left, i.e., `S * X`.

This can be seen as transforming with respect to the global/parent frame.

* * *

[Transform3D](#class-transform3d) **scaled\_local**(scale: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-transform3d-method-scaled-local)

Returns a copy of this transform scaled by the given `scale` factor.

This method is an optimized version of multiplying the given transform `X` with a corresponding scaling transform `S` from the right, i.e., `X * S`.

This can be seen as transforming with respect to the local frame.

* * *

[Transform3D](#class-transform3d) **translated**(offset: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-transform3d-method-translated)

Returns a copy of this transform translated by the given `offset`.

This method is an optimized version of multiplying the given transform `X` with a corresponding translation transform `T` from the left, i.e., `T * X`.

This can be seen as transforming with respect to the global/parent frame.

* * *

[Transform3D](#class-transform3d) **translated\_local**(offset: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-transform3d-method-translated-local)

Returns a copy of this transform translated by the given `offset`.

This method is an optimized version of multiplying the given transform `X` with a corresponding translation transform `T` from the right, i.e., `X * T`.

This can be seen as transforming with respect to the local frame.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Transform3D](#class-transform3d)) [🔗](#class-transform3d-operator-neq-transform3d)

Returns `true` if the components of both transforms are not equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-transform3d-method-is-equal-approx) instead, which is more reliable.

* * *

[AABB](class_aabb.md#class-aabb) **operator \***(right: [AABB](class_aabb.md#class-aabb)) [🔗](#class-transform3d-operator-mul-aabb)

Transforms (multiplies) the [AABB](class_aabb.md#class-aabb) by this transformation matrix.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **operator \***(right: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array)) [🔗](#class-transform3d-operator-mul-packedvector3array)

Transforms (multiplies) every [Vector3](class_vector3.md#class-vector3) element of the given [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) by this transformation matrix.

On larger arrays, this operation is much faster than transforming each [Vector3](class_vector3.md#class-vector3) individually.

* * *

[Plane](class_plane.md#class-plane) **operator \***(right: [Plane](class_plane.md#class-plane)) [🔗](#class-transform3d-operator-mul-plane)

Transforms (multiplies) the [Plane](class_plane.md#class-plane) by this transformation matrix.

* * *

[Transform3D](#class-transform3d) **operator \***(right: [Transform3D](#class-transform3d)) [🔗](#class-transform3d-operator-mul-transform3d)

Transforms (multiplies) this transform by the `right` transform.

This is the operation performed between parent and child [Node3D](class_node3d.md#class-node3d) s.

**Note:** If you need to only modify one attribute of this transform, consider using one of the following methods, instead:

- For translation, see [translated()](#class-transform3d-method-translated) or [translated\_local()](#class-transform3d-method-translated-local).

- For rotation, see [rotated()](#class-transform3d-method-rotated) or [rotated\_local()](#class-transform3d-method-rotated-local).

- For scale, see [scaled()](#class-transform3d-method-scaled) or [scaled\_local()](#class-transform3d-method-scaled-local).


* * *

[Vector3](class_vector3.md#class-vector3) **operator \***(right: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-transform3d-operator-mul-vector3)

Transforms (multiplies) the [Vector3](class_vector3.md#class-vector3) by this transformation matrix.

* * *

[Transform3D](#class-transform3d) **operator \***(right: [float](class_float.md#class-float)) [🔗](#class-transform3d-operator-mul-float)

Multiplies all components of the **Transform3D** by the given [float](class_float.md#class-float), including the [origin](#class-transform3d-property-origin). This affects the transform's scale uniformly, scaling the [basis](#class-transform3d-property-basis).

* * *

[Transform3D](#class-transform3d) **operator \***(right: [int](class_int.md#class-int)) [🔗](#class-transform3d-operator-mul-int)

Multiplies all components of the **Transform3D** by the given [int](class_int.md#class-int), including the [origin](#class-transform3d-property-origin). This affects the transform's scale uniformly, scaling the [basis](#class-transform3d-property-basis).

* * *

[Transform3D](#class-transform3d) **operator /**(right: [float](class_float.md#class-float)) [🔗](#class-transform3d-operator-div-float)

Divides all components of the **Transform3D** by the given [float](class_float.md#class-float), including the [origin](#class-transform3d-property-origin). This affects the transform's scale uniformly, scaling the [basis](#class-transform3d-property-basis).

* * *

[Transform3D](#class-transform3d) **operator /**(right: [int](class_int.md#class-int)) [🔗](#class-transform3d-operator-div-int)

Divides all components of the **Transform3D** by the given [int](class_int.md#class-int), including the [origin](#class-transform3d-property-origin). This affects the transform's scale uniformly, scaling the [basis](#class-transform3d-property-basis).

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Transform3D](#class-transform3d)) [🔗](#class-transform3d-operator-eq-transform3d)

Returns `true` if the components of both transforms are exactly equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-transform3d-method-is-equal-approx) instead, which is more reliable.

[Previous](class_transform2d.md "Transform2D") [Next](class_vector2.md "Vector2")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_transform2d.md "Transform2D") [Next](class_vector2.md "Vector2")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).