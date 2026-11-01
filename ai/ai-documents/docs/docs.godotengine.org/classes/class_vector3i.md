---
title: Vector3i — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_vector3i.html
crawled_at: "2026-08-13T10:18:50+12:00"
content_hash: 41077d53081e8e75525e3b9a5adbc4ade4aafc5442cdc402dc2bcdb7fbbb7cc6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Vector3i

* * *

# Vector3i

A 3D vector using integer coordinates.

## Description

A 3-element structure that can be used to represent 3D grid coordinates or any other triplet of integers.

It uses integer coordinates and is therefore preferable to [Vector3](class_vector3.md#class-vector3) when exact precision is required. Note that the values are limited to 32 bits, and unlike [Vector3](class_vector3.md#class-vector3) this cannot be configured with an engine build option. Use [int](class_int.md#class-int) or [PackedInt64Array](class_packedint64array.md#class-packedint64array) if 64-bit values are needed.

**Note:** In a boolean context, a Vector3i will evaluate to `false` if it's equal to `Vector3i(0, 0, 0)`. Otherwise, a Vector3i will always evaluate to `true`.

## Tutorials

- [Math documentation index](../tutorials/math/index.md)

- [Vector math](../tutorials/math/vector_math.md)

- [3Blue1Brown Essence of Linear Algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [x](#class-vector3i-property-x) | `0` |
| [int](class_int.md#class-int) | [y](#class-vector3i-property-y) | `0` |
| [int](class_int.md#class-int) | [z](#class-vector3i-property-z) | `0` |

## Constructors

|     |     |
| --- | --- |
| [Vector3i](#class-vector3i) | [Vector3i](#class-vector3i-constructor-vector3i)() |
| [Vector3i](#class-vector3i) | [Vector3i](#class-vector3i-constructor-vector3i)(from: [Vector3i](#class-vector3i)) |
| [Vector3i](#class-vector3i) | [Vector3i](#class-vector3i-constructor-vector3i)(from: [Vector3](class_vector3.md#class-vector3)) |
| [Vector3i](#class-vector3i) | [Vector3i](#class-vector3i-constructor-vector3i)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), z: [int](class_int.md#class-int)) |

## Methods

|     |     |
| --- | --- |
| [Vector3i](#class-vector3i) | [abs](#class-vector3i-method-abs)() const |
| [Vector3i](#class-vector3i) | [clamp](#class-vector3i-method-clamp)(min: [Vector3i](#class-vector3i), max: [Vector3i](#class-vector3i)) const |
| [Vector3i](#class-vector3i) | [clampi](#class-vector3i-method-clampi)(min: [int](class_int.md#class-int), max: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [distance\_squared\_to](#class-vector3i-method-distance-squared-to)(to: [Vector3i](#class-vector3i)) const |
| [float](class_float.md#class-float) | [distance\_to](#class-vector3i-method-distance-to)(to: [Vector3i](#class-vector3i)) const |
| [float](class_float.md#class-float) | [length](#class-vector3i-method-length)() const |
| [int](class_int.md#class-int) | [length\_squared](#class-vector3i-method-length-squared)() const |
| [Vector3i](#class-vector3i) | [max](#class-vector3i-method-max)(with: [Vector3i](#class-vector3i)) const |
| [int](class_int.md#class-int) | [max\_axis\_index](#class-vector3i-method-max-axis-index)() const |
| [Vector3i](#class-vector3i) | [maxi](#class-vector3i-method-maxi)(with: [int](class_int.md#class-int)) const |
| [Vector3i](#class-vector3i) | [min](#class-vector3i-method-min)(with: [Vector3i](#class-vector3i)) const |
| [int](class_int.md#class-int) | [min\_axis\_index](#class-vector3i-method-min-axis-index)() const |
| [Vector3i](#class-vector3i) | [mini](#class-vector3i-method-mini)(with: [int](class_int.md#class-int)) const |
| [Vector3i](#class-vector3i) | [sign](#class-vector3i-method-sign)() const |
| [Vector3i](#class-vector3i) | [snapped](#class-vector3i-method-snapped)(step: [Vector3i](#class-vector3i)) const |
| [Vector3i](#class-vector3i) | [snappedi](#class-vector3i-method-snappedi)(step: [int](class_int.md#class-int)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-vector3i-operator-neq-vector3i)(right: [Vector3i](#class-vector3i)) |
| [Vector3i](#class-vector3i) | [operator %](#class-vector3i-operator-mod-vector3i)(right: [Vector3i](#class-vector3i)) |
| [Vector3i](#class-vector3i) | [operator %](#class-vector3i-operator-mod-int)(right: [int](class_int.md#class-int)) |
| [Vector3i](#class-vector3i) | [operator \*](#class-vector3i-operator-mul-vector3i)(right: [Vector3i](#class-vector3i)) |
| [Vector3](class_vector3.md#class-vector3) | [operator \*](#class-vector3i-operator-mul-float)(right: [float](class_float.md#class-float)) |
| [Vector3i](#class-vector3i) | [operator \*](#class-vector3i-operator-mul-int)(right: [int](class_int.md#class-int)) |
| [Vector3i](#class-vector3i) | [operator +](#class-vector3i-operator-sum-vector3i)(right: [Vector3i](#class-vector3i)) |
| [Vector3i](#class-vector3i) | [operator -](#class-vector3i-operator-dif-vector3i)(right: [Vector3i](#class-vector3i)) |
| [Vector3i](#class-vector3i) | [operator /](#class-vector3i-operator-div-vector3i)(right: [Vector3i](#class-vector3i)) |
| [Vector3](class_vector3.md#class-vector3) | [operator /](#class-vector3i-operator-div-float)(right: [float](class_float.md#class-float)) |
| [Vector3i](#class-vector3i) | [operator /](#class-vector3i-operator-div-int)(right: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [operator <](#class-vector3i-operator-lt-vector3i)(right: [Vector3i](#class-vector3i)) |
| [bool](class_bool.md#class-bool) | [operator <=](#class-vector3i-operator-lte-vector3i)(right: [Vector3i](#class-vector3i)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-vector3i-operator-eq-vector3i)(right: [Vector3i](#class-vector3i)) |
| [bool](class_bool.md#class-bool) | [operator >](#class-vector3i-operator-gt-vector3i)(right: [Vector3i](#class-vector3i)) |
| [bool](class_bool.md#class-bool) | [operator >=](#class-vector3i-operator-gte-vector3i)(right: [Vector3i](#class-vector3i)) |
| [int](class_int.md#class-int) | [operator \[\]](#class-vector3i-operator-idx-int)(index: [int](class_int.md#class-int)) |
| [Vector3i](#class-vector3i) | [operator unary+](#class-vector3i-operator-unplus)() |
| [Vector3i](#class-vector3i) | [operator unary-](#class-vector3i-operator-unminus)() |

* * *

## Enumerations

enum **Axis**: [🔗](#enum-vector3i-axis)

[Axis](#enum-vector3i-axis) **AXIS\_X** = `0`

Enumerated value for the X axis. Returned by [max\_axis\_index()](#class-vector3i-method-max-axis-index) and [min\_axis\_index()](#class-vector3i-method-min-axis-index).

[Axis](#enum-vector3i-axis) **AXIS\_Y** = `1`

Enumerated value for the Y axis. Returned by [max\_axis\_index()](#class-vector3i-method-max-axis-index) and [min\_axis\_index()](#class-vector3i-method-min-axis-index).

[Axis](#enum-vector3i-axis) **AXIS\_Z** = `2`

Enumerated value for the Z axis. Returned by [max\_axis\_index()](#class-vector3i-method-max-axis-index) and [min\_axis\_index()](#class-vector3i-method-min-axis-index).

* * *

## Constants

**ZERO** = `Vector3i(0, 0, 0)` [🔗](#class-vector3i-constant-zero)

Zero vector, a vector with all components set to `0`.

**ONE** = `Vector3i(1, 1, 1)` [🔗](#class-vector3i-constant-one)

One vector, a vector with all components set to `1`.

**MIN** = `Vector3i(-2147483648, -2147483648, -2147483648)` [🔗](#class-vector3i-constant-min)

Min vector, a vector with all components equal to `INT32_MIN`. Can be used as a negative integer equivalent of [Vector3.INF](class_vector3.md#class-vector3-constant-inf).

**MAX** = `Vector3i(2147483647, 2147483647, 2147483647)` [🔗](#class-vector3i-constant-max)

Max vector, a vector with all components equal to `INT32_MAX`. Can be used as an integer equivalent of [Vector3.INF](class_vector3.md#class-vector3-constant-inf).

**LEFT** = `Vector3i(-1, 0, 0)` [🔗](#class-vector3i-constant-left)

Left unit vector. Represents the local direction of left, and the global direction of west.

**RIGHT** = `Vector3i(1, 0, 0)` [🔗](#class-vector3i-constant-right)

Right unit vector. Represents the local direction of right, and the global direction of east.

**UP** = `Vector3i(0, 1, 0)` [🔗](#class-vector3i-constant-up)

Up unit vector.

**DOWN** = `Vector3i(0, -1, 0)` [🔗](#class-vector3i-constant-down)

Down unit vector.

**FORWARD** = `Vector3i(0, 0, -1)` [🔗](#class-vector3i-constant-forward)

Forward unit vector. Represents the local direction of forward, and the global direction of north.

**BACK** = `Vector3i(0, 0, 1)` [🔗](#class-vector3i-constant-back)

Back unit vector. Represents the local direction of back, and the global direction of south.

* * *

## Property Descriptions

[int](class_int.md#class-int) **x** = `0` [🔗](#class-vector3i-property-x)

The vector's X component. Also accessible by using the index position `[0]`.

* * *

[int](class_int.md#class-int) **y** = `0` [🔗](#class-vector3i-property-y)

The vector's Y component. Also accessible by using the index position `[1]`.

* * *

[int](class_int.md#class-int) **z** = `0` [🔗](#class-vector3i-property-z)

The vector's Z component. Also accessible by using the index position `[2]`.

* * *

## Constructor Descriptions

[Vector3i](#class-vector3i) **Vector3i**() [🔗](#class-vector3i-constructor-vector3i)

Constructs a default-initialized **Vector3i** with all components set to `0`.

* * *

[Vector3i](#class-vector3i) **Vector3i**(from: [Vector3i](#class-vector3i))

Constructs a **Vector3i** as a copy of the given **Vector3i**.

* * *

[Vector3i](#class-vector3i) **Vector3i**(from: [Vector3](class_vector3.md#class-vector3))

Constructs a new **Vector3i** from the given [Vector3](class_vector3.md#class-vector3) by truncating components' fractional parts (rounding towards zero). For a different behavior consider passing the result of [Vector3.ceil()](class_vector3.md#class-vector3-method-ceil), [Vector3.floor()](class_vector3.md#class-vector3-method-floor) or [Vector3.round()](class_vector3.md#class-vector3-method-round) to this constructor instead.

* * *

[Vector3i](#class-vector3i) **Vector3i**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), z: [int](class_int.md#class-int))

Returns a **Vector3i** with the given components.

* * *

## Method Descriptions

[Vector3i](#class-vector3i) **abs**() const [🔗](#class-vector3i-method-abs)

Returns a new vector with all components in absolute values (i.e. positive).

* * *

[Vector3i](#class-vector3i) **clamp**(min: [Vector3i](#class-vector3i), max: [Vector3i](#class-vector3i)) const [🔗](#class-vector3i-method-clamp)

Returns a new vector with all components clamped between the components of `min` and `max`, by running [@GlobalScope.clamp()](class_@globalscope.md#class-globalscope-method-clamp) on each component.

* * *

[Vector3i](#class-vector3i) **clampi**(min: [int](class_int.md#class-int), max: [int](class_int.md#class-int)) const [🔗](#class-vector3i-method-clampi)

Returns a new vector with all components clamped between `min` and `max`, by running [@GlobalScope.clamp()](class_@globalscope.md#class-globalscope-method-clamp) on each component.

* * *

[int](class_int.md#class-int) **distance\_squared\_to**(to: [Vector3i](#class-vector3i)) const [🔗](#class-vector3i-method-distance-squared-to)

Returns the squared distance between this vector and `to`.

This method runs faster than [distance\_to()](#class-vector3i-method-distance-to), so prefer it if you need to compare vectors or need the squared distance for some formula.

* * *

[float](class_float.md#class-float) **distance\_to**(to: [Vector3i](#class-vector3i)) const [🔗](#class-vector3i-method-distance-to)

Returns the distance between this vector and `to`.

* * *

[float](class_float.md#class-float) **length**() const [🔗](#class-vector3i-method-length)

Returns the length (magnitude) of this vector.

* * *

[int](class_int.md#class-int) **length\_squared**() const [🔗](#class-vector3i-method-length-squared)

Returns the squared length (squared magnitude) of this vector.

This method runs faster than [length()](#class-vector3i-method-length), so prefer it if you need to compare vectors or need the squared distance for some formula.

* * *

[Vector3i](#class-vector3i) **max**(with: [Vector3i](#class-vector3i)) const [🔗](#class-vector3i-method-max)

Returns the component-wise maximum of this and `with`, equivalent to `Vector3i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z))`.

* * *

[int](class_int.md#class-int) **max\_axis\_index**() const [🔗](#class-vector3i-method-max-axis-index)

Returns the axis of the vector's highest value. See `AXIS_*` constants. If all components are equal, this method returns [AXIS\_X](#class-vector3i-constant-axis-x).

* * *

[Vector3i](#class-vector3i) **maxi**(with: [int](class_int.md#class-int)) const [🔗](#class-vector3i-method-maxi)

Returns the component-wise maximum of this and `with`, equivalent to `Vector3i(maxi(x, with), maxi(y, with), maxi(z, with))`.

* * *

[Vector3i](#class-vector3i) **min**(with: [Vector3i](#class-vector3i)) const [🔗](#class-vector3i-method-min)

Returns the component-wise minimum of this and `with`, equivalent to `Vector3i(mini(x, with.x), mini(y, with.y), mini(z, with.z))`.

* * *

[int](class_int.md#class-int) **min\_axis\_index**() const [🔗](#class-vector3i-method-min-axis-index)

Returns the axis of the vector's lowest value. See `AXIS_*` constants. If all components are equal, this method returns [AXIS\_Z](#class-vector3i-constant-axis-z).

* * *

[Vector3i](#class-vector3i) **mini**(with: [int](class_int.md#class-int)) const [🔗](#class-vector3i-method-mini)

Returns the component-wise minimum of this and `with`, equivalent to `Vector3i(mini(x, with), mini(y, with), mini(z, with))`.

* * *

[Vector3i](#class-vector3i) **sign**() const [🔗](#class-vector3i-method-sign)

Returns a new vector with each component set to `1` if it's positive, `-1` if it's negative, and `0` if it's zero. The result is identical to calling [@GlobalScope.sign()](class_@globalscope.md#class-globalscope-method-sign) on each component.

* * *

[Vector3i](#class-vector3i) **snapped**(step: [Vector3i](#class-vector3i)) const [🔗](#class-vector3i-method-snapped)

Returns a new vector with each component snapped to the closest multiple of the corresponding component in `step`.

* * *

[Vector3i](#class-vector3i) **snappedi**(step: [int](class_int.md#class-int)) const [🔗](#class-vector3i-method-snappedi)

Returns a new vector with each component snapped to the closest multiple of `step`.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-neq-vector3i)

Returns `true` if the vectors are not equal.

* * *

[Vector3i](#class-vector3i) **operator %**(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-mod-vector3i)

Gets the remainder of each component of the **Vector3i** with the components of the given **Vector3i**. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using [@GlobalScope.posmod()](class_@globalscope.md#class-globalscope-method-posmod) instead if you want to handle negative numbers.

```
print(Vector3i(10, -20, 30) % Vector3i(7, 8, 9)) # Prints (3, -4, 3)

```

* * *

[Vector3i](#class-vector3i) **operator %**(right: [int](class_int.md#class-int)) [🔗](#class-vector3i-operator-mod-int)

Gets the remainder of each component of the **Vector3i** with the given [int](class_int.md#class-int). This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using [@GlobalScope.posmod()](class_@globalscope.md#class-globalscope-method-posmod) instead if you want to handle negative numbers.

```
print(Vector3i(10, -20, 30) % 7) # Prints (3, -6, 2)

```

* * *

[Vector3i](#class-vector3i) **operator \***(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-mul-vector3i)

Multiplies each component of the **Vector3i** by the components of the given **Vector3i**.

```
print(Vector3i(10, 20, 30) * Vector3i(3, 4, 5)) # Prints (30, 80, 150)

```

* * *

[Vector3](class_vector3.md#class-vector3) **operator \***(right: [float](class_float.md#class-float)) [🔗](#class-vector3i-operator-mul-float)

Multiplies each component of the **Vector3i** by the given [float](class_float.md#class-float). Returns a [Vector3](class_vector3.md#class-vector3).

```
print(Vector3i(10, 15, 20) * 0.9) # Prints (9.0, 13.5, 18.0)

```

* * *

[Vector3i](#class-vector3i) **operator \***(right: [int](class_int.md#class-int)) [🔗](#class-vector3i-operator-mul-int)

Multiplies each component of the **Vector3i** by the given [int](class_int.md#class-int).

* * *

[Vector3i](#class-vector3i) **operator +**(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-sum-vector3i)

Adds each component of the **Vector3i** by the components of the given **Vector3i**.

```
print(Vector3i(10, 20, 30) + Vector3i(3, 4, 5)) # Prints (13, 24, 35)

```

* * *

[Vector3i](#class-vector3i) **operator -**(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-dif-vector3i)

Subtracts each component of the **Vector3i** by the components of the given **Vector3i**.

```
print(Vector3i(10, 20, 30) - Vector3i(3, 4, 5)) # Prints (7, 16, 25)

```

* * *

[Vector3i](#class-vector3i) **operator /**(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-div-vector3i)

Divides each component of the **Vector3i** by the components of the given **Vector3i**.

```
print(Vector3i(10, 20, 30) / Vector3i(2, 5, 3)) # Prints (5, 4, 10)

```

* * *

[Vector3](class_vector3.md#class-vector3) **operator /**(right: [float](class_float.md#class-float)) [🔗](#class-vector3i-operator-div-float)

Divides each component of the **Vector3i** by the given [float](class_float.md#class-float). Returns a [Vector3](class_vector3.md#class-vector3).

```
print(Vector3i(10, 20, 30) / 2.9) # Prints (5.0, 10.0, 15.0)

```

* * *

[Vector3i](#class-vector3i) **operator /**(right: [int](class_int.md#class-int)) [🔗](#class-vector3i-operator-div-int)

Divides each component of the **Vector3i** by the given [int](class_int.md#class-int).

* * *

[bool](class_bool.md#class-bool) **operator <**(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-lt-vector3i)

Compares two **Vector3i** vectors by first checking if the X value of the left vector is less than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.

* * *

[bool](class_bool.md#class-bool) **operator <=**(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-lte-vector3i)

Compares two **Vector3i** vectors by first checking if the X value of the left vector is less than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-eq-vector3i)

Returns `true` if the vectors are equal.

* * *

[bool](class_bool.md#class-bool) **operator >**(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-gt-vector3i)

Compares two **Vector3i** vectors by first checking if the X value of the left vector is greater than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.

* * *

[bool](class_bool.md#class-bool) **operator >=**(right: [Vector3i](#class-vector3i)) [🔗](#class-vector3i-operator-gte-vector3i)

Compares two **Vector3i** vectors by first checking if the X value of the left vector is greater than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.

* * *

[int](class_int.md#class-int) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-vector3i-operator-idx-int)

Access vector components using their `index`. `v[0]` is equivalent to `v.x`, `v[1]` is equivalent to `v.y`, and `v[2]` is equivalent to `v.z`.

* * *

[Vector3i](#class-vector3i) **operator unary+**() [🔗](#class-vector3i-operator-unplus)

Returns the same value as if the `+` was not there. Unary `+` does nothing, but sometimes it can make your code more readable.

* * *

[Vector3i](#class-vector3i) **operator unary-**() [🔗](#class-vector3i-operator-unminus)

Returns the negative value of the **Vector3i**. This is the same as writing `Vector3i(-v.x, -v.y, -v.z)`. This operation flips the direction of the vector while keeping the same magnitude.

[Previous](class_vector3.md "Vector3") [Next](class_vector4.md "Vector4")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_vector3.md "Vector3") [Next](class_vector4.md "Vector4")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).