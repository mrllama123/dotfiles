---
title: RDPipelineSpecializationConstant — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdpipelinespecializationconstant.html
crawled_at: "2026-08-13T10:20:22+12:00"
content_hash: 3902efcbee8e6db8ab46224bf90ce327b3394180737aea36edccf7c22f667f15
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDPipelineSpecializationConstant

* * *

# RDPipelineSpecializationConstant

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Pipeline specialization constant (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

A _specialization constant_ is a way to create additional variants of shaders without actually increasing the number of shader versions that are compiled. This allows improving performance by reducing the number of shader versions and reducing `if` branching, while still allowing shaders to be flexible for different use cases.

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [constant\_id](#class-rdpipelinespecializationconstant-property-constant-id) | `0` |
| [Variant](class_variant.md#class-variant) | [value](#class-rdpipelinespecializationconstant-property-value) |  |

* * *

## Property Descriptions

[int](class_int.md#class-int) **constant\_id** = `0` [🔗](#class-rdpipelinespecializationconstant-property-constant-id)

- void **set\_constant\_id**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_constant\_id**()


The identifier of the specialization constant. This is a value starting from `0` and that increments for every different specialization constant for a given shader.

* * *

[Variant](class_variant.md#class-variant) **value** [🔗](#class-rdpipelinespecializationconstant-property-value)

- void **set\_value**(value: [Variant](class_variant.md#class-variant))

- [Variant](class_variant.md#class-variant) **get\_value**()


The specialization constant's value. Only [bool](class_bool.md#class-bool), [int](class_int.md#class-int) and [float](class_float.md#class-float) types are valid for specialization constants.

[Previous](class_rdpipelinerasterizationstate.md "RDPipelineRasterizationState") [Next](class_rdsamplerstate.md "RDSamplerState")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdpipelinerasterizationstate.md "RDPipelineRasterizationState") [Next](class_rdsamplerstate.md "RDSamplerState")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).