---
title: VisualShaderNodeMix — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodemix.html
crawled_at: "2026-08-13T10:24:43+12:00"
content_hash: 0700dd0b19459220bd694cc36a45670e16171e6494bbccc2eaf418c22ce0d442
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeMix

* * *

# VisualShaderNodeMix

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Linearly interpolates between two values within the visual shader graph.

## Description

Translates to `mix(a, b, weight)` in the shader language.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpType](#enum-visualshadernodemix-optype) | [op\_type](#class-visualshadernodemix-property-op-type) | `0` |

* * *

## Enumerations

enum **OpType**: [🔗](#enum-visualshadernodemix-optype)

[OpType](#enum-visualshadernodemix-optype) **OP\_TYPE\_SCALAR** = `0`

A floating-point scalar.

[OpType](#enum-visualshadernodemix-optype) **OP\_TYPE\_VECTOR\_2D** = `1`

A 2D vector type.

[OpType](#enum-visualshadernodemix-optype) **OP\_TYPE\_VECTOR\_2D\_SCALAR** = `2`

The `a` and `b` ports use a 2D vector type. The `weight` port uses a scalar type.

[OpType](#enum-visualshadernodemix-optype) **OP\_TYPE\_VECTOR\_3D** = `3`

A 3D vector type.

[OpType](#enum-visualshadernodemix-optype) **OP\_TYPE\_VECTOR\_3D\_SCALAR** = `4`

The `a` and `b` ports use a 3D vector type. The `weight` port uses a scalar type.

[OpType](#enum-visualshadernodemix-optype) **OP\_TYPE\_VECTOR\_4D** = `5`

A 4D vector type.

[OpType](#enum-visualshadernodemix-optype) **OP\_TYPE\_VECTOR\_4D\_SCALAR** = `6`

The `a` and `b` ports use a 4D vector type. The `weight` port uses a scalar type.

[OpType](#enum-visualshadernodemix-optype) **OP\_TYPE\_MAX** = `7`

Represents the size of the [OpType](#enum-visualshadernodemix-optype) enum.

* * *

## Property Descriptions

[OpType](#enum-visualshadernodemix-optype) **op\_type** = `0` [🔗](#class-visualshadernodemix-property-op-type)

- void **set\_op\_type**(value: [OpType](#enum-visualshadernodemix-optype))

- [OpType](#enum-visualshadernodemix-optype) **get\_op\_type**()


A type of operands and returned value.

[Previous](class_visualshadernodelinearscenedepth.md "VisualShaderNodeLinearSceneDepth") [Next](class_visualshadernodemultiplyadd.md "VisualShaderNodeMultiplyAdd")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodelinearscenedepth.md "VisualShaderNodeLinearSceneDepth") [Next](class_visualshadernodemultiplyadd.md "VisualShaderNodeMultiplyAdd")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).