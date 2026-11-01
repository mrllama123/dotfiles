---
title: VisualShaderNodeUIntOp — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeuintop.html
crawled_at: "2026-08-13T10:41:17+12:00"
content_hash: 51d32b2ce14aef9d943c4833390c61caad5c88cd2ed0e5e753cba01c6ebd91ed
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeUIntOp

* * *

# VisualShaderNodeUIntOp

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An unsigned integer scalar operator to be used within the visual shader graph.

## Description

Applies [operator](#class-visualshadernodeuintop-property-operator) to two unsigned integer inputs: `a` and `b`.

## Properties

|     |     |     |
| --- | --- | --- |
| [Operator](#enum-visualshadernodeuintop-operator) | [operator](#class-visualshadernodeuintop-property-operator) | `0` |

* * *

## Enumerations

enum **Operator**: [🔗](#enum-visualshadernodeuintop-operator)

[Operator](#enum-visualshadernodeuintop-operator) **OP\_ADD** = `0`

Sums two numbers using `a + b`.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_SUB** = `1`

Subtracts two numbers using `a - b`.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_MUL** = `2`

Multiplies two numbers using `a * b`.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_DIV** = `3`

Divides two numbers using `a / b`.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_MOD** = `4`

Calculates the remainder of two numbers using `a % b`.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_MAX** = `5`

Returns the greater of two numbers. Translates to `max(a, b)` in the Godot Shader Language.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_MIN** = `6`

Returns the lesser of two numbers. Translates to `max(a, b)` in the Godot Shader Language.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_BITWISE\_AND** = `7`

Returns the result of bitwise `AND` operation on the integer. Translates to `a & b` in the Godot Shader Language.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_BITWISE\_OR** = `8`

Returns the result of bitwise `OR` operation for two integers. Translates to `a | b` in the Godot Shader Language.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_BITWISE\_XOR** = `9`

Returns the result of bitwise `XOR` operation for two integers. Translates to `a ^ b` in the Godot Shader Language.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_BITWISE\_LEFT\_SHIFT** = `10`

Returns the result of bitwise left shift operation on the integer. Translates to `a << b` in the Godot Shader Language.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_BITWISE\_RIGHT\_SHIFT** = `11`

Returns the result of bitwise right shift operation on the integer. Translates to `a >> b` in the Godot Shader Language.

[Operator](#enum-visualshadernodeuintop-operator) **OP\_ENUM\_SIZE** = `12`

Represents the size of the [Operator](#enum-visualshadernodeuintop-operator) enum.

* * *

## Property Descriptions

[Operator](#enum-visualshadernodeuintop-operator) **operator** = `0` [🔗](#class-visualshadernodeuintop-property-operator)

- void **set\_operator**(value: [Operator](#enum-visualshadernodeuintop-operator))

- [Operator](#enum-visualshadernodeuintop-operator) **get\_operator**()


An operator to be applied to the inputs.

[Previous](class_visualshadernodeuintfunc.md "VisualShaderNodeUIntFunc") [Next](class_visualshadernodeuintparameter.md "VisualShaderNodeUIntParameter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeuintfunc.md "VisualShaderNodeUIntFunc") [Next](class_visualshadernodeuintparameter.md "VisualShaderNodeUIntParameter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).