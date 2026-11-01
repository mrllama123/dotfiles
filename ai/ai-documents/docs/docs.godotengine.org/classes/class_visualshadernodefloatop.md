---
title: VisualShaderNodeFloatOp — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodefloatop.html
crawled_at: "2026-08-13T10:23:18+12:00"
content_hash: 2ca0ef2a36602d28512274dd835b19bb9be3458c2e6c60615c399c762ba860e6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeFloatOp

* * *

# VisualShaderNodeFloatOp

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A floating-point scalar operator to be used within the visual shader graph.

## Description

Applies [operator](#class-visualshadernodefloatop-property-operator) to two floating-point inputs: `a` and `b`.

## Properties

|     |     |     |
| --- | --- | --- |
| [Operator](#enum-visualshadernodefloatop-operator) | [operator](#class-visualshadernodefloatop-property-operator) | `0` |

* * *

## Enumerations

enum **Operator**: [🔗](#enum-visualshadernodefloatop-operator)

[Operator](#enum-visualshadernodefloatop-operator) **OP\_ADD** = `0`

Sums two numbers using `a + b`.

[Operator](#enum-visualshadernodefloatop-operator) **OP\_SUB** = `1`

Subtracts two numbers using `a - b`.

[Operator](#enum-visualshadernodefloatop-operator) **OP\_MUL** = `2`

Multiplies two numbers using `a * b`.

[Operator](#enum-visualshadernodefloatop-operator) **OP\_DIV** = `3`

Divides two numbers using `a / b`.

[Operator](#enum-visualshadernodefloatop-operator) **OP\_MOD** = `4`

Calculates the remainder of two numbers. Translates to `mod(a, b)` in the Godot Shader Language.

[Operator](#enum-visualshadernodefloatop-operator) **OP\_POW** = `5`

Raises the `a` to the power of `b`. Translates to `pow(a, b)` in the Godot Shader Language.

[Operator](#enum-visualshadernodefloatop-operator) **OP\_MAX** = `6`

Returns the greater of two numbers. Translates to `max(a, b)` in the Godot Shader Language.

[Operator](#enum-visualshadernodefloatop-operator) **OP\_MIN** = `7`

Returns the lesser of two numbers. Translates to `min(a, b)` in the Godot Shader Language.

[Operator](#enum-visualshadernodefloatop-operator) **OP\_ATAN2** = `8`

Returns the arc-tangent of the parameters. Translates to `atan(a, b)` in the Godot Shader Language.

[Operator](#enum-visualshadernodefloatop-operator) **OP\_STEP** = `9`

Generates a step function by comparing `b`(x) to `a`(edge). Returns 0.0 if `x` is smaller than `edge` and otherwise 1.0. Translates to `step(a, b)` in the Godot Shader Language.

[Operator](#enum-visualshadernodefloatop-operator) **OP\_ENUM\_SIZE** = `10`

Represents the size of the [Operator](#enum-visualshadernodefloatop-operator) enum.

* * *

## Property Descriptions

[Operator](#enum-visualshadernodefloatop-operator) **operator** = `0` [🔗](#class-visualshadernodefloatop-property-operator)

- void **set\_operator**(value: [Operator](#enum-visualshadernodefloatop-operator))

- [Operator](#enum-visualshadernodefloatop-operator) **get\_operator**()


An operator to be applied to the inputs.

[Previous](class_visualshadernodefloatfunc.md "VisualShaderNodeFloatFunc") [Next](class_visualshadernodefloatparameter.md "VisualShaderNodeFloatParameter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodefloatfunc.md "VisualShaderNodeFloatFunc") [Next](class_visualshadernodefloatparameter.md "VisualShaderNodeFloatParameter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).