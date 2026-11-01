---
title: VisualShaderNodeVectorBase — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodevectorbase.html
crawled_at: "2026-08-13T10:37:08+12:00"
content_hash: 8a284045e23166b8cb900ce82d5dfced18ac1a5de70a8abb492e2bccbae93acd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeVectorBase

* * *

# VisualShaderNodeVectorBase

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShaderNodeFaceForward](class_visualshadernodefaceforward.md#class-visualshadernodefaceforward), [VisualShaderNodeVectorCompose](class_visualshadernodevectorcompose.md#class-visualshadernodevectorcompose), [VisualShaderNodeVectorDecompose](class_visualshadernodevectordecompose.md#class-visualshadernodevectordecompose), [VisualShaderNodeVectorDistance](class_visualshadernodevectordistance.md#class-visualshadernodevectordistance), [VisualShaderNodeVectorFunc](class_visualshadernodevectorfunc.md#class-visualshadernodevectorfunc), [VisualShaderNodeVectorLen](class_visualshadernodevectorlen.md#class-visualshadernodevectorlen), [VisualShaderNodeVectorOp](class_visualshadernodevectorop.md#class-visualshadernodevectorop), [VisualShaderNodeVectorRefract](class_visualshadernodevectorrefract.md#class-visualshadernodevectorrefract)

A base type for the nodes that perform vector operations within the visual shader graph.

## Description

This is an abstract class. See the derived types for descriptions of the possible operations.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpType](#enum-visualshadernodevectorbase-optype) | [op\_type](#class-visualshadernodevectorbase-property-op-type) | `1` |

* * *

## Enumerations

enum **OpType**: [🔗](#enum-visualshadernodevectorbase-optype)

[OpType](#enum-visualshadernodevectorbase-optype) **OP\_TYPE\_VECTOR\_2D** = `0`

A 2D vector type.

[OpType](#enum-visualshadernodevectorbase-optype) **OP\_TYPE\_VECTOR\_3D** = `1`

A 3D vector type.

[OpType](#enum-visualshadernodevectorbase-optype) **OP\_TYPE\_VECTOR\_4D** = `2`

A 4D vector type.

[OpType](#enum-visualshadernodevectorbase-optype) **OP\_TYPE\_MAX** = `3`

Represents the size of the [OpType](#enum-visualshadernodevectorbase-optype) enum.

* * *

## Property Descriptions

[OpType](#enum-visualshadernodevectorbase-optype) **op\_type** = `1` [🔗](#class-visualshadernodevectorbase-property-op-type)

- void **set\_op\_type**(value: [OpType](#enum-visualshadernodevectorbase-optype))

- [OpType](#enum-visualshadernodevectorbase-optype) **get\_op\_type**()


A vector type that this operation is performed on.

[Previous](class_visualshadernodevec4parameter.md "VisualShaderNodeVec4Parameter") [Next](class_visualshadernodevectorcompose.md "VisualShaderNodeVectorCompose")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodevec4parameter.md "VisualShaderNodeVec4Parameter") [Next](class_visualshadernodevectorcompose.md "VisualShaderNodeVectorCompose")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).