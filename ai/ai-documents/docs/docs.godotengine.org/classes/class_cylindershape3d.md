---
title: CylinderShape3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cylindershape3d.html
crawled_at: "2026-08-13T10:23:42+12:00"
content_hash: 1593e775e6d983119c32f176e11ce927df6856577810c767881040dc5bae58d4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CylinderShape3D

* * *

# CylinderShape3D

**Inherits:** [Shape3D](class_shape3d.md#class-shape3d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 3D cylinder shape used for physics collision.

## Description

A 3D cylinder shape, intended for use in physics. Usually used to provide a shape for a [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d).

**Note:** There are several known bugs with cylinder collision shapes. Using [CapsuleShape3D](class_capsuleshape3d.md#class-capsuleshape3d) or [BoxShape3D](class_boxshape3d.md#class-boxshape3d) instead is recommended.

**Performance:** **CylinderShape3D** is fast to check collisions against, but it is slower than [CapsuleShape3D](class_capsuleshape3d.md#class-capsuleshape3d), [BoxShape3D](class_boxshape3d.md#class-boxshape3d), and [SphereShape3D](class_sphereshape3d.md#class-sphereshape3d).

## Tutorials

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)

- [3D Physics Tests Demo](https://godotengine.org/asset-library/asset/2747)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [height](#class-cylindershape3d-property-height) | `2.0` |
| [float](class_float.md#class-float) | [radius](#class-cylindershape3d-property-radius) | `0.5` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **height** = `2.0` [🔗](#class-cylindershape3d-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


The cylinder's height.

* * *

[float](class_float.md#class-float) **radius** = `0.5` [🔗](#class-cylindershape3d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The cylinder's radius.

[Previous](class_cylindermesh.md "CylinderMesh") [Next](class_dpitexture.md "DPITexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cylindermesh.md "CylinderMesh") [Next](class_dpitexture.md "DPITexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).