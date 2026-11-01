---
title: RectangleShape2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rectangleshape2d.html
crawled_at: "2026-08-13T10:23:52+12:00"
content_hash: 4104237b68730ae3041a956415fab85003d480d8018a807c488c5aea798c83b1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RectangleShape2D

* * *

# RectangleShape2D

**Inherits:** [Shape2D](class_shape2d.md#class-shape2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 2D rectangle shape used for physics collision.

## Description

A 2D rectangle shape, intended for use in physics. Usually used to provide a shape for a [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d).

**Performance:** **RectangleShape2D** is fast to check collisions against. It is faster than [CapsuleShape2D](class_capsuleshape2d.md#class-capsuleshape2d), but slower than [CircleShape2D](class_circleshape2d.md#class-circleshape2d).

## Tutorials

- [2D Pong Demo](https://godotengine.org/asset-library/asset/2728)

- [2D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2719)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [size](#class-rectangleshape2d-property-size) | `Vector2(20, 20)` |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **size** = `Vector2(20, 20)` [🔗](#class-rectangleshape2d-property-size)

- void **set\_size**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_size**()


The rectangle's width and height.

[Previous](class_rdshaderspirv.md "RDShaderSPIRV") [Next](class_ribbontrailmesh.md "RibbonTrailMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdshaderspirv.md "RDShaderSPIRV") [Next](class_ribbontrailmesh.md "RibbonTrailMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).