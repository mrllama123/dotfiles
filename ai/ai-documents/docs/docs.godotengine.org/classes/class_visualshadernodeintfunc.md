---
title: VisualShaderNodeIntFunc — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeintfunc.html
crawled_at: "2026-08-13T10:19:25+12:00"
content_hash: 75ce44526255d1dd68e094d0518d7956ed0b7885ed1a52f8f2e62b6f1840e63a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeIntFunc

* * *

# VisualShaderNodeIntFunc

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A scalar integer function to be used within the visual shader graph.

## Description

Accept an integer scalar ( `x`) to the input port and transform it according to [function](#class-visualshadernodeintfunc-property-function).

## Properties

|     |     |     |
| --- | --- | --- |
| [Function](#enum-visualshadernodeintfunc-function) | [function](#class-visualshadernodeintfunc-property-function) | `2` |

* * *

## Enumerations

enum **Function**: [🔗](#enum-visualshadernodeintfunc-function)

[Function](#enum-visualshadernodeintfunc-function) **FUNC\_ABS** = `0`

Returns the absolute value of the parameter. Translates to `abs(x)` in the Godot Shader Language.

[Function](#enum-visualshadernodeintfunc-function) **FUNC\_NEGATE** = `1`

Negates the `x` using `-(x)`.

[Function](#enum-visualshadernodeintfunc-function) **FUNC\_SIGN** = `2`

Extracts the sign of the parameter. Translates to `sign(x)` in the Godot Shader Language.

[Function](#enum-visualshadernodeintfunc-function) **FUNC\_BITWISE\_NOT** = `3`

Returns the result of bitwise `NOT` operation on the integer. Translates to `~a` in the Godot Shader Language.

[Function](#enum-visualshadernodeintfunc-function) **FUNC\_MAX** = `4`

Represents the size of the [Function](#enum-visualshadernodeintfunc-function) enum.

* * *

## Property Descriptions

[Function](#enum-visualshadernodeintfunc-function) **function** = `2` [🔗](#class-visualshadernodeintfunc-property-function)

- void **set\_function**(value: [Function](#enum-visualshadernodeintfunc-function))

- [Function](#enum-visualshadernodeintfunc-function) **get\_function**()


A function to be applied to the scalar.

[Previous](class_visualshadernodeintconstant.md "VisualShaderNodeIntConstant") [Next](class_visualshadernodeintop.md "VisualShaderNodeIntOp")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeintconstant.md "VisualShaderNodeIntConstant") [Next](class_visualshadernodeintop.md "VisualShaderNodeIntOp")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).