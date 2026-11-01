---
title: PathFollow3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_pathfollow3d.html
crawled_at: "2026-08-13T10:34:28+12:00"
content_hash: 8030327b77ae39fb483f04d67b0c11ceaa530668a031b8444a77e708bcf4316f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PathFollow3D

* * *

# PathFollow3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Point sampler for a [Path3D](class_path3d.md#class-path3d).

## Description

This node takes its parent [Path3D](class_path3d.md#class-path3d), and returns the coordinates of a point within it, given a distance from the first vertex.

It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be children of this node. The descendant nodes will then move accordingly when setting the [progress](#class-pathfollow3d-property-progress) in this node.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [cubic\_interp](#class-pathfollow3d-property-cubic-interp) | `true` |
| [float](class_float.md#class-float) | [h\_offset](#class-pathfollow3d-property-h-offset) | `0.0` |
| [bool](class_bool.md#class-bool) | [loop](#class-pathfollow3d-property-loop) | `true` |
| [float](class_float.md#class-float) | [progress](#class-pathfollow3d-property-progress) | `0.0` |
| [float](class_float.md#class-float) | [progress\_ratio](#class-pathfollow3d-property-progress-ratio) | `0.0` |
| [RotationMode](#enum-pathfollow3d-rotationmode) | [rotation\_mode](#class-pathfollow3d-property-rotation-mode) | `3` |
| [bool](class_bool.md#class-bool) | [tilt\_enabled](#class-pathfollow3d-property-tilt-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [use\_model\_front](#class-pathfollow3d-property-use-model-front) | `false` |
| [float](class_float.md#class-float) | [v\_offset](#class-pathfollow3d-property-v-offset) | `0.0` |

## Methods

|     |     |
| --- | --- |
| [Transform3D](class_transform3d.md#class-transform3d) | [correct\_posture](#class-pathfollow3d-method-correct-posture)(transform: [Transform3D](class_transform3d.md#class-transform3d), rotation\_mode: [RotationMode](#enum-pathfollow3d-rotationmode)) static |

* * *

## Enumerations

enum **RotationMode**: [🔗](#enum-pathfollow3d-rotationmode)

[RotationMode](#enum-pathfollow3d-rotationmode) **ROTATION\_NONE** = `0`

Forbids the PathFollow3D to rotate.

[RotationMode](#enum-pathfollow3d-rotationmode) **ROTATION\_Y** = `1`

Allows the PathFollow3D to rotate in the Y axis only.

[RotationMode](#enum-pathfollow3d-rotationmode) **ROTATION\_XY** = `2`

Allows the PathFollow3D to rotate in both the X, and Y axes.

[RotationMode](#enum-pathfollow3d-rotationmode) **ROTATION\_XYZ** = `3`

Allows the PathFollow3D to rotate in any axis.

[RotationMode](#enum-pathfollow3d-rotationmode) **ROTATION\_ORIENTED** = `4`

Uses the up vector information in a [Curve3D](class_curve3d.md#class-curve3d) to enforce orientation. This rotation mode requires the [Path3D](class_path3d.md#class-path3d)'s [Curve3D.up\_vector\_enabled](class_curve3d.md#class-curve3d-property-up-vector-enabled) property to be set to `true`.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **cubic\_interp** = `true` [🔗](#class-pathfollow3d-property-cubic-interp)

- void **set\_cubic\_interpolation**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_cubic\_interpolation**()


If `true`, the position between two cached points is interpolated cubically, and linearly otherwise.

The points along the [Curve3D](class_curve3d.md#class-curve3d) of the [Path3D](class_path3d.md#class-path3d) are precomputed before use, for faster calculations. The point at the requested offset is then calculated interpolating between two adjacent cached points. This may present a problem if the curve makes sharp turns, as the cached points may not follow the curve closely enough.

There are two answers to this problem: either increase the number of cached points and increase memory consumption, or make a cubic interpolation between two points at the cost of (slightly) slower calculations.

* * *

[float](class_float.md#class-float) **h\_offset** = `0.0` [🔗](#class-pathfollow3d-property-h-offset)

- void **set\_h\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_h\_offset**()


The node's offset along the curve.

* * *

[bool](class_bool.md#class-bool) **loop** = `true` [🔗](#class-pathfollow3d-property-loop)

- void **set\_loop**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_loop**()


If `true`, any offset outside the path's length will wrap around, instead of stopping at the ends. Use it for cyclic paths.

* * *

[float](class_float.md#class-float) **progress** = `0.0` [🔗](#class-pathfollow3d-property-progress)

- void **set\_progress**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_progress**()


The distance from the first vertex, measured in 3D units along the path. Changing this value sets this node's position to a point within the path.

* * *

[float](class_float.md#class-float) **progress\_ratio** = `0.0` [🔗](#class-pathfollow3d-property-progress-ratio)

- void **set\_progress\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_progress\_ratio**()


The distance from the first vertex, considering 0.0 as the first vertex and 1.0 as the last. This is just another way of expressing the progress within the path, as the progress supplied is multiplied internally by the path's length.

It can be set or get only if the **PathFollow3D** is the child of a [Path3D](class_path3d.md#class-path3d) which is part of the scene tree, and that this [Path3D](class_path3d.md#class-path3d) has a [Curve3D](class_curve3d.md#class-curve3d) with a non-zero length. Otherwise, trying to set this field will print an error, and getting this field will return `0.0`.

* * *

[RotationMode](#enum-pathfollow3d-rotationmode) **rotation\_mode** = `3` [🔗](#class-pathfollow3d-property-rotation-mode)

- void **set\_rotation\_mode**(value: [RotationMode](#enum-pathfollow3d-rotationmode))

- [RotationMode](#enum-pathfollow3d-rotationmode) **get\_rotation\_mode**()


Allows or forbids rotation on one or more axes, depending on the [RotationMode](#enum-pathfollow3d-rotationmode) constants being used.

* * *

[bool](class_bool.md#class-bool) **tilt\_enabled** = `true` [🔗](#class-pathfollow3d-property-tilt-enabled)

- void **set\_tilt\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_tilt\_enabled**()


If `true`, the tilt property of [Curve3D](class_curve3d.md#class-curve3d) takes effect.

* * *

[bool](class_bool.md#class-bool) **use\_model\_front** = `false` [🔗](#class-pathfollow3d-property-use-model-front)

- void **set\_use\_model\_front**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_model\_front**()


If `true`, the node moves on the travel path with orienting the +Z axis as forward. See also [Vector3.FORWARD](class_vector3.md#class-vector3-constant-forward) and [Vector3.MODEL\_FRONT](class_vector3.md#class-vector3-constant-model-front).

* * *

[float](class_float.md#class-float) **v\_offset** = `0.0` [🔗](#class-pathfollow3d-property-v-offset)

- void **set\_v\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_v\_offset**()


The node's offset perpendicular to the curve.

* * *

## Method Descriptions

[Transform3D](class_transform3d.md#class-transform3d) **correct\_posture**(transform: [Transform3D](class_transform3d.md#class-transform3d), rotation\_mode: [RotationMode](#enum-pathfollow3d-rotationmode)) static [🔗](#class-pathfollow3d-method-correct-posture)

Correct the `transform`. `rotation_mode` implicitly specifies how posture (forward, up and sideway direction) is calculated.

[Previous](class_pathfollow2d.md "PathFollow2D") [Next](class_physicalbone2d.md "PhysicalBone2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_pathfollow2d.md "PathFollow2D") [Next](class_physicalbone2d.md "PhysicalBone2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).