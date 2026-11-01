---
title: PhysicsBody3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsbody3d.html
crawled_at: "2026-08-13T10:27:11+12:00"
content_hash: 4529ec96bc44bdc8fdbb3be9651443195240762a4ddc57169a7db3e03068c3a9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsBody3D

* * *

# PhysicsBody3D

**Inherits:** [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [CharacterBody3D](class_characterbody3d.md#class-characterbody3d), [PhysicalBone3D](class_physicalbone3d.md#class-physicalbone3d), [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d), [StaticBody3D](class_staticbody3d.md#class-staticbody3d)

Abstract base class for 3D game objects affected by physics.

## Description

**PhysicsBody3D** is an abstract base class for 3D game objects affected by physics. All 3D physics bodies inherit from it.

**Warning:** With a non-uniform scale, this node will likely not behave as expected. It is advised to keep its scale the same on all axes and adjust its collision shape(s) instead.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Troubleshooting physics issues](../tutorials/physics/troubleshooting_physics_issues.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [axis\_lock\_angular\_x](#class-physicsbody3d-property-axis-lock-angular-x) | `false` |
| [bool](class_bool.md#class-bool) | [axis\_lock\_angular\_y](#class-physicsbody3d-property-axis-lock-angular-y) | `false` |
| [bool](class_bool.md#class-bool) | [axis\_lock\_angular\_z](#class-physicsbody3d-property-axis-lock-angular-z) | `false` |
| [bool](class_bool.md#class-bool) | [axis\_lock\_linear\_x](#class-physicsbody3d-property-axis-lock-linear-x) | `false` |
| [bool](class_bool.md#class-bool) | [axis\_lock\_linear\_y](#class-physicsbody3d-property-axis-lock-linear-y) | `false` |
| [bool](class_bool.md#class-bool) | [axis\_lock\_linear\_z](#class-physicsbody3d-property-axis-lock-linear-z) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [add\_collision\_exception\_with](#class-physicsbody3d-method-add-collision-exception-with)(body: [Node](class_node.md#class-node)) |
| [bool](class_bool.md#class-bool) | [get\_axis\_lock](#class-physicsbody3d-method-get-axis-lock)(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis)) const |
| [Array](class_array.md#class-array)\[ [PhysicsBody3D](#class-physicsbody3d)\] | [get\_collision\_exceptions](#class-physicsbody3d-method-get-collision-exceptions)() |
| [Vector3](class_vector3.md#class-vector3) | [get\_gravity](#class-physicsbody3d-method-get-gravity)() const |
| [KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d) | [move\_and\_collide](#class-physicsbody3d-method-move-and-collide)(motion: [Vector3](class_vector3.md#class-vector3), test\_only: [bool](class_bool.md#class-bool) = false, safe\_margin: [float](class_float.md#class-float) = 0.001, recovery\_as\_collision: [bool](class_bool.md#class-bool) = false, max\_collisions: [int](class_int.md#class-int) = 1) |
| void | [remove\_collision\_exception\_with](#class-physicsbody3d-method-remove-collision-exception-with)(body: [Node](class_node.md#class-node)) |
| void | [set\_axis\_lock](#class-physicsbody3d-method-set-axis-lock)(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool)) |
| [bool](class_bool.md#class-bool) | [test\_move](#class-physicsbody3d-method-test-move)(from: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), collision: [KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d) = null, safe\_margin: [float](class_float.md#class-float) = 0.001, recovery\_as\_collision: [bool](class_bool.md#class-bool) = false, max\_collisions: [int](class_int.md#class-int) = 1) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **axis\_lock\_angular\_x** = `false` [🔗](#class-physicsbody3d-property-axis-lock-angular-x)

- void **set\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis)) const


Lock the body's rotation in the X axis.

* * *

[bool](class_bool.md#class-bool) **axis\_lock\_angular\_y** = `false` [🔗](#class-physicsbody3d-property-axis-lock-angular-y)

- void **set\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis)) const


Lock the body's rotation in the Y axis.

* * *

[bool](class_bool.md#class-bool) **axis\_lock\_angular\_z** = `false` [🔗](#class-physicsbody3d-property-axis-lock-angular-z)

- void **set\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis)) const


Lock the body's rotation in the Z axis.

* * *

[bool](class_bool.md#class-bool) **axis\_lock\_linear\_x** = `false` [🔗](#class-physicsbody3d-property-axis-lock-linear-x)

- void **set\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis)) const


Lock the body's linear movement in the X axis.

* * *

[bool](class_bool.md#class-bool) **axis\_lock\_linear\_y** = `false` [🔗](#class-physicsbody3d-property-axis-lock-linear-y)

- void **set\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis)) const


Lock the body's linear movement in the Y axis.

* * *

[bool](class_bool.md#class-bool) **axis\_lock\_linear\_z** = `false` [🔗](#class-physicsbody3d-property-axis-lock-linear-z)

- void **set\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis)) const


Lock the body's linear movement in the Z axis.

* * *

## Method Descriptions

void **add\_collision\_exception\_with**(body: [Node](class_node.md#class-node)) [🔗](#class-physicsbody3d-method-add-collision-exception-with)

Adds a body to the list of bodies that this body can't collide with.

* * *

[bool](class_bool.md#class-bool) **get\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis)) const [🔗](#class-physicsbody3d-method-get-axis-lock)

Returns `true` if the specified linear or rotational `axis` is locked.

* * *

[Array](class_array.md#class-array)\[ [PhysicsBody3D](#class-physicsbody3d)\] **get\_collision\_exceptions**() [🔗](#class-physicsbody3d-method-get-collision-exceptions)

Returns an array of nodes that were added as collision exceptions for this body.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_gravity**() const [🔗](#class-physicsbody3d-method-get-gravity)

Returns the gravity vector computed from all sources that can affect the body, including all gravity overrides from [Area3D](class_area3d.md#class-area3d) nodes and the global world gravity.

* * *

[KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d) **move\_and\_collide**(motion: [Vector3](class_vector3.md#class-vector3), test\_only: [bool](class_bool.md#class-bool) = false, safe\_margin: [float](class_float.md#class-float) = 0.001, recovery\_as\_collision: [bool](class_bool.md#class-bool) = false, max\_collisions: [int](class_int.md#class-int) = 1) [🔗](#class-physicsbody3d-method-move-and-collide)

Moves the body along the vector `motion`. In order to be frame rate independent in [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) or [Node.\_process()](class_node.md#class-node-private-method-process), `motion` should be computed using `delta`.

The body will stop if it collides. Returns a [KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d), which contains information about the collision when stopped, or when touching another body along the motion.

If `test_only` is `true`, the body does not move but the would-be collision information is given.

`safe_margin` is the extra margin used for collision recovery (see [CharacterBody3D.safe\_margin](class_characterbody3d.md#class-characterbody3d-property-safe-margin) for more details).

If `recovery_as_collision` is `true`, any depenetration from the recovery phase is also reported as a collision; this is used e.g. by [CharacterBody3D](class_characterbody3d.md#class-characterbody3d) for improving floor detection during floor snapping.

`max_collisions` allows to retrieve more than one collision result.

* * *

void **remove\_collision\_exception\_with**(body: [Node](class_node.md#class-node)) [🔗](#class-physicsbody3d-method-remove-collision-exception-with)

Removes a body from the list of bodies that this body can't collide with.

* * *

void **set\_axis\_lock**(axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool)) [🔗](#class-physicsbody3d-method-set-axis-lock)

Locks or unlocks the specified linear or rotational `axis` depending on the value of `lock`.

* * *

[bool](class_bool.md#class-bool) **test\_move**(from: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), collision: [KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d) = null, safe\_margin: [float](class_float.md#class-float) = 0.001, recovery\_as\_collision: [bool](class_bool.md#class-bool) = false, max\_collisions: [int](class_int.md#class-int) = 1) [🔗](#class-physicsbody3d-method-test-move)

Checks for collisions without moving the body. In order to be frame rate independent in [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) or [Node.\_process()](class_node.md#class-node-private-method-process), `motion` should be computed using `delta`.

Virtually sets the node's position, scale and rotation to that of the given [Transform3D](class_transform3d.md#class-transform3d), then tries to move the body along the vector `motion`. Returns `true` if a collision would stop the body from moving along the whole path.

`collision` is an optional object of type [KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d), which contains additional information about the collision when stopped, or when touching another body along the motion.

`safe_margin` is the extra margin used for collision recovery (see [CharacterBody3D.safe\_margin](class_characterbody3d.md#class-characterbody3d-property-safe-margin) for more details).

If `recovery_as_collision` is `true`, any depenetration from the recovery phase is also reported as a collision; this is useful for checking whether the body would _touch_ any other bodies.

`max_collisions` allows to retrieve more than one collision result.

[Previous](class_physicsbody2d.md "PhysicsBody2D") [Next](class_pinjoint2d.md "PinJoint2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsbody2d.md "PhysicsBody2D") [Next](class_pinjoint2d.md "PinJoint2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).