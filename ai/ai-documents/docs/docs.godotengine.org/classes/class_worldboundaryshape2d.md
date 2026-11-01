---
title: WorldBoundaryShape2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_worldboundaryshape2d.html
crawled_at: "2026-08-13T10:29:25+12:00"
content_hash: b4521a57fcb86d6cc7481bc0d15d9313e61464bc659aa6220935e1d1cbdfe297
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WorldBoundaryShape2D

* * *

# WorldBoundaryShape2D

**Inherits:** [Shape2D](class_shape2d.md#class-shape2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 2D world boundary (half-plane) shape used for physics collision.

## Description

A 2D world boundary shape, intended for use in physics. **WorldBoundaryShape2D** works like an infinite straight line that forces all physics bodies to stay above it. The line's normal determines which direction is considered as "above" and in the editor, the smaller line over it represents this direction. It can for example be used for endless flat floors.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [distance](#class-worldboundaryshape2d-property-distance) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [normal](#class-worldboundaryshape2d-property-normal) | `Vector2(0, -1)` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **distance** = `0.0` [🔗](#class-worldboundaryshape2d-property-distance)

- void **set\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_distance**()


The distance from the origin to the line, expressed in terms of [normal](#class-worldboundaryshape2d-property-normal) (according to its direction and magnitude). Actual absolute distance from the origin to the line can be calculated as `abs(distance) / normal.length()`.

In the scalar equation of the line `ax + by = d`, this is `d`, while the `(a, b)` coordinates are represented by the [normal](#class-worldboundaryshape2d-property-normal) property.

* * *

[Vector2](class_vector2.md#class-vector2) **normal** = `Vector2(0, -1)` [🔗](#class-worldboundaryshape2d-property-normal)

- void **set\_normal**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_normal**()


The line's normal, typically a unit vector. Its direction indicates the non-colliding half-plane. Can be of any length but zero. Defaults to [Vector2.UP](class_vector2.md#class-vector2-constant-up).

[Previous](class_world3d.md "World3D") [Next](class_worldboundaryshape3d.md "WorldBoundaryShape3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_world3d.md "World3D") [Next](class_worldboundaryshape3d.md "WorldBoundaryShape3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).