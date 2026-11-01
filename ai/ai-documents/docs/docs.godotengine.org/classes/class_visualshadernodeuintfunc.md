---
title: VisualShaderNodeUIntFunc — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeuintfunc.html
crawled_at: "2026-08-13T10:30:39+12:00"
content_hash: dd725637f7c2e84b68c5e45887cd4639ea0a51c46caf5464cafaa0424e378f09
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeUIntFunc

* * *

# VisualShaderNodeUIntFunc

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An unsigned scalar integer function to be used within the visual shader graph.

## Description

Accept an unsigned integer scalar ( `x`) to the input port and transform it according to [function](#class-visualshadernodeuintfunc-property-function).

## Properties

|     |     |     |
| --- | --- | --- |
| [Function](#enum-visualshadernodeuintfunc-function) | [function](#class-visualshadernodeuintfunc-property-function) | `0` |

* * *

## Enumerations

enum **Function**: [🔗](#enum-visualshadernodeuintfunc-function)

[Function](#enum-visualshadernodeuintfunc-function) **FUNC\_NEGATE** = `0`

Negates the `x` using `-(x)`.

[Function](#enum-visualshadernodeuintfunc-function) **FUNC\_BITWISE\_NOT** = `1`

Returns the result of bitwise `NOT` operation on the integer. Translates to `~a` in the Godot Shader Language.

[Function](#enum-visualshadernodeuintfunc-function) **FUNC\_MAX** = `2`

Represents the size of the [Function](#enum-visualshadernodeuintfunc-function) enum.

* * *

## Property Descriptions

[Function](#enum-visualshadernodeuintfunc-function) **function** = `0` [🔗](#class-visualshadernodeuintfunc-property-function)

- void **set\_function**(value: [Function](#enum-visualshadernodeuintfunc-function))

- [Function](#enum-visualshadernodeuintfunc-function) **get\_function**()


A function to be applied to the scalar.

[Previous](class_visualshadernodeuintconstant.md "VisualShaderNodeUIntConstant") [Next](class_visualshadernodeuintop.md "VisualShaderNodeUIntOp")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeuintconstant.md "VisualShaderNodeUIntConstant") [Next](class_visualshadernodeuintop.md "VisualShaderNodeUIntOp")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).