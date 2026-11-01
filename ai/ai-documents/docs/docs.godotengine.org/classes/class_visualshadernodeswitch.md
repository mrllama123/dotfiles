---
title: VisualShaderNodeSwitch — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeswitch.html
crawled_at: "2026-08-13T10:22:07+12:00"
content_hash: 6198eb3e9e6f188cb418af3e9696a959b6c66d569ff4a2fbda8bc5ef0ba1e94c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeSwitch

* * *

# VisualShaderNodeSwitch

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A selector function for use within the visual shader graph.

## Description

Returns an associated value of the [op\_type](#class-visualshadernodeswitch-property-op-type) type if the provided boolean value is `true` or `false`.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpType](#enum-visualshadernodeswitch-optype) | [op\_type](#class-visualshadernodeswitch-property-op-type) | `0` |

* * *

## Enumerations

enum **OpType**: [🔗](#enum-visualshadernodeswitch-optype)

[OpType](#enum-visualshadernodeswitch-optype) **OP\_TYPE\_FLOAT** = `0`

A floating-point scalar.

[OpType](#enum-visualshadernodeswitch-optype) **OP\_TYPE\_INT** = `1`

An integer scalar.

[OpType](#enum-visualshadernodeswitch-optype) **OP\_TYPE\_UINT** = `2`

An unsigned integer scalar.

[OpType](#enum-visualshadernodeswitch-optype) **OP\_TYPE\_VECTOR\_2D** = `3`

A 2D vector type.

[OpType](#enum-visualshadernodeswitch-optype) **OP\_TYPE\_VECTOR\_3D** = `4`

A 3D vector type.

[OpType](#enum-visualshadernodeswitch-optype) **OP\_TYPE\_VECTOR\_4D** = `5`

A 4D vector type.

[OpType](#enum-visualshadernodeswitch-optype) **OP\_TYPE\_BOOLEAN** = `6`

A boolean type.

[OpType](#enum-visualshadernodeswitch-optype) **OP\_TYPE\_TRANSFORM** = `7`

A transform type.

[OpType](#enum-visualshadernodeswitch-optype) **OP\_TYPE\_MAX** = `8`

Represents the size of the [OpType](#enum-visualshadernodeswitch-optype) enum.

* * *

## Property Descriptions

[OpType](#enum-visualshadernodeswitch-optype) **op\_type** = `0` [🔗](#class-visualshadernodeswitch-property-op-type)

- void **set\_op\_type**(value: [OpType](#enum-visualshadernodeswitch-optype))

- [OpType](#enum-visualshadernodeswitch-optype) **get\_op\_type**()


A type of operands and returned value.

[Previous](class_visualshadernodestep.md "VisualShaderNodeStep") [Next](class_visualshadernodetexture.md "VisualShaderNodeTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodestep.md "VisualShaderNodeStep") [Next](class_visualshadernodetexture.md "VisualShaderNodeTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).