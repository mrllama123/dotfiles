---
title: VisualShaderNodeTransformFunc — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodetransformfunc.html
crawled_at: "2026-08-13T10:37:57+12:00"
content_hash: 3069587d3bf6aac04aaef05f10bb9c82cb244aa7590cbd0c4a19e0e520a5c3b0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeTransformFunc

* * *

# VisualShaderNodeTransformFunc

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Computes a [Transform3D](class_transform3d.md#class-transform3d) function within the visual shader graph.

## Description

Computes an inverse or transpose function on the provided [Transform3D](class_transform3d.md#class-transform3d).

## Properties

|     |     |     |
| --- | --- | --- |
| [Function](#enum-visualshadernodetransformfunc-function) | [function](#class-visualshadernodetransformfunc-property-function) | `0` |

* * *

## Enumerations

enum **Function**: [🔗](#enum-visualshadernodetransformfunc-function)

[Function](#enum-visualshadernodetransformfunc-function) **FUNC\_INVERSE** = `0`

Perform the inverse operation on the [Transform3D](class_transform3d.md#class-transform3d) matrix.

[Function](#enum-visualshadernodetransformfunc-function) **FUNC\_TRANSPOSE** = `1`

Perform the transpose operation on the [Transform3D](class_transform3d.md#class-transform3d) matrix.

[Function](#enum-visualshadernodetransformfunc-function) **FUNC\_MAX** = `2`

Represents the size of the [Function](#enum-visualshadernodetransformfunc-function) enum.

* * *

## Property Descriptions

[Function](#enum-visualshadernodetransformfunc-function) **function** = `0` [🔗](#class-visualshadernodetransformfunc-property-function)

- void **set\_function**(value: [Function](#enum-visualshadernodetransformfunc-function))

- [Function](#enum-visualshadernodetransformfunc-function) **get\_function**()


The function to be computed.

[Previous](class_visualshadernodetransformdecompose.md "VisualShaderNodeTransformDecompose") [Next](class_visualshadernodetransformop.md "VisualShaderNodeTransformOp")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodetransformdecompose.md "VisualShaderNodeTransformDecompose") [Next](class_visualshadernodetransformop.md "VisualShaderNodeTransformOp")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).