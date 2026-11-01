---
title: SpringBoneCollisionCapsule3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_springbonecollisioncapsule3d.html
crawled_at: "2026-08-13T10:28:33+12:00"
content_hash: 69685fbd0c0459f12cad55404f35075a3fd879c08ef4af3f08ef9053047895bd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SpringBoneCollisionCapsule3D

* * *

# SpringBoneCollisionCapsule3D

**Inherits:** [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A capsule shape collision that interacts with [SpringBoneSimulator3D](class_springbonesimulator3d.md#class-springbonesimulator3d).

## Description

A capsule shape collision that interacts with [SpringBoneSimulator3D](class_springbonesimulator3d.md#class-springbonesimulator3d).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [height](#class-springbonecollisioncapsule3d-property-height) | `0.5` |
| [bool](class_bool.md#class-bool) | [inside](#class-springbonecollisioncapsule3d-property-inside) | `false` |
| [float](class_float.md#class-float) | [mid\_height](#class-springbonecollisioncapsule3d-property-mid-height) |  |
| [float](class_float.md#class-float) | [radius](#class-springbonecollisioncapsule3d-property-radius) | `0.1` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **height** = `0.5` [🔗](#class-springbonecollisioncapsule3d-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


The capsule's full height, including the hemispheres.

**Note:** The [height](#class-springbonecollisioncapsule3d-property-height) of a capsule must be at least twice its [radius](#class-springbonecollisioncapsule3d-property-radius). Otherwise, the capsule becomes a sphere. If the [height](#class-springbonecollisioncapsule3d-property-height) is less than twice the [radius](#class-springbonecollisioncapsule3d-property-radius), the properties adjust to a valid value.

* * *

[bool](class_bool.md#class-bool) **inside** = `false` [🔗](#class-springbonecollisioncapsule3d-property-inside)

- void **set\_inside**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_inside**()


If `true`, the collision acts to trap the joint within the collision.

* * *

[float](class_float.md#class-float) **mid\_height** [🔗](#class-springbonecollisioncapsule3d-property-mid-height)

- void **set\_mid\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mid\_height**()


The capsule's height, excluding the hemispheres. This is the height of the central cylindrical part in the middle of the capsule, and is the distance between the centers of the two hemispheres. This is a wrapper for [height](#class-springbonecollisioncapsule3d-property-height).

* * *

[float](class_float.md#class-float) **radius** = `0.1` [🔗](#class-springbonecollisioncapsule3d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The capsule's radius.

**Note:** The [radius](#class-springbonecollisioncapsule3d-property-radius) of a capsule cannot be greater than half of its [height](#class-springbonecollisioncapsule3d-property-height). Otherwise, the capsule becomes a sphere. If the [radius](#class-springbonecollisioncapsule3d-property-radius) is greater than half of the [height](#class-springbonecollisioncapsule3d-property-height), the properties adjust to a valid value.

[Previous](class_springbonecollision3d.md "SpringBoneCollision3D") [Next](class_springbonecollisionplane3d.md "SpringBoneCollisionPlane3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_springbonecollision3d.md "SpringBoneCollision3D") [Next](class_springbonecollisionplane3d.md "SpringBoneCollisionPlane3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).