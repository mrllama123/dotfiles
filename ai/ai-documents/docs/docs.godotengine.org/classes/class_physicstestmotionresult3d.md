---
title: PhysicsTestMotionResult3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicstestmotionresult3d.html
crawled_at: "2026-08-13T10:33:49+12:00"
content_hash: 74b78fe391596c093dba9555ad05754b0c78e9ea0e2cbaeea0ee2866854133c5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsTestMotionResult3D

* * *

# PhysicsTestMotionResult3D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Describes the motion and collision result from [PhysicsServer3D.body\_test\_motion()](class_physicsserver3d.md#class-physicsserver3d-method-body-test-motion).

## Description

Describes the motion and collision result from [PhysicsServer3D.body\_test\_motion()](class_physicsserver3d.md#class-physicsserver3d-method-body-test-motion).

## Methods

|     |     |
| --- | --- |
| [Object](class_object.md#class-object) | [get\_collider](#class-physicstestmotionresult3d-method-get-collider)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_collider\_id](#class-physicstestmotionresult3d-method-get-collider-id)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [RID](class_rid.md#class-rid) | [get\_collider\_rid](#class-physicstestmotionresult3d-method-get-collider-rid)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_collider\_shape](#class-physicstestmotionresult3d-method-get-collider-shape)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_collider\_velocity](#class-physicstestmotionresult3d-method-get-collider-velocity)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_collision\_count](#class-physicstestmotionresult3d-method-get-collision-count)() const |
| [float](class_float.md#class-float) | [get\_collision\_depth](#class-physicstestmotionresult3d-method-get-collision-depth)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_collision\_local\_shape](#class-physicstestmotionresult3d-method-get-collision-local-shape)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_collision\_normal](#class-physicstestmotionresult3d-method-get-collision-normal)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_collision\_point](#class-physicstestmotionresult3d-method-get-collision-point)(collision\_index: [int](class_int.md#class-int) = 0) const |
| [float](class_float.md#class-float) | [get\_collision\_safe\_fraction](#class-physicstestmotionresult3d-method-get-collision-safe-fraction)() const |
| [float](class_float.md#class-float) | [get\_collision\_unsafe\_fraction](#class-physicstestmotionresult3d-method-get-collision-unsafe-fraction)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_remainder](#class-physicstestmotionresult3d-method-get-remainder)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_travel](#class-physicstestmotionresult3d-method-get-travel)() const |

* * *

## Method Descriptions

[Object](class_object.md#class-object) **get\_collider**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-physicstestmotionresult3d-method-get-collider)

Returns the colliding body's attached [Object](class_object.md#class-object) given a collision index (the deepest collision by default), if a collision occurred.

* * *

[int](class_int.md#class-int) **get\_collider\_id**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-physicstestmotionresult3d-method-get-collider-id)

Returns the unique instance ID of the colliding body's attached [Object](class_object.md#class-object) given a collision index (the deepest collision by default), if a collision occurred. See [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id).

* * *

[RID](class_rid.md#class-rid) **get\_collider\_rid**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-physicstestmotionresult3d-method-get-collider-rid)

Returns the colliding body's [RID](class_rid.md#class-rid) used by the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) given a collision index (the deepest collision by default), if a collision occurred.

* * *

[int](class_int.md#class-int) **get\_collider\_shape**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-physicstestmotionresult3d-method-get-collider-shape)

Returns the colliding body's shape index given a collision index (the deepest collision by default), if a collision occurred. See [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_collider\_velocity**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-physicstestmotionresult3d-method-get-collider-velocity)

Returns the colliding body's velocity given a collision index (the deepest collision by default), if a collision occurred.

* * *

[int](class_int.md#class-int) **get\_collision\_count**() const [🔗](#class-physicstestmotionresult3d-method-get-collision-count)

Returns the number of detected collisions.

* * *

[float](class_float.md#class-float) **get\_collision\_depth**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-physicstestmotionresult3d-method-get-collision-depth)

Returns the length of overlap along the collision normal given a collision index (the deepest collision by default), if a collision occurred.

* * *

[int](class_int.md#class-int) **get\_collision\_local\_shape**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-physicstestmotionresult3d-method-get-collision-local-shape)

Returns the moving object's colliding shape given a collision index (the deepest collision by default), if a collision occurred.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_collision\_normal**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-physicstestmotionresult3d-method-get-collision-normal)

Returns the colliding body's shape's normal at the point of collision given a collision index (the deepest collision by default), if a collision occurred.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_collision\_point**(collision\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-physicstestmotionresult3d-method-get-collision-point)

Returns the point of collision in global coordinates given a collision index (the deepest collision by default), if a collision occurred.

* * *

[float](class_float.md#class-float) **get\_collision\_safe\_fraction**() const [🔗](#class-physicstestmotionresult3d-method-get-collision-safe-fraction)

Returns the maximum fraction of the motion that can occur without a collision, between `0` and `1`.

* * *

[float](class_float.md#class-float) **get\_collision\_unsafe\_fraction**() const [🔗](#class-physicstestmotionresult3d-method-get-collision-unsafe-fraction)

Returns the minimum fraction of the motion needed to collide, if a collision occurred, between `0` and `1`.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_remainder**() const [🔗](#class-physicstestmotionresult3d-method-get-remainder)

Returns the moving object's remaining movement vector.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_travel**() const [🔗](#class-physicstestmotionresult3d-method-get-travel)

Returns the moving object's travel before collision.

[Previous](class_physicstestmotionresult2d.md "PhysicsTestMotionResult2D") [Next](class_projectsettings.md "ProjectSettings")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicstestmotionresult2d.md "PhysicsTestMotionResult2D") [Next](class_projectsettings.md "ProjectSettings")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).