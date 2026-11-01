---
title: VisualShaderNodeRemap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernoderemap.html
crawled_at: "2026-08-13T10:38:14+12:00"
content_hash: 854ca07de7a7ea5c44526e93ad18f85d53c16600134d96d06d1780ae00064cd6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeRemap

* * *

# VisualShaderNodeRemap

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A visual shader node for remap function.

## Description

Remap will transform the input range into output range, e.g. you can change a `0..1` value to `-2..2` etc. See [@GlobalScope.remap()](class_@globalscope.md#class-globalscope-method-remap) for more details.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpType](#enum-visualshadernoderemap-optype) | [op\_type](#class-visualshadernoderemap-property-op-type) | `0` |

* * *

## Enumerations

enum **OpType**: [🔗](#enum-visualshadernoderemap-optype)

[OpType](#enum-visualshadernoderemap-optype) **OP\_TYPE\_SCALAR** = `0`

A floating-point scalar type.

[OpType](#enum-visualshadernoderemap-optype) **OP\_TYPE\_VECTOR\_2D** = `1`

A 2D vector type.

[OpType](#enum-visualshadernoderemap-optype) **OP\_TYPE\_VECTOR\_2D\_SCALAR** = `2`

The `value` port uses a 2D vector type, while the `input min`, `input max`, `output min`, and `output max` ports use a floating-point scalar type.

[OpType](#enum-visualshadernoderemap-optype) **OP\_TYPE\_VECTOR\_3D** = `3`

A 3D vector type.

[OpType](#enum-visualshadernoderemap-optype) **OP\_TYPE\_VECTOR\_3D\_SCALAR** = `4`

The `value` port uses a 3D vector type, while the `input min`, `input max`, `output min`, and `output max` ports use a floating-point scalar type.

[OpType](#enum-visualshadernoderemap-optype) **OP\_TYPE\_VECTOR\_4D** = `5`

A 4D vector type.

[OpType](#enum-visualshadernoderemap-optype) **OP\_TYPE\_VECTOR\_4D\_SCALAR** = `6`

The `value` port uses a 4D vector type, while the `input min`, `input max`, `output min`, and `output max` ports use a floating-point scalar type.

[OpType](#enum-visualshadernoderemap-optype) **OP\_TYPE\_MAX** = `7`

Represents the size of the [OpType](#enum-visualshadernoderemap-optype) enum.

* * *

## Property Descriptions

[OpType](#enum-visualshadernoderemap-optype) **op\_type** = `0` [🔗](#class-visualshadernoderemap-property-op-type)

- void **set\_op\_type**(value: [OpType](#enum-visualshadernoderemap-optype))

- [OpType](#enum-visualshadernoderemap-optype) **get\_op\_type**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_visualshadernoderandomrange.md "VisualShaderNodeRandomRange") [Next](class_visualshadernodereroute.md "VisualShaderNodeReroute")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernoderandomrange.md "VisualShaderNodeRandomRange") [Next](class_visualshadernodereroute.md "VisualShaderNodeReroute")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).