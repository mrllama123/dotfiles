---
title: VisualShaderNodeVarying — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodevarying.html
crawled_at: "2026-08-13T10:21:33+12:00"
content_hash: 3a6f18219cb45b1af577550497109feea4bf4189377415f2b2dc15c270cb15fc
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeVarying

* * *

# VisualShaderNodeVarying

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShaderNodeVaryingGetter](class_visualshadernodevaryinggetter.md#class-visualshadernodevaryinggetter), [VisualShaderNodeVaryingSetter](class_visualshadernodevaryingsetter.md#class-visualshadernodevaryingsetter)

A visual shader node that represents a "varying" shader value.

## Description

Varying values are shader variables that can be passed between shader functions, e.g. from Vertex shader to Fragment shader.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [varying\_name](#class-visualshadernodevarying-property-varying-name) | `"[None]"` |
| [VaryingType](class_visualshader.md#enum-visualshader-varyingtype) | [varying\_type](#class-visualshadernodevarying-property-varying-type) | `0` |

* * *

## Property Descriptions

[String](class_string.md#class-string) **varying\_name** = `"[None]"` [🔗](#class-visualshadernodevarying-property-varying-name)

- void **set\_varying\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_varying\_name**()


Name of the variable. Must be unique.

* * *

[VaryingType](class_visualshader.md#enum-visualshader-varyingtype) **varying\_type** = `0` [🔗](#class-visualshadernodevarying-property-varying-type)

- void **set\_varying\_type**(value: [VaryingType](class_visualshader.md#enum-visualshader-varyingtype))

- [VaryingType](class_visualshader.md#enum-visualshader-varyingtype) **get\_varying\_type**()


Type of the variable. Determines where the variable can be accessed.

[Previous](class_visualshadernodeuvpolarcoord.md "VisualShaderNodeUVPolarCoord") [Next](class_visualshadernodevaryinggetter.md "VisualShaderNodeVaryingGetter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeuvpolarcoord.md "VisualShaderNodeUVPolarCoord") [Next](class_visualshadernodevaryinggetter.md "VisualShaderNodeVaryingGetter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).