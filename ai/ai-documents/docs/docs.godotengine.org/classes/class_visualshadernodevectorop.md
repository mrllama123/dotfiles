---
title: VisualShaderNodeVectorOp — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodevectorop.html
crawled_at: "2026-08-13T10:26:11+12:00"
content_hash: fc31c0400ce4c34110d713b15846a128e65b50c28a1f338d673f05908e9c2c3e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeVectorOp

* * *

# VisualShaderNodeVectorOp

**Inherits:** [VisualShaderNodeVectorBase](class_visualshadernodevectorbase.md#class-visualshadernodevectorbase) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A vector operator to be used within the visual shader graph.

## Description

A visual shader node for use of vector operators. Operates on vector `a` and vector `b`.

## Properties

|     |     |     |
| --- | --- | --- |
| [Operator](#enum-visualshadernodevectorop-operator) | [operator](#class-visualshadernodevectorop-property-operator) | `0` |

* * *

## Enumerations

enum **Operator**: [🔗](#enum-visualshadernodevectorop-operator)

[Operator](#enum-visualshadernodevectorop-operator) **OP\_ADD** = `0`

Adds two vectors.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_SUB** = `1`

Subtracts a vector from a vector.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_MUL** = `2`

Multiplies two vectors.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_DIV** = `3`

Divides vector by vector.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_MOD** = `4`

Returns the remainder of the two vectors.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_POW** = `5`

Returns the value of the first parameter raised to the power of the second, for each component of the vectors.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_MAX** = `6`

Returns the greater of two values, for each component of the vectors.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_MIN** = `7`

Returns the lesser of two values, for each component of the vectors.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_CROSS** = `8`

Calculates the cross product of two vectors.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_ATAN2** = `9`

Returns the arc-tangent of the parameters.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_REFLECT** = `10`

Returns the vector that points in the direction of reflection. `a` is incident vector and `b` is the normal vector.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_STEP** = `11`

Vector step operator. Returns `0.0` if `a` is smaller than `b` and `1.0` otherwise.

[Operator](#enum-visualshadernodevectorop-operator) **OP\_ENUM\_SIZE** = `12`

Represents the size of the [Operator](#enum-visualshadernodevectorop-operator) enum.

* * *

## Property Descriptions

[Operator](#enum-visualshadernodevectorop-operator) **operator** = `0` [🔗](#class-visualshadernodevectorop-property-operator)

- void **set\_operator**(value: [Operator](#enum-visualshadernodevectorop-operator))

- [Operator](#enum-visualshadernodevectorop-operator) **get\_operator**()


The operator to be used.

[Previous](class_visualshadernodevectorlen.md "VisualShaderNodeVectorLen") [Next](class_visualshadernodevectorrefract.md "VisualShaderNodeVectorRefract")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodevectorlen.md "VisualShaderNodeVectorLen") [Next](class_visualshadernodevectorrefract.md "VisualShaderNodeVectorRefract")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).