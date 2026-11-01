---
title: VisualShaderNodeClamp — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeclamp.html
crawled_at: "2026-08-13T10:19:19+12:00"
content_hash: 5ce81a4215745f2b08b7ba4f8163e4518a938156495b70b318d92f35273c5a26
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeClamp

* * *

# VisualShaderNodeClamp

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Clamps a value within the visual shader graph.

## Description

Constrains a value to lie between `min` and `max` values.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpType](#enum-visualshadernodeclamp-optype) | [op\_type](#class-visualshadernodeclamp-property-op-type) | `0` |

* * *

## Enumerations

enum **OpType**: [🔗](#enum-visualshadernodeclamp-optype)

[OpType](#enum-visualshadernodeclamp-optype) **OP\_TYPE\_FLOAT** = `0`

A floating-point scalar.

[OpType](#enum-visualshadernodeclamp-optype) **OP\_TYPE\_INT** = `1`

An integer scalar.

[OpType](#enum-visualshadernodeclamp-optype) **OP\_TYPE\_UINT** = `2`

An unsigned integer scalar.

[OpType](#enum-visualshadernodeclamp-optype) **OP\_TYPE\_VECTOR\_2D** = `3`

A 2D vector type.

[OpType](#enum-visualshadernodeclamp-optype) **OP\_TYPE\_VECTOR\_3D** = `4`

A 3D vector type.

[OpType](#enum-visualshadernodeclamp-optype) **OP\_TYPE\_VECTOR\_4D** = `5`

A 4D vector type.

[OpType](#enum-visualshadernodeclamp-optype) **OP\_TYPE\_MAX** = `6`

Represents the size of the [OpType](#enum-visualshadernodeclamp-optype) enum.

* * *

## Property Descriptions

[OpType](#enum-visualshadernodeclamp-optype) **op\_type** = `0` [🔗](#class-visualshadernodeclamp-property-op-type)

- void **set\_op\_type**(value: [OpType](#enum-visualshadernodeclamp-optype))

- [OpType](#enum-visualshadernodeclamp-optype) **get\_op\_type**()


A type of operands and returned value.

[Previous](class_visualshadernodebooleanparameter.md "VisualShaderNodeBooleanParameter") [Next](class_visualshadernodecolorconstant.md "VisualShaderNodeColorConstant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodebooleanparameter.md "VisualShaderNodeBooleanParameter") [Next](class_visualshadernodecolorconstant.md "VisualShaderNodeColorConstant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).