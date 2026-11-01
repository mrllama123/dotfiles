---
title: KinematicCollision2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_kinematiccollision2d.html
crawled_at: "2026-08-13T10:39:38+12:00"
content_hash: fc1470663f3327253e8426af768c5c3fa87c2ab5d60d9b8da65dd9e04ca6817b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - KinematicCollision2D

* * *

# KinematicCollision2D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds collision data from the movement of a [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d).

## Description

Holds collision data from the movement of a [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d), usually from [PhysicsBody2D.move\_and\_collide()](class_physicsbody2d.md#class-physicsbody2d-method-move-and-collide). When a [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) is moved, it stops if it detects a collision with another body. If a collision is detected, a **KinematicCollision2D** object is returned.

The collision data includes the colliding object, the remaining motion, and the collision position. This data can be used to determine a custom response to the collision.

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_angle](#class-kinematiccollision2d-method-get-angle)(up\_direction: [Vector2](class_vector2.md#class-vector2) = Vector2(0, -1)) const |
| [Object](class_object.md#class-object) | [get\_collider](#class-kinematiccollision2d-method-get-collider)() const |
| [int](class_int.md#class-int) | [get\_collider\_id](#class-kinematiccollision2d-method-get-collider-id)() const |
| [RID](class_rid.md#class-rid) | [get\_collider\_rid](#class-kinematiccollision2d-method-get-collider-rid)() const |
| [Object](class_object.md#class-object) | [get\_collider\_shape](#class-kinematiccollision2d-method-get-collider-shape)() const |
| [int](class_int.md#class-int) | [get\_collider\_shape\_index](#class-kinematiccollision2d-method-get-collider-shape-index)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_collider\_velocity](#class-kinematiccollision2d-method-get-collider-velocity)() const |
| [float](class_float.md#class-float) | [get\_depth](#class-kinematiccollision2d-method-get-depth)() const |
| [Object](class_object.md#class-object) | [get\_local\_shape](#class-kinematiccollision2d-method-get-local-shape)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_normal](#class-kinematiccollision2d-method-get-normal)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_position](#class-kinematiccollision2d-method-get-position)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_remainder](#class-kinematiccollision2d-method-get-remainder)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_travel](#class-kinematiccollision2d-method-get-travel)() const |

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_angle**(up\_direction: [Vector2](class_vector2.md#class-vector2) = Vector2(0, -1)) const [🔗](#class-kinematiccollision2d-method-get-angle)

Returns the collision angle according to `up_direction`, which is [Vector2.UP](class_vector2.md#class-vector2-constant-up) by default. This value is always positive.

* * *

[Object](class_object.md#class-object) **get\_collider**() const [🔗](#class-kinematiccollision2d-method-get-collider)

Returns the colliding body's attached [Object](class_object.md#class-object).

* * *

[int](class_int.md#class-int) **get\_collider\_id**() const [🔗](#class-kinematiccollision2d-method-get-collider-id)

Returns the unique instance ID of the colliding body's attached [Object](class_object.md#class-object). See [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id).

* * *

[RID](class_rid.md#class-rid) **get\_collider\_rid**() const [🔗](#class-kinematiccollision2d-method-get-collider-rid)

Returns the colliding body's [RID](class_rid.md#class-rid) used by the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d).

* * *

[Object](class_object.md#class-object) **get\_collider\_shape**() const [🔗](#class-kinematiccollision2d-method-get-collider-shape)

Returns the colliding body's shape.

* * *

[int](class_int.md#class-int) **get\_collider\_shape\_index**() const [🔗](#class-kinematiccollision2d-method-get-collider-shape-index)

Returns the colliding body's shape index. See [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_collider\_velocity**() const [🔗](#class-kinematiccollision2d-method-get-collider-velocity)

Returns the colliding body's velocity.

* * *

[float](class_float.md#class-float) **get\_depth**() const [🔗](#class-kinematiccollision2d-method-get-depth)

Returns the colliding body's length of overlap along the collision normal.

* * *

[Object](class_object.md#class-object) **get\_local\_shape**() const [🔗](#class-kinematiccollision2d-method-get-local-shape)

Returns the moving object's colliding shape.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_normal**() const [🔗](#class-kinematiccollision2d-method-get-normal)

Returns the colliding body's shape's normal at the point of collision.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_position**() const [🔗](#class-kinematiccollision2d-method-get-position)

Returns the point of collision in global coordinates.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_remainder**() const [🔗](#class-kinematiccollision2d-method-get-remainder)

Returns the moving object's remaining movement vector.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_travel**() const [🔗](#class-kinematiccollision2d-method-get-travel)

Returns the moving object's travel before collision.

[Previous](class_jsonrpc.md "JSONRPC") [Next](class_kinematiccollision3d.md "KinematicCollision3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_jsonrpc.md "JSONRPC") [Next](class_kinematiccollision3d.md "KinematicCollision3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).