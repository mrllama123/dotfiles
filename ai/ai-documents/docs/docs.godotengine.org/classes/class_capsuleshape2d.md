---
title: CapsuleShape2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_capsuleshape2d.html
crawled_at: "2026-08-13T10:31:23+12:00"
content_hash: 9aa2e0a3cabf5c1f0ecdde29444d4bff81d9e72b1c7d18828b06db1aaaf7ca71
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CapsuleShape2D

* * *

# CapsuleShape2D

**Inherits:** [Shape2D](class_shape2d.md#class-shape2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 2D capsule shape used for physics collision.

## Description

A 2D capsule shape, intended for use in physics. Usually used to provide a shape for a [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d).

**Performance:** **CapsuleShape2D** is fast to check collisions against, but it is slower than [RectangleShape2D](class_rectangleshape2d.md#class-rectangleshape2d) and [CircleShape2D](class_circleshape2d.md#class-circleshape2d).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [height](#class-capsuleshape2d-property-height) | `30.0` |
| [float](class_float.md#class-float) | [mid\_height](#class-capsuleshape2d-property-mid-height) |  |
| [float](class_float.md#class-float) | [radius](#class-capsuleshape2d-property-radius) | `10.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **height** = `30.0` [🔗](#class-capsuleshape2d-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


The capsule's full height, including the semicircles.

**Note:** The [height](#class-capsuleshape2d-property-height) of a capsule must be at least twice its [radius](#class-capsuleshape2d-property-radius). Otherwise, the capsule becomes a circle. If the [height](#class-capsuleshape2d-property-height) is less than twice the [radius](#class-capsuleshape2d-property-radius), the properties adjust to a valid value.

* * *

[float](class_float.md#class-float) **mid\_height** [🔗](#class-capsuleshape2d-property-mid-height)

- void **set\_mid\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mid\_height**()


The capsule's height, excluding the semicircles. This is the height of the central rectangular part in the middle of the capsule, and is the distance between the centers of the two semicircles. This is a wrapper for [height](#class-capsuleshape2d-property-height).

* * *

[float](class_float.md#class-float) **radius** = `10.0` [🔗](#class-capsuleshape2d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The capsule's radius.

**Note:** The [radius](#class-capsuleshape2d-property-radius) of a capsule cannot be greater than half of its [height](#class-capsuleshape2d-property-height). Otherwise, the capsule becomes a circle. If the [radius](#class-capsuleshape2d-property-radius) is greater than half of the [height](#class-capsuleshape2d-property-height), the properties adjust to a valid value.

[Previous](class_capsulemesh.md "CapsuleMesh") [Next](class_capsuleshape3d.md "CapsuleShape3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_capsulemesh.md "CapsuleMesh") [Next](class_capsuleshape3d.md "CapsuleShape3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).