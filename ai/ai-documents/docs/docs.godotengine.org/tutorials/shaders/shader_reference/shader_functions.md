---
title: Built-in functions — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/shaders/shader_reference/shader_functions.html
crawled_at: "2026-08-13T10:38:24+12:00"
content_hash: a4c8eddbf96c0602489184bb778278ce4d0bc09e4df7793d44ffd0a1dbc95d98
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Shaders](../index.md)
  - [Shading reference](index.md)
  - Built-in functions
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/shaders/shader_reference/shader_functions.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Built-in functions

Godot supports a large number of built-in functions, conforming roughly to the
GLSL ES 3.0 specification.

Note

The following type aliases only used in documentation to reduce repetitive function declarations.
They can each refer to any of several actual types.

| alias | actual types | glsl documentation alias |
| --- | --- | --- |
| vec\_type | float, vec2, vec3, or vec4 | genType |
| vec\_int\_type | int, ivec2, ivec3, or ivec4 | genIType |
| vec\_uint\_type | uint, uvec2, uvec3, or uvec4 | genUType |
| vec\_bool\_type | bool, bvec2, bvec3, or bvec4 | genBType |
| mat\_type | mat2, mat3, or mat4 | mat |
| gvec4\_type | vec4, ivec4, or uvec4 | gvec4 |
| gsampler2D | sampler2D, isampler2D, or uSampler2D | gsampler2D |
| gsampler2DArray | sampler2DArray, isampler2DArray, or uSampler2DArray | gsampler2DArray |
| gsampler3D | sampler3D, isampler3D, or uSampler3D | gsampler3D |

If any of these are specified for multiple parameters, they must all be the same type unless otherwise noted.

Note

Many functions that accept one or more vectors or matrices perform the described function on each component of the vector/matrix.
Some examples:

| Operation | Equivalent Scalar Operation |
| --- | --- |
| `sqrt(vec2(4, 64))` | `vec2(sqrt(4), sqrt(64))` |
| `min(vec2(3, 4), 1)` | `vec2(min(3, 1), min(4, 1))` |
| `min(vec3(1, 2, 3),vec3(5, 1, 3))` | `vec3(min(1, 5), min(2, 1), min(3, 3))` |
| `pow(vec3(3, 8, 5 ), 2)` | `vec3(pow(3, 2), pow(8, 2), pow(5, 2))` |
| `pow(vec3(3, 8, 5), vec3(1, 2, 4))` | `vec3(pow(3, 1), pow(8, 2), pow(5, 4))` |

