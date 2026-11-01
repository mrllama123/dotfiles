---
title: VisualShaderNodeVec2Parameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodevec2parameter.html
crawled_at: "2026-08-13T10:41:58+12:00"
content_hash: 29e140d0c5cce69860eaa6170ce1d65d2f45f1e1a1ead6d3624163ea80a58768
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeVec2Parameter

* * *

# VisualShaderNodeVec2Parameter

**Inherits:** [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Vector2](class_vector2.md#class-vector2) parameter to be used within the visual shader graph.

## Description

Translated to `uniform vec2` in the shader language.

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [default\_value](#class-visualshadernodevec2parameter-property-default-value) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [default\_value\_enabled](#class-visualshadernodevec2parameter-property-default-value-enabled) | `false` |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **default\_value** = `Vector2(0, 0)` [🔗](#class-visualshadernodevec2parameter-property-default-value)

- void **set\_default\_value**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_default\_value**()


A default value to be assigned within the shader.

* * *

[bool](class_bool.md#class-bool) **default\_value\_enabled** = `false` [🔗](#class-visualshadernodevec2parameter-property-default-value-enabled)

- void **set\_default\_value\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_default\_value\_enabled**()


Enables usage of the [default\_value](#class-visualshadernodevec2parameter-property-default-value).

[Previous](class_visualshadernodevec2constant.md "VisualShaderNodeVec2Constant") [Next](class_visualshadernodevec3constant.md "VisualShaderNodeVec3Constant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodevec2constant.md "VisualShaderNodeVec2Constant") [Next](class_visualshadernodevec3constant.md "VisualShaderNodeVec3Constant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).