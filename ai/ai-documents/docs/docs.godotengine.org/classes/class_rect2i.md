---
title: Rect2i — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rect2i.html
crawled_at: "2026-08-13T10:21:48+12:00"
content_hash: 86cf158bbe6ccabdab4df1d8831fd2bd1d70fce49b17b79a62a45b7ea9b5f83b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Rect2i

* * *

# Rect2i

A 2D axis-aligned bounding box using integer coordinates.

## Description

The **Rect2i** built-in [Variant](class_variant.md#class-variant) type represents an axis-aligned rectangle in a 2D space, using integer coordinates. It is defined by its [position](#class-rect2i-property-position) and [size](#class-rect2i-property-size), which are [Vector2i](class_vector2i.md#class-vector2i). Because it does not rotate, it is frequently used for fast overlap tests (see [intersects()](#class-rect2i-method-intersects)).

For floating-point coordinates, see [Rect2](class_rect2.md#class-rect2).

**Note:** Negative values for [size](#class-rect2i-property-size) are not supported. With negative size, most **Rect2i** methods do not work correctly. Use [abs()](#class-rect2i-method-abs) to get an equivalent **Rect2i** with a non-negative size.

**Note:** In a boolean context, a **Rect2i** evaluates to `false` if both [position](#class-rect2i-property-position) and [size](#class-rect2i-property-size) are zero (equal to [Vector2i.ZERO](class_vector2i.md#class-vector2i-constant-zero)). Otherwise, it always evaluates to `true`.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [Math documentation index](../tutorials/math/index.md)

- [Vector math](../tutorials/math/vector_math.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2i](class_vector2i.md#class-vector2i) | [end](#class-rect2i-property-end) | `Vector2i(0, 0)` |
| [Vector2i](class_vector2i.md#class-vector2i) | [position](#class-rect2i-property-position) | `Vector2i(0, 0)` |
| [Vector2i](class_vector2i.md#class-vector2i) | [size](#class-rect2i-property-size) | `Vector2i(0, 0)` |

## Constructors

|     |     |
| --- | --- |
| [Rect2i](#class-rect2i) | [Rect2i](#class-rect2i-constructor-rect2i)() |
| [Rect2i](#class-rect2i) | [Rect2i](#class-rect2i-constructor-rect2i)(from: [Rect2i](#class-rect2i)) |
| [Rect2i](#class-rect2i) | [Rect2i](#class-rect2i-constructor-rect2i)(from: [Rect2](class_rect2.md#class-rect2)) |
| [Rect2i](#class-rect2i) | [Rect2i](#class-rect2i-constructor-rect2i)(position: [Vector2i](class_vector2i.md#class-vector2i), size: [Vector2i](class_vector2i.md#class-vector2i)) |
| [Rect2i](#class-rect2i) | [Rect2i](#class-rect2i-constructor-rect2i)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int)) |

## Methods

|     |     |
| --- | --- |
| [Rect2i](#class-rect2i) | [abs](#class-rect2i-method-abs)() const |
| [bool](class_bool.md#class-bool) | [encloses](#class-rect2i-method-encloses)(b: [Rect2i](#class-rect2i)) const |
| [Rect2i](#class-rect2i) | [expand](#class-rect2i-method-expand)(to: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [int](class_int.md#class-int) | [get\_area](#class-rect2i-method-get-area)() const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_center](#class-rect2i-method-get-center)() const |
| [Rect2i](#class-rect2i) | [grow](#class-rect2i-method-grow)(amount: [int](class_int.md#class-int)) const |
| [Rect2i](#class-rect2i) | [grow\_individual](#class-rect2i-method-grow-individual)(left: [int](class_int.md#class-int), top: [int](class_int.md#class-int), right: [int](class_int.md#class-int), bottom: [int](class_int.md#class-int)) const |
| [Rect2i](#class-rect2i) | [grow\_side](#class-rect2i-method-grow-side)(side: [int](class_int.md#class-int), amount: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_area](#class-rect2i-method-has-area)() const |
| [bool](class_bool.md#class-bool) | [has\_point](#class-rect2i-method-has-point)(point: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Rect2i](#class-rect2i) | [intersection](#class-rect2i-method-intersection)(b: [Rect2i](#class-rect2i)) const |
| [bool](class_bool.md#class-bool) | [intersects](#class-rect2i-method-intersects)(b: [Rect2i](#class-rect2i)) const |
| [Rect2i](#class-rect2i) | [merge](#class-rect2i-method-merge)(b: [Rect2i](#class-rect2i)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-rect2i-operator-neq-rect2i)(right: [Rect2i](#class-rect2i)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-rect2i-operator-eq-rect2i)(right: [Rect2i](#class-rect2i)) |

* * *

## Property Descriptions

[Vector2i](class_vector2i.md#class-vector2i) **end** = `Vector2i(0, 0)` [🔗](#class-rect2i-property-end)

The ending point. This is usually the bottom-right corner of the rectangle, and is equivalent to `position + size`. Setting this point affects the [size](#class-rect2i-property-size).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **position** = `Vector2i(0, 0)` [🔗](#class-rect2i-property-position)

The origin point. This is usually the top-left corner of the rectangle.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **size** = `Vector2i(0, 0)` [🔗](#class-rect2i-property-size)

The rectangle's width and height, starting from [position](#class-rect2i-property-position). Setting this value also affects the [end](#class-rect2i-property-end) point.

**Note:** It's recommended setting the width and height to non-negative values, as most methods in Godot assume that the [position](#class-rect2i-property-position) is the top-left corner, and the [end](#class-rect2i-property-end) is the bottom-right corner. To get an equivalent rectangle with non-negative size, use [abs()](#class-rect2i-method-abs).

* * *

## Constructor Descriptions

[Rect2i](#class-rect2i) **Rect2i**() [🔗](#class-rect2i-constructor-rect2i)

Constructs a **Rect2i** with its [position](#class-rect2i-property-position) and [size](#class-rect2i-property-size) set to [Vector2i.ZERO](class_vector2i.md#class-vector2i-constant-zero).

* * *

[Rect2i](#class-rect2i) **Rect2i**(from: [Rect2i](#class-rect2i))

Constructs a **Rect2i** as a copy of the given **Rect2i**.

* * *

[Rect2i](#class-rect2i) **Rect2i**(from: [Rect2](class_rect2.md#class-rect2))

Constructs a **Rect2i** from a [Rect2](class_rect2.md#class-rect2). The floating-point coordinates are truncated.

* * *

[Rect2i](#class-rect2i) **Rect2i**(position: [Vector2i](class_vector2i.md#class-vector2i), size: [Vector2i](class_vector2i.md#class-vector2i))

Constructs a **Rect2i** by `position` and `size`.

* * *

[Rect2i](#class-rect2i) **Rect2i**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int))

Constructs a **Rect2i** by setting its [position](#class-rect2i-property-position) to ( `x`, `y`), and its [size](#class-rect2i-property-size) to ( `width`, `height`).

* * *

## Method Descriptions

[Rect2i](#class-rect2i) **abs**() const [🔗](#class-rect2i-method-abs)

Returns a **Rect2i** equivalent to this rectangle, with its width and height modified to be non-negative values, and with its [position](#class-rect2i-property-position) being the top-left corner of the rectangle.

GDScriptC#

```
var rect = Rect2i(25, 25, -100, -50)
var absolute = rect.abs() # absolute is Rect2i(-75, -25, 100, 50)

```

```
var rect = new Rect2I(25, 25, -100, -50);
var absolute = rect.Abs(); // absolute is Rect2I(-75, -25, 100, 50)

```

**Note:** It's recommended to use this method when [size](#class-rect2i-property-size) is negative, as most other methods in Godot assume that the [position](#class-rect2i-property-position) is the top-left corner, and the [end](#class-rect2i-property-end) is the bottom-right corner.

* * *

[bool](class_bool.md#class-bool) **encloses**(b: [Rect2i](#class-rect2i)) const [🔗](#class-rect2i-method-encloses)

Returns `true` if this **Rect2i** completely encloses another one.

* * *

[Rect2i](#class-rect2i) **expand**(to: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-rect2i-method-expand)

Returns a copy of this rectangle expanded to align the edges with the given `to` point, if necessary.

GDScriptC#

```
var rect = Rect2i(0, 0, 5, 2)

rect = rect.expand(Vector2i(10, 0)) # rect is Rect2i(0, 0, 10, 2)
rect = rect.expand(Vector2i(-5, 5)) # rect is Rect2i(-5, 0, 15, 5)

```

```
var rect = new Rect2I(0, 0, 5, 2);

rect = rect.Expand(new Vector2I(10, 0)); // rect is Rect2I(0, 0, 10, 2)
rect = rect.Expand(new Vector2I(-5, 5)); // rect is Rect2I(-5, 0, 15, 5)

```

* * *

[int](class_int.md#class-int) **get\_area**() const [🔗](#class-rect2i-method-get-area)

Returns the rectangle's area. This is equivalent to `size.x * size.y`. See also [has\_area()](#class-rect2i-method-has-area).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_center**() const [🔗](#class-rect2i-method-get-center)

Returns the center point of the rectangle. This is the same as `position + (size / 2)`.

**Note:** If the [size](#class-rect2i-property-size) is odd, the result will be rounded towards [position](#class-rect2i-property-position).

* * *

[Rect2i](#class-rect2i) **grow**(amount: [int](class_int.md#class-int)) const [🔗](#class-rect2i-method-grow)

Returns a copy of this rectangle extended on all sides by the given `amount`. A negative `amount` shrinks the rectangle instead. See also [grow\_individual()](#class-rect2i-method-grow-individual) and [grow\_side()](#class-rect2i-method-grow-side).

GDScriptC#

```
var a = Rect2i(4, 4, 8, 8).grow(4) # a is Rect2i(0, 0, 16, 16)
var b = Rect2i(0, 0, 8, 4).grow(2) # b is Rect2i(-2, -2, 12, 8)

```

```
var a = new Rect2I(4, 4, 8, 8).Grow(4); // a is Rect2I(0, 0, 16, 16)
var b = new Rect2I(0, 0, 8, 4).Grow(2); // b is Rect2I(-2, -2, 12, 8)

```

* * *

[Rect2i](#class-rect2i) **grow\_individual**(left: [int](class_int.md#class-int), top: [int](class_int.md#class-int), right: [int](class_int.md#class-int), bottom: [int](class_int.md#class-int)) const [🔗](#class-rect2i-method-grow-individual)

Returns a copy of this rectangle with its `left`, `top`, `right`, and `bottom` sides extended by the given amounts. Negative values shrink the sides, instead. See also [grow()](#class-rect2i-method-grow) and [grow\_side()](#class-rect2i-method-grow-side).

* * *

[Rect2i](#class-rect2i) **grow\_side**(side: [int](class_int.md#class-int), amount: [int](class_int.md#class-int)) const [🔗](#class-rect2i-method-grow-side)

Returns a copy of this rectangle with its `side` extended by the given `amount` (see [Side](class_@globalscope.md#enum-globalscope-side) constants). A negative `amount` shrinks the rectangle, instead. See also [grow()](#class-rect2i-method-grow) and [grow\_individual()](#class-rect2i-method-grow-individual).

* * *

[bool](class_bool.md#class-bool) **has\_area**() const [🔗](#class-rect2i-method-has-area)

Returns `true` if this rectangle has positive width and height. See also [get\_area()](#class-rect2i-method-get-area).

* * *

[bool](class_bool.md#class-bool) **has\_point**(point: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-rect2i-method-has-point)

Returns `true` if the rectangle contains the given `point`. By convention, points on the right and bottom edges are **not** included.

**Note:** This method is not reliable for **Rect2i** with a _negative_ [size](#class-rect2i-property-size). Use [abs()](#class-rect2i-method-abs) first to get a valid rectangle.

* * *

[Rect2i](#class-rect2i) **intersection**(b: [Rect2i](#class-rect2i)) const [🔗](#class-rect2i-method-intersection)

Returns the intersection between this rectangle and `b`. If the rectangles do not intersect, returns an empty **Rect2i**.

GDScriptC#

```
var a = Rect2i(0, 0, 5, 10)
var b = Rect2i(2, 0, 8, 4)

var c = a.intersection(b) # c is Rect2i(2, 0, 3, 4)

```

```
var a = new Rect2I(0, 0, 5, 10);
var b = new Rect2I(2, 0, 8, 4);

var c = rect1.Intersection(rect2); // c is Rect2I(2, 0, 3, 4)

```

**Note:** If you only need to know whether two rectangles are overlapping, use [intersects()](#class-rect2i-method-intersects), instead.

* * *

[bool](class_bool.md#class-bool) **intersects**(b: [Rect2i](#class-rect2i)) const [🔗](#class-rect2i-method-intersects)

Returns `true` if this rectangle overlaps with the `b` rectangle. The edges of both rectangles are excluded.

* * *

[Rect2i](#class-rect2i) **merge**(b: [Rect2i](#class-rect2i)) const [🔗](#class-rect2i-method-merge)

Returns a **Rect2i** that encloses both this rectangle and `b` around the edges. See also [encloses()](#class-rect2i-method-encloses).

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Rect2i](#class-rect2i)) [🔗](#class-rect2i-operator-neq-rect2i)

Returns `true` if the [position](#class-rect2i-property-position) or [size](#class-rect2i-property-size) of both rectangles are not equal.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Rect2i](#class-rect2i)) [🔗](#class-rect2i-operator-eq-rect2i)

Returns `true` if both [position](#class-rect2i-property-position) and [size](#class-rect2i-property-size) of the rectangles are equal, respectively.

[Previous](class_rect2.md "Rect2") [Next](class_rid.md "RID")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rect2.md "Rect2") [Next](class_rid.md "RID")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).