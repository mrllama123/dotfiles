---
title: VisualShaderNodeColorConstant — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodecolorconstant.html
crawled_at: "2026-08-13T10:24:26+12:00"
content_hash: a504e294be9745d94b706d8e8a21b2806ed0d7ad5d10cc40235933ca09b01809
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeColorConstant

* * *

# VisualShaderNodeColorConstant

**Inherits:** [VisualShaderNodeConstant](class_visualshadernodeconstant.md#class-visualshadernodeconstant) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Color](class_color.md#class-color) constant to be used within the visual shader graph.

## Description

Has two output ports representing RGB and alpha channels of [Color](class_color.md#class-color).

Translated to `vec3 rgb` and `float alpha` in the shader language.

## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [constant](#class-visualshadernodecolorconstant-property-constant) | `Color(1, 1, 1, 1)` |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **constant** = `Color(1, 1, 1, 1)` [🔗](#class-visualshadernodecolorconstant-property-constant)

- void **set\_constant**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_constant**()


A [Color](class_color.md#class-color) constant which represents a state of this node.

[Previous](class_visualshadernodeclamp.md "VisualShaderNodeClamp") [Next](class_visualshadernodecolorfunc.md "VisualShaderNodeColorFunc")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeclamp.md "VisualShaderNodeClamp") [Next](class_visualshadernodecolorfunc.md "VisualShaderNodeColorFunc")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).