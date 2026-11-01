---
title: VisualShaderNodeTransformOp — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodetransformop.html
crawled_at: "2026-08-13T10:22:49+12:00"
content_hash: 58a2028e9ebe90b06705f0d5a8e9d4b0db380e3c195451ae7e6d5bada6e33558
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeTransformOp

* * *

# VisualShaderNodeTransformOp

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Transform3D](class_transform3d.md#class-transform3d) operator to be used within the visual shader graph.

## Description

Applies [operator](#class-visualshadernodetransformop-property-operator) to two transform (4×4 matrices) inputs.

## Properties

|     |     |     |
| --- | --- | --- |
| [Operator](#enum-visualshadernodetransformop-operator) | [operator](#class-visualshadernodetransformop-property-operator) | `0` |

* * *

## Enumerations

enum **Operator**: [🔗](#enum-visualshadernodetransformop-operator)

[Operator](#enum-visualshadernodetransformop-operator) **OP\_AxB** = `0`

Multiplies transform `a` by the transform `b`.

[Operator](#enum-visualshadernodetransformop-operator) **OP\_BxA** = `1`

Multiplies transform `b` by the transform `a`.

[Operator](#enum-visualshadernodetransformop-operator) **OP\_AxB\_COMP** = `2`

Performs a component-wise multiplication of transform `a` by the transform `b`.

[Operator](#enum-visualshadernodetransformop-operator) **OP\_BxA\_COMP** = `3`

Performs a component-wise multiplication of transform `b` by the transform `a`.

[Operator](#enum-visualshadernodetransformop-operator) **OP\_ADD** = `4`

Adds two transforms.

[Operator](#enum-visualshadernodetransformop-operator) **OP\_A\_MINUS\_B** = `5`

Subtracts the transform `a` from the transform `b`.

[Operator](#enum-visualshadernodetransformop-operator) **OP\_B\_MINUS\_A** = `6`

Subtracts the transform `b` from the transform `a`.

[Operator](#enum-visualshadernodetransformop-operator) **OP\_A\_DIV\_B** = `7`

Divides the transform `a` by the transform `b`.

[Operator](#enum-visualshadernodetransformop-operator) **OP\_B\_DIV\_A** = `8`

Divides the transform `b` by the transform `a`.

[Operator](#enum-visualshadernodetransformop-operator) **OP\_MAX** = `9`

Represents the size of the [Operator](#enum-visualshadernodetransformop-operator) enum.

* * *

## Property Descriptions

[Operator](#enum-visualshadernodetransformop-operator) **operator** = `0` [🔗](#class-visualshadernodetransformop-property-operator)

- void **set\_operator**(value: [Operator](#enum-visualshadernodetransformop-operator))

- [Operator](#enum-visualshadernodetransformop-operator) **get\_operator**()


The type of the operation to be performed on the transforms.

[Previous](class_visualshadernodetransformfunc.md "VisualShaderNodeTransformFunc") [Next](class_visualshadernodetransformparameter.md "VisualShaderNodeTransformParameter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodetransformfunc.md "VisualShaderNodeTransformFunc") [Next](class_visualshadernodetransformparameter.md "VisualShaderNodeTransformParameter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).