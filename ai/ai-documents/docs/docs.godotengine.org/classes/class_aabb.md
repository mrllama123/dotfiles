---
title: AABB — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_aabb.html
crawled_at: "2026-08-13T10:26:37+12:00"
content_hash: 5df3d9a86d14443d3013e14e9e5049cb270070ef2807f918d470256bbd4b0311
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AABB

* * *

# AABB

A 3D axis-aligned bounding box.

## Description

The **AABB** built-in [Variant](class_variant.md#class-variant) type represents an axis-aligned bounding box in a 3D space. It is defined by its [position](#class-aabb-property-position) and [size](#class-aabb-property-size), which are [Vector3](class_vector3.md#class-vector3). It is frequently used for fast overlap tests (see [intersects()](#class-aabb-method-intersects)). Although **AABB** itself is axis-aligned, it can be combined with [Transform3D](class_transform3d.md#class-transform3d) to represent a rotated or skewed bounding box.

It uses floating-point coordinates. The 2D counterpart to **AABB** is [Rect2](class_rect2.md#class-rect2). There is no version of **AABB** that uses integer coordinates.

**Note:** Negative values for [size](#class-aabb-property-size) are not supported. With negative size, most **AABB** methods do not work correctly. Use [abs()](#class-aabb-method-abs) to get an equivalent **AABB** with a non-negative size.

**Note:** In a boolean context, an **AABB** evaluates to `false` if both [position](#class-aabb-property-position) and [size](#class-aabb-property-size) are zero (equal to [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero)). Otherwise, it always evaluates to `true`.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [Math documentation index](../tutorials/math/index.md)

- [Vector math](../tutorials/math/vector_math.md)

- [Advanced vector math](../tutorials/math/vectors_advanced.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [end](#class-aabb-property-end) | `Vector3(0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [position](#class-aabb-property-position) | `Vector3(0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-aabb-property-size) | `Vector3(0, 0, 0)` |

## Constructors

|     |     |
| --- | --- |
| [AABB](#class-aabb) | [AABB](#class-aabb-constructor-aabb)() |
| [AABB](#class-aabb) | [AABB](#class-aabb-constructor-aabb)(from: [AABB](#class-aabb)) |
| [AABB](#class-aabb) | [AABB](#class-aabb-constructor-aabb)(position: [Vector3](class_vector3.md#class-vector3), size: [Vector3](class_vector3.md#class-vector3)) |

## Methods

|     |     |
| --- | --- |
| [AABB](#class-aabb) | [abs](#class-aabb-method-abs)() const |
| [bool](class_bool.md#class-bool) | [encloses](#class-aabb-method-encloses)(with: [AABB](#class-aabb)) const |
| [AABB](#class-aabb) | [expand](#class-aabb-method-expand)(to\_point: [Vector3](class_vector3.md#class-vector3)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_center](#class-aabb-method-get-center)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_endpoint](#class-aabb-method-get-endpoint)(idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_longest\_axis](#class-aabb-method-get-longest-axis)() const |
| [int](class_int.md#class-int) | [get\_longest\_axis\_index](#class-aabb-method-get-longest-axis-index)() const |
| [float](class_float.md#class-float) | [get\_longest\_axis\_size](#class-aabb-method-get-longest-axis-size)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_shortest\_axis](#class-aabb-method-get-shortest-axis)() const |
| [int](class_int.md#class-int) | [get\_shortest\_axis\_index](#class-aabb-method-get-shortest-axis-index)() const |
| [float](class_float.md#class-float) | [get\_shortest\_axis\_size](#class-aabb-method-get-shortest-axis-size)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_support](#class-aabb-method-get-support)(direction: [Vector3](class_vector3.md#class-vector3)) const |
| [float](class_float.md#class-float) | [get\_volume](#class-aabb-method-get-volume)() const |
| [AABB](#class-aabb) | [grow](#class-aabb-method-grow)(by: [float](class_float.md#class-float)) const |
| [bool](class_bool.md#class-bool) | [has\_point](#class-aabb-method-has-point)(point: [Vector3](class_vector3.md#class-vector3)) const |
| [bool](class_bool.md#class-bool) | [has\_surface](#class-aabb-method-has-surface)() const |
| [bool](class_bool.md#class-bool) | [has\_volume](#class-aabb-method-has-volume)() const |
| [AABB](#class-aabb) | [intersection](#class-aabb-method-intersection)(with: [AABB](#class-aabb)) const |
| [bool](class_bool.md#class-bool) | [intersects](#class-aabb-method-intersects)(with: [AABB](#class-aabb)) const |
| [bool](class_bool.md#class-bool) | [intersects\_plane](#class-aabb-method-intersects-plane)(plane: [Plane](class_plane.md#class-plane)) const |
| [Variant](class_variant.md#class-variant) | [intersects\_ray](#class-aabb-method-intersects-ray)(from: [Vector3](class_vector3.md#class-vector3), dir: [Vector3](class_vector3.md#class-vector3)) const |
| [Variant](class_variant.md#class-variant) | [intersects\_segment](#class-aabb-method-intersects-segment)(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3)) const |
| [bool](class_bool.md#class-bool) | [is\_equal\_approx](#class-aabb-method-is-equal-approx)(aabb: [AABB](#class-aabb)) const |
| [bool](class_bool.md#class-bool) | [is\_finite](#class-aabb-method-is-finite)() const |
| [AABB](#class-aabb) | [merge](#class-aabb-method-merge)(with: [AABB](#class-aabb)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-aabb-operator-neq-aabb)(right: [AABB](#class-aabb)) |
| [AABB](#class-aabb) | [operator \*](#class-aabb-operator-mul-transform3d)(right: [Transform3D](class_transform3d.md#class-transform3d)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-aabb-operator-eq-aabb)(right: [AABB](#class-aabb)) |

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **end** = `Vector3(0, 0, 0)` [🔗](#class-aabb-property-end)

The ending point. This is usually the corner on the top-right and back of the bounding box, and is equivalent to `position + size`. Setting this point affects the [size](#class-aabb-property-size).

* * *

[Vector3](class_vector3.md#class-vector3) **position** = `Vector3(0, 0, 0)` [🔗](#class-aabb-property-position)

The origin point. This is usually the corner on the bottom-left and forward of the bounding box.

* * *

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(0, 0, 0)` [🔗](#class-aabb-property-size)

The bounding box's width, height, and depth starting from [position](#class-aabb-property-position). Setting this value also affects the [end](#class-aabb-property-end) point.

**Note:** It's recommended setting the width, height, and depth to non-negative values. This is because most methods in Godot assume that the [position](#class-aabb-property-position) is the bottom-left-forward corner, and the [end](#class-aabb-property-end) is the top-right-back corner. To get an equivalent bounding box with non-negative size, use [abs()](#class-aabb-method-abs).

* * *

## Constructor Descriptions

[AABB](#class-aabb) **AABB**() [🔗](#class-aabb-constructor-aabb)

Constructs an **AABB** with its [position](#class-aabb-property-position) and [size](#class-aabb-property-size) set to [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

* * *

[AABB](#class-aabb) **AABB**(from: [AABB](#class-aabb))

Constructs an **AABB** as a copy of the given **AABB**.

* * *

[AABB](#class-aabb) **AABB**(position: [Vector3](class_vector3.md#class-vector3), size: [Vector3](class_vector3.md#class-vector3))

Constructs an **AABB** by `position` and `size`.

* * *

## Method Descriptions

[AABB](#class-aabb) **abs**() const [🔗](#class-aabb-method-abs)

Returns an **AABB** equivalent to this bounding box, with its width, height, and depth modified to be non-negative values.

GDScriptC#

```
var box = AABB(Vector3(5, 0, 5), Vector3(-20, -10, -5))
var absolute = box.abs()
print(absolute.position) # Prints (-15.0, -10.0, 0.0)
print(absolute.size)     # Prints (20.0, 10.0, 5.0)

```

```
var box = new Aabb(new Vector3(5, 0, 5), new Vector3(-20, -10, -5));
var absolute = box.Abs();
GD.Print(absolute.Position); // Prints (-15, -10, 0)
GD.Print(absolute.Size);     // Prints (20, 10, 5)

```

**Note:** It's recommended to use this method when [size](#class-aabb-property-size) is negative, as most other methods in Godot assume that the [size](#class-aabb-property-size)'s components are greater than `0`.

* * *

[bool](class_bool.md#class-bool) **encloses**(with: [AABB](#class-aabb)) const [🔗](#class-aabb-method-encloses)

Returns `true` if this bounding box _completely_ encloses the `with` box. The edges of both boxes are included.

GDScriptC#

```
var a = AABB(Vector3(0, 0, 0), Vector3(4, 4, 4))
var b = AABB(Vector3(1, 1, 1), Vector3(3, 3, 3))
var c = AABB(Vector3(2, 2, 2), Vector3(8, 8, 8))

print(a.encloses(a)) # Prints true
print(a.encloses(b)) # Prints true
print(a.encloses(c)) # Prints false

```

```
var a = new Aabb(new Vector3(0, 0, 0), new Vector3(4, 4, 4));
var b = new Aabb(new Vector3(1, 1, 1), new Vector3(3, 3, 3));
var c = new Aabb(new Vector3(2, 2, 2), new Vector3(8, 8, 8));

GD.Print(a.Encloses(a)); // Prints True
GD.Print(a.Encloses(b)); // Prints True
GD.Print(a.Encloses(c)); // Prints False

```

* * *

[AABB](#class-aabb) **expand**(to\_point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-aabb-method-expand)

Returns a copy of this bounding box expanded to align the edges with the given `to_point`, if necessary.

GDScriptC#

```
var box = AABB(Vector3(0, 0, 0), Vector3(5, 2, 5))

box = box.expand(Vector3(10, 0, 0))
print(box.position) # Prints (0.0, 0.0, 0.0)
print(box.size)     # Prints (10.0, 2.0, 5.0)

box = box.expand(Vector3(-5, 0, 5))
print(box.position) # Prints (-5.0, 0.0, 0.0)
print(box.size)     # Prints (15.0, 2.0, 5.0)

```

```
var box = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 5));

box = box.Expand(new Vector3(10, 0, 0));
GD.Print(box.Position); // Prints (0, 0, 0)
GD.Print(box.Size);     // Prints (10, 2, 5)

box = box.Expand(new Vector3(-5, 0, 5));
GD.Print(box.Position); // Prints (-5, 0, 0)
GD.Print(box.Size);     // Prints (15, 2, 5)

```

* * *

[Vector3](class_vector3.md#class-vector3) **get\_center**() const [🔗](#class-aabb-method-get-center)

Returns the center point of the bounding box. This is the same as `position + (size / 2.0)`.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_endpoint**(idx: [int](class_int.md#class-int)) const [🔗](#class-aabb-method-get-endpoint)

Returns the position of one of the 8 vertices that compose this bounding box. With an `idx` of `0` this is the same as [position](#class-aabb-property-position), and an `idx` of `7` is the same as [end](#class-aabb-property-end).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_longest\_axis**() const [🔗](#class-aabb-method-get-longest-axis)

Returns the longest normalized axis of this bounding box's [size](#class-aabb-property-size), as a [Vector3](class_vector3.md#class-vector3) ( [Vector3.RIGHT](class_vector3.md#class-vector3-constant-right), [Vector3.UP](class_vector3.md#class-vector3-constant-up), or [Vector3.BACK](class_vector3.md#class-vector3-constant-back)).

GDScriptC#

```
var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

print(box.get_longest_axis())       # Prints (0.0, 0.0, 1.0)
print(box.get_longest_axis_index()) # Prints 2
print(box.get_longest_axis_size())  # Prints 8.0

```

```
var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

GD.Print(box.GetLongestAxis());      // Prints (0, 0, 1)
GD.Print(box.GetLongestAxisIndex()); // Prints Z
GD.Print(box.GetLongestAxisSize());  // Prints 8

```

See also [get\_longest\_axis\_index()](#class-aabb-method-get-longest-axis-index) and [get\_longest\_axis\_size()](#class-aabb-method-get-longest-axis-size).

* * *

[int](class_int.md#class-int) **get\_longest\_axis\_index**() const [🔗](#class-aabb-method-get-longest-axis-index)

Returns the index to the longest axis of this bounding box's [size](#class-aabb-property-size) (see [Vector3.AXIS\_X](class_vector3.md#class-vector3-constant-axis-x), [Vector3.AXIS\_Y](class_vector3.md#class-vector3-constant-axis-y), and [Vector3.AXIS\_Z](class_vector3.md#class-vector3-constant-axis-z)).

For an example, see [get\_longest\_axis()](#class-aabb-method-get-longest-axis).

* * *

[float](class_float.md#class-float) **get\_longest\_axis\_size**() const [🔗](#class-aabb-method-get-longest-axis-size)

Returns the longest dimension of this bounding box's [size](#class-aabb-property-size).

For an example, see [get\_longest\_axis()](#class-aabb-method-get-longest-axis).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_shortest\_axis**() const [🔗](#class-aabb-method-get-shortest-axis)

Returns the shortest normalized axis of this bounding box's [size](#class-aabb-property-size), as a [Vector3](class_vector3.md#class-vector3) ( [Vector3.RIGHT](class_vector3.md#class-vector3-constant-right), [Vector3.UP](class_vector3.md#class-vector3-constant-up), or [Vector3.BACK](class_vector3.md#class-vector3-constant-back)).

GDScriptC#

```
var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

print(box.get_shortest_axis())       # Prints (1.0, 0.0, 0.0)
print(box.get_shortest_axis_index()) # Prints 0
print(box.get_shortest_axis_size())  # Prints 2.0

```

```
var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

GD.Print(box.GetShortestAxis());      // Prints (1, 0, 0)
GD.Print(box.GetShortestAxisIndex()); // Prints X
GD.Print(box.GetShortestAxisSize());  // Prints 2

```

See also [get\_shortest\_axis\_index()](#class-aabb-method-get-shortest-axis-index) and [get\_shortest\_axis\_size()](#class-aabb-method-get-shortest-axis-size).

* * *

[int](class_int.md#class-int) **get\_shortest\_axis\_index**() const [🔗](#class-aabb-method-get-shortest-axis-index)

Returns the index to the shortest axis of this bounding box's [size](#class-aabb-property-size) (see [Vector3.AXIS\_X](class_vector3.md#class-vector3-constant-axis-x), [Vector3.AXIS\_Y](class_vector3.md#class-vector3-constant-axis-y), and [Vector3.AXIS\_Z](class_vector3.md#class-vector3-constant-axis-z)).

For an example, see [get\_shortest\_axis()](#class-aabb-method-get-shortest-axis).

* * *

[float](class_float.md#class-float) **get\_shortest\_axis\_size**() const [🔗](#class-aabb-method-get-shortest-axis-size)

Returns the shortest dimension of this bounding box's [size](#class-aabb-property-size).

For an example, see [get\_shortest\_axis()](#class-aabb-method-get-shortest-axis).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_support**(direction: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-aabb-method-get-support)

Returns the vertex's position of this bounding box that's the farthest in the given direction. This point is commonly known as the support point in collision detection algorithms.

* * *

[float](class_float.md#class-float) **get\_volume**() const [🔗](#class-aabb-method-get-volume)

Returns the bounding box's volume. This is equivalent to `size.x * size.y * size.z`. See also [has\_volume()](#class-aabb-method-has-volume).

* * *

[AABB](#class-aabb) **grow**(by: [float](class_float.md#class-float)) const [🔗](#class-aabb-method-grow)

Returns a copy of this bounding box extended on all sides by the given amount `by`. A negative amount shrinks the box instead.

GDScriptC#

```
var a = AABB(Vector3(4, 4, 4), Vector3(8, 8, 8)).grow(4)
print(a.position) # Prints (0.0, 0.0, 0.0)
print(a.size)     # Prints (16.0, 16.0, 16.0)

var b = AABB(Vector3(0, 0, 0), Vector3(8, 4, 2)).grow(2)
print(b.position) # Prints (-2.0, -2.0, -2.0)
print(b.size)     # Prints (12.0, 8.0, 6.0)

```

```
var a = new Aabb(new Vector3(4, 4, 4), new Vector3(8, 8, 8)).Grow(4);
GD.Print(a.Position); // Prints (0, 0, 0)
GD.Print(a.Size);     // Prints (16, 16, 16)

var b = new Aabb(new Vector3(0, 0, 0), new Vector3(8, 4, 2)).Grow(2);
GD.Print(b.Position); // Prints (-2, -2, -2)
GD.Print(b.Size);     // Prints (12, 8, 6)

```

* * *

[bool](class_bool.md#class-bool) **has\_point**(point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-aabb-method-has-point)

Returns `true` if the bounding box contains the given `point`. By convention, points exactly on the right, top, and front sides are **not** included.

**Note:** This method is not reliable for **AABB** with a _negative_ [size](#class-aabb-property-size). Use [abs()](#class-aabb-method-abs) first to get a valid bounding box.

* * *

[bool](class_bool.md#class-bool) **has\_surface**() const [🔗](#class-aabb-method-has-surface)

Returns `true` if this bounding box has a surface or a length, that is, at least one component of [size](#class-aabb-property-size) is greater than `0`. Otherwise, returns `false`.

* * *

[bool](class_bool.md#class-bool) **has\_volume**() const [🔗](#class-aabb-method-has-volume)

Returns `true` if this bounding box's width, height, and depth are all positive. See also [get\_volume()](#class-aabb-method-get-volume).

* * *

[AABB](#class-aabb) **intersection**(with: [AABB](#class-aabb)) const [🔗](#class-aabb-method-intersection)

Returns the intersection between this bounding box and `with`. If the boxes do not intersect, returns an empty **AABB**. If the boxes intersect at the edge, returns a flat **AABB** with no volume (see [has\_surface()](#class-aabb-method-has-surface) and [has\_volume()](#class-aabb-method-has-volume)).

GDScriptC#

```
var box1 = AABB(Vector3(0, 0, 0), Vector3(5, 2, 8))
var box2 = AABB(Vector3(2, 0, 2), Vector3(8, 4, 4))

var intersection = box1.intersection(box2)
print(intersection.position) # Prints (2.0, 0.0, 2.0)
print(intersection.size)     # Prints (3.0, 2.0, 4.0)

```

```
var box1 = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 8));
var box2 = new Aabb(new Vector3(2, 0, 2), new Vector3(8, 4, 4));

var intersection = box1.Intersection(box2);
GD.Print(intersection.Position); // Prints (2, 0, 2)
GD.Print(intersection.Size);     // Prints (3, 2, 4)

```

**Note:** If you only need to know whether two bounding boxes are intersecting, use [intersects()](#class-aabb-method-intersects), instead.

* * *

[bool](class_bool.md#class-bool) **intersects**(with: [AABB](#class-aabb)) const [🔗](#class-aabb-method-intersects)

Returns `true` if this bounding box overlaps with the box `with`. The edges of both boxes are _always_ excluded.

* * *

[bool](class_bool.md#class-bool) **intersects\_plane**(plane: [Plane](class_plane.md#class-plane)) const [🔗](#class-aabb-method-intersects-plane)

Returns `true` if this bounding box is on both sides of the given `plane`.

* * *

[Variant](class_variant.md#class-variant) **intersects\_ray**(from: [Vector3](class_vector3.md#class-vector3), dir: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-aabb-method-intersects-ray)

Returns the first point where this bounding box and the given ray intersect, as a [Vector3](class_vector3.md#class-vector3). If no intersection occurs, returns `null`.

The ray begin at `from`, faces `dir` and extends towards infinity.

* * *

[Variant](class_variant.md#class-variant) **intersects\_segment**(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-aabb-method-intersects-segment)

Returns the first point where this bounding box and the given segment intersect, as a [Vector3](class_vector3.md#class-vector3). If no intersection occurs, returns `null`.

The segment begins at `from` and ends at `to`.

* * *

[bool](class_bool.md#class-bool) **is\_equal\_approx**(aabb: [AABB](#class-aabb)) const [🔗](#class-aabb-method-is-equal-approx)

Returns `true` if this bounding box and `aabb` are approximately equal, by calling [Vector3.is\_equal\_approx()](class_vector3.md#class-vector3-method-is-equal-approx) on the [position](#class-aabb-property-position) and the [size](#class-aabb-property-size).

* * *

[bool](class_bool.md#class-bool) **is\_finite**() const [🔗](#class-aabb-method-is-finite)

Returns `true` if this bounding box's values are finite, by calling [Vector3.is\_finite()](class_vector3.md#class-vector3-method-is-finite) on the [position](#class-aabb-property-position) and the [size](#class-aabb-property-size).

* * *

[AABB](#class-aabb) **merge**(with: [AABB](#class-aabb)) const [🔗](#class-aabb-method-merge)

Returns an **AABB** that encloses both this bounding box and `with` around the edges. See also [encloses()](#class-aabb-method-encloses).

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [AABB](#class-aabb)) [🔗](#class-aabb-operator-neq-aabb)

Returns `true` if the [position](#class-aabb-property-position) or [size](#class-aabb-property-size) of both bounding boxes are not equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-aabb-method-is-equal-approx) instead, which is more reliable.

* * *

[AABB](#class-aabb) **operator \***(right: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-aabb-operator-mul-transform3d)

Inversely transforms (multiplies) the **AABB** by the given [Transform3D](class_transform3d.md#class-transform3d) transformation matrix, under the assumption that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).

`aabb * transform` is equivalent to `transform.inverse() * aabb`. See [Transform3D.inverse()](class_transform3d.md#class-transform3d-method-inverse).

For transforming by inverse of an affine transformation (e.g. with scaling) `transform.affine_inverse() * aabb` can be used instead. See [Transform3D.affine\_inverse()](class_transform3d.md#class-transform3d-method-affine-inverse).

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [AABB](#class-aabb)) [🔗](#class-aabb-operator-eq-aabb)

Returns `true` if both [position](#class-aabb-property-position) and [size](#class-aabb-property-size) of the bounding boxes are exactly equal, respectively.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-aabb-method-is-equal-approx) instead, which is more reliable.

[Previous](class_variant.md "Variant") [Next](class_array.md "Array")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_variant.md "Variant") [Next](class_array.md "Array")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).