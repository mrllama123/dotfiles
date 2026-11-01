---
title: VisualShaderNodeTransformVecMult — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodetransformvecmult.html
crawled_at: "2026-08-13T10:22:41+12:00"
content_hash: 412e8b8d80db005230d64c594ba59e6875e142d7bd4d4eec3e03b1a1b68eb0b0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeTransformVecMult

* * *

# VisualShaderNodeTransformVecMult

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Multiplies a [Transform3D](class_transform3d.md#class-transform3d) and a [Vector3](class_vector3.md#class-vector3) within the visual shader graph.

## Description

A multiplication operation on a transform (4×4 matrix) and a vector, with support for different multiplication operators.

## Properties

|     |     |     |
| --- | --- | --- |
| [Operator](#enum-visualshadernodetransformvecmult-operator) | [operator](#class-visualshadernodetransformvecmult-property-operator) | `0` |

* * *

## Enumerations

enum **Operator**: [🔗](#enum-visualshadernodetransformvecmult-operator)

[Operator](#enum-visualshadernodetransformvecmult-operator) **OP\_AxB** = `0`

Multiplies transform `a` by the vector `b`.

[Operator](#enum-visualshadernodetransformvecmult-operator) **OP\_BxA** = `1`

Multiplies vector `b` by the transform `a`.

[Operator](#enum-visualshadernodetransformvecmult-operator) **OP\_3x3\_AxB** = `2`

Multiplies transform `a` by the vector `b`, skipping the last row and column of the transform.

[Operator](#enum-visualshadernodetransformvecmult-operator) **OP\_3x3\_BxA** = `3`

Multiplies vector `b` by the transform `a`, skipping the last row and column of the transform.

[Operator](#enum-visualshadernodetransformvecmult-operator) **OP\_MAX** = `4`

Represents the size of the [Operator](#enum-visualshadernodetransformvecmult-operator) enum.

* * *

## Property Descriptions

[Operator](#enum-visualshadernodetransformvecmult-operator) **operator** = `0` [🔗](#class-visualshadernodetransformvecmult-property-operator)

- void **set\_operator**(value: [Operator](#enum-visualshadernodetransformvecmult-operator))

- [Operator](#enum-visualshadernodetransformvecmult-operator) **get\_operator**()


The multiplication type to be performed.

[Previous](class_visualshadernodetransformparameter.md "VisualShaderNodeTransformParameter") [Next](class_visualshadernodeuintconstant.md "VisualShaderNodeUIntConstant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodetransformparameter.md "VisualShaderNodeTransformParameter") [Next](class_visualshadernodeuintconstant.md "VisualShaderNodeUIntConstant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).