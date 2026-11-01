---
title: VisualShaderNodeUVFunc — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeuvfunc.html
crawled_at: "2026-08-13T10:38:45+12:00"
content_hash: 5e3647906cd126ddc097f00d9d4b6b292e493d6865271e0fbd99f7480d95bba9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeUVFunc

* * *

# VisualShaderNodeUVFunc

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Contains functions to modify texture coordinates ( `uv`) to be used within the visual shader graph.

## Description

UV functions are similar to [Vector2](class_vector2.md#class-vector2) functions, but the input port of this node uses the shader's UV value by default.

## Properties

|     |     |     |
| --- | --- | --- |
| [Function](#enum-visualshadernodeuvfunc-function) | [function](#class-visualshadernodeuvfunc-property-function) | `0` |

* * *

## Enumerations

enum **Function**: [🔗](#enum-visualshadernodeuvfunc-function)

[Function](#enum-visualshadernodeuvfunc-function) **FUNC\_PANNING** = `0`

Translates `uv` by using `scale` and `offset` values using the following formula: `uv = uv + offset * scale`. `uv` port is connected to `UV` built-in by default.

[Function](#enum-visualshadernodeuvfunc-function) **FUNC\_SCALING** = `1`

Scales `uv` by using `scale` and `pivot` values using the following formula: `uv = (uv - pivot) * scale + pivot`. `uv` port is connected to `UV` built-in by default.

[Function](#enum-visualshadernodeuvfunc-function) **FUNC\_MAX** = `2`

Represents the size of the [Function](#enum-visualshadernodeuvfunc-function) enum.

* * *

## Property Descriptions

[Function](#enum-visualshadernodeuvfunc-function) **function** = `0` [🔗](#class-visualshadernodeuvfunc-property-function)

- void **set\_function**(value: [Function](#enum-visualshadernodeuvfunc-function))

- [Function](#enum-visualshadernodeuvfunc-function) **get\_function**()


A function to be applied to the texture coordinates.

[Previous](class_visualshadernodeuintparameter.md "VisualShaderNodeUIntParameter") [Next](class_visualshadernodeuvpolarcoord.md "VisualShaderNodeUVPolarCoord")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeuintparameter.md "VisualShaderNodeUIntParameter") [Next](class_visualshadernodeuvpolarcoord.md "VisualShaderNodeUVPolarCoord")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).