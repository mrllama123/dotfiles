---
title: VisualShaderNodeVec4Parameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodevec4parameter.html
crawled_at: "2026-08-13T10:36:21+12:00"
content_hash: bd9636be0381080dfb96f2dcf61658f5d1359c30e425b0f39b4e62e7de2a2a3b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeVec4Parameter

* * *

# VisualShaderNodeVec4Parameter

**Inherits:** [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 4D vector parameter to be used within the visual shader graph.

## Description

Translated to `uniform vec4` in the shader language.

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector4](class_vector4.md#class-vector4) | [default\_value](#class-visualshadernodevec4parameter-property-default-value) | `Vector4(0, 0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [default\_value\_enabled](#class-visualshadernodevec4parameter-property-default-value-enabled) | `false` |

* * *

## Property Descriptions

[Vector4](class_vector4.md#class-vector4) **default\_value** = `Vector4(0, 0, 0, 0)` [🔗](#class-visualshadernodevec4parameter-property-default-value)

- void **set\_default\_value**(value: [Vector4](class_vector4.md#class-vector4))

- [Vector4](class_vector4.md#class-vector4) **get\_default\_value**()


A default value to be assigned within the shader.

* * *

[bool](class_bool.md#class-bool) **default\_value\_enabled** = `false` [🔗](#class-visualshadernodevec4parameter-property-default-value-enabled)

- void **set\_default\_value\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_default\_value\_enabled**()


Enables usage of the [default\_value](#class-visualshadernodevec4parameter-property-default-value).

[Previous](class_visualshadernodevec4constant.md "VisualShaderNodeVec4Constant") [Next](class_visualshadernodevectorbase.md "VisualShaderNodeVectorBase")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodevec4constant.md "VisualShaderNodeVec4Constant") [Next](class_visualshadernodevectorbase.md "VisualShaderNodeVectorBase")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).