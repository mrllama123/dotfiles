---
title: Plane — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_plane.html
crawled_at: "2026-08-13T10:42:17+12:00"
content_hash: 477eac360c6fe44021b510df223ce350347c6986f7b0505cb762c5807ea3cdd2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Plane

* * *

# Plane

A plane in Hessian normal form.

## Description

Represents a normalized plane equation. [normal](#class-plane-property-normal) is the normal of the plane (a, b, c normalized), and [d](#class-plane-property-d) is the distance from the origin to the plane (in the direction of "normal"). "Over" or "Above" the plane is considered the side of the plane towards where the normal is pointing.

## Tutorials

- [Math documentation index](../tutorials/math/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [d](#class-plane-property-d) | `0.0` |
| [Vector3](class_vector3.md#class-vector3) | [normal](#class-plane-property-normal) | `Vector3(0, 0, 0)` |
| [float](class_float.md#class-float) | [x](#class-plane-property-x) | `0.0` |
| [float](class_float.md#class-float) | [y](#class-plane-property-y) | `0.0` |
| [float](class_float.md#class-float) | [z](#class-plane-property-z) | `0.0` |

## Constructors

|     |     |
| --- | --- |
| [Plane](#class-plane) | [Plane](#class-plane-constructor-plane)() |
| [Plane](#class-plane) | [Plane](#class-plane-constructor-plane)(from: [Plane](#class-plane)) |
| [Plane](#class-plane) | [Plane](#class-plane-constructor-plane)(a: [float](class_float.md#class-float), b: [float](class_float.md#class-float), c: [float](class_float.md#class-float), d: [float](class_float.md#class-float)) |
| [Plane](#class-plane) | [Plane](#class-plane-constructor-plane)(normal: [Vector3](class_vector3.md#class-vector3)) |
| [Plane](#class-plane) | [Plane](#class-plane-constructor-plane)(normal: [Vector3](class_vector3.md#class-vector3), d: [float](class_float.md#class-float)) |
| [Plane](#class-plane) | [Plane](#class-plane-constructor-plane)(normal: [Vector3](class_vector3.md#class-vector3), point: [Vector3](class_vector3.md#class-vector3)) |
| [Plane](#class-plane) | [Plane](#class-plane-constructor-plane)(point1: [Vector3](class_vector3.md#class-vector3), point2: [Vector3](class_vector3.md#class-vector3), point3: [Vector3](class_vector3.md#class-vector3)) |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [distance\_to](#class-plane-method-distance-to)(point: [Vector3](class_vector3.md#class-vector3)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_center](#class-plane-method-get-center)() const |
| [bool](class_bool.md#class-bool) | [has\_point](#class-plane-method-has-point)(point: [Vector3](class_vector3.md#class-vector3), tolerance: [float](class_float.md#class-float) = 1e-05) const |
| [Variant](class_variant.md#class-variant) | [intersect\_3](#class-plane-method-intersect-3)(b: [Plane](#class-plane), c: [Plane](#class-plane)) const |
| [Variant](class_variant.md#class-variant) | [intersects\_ray](#class-plane-method-intersects-ray)(from: [Vector3](class_vector3.md#class-vector3), dir: [Vector3](class_vector3.md#class-vector3)) const |
| [Variant](class_variant.md#class-variant) | [intersects\_segment](#class-plane-method-intersects-segment)(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3)) const |
| [bool](class_bool.md#class-bool) | [is\_equal\_approx](#class-plane-method-is-equal-approx)(to\_plane: [Plane](#class-plane)) const |
| [bool](class_bool.md#class-bool) | [is\_finite](#class-plane-method-is-finite)() const |
| [bool](class_bool.md#class-bool) | [is\_point\_over](#class-plane-method-is-point-over)(point: [Vector3](class_vector3.md#class-vector3)) const |
| [Plane](#class-plane) | [normalized](#class-plane-method-normalized)() const |
| [Vector3](class_vector3.md#class-vector3) | [project](#class-plane-method-project)(point: [Vector3](class_vector3.md#class-vector3)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-plane-operator-neq-plane)(right: [Plane](#class-plane)) |
| [Plane](#class-plane) | [operator \*](#class-plane-operator-mul-transform3d)(right: [Transform3D](class_transform3d.md#class-transform3d)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-plane-operator-eq-plane)(right: [Plane](#class-plane)) |
| [Plane](#class-plane) | [operator unary+](#class-plane-operator-unplus)() |
| [Plane](#class-plane) | [operator unary-](#class-plane-operator-unminus)() |

* * *

## Constants

**PLANE\_YZ** = `Plane(1, 0, 0, 0)` [🔗](#class-plane-constant-plane-yz)

A plane that extends in the Y and Z axes (normal vector points +X).

**PLANE\_XZ** = `Plane(0, 1, 0, 0)` [🔗](#class-plane-constant-plane-xz)

A plane that extends in the X and Z axes (normal vector points +Y).

**PLANE\_XY** = `Plane(0, 0, 1, 0)` [🔗](#class-plane-constant-plane-xy)

A plane that extends in the X and Y axes (normal vector points +Z).

* * *

## Property Descriptions

[float](class_float.md#class-float) **d** = `0.0` [🔗](#class-plane-property-d)

The distance from the origin to the plane, expressed in terms of [normal](#class-plane-property-normal) (according to its direction and magnitude). Actual absolute distance from the origin to the plane can be calculated as `abs(d) / normal.length()` (if [normal](#class-plane-property-normal) has zero length then this **Plane** does not represent a valid plane).

In the scalar equation of the plane `ax + by + cz = d`, this is `d`, while the `(a, b, c)` coordinates are represented by the [normal](#class-plane-property-normal) property.

* * *

[Vector3](class_vector3.md#class-vector3) **normal** = `Vector3(0, 0, 0)` [🔗](#class-plane-property-normal)

The normal of the plane, typically a unit vector. Shouldn't be a zero vector as **Plane** with such [normal](#class-plane-property-normal) does not represent a valid plane.

In the scalar equation of the plane `ax + by + cz = d`, this is the vector `(a, b, c)`, where `d` is the [d](#class-plane-property-d) property.

* * *

[float](class_float.md#class-float) **x** = `0.0` [🔗](#class-plane-property-x)

The X component of the plane's [normal](#class-plane-property-normal) vector.

* * *

[float](class_float.md#class-float) **y** = `0.0` [🔗](#class-plane-property-y)

The Y component of the plane's [normal](#class-plane-property-normal) vector.

* * *

[float](class_float.md#class-float) **z** = `0.0` [🔗](#class-plane-property-z)

The Z component of the plane's [normal](#class-plane-property-normal) vector.

* * *

## Constructor Descriptions

[Plane](#class-plane) **Plane**() [🔗](#class-plane-constructor-plane)

Constructs a default-initialized **Plane** with all components set to `0`.

* * *

[Plane](#class-plane) **Plane**(from: [Plane](#class-plane))

Constructs a **Plane** as a copy of the given **Plane**.

* * *

[Plane](#class-plane) **Plane**(a: [float](class_float.md#class-float), b: [float](class_float.md#class-float), c: [float](class_float.md#class-float), d: [float](class_float.md#class-float))

Creates a plane from the four parameters. The three components of the resulting plane's [normal](#class-plane-property-normal) are `a`, `b` and `c`, and the plane has a distance of `d` from the origin.

* * *

[Plane](#class-plane) **Plane**(normal: [Vector3](class_vector3.md#class-vector3))

Creates a plane from the normal vector. The plane will intersect the origin.

The `normal` of the plane must be a unit vector.

* * *

[Plane](#class-plane) **Plane**(normal: [Vector3](class_vector3.md#class-vector3), d: [float](class_float.md#class-float))

Creates a plane from the normal vector and the plane's distance from the origin.

The `normal` of the plane must be a unit vector.

* * *

[Plane](#class-plane) **Plane**(normal: [Vector3](class_vector3.md#class-vector3), point: [Vector3](class_vector3.md#class-vector3))

Creates a plane from the normal vector and a point on the plane.

The `normal` of the plane must be a unit vector.

* * *

[Plane](#class-plane) **Plane**(point1: [Vector3](class_vector3.md#class-vector3), point2: [Vector3](class_vector3.md#class-vector3), point3: [Vector3](class_vector3.md#class-vector3))

Creates a plane from the three points, given in clockwise order.

* * *

## Method Descriptions

[float](class_float.md#class-float) **distance\_to**(point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-plane-method-distance-to)

Returns the shortest distance from the plane to the position `point`. If the point is above the plane, the distance will be positive. If below, the distance will be negative.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_center**() const [🔗](#class-plane-method-get-center)

Returns the center of the plane.

* * *

[bool](class_bool.md#class-bool) **has\_point**(point: [Vector3](class_vector3.md#class-vector3), tolerance: [float](class_float.md#class-float) = 1e-05) const [🔗](#class-plane-method-has-point)

Returns `true` if `point` is inside the plane. Comparison uses a custom minimum `tolerance` threshold.

* * *

[Variant](class_variant.md#class-variant) **intersect\_3**(b: [Plane](#class-plane), c: [Plane](#class-plane)) const [🔗](#class-plane-method-intersect-3)

Returns the intersection point of the three planes `b`, `c` and this plane. If no intersection is found, `null` is returned.

* * *

[Variant](class_variant.md#class-variant) **intersects\_ray**(from: [Vector3](class_vector3.md#class-vector3), dir: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-plane-method-intersects-ray)

Returns the intersection point of a ray consisting of the position `from` and the direction normal `dir` with this plane. If no intersection is found, `null` is returned.

* * *

[Variant](class_variant.md#class-variant) **intersects\_segment**(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-plane-method-intersects-segment)

Returns the intersection point of a segment from position `from` to position `to` with this plane. If no intersection is found, `null` is returned.

* * *

[bool](class_bool.md#class-bool) **is\_equal\_approx**(to\_plane: [Plane](#class-plane)) const [🔗](#class-plane-method-is-equal-approx)

Returns `true` if this plane and `to_plane` are approximately equal, by running [@GlobalScope.is\_equal\_approx()](class_@globalscope.md#class-globalscope-method-is-equal-approx) on each component.

* * *

[bool](class_bool.md#class-bool) **is\_finite**() const [🔗](#class-plane-method-is-finite)

Returns `true` if this plane is finite, by calling [@GlobalScope.is\_finite()](class_@globalscope.md#class-globalscope-method-is-finite) on each component.

* * *

[bool](class_bool.md#class-bool) **is\_point\_over**(point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-plane-method-is-point-over)

Returns `true` if `point` is located above the plane.

* * *

[Plane](#class-plane) **normalized**() const [🔗](#class-plane-method-normalized)

Returns a copy of the plane, with normalized [normal](#class-plane-property-normal) (so it's a unit vector). Returns `Plane(0, 0, 0, 0)` if [normal](#class-plane-property-normal) can't be normalized (it has zero length).

* * *

[Vector3](class_vector3.md#class-vector3) **project**(point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-plane-method-project)

Returns the orthogonal projection of `point` into a point in the plane.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Plane](#class-plane)) [🔗](#class-plane-operator-neq-plane)

Returns `true` if the planes are not equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-plane-method-is-equal-approx) instead, which is more reliable.

* * *

[Plane](#class-plane) **operator \***(right: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-plane-operator-mul-transform3d)

Inversely transforms (multiplies) the **Plane** by the given [Transform3D](class_transform3d.md#class-transform3d) transformation matrix.

`plane * transform` is equivalent to `transform.affine_inverse() * plane`. See [Transform3D.affine\_inverse()](class_transform3d.md#class-transform3d-method-affine-inverse).

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Plane](#class-plane)) [🔗](#class-plane-operator-eq-plane)

Returns `true` if the planes are exactly equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-plane-method-is-equal-approx) instead, which is more reliable.

* * *

[Plane](#class-plane) **operator unary+**() [🔗](#class-plane-operator-unplus)

Returns the same value as if the `+` was not there. Unary `+` does nothing, but sometimes it can make your code more readable.

* * *

[Plane](#class-plane) **operator unary-**() [🔗](#class-plane-operator-unminus)

Returns the negative value of the **Plane**. This is the same as writing `Plane(-p.normal, -p.d)`. This operation flips the direction of the normal vector and also flips the distance value, resulting in a Plane that is in the same place, but facing the opposite direction.

[Previous](class_packedvector4array.md "PackedVector4Array") [Next](class_projection.md "Projection")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packedvector4array.md "PackedVector4Array") [Next](class_projection.md "Projection")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).