---
title: VisualShaderNodeSmoothStep — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodesmoothstep.html
crawled_at: "2026-08-13T10:35:42+12:00"
content_hash: 11974ada8b9376609cefc2b1258fa88b8fc6df9c89cc472cb2b4f56779f34d7e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeSmoothStep

* * *

# VisualShaderNodeSmoothStep

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Calculates a SmoothStep function within the visual shader graph.

## Description

Translates to `smoothstep(edge0, edge1, x)` in the shader language.

Returns `0.0` if `x` is smaller than `edge0` and `1.0` if `x` is larger than `edge1`. Otherwise, the return value is interpolated between `0.0` and `1.0` using Hermite polynomials.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpType](#enum-visualshadernodesmoothstep-optype) | [op\_type](#class-visualshadernodesmoothstep-property-op-type) | `0` |

* * *

## Enumerations

enum **OpType**: [🔗](#enum-visualshadernodesmoothstep-optype)

[OpType](#enum-visualshadernodesmoothstep-optype) **OP\_TYPE\_SCALAR** = `0`

A floating-point scalar type.

[OpType](#enum-visualshadernodesmoothstep-optype) **OP\_TYPE\_VECTOR\_2D** = `1`

A 2D vector type.

[OpType](#enum-visualshadernodesmoothstep-optype) **OP\_TYPE\_VECTOR\_2D\_SCALAR** = `2`

The `x` port uses a 2D vector type. The first two ports use a floating-point scalar type.

[OpType](#enum-visualshadernodesmoothstep-optype) **OP\_TYPE\_VECTOR\_3D** = `3`

A 3D vector type.

[OpType](#enum-visualshadernodesmoothstep-optype) **OP\_TYPE\_VECTOR\_3D\_SCALAR** = `4`

The `x` port uses a 3D vector type. The first two ports use a floating-point scalar type.

[OpType](#enum-visualshadernodesmoothstep-optype) **OP\_TYPE\_VECTOR\_4D** = `5`

A 4D vector type.

[OpType](#enum-visualshadernodesmoothstep-optype) **OP\_TYPE\_VECTOR\_4D\_SCALAR** = `6`

The `a` and `b` ports use a 4D vector type. The `weight` port uses a scalar type.

[OpType](#enum-visualshadernodesmoothstep-optype) **OP\_TYPE\_MAX** = `7`

Represents the size of the [OpType](#enum-visualshadernodesmoothstep-optype) enum.

* * *

## Property Descriptions

[OpType](#enum-visualshadernodesmoothstep-optype) **op\_type** = `0` [🔗](#class-visualshadernodesmoothstep-property-op-type)

- void **set\_op\_type**(value: [OpType](#enum-visualshadernodesmoothstep-optype))

- [OpType](#enum-visualshadernodesmoothstep-optype) **get\_op\_type**()


A type of operands and returned value.

[Previous](class_visualshadernodesdftoscreenuv.md "VisualShaderNodeSDFToScreenUV") [Next](class_visualshadernodestep.md "VisualShaderNodeStep")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodesdftoscreenuv.md "VisualShaderNodeSDFToScreenUV") [Next](class_visualshadernodestep.md "VisualShaderNodeStep")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).