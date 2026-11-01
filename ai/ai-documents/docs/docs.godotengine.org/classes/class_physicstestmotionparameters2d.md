---
title: PhysicsTestMotionParameters2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicstestmotionparameters2d.html
crawled_at: "2026-08-13T10:26:55+12:00"
content_hash: c42986b314ecba7d75507f383c62474e7ace606a1bfb3229890b54d034d1ed6b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsTestMotionParameters2D

* * *

# PhysicsTestMotionParameters2D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides parameters for [PhysicsServer2D.body\_test\_motion()](class_physicsserver2d.md#class-physicsserver2d-method-body-test-motion).

## Description

By changing various properties of this object, such as the motion, you can configure the parameters for [PhysicsServer2D.body\_test\_motion()](class_physicsserver2d.md#class-physicsserver2d-method-body-test-motion).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collide\_separation\_ray](#class-physicstestmotionparameters2d-property-collide-separation-ray) | `false` |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [exclude\_bodies](#class-physicstestmotionparameters2d-property-exclude-bodies) | `[]` |
| [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] | [exclude\_objects](#class-physicstestmotionparameters2d-property-exclude-objects) | `[]` |
| [Transform2D](class_transform2d.md#class-transform2d) | [from](#class-physicstestmotionparameters2d-property-from) | `Transform2D(1, 0, 0, 1, 0, 0)` |
| [float](class_float.md#class-float) | [margin](#class-physicstestmotionparameters2d-property-margin) | `0.08` |
| [Vector2](class_vector2.md#class-vector2) | [motion](#class-physicstestmotionparameters2d-property-motion) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [recovery\_as\_collision](#class-physicstestmotionparameters2d-property-recovery-as-collision) | `false` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collide\_separation\_ray** = `false` [🔗](#class-physicstestmotionparameters2d-property-collide-separation-ray)

- void **set\_collide\_separation\_ray\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_separation\_ray\_enabled**()


If set to `true`, shapes of type [PhysicsServer2D.SHAPE\_SEPARATION\_RAY](class_physicsserver2d.md#class-physicsserver2d-constant-shape-separation-ray) are used to detect collisions and can stop the motion. Can be useful when snapping to the ground.

If set to `false`, shapes of type [PhysicsServer2D.SHAPE\_SEPARATION\_RAY](class_physicsserver2d.md#class-physicsserver2d-constant-shape-separation-ray) are only used for separation when overlapping with other bodies. That's the main use for separation ray shapes.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **exclude\_bodies** = `[]` [🔗](#class-physicstestmotionparameters2d-property-exclude-bodies)

- void **set\_exclude\_bodies**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_exclude\_bodies**()


Optional array of body [RID](class_rid.md#class-rid) to exclude from collision. Use [CollisionObject2D.get\_rid()](class_collisionobject2d.md#class-collisionobject2d-method-get-rid) to get the [RID](class_rid.md#class-rid) associated with a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)-derived node.

* * *

[Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] **exclude\_objects** = `[]` [🔗](#class-physicstestmotionparameters2d-property-exclude-objects)

- void **set\_exclude\_objects**(value: [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\])

- [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] **get\_exclude\_objects**()


Optional array of object unique instance ID to exclude from collision. See [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **from** = `Transform2D(1, 0, 0, 1, 0, 0)` [🔗](#class-physicstestmotionparameters2d-property-from)

- void **set\_from**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_from**()


Transform in global space where the motion should start. Usually set to [Node2D.global\_transform](class_node2d.md#class-node2d-property-global-transform) for the current body's transform.

* * *

[float](class_float.md#class-float) **margin** = `0.08` [🔗](#class-physicstestmotionparameters2d-property-margin)

- void **set\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_margin**()


Increases the size of the shapes involved in the collision detection.

* * *

[Vector2](class_vector2.md#class-vector2) **motion** = `Vector2(0, 0)` [🔗](#class-physicstestmotionparameters2d-property-motion)

- void **set\_motion**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_motion**()


Motion vector to define the length and direction of the motion to test.

* * *

[bool](class_bool.md#class-bool) **recovery\_as\_collision** = `false` [🔗](#class-physicstestmotionparameters2d-property-recovery-as-collision)

- void **set\_recovery\_as\_collision\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_recovery\_as\_collision\_enabled**()


If set to `true`, any depenetration from the recovery phase is reported as a collision; this is used e.g. by [CharacterBody2D](class_characterbody2d.md#class-characterbody2d) for improving floor detection during floor snapping.

If set to `false`, only collisions resulting from the motion are reported, which is generally the desired behavior.

[Previous](class_physicsshapequeryparameters3d.md "PhysicsShapeQueryParameters3D") [Next](class_physicstestmotionparameters3d.md "PhysicsTestMotionParameters3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsshapequeryparameters3d.md "PhysicsShapeQueryParameters3D") [Next](class_physicstestmotionparameters3d.md "PhysicsTestMotionParameters3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).