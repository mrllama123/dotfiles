---
title: VisualShaderNodeIs — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeis.html
crawled_at: "2026-08-13T10:35:05+12:00"
content_hash: f30b08e6a47e0c2358c3437fc1fb046e75d447cc15ecdfbfed539fe4f331c730
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeIs

* * *

# VisualShaderNodeIs

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A boolean comparison operator to be used within the visual shader graph.

## Description

Returns the boolean result of the comparison between `INF` or `NaN` and a scalar parameter.

## Properties

|     |     |     |
| --- | --- | --- |
| [Function](#enum-visualshadernodeis-function) | [function](#class-visualshadernodeis-property-function) | `0` |

* * *

## Enumerations

enum **Function**: [🔗](#enum-visualshadernodeis-function)

[Function](#enum-visualshadernodeis-function) **FUNC\_IS\_INF** = `0`

Comparison with `INF` (Infinity).

[Function](#enum-visualshadernodeis-function) **FUNC\_IS\_NAN** = `1`

Comparison with `NaN` (Not a Number; indicates invalid numeric results, such as division by zero).

[Function](#enum-visualshadernodeis-function) **FUNC\_MAX** = `2`

Represents the size of the [Function](#enum-visualshadernodeis-function) enum.

* * *

## Property Descriptions

[Function](#enum-visualshadernodeis-function) **function** = `0` [🔗](#class-visualshadernodeis-property-function)

- void **set\_function**(value: [Function](#enum-visualshadernodeis-function))

- [Function](#enum-visualshadernodeis-function) **get\_function**()


The comparison function.

[Previous](class_visualshadernodeintparameter.md "VisualShaderNodeIntParameter") [Next](class_visualshadernodelinearscenedepth.md "VisualShaderNodeLinearSceneDepth")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeintparameter.md "VisualShaderNodeIntParameter") [Next](class_visualshadernodelinearscenedepth.md "VisualShaderNodeLinearSceneDepth")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).