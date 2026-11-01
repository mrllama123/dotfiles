---
title: VisualShaderNodeDerivativeFunc — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodederivativefunc.html
crawled_at: "2026-08-13T10:33:43+12:00"
content_hash: 68b4b6c345e97b8e13c277196b3e6a3be94566e660b501642a8bac94985eaa2a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeDerivativeFunc

* * *

# VisualShaderNodeDerivativeFunc

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Calculates a derivative within the visual shader graph.

## Description

This node is only available in `Fragment` and `Light` visual shaders.

## Properties

|     |     |     |
| --- | --- | --- |
| [Function](#enum-visualshadernodederivativefunc-function) | [function](#class-visualshadernodederivativefunc-property-function) | `0` |
| [OpType](#enum-visualshadernodederivativefunc-optype) | [op\_type](#class-visualshadernodederivativefunc-property-op-type) | `0` |
| [Precision](#enum-visualshadernodederivativefunc-precision) | [precision](#class-visualshadernodederivativefunc-property-precision) | `0` |

* * *

## Enumerations

enum **OpType**: [🔗](#enum-visualshadernodederivativefunc-optype)

[OpType](#enum-visualshadernodederivativefunc-optype) **OP\_TYPE\_SCALAR** = `0`

A floating-point scalar.

[OpType](#enum-visualshadernodederivativefunc-optype) **OP\_TYPE\_VECTOR\_2D** = `1`

A 2D vector type.

[OpType](#enum-visualshadernodederivativefunc-optype) **OP\_TYPE\_VECTOR\_3D** = `2`

A 3D vector type.

[OpType](#enum-visualshadernodederivativefunc-optype) **OP\_TYPE\_VECTOR\_4D** = `3`

A 4D vector type.

[OpType](#enum-visualshadernodederivativefunc-optype) **OP\_TYPE\_MAX** = `4`

Represents the size of the [OpType](#enum-visualshadernodederivativefunc-optype) enum.

* * *

enum **Function**: [🔗](#enum-visualshadernodederivativefunc-function)

[Function](#enum-visualshadernodederivativefunc-function) **FUNC\_SUM** = `0`

Sum of absolute derivative in `x` and `y`.

[Function](#enum-visualshadernodederivativefunc-function) **FUNC\_X** = `1`

Derivative in `x` using local differencing.

[Function](#enum-visualshadernodederivativefunc-function) **FUNC\_Y** = `2`

Derivative in `y` using local differencing.

[Function](#enum-visualshadernodederivativefunc-function) **FUNC\_MAX** = `3`

Represents the size of the [Function](#enum-visualshadernodederivativefunc-function) enum.

* * *

enum **Precision**: [🔗](#enum-visualshadernodederivativefunc-precision)

[Precision](#enum-visualshadernodederivativefunc-precision) **PRECISION\_NONE** = `0`

No precision is specified, the GPU driver is allowed to use whatever level of precision it chooses. This is the default option and is equivalent to using `dFdx()` or `dFdy()` in text shaders.

[Precision](#enum-visualshadernodederivativefunc-precision) **PRECISION\_COARSE** = `1`

The derivative will be calculated using the current fragment's neighbors (which may not include the current fragment). This tends to be faster than using [PRECISION\_FINE](#class-visualshadernodederivativefunc-constant-precision-fine), but may not be suitable when more precision is needed. This is equivalent to using `dFdxCoarse()` or `dFdyCoarse()` in text shaders.

[Precision](#enum-visualshadernodederivativefunc-precision) **PRECISION\_FINE** = `2`

The derivative will be calculated using the current fragment and its immediate neighbors. This tends to be slower than using [PRECISION\_COARSE](#class-visualshadernodederivativefunc-constant-precision-coarse), but may be necessary when more precision is needed. This is equivalent to using `dFdxFine()` or `dFdyFine()` in text shaders.

[Precision](#enum-visualshadernodederivativefunc-precision) **PRECISION\_MAX** = `3`

Represents the size of the [Precision](#enum-visualshadernodederivativefunc-precision) enum.

* * *

## Property Descriptions

[Function](#enum-visualshadernodederivativefunc-function) **function** = `0` [🔗](#class-visualshadernodederivativefunc-property-function)

- void **set\_function**(value: [Function](#enum-visualshadernodederivativefunc-function))

- [Function](#enum-visualshadernodederivativefunc-function) **get\_function**()


A derivative function type.

* * *

[OpType](#enum-visualshadernodederivativefunc-optype) **op\_type** = `0` [🔗](#class-visualshadernodederivativefunc-property-op-type)

- void **set\_op\_type**(value: [OpType](#enum-visualshadernodederivativefunc-optype))

- [OpType](#enum-visualshadernodederivativefunc-optype) **get\_op\_type**()


A type of operands and returned value.

* * *

[Precision](#enum-visualshadernodederivativefunc-precision) **precision** = `0` [🔗](#class-visualshadernodederivativefunc-property-precision)

- void **set\_precision**(value: [Precision](#enum-visualshadernodederivativefunc-precision))

- [Precision](#enum-visualshadernodederivativefunc-precision) **get\_precision**()


Sets the level of precision to use for the derivative function. When using the Compatibility renderer, this setting has no effect.

[Previous](class_visualshadernodecustom.md "VisualShaderNodeCustom") [Next](class_visualshadernodedeterminant.md "VisualShaderNodeDeterminant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodecustom.md "VisualShaderNodeCustom") [Next](class_visualshadernodedeterminant.md "VisualShaderNodeDeterminant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).