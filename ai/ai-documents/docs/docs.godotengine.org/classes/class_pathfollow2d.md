---
title: PathFollow2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_pathfollow2d.html
crawled_at: "2026-08-13T10:36:47+12:00"
content_hash: 38225d80daf4ab12932f5b6712376f68ae428bc27609a0cd92561e7a4a57f753
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PathFollow2D

* * *

# PathFollow2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Point sampler for a [Path2D](class_path2d.md#class-path2d).

## Description

This node takes its parent [Path2D](class_path2d.md#class-path2d), and returns the coordinates of a point within it, given a distance from the first vertex.

It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be children of this node. The descendant nodes will then move accordingly when setting the [progress](#class-pathfollow2d-property-progress) in this node.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [cubic\_interp](#class-pathfollow2d-property-cubic-interp) | `true` |
| [float](class_float.md#class-float) | [h\_offset](#class-pathfollow2d-property-h-offset) | `0.0` |
| [bool](class_bool.md#class-bool) | [loop](#class-pathfollow2d-property-loop) | `true` |
| [float](class_float.md#class-float) | [progress](#class-pathfollow2d-property-progress) | `0.0` |
| [float](class_float.md#class-float) | [progress\_ratio](#class-pathfollow2d-property-progress-ratio) | `0.0` |
| [bool](class_bool.md#class-bool) | [rotates](#class-pathfollow2d-property-rotates) | `true` |
| [float](class_float.md#class-float) | [v\_offset](#class-pathfollow2d-property-v-offset) | `0.0` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **cubic\_interp** = `true` [🔗](#class-pathfollow2d-property-cubic-interp)

- void **set\_cubic\_interpolation**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_cubic\_interpolation**()


If `true`, the position between two cached points is interpolated cubically, and linearly otherwise.

The points along the [Curve2D](class_curve2d.md#class-curve2d) of the [Path2D](class_path2d.md#class-path2d) are precomputed before use, for faster calculations. The point at the requested offset is then calculated interpolating between two adjacent cached points. This may present a problem if the curve makes sharp turns, as the cached points may not follow the curve closely enough.

There are two answers to this problem: either increase the number of cached points and increase memory consumption, or make a cubic interpolation between two points at the cost of (slightly) slower calculations.

* * *

[float](class_float.md#class-float) **h\_offset** = `0.0` [🔗](#class-pathfollow2d-property-h-offset)

- void **set\_h\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_h\_offset**()


The node's offset along the curve.

* * *

[bool](class_bool.md#class-bool) **loop** = `true` [🔗](#class-pathfollow2d-property-loop)

- void **set\_loop**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_loop**()


If `true`, any offset outside the path's length will wrap around, instead of stopping at the ends. Use it for cyclic paths.

* * *

[float](class_float.md#class-float) **progress** = `0.0` [🔗](#class-pathfollow2d-property-progress)

- void **set\_progress**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_progress**()


The distance along the path, in pixels. Changing this value sets this node's position to a point within the path.

* * *

[float](class_float.md#class-float) **progress\_ratio** = `0.0` [🔗](#class-pathfollow2d-property-progress-ratio)

- void **set\_progress\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_progress\_ratio**()


The distance along the path as a number in the range 0.0 (for the first vertex) to 1.0 (for the last). This is just another way of expressing the progress within the path, as the offset supplied is multiplied internally by the path's length.

It can be set or get only if the **PathFollow2D** is the child of a [Path2D](class_path2d.md#class-path2d) which is part of the scene tree, and that this [Path2D](class_path2d.md#class-path2d) has a [Curve2D](class_curve2d.md#class-curve2d) with a non-zero length. Otherwise, trying to set this field will print an error, and getting this field will return `0.0`.

* * *

[bool](class_bool.md#class-bool) **rotates** = `true` [🔗](#class-pathfollow2d-property-rotates)

- void **set\_rotates**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_rotating**()


If `true`, this node rotates to follow the path, with the +X direction facing forward on the path.

* * *

[float](class_float.md#class-float) **v\_offset** = `0.0` [🔗](#class-pathfollow2d-property-v-offset)

- void **set\_v\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_v\_offset**()


The node's offset perpendicular to the curve.

[Previous](class_path3d.md "Path3D") [Next](class_pathfollow3d.md "PathFollow3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_path3d.md "Path3D") [Next](class_pathfollow3d.md "PathFollow3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).