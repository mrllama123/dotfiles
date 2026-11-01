---
title: CapsuleShape3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_capsuleshape3d.html
crawled_at: "2026-08-13T10:19:20+12:00"
content_hash: 2e8910991313fd03898100ad098e41cf083906fb87d55bd46a936a22e4bca08b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CapsuleShape3D

* * *

# CapsuleShape3D

**Inherits:** [Shape3D](class_shape3d.md#class-shape3d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 3D capsule shape used for physics collision.

## Description

A 3D capsule shape, intended for use in physics. Usually used to provide a shape for a [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d).

**Performance:** **CapsuleShape3D** is fast to check collisions against. It is faster than [CylinderShape3D](class_cylindershape3d.md#class-cylindershape3d), but slower than [SphereShape3D](class_sphereshape3d.md#class-sphereshape3d) and [BoxShape3D](class_boxshape3d.md#class-boxshape3d).

## Tutorials

- [3D Physics Tests Demo](https://godotengine.org/asset-library/asset/2747)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [height](#class-capsuleshape3d-property-height) | `2.0` |
| [float](class_float.md#class-float) | [mid\_height](#class-capsuleshape3d-property-mid-height) |  |
| [float](class_float.md#class-float) | [radius](#class-capsuleshape3d-property-radius) | `0.5` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **height** = `2.0` [🔗](#class-capsuleshape3d-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


The capsule's full height, including the hemispheres.

**Note:** The [height](#class-capsuleshape3d-property-height) of a capsule must be at least twice its [radius](#class-capsuleshape3d-property-radius). Otherwise, the capsule becomes a sphere. If the [height](#class-capsuleshape3d-property-height) is less than twice the [radius](#class-capsuleshape3d-property-radius), the properties adjust to a valid value.

* * *

[float](class_float.md#class-float) **mid\_height** [🔗](#class-capsuleshape3d-property-mid-height)

- void **set\_mid\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mid\_height**()


The capsule's height, excluding the hemispheres. This is the height of the central cylindrical part in the middle of the capsule, and is the distance between the centers of the two hemispheres. This is a wrapper for [height](#class-capsuleshape3d-property-height).

* * *

[float](class_float.md#class-float) **radius** = `0.5` [🔗](#class-capsuleshape3d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The capsule's radius.

**Note:** The [radius](#class-capsuleshape3d-property-radius) of a capsule cannot be greater than half of its [height](#class-capsuleshape3d-property-height). Otherwise, the capsule becomes a sphere. If the [radius](#class-capsuleshape3d-property-radius) is greater than half of the [height](#class-capsuleshape3d-property-height), the properties adjust to a valid value.

[Previous](class_capsuleshape2d.md "CapsuleShape2D") [Next](class_circleshape2d.md "CircleShape2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_capsuleshape2d.md "CapsuleShape2D") [Next](class_circleshape2d.md "CircleShape2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).