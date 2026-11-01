---
title: PhysicsTestMotionResult2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicstestmotionresult2d.html
crawled_at: "2026-08-13T10:32:08+12:00"
content_hash: 14da859fbb179e813490f60a40fc459773b33870780ca3d6ee7f42bbd011013e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsTestMotionResult2D

* * *

# PhysicsTestMotionResult2D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Describes the motion and collision result from [PhysicsServer2D.body\_test\_motion()](class_physicsserver2d.md#class-physicsserver2d-method-body-test-motion).

## Description

Describes the motion and collision result from [PhysicsServer2D.body\_test\_motion()](class_physicsserver2d.md#class-physicsserver2d-method-body-test-motion).

## Methods

|     |     |
| --- | --- |
| [Object](class_object.md#class-object) | [get\_collider](#class-physicstestmotionresult2d-method-get-collider)() const |
| [int](class_int.md#class-int) | [get\_collider\_id](#class-physicstestmotionresult2d-method-get-collider-id)() const |
| [RID](class_rid.md#class-rid) | [get\_collider\_rid](#class-physicstestmotionresult2d-method-get-collider-rid)() const |
| [int](class_int.md#class-int) | [get\_collider\_shape](#class-physicstestmotionresult2d-method-get-collider-shape)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_collider\_velocity](#class-physicstestmotionresult2d-method-get-collider-velocity)() const |
| [float](class_float.md#class-float) | [get\_collision\_depth](#class-physicstestmotionresult2d-method-get-collision-depth)() const |
| [int](class_int.md#class-int) | [get\_collision\_local\_shape](#class-physicstestmotionresult2d-method-get-collision-local-shape)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_collision\_normal](#class-physicstestmotionresult2d-method-get-collision-normal)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_collision\_point](#class-physicstestmotionresult2d-method-get-collision-point)() const |
| [float](class_float.md#class-float) | [get\_collision\_safe\_fraction](#class-physicstestmotionresult2d-method-get-collision-safe-fraction)() const |
| [float](class_float.md#class-float) | [get\_collision\_unsafe\_fraction](#class-physicstestmotionresult2d-method-get-collision-unsafe-fraction)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_remainder](#class-physicstestmotionresult2d-method-get-remainder)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_travel](#class-physicstestmotionresult2d-method-get-travel)() const |

* * *

## Method Descriptions

[Object](class_object.md#class-object) **get\_collider**() const [🔗](#class-physicstestmotionresult2d-method-get-collider)

Returns the colliding body's attached [Object](class_object.md#class-object), if a collision occurred.

* * *

[int](class_int.md#class-int) **get\_collider\_id**() const [🔗](#class-physicstestmotionresult2d-method-get-collider-id)

Returns the unique instance ID of the colliding body's attached [Object](class_object.md#class-object), if a collision occurred. See [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id).

* * *

[RID](class_rid.md#class-rid) **get\_collider\_rid**() const [🔗](#class-physicstestmotionresult2d-method-get-collider-rid)

Returns the colliding body's [RID](class_rid.md#class-rid) used by the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d), if a collision occurred.

* * *

[int](class_int.md#class-int) **get\_collider\_shape**() const [🔗](#class-physicstestmotionresult2d-method-get-collider-shape)

Returns the colliding body's shape index, if a collision occurred. See [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_collider\_velocity**() const [🔗](#class-physicstestmotionresult2d-method-get-collider-velocity)

Returns the colliding body's velocity, if a collision occurred.

* * *

[float](class_float.md#class-float) **get\_collision\_depth**() const [🔗](#class-physicstestmotionresult2d-method-get-collision-depth)

Returns the length of overlap along the collision normal, if a collision occurred.

* * *

[int](class_int.md#class-int) **get\_collision\_local\_shape**() const [🔗](#class-physicstestmotionresult2d-method-get-collision-local-shape)

Returns the moving object's colliding shape, if a collision occurred.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_collision\_normal**() const [🔗](#class-physicstestmotionresult2d-method-get-collision-normal)

Returns the colliding body's shape's normal at the point of collision, if a collision occurred.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_collision\_point**() const [🔗](#class-physicstestmotionresult2d-method-get-collision-point)

Returns the point of collision in global coordinates, if a collision occurred.

* * *

[float](class_float.md#class-float) **get\_collision\_safe\_fraction**() const [🔗](#class-physicstestmotionresult2d-method-get-collision-safe-fraction)

Returns the maximum fraction of the motion that can occur without a collision, between `0` and `1`.

* * *

[float](class_float.md#class-float) **get\_collision\_unsafe\_fraction**() const [🔗](#class-physicstestmotionresult2d-method-get-collision-unsafe-fraction)

Returns the minimum fraction of the motion needed to collide, if a collision occurred, between `0` and `1`.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_remainder**() const [🔗](#class-physicstestmotionresult2d-method-get-remainder)

Returns the moving object's remaining movement vector.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_travel**() const [🔗](#class-physicstestmotionresult2d-method-get-travel)

Returns the moving object's travel before collision.

[Previous](class_physicstestmotionparameters3d.md "PhysicsTestMotionParameters3D") [Next](class_physicstestmotionresult3d.md "PhysicsTestMotionResult3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicstestmotionparameters3d.md "PhysicsTestMotionParameters3D") [Next](class_physicstestmotionresult3d.md "PhysicsTestMotionResult3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).