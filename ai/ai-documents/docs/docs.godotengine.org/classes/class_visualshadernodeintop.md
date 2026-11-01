---
title: VisualShaderNodeIntOp — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeintop.html
crawled_at: "2026-08-13T10:20:29+12:00"
content_hash: 73a27d81eb5f71e7192ccaef1f0b0a6412c0a9a5569fcce9ad3b5b4cc913f4d4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeIntOp

* * *

# VisualShaderNodeIntOp

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An integer scalar operator to be used within the visual shader graph.

## Description

Applies [operator](#class-visualshadernodeintop-property-operator) to two integer inputs: `a` and `b`.

## Properties

|     |     |     |
| --- | --- | --- |
| [Operator](#enum-visualshadernodeintop-operator) | [operator](#class-visualshadernodeintop-property-operator) | `0` |

* * *

## Enumerations

enum **Operator**: [🔗](#enum-visualshadernodeintop-operator)

[Operator](#enum-visualshadernodeintop-operator) **OP\_ADD** = `0`

Sums two numbers using `a + b`.

[Operator](#enum-visualshadernodeintop-operator) **OP\_SUB** = `1`

Subtracts two numbers using `a - b`.

[Operator](#enum-visualshadernodeintop-operator) **OP\_MUL** = `2`

Multiplies two numbers using `a * b`.

[Operator](#enum-visualshadernodeintop-operator) **OP\_DIV** = `3`

Divides two numbers using `a / b`.

[Operator](#enum-visualshadernodeintop-operator) **OP\_MOD** = `4`

Calculates the remainder of two numbers using `a % b`.

[Operator](#enum-visualshadernodeintop-operator) **OP\_MAX** = `5`

Returns the greater of two numbers. Translates to `max(a, b)` in the Godot Shader Language.

[Operator](#enum-visualshadernodeintop-operator) **OP\_MIN** = `6`

Returns the lesser of two numbers. Translates to `max(a, b)` in the Godot Shader Language.

[Operator](#enum-visualshadernodeintop-operator) **OP\_BITWISE\_AND** = `7`

Returns the result of bitwise `AND` operation on the integer. Translates to `a & b` in the Godot Shader Language.

[Operator](#enum-visualshadernodeintop-operator) **OP\_BITWISE\_OR** = `8`

Returns the result of bitwise `OR` operation for two integers. Translates to `a | b` in the Godot Shader Language.

[Operator](#enum-visualshadernodeintop-operator) **OP\_BITWISE\_XOR** = `9`

Returns the result of bitwise `XOR` operation for two integers. Translates to `a ^ b` in the Godot Shader Language.

[Operator](#enum-visualshadernodeintop-operator) **OP\_BITWISE\_LEFT\_SHIFT** = `10`

Returns the result of bitwise left shift operation on the integer. Translates to `a << b` in the Godot Shader Language.

[Operator](#enum-visualshadernodeintop-operator) **OP\_BITWISE\_RIGHT\_SHIFT** = `11`

Returns the result of bitwise right shift operation on the integer. Translates to `a >> b` in the Godot Shader Language.

[Operator](#enum-visualshadernodeintop-operator) **OP\_ENUM\_SIZE** = `12`

Represents the size of the [Operator](#enum-visualshadernodeintop-operator) enum.

* * *

## Property Descriptions

[Operator](#enum-visualshadernodeintop-operator) **operator** = `0` [🔗](#class-visualshadernodeintop-property-operator)

- void **set\_operator**(value: [Operator](#enum-visualshadernodeintop-operator))

- [Operator](#enum-visualshadernodeintop-operator) **get\_operator**()


An operator to be applied to the inputs.

[Previous](class_visualshadernodeintfunc.md "VisualShaderNodeIntFunc") [Next](class_visualshadernodeintparameter.md "VisualShaderNodeIntParameter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeintfunc.md "VisualShaderNodeIntFunc") [Next](class_visualshadernodeintparameter.md "VisualShaderNodeIntParameter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).