---
title: VisualShaderNodeStep — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodestep.html
crawled_at: "2026-08-13T10:40:23+12:00"
content_hash: d9943485a907e7fd6641bb9fd1c064c67c3a552bbbd87f0129e58bf0b360cdc7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeStep

* * *

# VisualShaderNodeStep

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Calculates a Step function within the visual shader graph.

## Description

Translates to `step(edge, x)` in the shader language.

Returns `0.0` if `x` is smaller than `edge` and `1.0` otherwise.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpType](#enum-visualshadernodestep-optype) | [op\_type](#class-visualshadernodestep-property-op-type) | `0` |

* * *

## Enumerations

enum **OpType**: [🔗](#enum-visualshadernodestep-optype)

[OpType](#enum-visualshadernodestep-optype) **OP\_TYPE\_SCALAR** = `0`

A floating-point scalar type.

[OpType](#enum-visualshadernodestep-optype) **OP\_TYPE\_VECTOR\_2D** = `1`

A 2D vector type.

[OpType](#enum-visualshadernodestep-optype) **OP\_TYPE\_VECTOR\_2D\_SCALAR** = `2`

The `x` port uses a 2D vector type, while the `edge` port uses a floating-point scalar type.

[OpType](#enum-visualshadernodestep-optype) **OP\_TYPE\_VECTOR\_3D** = `3`

A 3D vector type.

[OpType](#enum-visualshadernodestep-optype) **OP\_TYPE\_VECTOR\_3D\_SCALAR** = `4`

The `x` port uses a 3D vector type, while the `edge` port uses a floating-point scalar type.

[OpType](#enum-visualshadernodestep-optype) **OP\_TYPE\_VECTOR\_4D** = `5`

A 4D vector type.

[OpType](#enum-visualshadernodestep-optype) **OP\_TYPE\_VECTOR\_4D\_SCALAR** = `6`

The `a` and `b` ports use a 4D vector type. The `weight` port uses a scalar type.

[OpType](#enum-visualshadernodestep-optype) **OP\_TYPE\_MAX** = `7`

Represents the size of the [OpType](#enum-visualshadernodestep-optype) enum.

* * *

## Property Descriptions

[OpType](#enum-visualshadernodestep-optype) **op\_type** = `0` [🔗](#class-visualshadernodestep-property-op-type)

- void **set\_op\_type**(value: [OpType](#enum-visualshadernodestep-optype))

- [OpType](#enum-visualshadernodestep-optype) **get\_op\_type**()


A type of operands and returned value.

[Previous](class_visualshadernodesmoothstep.md "VisualShaderNodeSmoothStep") [Next](class_visualshadernodeswitch.md "VisualShaderNodeSwitch")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodesmoothstep.md "VisualShaderNodeSmoothStep") [Next](class_visualshadernodeswitch.md "VisualShaderNodeSwitch")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).