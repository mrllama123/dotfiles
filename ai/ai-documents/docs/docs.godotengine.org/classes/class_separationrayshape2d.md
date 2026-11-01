---
title: SeparationRayShape2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_separationrayshape2d.html
crawled_at: "2026-08-13T10:18:31+12:00"
content_hash: 1ecf3f12733855bb60e224d871d74133ce1c7e85f8861be43d7fc77af81f226e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SeparationRayShape2D

* * *

# SeparationRayShape2D

**Inherits:** [Shape2D](class_shape2d.md#class-shape2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 2D ray shape used for physics collision that tries to separate itself from any collider.

## Description

A 2D ray shape, intended for use in physics. Usually used to provide a shape for a [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d). When a **SeparationRayShape2D** collides with an object, it tries to separate itself from it by moving its endpoint to the collision point. For example, a **SeparationRayShape2D** next to a character can allow it to instantly move up when touching stairs.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [length](#class-separationrayshape2d-property-length) | `20.0` |
| [bool](class_bool.md#class-bool) | [slide\_on\_slope](#class-separationrayshape2d-property-slide-on-slope) | `false` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **length** = `20.0` [🔗](#class-separationrayshape2d-property-length)

- void **set\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_length**()


The ray's length.

* * *

[bool](class_bool.md#class-bool) **slide\_on\_slope** = `false` [🔗](#class-separationrayshape2d-property-slide-on-slope)

- void **set\_slide\_on\_slope**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_slide\_on\_slope**()


If `false` (default), the shape always separates and returns a normal along its own direction.

If `true`, the shape can return the correct normal and separate in any direction, allowing sliding motion on slopes.

[Previous](class_segmentshape2d.md "SegmentShape2D") [Next](class_separationrayshape3d.md "SeparationRayShape3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_segmentshape2d.md "SegmentShape2D") [Next](class_separationrayshape3d.md "SeparationRayShape3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).