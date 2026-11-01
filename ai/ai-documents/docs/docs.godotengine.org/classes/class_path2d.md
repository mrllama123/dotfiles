---
title: Path2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_path2d.html
crawled_at: "2026-08-13T10:21:01+12:00"
content_hash: 8fa556b5d29bc459bc63bcea072f6f13ee3e4128611471be259f55689711e1cc
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Path2D

* * *

# Path2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Contains a [Curve2D](class_curve2d.md#class-curve2d) path for [PathFollow2D](class_pathfollow2d.md#class-pathfollow2d) nodes to follow.

## Description

Can have [PathFollow2D](class_pathfollow2d.md#class-pathfollow2d) child nodes moving along the [Curve2D](class_curve2d.md#class-curve2d). See [PathFollow2D](class_pathfollow2d.md#class-pathfollow2d) for more information on usage.

**Note:** The path is considered as relative to the moved nodes (children of [PathFollow2D](class_pathfollow2d.md#class-pathfollow2d)). As such, the curve should usually start with a zero vector ( `(0, 0)`).

## Properties

|     |     |
| --- | --- |
| [Curve2D](class_curve2d.md#class-curve2d) | [curve](#class-path2d-property-curve) |

* * *

## Property Descriptions

[Curve2D](class_curve2d.md#class-curve2d) **curve** [🔗](#class-path2d-property-curve)

- void **set\_curve**(value: [Curve2D](class_curve2d.md#class-curve2d))

- [Curve2D](class_curve2d.md#class-curve2d) **get\_curve**()


A [Curve2D](class_curve2d.md#class-curve2d) describing the path.

[Previous](class_parallaxlayer.md "ParallaxLayer") [Next](class_path3d.md "Path3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_parallaxlayer.md "ParallaxLayer") [Next](class_path3d.md "Path3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).