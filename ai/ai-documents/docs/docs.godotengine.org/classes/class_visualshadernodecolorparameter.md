---
title: VisualShaderNodeColorParameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodecolorparameter.html
crawled_at: "2026-08-13T10:41:07+12:00"
content_hash: a0c35ebff6bb6d3c7f6d8caf61da69100f5219b6f4cc75ce6727f36a7ee8d65d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeColorParameter

* * *

# VisualShaderNodeColorParameter

**Inherits:** [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Color](class_color.md#class-color) parameter to be used within the visual shader graph.

## Description

Translated to `uniform vec4` in the shader language.

## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [default\_value](#class-visualshadernodecolorparameter-property-default-value) | `Color(1, 1, 1, 1)` |
| [bool](class_bool.md#class-bool) | [default\_value\_enabled](#class-visualshadernodecolorparameter-property-default-value-enabled) | `false` |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **default\_value** = `Color(1, 1, 1, 1)` [🔗](#class-visualshadernodecolorparameter-property-default-value)

- void **set\_default\_value**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_default\_value**()


A default value to be assigned within the shader.

* * *

[bool](class_bool.md#class-bool) **default\_value\_enabled** = `false` [🔗](#class-visualshadernodecolorparameter-property-default-value-enabled)

- void **set\_default\_value\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_default\_value\_enabled**()


Enables usage of the [default\_value](#class-visualshadernodecolorparameter-property-default-value).

[Previous](class_visualshadernodecolorop.md "VisualShaderNodeColorOp") [Next](class_visualshadernodecomment.md "VisualShaderNodeComment")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodecolorop.md "VisualShaderNodeColorOp") [Next](class_visualshadernodecomment.md "VisualShaderNodeComment")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).