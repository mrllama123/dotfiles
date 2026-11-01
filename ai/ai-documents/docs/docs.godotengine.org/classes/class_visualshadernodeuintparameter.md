---
title: VisualShaderNodeUIntParameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeuintparameter.html
crawled_at: "2026-08-13T10:31:06+12:00"
content_hash: 95c52742bcbe43a238016eeb121261f376a5baf36cb2f1d7d2ce49d6aa9e1015
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeUIntParameter

* * *

# VisualShaderNodeUIntParameter

**Inherits:** [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A visual shader node for shader parameter (uniform) of type unsigned [int](class_int.md#class-int).

## Description

A [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) of type unsigned [int](class_int.md#class-int). Offers additional customization for range of accepted values.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [default\_value](#class-visualshadernodeuintparameter-property-default-value) | `0` |
| [bool](class_bool.md#class-bool) | [default\_value\_enabled](#class-visualshadernodeuintparameter-property-default-value-enabled) | `false` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **default\_value** = `0` [🔗](#class-visualshadernodeuintparameter-property-default-value)

- void **set\_default\_value**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_default\_value**()


Default value of this parameter, which will be used if not set externally. [default\_value\_enabled](#class-visualshadernodeuintparameter-property-default-value-enabled) must be enabled; defaults to `0` otherwise.

* * *

[bool](class_bool.md#class-bool) **default\_value\_enabled** = `false` [🔗](#class-visualshadernodeuintparameter-property-default-value-enabled)

- void **set\_default\_value\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_default\_value\_enabled**()


If `true`, the node will have a custom default value.

[Previous](class_visualshadernodeuintop.md "VisualShaderNodeUIntOp") [Next](class_visualshadernodeuvfunc.md "VisualShaderNodeUVFunc")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeuintop.md "VisualShaderNodeUIntOp") [Next](class_visualshadernodeuvfunc.md "VisualShaderNodeUVFunc")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).