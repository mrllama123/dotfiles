---
title: BoxShape3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_boxshape3d.html
crawled_at: "2026-08-13T10:32:19+12:00"
content_hash: 84da5ac60eb5f7ec3dbc9f5f036534b3c3251dc8e38a14d074d039577948c7f0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - BoxShape3D

* * *

# BoxShape3D

**Inherits:** [Shape3D](class_shape3d.md#class-shape3d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 3D box shape used for physics collision.

## Description

A 3D box shape, intended for use in physics. Usually used to provide a shape for a [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d).

**Performance:** **BoxShape3D** is fast to check collisions against. It is faster than [CapsuleShape3D](class_capsuleshape3d.md#class-capsuleshape3d) and [CylinderShape3D](class_cylindershape3d.md#class-cylindershape3d), but slower than [SphereShape3D](class_sphereshape3d.md#class-sphereshape3d).

## Tutorials

- [3D Physics Tests Demo](https://godotengine.org/asset-library/asset/2747)

- [3D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2739)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-boxshape3d-property-size) | `Vector3(1, 1, 1)` |

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(1, 1, 1)` [🔗](#class-boxshape3d-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The box's width, height and depth.

[Previous](class_boxoccluder3d.md "BoxOccluder3D") [Next](class_buttongroup.md "ButtonGroup")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_boxoccluder3d.md "BoxOccluder3D") [Next](class_buttongroup.md "ButtonGroup")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).