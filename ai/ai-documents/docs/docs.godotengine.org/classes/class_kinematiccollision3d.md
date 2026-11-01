---
title: KinematicCollision3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_kinematiccollision3d.html
crawled_at: "2026-08-13T10:18:17+12:00"
content_hash: 68bbde5f851db14d8e518b9b3074ae8de034d787626299d5f4b936436ccdb0f2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - KinematicCollision3D

* * *

# KinematicCollision3D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds collision data from the movement of a [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d).

## Description

Holds collision data from the movement of a [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d), usually from [PhysicsBody3D.move\_and\_collide()](class_physicsbody3d.md#class-physicsbody3d-method-move-and-collide). When a [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) is moved, it stops if it detects a collision with another body. If a collision is detected, a **KinematicCollision3D** object is returned.

The collision data includes the colliding object, the remaining motion, and the collision position. This data can be used to determine a custom response to the collision.

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_angle](#class-kinematiccollision3d-method-get-angle)(collision\_index: [int](class_int.md#class-int) = 0, up\_direction: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0)) const |
| [Object](class_object.md#class-object) | [get\_collider](#class-kinematiccollision3d-method-get-collider)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_collider\_id](#class-kinematiccollision3d-method-get-collider-id)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [RID](class_rid.md#class-rid) | [get\_collider\_rid](#class-kinematiccollision3d-method-get-collider-rid)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [Object](class_object.md#class-object) | [get\_collider\_shape](#class-kinematiccollision3d-method-get-collider-shape)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_collider\_shape\_index](#class-kinematiccollision3d-method-get-collider-shape-index)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_collider\_velocity](#class-kinematiccollision3d-method-get-collider-velocity)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_collision\_count](#class-kinematiccollision3d-method-get-collision-count)() const |
| [float](class_float.md#class-float) | [get\_depth](#class-kinematiccollision3d-method-get-depth)() const |
| [Object](class_object.md#class-object) | [get\_local\_shape](#class-kinematiccollision3d-method-get-local-shape)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_normal](#class-kinematiccollision3d-method-get-normal)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_position](#class-kinematiccollision3d-method-get-position)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_remainder](#class-kinematiccollision3d-method-get-remainder)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_travel](#class-kinematiccollision3d-method-get-travel)() const |

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_angle**(collision\_index: [int](class_int.md#class-int) = 0, up\_direction: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0)) const [🔗](#class-kinematiccollision3d-method-get-angle)

Returns the collision angle according to `up_direction`, which is [Vector3.UP](class_vector3.md#class-vector3-constant-up) by default. This value is always positive.

* * *

[Object](class_object.md#class-object) **get\_collider**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-kinematiccollision3d-method-get-collider)

Returns the colliding body's attached [Object](class_object.md#class-object) given a collision index (the deepest collision by default).

* * *

[int](class_int.md#class-int) **get\_collider\_id**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-kinematiccollision3d-method-get-collider-id)

Returns the unique instance ID of the colliding body's attached [Object](class_object.md#class-object) given a collision index (the deepest collision by default). See [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id).

* * *

[RID](class_rid.md#class-rid) **get\_collider\_rid**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-kinematiccollision3d-method-get-collider-rid)

Returns the colliding body's [RID](class_rid.md#class-rid) used by the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) given a collision index (the deepest collision by default).

* * *

[Object](class_object.md#class-object) **get\_collider\_shape**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-kinematiccollision3d-method-get-collider-shape)

Returns the colliding body's shape given a collision index (the deepest collision by default).

* * *

[int](class_int.md#class-int) **get\_collider\_shape\_index**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-kinematiccollision3d-method-get-collider-shape-index)

Returns the colliding body's shape index given a collision index (the deepest collision by default). See [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_collider\_velocity**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-kinematiccollision3d-method-get-collider-velocity)

Returns the colliding body's velocity given a collision index (the deepest collision by default).

* * *

[int](class_int.md#class-int) **get\_collision\_count**() const [🔗](#class-kinematiccollision3d-method-get-collision-count)

Returns the number of detected collisions.

* * *

[float](class_float.md#class-float) **get\_depth**() const [🔗](#class-kinematiccollision3d-method-get-depth)

Returns the colliding body's length of overlap along the collision normal.

* * *

[Object](class_object.md#class-object) **get\_local\_shape**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-kinematiccollision3d-method-get-local-shape)

Returns the moving object's colliding shape given a collision index (the deepest collision by default).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_normal**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-kinematiccollision3d-method-get-normal)

Returns the colliding body's shape's normal at the point of collision given a collision index (the deepest collision by default).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_position**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-kinematiccollision3d-method-get-position)

Returns the point of collision in global coordinates given a collision index (the deepest collision by default).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_remainder**() const [🔗](#class-kinematiccollision3d-method-get-remainder)

Returns the moving object's remaining movement vector.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_travel**() const [🔗](#class-kinematiccollision3d-method-get-travel)

Returns the moving object's travel before collision.

[Previous](class_kinematiccollision2d.md "KinematicCollision2D") [Next](class_lightmapper.md "Lightmapper")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_kinematiccollision2d.md "KinematicCollision2D") [Next](class_lightmapper.md "Lightmapper")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).