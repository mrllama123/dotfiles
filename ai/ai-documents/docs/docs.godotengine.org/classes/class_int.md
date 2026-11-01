---
title: int — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_int.html
crawled_at: "2026-08-13T10:39:19+12:00"
content_hash: d6b8aefc9b0ba4ad33a84399b263439cc634df9b031163c3b7a1e974ae008dfb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - int

* * *

# int

A built-in type for integers.

## Description

Signed 64-bit integer type. This means that it can take values from `-2^63` to `2^63 - 1`, i.e. from `-9223372036854775808` to `9223372036854775807`. When it exceeds these bounds, it will wrap around.

**int** s can be automatically converted to [float](class_float.md#class-float) s when necessary, for example when passing them as arguments in functions. The [float](class_float.md#class-float) will be as close to the original integer as possible.

Likewise, [float](class_float.md#class-float) s can be automatically converted into **int** s. This will truncate the [float](class_float.md#class-float), discarding anything after the floating-point.

**Note:** In a boolean context, an **int** will evaluate to `false` if it equals `0`, and to `true` otherwise.

GDScriptC#

```
var x: int = 1 # x is 1
x = 4.2 # x is 4, because 4.2 gets truncated
var max_int = 9223372036854775807 # Biggest value an int can store
max_int += 1 # max_int is -9223372036854775808, because it wrapped around

```

```
int x = 1; // x is 1
x = (int)4.2; // x is 4, because 4.2 gets truncated
// We use long below, because GDScript's int is 64-bit while C#'s int is 32-bit.
long maxLong = 9223372036854775807; // Biggest value a long can store
maxLong++; // maxLong is now -9223372036854775808, because it wrapped around.

// Alternatively with C#'s 32-bit int type, which has a smaller maximum value.
int maxInt = 2147483647; // Biggest value an int can store
maxInt++; // maxInt is now -2147483648, because it wrapped around

```

You can use the `0b` literal for binary representation, the `0x` literal for hexadecimal representation, and the `_` symbol to separate long numbers and improve readability.

GDScriptC#

```
var x = 0b1001 # x is 9
var y = 0xF5 # y is 245
var z = 10_000_000 # z is 10000000

```

```
int x = 0b1001; // x is 9
int y = 0xF5; // y is 245
int z = 10_000_000; // z is 10000000

```

## Constructors

|     |     |
| --- | --- |
| [int](#class-int) | [int](#class-int-constructor-int)() |
| [int](#class-int) | [int](#class-int-constructor-int)(from: [int](#class-int)) |
| [int](#class-int) | [int](#class-int-constructor-int)(from: [String](class_string.md#class-string)) |
| [int](#class-int) | [int](#class-int-constructor-int)(from: [bool](class_bool.md#class-bool)) |
| [int](#class-int) | [int](#class-int-constructor-int)(from: [float](class_float.md#class-float)) |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-int-operator-neq-float)(right: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [operator !=](#class-int-operator-neq-int)(right: [int](#class-int)) |
| [int](#class-int) | [operator %](#class-int-operator-mod-int)(right: [int](#class-int)) |
| [int](#class-int) | [operator &](#class-int-operator-bwand-int)(right: [int](#class-int)) |
| [Color](class_color.md#class-color) | [operator \*](#class-int-operator-mul-color)(right: [Color](class_color.md#class-color)) |
| [Quaternion](class_quaternion.md#class-quaternion) | [operator \*](#class-int-operator-mul-quaternion)(right: [Quaternion](class_quaternion.md#class-quaternion)) |
| [Vector2](class_vector2.md#class-vector2) | [operator \*](#class-int-operator-mul-vector2)(right: [Vector2](class_vector2.md#class-vector2)) |
| [Vector2i](class_vector2i.md#class-vector2i) | [operator \*](#class-int-operator-mul-vector2i)(right: [Vector2i](class_vector2i.md#class-vector2i)) |
| [Vector3](class_vector3.md#class-vector3) | [operator \*](#class-int-operator-mul-vector3)(right: [Vector3](class_vector3.md#class-vector3)) |
| [Vector3i](class_vector3i.md#class-vector3i) | [operator \*](#class-int-operator-mul-vector3i)(right: [Vector3i](class_vector3i.md#class-vector3i)) |
| [Vector4](class_vector4.md#class-vector4) | [operator \*](#class-int-operator-mul-vector4)(right: [Vector4](class_vector4.md#class-vector4)) |
| [Vector4i](class_vector4i.md#class-vector4i) | [operator \*](#class-int-operator-mul-vector4i)(right: [Vector4i](class_vector4i.md#class-vector4i)) |
| [float](class_float.md#class-float) | [operator \*](#class-int-operator-mul-float)(right: [float](class_float.md#class-float)) |
| [int](#class-int) | [operator \*](#class-int-operator-mul-int)(right: [int](#class-int)) |
| [float](class_float.md#class-float) | [operator \*\*](#class-int-operator-pow-float)(right: [float](class_float.md#class-float)) |
| [int](#class-int) | [operator \*\*](#class-int-operator-pow-int)(right: [int](#class-int)) |
| [float](class_float.md#class-float) | [operator +](#class-int-operator-sum-float)(right: [float](class_float.md#class-float)) |
| [int](#class-int) | [operator +](#class-int-operator-sum-int)(right: [int](#class-int)) |
| [float](class_float.md#class-float) | [operator -](#class-int-operator-dif-float)(right: [float](class_float.md#class-float)) |
| [int](#class-int) | [operator -](#class-int-operator-dif-int)(right: [int](#class-int)) |
| [float](class_float.md#class-float) | [operator /](#class-int-operator-div-float)(right: [float](class_float.md#class-float)) |
| [int](#class-int) | [operator /](#class-int-operator-div-int)(right: [int](#class-int)) |
| [bool](class_bool.md#class-bool) | [operator <](#class-int-operator-lt-float)(right: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [operator <](#class-int-operator-lt-int)(right: [int](#class-int)) |
| [int](#class-int) | [operator <<](#class-int-operator-bwsl-int)(right: [int](#class-int)) |
| [bool](class_bool.md#class-bool) | [operator <=](#class-int-operator-lte-float)(right: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [operator <=](#class-int-operator-lte-int)(right: [int](#class-int)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-int-operator-eq-float)(right: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-int-operator-eq-int)(right: [int](#class-int)) |
| [bool](class_bool.md#class-bool) | [operator >](#class-int-operator-gt-float)(right: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [operator >](#class-int-operator-gt-int)(right: [int](#class-int)) |
| [bool](class_bool.md#class-bool) | [operator >=](#class-int-operator-gte-float)(right: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [operator >=](#class-int-operator-gte-int)(right: [int](#class-int)) |
| [int](#class-int) | [operator >>](#class-int-operator-bwsr-int)(right: [int](#class-int)) |
| [int](#class-int) | [operator ^](#class-int-operator-bwxor-int)(right: [int](#class-int)) |
| [int](#class-int) | [operator unary+](#class-int-operator-unplus)() |
| [int](#class-int) | [operator unary-](#class-int-operator-unminus)() |
| [int](#class-int) | [operator \|](#class-int-operator-bwor-int)(right: [int](#class-int)) |
| [int](#class-int) | [operator ~](#class-int-operator-bwnot)() |

* * *

## Constructor Descriptions

[int](#class-int) **int**() [🔗](#class-int-constructor-int)

Constructs an **int** set to `0`.

* * *

[int](#class-int) **int**(from: [int](#class-int))

Constructs an **int** as a copy of the given **int**.

* * *

[int](#class-int) **int**(from: [String](class_string.md#class-string))

Constructs a new **int** from a [String](class_string.md#class-string), following the same rules as [String.to\_int()](class_string.md#class-string-method-to-int).

* * *

[int](#class-int) **int**(from: [bool](class_bool.md#class-bool))

Constructs a new **int** from a [bool](class_bool.md#class-bool). `true` is converted to `1` and `false` is converted to `0`.

* * *

[int](#class-int) **int**(from: [float](class_float.md#class-float))

Constructs a new **int** from a [float](class_float.md#class-float). This will truncate the [float](class_float.md#class-float), discarding anything after the floating point.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-neq-float)

Returns `true` if the **int** is not equivalent to the [float](class_float.md#class-float).

* * *

[bool](class_bool.md#class-bool) **operator !=**(right: [int](#class-int)) [🔗](#class-int-operator-neq-int)

Returns `true` if the **int** s are not equal.

* * *

[int](#class-int) **operator %**(right: [int](#class-int)) [🔗](#class-int-operator-mod-int)

Returns the remainder after dividing two **int** s. Uses truncated division, which returns a negative number if the dividend is negative. If this is not desired, consider using [@GlobalScope.posmod()](class_@globalscope.md#class-globalscope-method-posmod).

```
print(6 % 2) # Prints 0
print(11 % 4) # Prints 3
print(-5 % 3) # Prints -2

```

* * *

[int](#class-int) **operator &**(right: [int](#class-int)) [🔗](#class-int-operator-bwand-int)

Performs the bitwise `AND` operation.

```
print(0b1100 & 0b1010) # Prints 8 (binary 1000)

```

This is useful for retrieving binary flags from a variable.

```
var flags = 0b101
# Check if the first or second bit are enabled.
if flags & 0b011:
    do_stuff() # This line will run.

```

* * *

[Color](class_color.md#class-color) **operator \***(right: [Color](class_color.md#class-color)) [🔗](#class-int-operator-mul-color)

Multiplies each component of the [Color](class_color.md#class-color) by the **int**.

* * *

[Quaternion](class_quaternion.md#class-quaternion) **operator \***(right: [Quaternion](class_quaternion.md#class-quaternion)) [🔗](#class-int-operator-mul-quaternion)

Multiplies each component of the [Quaternion](class_quaternion.md#class-quaternion) by the **int**. This operation is not meaningful on its own, but it can be used as a part of a larger expression.

* * *

[Vector2](class_vector2.md#class-vector2) **operator \***(right: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-int-operator-mul-vector2)

Multiplies each component of the [Vector2](class_vector2.md#class-vector2) by the **int**.

```
print(2 * Vector2(1, 4)) # Prints (2, 8)

```

* * *

[Vector2i](class_vector2i.md#class-vector2i) **operator \***(right: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-int-operator-mul-vector2i)

Multiplies each component of the [Vector2i](class_vector2i.md#class-vector2i) by the **int**.

* * *

[Vector3](class_vector3.md#class-vector3) **operator \***(right: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-int-operator-mul-vector3)

Multiplies each component of the [Vector3](class_vector3.md#class-vector3) by the **int**.

* * *

[Vector3i](class_vector3i.md#class-vector3i) **operator \***(right: [Vector3i](class_vector3i.md#class-vector3i)) [🔗](#class-int-operator-mul-vector3i)

Multiplies each component of the [Vector3i](class_vector3i.md#class-vector3i) by the **int**.

* * *

[Vector4](class_vector4.md#class-vector4) **operator \***(right: [Vector4](class_vector4.md#class-vector4)) [🔗](#class-int-operator-mul-vector4)

Multiplies each component of the [Vector4](class_vector4.md#class-vector4) by the **int**.

* * *

[Vector4i](class_vector4i.md#class-vector4i) **operator \***(right: [Vector4i](class_vector4i.md#class-vector4i)) [🔗](#class-int-operator-mul-vector4i)

Multiplies each component of the [Vector4i](class_vector4i.md#class-vector4i) by the **int**.

* * *

[float](class_float.md#class-float) **operator \***(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-mul-float)

Multiplies the [float](class_float.md#class-float) by the **int**. The result is a [float](class_float.md#class-float).

* * *

[int](#class-int) **operator \***(right: [int](#class-int)) [🔗](#class-int-operator-mul-int)

Multiplies the two **int** s.

* * *

[float](class_float.md#class-float) **operator \*\***(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-pow-float)

Raises an **int** to a power of a [float](class_float.md#class-float). The result is a [float](class_float.md#class-float).

```
print(2 ** 0.5) # Prints 1.4142135623731

```

* * *

[int](#class-int) **operator \*\***(right: [int](#class-int)) [🔗](#class-int-operator-pow-int)

Raises the left **int** to a power of the right **int**.

```
print(3 ** 4) # Prints 81

```

* * *

[float](class_float.md#class-float) **operator +**(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-sum-float)

Adds the **int** and the [float](class_float.md#class-float). The result is a [float](class_float.md#class-float).

* * *

[int](#class-int) **operator +**(right: [int](#class-int)) [🔗](#class-int-operator-sum-int)

Adds the two **int** s.

* * *

[float](class_float.md#class-float) **operator -**(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-dif-float)

Subtracts the [float](class_float.md#class-float) from the **int**. The result is a [float](class_float.md#class-float).

* * *

[int](#class-int) **operator -**(right: [int](#class-int)) [🔗](#class-int-operator-dif-int)

Subtracts the two **int** s.

* * *

[float](class_float.md#class-float) **operator /**(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-div-float)

Divides the **int** by the [float](class_float.md#class-float). The result is a [float](class_float.md#class-float).

```
print(10 / 3.0) # Prints 3.33333333333333

```

* * *

[int](#class-int) **operator /**(right: [int](#class-int)) [🔗](#class-int-operator-div-int)

Divides the two **int** s. The result is an **int**. This will truncate the [float](class_float.md#class-float), discarding anything after the floating point.

```
print(6 / 2) # Prints 3
print(5 / 3) # Prints 1

```

* * *

[bool](class_bool.md#class-bool) **operator <**(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-lt-float)

Returns `true` if the **int** is less than the [float](class_float.md#class-float).

* * *

[bool](class_bool.md#class-bool) **operator <**(right: [int](#class-int)) [🔗](#class-int-operator-lt-int)

Returns `true` if the left **int** is less than the right **int**.

* * *

[int](#class-int) **operator <<**(right: [int](#class-int)) [🔗](#class-int-operator-bwsl-int)

Performs the bitwise shift left operation. Effectively the same as multiplying by a power of 2.

```
print(0b1010 << 1) # Prints 20 (binary 10100)
print(0b1010 << 3) # Prints 80 (binary 1010000)

```

* * *

[bool](class_bool.md#class-bool) **operator <=**(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-lte-float)

Returns `true` if the **int** is less than or equal to the [float](class_float.md#class-float).

* * *

[bool](class_bool.md#class-bool) **operator <=**(right: [int](#class-int)) [🔗](#class-int-operator-lte-int)

Returns `true` if the left **int** is less than or equal to the right **int**.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-eq-float)

Returns `true` if the **int** is equal to the [float](class_float.md#class-float).

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [int](#class-int)) [🔗](#class-int-operator-eq-int)

Returns `true` if the two **int** s are equal.

* * *

[bool](class_bool.md#class-bool) **operator >**(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-gt-float)

Returns `true` if the **int** is greater than the [float](class_float.md#class-float).

* * *

[bool](class_bool.md#class-bool) **operator >**(right: [int](#class-int)) [🔗](#class-int-operator-gt-int)

Returns `true` if the left **int** is greater than the right **int**.

* * *

[bool](class_bool.md#class-bool) **operator >=**(right: [float](class_float.md#class-float)) [🔗](#class-int-operator-gte-float)

Returns `true` if the **int** is greater than or equal to the [float](class_float.md#class-float).

* * *

[bool](class_bool.md#class-bool) **operator >=**(right: [int](#class-int)) [🔗](#class-int-operator-gte-int)

Returns `true` if the left **int** is greater than or equal to the right **int**.

* * *

[int](#class-int) **operator >>**(right: [int](#class-int)) [🔗](#class-int-operator-bwsr-int)

Performs the bitwise shift right operation. Effectively the same as dividing by a power of 2.

```
print(0b1010 >> 1) # Prints 5 (binary 101)
print(0b1010 >> 2) # Prints 2 (binary 10)

```

* * *

[int](#class-int) **operator ^**(right: [int](#class-int)) [🔗](#class-int-operator-bwxor-int)

Performs the bitwise `XOR` operation.

```
print(0b1100 ^ 0b1010) # Prints 6 (binary 110)

```

* * *

[int](#class-int) **operator unary+**() [🔗](#class-int-operator-unplus)

Returns the same value as if the `+` was not there. Unary `+` does nothing, but sometimes it can make your code more readable.

* * *

[int](#class-int) **operator unary-**() [🔗](#class-int-operator-unminus)

Returns the negated value of the **int**. If positive, turns the number negative. If negative, turns the number positive. If zero, does nothing.

* * *

[int](#class-int) **operator \|**(right: [int](#class-int)) [🔗](#class-int-operator-bwor-int)

Performs the bitwise `OR` operation.

```
print(0b1100 | 0b1010) # Prints 14 (binary 1110)

```

This is useful for storing binary flags in a variable.

```
var flags = 0
flags |= 0b101 # Turn the first and third bits on.

```

* * *

[int](#class-int) **operator ~**() [🔗](#class-int-operator-bwnot)

Performs the bitwise `NOT` operation on the **int**. Due to [2's complement](https://en.wikipedia.org/wiki/Two%27s_complement), it's effectively equal to `-(int + 1)`.

```
print(~4) # Prints -5
print(~(-7)) # Prints 6

```

[Previous](class_float.md "float") [Next](class_nodepath.md "NodePath")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_float.md "float") [Next](class_nodepath.md "NodePath")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).