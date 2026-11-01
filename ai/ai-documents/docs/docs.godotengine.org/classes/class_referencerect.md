---
title: ReferenceRect — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_referencerect.html
crawled_at: "2026-08-13T10:36:10+12:00"
content_hash: 0b102fc662f2224958f7a6fc782cc16ed12b1d594391e6c6827334c4b4ebea20
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ReferenceRect

* * *

# ReferenceRect

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A rectangular box for designing UIs.

## Description

A rectangular box that displays only a colored border around its rectangle (see [Control.get\_rect()](class_control.md#class-control-method-get-rect)). It can be used to visualize the extents of a [Control](class_control.md#class-control) node, for testing purposes.

## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [border\_color](#class-referencerect-property-border-color) | `Color(1, 0, 0, 1)` |
| [float](class_float.md#class-float) | [border\_width](#class-referencerect-property-border-width) | `1.0` |
| [bool](class_bool.md#class-bool) | [editor\_only](#class-referencerect-property-editor-only) | `true` |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **border\_color** = `Color(1, 0, 0, 1)` [🔗](#class-referencerect-property-border-color)

- void **set\_border\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_border\_color**()


Sets the border color of the **ReferenceRect**.

* * *

[float](class_float.md#class-float) **border\_width** = `1.0` [🔗](#class-referencerect-property-border-width)

- void **set\_border\_width**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_border\_width**()


Sets the border width of the **ReferenceRect**. The border grows both inwards and outwards with respect to the rectangle box.

* * *

[bool](class_bool.md#class-bool) **editor\_only** = `true` [🔗](#class-referencerect-property-editor-only)

- void **set\_editor\_only**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_editor\_only**()


If `true`, the **ReferenceRect** will only be visible while in editor. Otherwise, **ReferenceRect** will be visible in the running project.

[Previous](class_raycast3d.md "RayCast3D") [Next](class_reflectionprobe.md "ReflectionProbe")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_raycast3d.md "RayCast3D") [Next](class_reflectionprobe.md "ReflectionProbe")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).