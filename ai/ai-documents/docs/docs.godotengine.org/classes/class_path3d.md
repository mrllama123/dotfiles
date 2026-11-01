---
title: Path3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_path3d.html
crawled_at: "2026-08-13T10:22:09+12:00"
content_hash: 65e8080fe8d33ee9929f0618f59caba18841232d4be7e11d7a099805cc12040b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Path3D

* * *

# Path3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Contains a [Curve3D](class_curve3d.md#class-curve3d) path for [PathFollow3D](class_pathfollow3d.md#class-pathfollow3d) nodes to follow.

## Description

Can have [PathFollow3D](class_pathfollow3d.md#class-pathfollow3d) child nodes moving along the [Curve3D](class_curve3d.md#class-curve3d). See [PathFollow3D](class_pathfollow3d.md#class-pathfollow3d) for more information on the usage.

Note that the path is considered as relative to the moved nodes (children of [PathFollow3D](class_pathfollow3d.md#class-pathfollow3d)). As such, the curve should usually start with a zero vector `(0, 0, 0)`.

## Properties

|     |     |     |
| --- | --- | --- |
| [Curve3D](class_curve3d.md#class-curve3d) | [curve](#class-path3d-property-curve) |  |
| [Color](class_color.md#class-color) | [debug\_custom\_color](#class-path3d-property-debug-custom-color) | `Color(0, 0, 0, 1)` |

* * *

## Signals

**curve\_changed**() [🔗](#class-path3d-signal-curve-changed)

Emitted when the [curve](#class-path3d-property-curve) changes.

* * *

**debug\_color\_changed**() [🔗](#class-path3d-signal-debug-color-changed)

Emitted when the [debug\_custom\_color](#class-path3d-property-debug-custom-color) changes.

* * *

## Property Descriptions

[Curve3D](class_curve3d.md#class-curve3d) **curve** [🔗](#class-path3d-property-curve)

- void **set\_curve**(value: [Curve3D](class_curve3d.md#class-curve3d))

- [Curve3D](class_curve3d.md#class-curve3d) **get\_curve**()


A [Curve3D](class_curve3d.md#class-curve3d) describing the path.

* * *

[Color](class_color.md#class-color) **debug\_custom\_color** = `Color(0, 0, 0, 1)` [🔗](#class-path3d-property-debug-custom-color)

- void **set\_debug\_custom\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_debug\_custom\_color**()


The custom color to use to draw the shape in the editor.

If set to `Color(0.0, 0.0, 0.0)` (by default), the color set in EditorSettings is used.

[Previous](class_path2d.md "Path2D") [Next](class_pathfollow2d.md "PathFollow2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_path2d.md "Path2D") [Next](class_pathfollow2d.md "PathFollow2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).