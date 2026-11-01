---
title: Vector4i — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_vector4i.html
crawled_at: "2026-08-13T10:34:56+12:00"
content_hash: 52d461a20a660c91805d7c8dfef9623045279224699793dab195ec17fa73793f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Vector4i

* * *

# Vector4i

A 4D vector using integer coordinates.

## Description

A 4-element structure that can be used to represent 4D grid coordinates or any other quadruplet of integers.

It uses integer coordinates and is therefore preferable to [Vector4](class_vector4.md#class-vector4) when exact precision is required. Note that the values are limited to 32 bits, and unlike [Vector4](class_vector4.md#class-vector4) this cannot be configured with an engine build option. Use [int](class_int.md#class-int) or [PackedInt64Array](class_packedint64array.md#class-packedint64array) if 64-bit values are needed.

**Note:** In a boolean context, a Vector4i will evaluate to `false` if it's equal to `Vector4i(0, 0, 0, 0)`. Otherwise, a Vector4i will always evaluate to `true`.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [w](#class-vector4i-property-w) | `0` |
| [int](class_int.md#class-int) | [x](#class-vector4i-property-x) | `0` |
| [int](class_int.md#class-int) | [y](#class-vector4i-property-y) | `0` |
| [int](class_int.md#class-int) | [z](#class-vector4i-property-z) | `0` |

## Constructors

|     |     |
| --- | --- |
| [Vector4i](#class-vector4i) | [Vector4i](#class-vector4i-constructor-vector4i)() |
| [Vector4i](#class-vector4i) | [Vector4i](#class-vector4i-constructor-vector4i)(from: [Vector4i](#class-vector4i)) |
| [Vector4i](#class-vector4i) | [Vector4i](#class-vector4i-constructor-vector4i)(from: [Vector4](class_vector4.md#class-vector4)) |
| [Vector4i](#class-vector4i) | [Vector4i](#class-vector4i-constructor-vector4i)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), z: [int](class_int.md#class-int), w: [int](class_int.md#class-int)) |

## Methods

|     |     |
| --- | --- |
| [Vector4i](#class-vector4i) | [abs](#class-vector4i-method-abs)() const |
| [Vector4i](#class-vector4i) | [clamp](#class-vector4i-method-clamp)(min: [Vector4i](#class-vector4i), max: [Vector4i](#class-vector4i)) const |
| [Vector4i](#class-vector4i) | [clampi](#class-vector4i-method-clampi)(min: [int](class_int.md#class-int), max: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [distance\_squared\_to](#class-vector4i-method-distance-squared-to)(to: [Vector4i](#class-vector4i)) const |
| [float](class_float.md#class-float) | [distance\_to](#class-vector4i-method-distance-to)(to: [Vector4i](#class-vector4i)) const |
| [float](class_float.md#class-float) | [length](#class-vector4i-method-length)() const |
| [int](class_int.md#class-int) | [length\_squared](#class-vector4i-method-length-squared)() const |
| [Vector4i](#class-vector4i) | [max](#class-vector4i-method-max)(with: [Vector4i](#class-vector4i)) const |
| [int](class_int.md#class-int) | [max\_axis\_index](#class-vector4i-method-max-axis-index)() const |
| [Vector4i](#class-vector4i) | [maxi](#class-vector4i-method-maxi)(with: [int](class_int.md#class-int)) const |
| [Vector4i](#class-vector4i) | [min](#class-vector4i-method-min)(with: [Vector4i](#class-vector4i)) const |
| [int](class_int.md#class-int) | [min\_axis\_index](#class-vector4i-method-min-axis-index)() const |
| [Vector4i](#class-vector4i) | [mini](#class-vector4i-method-mini)(with: [int](class_int.md#class-int)) const |
| [Vector4i](#class-vector4i) | [sign](#class-vector4i-method-sign)() const |
| [Vector4i](#class-vector4i) | [snapped](#class-vector4i-method-snapped)(step: [Vector4i](#class-vector4i)) const |
| [Vector4i](#class-vector4i) | [snappedi](#class-vector4i-method-snappedi)(step: [int](class_int.md#class-int)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-vector4i-operator-neq-vector4i)(right: [Vector4i](#class-vector4i)) |
| [Vector4i](#class-vector4i) | [operator %](#class-vector4i-operator-mod-vector4i)(right: [Vector4i](#class-vector4i)) |
| [Vector4i](#class-vector4i) | [operator %](#class-vector4i-operator-mod-int)(right: [int](class_int.md#class-int)) |
| [Vector4i](#class-vector4i) | [operator \*](#class-vector4i-operator-mul-vector4i)(right: [Vector4i](#class-vector4i)) |
| [Vector4](class_vector4.md#class-vector4) | [operator \*](#class-vector4i-operator-mul-float)(right: [float](class_float.md#class-float)) |
| [Vector4i](#class-vector4i) | [operator \*](#class-vector4i-operator-mul-int)(right: [int](class_int.md#class-int)) |
| [Vector4i](#class-vector4i) | [operator +](#class-vector4i-operator-sum-vector4i)(right: [Vector4i](#class-vector4i)) |
| [Vector4i](#class-vector4i) | [operator -](#class-vector4i-operator-dif-vector4i)(right: [Vector4i](#class-vector4i)) |
| [Vector4i](#class-vector4i) | [operator /](#class-vector4i-operator-div-vector4i)(right: [Vector4i](#class-vector4i)) |
| [Vector4](class_vector4.md#class-vector4) | [operator /](#class-vector4i-operator-div-float)(right: [float](class_float.md#class-float)) |
| [Vector4i](#class-vector4i) | [operator /](#class-vector4i-operator-div-int)(right: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [operator <](#class-vector4i-operator-lt-vector4i)(right: [Vector4i](#class-vector4i)) |
| [bool](class_bool.md#class-bool) | [operator <=](#class-vector4i-operator-lte-vector4i)(right: [Vector4i](#class-vector4i)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-vector4i-operator-eq-vector4i)(right: [Vector4i](#class-vector4i)) |
| [bool](class_bool.md#class-bool) | [operator >](#class-vector4i-operator-gt-vector4i)(right: [Vector4i](#class-vector4i)) |
| [bool](class_bool.md#class-bool) | [operator >=](#class-vector4i-operator-gte-vector4i)(right: [Vector4i](#class-vector4i)) |
| [int](class_int.md#class-int) | [operator \[\]](#class-vector4i-operator-idx-int)(index: [int](class_int.md#class-int)) |
| [Vector4i](#class-vector4i) | [operator unary+](#class-vector4i-operator-unplus)() |
| [Vector4i](#class-vector4i) | [operator unary-](#class-vector4i-operator-unminus)() |

* * *

## Enumerations

enum **Axis**: [🔗](#enum-vector4i-axis)

[Axis](#enum-vector4i-axis) **AXIS\_X** = `0`

Enumerated value for the X axis. Returned by [max\_axis\_index()](#class-vector4i-method-max-axis-index) and [min\_axis\_index()](#class-vector4i-method-min-axis-index).

[Axis](#enum-vector4i-axis) **AXIS\_Y** = `1`

Enumerated value for the Y axis. Returned by [max\_axis\_index()](#class-vector4i-method-max-axis-index) and [min\_axis\_index()](#class-vector4i-method-min-axis-index).

[Axis](#enum-vector4i-axis) **AXIS\_Z** = `2`

Enumerated value for the Z axis. Returned by [max\_axis\_index()](#class-vector4i-method-max-axis-index) and [min\_axis\_index()](#class-vector4i-method-min-axis-index).

[Axis](#enum-vector4i-axis) **AXIS\_W** = `3`

Enumerated value for the W axis. Returned by [max\_axis\_index()](#class-vector4i-method-max-axis-index) and [min\_axis\_index()](#class-vector4i-method-min-axis-index).

* * *

## Constants

**ZERO** = `Vector4i(0, 0, 0, 0)` [🔗](#class-vector4i-constant-zero)

Zero vector, a vector with all components set to `0`.

**ONE** = `Vector4i(1, 1, 1, 1)` [🔗](#class-vector4i-constant-one)

One vector, a vector with all components set to `1`.

**MIN** = `Vector4i(-2147483648, -2147483648, -2147483648, -2147483648)` [🔗](#class-vector4i-constant-min)

Min vector, a vector with all components equal to `INT32_MIN`. Can be used as a negative integer equivalent of [Vector4.INF](class_vector4.md#class-vector4-constant-inf).

**MAX** = `Vector4i(2147483647, 2147483647, 2147483647, 2147483647)` [🔗](#class-vector4i-constant-max)

Max vector, a vector with all components equal to `INT32_MAX`. Can be used as an integer equivalent of [Vector4.INF](class_vector4.md#class-vector4-constant-inf).

* * *

## Property Descriptions

[int](class_int.md#class-int) **w** = `0` [🔗](#class-vector4i-property-w)

The vector's W component. Also accessible by using the index position `[3]`.

* * *

[int](class_int.md#class-int) **x** = `0` [🔗](#class-vector4i-property-x)

The vector's X component. Also accessible by using the index position `[0]`.

* * *

[int](class_int.md#class-int) **y** = `0` [🔗](#class-vector4i-property-y)

The vector's Y component. Also accessible by using the index position `[1]`.

* * *

[int](class_int.md#class-int) **z** = `0` [🔗](#class-vector4i-property-z)

The vector's Z component. Also accessible by using the index position `[2]`.

* * *

## Constructor Descriptions

[Vector4i](#class-vector4i) **Vector4i**() [🔗](#class-vector4i-constructor-vector4i)

Constructs a default-initialized **Vector4i** with all components set to `0`.

* * *

[Vector4i](#class-vector4i) **Vector4i**(from: [Vector4i](#class-vector4i))

Constructs a **Vector4i** as a copy of the given **Vector4i**.

* * *

[Vector4i](#class-vector4i) **Vector4i**(from: [Vector4](class_vector4.md#class-vector4))

Constructs a new **Vector4i** from the given [Vector4](class_vector4.md#class-vector4) by truncating components' fractional parts (rounding towards zero). For a different behavior consider passing the result of [Vector4.ceil()](class_vector4.md#class-vector4-method-ceil), [Vector4.floor()](class_vector4.md#class-vector4-method-floor) or [Vector4.round()](class_vector4.md#class-vector4-method-round) to this constructor instead.

* * *

[Vector4i](#class-vector4i) **Vector4i**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), z: [int](class_int.md#class-int), w: [int](class_int.md#class-int))

Returns a **Vector4i** with the given components.

* * *

## Method Descriptions

[Vector4i](#class-vector4i) **abs**() const [🔗](#class-vector4i-method-abs)

Returns a new vector with all components in absolute values (i.e. positive).

* * *

[Vector4i](#class-vector4i) **clamp**(min: [Vector4i](#class-vector4i), max: [Vector4i](#class-vector4i)) const [🔗](#class-vector4i-method-clamp)

Returns a new vector with all components clamped between the components of `min` and `max`, by running [@GlobalScope.clamp()](class_@globalscope.md#class-globalscope-method-clamp) on each component.

* * *

[Vector4i](#class-vector4i) **clampi**(min: [int](class_int.md#class-int), max: [int](class_int.md#class-int)) const [🔗](#class-vector4i-method-clampi)

Returns a new vector with all components clamped between `min` and `max`, by running [@GlobalScope.clamp()](class_@globalscope.md#class-globalscope-method-clamp) on each component.

* * *

[int](class_int.md#class-int) **distance\_squared\_to**(to: [Vector4i](#class-vector4i)) const [🔗](#class-vector4i-method-distance-squared-to)

Returns the squared distance between this vector and `to`.

This method runs faster than [distance\_to()](#class-vector4i-method-distance-to), so prefer it if you need to compare vectors or need the squared distance for some formula.

* * *

[float](class_float.md#class-float) **distance\_to**(to: [Vector4i](#class-vector4i)) const [🔗](#class-vector4i-method-distance-to)

Returns the distance between this vector and `to`.

* * *

[float](class_float.md#class-float) **length**() const [🔗](#class-vector4i-method-length)

Returns the length (magnitude) of this vector.

* * *

[int](class_int.md#class-int) **length\_squared**() const [🔗](#class-vector4i-method-length-squared)

Returns the squared length (squared magnitude) of this vector.

This method runs faster than [length()](#class-vector4i-method-length), so prefer it if you need to compare vectors or need the squared distance for some formula.

* * *

[Vector4i](#class-vector4i) **max**(with: [Vector4i](#class-vector4i)) const [🔗](#class-vector4i-method-max)

Returns the component-wise maximum of this and `with`, equivalent to `Vector4i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z), maxi(w, with.w))`.

* * *

[int](class_int.md#class-int) **max\_axis\_index**() const [🔗](#class-vector4i-method-max-axis-index)

Returns the axis of the vector's highest value. See `AXIS_*` constants. If all components are equal, this method returns [AXIS\_X](#class-vector4i-constant-axis-x).

* * *

[Vector4i](#class-vector4i) **maxi**(with: [int](class_int.md#class-int)) const [🔗](#class-vector4i-method-maxi)

Returns the component-wise maximum of this and `with`, equivalent to `Vector4i(maxi(x, with), maxi(y, with), maxi(z, with), maxi(w, with))`.

* * *

[Vector4i](#class-vector4i) **min**(with: [Vector4i](#class-vector4i)) const [🔗](#class-vector4i-method-min)

Returns the component-wise minimum of this and `with`, equivalent to `Vector4i(mini(x, with.x), mini(y, with.y), mini(z, with.z), mini(w, with.w))`.

* * *

[int](class_int.md#class-int) **min\_axis\_index**() const [🔗](#class-vector4i-method-min-axis-index)

Returns the axis of the vector's lowest value. See `AXIS_*` constants. If all components are equal, this method returns [AXIS\_W](#class-vector4i-constant-axis-w).

* * *

[Vector4i](#class-vector4i) **mini**(with: [int](class_int.md#class-int)) const [🔗](#class-vector4i-method-mini)

Returns the component-wise minimum of this and `with`, equivalent to `Vector4i(mini(x, with), mini(y, with), mini(z, with), mini(w, with))`.

* * *

[Vector4i](#class-vector4i) **sign**() const [🔗](#class-vector4i-method-sign)

Returns a new vector with each component set to `1` if it's positive, `-1` if it's negative, and `0` if it's zero. The result is identical to calling [@GlobalScope.sign()](class_@globalscope.md#class-globalscope-method-sign) on each component.

* * *

[Vector4i](#class-vector4i) **snapped**(step: [Vector4i](#class-vector4i)) const [🔗](#class-vector4i-method-snapped)

Returns a new vector with each component snapped to the closest multiple of the corresponding component in `step`.

* * *

[Vector4i](#class-vector4i) **snappedi**(step: [int](class_int.md#class-int)) const [🔗](#class-vector4i-method-snappedi)

Returns a new vector with each component snapped to the closest multiple of `step`.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-neq-vector4i)

Returns `true` if the vectors are not equal.

* * *

[Vector4i](#class-vector4i) **operator %**(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-mod-vector4i)

Gets the remainder of each component of the **Vector4i** with the components of the given **Vector4i**. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using [@GlobalScope.posmod()](class_@globalscope.md#class-globalscope-method-posmod) instead if you want to handle negative numbers.

```
print(Vector4i(10, -20, 30, -40) % Vector4i(7, 8, 9, 10)) # Prints (3, -4, 3, 0)

```

* * *

[Vector4i](#class-vector4i) **operator %**(right: [int](class_int.md#class-int)) [🔗](#class-vector4i-operator-mod-int)

Gets the remainder of each component of the **Vector4i** with the given [int](class_int.md#class-int). This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using [@GlobalScope.posmod()](class_@globalscope.md#class-globalscope-method-posmod) instead if you want to handle negative numbers.

```
print(Vector4i(10, -20, 30, -40) % 7) # Prints (3, -6, 2, -5)

```

* * *

[Vector4i](#class-vector4i) **operator \***(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-mul-vector4i)

Multiplies each component of the **Vector4i** by the components of the given **Vector4i**.

```
print(Vector4i(10, 20, 30, 40) * Vector4i(3, 4, 5, 6)) # Prints (30, 80, 150, 240)

```

* * *

[Vector4](class_vector4.md#class-vector4) **operator \***(right: [float](class_float.md#class-float)) [🔗](#class-vector4i-operator-mul-float)

Multiplies each component of the **Vector4i** by the given [float](class_float.md#class-float).

Returns a Vector4 value due to floating-point operations.

```
print(Vector4i(10, 20, 30, 40) * 2) # Prints (20.0, 40.0, 60.0, 80.0)

```

* * *

[Vector4i](#class-vector4i) **operator \***(right: [int](class_int.md#class-int)) [🔗](#class-vector4i-operator-mul-int)

Multiplies each component of the **Vector4i** by the given [int](class_int.md#class-int).

* * *

[Vector4i](#class-vector4i) **operator +**(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-sum-vector4i)

Adds each component of the **Vector4i** by the components of the given **Vector4i**.

```
print(Vector4i(10, 20, 30, 40) + Vector4i(3, 4, 5, 6)) # Prints (13, 24, 35, 46)

```

* * *

[Vector4i](#class-vector4i) **operator -**(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-dif-vector4i)

Subtracts each component of the **Vector4i** by the components of the given **Vector4i**.

```
print(Vector4i(10, 20, 30, 40) - Vector4i(3, 4, 5, 6)) # Prints (7, 16, 25, 34)

```

* * *

[Vector4i](#class-vector4i) **operator /**(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-div-vector4i)

Divides each component of the **Vector4i** by the components of the given **Vector4i**.

```
print(Vector4i(10, 20, 30, 40) / Vector4i(2, 5, 3, 4)) # Prints (5, 4, 10, 10)

```

* * *

[Vector4](class_vector4.md#class-vector4) **operator /**(right: [float](class_float.md#class-float)) [🔗](#class-vector4i-operator-div-float)

Divides each component of the **Vector4i** by the given [float](class_float.md#class-float).

Returns a Vector4 value due to floating-point operations.

```
print(Vector4i(10, 20, 30, 40) / 2) # Prints (5.0, 10.0, 15.0, 20.0)

```

* * *

[Vector4i](#class-vector4i) **operator /**(right: [int](class_int.md#class-int)) [🔗](#class-vector4i-operator-div-int)

Divides each component of the **Vector4i** by the given [int](class_int.md#class-int).

* * *

[bool](class_bool.md#class-bool) **operator <**(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-lt-vector4i)

Compares two **Vector4i** vectors by first checking if the X value of the left vector is less than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.

* * *

[bool](class_bool.md#class-bool) **operator <=**(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-lte-vector4i)

Compares two **Vector4i** vectors by first checking if the X value of the left vector is less than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-eq-vector4i)

Returns `true` if the vectors are exactly equal.

* * *

[bool](class_bool.md#class-bool) **operator >**(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-gt-vector4i)

Compares two **Vector4i** vectors by first checking if the X value of the left vector is greater than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.

* * *

[bool](class_bool.md#class-bool) **operator >=**(right: [Vector4i](#class-vector4i)) [🔗](#class-vector4i-operator-gte-vector4i)

Compares two **Vector4i** vectors by first checking if the X value of the left vector is greater than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.

* * *

[int](class_int.md#class-int) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-vector4i-operator-idx-int)

Access vector components using their `index`. `v[0]` is equivalent to `v.x`, `v[1]` is equivalent to `v.y`, `v[2]` is equivalent to `v.z`, and `v[3]` is equivalent to `v.w`.

* * *

[Vector4i](#class-vector4i) **operator unary+**() [🔗](#class-vector4i-operator-unplus)

Returns the same value as if the `+` was not there. Unary `+` does nothing, but sometimes it can make your code more readable.

* * *

[Vector4i](#class-vector4i) **operator unary-**() [🔗](#class-vector4i-operator-unminus)

Returns the negative value of the **Vector4i**. This is the same as writing `Vector4i(-v.x, -v.y, -v.z, -v.w)`. This operation flips the direction of the vector while keeping the same magnitude.

[Previous](class_vector4.md "Vector4")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_vector4.md "Vector4")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).