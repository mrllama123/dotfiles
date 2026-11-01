---
title: VisualShaderNodeBillboard — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodebillboard.html
crawled_at: "2026-08-13T10:26:04+12:00"
content_hash: f25f1222060a4061b712ef5432986c07c7bddfce10d09632b86bd2215fad91fa
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeBillboard

* * *

# VisualShaderNodeBillboard

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A node that controls how the object faces the camera to be used within the visual shader graph.

## Description

The output port of this node needs to be connected to `Model View Matrix` port of [VisualShaderNodeOutput](class_visualshadernodeoutput.md#class-visualshadernodeoutput).

## Properties

|     |     |     |
| --- | --- | --- |
| [BillboardType](#enum-visualshadernodebillboard-billboardtype) | [billboard\_type](#class-visualshadernodebillboard-property-billboard-type) | `1` |
| [bool](class_bool.md#class-bool) | [keep\_scale](#class-visualshadernodebillboard-property-keep-scale) | `false` |

* * *

## Enumerations

enum **BillboardType**: [🔗](#enum-visualshadernodebillboard-billboardtype)

[BillboardType](#enum-visualshadernodebillboard-billboardtype) **BILLBOARD\_TYPE\_DISABLED** = `0`

Billboarding is disabled and the node does nothing.

[BillboardType](#enum-visualshadernodebillboard-billboardtype) **BILLBOARD\_TYPE\_ENABLED** = `1`

A standard billboarding algorithm is enabled.

[BillboardType](#enum-visualshadernodebillboard-billboardtype) **BILLBOARD\_TYPE\_FIXED\_Y** = `2`

A billboarding algorithm to rotate around Y-axis is enabled.

[BillboardType](#enum-visualshadernodebillboard-billboardtype) **BILLBOARD\_TYPE\_PARTICLES** = `3`

A billboarding algorithm designed to use on particles is enabled.

[BillboardType](#enum-visualshadernodebillboard-billboardtype) **BILLBOARD\_TYPE\_MAX** = `4`

Represents the size of the [BillboardType](#enum-visualshadernodebillboard-billboardtype) enum.

* * *

## Property Descriptions

[BillboardType](#enum-visualshadernodebillboard-billboardtype) **billboard\_type** = `1` [🔗](#class-visualshadernodebillboard-property-billboard-type)

- void **set\_billboard\_type**(value: [BillboardType](#enum-visualshadernodebillboard-billboardtype))

- [BillboardType](#enum-visualshadernodebillboard-billboardtype) **get\_billboard\_type**()


Controls how the object faces the camera.

* * *

[bool](class_bool.md#class-bool) **keep\_scale** = `false` [🔗](#class-visualshadernodebillboard-property-keep-scale)

- void **set\_keep\_scale\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_keep\_scale\_enabled**()


If `true`, the shader will keep the scale set for the mesh. Otherwise, the scale is lost when billboarding.

[Previous](class_visualshadernode.md "VisualShaderNode") [Next](class_visualshadernodebooleanconstant.md "VisualShaderNodeBooleanConstant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernode.md "VisualShaderNode") [Next](class_visualshadernodebooleanconstant.md "VisualShaderNodeBooleanConstant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).