The [GLSL Language Specification](http://www.opengl.org/registry/doc/GLSLangSpec.4.30.6.pdf) says under section 5.10 Vector and Matrix Operations:

> With a few exceptions, operations are component-wise. Usually, when an operator operates on a
> vector or matrix, it is operating independently on each component of the vector or matrix,
> in a component-wise fashion. \[...\] The exceptions are matrix multiplied by vector,
> vector multiplied by matrix, and matrix multiplied by matrix. These do not operate component-wise,
> but rather perform the correct linear algebraic multiply.

These function descriptions are adapted and modified from
[official OpenGL documentation](https://registry.khronos.org/OpenGL-Refpages/gl4/)
originally published by Khronos Group under the
[Open Publication License](https://opencontent.org/openpub).
Each function description links to the corresponding official OpenGL
documentation. Modification history for this page can be found on
[GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/shaders/shader_reference/shader_functions.rst).

* * *

## Trigonometric functions

| Return Type | Function | Description / Return value |
| --- | --- | --- |
| vec\_type | [radians](#shader-func-radians)(vec\_type degrees) | Convert degrees to radians. |
| vec\_type | [degrees](#shader-func-degrees)(vec\_type radians) | Convert radians to degrees. |
| vec\_type | [sin](#shader-func-sin)(vec\_type x) | Sine. |
| vec\_type | [cos](#shader-func-cos)(vec\_type x) | Cosine. |
| vec\_type | [tan](#shader-func-tan)(vec\_type x) | Tangent. |
| vec\_type | [asin](#shader-func-asin)(vec\_type x) | Arc sine. |
| vec\_type | [acos](#shader-func-acos)(vec\_type x) | Arc cosine. |
| vec\_type<br>vec\_type | [atan](#shader-func-atan)(vec\_type y\_over\_x)<br>[atan](#shader-func-atan2)(vec\_type y, vec\_type x) | Arc tangent. |
| vec\_type | [sinh](#shader-func-sinh)(vec\_type x) | Hyperbolic sine. |
| vec\_type | [cosh](#shader-func-cosh)(vec\_type x) | Hyperbolic cosine. |
| vec\_type | [tanh](#shader-func-tanh)(vec\_type x) | Hyperbolic tangent. |
| vec\_type | [asinh](#shader-func-asinh)(vec\_type x) | Arc hyperbolic sine. |
| vec\_type | [acosh](#shader-func-acosh)(vec\_type x) | Arc hyperbolic cosine. |
| vec\_type | [atanh](#shader-func-atanh)(vec\_type x) | Arc hyperbolic tangent. |

### Trigonometric function descriptions

vec\_type **radians**(vec\_type degrees) [🔗](#shader-func-radians)

> [Component-wise Function](#shading-componentwise).
>
> Converts a quantity specified in degrees into radians, with the formula
> `degrees * (PI / 180)`.
>
> param degrees:
>
> The quantity, in degrees, to be converted to radians.
>
> return:
>
> The input `degrees` converted to radians.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/radians.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/radians.xhtml)

* * *

vec\_type **degrees**(vec\_type radians) [🔗](#shader-func-degrees)

> [Component-wise Function](#shading-componentwise).
>
> Converts a quantity specified in radians into degrees, with the formula
> `radians * (180 / PI)`
>
> param radians:
>
> The quantity, in radians, to be converted to degrees.
>
> return:
>
> The input `radians` converted to degrees.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/degrees.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/degrees.xhtml)

* * *

vec\_type **sin**(vec\_type angle) [🔗](#shader-func-sin)

> [Component-wise Function](#shading-componentwise).
>
> Returns the trigonometric sine of `angle`.
>
> param angle:
>
> The quantity, in radians, of which to return the sine.
>
> return:
>
> The sine of `angle`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/sin.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/sin.xhtml)

* * *

vec\_type **cos**(vec\_type angle) [🔗](#shader-func-cos)

> [Component-wise Function](#shading-componentwise).
>
> Returns the trigonometric cosine of `angle`.
>
> param angle:
>
> The quantity, in radians, of which to return the cosine.
>
> return:
>
> The cosine of `angle`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/cos.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/cos.xhtml)

* * *

vec\_type **tan**(vec\_type angle) [🔗](#shader-func-tan)

> [Component-wise Function](#shading-componentwise).
>
> Returns the trigonometric tangent of `angle`.
>
> param angle:
>
> The quantity, in radians, of which to return the tangent.
>
> return:
>
> The tangent of `angle`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/tan.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/tan.xhtml)

* * *

vec\_type **asin**(vec\_type x) [🔗](#shader-func-asin)

> [Component-wise Function](#shading-componentwise).
>
> Arc sine, or inverse sine.
> Calculates the angle whose sine is `x` and is in the range `[-PI/2, PI/2]`.
> The result is undefined if `x < -1` or `x > 1`.
>
> param x:
>
> The value whose arc sine to return.
>
> return:
>
> The angle whose trigonometric sine is `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/asin.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/asin.xhtml)

* * *

vec\_type **acos**(vec\_type x) [🔗](#shader-func-acos)

> [Component-wise Function](#shading-componentwise).
>
> Arc cosine, or inverse cosine.
> Calculates the angle whose cosine is `x` and is in the range `[0, PI]`.
>
> The result is undefined if `x < -1` or `x > 1`.
>
> param x:
>
> The value whose arc cosine to return.
>
> return:
>
> The angle whose trigonometric cosine is `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/acos.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/acos.xhtml)

* * *

vec\_type **atan**(vec\_type y\_over\_x) [🔗](#shader-func-atan)

> [Component-wise Function](#shading-componentwise).
>
> Calculates the arc tangent given a tangent value of `y/x`.
>
> Note
>
> Because of the sign ambiguity, the function cannot determine with certainty in
> which quadrant the angle falls only by its tangent value. If you need to know the
> quadrant, use [atan(vec\_type y, vec\_type x)](#shader-func-atan2).
>
> param y\_over\_x:
>
> The fraction whose arc tangent to return.
>
> return:
>
> The trigonometric arc-tangent of `y_over_x` and is
> in the range `[-PI/2, PI/2]`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/atan.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/atan.xhtml)

* * *

vec\_type **atan**(vec\_type y, vec\_type x) [🔗](#shader-func-atan2)

> [Component-wise Function](#shading-componentwise).
>
> Calculates the arc tangent given a numerator and denominator. The signs of
> `y` and `x` are used to determine the quadrant that the angle lies in.
> The result is undefined if `x == 0`.
>
> Equivalent to [atan2()](../../../classes/class_@globalscope.md#class-globalscope-method-atan2) in GDScript.
>
> param y:
>
> The numerator of the fraction whose arc tangent to return.
>
> param x:
>
> The denominator of the fraction whose arc tangent to return.
>
> return:
>
> The trigonometric arc tangent of `y/x` and is in
> the range `[-PI, PI]`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/atan.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/atan.xhtml)

* * *

vec\_type **sinh**(vec\_type x) [🔗](#shader-func-sinh)

> [Component-wise Function](#shading-componentwise).
>
> Calculates the hyperbolic sine using `(e^x - e^-x)/2`.
>
> param x:
>
> The value whose hyperbolic sine to return.
>
> return:
>
> The hyperbolic sine of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/sinh.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/sinh.xhtml)

* * *

vec\_type **cosh**(vec\_type x) [🔗](#shader-func-cosh)

> [Component-wise Function](#shading-componentwise).
>
> Calculates the hyperbolic cosine using `(e^x + e^-x)/2`.
>
> param x:
>
> The value whose hyperbolic cosine to return.
>
> return:
>
> The hyperbolic cosine of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/cosh.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/cosh.xhtml)

* * *

vec\_type **tanh**(vec\_type x) [🔗](#shader-func-tanh)

> [Component-wise Function](#shading-componentwise).
>
> Calculates the hyperbolic tangent using `sinh(x)/cosh(x)`.
>
> param x:
>
> The value whose hyperbolic tangent to return.
>
> return:
>
> The hyperbolic tangent of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/tanh.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/tanh.xhtml)

* * *

vec\_type **asinh**(vec\_type x) [🔗](#shader-func-asinh)

> [Component-wise Function](#shading-componentwise).
>
> Calculates the arc hyperbolic sine of `x`, or the inverse of `sinh`.
>
> param x:
>
> The value whose arc hyperbolic sine to return.
>
> return:
>
> The arc hyperbolic sine of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/asinh.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/asinh.xhtml)

* * *

vec\_type **acosh**(vec\_type x) [🔗](#shader-func-acosh)

> [Component-wise Function](#shading-componentwise).
>
> Calculates the arc hyperbolic cosine of `x`, or the non-negative inverse of `cosh`.
> The result is undefined if `x < 1`.
>
> param x:
>
> The value whose arc hyperbolic cosine to return.
>
> return:
>
> The arc hyperbolic cosine of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/acosh.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/acosh.xhtml)

* * *

vec\_type **atanh**(vec\_type x) [🔗](#shader-func-atanh)

> [Component-wise Function](#shading-componentwise).
>
> Calculates the arc hyperbolic tangent of `x`, or the inverse of `tanh`.
> The result is undefined if `abs(x) > 1`.
>
> param x:
>
> The value whose arc hyperbolic tangent to return.
>
> return:
>
> The arc hyperbolic tangent of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/atanh.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/atanh.xhtml)

* * *

## Exponential and math functions

| Return Type | Function | Description / Return value |
| --- | --- | --- |
| vec\_type | [pow](#shader-func-pow)(vec\_type x, vec\_type y) | Power (undefined if `x < 0` or if `x == 0` and `y <= 0`). |
| vec\_type | [exp](#shader-func-exp)(vec\_type x) | Base-e exponential. |
| vec\_type | [exp2](#shader-func-exp2)(vec\_type x) | Base-2 exponential. |
| vec\_type | [log](#shader-func-log)(vec\_type x) | Natural (base-e) logarithm. |
| vec\_type | [log2](#shader-func-log2)(vec\_type x) | Base-2 logarithm. |
| vec\_type | [sqrt](#shader-func-sqrt)(vec\_type x) | Square root. |
| vec\_type | [inversesqrt](#shader-func-inversesqrt)(vec\_type x) | Inverse square root. |
| vec\_type<br>vec\_int\_type | [abs](#shader-func-abs)(vec\_type x)<br>[abs](#shader-func-abs)(vec\_int\_type x) | Absolute value (returns positive value if negative). |
| vec\_type | [sign](#shader-func-sign)(vec\_type x) | Returns `1.0` if positive, `-1.0` if negative,<br>`0.0` otherwise. |
| vec\_int\_type | [sign](#shader-func-sign)(vec\_int\_type x) | Returns `1` if positive, `-1` if negative,<br>`0` otherwise. |
| vec\_type | [floor](#shader-func-floor)(vec\_type x) | Rounds to the integer below. |
| vec\_type | [round](#shader-func-round)(vec\_type x) | Rounds to the nearest integer. |
| vec\_type | [roundEven](#shader-func-roundeven)(vec\_type x) | Rounds to the nearest even integer. |
| vec\_type | [trunc](#shader-func-trunc)(vec\_type x) | Truncation. |
| vec\_type | [ceil](#shader-func-ceil)(vec\_type x) | Rounds to the integer above. |
| vec\_type | [fract](#shader-func-fract)(vec\_type x) | Fractional (returns `x - floor(x)`). |
| vec\_type<br>vec\_type | [mod](#shader-func-mod)(vec\_type x, vec\_type y)<br>[mod](#shader-func-mod)(vec\_type x, float y) | Modulo (division remainder). |
| vec\_type | [modf](#shader-func-modf)(vec\_type x, out vec\_type i) | Fractional of `x`, with `i` as integer part. |
| vec\_type<br>vec\_type<br>vec\_int\_type<br>vec\_int\_type<br>vec\_uint\_type<br>vec\_uint\_type | [min](#shader-func-min)(vec\_type a, vec\_type b)<br>[min](#shader-func-min)(vec\_type a, float b)<br>[min](#shader-func-min)(vec\_int\_type a, vec\_int\_type b)<br>[min](#shader-func-min)(vec\_int\_type a, int b)<br>[min](#shader-func-min)(vec\_uint\_type a, vec\_uint\_type b)<br>[min](#shader-func-min)(vec\_uint\_type a, uint b) | Lowest value between `a` and `b`. |
| vec\_type<br>vec\_type<br>vec\_int\_type<br>vec\_int\_type<br>vec\_uint\_type<br>vec\_uint\_type | [max](#shader-func-max)(vec\_type a, vec\_type b)<br>[max](#shader-func-max)(vec\_type a, float b)<br>[max](#shader-func-max)(vec\_int\_type a, vec\_int\_type b)<br>[max](#shader-func-max)(vec\_int\_type a, int b)<br>[max](#shader-func-max)(vec\_uint\_type a, vec\_uint\_type b)<br>[max](#shader-func-max)(vec\_uint\_type a, uint b) | Highest value between `a` and `b`. |
| vec\_type<br>vec\_type<br>vec\_int\_type<br>vec\_int\_type<br>vec\_uint\_type<br>vec\_uint\_type | [clamp](#shader-func-clamp)(vec\_type x, vec\_type min, vec\_type max)<br>[clamp](#shader-func-clamp)(vec\_type x, float min, float max)<br>[clamp](#shader-func-clamp)(vec\_int\_type x, vec\_int\_type min, vec\_int\_type max)<br>[clamp](#shader-func-clamp)(vec\_int\_type x, int min, int max)<br>[clamp](#shader-func-clamp)(vec\_uint\_type x, vec\_uint\_type min, vec\_uint\_type max)<br>[clamp](#shader-func-clamp)(vec\_uint\_type x, uint min, uint max) | Clamps `x` between `min` and `max` (inclusive). |
| vec\_type<br>vec\_type<br>vec\_type | [mix](#shader-func-mix)(vec\_type a, vec\_type b, vec\_type c)<br>[mix](#shader-func-mix)(vec\_type a, vec\_type b, float c)<br>[mix](#shader-func-mix)(vec\_type a, vec\_type b, vec\_bool\_type c) | Linear interpolate between `a` and `b` by `c`. |
| vec\_type | [fma](#shader-func-fma)(vec\_type a, vec\_type b, vec\_type c) | Fused multiply-add operation: `(a * b + c)` |
| vec\_type<br>vec\_type | [step](#shader-func-step)(vec\_type a, vec\_type b)<br>[step](#shader-func-step)(float a, vec\_type b) | `b < a ? 0.0 : 1.0` |
| vec\_type<br>vec\_type | [smoothstep](#shader-func-smoothstep)(vec\_type a, vec\_type b, vec\_type c)<br>[smoothstep](#shader-func-smoothstep)(float a, float b, vec\_type c) | Hermite interpolate between `a` and `b` by `c`. |
| vec\_bool\_type | [isnan](#shader-func-isnan)(vec\_type x) | Returns `true` if scalar or vector component is `NaN`. |
| vec\_bool\_type | [isinf](#shader-func-isinf)(vec\_type x) | Returns `true` if scalar or vector component is `INF`. |
| vec\_int\_type | [floatBitsToInt](#shader-func-floatbitstoint)(vec\_type x) | `float` to `int` bit copying, no conversion. |
| vec\_uint\_type | [floatBitsToUint](#shader-func-floatbitstouint)(vec\_type x) | `float` to `uint` bit copying, no conversion. |
| vec\_type | [intBitsToFloat](#shader-func-intbitstofloat)(vec\_int\_type x) | `int` to `float` bit copying, no conversion. |
| vec\_type | [uintBitsToFloat](#shader-func-uintbitstofloat)(vec\_uint\_type x) | `uint` to `float` bit copying, no conversion. |

### Exponential and math function descriptions

vec\_type **pow**(vec\_type x, vec\_type y) [🔗](#shader-func-pow)

> [Component-wise Function](#shading-componentwise).
>
> Raises `x` to the power of `y`.
>
> The result is undefined if `x < 0` or if `x == 0` and `y <= 0`.
>
> param x:
>
> The value to be raised to the power `y`.
>
> param y:
>
> The power to which `x` will be raised.
>
> return:
>
> The value of `x` raised to the `y` power.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/pow.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/pow.xhtml)

* * *

vec\_type **exp**(vec\_type x) [🔗](#shader-func-exp)

> [Component-wise Function](#shading-componentwise).
>
> Raises `e` to the power of `x`, or the the natural exponentiation.
>
> Equivalent to `pow(e, x)`.
>
> param x:
>
> The value to exponentiate.
>
> return:
>
> The natural exponentiation of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/exp.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/exp.xhtml)

* * *

vec\_type **exp2**(vec\_type x) [🔗](#shader-func-exp2)

> [Component-wise Function](#shading-componentwise).
>
> Raises `2` to the power of `x`.
>
> Equivalent to `pow(2.0, x)`.
>
> param x:
>
> The value of the power to which `2` will be raised.
>
> return:
>
> `2` raised to the power of x.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/exp2.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/exp2.xhtml)

* * *

vec\_type **log**(vec\_type x) [🔗](#shader-func-log)

> [Component-wise Function](#shading-componentwise).
>
> Returns the natural logarithm of `x`, i.e. the value `y` which satisfies `x == pow(e, y)`.
> The result is undefined if `x <= 0`.
>
> param x:
>
> The value of which to take the natural logarithm.
>
> return:
>
> The natural logarithm of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/log.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/log.xhtml)

* * *

vec\_type **log2**(vec\_type x) [🔗](#shader-func-log2)

> [Component-wise Function](#shading-componentwise).
>
> Returns the base-2 logarithm of `x`, i.e. the value `y` which satisfies `x == pow(2, y)`.
> The result is undefined if `x <= 0`.
>
> param x:
>
> The value of which to take the base-2 logarithm.
>
> return:
>
> The base-2 logarithm of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/log2.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/log2.xhtml)

* * *

vec\_type **sqrt**(vec\_type x) [🔗](#shader-func-sqrt)

> [Component-wise Function](#shading-componentwise).
>
> Returns the square root of `x`.
> The result is undefined if `x < 0`.
>
> param x:
>
> The value of which to take the square root.
>
> return:
>
> The square root of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/sqrt.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/sqrt.xhtml)

* * *

vec\_type **inversesqrt**(vec\_type x) [🔗](#shader-func-inversesqrt)

> [Component-wise Function](#shading-componentwise).
>
> Returns the inverse of the square root of `x`, or `1.0 / sqrt(x)`.
> The result is undefined if `x <= 0`.
>
> param x:
>
> The value of which to take the inverse of the square root.
>
> return:
>
> The inverse of the square root of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/inversesqrt.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/inversesqrt.xhtml)

* * *

vec\_type **abs**(vec\_type x) [🔗](#shader-func-abs)

vec\_int\_type **abs**(vec\_int\_type x) [🔗](#shader-func-abs)

> [Component-wise Function](#shading-componentwise).
>
> Returns the absolute value of `x`. Returns `x` if `x` is positive, otherwise returns `-1 * x`.
>
> param x:
>
> The value of which to return the absolute.
>
> return:
>
> The absolute value of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/abs.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/abs.xhtml)

* * *

vec\_type **sign**(vec\_type x) [🔗](#shader-func-sign)

vec\_int\_type **sign**(vec\_int\_type x) [🔗](#shader-func-sign)

> [Component-wise Function](#shading-componentwise).
>
> Returns `-1` if `x < 0`, `0` if `x == 0`, and `1` if `x > 0`.
>
> param x:
>
> The value from which to extract the sign.
>
> return:
>
> The sign of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/sign.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/sign.xhtml)

* * *

vec\_type **floor**(vec\_type x) [🔗](#shader-func-floor)

> [Component-wise Function](#shading-componentwise).
>
> Returns a value equal to the nearest integer that is less than or equal to `x`.
>
> param x:
>
> The value to floor.
>
> return:
>
> The nearest integer that is less than or equal to `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/floor.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/floor.xhtml)

* * *

vec\_type **round**(vec\_type x) [🔗](#shader-func-round)

> [Component-wise Function](#shading-componentwise).
>
> Rounds `x` to the nearest integer.
>
> Note
>
> Rounding of values with a fractional part of `0.5` is implementation-dependent.
> This includes the possibility that `round(x)` returns the same value as
> ```roundEven(x)``for all values of ``x```.
>
> param x:
>
> The value to round.
>
> return:
>
> The rounded value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/round.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/round.xhtml)

* * *

vec\_type **roundEven**(vec\_type x) [🔗](#shader-func-roundeven)

> [Component-wise Function](#shading-componentwise).
>
> Rounds `x` to the nearest integer. A value with a fractional part of `0.5`
> will always round toward the nearest even integer.
> For example, both `3.5` and `4.5` will round to `4.0`.
>
> param x:
>
> The value to round.
>
> return:
>
> The rounded value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/roundEven.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/roundEven.xhtml)

* * *

vec\_type **trunc**(vec\_type x) [🔗](#shader-func-trunc)

> [Component-wise Function](#shading-componentwise).
>
> Truncates `x`. Returns a value equal to the nearest integer to `x` whose
> absolute value is not larger than the absolute value of `x`.
>
> param x:
>
> The value to evaluate.
>
> return:
>
> The truncated value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/trunc.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/trunc.xhtml)

* * *

vec\_type **ceil**(vec\_type x) [🔗](#shader-func-ceil)

> [Component-wise Function](#shading-componentwise).
>
> Returns a value equal to the nearest integer that is greater than or equal to `x`.
>
> param x:
>
> The value to evaluate.
>
> return:
>
> The ceiling-ed value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/ceil.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/ceil.xhtml)

* * *

vec\_type **fract**(vec\_type x) [🔗](#shader-func-fract)

> [Component-wise Function](#shading-componentwise).
>
> Returns the fractional part of `x`.
>
> This is calculated as `x - floor(x)`.
>
> param x:
>
> The value to evaluate.
>
> return:
>
> The fractional part of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fract.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fract.xhtml)

* * *

vec\_type **mod**(vec\_type x, vec\_type y) [🔗](#shader-func-mod)

vec\_type **mod**(vec\_type x, float y) [🔗](#shader-func-mod)

> [Component-wise Function](#shading-componentwise).
>
> Returns the value of `x modulo y`.
> This is also sometimes called the remainder.
>
> This is computed as `x - y * floor(x/y)`.
>
> param x:
>
> The value to evaluate.
>
> return:
>
> The value of `x modulo y`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/mod.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/mod.xhtml)

* * *

vec\_type **modf**(vec\_type x, out vec\_type i) [🔗](#shader-func-modf)

> [Component-wise Function](#shading-componentwise).
>
> Separates a floating-point value `x` into its integer and fractional parts.
>
> The fractional part of the number is returned from the function.
> The integer part (as a floating-point quantity) is returned in the output parameter `i`.
>
> param x:
>
> The value to separate.
>
> param out i:
>
> A variable that receives the integer part of `x`.
>
> return:
>
> The fractional part of the number.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/modf.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/modf.xhtml)

* * *

vec\_type **min**(vec\_type a, vec\_type b) [🔗](#shader-func-min)

vec\_type **min**(vec\_type a, float b) [🔗](#shader-func-min)

vec\_int\_type **min**(vec\_int\_type a, vec\_int\_type b) [🔗](#shader-func-min)

vec\_int\_type **min**(vec\_int\_type a, int b) [🔗](#shader-func-min)

vec\_uint\_type **min**(vec\_uint\_type a, vec\_uint\_type b) [🔗](#shader-func-min)

vec\_uint\_type **min**(vec\_uint\_type a, uint b) [🔗](#shader-func-min)

> [Component-wise Function](#shading-componentwise).
>
> Returns the minimum of two values `a` and `b`.
>
> Returns `b` if `b < a`, otherwise returns `a`.
>
> param a:
>
> The first value to compare.
>
> param b:
>
> The second value to compare.
>
> return:
>
> The minimum value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/min.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/min.xhtml)

* * *

vec\_type **max**(vec\_type a, vec\_type b) [🔗](#shader-func-max)

vec\_type **max**(vec\_type a, float b) [🔗](#shader-func-max)

vec\_uint\_type **max**(vec\_uint\_type a, vec\_uint\_type b) [🔗](#shader-func-max)

vec\_uint\_type **max**(vec\_uint\_type a, uint b) [🔗](#shader-func-max)

vec\_int\_type **max**(vec\_int\_type a, vec\_int\_type b) [🔗](#shader-func-max)

vec\_int\_type **max**(vec\_int\_type a, int b) [🔗](#shader-func-max)

> [Component-wise Function](#shading-componentwise).
>
> Returns the maximum of two values `a` and `b`.
>
> It returns `b` if `b > a`, otherwise it returns `a`.
>
> param a:
>
> The first value to compare.
>
> param b:
>
> The second value to compare.
>
> return:
>
> The maximum value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/max.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/max.xhtml)

* * *

vec\_type **clamp**(vec\_type x, vec\_type minVal, vec\_type maxVal) [🔗](#shader-func-clamp)

vec\_type **clamp**(vec\_type x, float minVal, float maxVal) [🔗](#shader-func-clamp)

vec\_int\_type **clamp**(vec\_int\_type x, vec\_int\_type minVal, vec\_int\_type maxVal) [🔗](#shader-func-clamp)

vec\_int\_type **clamp**(vec\_int\_type x, int minVal, int maxVal) [🔗](#shader-func-clamp)

vec\_uint\_type **clamp**(vec\_uint\_type x, vec\_uint\_type minVal, vec\_uint\_type maxVal) [🔗](#shader-func-clamp)

vec\_uint\_type **clamp**(vec\_uint\_type x, uint minVal, uint maxVal) [🔗](#shader-func-clamp)

> [Component-wise Function](#shading-componentwise).
>
> Returns the value of `x` constrained to the range `minVal` to `maxVal`.
>
> The returned value is computed as `min(max(x, minVal), maxVal)`.
>
> param x:
>
> The value to constrain.
>
> param minVal:
>
> The lower end of the range into which to constrain `x`.
>
> param maxVal:
>
> The upper end of the range into which to constrain `x`.
>
> return:
>
> The clamped value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/clamp.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/clamp.xhtml)

* * *

vec\_type **mix**(vec\_type a, vec\_type b, vec\_type c) [🔗](#shader-func-mix)

vec\_type **mix**(vec\_type a, vec\_type b, float c) [🔗](#shader-func-mix)

> [Component-wise Function](#shading-componentwise).
>
> Performs a linear interpolation between `a` and `b` using `c` to weight between them.
>
> Computed as `a * (1 - c) + b * c`.
>
> Equivalent to [lerp()](../../../classes/class_@globalscope.md#class-globalscope-method-lerp) in GDScript.
>
> param a:
>
> The start of the range in which to interpolate.
>
> param b:
>
> The end of the range in which to interpolate.
>
> param c:
>
> The value to use to interpolate between `a` and `b`.
>
> return:
>
> The interpolated value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/mix.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/mix.xhtml)

* * *

vec\_type **mix**(vec\_type a, vec\_type b, vec\_bool\_type c) [🔗](#shader-func-mix)

> Selects either value `a` or value `b` based on the value of `c`.
> For a component of `c` that is false, the corresponding component of `a` is returned.
> For a component of `c` that is true, the corresponding component of `b` is returned.
> Components of `a` and `b` that are not selected are allowed to be invalid floating-point values and will have no effect on the results.
>
> If `a`, `b`, and `c` are vector types the operation is performed [component-wise](#shading-componentwise).
> ie. `mix(vec2(42, 314), vec2(9.8, 6e23), bvec2(true, false)))` will return `vec2(9.8, 314)`.
>
> param a:
>
> Value returned when `c` is false.
>
> param b:
>
> Value returned when `c` is true.
>
> param c:
>
> The value used to select between `a` and `b`.
>
> return:
>
> The interpolated value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/mix.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/mix.xhtml)

* * *

vec\_type **fma**(vec\_type a, vec\_type b, vec\_type c) [🔗](#shader-func-fma)

> [Component-wise Function](#shading-componentwise).
>
> Performs, where possible, a fused multiply-add operation, returning `a * b + c`. In use cases where the
> return value is eventually consumed by a variable declared as precise:
>
> > - `fma()` is considered a single operation, whereas the expression `a * b + c` consumed by a variable declared as precise is considered two operations.
> >
> > - The precision of `fma()` can differ from the precision of the expression `a * b + c`.
> >
> > - `fma()` will be computed with the same precision as any other `fma()` consumed by a precise variable,
> > giving invariant results for the same input values of a, b and c.
>
> Otherwise, in the absence of precise consumption, there are no special constraints on the number of operations
> or difference in precision between `fma()` and the expression `a * b + c`.
>
> param a:
>
> The first value to be multiplied.
>
> param b:
>
> The second value to be multiplied.
>
> param c:
>
> The value to be added to the result.
>
> return:
>
> The value of `a * b + c`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fma.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fma.xhtml)

* * *

vec\_type **step**(vec\_type a, vec\_type b) [🔗](#shader-func-step)

vec\_type **step**(float a, vec\_type b) [🔗](#shader-func-step)

> [Component-wise Function](#shading-componentwise).
>
> Generates a step function by comparing b to a.
>
> Equivalent to `if (b < a) { return 0.0; } else { return 1.0; }`.
> For element i of the return value, 0.0 is returned if b\[i\] < a\[i\], and 1.0 is returned otherwise.
>
> param a:
>
> The location of the edge of the step function.
>
> param b:
>
> The value to be used to generate the step function.
>
> return:
>
> `0.0` or `1.0`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/step.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/step.xhtml)

* * *

vec\_type **smoothstep**(vec\_type a, vec\_type b, vec\_type c) [🔗](#shader-func-smoothstep)

vec\_type **smoothstep**(float a, float b, vec\_type c) [🔗](#shader-func-smoothstep)

> [Component-wise Function](#shading-componentwise).
>
> Performs smooth Hermite interpolation between `0` and `1` when a < c < b.
> This is useful in cases where a threshold function with a smooth transition is desired.
>
> Smoothstep is equivalent to:
>
> ```
> vec_type t;
> t = clamp((c - a) / (b - a), 0.0, 1.0);
> return t * t * (3.0 - 2.0 * t);
>
> ```
>
> Results are undefined if `a >= b`.
>
> param a:
>
> The value of the lower edge of the Hermite function.
>
> param b:
>
> The value of the upper edge of the Hermite function.
>
> param c:
>
> The source value for interpolation.
>
> return:
>
> The interpolated value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/smoothstep.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/smoothstep.xhtml)

* * *

vec\_bool\_type **isnan**(vec\_type x) [🔗](#shader-func-isnan)

> [Component-wise Function](#shading-componentwise).
>
> For each element i of the result, returns `true` if x\[i\] is positive
> or negative floating-point NaN (Not a Number) and false otherwise.
>
> param x:
>
> The value to test for NaN.
>
> return:
>
> `true` or `false`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/isnan.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/isnan.xhtml)

* * *

vec\_bool\_type **isinf**(vec\_type x) [🔗](#shader-func-isinf)

> [Component-wise Function](#shading-componentwise).
>
> For each element i of the result, returns `true` if x\[i\] is positive or negative
> floating-point infinity and false otherwise.
>
> param x:
>
> The value to test for infinity.
>
> return:
>
> `true` or `false`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/isinf.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/isinf.xhtml)

* * *

vec\_int\_type **floatBitsToInt**(vec\_type x) [🔗](#shader-func-floatbitstoint)

> [Component-wise Function](#shading-componentwise).
>
> Returns the encoding of the floating-point parameters as `int`.
>
> The floating-point bit-level representation is preserved.
>
> param x:
>
> The value whose floating-point encoding to return.
>
> return:
>
> The floating-point encoding of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/floatBitsToInt.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/floatBitsToInt.xhtml)

* * *

vec\_uint\_type **floatBitsToUint**(vec\_type x) [🔗](#shader-func-floatbitstouint)

> [Component-wise Function](#shading-componentwise).
>
> Returns the encoding of the floating-point parameters as `uint`.
>
> The floating-point bit-level representation is preserved.
>
> param x:
>
> The value whose floating-point encoding to return.
>
> return:
>
> The floating-point encoding of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/floatBitsToInt.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/floatBitsToInt.xhtml)

* * *

vec\_type **intBitsToFloat**(vec\_int\_type x) [🔗](#shader-func-intbitstofloat)

> [Component-wise Function](#shading-componentwise).
>
> Converts a bit encoding to a floating-point value. Opposite of floatBitsToInt<shader\_func\_floatBitsToInt>
>
> If the encoding of a `NaN` is passed in `x`, it will not signal and the resulting value will be undefined.
>
> If the encoding of a floating-point infinity is passed in parameter `x`, the resulting floating-point value is
> the corresponding (positive or negative) floating-point infinity.
>
> param x:
>
> The bit encoding to return as a floating-point value.
>
> return:
>
> A floating-point value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/intBitsToFloat.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/intBitsToFloat.xhtml)

* * *

vec\_type **uintBitsToFloat**(vec\_uint\_type x) [🔗](#shader-func-uintbitstofloat)

> [Component-wise Function](#shading-componentwise).
>
> Converts a bit encoding to a floating-point value. Opposite of floatBitsToUint<shader\_func\_floatBitsToUint>
>
> If the encoding of a `NaN` is passed in `x`, it will not signal and the resulting value will be undefined.
>
> If the encoding of a floating-point infinity is passed in parameter `x`, the resulting floating-point value is
> the corresponding (positive or negative) floating-point infinity.
>
> param x:
>
> The bit encoding to return as a floating-point value.
>
> return:
>
> A floating-point value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/intBitsToFloat.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/intBitsToFloat.xhtml)

* * *

## Geometric functions

|     |     |     |
| --- | --- | --- |
| float | [length](#shader-func-length)(vec\_type x) | Vector length. |
| float | [distance](#shader-func-distance)(vec\_type a, vec\_type b) | Distance between vectors i.e `length(a - b)`. |
| float | [dot](#shader-func-dot)(vec\_type a, vec\_type b) | Dot product. |
| vec3 | [cross](#shader-func-cross)(vec3 a, vec3 b) | Cross product. |
| vec\_type | [normalize](#shader-func-normalize)(vec\_type x) | Normalize to unit length. |
| vec3 | [reflect](#shader-func-reflect)(vec3 I, vec3 N) | Reflect. |
| vec3 | [refract](#shader-func-refract)(vec3 I, vec3 N, float eta) | Refract. |
| vec\_type | [faceforward](#shader-func-faceforward)(vec\_type N, vec\_type I, vec\_type Nref) | If `dot(Nref, I)` < 0, return `N`, otherwise `-N`. |
| mat\_type | [matrixCompMult](#shader-func-matrixcompmult)(mat\_type x, mat\_type y) | Matrix component multiplication. |
| mat\_type | [outerProduct](#shader-func-outerproduct)(vec\_type column, vec\_type row) | Matrix outer product. |
| mat\_type | [transpose](#shader-func-transpose)(mat\_type m) | Transpose matrix. |
| float | [determinant](#shader-func-determinant)(mat\_type m) | Matrix determinant. |
| mat\_type | [inverse](#shader-func-inverse)(mat\_type m) | Inverse matrix. |

### Geometric function descriptions

float **length**(vec\_type x) [🔗](#shader-func-length)

> Returns the length of the vector.
> ie. `sqrt(x[0] * x[0] + x[1] * x[1] + ... + x[n] * x[n])`
>
> param x:
>
> The vector
>
> return:
>
> The length of the vector.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/length.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/length.xhtml)

* * *

float **distance**(vec\_type a, vec\_type b) [🔗](#shader-func-distance)

> Returns the distance between the two points a and b.
>
> i.e., `length(b - a);`
>
> param a:
>
> The first point.
>
> param b:
>
> The second point.
>
> return:
>
> The scalar distance between the points
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/distance.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/distance.xhtml)

* * *

float **dot**(vec\_type a, vec\_type b) [🔗](#shader-func-dot)

> Returns the dot product of two vectors, `a` and `b`.
> i.e., `a.x * b.x + a.y * b.y + ...`
>
> param a:
>
> The first vector.
>
> param b:
>
> The second vector.
>
> return:
>
> The dot product.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/dot.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/dot.xhtml)

* * *

vec3 **cross**(vec3 a, vec3 b) [🔗](#shader-func-cross)

> Returns the cross product of two vectors. i.e.:
>
> ```
> vec2( a.y * b.z - b.y * a.z,
>       a.z * b.x - b.z * a.x,
>       a.x * b.z - b.x * a.y)
>
> ```
>
> param a:
>
> The first vector.
>
> param b:
>
> The second vector.
>
> return:
>
> The cross product of `a` and `b`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/cross.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/cross.xhtml)

* * *

vec\_type **normalize**(vec\_type x) [🔗](#shader-func-normalize)

> Returns a vector with the same direction as `x` but with length `1.0`.
>
> param x:
>
> The vector to normalize.
>
> return:
>
> The normalized vector.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/normalize.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/normalize.xhtml)

* * *

vec3 **reflect**(vec3 I, vec3 N) [🔗](#shader-func-reflect)

> Calculate the reflection direction for an incident vector.
>
> For a given incident vector `I` and surface normal `N` reflect returns the reflection direction calculated as `I - 2.0 * dot(N, I) * N`.
>
> Note
>
> `N` should be normalized in order to achieve the desired result.
>
> param I:
>
> The incident vector.
>
> param N:
>
> The normal vector.
>
> return:
>
> The reflection vector.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/reflect.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/reflect.xhtml)

* * *

vec3 **refract**(vec3 I, vec3 N, float eta) [🔗](#shader-func-refract)

> Calculate the refraction direction for an incident vector.
>
> For a given incident vector `I`, surface normal `N` and ratio of indices of refraction, `eta`, refract returns the refraction vector, `R`.
>
> `R` is calculated as:
>
> ```
> k = 1.0 - eta * eta * (1.0 - dot(N, I) * dot(N, I));
> if (k < 0.0)
>     R = genType(0.0);       // or genDType(0.0)
> else
>     R = eta * I - (eta * dot(N, I) + sqrt(k)) * N;
>
> ```
>
> Note
>
> The input parameters I and N should be normalized in order to achieve the desired result.
>
> param I:
>
> The incident vector.
>
> param N:
>
> The normal vector.
>
> param eta:
>
> The ratio of indices of refraction.
>
> return:
>
> The refraction vector.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/refract.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/refract.xhtml)

* * *

vec\_type **faceforward**(vec\_type N, vec\_type I, vec\_type Nref) [🔗](#shader-func-faceforward)

> Returns a vector pointing in the same direction as another.
>
> Orients a vector to point away from a surface as defined by its normal.
> If `dot(Nref, I) < 0` faceforward returns `N`, otherwise it returns `-N`.
>
> param N:
>
> The vector to orient.
>
> param I:
>
> The incident vector.
>
> param Nref:
>
> The reference vector.
>
> return:
>
> The oriented vector.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/faceforward.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/faceforward.xhtml)

* * *

mat\_type **matrixCompMult**(mat\_type x, mat\_type y) [🔗](#shader-func-matrixcompmult)

> Perform a [component-wise](#shading-componentwise) multiplication of two matrices.
>
> Performs a component-wise multiplication of two matrices, yielding a result
> matrix where each component, `result[i][j]` is computed as the scalar
> product of `x[i][j]` and `y[i][j]`.
>
> param x:
>
> The first matrix multiplicand.
>
> param y:
>
> The second matrix multiplicand.
>
> return:
>
> The resultant matrix.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/matrixCompMult.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/matrixCompMult.xhtml)

* * *

mat\_type **outerProduct**(vec\_type column, vec\_type row) [🔗](#shader-func-outerproduct)

> Calculate the outer product of a pair of vectors.
>
> Does a linear algebraic matrix multiply `column * row`, yielding a matrix whose number of
> rows is the number of components in `column` and whose number of columns is the number of
> components in `row`.
>
> param column:
>
> The column vector for multiplication.
>
> param row:
>
> The row vector for multiplication.
>
> return:
>
> The outer product matrix.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/outerProduct.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/outerProduct.xhtml)

* * *

mat\_type **transpose**(mat\_type m) [🔗](#shader-func-transpose)

> Calculate the transpose of a matrix.
>
> param m:
>
> The matrix to transpose.
>
> return:
>
> A new matrix that is the transpose of the input matrix `m`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/transpose.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/transpose.xhtml)

* * *

float **determinant**(mat\_type m) [🔗](#shader-func-determinant)

> Calculate the determinant of a matrix.
>
> param m:
>
> The matrix.
>
> return:
>
> The determinant of the input matrix `m`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/determinant.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/determinant.xhtml)

* * *

mat\_type **inverse**(mat\_type m) [🔗](#shader-func-inverse)

> Calculate the inverse of a matrix.
>
> The values in the returned matrix are undefined if `m` is singular or poorly-conditioned (nearly singular).
>
> param m:
>
> The matrix of which to take the inverse.
>
> return:
>
> A new matrix which is the inverse of the input matrix `m`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/inverse.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/inverse.xhtml)

* * *

## Comparison functions

|     |     |     |
| --- | --- | --- |
| vec\_bool\_type | [lessThan](#shader-func-lessthan)(vec\_type x, vec\_type y) | Bool vector comparison on < int/uint/float vectors. |
| vec\_bool\_type | [greaterThan](#shader-func-greaterthan)(vec\_type x, vec\_type y) | Bool vector comparison on > int/uint/float vectors. |
| vec\_bool\_type | [lessThanEqual](#shader-func-lessthanequal)(vec\_type x, vec\_type y) | Bool vector comparison on <= int/uint/float vectors. |
| vec\_bool\_type | [greaterThanEqual](#shader-func-greaterthanequal)( vec\_type x, vec\_type y) | Bool vector comparison on >= int/uint/float vectors. |
| vec\_bool\_type | [equal](#shader-func-equal)(vec\_type x, vec\_type y) | Bool vector comparison on == int/uint/float vectors. |
| vec\_bool\_type | [notEqual](#shader-func-notequal)(vec\_type x, vec\_type y) | Bool vector comparison on != int/uint/float vectors. |
| bool | [any](#shader-func-any)(vec\_bool\_type x) | `true` if any component is `true`, `false` otherwise. |
| bool | [all](#shader-func-all)(vec\_bool\_type x) | `true` if all components are `true`, `false` otherwise. |
| vec\_bool\_type | [not](#shader-func-not)(vec\_bool\_type x) | Invert boolean vector. |

### Comparison function descriptions

vec\_bool\_type **lessThan**(vec\_type x, vec\_type y) [🔗](#shader-func-lessthan)

> Performs a [component-wise](#shading-componentwise) less-than comparison of two vectors.
>
> param x:
>
> The first vector to compare.
>
> param y:
>
> The second vector to compare.
>
> return:
>
> A boolean vector in which each element `i` is computed as `x[i] < y[i]`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/lessThan.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/lessThan.xhtml)

* * *

vec\_bool\_type **greaterThan**(vec\_type x, vec\_type y) [🔗](#shader-func-greaterthan)

> Performs a [component-wise](#shading-componentwise) greater-than comparison of two vectors.
>
> param x:
>
> The first vector to compare.
>
> param y:
>
> The second vector to compare.
>
> return:
>
> A boolean vector in which each element `i` is computed as `x[i] > y[i]`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/greaterThan.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/greaterThan.xhtml)

* * *

vec\_bool\_type **lessThanEqual**(vec\_type x, vec\_type y) [🔗](#shader-func-lessthanequal)

> Performs a [component-wise](#shading-componentwise) less-than-or-equal comparison of two vectors.
>
> param x:
>
> The first vector to compare.
>
> param y:
>
> The second vector to compare.
>
> return:
>
> A boolean vector in which each element `i` is computed as `x[i] <= y[i]`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/lessThanEqual.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/lessThanEqual.xhtml)

* * *

vec\_bool\_type **greaterThanEqual**(vec\_type x, vec\_type y) [🔗](#shader-func-greaterthanequal)

> Performs a [component-wise](#shading-componentwise) greater-than-or-equal comparison of two vectors.
>
> param x:
>
> The first vector to compare.
>
> param y:
>
> The second vector to compare.
>
> return:
>
> A boolean vector in which each element `i` is computed as `x[i] >= y[i]`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/greaterThanEqual.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/greaterThanEqual.xhtml)

* * *

vec\_bool\_type **equal**(vec\_type x, vec\_type y) [🔗](#shader-func-equal)

> Performs a [component-wise](#shading-componentwise) equal-to comparison of two vectors.
>
> param x:
>
> The first vector to compare.
>
> param y:
>
> The second vector to compare.
>
> return:
>
> A boolean vector in which each element `i` is computed as `x[i] == y[i]`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/equal.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/equal.xhtml)

* * *

vec\_bool\_type **notEqual**(vec\_type x, vec\_type y) [🔗](#shader-func-notequal)

> Performs a [component-wise](#shading-componentwise) not-equal-to comparison of two vectors.
>
> param x:
>
> The first vector for comparison.
>
> param y:
>
> The second vector for comparison.
>
> return:
>
> A boolean vector in which each element `i` is computed as `x[i] != y[i]`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/notEqual.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/notEqual.xhtml)

* * *

bool **any**(vec\_bool\_type x) [🔗](#shader-func-any)

> Returns `true` if any element of a boolean vector is `true`, `false` otherwise.
>
> Functionally equivalent to:
>
> ```
> bool any(bvec x) {     // bvec can be bvec2, bvec3 or bvec4
>     bool result = false;
>     int i;
>     for (i = 0; i < x.length(); ++i) {
>         result |= x[i];
>     }
>     return result;
> }
>
> ```
>
> param x:
>
> The vector to be tested for truth.
>
> return:
>
> True if any element of x is true and false otherwise.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/any.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/any.xhtml)

* * *

bool **all**(vec\_bool\_type x) [🔗](#shader-func-all)

> Returns `true` if all elements of a boolean vector are `true`, `false` otherwise.
>
> Functionally equivalent to:
>
> ```
> bool all(bvec x)       // bvec can be bvec2, bvec3 or bvec4
> {
>     bool result = true;
>     int i;
>     for (i = 0; i < x.length(); ++i)
>     {
>         result &= x[i];
>     }
>     return result;
> }
>
> ```
>
> param x:
>
> The vector to be tested for truth.
>
> return:
>
> `true` if all elements of `x` are `true` and `false` otherwise.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/all.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/all.xhtml)

* * *

vec\_bool\_type **not**(vec\_bool\_type x) [🔗](#shader-func-not)

> Logically invert a boolean vector.
>
> param x:
>
> The vector to be inverted.
>
> return:
>
> A new boolean vector for which each element i is computed as !x\[i\].
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/not.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/not.xhtml)

* * *

## Texture functions

|     |     |     |
| --- | --- | --- |
| ivec2<br>ivec2<br>ivec2<br>ivec3<br>ivec3 | [textureSize](#shader-func-texturesize)(gsampler2D s, int lod)<br>[textureSize](#shader-func-texturesize)(samplerCube s, int lod)<br>[textureSize](#shader-func-texturesize)(samplerCubeArray s, int lod)<br>[textureSize](#shader-func-texturesize)(gsampler2DArray s, int lod)<br>[textureSize](#shader-func-texturesize)(gsampler3D s, int lod) | Get the size of a texture. |
| vec2<br>vec3<br>vec2<br>vec2 | [textureQueryLod](#shader-func-texturequerylod)(gsampler2D s, vec2 p)<br>[textureQueryLod](#shader-func-texturequerylod)(gsampler2DArray s, vec2 p)<br>[textureQueryLod](#shader-func-texturequerylod)(gsampler3D s, vec3 p)<br>[textureQueryLod](#shader-func-texturequerylod)(samplerCube s, vec3 p) | Compute the level-of-detail that would be used to sample from a<br>texture. |
| int<br>int<br>int<br>int | [textureQueryLevels](#shader-func-texturequerylevels)(gsampler2D s)<br>[textureQueryLevels](#shader-func-texturequerylevels)(gsampler2DArray s)<br>[textureQueryLevels](#shader-func-texturequerylevels)(gsampler3D s)<br>[textureQueryLevels](#shader-func-texturequerylevels)(samplerCube s) | Get the number of accessible mipmap levels of a texture. |
| gvec4\_type<br>gvec4\_type<br>gvec4\_type<br>vec4<br>vec4<br>vec4 | [texture](#shader-func-texture)(gsampler2D s, vec2 p \[, float bias\] )<br>[texture](#shader-func-texture)(gsampler2DArray s, vec3 p \[, float bias\] )<br>[texture](#shader-func-texture)(gsampler3D s, vec3 p \[, float bias\] )<br>[texture](#shader-func-texture)(samplerCube s, vec3 p \[, float bias\] )<br>[texture](#shader-func-texture)(samplerCubeArray s, vec4 p \[, float bias\] )<br>[texture](#shader-func-texture)(samplerExternalOES s, vec2 p \[, float bias\] ) | Performs a texture read. |
| gvec4\_type<br>gvec4\_type<br>gvec4\_type | [textureProj](#shader-func-textureproj)(gsampler2D s, vec3 p \[, float bias\] )<br>[textureProj](#shader-func-textureproj)(gsampler2D s, vec4 p \[, float bias\] )<br>[textureProj](#shader-func-textureproj)(gsampler3D s, vec4 p \[, float bias\] ) | Performs a texture read with projection. |
| gvec4\_type<br>gvec4\_type<br>gvec4\_type<br>vec4<br>vec4 | [textureLod](#shader-func-texturelod)(gsampler2D s, vec2 p, float lod)<br>[textureLod](#shader-func-texturelod)(gsampler2DArray s, vec3 p, float lod)<br>[textureLod](#shader-func-texturelod)(gsampler3D s, vec3 p, float lod)<br>[textureLod](#shader-func-texturelod)(samplerCube s, vec3 p, float lod)<br>[textureLod](#shader-func-texturelod)(samplerCubeArray s, vec4 p, float lod) | Performs a texture read at custom mipmap. |
| gvec4\_type<br>gvec4\_type<br>gvec4\_type | [textureProjLod](#shader-func-textureprojlod)(gsampler2D s, vec3 p, float lod)<br>[textureProjLod](#shader-func-textureprojlod)(gsampler2D s, vec4 p, float lod)<br>[textureProjLod](#shader-func-textureprojlod)(gsampler3D s, vec4 p, float lod) | Performs a texture read with projection/LOD. |
| gvec4\_type<br>gvec4\_type<br>gvec4\_type<br>vec4<br>vec4 | [textureGrad](#shader-func-texturegrad)(gsampler2D s, vec2 p, vec2 dPdx, vec2 dPdy)<br>[textureGrad](#shader-func-texturegrad)(gsampler2DArray s, vec3 p, vec2 dPdx, vec2 dPdy)<br>[textureGrad](#shader-func-texturegrad)(gsampler3D s, vec3 p, vec2 dPdx, vec2 dPdy)<br>[textureGrad](#shader-func-texturegrad)(samplerCube s, vec3 p, vec3 dPdx, vec3 dPdy)<br>[textureGrad](#shader-func-texturegrad)(samplerCubeArray s, vec3 p, vec3 dPdx, vec3 dPdy) | Performs a texture read with explicit gradients. |
| gvec4\_type<br>gvec4\_type<br>gvec4\_type | [textureProjGrad](#shader-func-textureprojgrad)(gsampler2D s, vec3 p, vec2 dPdx, vec2 dPdy)<br>[textureProjGrad](#shader-func-textureprojgrad)(gsampler2D s, vec4 p, vec2 dPdx, vec2 dPdy)<br>[textureProjGrad](#shader-func-textureprojgrad)(gsampler3D s, vec4 p, vec3 dPdx, vec3 dPdy) | Performs a texture read with projection/LOD and with explicit |
| gvec4\_type<br>gvec4\_type<br>gvec4\_type | [texelFetch](#shader-func-texelfetch)(gsampler2D s, ivec2 p, int lod)<br>[texelFetch](#shader-func-texelfetch)(gsampler2DArray s, ivec3 p, int lod)<br>[texelFetch](#shader-func-texelfetch)(gsampler3D s, ivec3 p, int lod) | Fetches a single texel using integer coordinates. |
| gvec4\_type<br>gvec4\_type<br>vec4 | [textureGather](#shader-func-texturegather)(gsampler2D s, vec2 p \[, int comps\] )<br>[textureGather](#shader-func-texturegather)(gsampler2DArray s, vec3 p \[, int comps\] )<br>[textureGather](#shader-func-texturegather)(samplerCube s, vec3 p \[, int comps\] ) | Gathers four texels from a texture. |
| vec\_type | [dFdx](#shader-func-dfdx)(vec\_type p) | Derivative with respect to `x` window coordinate,<br>automatic granularity. |
| vec\_type | [dFdxCoarse](#shader-func-dfdxcoarse)(vec\_type p) | Derivative with respect to `x` window coordinate,<br>course granularity.<br>Not available when using the Compatibility renderer. |
| vec\_type | [dFdxFine](#shader-func-dfdxfine)(vec\_type p) | Derivative with respect to `x` window coordinate,<br>fine granularity.<br>Not available when using the Compatibility renderer. |
| vec\_type | [dFdy](#shader-func-dfdy)(vec\_type p) | Derivative with respect to `y` window coordinate,<br>automatic granularity. |
| vec\_type | [dFdyCoarse](#shader-func-dfdycoarse)(vec\_type p) | Derivative with respect to `y` window coordinate,<br>course granularity.<br>Not available when using the Compatibility renderer. |
| vec\_type | [dFdyFine](#shader-func-dfdyfine)(vec\_type p) | Derivative with respect to `y` window coordinate,<br>fine granularity.<br>Not available when using the Compatibility renderer. |
| vec\_type | [fwidth](#shader-func-fwidth)(vec\_type p) | Sum of absolute derivative in `x` and `y`. |
| vec\_type | [fwidthCoarse](#shader-func-fwidthcoarse)(vec\_type p) | Sum of absolute derivative in `x` and `y`.<br>Not available when using the Compatibility renderer. |
| vec\_type | [fwidthFine](#shader-func-fwidthfine)(vec\_type p) | Sum of absolute derivative in `x` and `y`.<br>Not available when using the Compatibility renderer. |

### Texture function descriptions

ivec2 **textureSize**(gsampler2D s, int lod) [🔗](#shader-func-texturesize)

ivec2 **textureSize**(samplerCube s, int lod) [🔗](#shader-func-texturesize)

ivec2 **textureSize**(samplerCubeArray s, int lod) [🔗](#shader-func-texturesize)

ivec3 **textureSize**(gsampler2DArray s, int lod) [🔗](#shader-func-texturesize)

ivec3 **textureSize**(gsampler3D s, int lod) [🔗](#shader-func-texturesize)

> Retrieves the dimensions of a level of a texture.
>
> Returns the dimensions of level `lod` (if present) of the texture bound to sampler.
>
> The components in the return value are filled in, in order, with the width, height and depth
> of the texture. For the array forms, the last component of the return value is
> the number of layers in the texture array.
>
> param s:
>
> The sampler to which the texture whose dimensions to retrieve is bound.
>
> param lod:
>
> The level of the texture for which to retrieve the dimensions.
>
> return:
>
> The dimensions of level `lod` (if present) of the texture bound to sampler.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureSize.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureSize.xhtml)

* * *

vec2 **textureQueryLod**(gsampler2D s, vec2 p) [🔗](#shader-func-texturequerylod)

vec2 **textureQueryLod**(gsampler2DArray s, vec2 p) [🔗](#shader-func-texturequerylod)

vec2 **textureQueryLod**(gsampler3D s, vec3 p) [🔗](#shader-func-texturequerylod)

vec2 **textureQueryLod**(samplerCube s, vec3 p) [🔗](#shader-func-texturequerylod)

> Note
>
> Available only in the fragment shader.
>
> Compute the level-of-detail that would be used to sample from a texture.
>
> The mipmap array(s) that would be accessed is returned in the x component of
> the return value. The computed level-of-detail relative to the base level is
> returned in the y component of the return value.
>
> If called on an incomplete texture, the result of the operation is undefined.
>
> param s:
>
> The sampler to which the texture whose level-of-detail will be queried is bound.
>
> param p:
>
> The texture coordinates at which the level-of-detail will be queried.
>
> return:
>
> See description.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureQueryLod.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureQueryLod.xhtml)

* * *

int **textureQueryLevels**(gsampler2D s) [🔗](#shader-func-texturequerylevels)

int **textureQueryLevels**(gsampler2DArray s) [🔗](#shader-func-texturequerylevels)

int **textureQueryLevels**(gsampler3D s) [🔗](#shader-func-texturequerylevels)

int **textureQueryLevels**(samplerCube s) [🔗](#shader-func-texturequerylevels)

> Compute the number of accessible mipmap levels of a texture.
>
> If called on an incomplete texture, or if no texture is associated with sampler, `0` is returned.
>
> param s:
>
> The sampler to which the texture whose mipmap level count will be queried is bound.
>
> return:
>
> The number of accessible mipmap levels in the texture, or `0`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureQueryLevels.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureQueryLevels.xhtml)

* * *

gvec4\_type **texture**(gsampler2D s, vec2 p \[, float bias\] ) [🔗](#shader-func-texture)

gvec4\_type **texture**(gsampler2DArray s, vec3 p \[, float bias\] ) [🔗](#shader-func-texture)

gvec4\_type **texture**(gsampler3D s, vec3 p \[, float bias\] ) [🔗](#shader-func-texture)

vec4 **texture**(samplerCube s, vec3 p \[, float bias\] ) [🔗](#shader-func-texture)

vec4 **texture**(samplerCubeArray s, vec4 p \[, float bias\] ) [🔗](#shader-func-texture)

vec4 **texture**(samplerExternalOES s, vec2 p \[, float bias\] ) [🔗](#shader-func-texture)

> Retrieves texels from a texture.
>
> Samples texels from the texture bound to `s` at texture coordinate `p`. An optional bias, specified in `bias` is
> included in the level-of-detail computation that is used to choose mipmap(s) from which to sample.
>
> For shadow forms, the last component of `p` is used as Dsub and the array layer is specified in the second to last
> component of `p`. (The second component of `p` is unused for 1D shadow lookups.)
>
> For non-shadow variants, the array layer comes from the last component of P.
>
> param s:
>
> The sampler to which the texture from which texels will be retrieved is bound.
>
> param p:
>
> The texture coordinates at which texture will be sampled.
>
> param bias:
>
> An optional bias to be applied during level-of-detail computation.
>
> return:
>
> A texel.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/texture.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/texture.xhtml)

* * *

gvec4\_type **textureProj**(gsampler2D s, vec3 p \[, float bias\] ) [🔗](#shader-func-textureproj)

gvec4\_type **textureProj**(gsampler2D s, vec4 p \[, float bias\] ) [🔗](#shader-func-textureproj)

gvec4\_type **textureProj**(gsampler3D s, vec4 p \[, float bias\] ) [🔗](#shader-func-textureproj)

> Perform a texture lookup with projection.
>
> The texture coordinates consumed from `p`, not including the last component of `p`, are
> divided by the last component of `p`. The resulting 3rd component of `p` in the shadow
> forms is used as Dref. After these values are computed, the texture lookup proceeds as in texture.
>
> param s:
>
> The sampler to which the texture from which texels will be retrieved is bound.
>
> param p:
>
> The texture coordinates at which texture will be sampled.
>
> param bias:
>
> Optional bias to be applied during level-of-detail computation.
>
> return:
>
> A texel.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureProj.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureProj.xhtml)

* * *

gvec4\_type **textureLod**(gsampler2D s, vec2 p, float lod) [🔗](#shader-func-texturelod)

gvec4\_type **textureLod**(gsampler2DArray s, vec3 p, float lod) [🔗](#shader-func-texturelod)

gvec4\_type **textureLod**(gsampler3D s, vec3 p, float lod) [🔗](#shader-func-texturelod)

vec4 **textureLod**(samplerCube s, vec3 p, float lod) [🔗](#shader-func-texturelod)

vec4 **textureLod**(samplerCubeArray s, vec4 p, float lod) [🔗](#shader-func-texturelod)

> Performs a texture lookup at coordinate `p` from the texture bound to sampler with
> an explicit level-of-detail as specified in `lod`. `lod` specifies λbase and sets the
> partial derivatives as follows:
>
> ```
> δu/δx=0, δv/δx=0, δw/δx=0
> δu/δy=0, δv/δy=0, δw/δy=0
>
> ```
>
> param s:
>
> The sampler to which the texture from which texels will be retrieved is bound.
>
> param p:
>
> The texture coordinates at which texture will be sampled.
>
> param lod:
>
> The explicit level-of-detail.
>
> return:
>
> A texel.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureLod.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureLod.xhtml)

* * *

gvec4\_type **textureProjLod**(gsampler2D s, vec3 p, float lod) [🔗](#shader-func-textureprojlod)

gvec4\_type **textureProjLod**(gsampler2D s, vec4 p, float lod) [🔗](#shader-func-textureprojlod)

gvec4\_type **textureProjLod**(gsampler3D s, vec4 p, float lod) [🔗](#shader-func-textureprojlod)

> Performs a texture lookup with projection from an explicitly specified level-of-detail.
>
> The texture coordinates consumed from P, not including the last component of `p`, are
> divided by the last component of `p`. The resulting 3rd component of `p` in the shadow
> forms is used as Dref. After these values are computed, the texture lookup proceeds as in
> textureLod<shader\_func\_textureLod>, with `lod` used to specify the level-of-detail from
> which the texture will be sampled.
>
> param s:
>
> The sampler to which the texture from which texels will be retrieved is bound.
>
> param p:
>
> The texture coordinates at which texture will be sampled.
>
> param lod:
>
> The explicit level-of-detail from which to fetch texels.
>
> return:
>
> a texel
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureProjLod.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureProjLod.xhtml)

* * *

gvec4\_type **textureGrad**(gsampler2D s, vec2 p, vec2 dPdx, vec2 dPdy) [🔗](#shader-func-texturegrad)

gvec4\_type **textureGrad**(gsampler2DArray s, vec3 p, vec2 dPdx, vec2 dPdy) [🔗](#shader-func-texturegrad)

gvec4\_type **textureGrad**(gsampler3D s, vec3 p, vec2 dPdx, vec2 dPdy) [🔗](#shader-func-texturegrad)

vec4 **textureGrad**(samplerCube s, vec3 p, vec3 dPdx, vec3 dPdy) [🔗](#shader-func-texturegrad)

vec4 **textureGrad**(samplerCubeArray s, vec3 p, vec3 dPdx, vec3 dPdy) [🔗](#shader-func-texturegrad)

> Performs a texture lookup at coordinate `p` from the texture bound to sampler with explicit texture coordinate gradiends as specified in `dPdx` and `dPdy`. Set:
>
> - `δs/δx=δp/δx` for a 1D texture, `δp.s/δx` otherwise
>
> - `δs/δy=δp/δy` for a 1D texture, `δp.s/δy` otherwise
>
> - `δt/δx=0.0` for a 1D texture, `δp.t/δx` otherwise
>
> - `δt/δy=0.0` for a 1D texture, `δp.t/δy` otherwise
>
> - `δr/δx=0.0` for a 1D or 2D texture, `δp.p/δx` otherwise
>
> - `δr/δy=0.0` for a 1D or 2D texture, `δp.p/δy` otherwise
>
>
> For the cube version, the partial derivatives of `p` are assumed to be in the coordinate system used before texture coordinates are projected onto the appropriate cube face.
>
> param s:
>
> The sampler to which the texture from which texels will be retrieved is bound.
>
> param p:
>
> The texture coordinates at which texture will be sampled.
>
> param dPdx:
>
> The partial derivative of P with respect to window x.
>
> param dPdy:
>
> The partial derivative of P with respect to window y.
>
> return:
>
> A texel.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureGrad.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureGrad.xhtml)

* * *

gvec4\_type **textureProjGrad**(gsampler2D s, vec3 p, vec2 dPdx, vec2 dPdy) [🔗](#shader-func-textureprojgrad)

gvec4\_type **textureProjGrad**(gsampler2D s, vec4 p, vec2 dPdx, vec2 dPdy) [🔗](#shader-func-textureprojgrad)

gvec4\_type **textureProjGrad**(gsampler3D s, vec4 p, vec3 dPdx, vec3 dPdy) [🔗](#shader-func-textureprojgrad)

> Perform a texture lookup with projection and explicit gradients.
>
> The texture coordinates consumed from `p`, not including the last component of `p`, are divided by the last component of `p`.
> After these values are computed, the texture lookup proceeds as in textureGrad<shader\_func\_textureGrad>, passing `dPdx` and `dPdy` as gradients.
>
> param s:
>
> The sampler to which the texture from which texels will be retrieved is bound.
>
> param p:
>
> The texture coordinates at which texture will be sampled.
>
> param dPdx:
>
> The partial derivative of `p` with respect to window x.
>
> param dPdy:
>
> The partial derivative of `p` with respect to window y.
>
> return:
>
> A texel.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureProjGrad.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureProjGrad.xhtml)

* * *

gvec4\_type **texelFetch**(gsampler2D s, ivec2 p, int lod) [🔗](#shader-func-texelfetch)

gvec4\_type **texelFetch**(gsampler2DArray s, ivec3 p, int lod) [🔗](#shader-func-texelfetch)

gvec4\_type **texelFetch**(gsampler3D s, ivec3 p, int lod) [🔗](#shader-func-texelfetch)

> Performs a lookup of a single texel from texture coordinate `p` in the texture bound to sampler.
>
> param s:
>
> The sampler to which the texture from which texels will be retrieved is bound.
>
> param p:
>
> The texture coordinates at which texture will be sampled.
>
> param lod:
>
> Specifies the level-of-detail within the texture from which the texel will be fetched.
>
> return:
>
> A texel.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/texelFetch.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/texelFetch.xhtml)

* * *

gvec4\_type **textureGather**(gsampler2D s, vec2 p \[, int comps\] ) [🔗](#shader-func-texturegather)

gvec4\_type **textureGather**(gsampler2DArray s, vec3 p \[, int comps\] ) [🔗](#shader-func-texturegather)

vec4 **textureGather**(samplerCube s, vec3 p \[, int comps\] ) [🔗](#shader-func-texturegather)

> Gathers four texels from a texture.
>
> Returns the value:
>
> ```
> vec4(Sample_i0_j1(p, base).comps,
>      Sample_i1_j1(p, base).comps,
>      Sample_i1_j0(p, base).comps,
>      Sample_i0_j0(p, base).comps);
>
> ```
>
> param s:
>
> The sampler to which the texture from which texels will be retrieved is bound.
>
> param p:
>
> The texture coordinates at which texture will be sampled.
>
> param comps:
>
> _optional_ the component of the source texture (0 -> x, 1 -> y, 2 -> z, 3 -> w) that will be used to generate the resulting vector. Zero if not specified.
>
> return:
>
> The gathered texel.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureGather.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureGather.xhtml)

* * *

vec\_type **dFdx**(vec\_type p) [🔗](#shader-func-dfdx)

> Note
>
> Available only in the fragment shader.
>
> Returns the partial derivative of `p` with respect to the window x coordinate using local differencing.
>
> Returns either [dFdxCoarse](#shader-func-dfdxcoarse) or [dFdxFine](#shader-func-dfdxfine).
> The implementation may choose which calculation to perform based upon factors
> such as performance or the value of the API `GL_FRAGMENT_SHADER_DERIVATIVE_HINT` hint.
>
> Warning
>
> Expressions that imply higher order derivatives such as `dFdx(dFdx(n))`
> have undefined results, as do mixed-order derivatives such as `dFdx(dFdy(n))`.
>
> param p:
>
> The expression of which to take the partial derivative.
>
> Note
>
> It is assumed that the expression `p` is continuous and therefore expressions evaluated via non-uniform control flow may be undefined.
>
> return:
>
> The partial derivative of `p`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/dFdx.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/dFdx.xhtml)

* * *

vec\_type **dFdxCoarse**(vec\_type p) [🔗](#shader-func-dfdxcoarse)

> Note
>
> Available only in the fragment shader.
> Not available when using the Compatibility renderer.
>
> Returns the partial derivative of `p` with respect to the window x coordinate.
>
> Calculates derivatives using local differencing based on the value of `p`
> for the current fragment's neighbors, and will possibly, but not necessarily,
> include the value for the current fragment. That is, over a given area, the
> implementation can compute derivatives in fewer unique locations than would
> be allowed for the corresponding [dFdxFine](#shader-func-dfdxfine) function.
>
> Warning
>
> Expressions that imply higher order derivatives such as `dFdx(dFdx(n))`
> have undefined results, as do mixed-order derivatives such as `dFdx(dFdy(n))`.
>
> param p:
>
> The expression of which to take the partial derivative.
>
> Note
>
> It is assumed that the expression `p` is continuous and therefore
> expressions evaluated via non-uniform control flow may be undefined.
>
> return:
>
> The partial derivative of `p`.
>
> [https://registry.khronos.org/OpenGL-Refpages/gl4/html/dFdx.xhtml](https://registry.khronos.org/OpenGL-Refpages/gl4/html/dFdx.xhtml)

* * *

vec\_type **dFdxFine**(vec\_type p) [🔗](#shader-func-dfdxfine)

> Note
>
> Available only in the fragment shader.
> Not available when using the Compatibility renderer.
>
> Returns the partial derivative of `p` with respect to the window x coordinate.
>
> Calculates derivatives using local differencing based on the value of `p` for the current fragment and its immediate neighbor(s).
>
> Warning
>
> Expressions that imply higher order derivatives such as `dFdx(dFdx(n))`
> have undefined results, as do mixed-order derivatives such as `dFdx(dFdy(n))`.
>
> param p:
>
> The expression of which to take the partial derivative.
>
> Note
>
> It is assumed that the expression `p` is continuous and therefore expressions evaluated via non-uniform control flow may be undefined.
>
> return:
>
> The partial derivative of `p`.
>
> [https://registry.khronos.org/OpenGL-Refpages/gl4/html/dFdx.xhtml](https://registry.khronos.org/OpenGL-Refpages/gl4/html/dFdx.xhtml)

* * *

vec\_type **dFdy**(vec\_type p) [🔗](#shader-func-dfdy)

> Note
>
> Available only in the fragment shader.
>
> Returns the partial derivative of `p` with respect to the window y coordinate using local differencing.
>
> Returns either [dFdyCoarse](#shader-func-dfdycoarse) or [dFdyFine](#shader-func-dfdyfine).
> The implementation may choose which calculation to perform based upon factors
> such as performance or the value of the API `GL_FRAGMENT_SHADER_DERIVATIVE_HINT` hint.
>
> Warning
>
> Expressions that imply higher order derivatives such as `dFdx(dFdx(n))`
> have undefined results, as do mixed-order derivatives such as `dFdx(dFdy(n))`.
>
> param p:
>
> The expression of which to take the partial derivative.
>
> Note
>
> It is assumed that the expression `p` is continuous and therefore expressions evaluated via non-uniform control flow may be undefined.
>
> return:
>
> The partial derivative of `p`.
>
> [https://registry.khronos.org/OpenGL-Refpages/gl4/html/dFdx.xhtml](https://registry.khronos.org/OpenGL-Refpages/gl4/html/dFdx.xhtml)

* * *

vec\_type **dFdyCoarse**(vec\_type p) [🔗](#shader-func-dfdycoarse)

> Note
>
> Available only in the fragment shader.
> Not available when using the Compatibility renderer.
>
> Returns the partial derivative of `p` with respect to the window y coordinate.
>
> Calculates derivatives using local differencing based on the value of `p` for the current fragment's neighbors, and will possibly,
> but not necessarily, include the value for the current fragment. That is, over a given area, the implementation can compute derivatives in fewer unique locations than
> would be allowed for the corresponding dFdyFine and dFdyFine functions.
>
> Warning
>
> Expressions that imply higher order derivatives such as `dFdx(dFdx(n))` have undefined results, as do mixed-order derivatives such as `dFdx(dFdy(n))`.
>
> param p:
>
> The expression of which to take the partial derivative.
>
> Note
>
> It is assumed that the expression `p` is continuous and therefore expressions evaluated via non-uniform control flow may be undefined.
>
> return:
>
> The partial derivative of `p`.
>
> [https://registry.khronos.org/OpenGL-Refpages/gl4/html/dFdx.xhtml](https://registry.khronos.org/OpenGL-Refpages/gl4/html/dFdx.xhtml)

* * *

vec\_type **dFdyFine**(vec\_type p) [🔗](#shader-func-dfdyfine)

> Note
>
> Available only in the fragment shader.
> Not available when using the Compatibility renderer.
>
> Returns the partial derivative of `p` with respect to the window y coordinate.
>
> Calculates derivatives using local differencing based on the value of `p` for the current fragment and its immediate neighbor(s).
>
> Warning
>
> Expressions that imply higher order derivatives such as `dFdx(dFdx(n))` have undefined results, as do mixed-order derivatives such as `dFdx(dFdy(n))`.
>
> param p:
>
> The expression of which to take the partial derivative.
>
> Note
>
> It is assumed that the expression `p` is continuous and therefore expressions evaluated via non-uniform control flow may be undefined.
>
> return:
>
> The partial derivative of `p`.
>
> [https://registry.khronos.org/OpenGL-Refpages/gl4/html/dFdx.xhtml](https://registry.khronos.org/OpenGL-Refpages/gl4/html/dFdx.xhtml)

* * *

vec\_type **fwidth**(vec\_type p) [🔗](#shader-func-fwidth)

> Returns the sum of the absolute value of derivatives in x and y.
>
> Uses local differencing for the input argument `p`.
>
> Equivalent to `abs(dFdx(p)) + abs(dFdy(p))`.
>
> param p:
>
> The expression of which to take the partial derivative.
>
> return:
>
> The partial derivative.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fwidth.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fwidth.xhtml)

* * *

vec\_type **fwidthCoarse**(vec\_type p) [🔗](#shader-func-fwidthcoarse)

> Note
>
> Available only in the fragment shader.
> Not available when using the Compatibility renderer.
>
> Returns the sum of the absolute value of derivatives in x and y.
>
> Uses local differencing for the input argument p.
>
> Equivalent to `abs(dFdxCoarse(p)) + abs(dFdyCoarse(p))`.
>
> param p:
>
> The expression of which to take the partial derivative.
>
> return:
>
> The partial derivative.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fwidth.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fwidth.xhtml)

* * *

vec\_type **fwidthFine**(vec\_type p) [🔗](#shader-func-fwidthfine)

> Note
>
> Available only in the fragment shader.
> Not available when using the Compatibility renderer.
>
> Returns the sum of the absolute value of derivatives in x and y.
>
> Uses local differencing for the input argument p.
>
> Equivalent to `abs(dFdxFine(p)) + abs(dFdyFine(p))`.
>
> param p:
>
> The expression of which to take the partial derivative.
>
> return:
>
> The partial derivative.
>
> [https://registry.khronos.org/OpenGL-Refpages/gl4/html/fwidth.xhtml](https://registry.khronos.org/OpenGL-Refpages/gl4/html/fwidth.xhtml)

* * *

## Packing and unpacking functions

These functions convert floating-point numbers into various sized integers and
then pack those integers into a single 32bit unsigned integer. The 'unpack'
functions perform the opposite operation, returning the original
floating-point numbers.

|     |     |     |
| --- | --- | --- |
| uint<br>vec2 | [packHalf2x16](#shader-func-packhalf2x16)(vec2 v)<br>[unpackHalf2x16](#shader-func-unpackhalf2x16)(uint v) | Convert two 32-bit floats to 16 bit floats and pack them. |
| uint<br>vec2 | [packUnorm2x16](#shader-func-packunorm2x16)(vec2 v)<br>[unpackUnorm2x16](#shader-func-unpackunorm2x16)(uint v) | Convert two normalized (range 0..1) 32-bit floats<br>to 16-bit unsigned ints and pack them. |
| uint<br>vec2 | [packSnorm2x16](#shader-func-packsnorm2x16)(vec2 v)<br>[unpackSnorm2x16](#shader-func-unpacksnorm2x16)(uint v) | Convert two signed normalized (range -1..1) 32-bit floats<br>to 16-bit signed ints and pack them. |
| uint<br>vec4 | [packUnorm4x8](#shader-func-packunorm4x8)(vec4 v)<br>[unpackUnorm4x8](#shader-func-unpackunorm4x8)(uint v) | Convert four normalized (range 0..1) 32-bit floats<br>into 8-bit unsigned ints and pack them. |
| uint<br>vec4 | [packSnorm4x8](#shader-func-packsnorm4x8)(vec4 v)<br>[unpackSnorm4x8](#shader-func-unpacksnorm4x8)(uint v) | Convert four signed normalized (range -1..1) 32-bit floats<br>into 8-bit signed ints and pack them. |

### Packing and unpacking function descriptions

uint **packHalf2x16**(vec2 v) [🔗](#shader-func-packhalf2x16)

> Converts two 32-bit floating-point quantities to 16-bit floating-point
> quantities and packs them into a single 32-bit integer.
>
> Returns an unsigned integer obtained by converting the components of a two-component floating-point vector to
> the 16-bit floating-point representation found in the OpenGL Specification, and then packing these two
> 16-bit integers into a 32-bit unsigned integer. The first vector component specifies the 16 least-significant
> bits of the result; the second component specifies the 16 most-significant bits.
>
> param v:
>
> A vector of two 32-bit floating-point values that are to be converted to 16-bit representation and packed into the result.
>
> return:
>
> The packed value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/packHalf2x16.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/packHalf2x16.xhtml)

* * *

vec2 **unpackHalf2x16**(uint v) [🔗](#shader-func-unpackhalf2x16)

> Inverse of [packHalf2x16](#shader-func-packhalf2x16).
>
> Unpacks a 32-bit integer into two 16-bit floating-point values, converts them to 32-bit floating-point values, and puts them into a vector.
> The first component of the vector is obtained from the 16 least-significant bits of `v`; the second component is obtained from the
> 16 most-significant bits of `v`.
>
> param v:
>
> A single 32-bit unsigned integer containing 2 packed 16-bit floating-point values.
>
> return:
>
> Two unpacked floating-point values.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/unpackHalf2x16.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/unpackHalf2x16.xhtml)

* * *

uint **packUnorm2x16**(vec2 v) [🔗](#shader-func-packunorm2x16)

> Pack floating-point values into an unsigned integer.
>
> Converts each component of the normalized floating-point value v into 16-bit integer values and then packs the results into a 32-bit unsigned integer.
>
> The conversion for component c of `v` to fixed-point is performed as follows:
>
> ```
> round(clamp(c, 0.0, 1.0) * 65535.0)
>
> ```
>
> The first component of the vector will be written to the least significant bits of the output; the last component will be written to the most significant bits.
>
> param v:
>
> A vector of values to be packed into an unsigned integer.
>
> return:
>
> Unsigned 32 bit integer containing the packed encoding of the vector.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/packUnorm.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/packUnorm.xhtml)

* * *

vec2 **unpackUnorm2x16**(uint v) [🔗](#shader-func-unpackunorm2x16)

> Unpack floating-point values from an unsigned integer.
>
> Unpack single 32-bit unsigned integers into a pair of 16-bit unsigned integers.
> Then, each component is converted to a normalized floating-point value to generate the returned two-component vector.
>
> The conversion for unpacked fixed point value f to floating-point is performed as follows:
>
> > f / 65535.0
>
> The first component of the returned vector will be extracted from the least significant bits of the input; the last component will be extracted from the most significant bits.
>
> param v:
>
> An unsigned integer containing packed floating-point values.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/unpackUnorm.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/unpackUnorm.xhtml)

* * *

uint **packSnorm2x16**(vec2 v) [🔗](#shader-func-packsnorm2x16)

> Packs floating-point values into an unsigned integer.
>
> Convert each component of the normalized floating-point value `v` into 16-bit integer values and then packs the results into a 32-bit unsigned integer.
>
> The conversion for component c of `v` to fixed-point is performed as follows:
>
> ```
> round(clamp(c, -1.0, 1.0) * 32767.0)
>
> ```
>
> The first component of the vector will be written to the least significant bits of the output; the last component will be written to the most significant bits.
>
> param v:
>
> A vector of values to be packed into an unsigned integer.
>
> return:
>
> Unsigned 32 bit integer containing the packed encoding of the vector.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/packUnorm.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/packUnorm.xhtml)

* * *

vec2 **unpackSnorm2x16**(uint v) [🔗](#shader-func-unpacksnorm2x16)

> Unpacks floating-point values from an unsigned integer.
>
> Unpacks single 32-bit unsigned integers into a pair of 16-bit signed integers.
> Then, each component is converted to a normalized floating-point value to generate the returned two-component vector.
>
> The conversion for unpacked fixed point value f to floating-point is performed as follows:
>
> > clamp(f / 32727.0, -1.0, 1.0)
>
> The first component of the returned vector will be extracted from the least significant bits of the input; the last component will be extracted from the most significant bits.
>
> param v:
>
> An unsigned integer containing packed floating-point values.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/unpackUnorm.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/unpackUnorm.xhtml)

* * *

uint **packUnorm4x8**(vec4 v) [🔗](#shader-func-packunorm4x8)

> Packs floating-point values into an unsigned integer.
>
> Converts each component of the normalized floating-point value `v` into 16-bit integer values and then packs the results into a 32-bit unsigned integer.
>
> The conversion for component c of `v` to fixed-point is performed as follows:
>
> ```
> round(clamp(c, 0.0, 1.0) * 255.0)
>
> ```
>
> The first component of the vector will be written to the least significant bits of the output; the last component will be written to the most significant bits.
>
> param v:
>
> A vector of values to be packed into an unsigned integer.
>
> return:
>
> Unsigned 32 bit integer containing the packed encoding of the vector.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/packUnorm.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/packUnorm.xhtml)

* * *

vec4 **unpackUnorm4x8**(uint v) [🔗](#shader-func-unpackunorm4x8)

> Unpacks floating-point values from an unsigned integer.
>
> Unpacks single 32-bit unsigned integers into four 8-bit unsigned integers.
> Then, each component is converted to a normalized floating-point value to generate the returned four-component vector.
>
> The conversion for unpacked fixed point value f to floating-point is performed as follows:
>
> > f / 255.0
>
> The first component of the returned vector will be extracted from the least significant bits of the input; the last component will be extracted from the most significant bits.
>
> param v:
>
> An unsigned integer containing packed floating-point values.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/unpackUnorm.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/unpackUnorm.xhtml)

* * *

uint **packSnorm4x8**(vec4 v) [🔗](#shader-func-packsnorm4x8)

> Packs floating-point values into an unsigned integer.
>
> Convert each component of the normalized floating-point value `v` into 16-bit integer values and then packs the results into a 32-bit unsigned integer.
>
> The conversion for component c of `v` to fixed-point is performed as follows:
>
> ```
> round(clamp(c, -1.0, 1.0) * 127.0)
>
> ```
>
> The first component of the vector will be written to the least significant bits of the output; the last component will be written to the most significant bits.
>
> param v:
>
> A vector of values to be packed into an unsigned integer.
>
> return:
>
> Unsigned 32 bit integer containing the packed encoding of the vector.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/packUnorm.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/packUnorm.xhtml)

* * *

vec4 **unpackSnorm4x8**(uint v) [🔗](#shader-func-unpacksnorm4x8)

> Unpack floating-point values from an unsigned integer.
>
> Unpack single 32-bit unsigned integers into four 8-bit signed integers.
> Then, each component is converted to a normalized floating-point value to generate the returned four-component vector.
>
> The conversion for unpacked fixed point value f to floating-point is performed as follows:
>
> > clamp(f / 127.0, -1.0, 1.0)
>
> The first component of the returned vector will be extracted from the least significant bits of the input; the last component will be extracted from the most significant bits.
>
> param v:
>
> An unsigned integer containing packed floating-point values.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/unpackUnorm.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/unpackUnorm.xhtml)

* * *

## Bitwise functions

|     |     |     |
| --- | --- | --- |
| vec\_int\_type<br>vec\_uint\_type | [bitfieldExtract](#shader-func-bitfieldextract)(vec\_int\_type value, int offset, int bits)<br>[bitfieldExtract](#shader-func-bitfieldextract)(vec\_uint\_type value, int offset, int bits) | Extracts a range of bits from an integer. |
| vec\_int\_type<br>vec\_uint\_type | [bitfieldInsert](#shader-func-bitfieldinsert)(vec\_int\_type base, vec\_int\_type insert, int offset, int bits)<br>[bitfieldInsert](#shader-func-bitfieldinsert)(vec\_uint\_type base, vec\_uint\_type insert, int offset, int bits) | Insert a range of bits into an integer. |
| vec\_int\_type<br>vec\_uint\_type | [bitfieldReverse](#shader-func-bitfieldreverse)(vec\_int\_type value)<br>[bitfieldReverse](#shader-func-bitfieldreverse)(vec\_uint\_type value) | Reverse the order of bits in an integer. |
| vec\_int\_type<br>vec\_uint\_type | [bitCount](#shader-func-bitcount)(vec\_int\_type value)<br>[bitCount](#shader-func-bitcount)(vec\_uint\_type value) | Counts the number of 1 bits in an integer. |
| vec\_int\_type<br>vec\_uint\_type | [findLSB](#shader-func-findlsb)(vec\_int\_type value)<br>[findLSB](#shader-func-findlsb)(vec\_uint\_type value) | Find the index of the least significant bit set to 1 in an integer. |
| vec\_int\_type<br>vec\_uint\_type | [findMSB](#shader-func-findmsb)(vec\_int\_type value)<br>[findMSB](#shader-func-findmsb)(vec\_uint\_type value) | Find the index of the most significant bit set to 1 in an integer. |
| void<br>void | [imulExtended](#shader-func-imulextended)(vec\_int\_type x, vec\_int\_type y, out vec\_int\_type msb, out vec\_int\_type lsb)<br>[umulExtended](#shader-func-umulextended)(vec\_uint\_type x, vec\_uint\_type y, out vec\_uint\_type msb, out vec\_uint\_type lsb) | Multiplies two 32-bit numbers and produce a 64-bit result. |
| vec\_uint\_type | [uaddCarry](#shader-func-uaddcarry)(vec\_uint\_type x, vec\_uint\_type y, out vec\_uint\_type carry) | Adds two unsigned integers and generates carry. |
| vec\_uint\_type | [usubBorrow](#shader-func-usubborrow)(vec\_uint\_type x, vec\_uint\_type y, out vec\_uint\_type borrow) | Subtracts two unsigned integers and generates borrow. |
| vec\_type | [ldexp](#shader-func-ldexp)(vec\_type x, out vec\_int\_type exp) | Assemble a floating-point number from a value and exponent. |
| vec\_type | [frexp](#shader-func-frexp)(vec\_type x, out vec\_int\_type exp) | Splits a floating-point number ( `x`) into significand integral<br>components |

### Bitwise function descriptions

vec\_int\_type **bitfieldExtract**(vec\_int\_type value, int offset, int bits) [🔗](#shader-func-bitfieldextract)

> Extracts a subset of the bits of `value` and returns it in the least significant bits of the result.
> The range of bits extracted is `[offset, offset + bits - 1]`.
>
> The most significant bits of the result will be set to zero.
>
> Note
>
> If bits is zero, the result will be zero.
>
> Warning
>
> The result will be undefined if:
>
> - offset or bits is negative.
>
> - if the sum of offset and bits is greater than the number of bits used to store the operand.
>
>
> param value:
>
> The integer from which to extract bits.
>
> param offset:
>
> The index of the first bit to extract.
>
> param bits:
>
> The number of bits to extract.
>
> return:
>
> Integer with the requested bits.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/bitfieldExtract.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/bitfieldExtract.xhtml)

* * *

vec\_uint\_type **bitfieldExtract**(vec\_uint\_type value, int offset, int bits) [🔗](#shader-func-bitfieldextract)

> [Component-wise Function](#shading-componentwise).
>
> Extracts a subset of the bits of `value` and returns it in the least significant bits of the result.
> The range of bits extracted is `[offset, offset + bits - 1]`.
>
> The most significant bits will be set to the value of `offset + base - 1` (i.e., it is sign extended to the width of the return type).
>
> Note
>
> If bits is zero, the result will be zero.
>
> Warning
>
> The result will be undefined if:
>
> - offset or bits is negative.
>
> - if the sum of offset and bits is greater than the number of bits used to store the operand.
>
>
> param value:
>
> The integer from which to extract bits.
>
> param offset:
>
> The index of the first bit to extract.
>
> param bits:
>
> The number of bits to extract.
>
> return:
>
> Integer with the requested bits.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/bitfieldExtract.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/bitfieldExtract.xhtml)

* * *

vec\_uint\_type **bitfieldExtract**(vec\_uint\_type value, int offset, int bits) [🔗](#shader-func-bitfieldinsert)

vec\_uint\_type **bitfieldInsert**(vec\_uint\_type base, vec\_uint\_type insert, int offset, int bits) [🔗](#shader-func-bitfieldinsert)

> [Component-wise Function](#shading-componentwise).
>
> Inserts the `bits` least significant bits of `insert` into `base` at offset `offset`.
>
> The returned value will have bits \[offset, offset + bits + 1\] taken from \[0, bits - 1\] of `insert` and
> all other bits taken directly from the corresponding bits of base.
>
> Note
>
> If bits is zero, the result will be the original value of base.
>
> Warning
>
> The result will be undefined if:
>
> - offset or bits is negative.
>
> - if the sum of offset and bits is greater than the number of bits used to store the operand.
>
>
> param base:
>
> The integer into which to insert `insert`.
>
> param insert:
>
> The value of the bits to insert.
>
> param offset:
>
> The index of the first bit to insert.
>
> param bits:
>
> The number of bits to insert.
>
> return:
>
> `base` with inserted bits.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/bitfieldInsert.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/bitfieldInsert.xhtml)

* * *

vec\_int\_type **bitfieldReverse**(vec\_int\_type value) [🔗](#shader-func-bitfieldreverse)

vec\_uint\_type **bitfieldReverse**(vec\_uint\_type value) [🔗](#shader-func-bitfieldreverse)

> [Component-wise Function](#shading-componentwise).
>
> Reverse the order of bits in an integer.
>
> The bit numbered `n` will be taken from bit `(bits - 1) - n` of `value`, where bits is the total number of bits used to represent `value`.
>
> param value:
>
> The value whose bits to reverse.
>
> return:
>
> `value` but with its bits reversed.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/bitfieldReverse.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/bitfieldReverse.xhtml)

* * *

vec\_int\_type **bitCount**(vec\_int\_type value) [🔗](#shader-func-bitcount)

vec\_uint\_type **bitCount**(vec\_uint\_type value) [🔗](#shader-func-bitcount)

> [Component-wise Function](#shading-componentwise).
>
> Counts the number of 1 bits in an integer.
>
> param value:
>
> The value whose bits to count.
>
> return:
>
> The number of bits that are set to 1 in the binary representation of `value`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/bitCount.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/bitCount.xhtml)

* * *

vec\_int\_type **findLSB**(vec\_int\_type value) [🔗](#shader-func-findlsb)

vec\_uint\_type **findLSB**(vec\_uint\_type value) [🔗](#shader-func-findlsb)

> [Component-wise Function](#shading-componentwise).
>
> Find the index of the least significant bit set to `1`.
>
> Note
>
> If `value` is zero, `-1` will be returned.
>
> param value:
>
> The value whose bits to scan.
>
> return:
>
> The bit number of the least significant bit that is set to 1 in the binary representation of value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/findLSB.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/findLSB.xhtml)

* * *

vec\_int\_type **findMSB**(vec\_int\_type value) [🔗](#shader-func-findmsb)

vec\_uint\_type **findMSB**(vec\_uint\_type value) [🔗](#shader-func-findmsb)

> [Component-wise Function](#shading-componentwise).
>
> Find the index of the most significant bit set to 1.
>
> Note
>
> For signed integer types, the sign bit is checked first and then:
>
> - For positive integers, the result will be the bit number of the most significant bit that is set to 1.
>
> - For negative integers, the result will be the bit number of the most significant bit set to 0.
>
>
> Note
>
> For a value of zero or negative 1, -1 will be returned.
>
> param value:
>
> The value whose bits to scan.
>
> return:
>
> The bit number of the most significant bit that is set to 1 in the binary representation of value.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/findMSB.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/findMSB.xhtml)

* * *

void **imulExtended**(vec\_int\_type x, vec\_int\_type y, out vec\_int\_type msb, out vec\_int\_type lsb) [🔗](#shader-func-imulextended)

> [Component-wise Function](#shading-componentwise).
>
> Perform 32-bit by 32-bit signed multiplication to produce a 64-bit result.
>
> The 32 least significant bits of this product are returned in `lsb` and the 32 most significant bits are returned in `msb`.
>
> param x:
>
> The first multiplicand.
>
> param y:
>
> The second multiplicand.
>
> param msb:
>
> The variable to receive the most significant word of the product.
>
> param lsb:
>
> The variable to receive the least significant word of the product.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/umulExtended.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/umulExtended.xhtml)

* * *

void **umulExtended**(vec\_uint\_type x, vec\_uint\_type y, out vec\_uint\_type msb, out vec\_uint\_type lsb) [🔗](#shader-func-umulextended)

> [Component-wise Function](#shading-componentwise).
>
> Perform 32-bit by 32-bit unsigned multiplication to produce a 64-bit result.
>
> The 32 least significant bits of this product are returned in `lsb` and the 32 most significant bits are returned in `msb`.
>
> param x:
>
> The first multiplicand.
>
> param y:
>
> The second multiplicand.
>
> param msb:
>
> The variable to receive the most significant word of the product.
>
> param lsb:
>
> The variable to receive the least significant word of the product.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/umulExtended.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/umulExtended.xhtml)

* * *

vec\_uint\_type **uaddCarry**(vec\_uint\_type x, vec\_uint\_type y, out vec\_uint\_type carry) [🔗](#shader-func-uaddcarry)

> [Component-wise Function](#shading-componentwise).
>
> Add unsigned integers and generate carry.
>
> adds two 32-bit unsigned integer variables (scalars or vectors) and generates a 32-bit unsigned integer result, along with a carry output.
> The value carry is .
>
> param x:
>
> The first operand.
>
> param y:
>
> The second operand.
>
> param carry:
>
> 0 if the sum is less than 232, otherwise 1.
>
> return:
>
> `(x + y) % 2^32`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/uaddCarry.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/uaddCarry.xhtml)

* * *

vec\_uint\_type **usubBorrow**(vec\_uint\_type x, vec\_uint\_type y, out vec\_uint\_type borrow) [🔗](#shader-func-usubborrow)

> [Component-wise Function](#shading-componentwise).
>
> Subtract unsigned integers and generate borrow.
>
> param x:
>
> The first operand.
>
> param y:
>
> The second operand.
>
> param borrow:
>
> `0` if `x >= y`, otherwise `1`.
>
> return:
>
> The difference of `x` and `y` if non-negative, or 232 plus that difference otherwise.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/usubBorrow.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/usubBorrow.xhtml)

* * *

vec\_type **ldexp**(vec\_type x, out vec\_int\_type exp) [🔗](#shader-func-ldexp)

> [Component-wise Function](#shading-componentwise).
>
> Assembles a floating-point number from a value and exponent.
>
> Warning
>
> If this product is too large to be represented in the floating-point
> type, the result is undefined.
>
> param x:
>
> The value to be used as a source of significand.
>
> param exp:
>
> The value to be used as a source of exponent.
>
> return:
>
> `x * 2^exp`
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/ldexp.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/ldexp.xhtml)

* * *

vec\_type **frexp**(vec\_type x, out vec\_int\_type exp) [🔗](#shader-func-frexp)

> [Component-wise Function](#shading-componentwise).
>
> Extracts `x` into a floating-point significand in the range `[0.5, 1.0)` and in integral exponent of two, such that:
>
> ```
> x = significand * 2 ^ exponent
>
> ```
>
> For a floating-point value of zero, the significand and exponent are both zero.
>
> Warning
>
> For a floating-point value that is an infinity or a floating-point NaN, the results are undefined.
>
> param x:
>
> The value from which significand and exponent are to be extracted.
>
> param exp:
>
> The variable into which to place the exponent of `x`.
>
> return:
>
> The significand of `x`.
>
> [https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/frexp.xhtml](https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/frexp.xhtml)

* * *

[Previous](shading_language.md "Shading language") [Next](shader_preprocessor.md "Shader preprocessor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](shading_language.md "Shading language") [Next](shader_preprocessor.md "Shader preprocessor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).