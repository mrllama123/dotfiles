---
title: VisualShaderNodeVectorFunc — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodevectorfunc.html
crawled_at: "2026-08-13T10:29:54+12:00"
content_hash: 1baee9f4840c97971678a7b688beccda2cd55936088451195eb04de32e619836
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeVectorFunc

* * *

# VisualShaderNodeVectorFunc

**Inherits:** [VisualShaderNodeVectorBase](class_visualshadernodevectorbase.md#class-visualshadernodevectorbase) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A vector function to be used within the visual shader graph.

## Description

A visual shader node able to perform different functions using vectors.

## Properties

|     |     |     |
| --- | --- | --- |
| [Function](#enum-visualshadernodevectorfunc-function) | [function](#class-visualshadernodevectorfunc-property-function) | `0` |

* * *

## Enumerations

enum **Function**: [🔗](#enum-visualshadernodevectorfunc-function)

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_NORMALIZE** = `0`

Normalizes the vector so that it has a length of `1` but points in the same direction.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_SATURATE** = `1`

Clamps the value between `0.0` and `1.0`.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_NEGATE** = `2`

Returns the opposite value of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_RECIPROCAL** = `3`

Returns `1/vector`.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_ABS** = `4`

Returns the absolute value of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_ACOS** = `5`

Returns the arc-cosine of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_ACOSH** = `6`

Returns the inverse hyperbolic cosine of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_ASIN** = `7`

Returns the arc-sine of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_ASINH** = `8`

Returns the inverse hyperbolic sine of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_ATAN** = `9`

Returns the arc-tangent of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_ATANH** = `10`

Returns the inverse hyperbolic tangent of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_CEIL** = `11`

Finds the nearest integer that is greater than or equal to the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_COS** = `12`

Returns the cosine of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_COSH** = `13`

Returns the hyperbolic cosine of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_DEGREES** = `14`

Converts a quantity in radians to degrees.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_EXP** = `15`

Base-e Exponential.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_EXP2** = `16`

Base-2 Exponential.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_FLOOR** = `17`

Finds the nearest integer less than or equal to the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_FRACT** = `18`

Computes the fractional part of the argument.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_INVERSE\_SQRT** = `19`

Returns the inverse of the square root of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_LOG** = `20`

Natural logarithm.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_LOG2** = `21`

Base-2 logarithm.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_RADIANS** = `22`

Converts a quantity in degrees to radians.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_ROUND** = `23`

Finds the nearest integer to the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_ROUNDEVEN** = `24`

Finds the nearest even integer to the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_SIGN** = `25`

Extracts the sign of the parameter, i.e. returns `-1` if the parameter is negative, `1` if it's positive and `0` otherwise.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_SIN** = `26`

Returns the sine of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_SINH** = `27`

Returns the hyperbolic sine of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_SQRT** = `28`

Returns the square root of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_TAN** = `29`

Returns the tangent of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_TANH** = `30`

Returns the hyperbolic tangent of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_TRUNC** = `31`

Returns a value equal to the nearest integer to the parameter whose absolute value is not larger than the absolute value of the parameter.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_ONEMINUS** = `32`

Returns `1.0 - vector`.

[Function](#enum-visualshadernodevectorfunc-function) **FUNC\_MAX** = `33`

Represents the size of the [Function](#enum-visualshadernodevectorfunc-function) enum.

* * *

## Property Descriptions

[Function](#enum-visualshadernodevectorfunc-function) **function** = `0` [🔗](#class-visualshadernodevectorfunc-property-function)

- void **set\_function**(value: [Function](#enum-visualshadernodevectorfunc-function))

- [Function](#enum-visualshadernodevectorfunc-function) **get\_function**()


The function to be performed.

[Previous](class_visualshadernodevectordistance.md "VisualShaderNodeVectorDistance") [Next](class_visualshadernodevectorlen.md "VisualShaderNodeVectorLen")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodevectordistance.md "VisualShaderNodeVectorDistance") [Next](class_visualshadernodevectorlen.md "VisualShaderNodeVectorLen")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).