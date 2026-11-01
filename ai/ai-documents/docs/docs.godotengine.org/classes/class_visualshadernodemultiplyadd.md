---
title: VisualShaderNodeMultiplyAdd — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodemultiplyadd.html
crawled_at: "2026-08-13T10:20:36+12:00"
content_hash: 14c6f58525db1b739259e9572c1586f75a22f378a448acc6d58121c376f94f7c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeMultiplyAdd

* * *

# VisualShaderNodeMultiplyAdd

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Performs a fused multiply-add operation within the visual shader graph.

## Description

Uses three operands to compute `(a * b + c)` expression.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpType](#enum-visualshadernodemultiplyadd-optype) | [op\_type](#class-visualshadernodemultiplyadd-property-op-type) | `0` |

* * *

## Enumerations

enum **OpType**: [🔗](#enum-visualshadernodemultiplyadd-optype)

[OpType](#enum-visualshadernodemultiplyadd-optype) **OP\_TYPE\_SCALAR** = `0`

A floating-point scalar type.

[OpType](#enum-visualshadernodemultiplyadd-optype) **OP\_TYPE\_VECTOR\_2D** = `1`

A 2D vector type.

[OpType](#enum-visualshadernodemultiplyadd-optype) **OP\_TYPE\_VECTOR\_3D** = `2`

A 3D vector type.

[OpType](#enum-visualshadernodemultiplyadd-optype) **OP\_TYPE\_VECTOR\_4D** = `3`

A 4D vector type.

[OpType](#enum-visualshadernodemultiplyadd-optype) **OP\_TYPE\_MAX** = `4`

Represents the size of the [OpType](#enum-visualshadernodemultiplyadd-optype) enum.

* * *

## Property Descriptions

[OpType](#enum-visualshadernodemultiplyadd-optype) **op\_type** = `0` [🔗](#class-visualshadernodemultiplyadd-property-op-type)

- void **set\_op\_type**(value: [OpType](#enum-visualshadernodemultiplyadd-optype))

- [OpType](#enum-visualshadernodemultiplyadd-optype) **get\_op\_type**()


A type of operands and returned value.

[Previous](class_visualshadernodemix.md "VisualShaderNodeMix") [Next](class_visualshadernodeouterproduct.md "VisualShaderNodeOuterProduct")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodemix.md "VisualShaderNodeMix") [Next](class_visualshadernodeouterproduct.md "VisualShaderNodeOuterProduct")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).