---
title: VisualShaderNodeExpression — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeexpression.html
crawled_at: "2026-08-13T10:26:15+12:00"
content_hash: 6402865ffacc1ea9d8520b3d8672bfbec5efe117340c94ea33420d9e31200ed9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeExpression

* * *

# VisualShaderNodeExpression

**Inherits:** [VisualShaderNodeGroupBase](class_visualshadernodegroupbase.md#class-visualshadernodegroupbase) **<** [VisualShaderNodeResizableBase](class_visualshadernoderesizablebase.md#class-visualshadernoderesizablebase) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShaderNodeGlobalExpression](class_visualshadernodeglobalexpression.md#class-visualshadernodeglobalexpression)

A custom visual shader graph expression written in Godot Shading Language.

## Description

Custom Godot Shading Language expression, with a custom number of input and output ports.

The provided code is directly injected into the graph's matching shader function ( `vertex`, `fragment`, or `light`), so it cannot be used to declare functions, varyings, uniforms, or global constants. See [VisualShaderNodeGlobalExpression](class_visualshadernodeglobalexpression.md#class-visualshadernodeglobalexpression) for such global definitions.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [expression](#class-visualshadernodeexpression-property-expression) | `""` |

* * *

## Property Descriptions

[String](class_string.md#class-string) **expression** = `""` [🔗](#class-visualshadernodeexpression-property-expression)

- void **set\_expression**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_expression**()


An expression in Godot Shading Language, which will be injected at the start of the graph's matching shader function ( `vertex`, `fragment`, or `light`), and thus cannot be used to declare functions, varyings, uniforms, or global constants.

[Previous](class_visualshadernodedotproduct.md "VisualShaderNodeDotProduct") [Next](class_visualshadernodefaceforward.md "VisualShaderNodeFaceForward")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodedotproduct.md "VisualShaderNodeDotProduct") [Next](class_visualshadernodefaceforward.md "VisualShaderNodeFaceForward")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).