---
title: PhysicsBody2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsbody2d.html
crawled_at: "2026-08-13T10:35:00+12:00"
content_hash: e8cf30235e8eb90e136322321187fc42d1e58170dc9e9ab287a80211aea4cc6d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsBody2D

* * *

# PhysicsBody2D

**Inherits:** [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [CharacterBody2D](class_characterbody2d.md#class-characterbody2d), [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d), [StaticBody2D](class_staticbody2d.md#class-staticbody2d)

Abstract base class for 2D game objects affected by physics.

## Description

**PhysicsBody2D** is an abstract base class for 2D game objects affected by physics. All 2D physics bodies inherit from it.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Troubleshooting physics issues](../tutorials/physics/troubleshooting_physics_issues.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | input\_pickable | `false` (overrides [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d-property-input-pickable)) |

## Methods

|     |     |
| --- | --- |
| void | [add\_collision\_exception\_with](#class-physicsbody2d-method-add-collision-exception-with)(body: [Node](class_node.md#class-node)) |
| [Array](class_array.md#class-array)\[ [PhysicsBody2D](#class-physicsbody2d)\] | [get\_collision\_exceptions](#class-physicsbody2d-method-get-collision-exceptions)() |
| [Vector2](class_vector2.md#class-vector2) | [get\_gravity](#class-physicsbody2d-method-get-gravity)() const |
| [KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d) | [move\_and\_collide](#class-physicsbody2d-method-move-and-collide)(motion: [Vector2](class_vector2.md#class-vector2), test\_only: [bool](class_bool.md#class-bool) = false, safe\_margin: [float](class_float.md#class-float) = 0.08, recovery\_as\_collision: [bool](class_bool.md#class-bool) = false) |
| void | [remove\_collision\_exception\_with](#class-physicsbody2d-method-remove-collision-exception-with)(body: [Node](class_node.md#class-node)) |
| [bool](class_bool.md#class-bool) | [test\_move](#class-physicsbody2d-method-test-move)(from: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), collision: [KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d) = null, safe\_margin: [float](class_float.md#class-float) = 0.08, recovery\_as\_collision: [bool](class_bool.md#class-bool) = false) |

* * *

## Method Descriptions

void **add\_collision\_exception\_with**(body: [Node](class_node.md#class-node)) [🔗](#class-physicsbody2d-method-add-collision-exception-with)

Adds a body to the list of bodies that this body can't collide with.

* * *

[Array](class_array.md#class-array)\[ [PhysicsBody2D](#class-physicsbody2d)\] **get\_collision\_exceptions**() [🔗](#class-physicsbody2d-method-get-collision-exceptions)

Returns an array of nodes that were added as collision exceptions for this body.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_gravity**() const [🔗](#class-physicsbody2d-method-get-gravity)

Returns the gravity vector computed from all sources that can affect the body, including all gravity overrides from [Area2D](class_area2d.md#class-area2d) nodes and the global world gravity.

* * *

[KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d) **move\_and\_collide**(motion: [Vector2](class_vector2.md#class-vector2), test\_only: [bool](class_bool.md#class-bool) = false, safe\_margin: [float](class_float.md#class-float) = 0.08, recovery\_as\_collision: [bool](class_bool.md#class-bool) = false) [🔗](#class-physicsbody2d-method-move-and-collide)

Moves the body along the vector `motion`. In order to be frame rate independent in [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) or [Node.\_process()](class_node.md#class-node-private-method-process), `motion` should be computed using `delta`.

Returns a [KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d), which contains information about the collision when stopped, or when touching another body along the motion.

If `test_only` is `true`, the body does not move but the would-be collision information is given.

`safe_margin` is the extra margin used for collision recovery (see [CharacterBody2D.safe\_margin](class_characterbody2d.md#class-characterbody2d-property-safe-margin) for more details).

If `recovery_as_collision` is `true`, any depenetration from the recovery phase is also reported as a collision; this is used e.g. by [CharacterBody2D](class_characterbody2d.md#class-characterbody2d) for improving floor detection during floor snapping.

* * *

void **remove\_collision\_exception\_with**(body: [Node](class_node.md#class-node)) [🔗](#class-physicsbody2d-method-remove-collision-exception-with)

Removes a body from the list of bodies that this body can't collide with.

* * *

[bool](class_bool.md#class-bool) **test\_move**(from: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), collision: [KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d) = null, safe\_margin: [float](class_float.md#class-float) = 0.08, recovery\_as\_collision: [bool](class_bool.md#class-bool) = false) [🔗](#class-physicsbody2d-method-test-move)

Checks for collisions without moving the body. In order to be frame rate independent in [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) or [Node.\_process()](class_node.md#class-node-private-method-process), `motion` should be computed using `delta`.

Virtually sets the node's position, scale and rotation to that of the given [Transform2D](class_transform2d.md#class-transform2d), then tries to move the body along the vector `motion`. Returns `true` if a collision would stop the body from moving along the whole path.

`collision` is an optional object of type [KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d), which contains additional information about the collision when stopped, or when touching another body along the motion.

`safe_margin` is the extra margin used for collision recovery (see [CharacterBody2D.safe\_margin](class_characterbody2d.md#class-characterbody2d-property-safe-margin) for more details).

If `recovery_as_collision` is `true`, any depenetration from the recovery phase is also reported as a collision; this is useful for checking whether the body would _touch_ any other bodies.

[Previous](class_physicalbonesimulator3d.md "PhysicalBoneSimulator3D") [Next](class_physicsbody3d.md "PhysicsBody3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicalbonesimulator3d.md "PhysicalBoneSimulator3D") [Next](class_physicsbody3d.md "PhysicsBody3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).