---
title: VisualShaderNodeVec3Parameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodevec3parameter.html
crawled_at: "2026-08-13T10:20:55+12:00"
content_hash: fc09ff30794235e23de25cacd7db8e74d840f8774bc852bf5dc21e38bc415fae
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeVec3Parameter

* * *

# VisualShaderNodeVec3Parameter

**Inherits:** [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Vector3](class_vector3.md#class-vector3) parameter to be used within the visual shader graph.

## Description

Translated to `uniform vec3` in the shader language.

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [default\_value](#class-visualshadernodevec3parameter-property-default-value) | `Vector3(0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [default\_value\_enabled](#class-visualshadernodevec3parameter-property-default-value-enabled) | `false` |

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **default\_value** = `Vector3(0, 0, 0)` [🔗](#class-visualshadernodevec3parameter-property-default-value)

- void **set\_default\_value**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_default\_value**()


A default value to be assigned within the shader.

* * *

[bool](class_bool.md#class-bool) **default\_value\_enabled** = `false` [🔗](#class-visualshadernodevec3parameter-property-default-value-enabled)

- void **set\_default\_value\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_default\_value\_enabled**()


Enables usage of the [default\_value](#class-visualshadernodevec3parameter-property-default-value).

[Previous](class_visualshadernodevec3constant.md "VisualShaderNodeVec3Constant") [Next](class_visualshadernodevec4constant.md "VisualShaderNodeVec4Constant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodevec3constant.md "VisualShaderNodeVec3Constant") [Next](class_visualshadernodevec4constant.md "VisualShaderNodeVec4Constant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).