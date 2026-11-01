---
title: VisualShaderNodeParticleRandomness — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeparticlerandomness.html
crawled_at: "2026-08-13T10:24:18+12:00"
content_hash: aa28a9bdcc6ec1814d4d9b430743aab9f2e2457b9fd4ee16a8589423c4336f43
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeParticleRandomness

* * *

# VisualShaderNodeParticleRandomness

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Visual shader node for randomizing particle values.

## Description

Randomness node will output pseudo-random values of the given type based on the specified minimum and maximum values.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpType](#enum-visualshadernodeparticlerandomness-optype) | [op\_type](#class-visualshadernodeparticlerandomness-property-op-type) | `0` |

* * *

## Enumerations

enum **OpType**: [🔗](#enum-visualshadernodeparticlerandomness-optype)

[OpType](#enum-visualshadernodeparticlerandomness-optype) **OP\_TYPE\_SCALAR** = `0`

A floating-point scalar.

[OpType](#enum-visualshadernodeparticlerandomness-optype) **OP\_TYPE\_VECTOR\_2D** = `1`

A 2D vector type.

[OpType](#enum-visualshadernodeparticlerandomness-optype) **OP\_TYPE\_VECTOR\_3D** = `2`

A 3D vector type.

[OpType](#enum-visualshadernodeparticlerandomness-optype) **OP\_TYPE\_VECTOR\_4D** = `3`

A 4D vector type.

[OpType](#enum-visualshadernodeparticlerandomness-optype) **OP\_TYPE\_MAX** = `4`

Represents the size of the [OpType](#enum-visualshadernodeparticlerandomness-optype) enum.

* * *

## Property Descriptions

[OpType](#enum-visualshadernodeparticlerandomness-optype) **op\_type** = `0` [🔗](#class-visualshadernodeparticlerandomness-property-op-type)

- void **set\_op\_type**(value: [OpType](#enum-visualshadernodeparticlerandomness-optype))

- [OpType](#enum-visualshadernodeparticlerandomness-optype) **get\_op\_type**()


A type of operands and returned value.

[Previous](class_visualshadernodeparticleoutput.md "VisualShaderNodeParticleOutput") [Next](class_visualshadernodeparticleringemitter.md "VisualShaderNodeParticleRingEmitter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeparticleoutput.md "VisualShaderNodeParticleOutput") [Next](class_visualshadernodeparticleringemitter.md "VisualShaderNodeParticleRingEmitter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).