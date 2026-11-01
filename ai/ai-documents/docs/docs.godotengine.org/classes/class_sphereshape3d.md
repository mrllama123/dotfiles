---
title: SphereShape3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_sphereshape3d.html
crawled_at: "2026-08-13T10:27:22+12:00"
content_hash: 8b89af3ab8a9b46a82f5d7c898c5ca80c6bd2bc688c63d33282cd6ff28cba949
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SphereShape3D

* * *

# SphereShape3D

**Inherits:** [Shape3D](class_shape3d.md#class-shape3d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 3D sphere shape used for physics collision.

## Description

A 3D sphere shape, intended for use in physics. Usually used to provide a shape for a [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d).

**Performance:** **SphereShape3D** is fast to check collisions against. It is faster than [BoxShape3D](class_boxshape3d.md#class-boxshape3d), [CapsuleShape3D](class_capsuleshape3d.md#class-capsuleshape3d), and [CylinderShape3D](class_cylindershape3d.md#class-cylindershape3d).

## Tutorials

- [3D Physics Tests Demo](https://godotengine.org/asset-library/asset/2747)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [radius](#class-sphereshape3d-property-radius) | `0.5` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **radius** = `0.5` [🔗](#class-sphereshape3d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The sphere's radius. The shape's diameter is double the radius.

[Previous](class_sphereoccluder3d.md "SphereOccluder3D") [Next](class_spriteframes.md "SpriteFrames")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_sphereoccluder3d.md "SphereOccluder3D") [Next](class_spriteframes.md "SpriteFrames")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).