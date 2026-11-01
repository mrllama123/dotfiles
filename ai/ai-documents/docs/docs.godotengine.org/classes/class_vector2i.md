---
title: Vector2i — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_vector2i.html
crawled_at: "2026-08-13T10:42:33+12:00"
content_hash: 99ffa7e215216634e1adcdd0e9459933cf9c1cb733eec03413ae5585f39fd01f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Vector2i

* * *

# Vector2i

A 2D vector using integer coordinates.

## Description

A 2-element structure that can be used to represent 2D grid coordinates or any other pair of integers.

It uses integer coordinates and is therefore preferable to [Vector2](class_vector2.md#class-vector2) when exact precision is required. Note that the values are limited to 32 bits, and unlike [Vector2](class_vector2.md#class-vector2) this cannot be configured with an engine build option. Use [int](class_int.md#class-int) or [PackedInt64Array](class_packedint64array.md#class-packedint64array) if 64-bit values are needed.

**Note:** In a boolean context, a Vector2i will evaluate to `false` if it's equal to `Vector2i(0, 0)`. Otherwise, a Vector2i will always evaluate to `true`.

## Tutorials

- [Math documentation index](../tutorials/math/index.md)

- [Vector math](../tutorials/math/vector_math.md)

- [3Blue1Brown Essence of Linear Algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [x](#class-vector2i-property-x) | `0` |
| [int](class_int.md#class-int) | [y](#class-vector2i-property-y) | `0` |

## Constructors

|     |     |
| --- | --- |
| [Vector2i](#class-vector2i) | [Vector2i](#class-vector2i-constructor-vector2i)() |
| [Vector2i](#class-vector2i) | [Vector2i](#class-vector2i-constructor-vector2i)(from: [Vector2i](#class-vector2i)) |
| [Vector2i](#class-vector2i) | [Vector2i](#class-vector2i-constructor-vector2i)(from: [Vector2](class_vector2.md#class-vector2)) |
| [Vector2i](#class-vector2i) | [Vector2i](#class-vector2i-constructor-vector2i)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) |

## Methods

|     |     |
| --- | --- |
| [Vector2i](#class-vector2i) | [abs](#class-vector2i-method-abs)() const |
| [float](class_float.md#class-float) | [aspect](#class-vector2i-method-aspect)() const |
| [Vector2i](#class-vector2i) | [clamp](#class-vector2i-method-clamp)(min: [Vector2i](#class-vector2i), max: [Vector2i](#class-vector2i)) const |
| [Vector2i](#class-vector2i) | [clampi](#class-vector2i-method-clampi)(min: [int](class_int.md#class-int), max: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [distance\_squared\_to](#class-vector2i-method-distance-squared-to)(to: [Vector2i](#class-vector2i)) const |
| [float](class_float.md#class-float) | [distance\_to](#class-vector2i-method-distance-to)(to: [Vector2i](#class-vector2i)) const |
| [float](class_float.md#class-float) | [length](#class-vector2i-method-length)() const |
| [int](class_int.md#class-int) | [length\_squared](#class-vector2i-method-length-squared)() const |
| [Vector2i](#class-vector2i) | [max](#class-vector2i-method-max)(with: [Vector2i](#class-vector2i)) const |
| [int](class_int.md#class-int) | [max\_axis\_index](#class-vector2i-method-max-axis-index)() const |
| [Vector2i](#class-vector2i) | [maxi](#class-vector2i-method-maxi)(with: [int](class_int.md#class-int)) const |
| [Vector2i](#class-vector2i) | [min](#class-vector2i-method-min)(with: [Vector2i](#class-vector2i)) const |
| [int](class_int.md#class-int) | [min\_axis\_index](#class-vector2i-method-min-axis-index)() const |
| [Vector2i](#class-vector2i) | [mini](#class-vector2i-method-mini)(with: [int](class_int.md#class-int)) const |
| [Vector2i](#class-vector2i) | [sign](#class-vector2i-method-sign)() const |
| [Vector2i](#class-vector2i) | [snapped](#class-vector2i-method-snapped)(step: [Vector2i](#class-vector2i)) const |
| [Vector2i](#class-vector2i) | [snappedi](#class-vector2i-method-snappedi)(step: [int](class_int.md#class-int)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-vector2i-operator-neq-vector2i)(right: [Vector2i](#class-vector2i)) |
| [Vector2i](#class-vector2i) | [operator %](#class-vector2i-operator-mod-vector2i)(right: [Vector2i](#class-vector2i)) |
| [Vector2i](#class-vector2i) | [operator %](#class-vector2i-operator-mod-int)(right: [int](class_int.md#class-int)) |
| [Vector2i](#class-vector2i) | [operator \*](#class-vector2i-operator-mul-vector2i)(right: [Vector2i](#class-vector2i)) |
| [Vector2](class_vector2.md#class-vector2) | [operator \*](#class-vector2i-operator-mul-float)(right: [float](class_float.md#class-float)) |
| [Vector2i](#class-vector2i) | [operator \*](#class-vector2i-operator-mul-int)(right: [int](class_int.md#class-int)) |
| [Vector2i](#class-vector2i) | [operator +](#class-vector2i-operator-sum-vector2i)(right: [Vector2i](#class-vector2i)) |
| [Vector2i](#class-vector2i) | [operator -](#class-vector2i-operator-dif-vector2i)(right: [Vector2i](#class-vector2i)) |
| [Vector2i](#class-vector2i) | [operator /](#class-vector2i-operator-div-vector2i)(right: [Vector2i](#class-vector2i)) |
| [Vector2](class_vector2.md#class-vector2) | [operator /](#class-vector2i-operator-div-float)(right: [float](class_float.md#class-float)) |
| [Vector2i](#class-vector2i) | [operator /](#class-vector2i-operator-div-int)(right: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [operator <](#class-vector2i-operator-lt-vector2i)(right: [Vector2i](#class-vector2i)) |
| [bool](class_bool.md#class-bool) | [operator <=](#class-vector2i-operator-lte-vector2i)(right: [Vector2i](#class-vector2i)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-vector2i-operator-eq-vector2i)(right: [Vector2i](#class-vector2i)) |
| [bool](class_bool.md#class-bool) | [operator >](#class-vector2i-operator-gt-vector2i)(right: [Vector2i](#class-vector2i)) |
| [bool](class_bool.md#class-bool) | [operator >=](#class-vector2i-operator-gte-vector2i)(right: [Vector2i](#class-vector2i)) |
| [int](class_int.md#class-int) | [operator \[\]](#class-vector2i-operator-idx-int)(index: [int](class_int.md#class-int)) |
| [Vector2i](#class-vector2i) | [operator unary+](#class-vector2i-operator-unplus)() |
| [Vector2i](#class-vector2i) | [operator unary-](#class-vector2i-operator-unminus)() |

* * *

## Enumerations

enum **Axis**: [🔗](#enum-vector2i-axis)

[Axis](#enum-vector2i-axis) **AXIS\_X** = `0`

Enumerated value for the X axis. Returned by [max\_axis\_index()](#class-vector2i-method-max-axis-index) and [min\_axis\_index()](#class-vector2i-method-min-axis-index).

[Axis](#enum-vector2i-axis) **AXIS\_Y** = `1`

Enumerated value for the Y axis. Returned by [max\_axis\_index()](#class-vector2i-method-max-axis-index) and [min\_axis\_index()](#class-vector2i-method-min-axis-index).

* * *

## Constants

**ZERO** = `Vector2i(0, 0)` [🔗](#class-vector2i-constant-zero)

Zero vector, a vector with all components set to `0`.

**ONE** = `Vector2i(1, 1)` [🔗](#class-vector2i-constant-one)

One vector, a vector with all components set to `1`.

**MIN** = `Vector2i(-2147483648, -2147483648)` [🔗](#class-vector2i-constant-min)

Min vector, a vector with all components equal to `INT32_MIN`. Can be used as a negative integer equivalent of [Vector2.INF](class_vector2.md#class-vector2-constant-inf).

**MAX** = `Vector2i(2147483647, 2147483647)` [🔗](#class-vector2i-constant-max)

Max vector, a vector with all components equal to `INT32_MAX`. Can be used as an integer equivalent of [Vector2.INF](class_vector2.md#class-vector2-constant-inf).

**LEFT** = `Vector2i(-1, 0)` [🔗](#class-vector2i-constant-left)

Left unit vector. Represents the direction of left.

**RIGHT** = `Vector2i(1, 0)` [🔗](#class-vector2i-constant-right)

Right unit vector. Represents the direction of right.

**UP** = `Vector2i(0, -1)` [🔗](#class-vector2i-constant-up)

Up unit vector. Y is down in 2D, so this vector points -Y.

**DOWN** = `Vector2i(0, 1)` [🔗](#class-vector2i-constant-down)

Down unit vector. Y is down in 2D, so this vector points +Y.

* * *

## Property Descriptions

[int](class_int.md#class-int) **x** = `0` [🔗](#class-vector2i-property-x)

The vector's X component. Also accessible by using the index position `[0]`.

* * *

[int](class_int.md#class-int) **y** = `0` [🔗](#class-vector2i-property-y)

The vector's Y component. Also accessible by using the index position `[1]`.

* * *

## Constructor Descriptions

[Vector2i](#class-vector2i) **Vector2i**() [🔗](#class-vector2i-constructor-vector2i)

Constructs a default-initialized **Vector2i** with all components set to `0`.

* * *

[Vector2i](#class-vector2i) **Vector2i**(from: [Vector2i](#class-vector2i))

Constructs a **Vector2i** as a copy of the given **Vector2i**.

* * *

[Vector2i](#class-vector2i) **Vector2i**(from: [Vector2](class_vector2.md#class-vector2))

Constructs a new **Vector2i** from the given [Vector2](class_vector2.md#class-vector2) by truncating components' fractional parts (rounding towards zero). For a different behavior consider passing the result of [Vector2.ceil()](class_vector2.md#class-vector2-method-ceil), [Vector2.floor()](class_vector2.md#class-vector2-method-floor) or [Vector2.round()](class_vector2.md#class-vector2-method-round) to this constructor instead.

* * *

[Vector2i](#class-vector2i) **Vector2i**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int))

Constructs a new **Vector2i** from the given `x` and `y`.

* * *

## Method Descriptions

[Vector2i](#class-vector2i) **abs**() const [🔗](#class-vector2i-method-abs)

Returns a new vector with all components in absolute values (i.e. positive).

* * *

[float](class_float.md#class-float) **aspect**() const [🔗](#class-vector2i-method-aspect)

Returns the aspect ratio of this vector, the ratio of [x](#class-vector2i-property-x) to [y](#class-vector2i-property-y).

* * *

[Vector2i](#class-vector2i) **clamp**(min: [Vector2i](#class-vector2i), max: [Vector2i](#class-vector2i)) const [🔗](#class-vector2i-method-clamp)

Returns a new vector with all components clamped between the components of `min` and `max`, by running [@GlobalScope.clamp()](class_@globalscope.md#class-globalscope-method-clamp) on each component.

* * *

[Vector2i](#class-vector2i) **clampi**(min: [int](class_int.md#class-int), max: [int](class_int.md#class-int)) const [🔗](#class-vector2i-method-clampi)

Returns a new vector with all components clamped between `min` and `max`, by running [@GlobalScope.clamp()](class_@globalscope.md#class-globalscope-method-clamp) on each component.

* * *

[int](class_int.md#class-int) **distance\_squared\_to**(to: [Vector2i](#class-vector2i)) const [🔗](#class-vector2i-method-distance-squared-to)

Returns the squared distance between this vector and `to`.

This method runs faster than [distance\_to()](#class-vector2i-method-distance-to), so prefer it if you need to compare vectors or need the squared distance for some formula.

* * *

[float](class_float.md#class-float) **distance\_to**(to: [Vector2i](#class-vector2i)) const [🔗](#class-vector2i-method-distance-to)

Returns the distance between this vector and `to`.

* * *

[float](class_float.md#class-float) **length**() const [🔗](#class-vector2i-method-length)

Returns the length (magnitude) of this vector.

* * *

[int](class_int.md#class-int) **length\_squared**() const [🔗](#class-vector2i-method-length-squared)

Returns the squared length (squared magnitude) of this vector.

This method runs faster than [length()](#class-vector2i-method-length), so prefer it if you need to compare vectors or need the squared distance for some formula.

* * *

[Vector2i](#class-vector2i) **max**(with: [Vector2i](#class-vector2i)) const [🔗](#class-vector2i-method-max)

Returns the component-wise maximum of this and `with`, equivalent to `Vector2i(maxi(x, with.x), maxi(y, with.y))`.

* * *

[int](class_int.md#class-int) **max\_axis\_index**() const [🔗](#class-vector2i-method-max-axis-index)

Returns the axis of the vector's highest value. See `AXIS_*` constants. If all components are equal, this method returns [AXIS\_X](#class-vector2i-constant-axis-x).

* * *

[Vector2i](#class-vector2i) **maxi**(with: [int](class_int.md#class-int)) const [🔗](#class-vector2i-method-maxi)

Returns the component-wise maximum of this and `with`, equivalent to `Vector2i(maxi(x, with), maxi(y, with))`.

* * *

[Vector2i](#class-vector2i) **min**(with: [Vector2i](#class-vector2i)) const [🔗](#class-vector2i-method-min)

Returns the component-wise minimum of this and `with`, equivalent to `Vector2i(mini(x, with.x), mini(y, with.y))`.

* * *

[int](class_int.md#class-int) **min\_axis\_index**() const [🔗](#class-vector2i-method-min-axis-index)

Returns the axis of the vector's lowest value. See `AXIS_*` constants. If all components are equal, this method returns [AXIS\_Y](#class-vector2i-constant-axis-y).

* * *

[Vector2i](#class-vector2i) **mini**(with: [int](class_int.md#class-int)) const [🔗](#class-vector2i-method-mini)

Returns the component-wise minimum of this and `with`, equivalent to `Vector2i(mini(x, with), mini(y, with))`.

* * *

[Vector2i](#class-vector2i) **sign**() const [🔗](#class-vector2i-method-sign)

Returns a new vector with each component set to `1` if it's positive, `-1` if it's negative, and `0` if it's zero. The result is identical to calling [@GlobalScope.sign()](class_@globalscope.md#class-globalscope-method-sign) on each component.

* * *

[Vector2i](#class-vector2i) **snapped**(step: [Vector2i](#class-vector2i)) const [🔗](#class-vector2i-method-snapped)

Returns a new vector with each component snapped to the closest multiple of the corresponding component in `step`.

* * *

[Vector2i](#class-vector2i) **snappedi**(step: [int](class_int.md#class-int)) const [🔗](#class-vector2i-method-snappedi)

Returns a new vector with each component snapped to the closest multiple of `step`.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-neq-vector2i)

Returns `true` if the vectors are not equal.

* * *

[Vector2i](#class-vector2i) **operator %**(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-mod-vector2i)

Gets the remainder of each component of the **Vector2i** with the components of the given **Vector2i**. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using [@GlobalScope.posmod()](class_@globalscope.md#class-globalscope-method-posmod) instead if you want to handle negative numbers.

```
print(Vector2i(10, -20) % Vector2i(7, 8)) # Prints (3, -4)

```

* * *

[Vector2i](#class-vector2i) **operator %**(right: [int](class_int.md#class-int)) [🔗](#class-vector2i-operator-mod-int)

Gets the remainder of each component of the **Vector2i** with the given [int](class_int.md#class-int). This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using [@GlobalScope.posmod()](class_@globalscope.md#class-globalscope-method-posmod) instead if you want to handle negative numbers.

```
print(Vector2i(10, -20) % 7) # Prints (3, -6)

```

* * *

[Vector2i](#class-vector2i) **operator \***(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-mul-vector2i)

Multiplies each component of the **Vector2i** by the components of the given **Vector2i**.

```
print(Vector2i(10, 20) * Vector2i(3, 4)) # Prints (30, 80)

```

* * *

[Vector2](class_vector2.md#class-vector2) **operator \***(right: [float](class_float.md#class-float)) [🔗](#class-vector2i-operator-mul-float)

Multiplies each component of the **Vector2i** by the given [float](class_float.md#class-float). Returns a [Vector2](class_vector2.md#class-vector2).

```
print(Vector2i(10, 15) * 0.9) # Prints (9.0, 13.5)

```

* * *

[Vector2i](#class-vector2i) **operator \***(right: [int](class_int.md#class-int)) [🔗](#class-vector2i-operator-mul-int)

Multiplies each component of the **Vector2i** by the given [int](class_int.md#class-int).

* * *

[Vector2i](#class-vector2i) **operator +**(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-sum-vector2i)

Adds each component of the **Vector2i** by the components of the given **Vector2i**.

```
print(Vector2i(10, 20) + Vector2i(3, 4)) # Prints (13, 24)

```

* * *

[Vector2i](#class-vector2i) **operator -**(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-dif-vector2i)

Subtracts each component of the **Vector2i** by the components of the given **Vector2i**.

```
print(Vector2i(10, 20) - Vector2i(3, 4)) # Prints (7, 16)

```

* * *

[Vector2i](#class-vector2i) **operator /**(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-div-vector2i)

Divides each component of the **Vector2i** by the components of the given **Vector2i**.

```
print(Vector2i(10, 20) / Vector2i(2, 5)) # Prints (5, 4)

```

* * *

[Vector2](class_vector2.md#class-vector2) **operator /**(right: [float](class_float.md#class-float)) [🔗](#class-vector2i-operator-div-float)

Divides each component of the **Vector2i** by the given [float](class_float.md#class-float). Returns a [Vector2](class_vector2.md#class-vector2).

```
print(Vector2i(10, 20) / 2.9) # Prints (5.0, 10.0)

```

* * *

[Vector2i](#class-vector2i) **operator /**(right: [int](class_int.md#class-int)) [🔗](#class-vector2i-operator-div-int)

Divides each component of the **Vector2i** by the given [int](class_int.md#class-int).

* * *

[bool](class_bool.md#class-bool) **operator <**(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-lt-vector2i)

Compares two **Vector2i** vectors by first checking if the X value of the left vector is less than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.

* * *

[bool](class_bool.md#class-bool) **operator <=**(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-lte-vector2i)

Compares two **Vector2i** vectors by first checking if the X value of the left vector is less than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-eq-vector2i)

Returns `true` if the vectors are equal.

* * *

[bool](class_bool.md#class-bool) **operator >**(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-gt-vector2i)

Compares two **Vector2i** vectors by first checking if the X value of the left vector is greater than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.

* * *

[bool](class_bool.md#class-bool) **operator >=**(right: [Vector2i](#class-vector2i)) [🔗](#class-vector2i-operator-gte-vector2i)

Compares two **Vector2i** vectors by first checking if the X value of the left vector is greater than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.

* * *

[int](class_int.md#class-int) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-vector2i-operator-idx-int)

Access vector components using their `index`. `v[0]` is equivalent to `v.x`, and `v[1]` is equivalent to `v.y`.

* * *

[Vector2i](#class-vector2i) **operator unary+**() [🔗](#class-vector2i-operator-unplus)

Returns the same value as if the `+` was not there. Unary `+` does nothing, but sometimes it can make your code more readable.

* * *

[Vector2i](#class-vector2i) **operator unary-**() [🔗](#class-vector2i-operator-unminus)

Returns the negative value of the **Vector2i**. This is the same as writing `Vector2i(-v.x, -v.y)`. This operation flips the direction of the vector while keeping the same magnitude.

[Previous](class_vector2.md "Vector2") [Next](class_vector3.md "Vector3")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_vector2.md "Vector2") [Next](class_vector3.md "Vector3")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).