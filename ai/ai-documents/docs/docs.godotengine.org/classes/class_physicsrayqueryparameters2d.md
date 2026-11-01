---
title: PhysicsRayQueryParameters2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsrayqueryparameters2d.html
crawled_at: "2026-08-13T10:26:26+12:00"
content_hash: 892ae583acf6db53e18fd021f8cc35786b26542c6c11145e7bf6103864bff030
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsRayQueryParameters2D

* * *

# PhysicsRayQueryParameters2D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides parameters for [PhysicsDirectSpaceState2D.intersect\_ray()](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d-method-intersect-ray).

## Description

By changing various properties of this object, such as the ray position, you can configure the parameters for [PhysicsDirectSpaceState2D.intersect\_ray()](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d-method-intersect-ray).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collide\_with\_areas](#class-physicsrayqueryparameters2d-property-collide-with-areas) | `false` |
| [bool](class_bool.md#class-bool) | [collide\_with\_bodies](#class-physicsrayqueryparameters2d-property-collide-with-bodies) | `true` |
| [int](class_int.md#class-int) | [collision\_mask](#class-physicsrayqueryparameters2d-property-collision-mask) | `4294967295` |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [exclude](#class-physicsrayqueryparameters2d-property-exclude) | `[]` |
| [Vector2](class_vector2.md#class-vector2) | [from](#class-physicsrayqueryparameters2d-property-from) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [hit\_from\_inside](#class-physicsrayqueryparameters2d-property-hit-from-inside) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [to](#class-physicsrayqueryparameters2d-property-to) | `Vector2(0, 0)` |

## Methods

|     |     |
| --- | --- |
| [PhysicsRayQueryParameters2D](#class-physicsrayqueryparameters2d) | [create](#class-physicsrayqueryparameters2d-method-create)(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2), collision\_mask: [int](class_int.md#class-int) = 4294967295, exclude: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] = \[\]) static |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collide\_with\_areas** = `false` [🔗](#class-physicsrayqueryparameters2d-property-collide-with-areas)

- void **set\_collide\_with\_areas**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_areas\_enabled**()


If `true`, the query will take [Area2D](class_area2d.md#class-area2d) s into account.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_bodies** = `true` [🔗](#class-physicsrayqueryparameters2d-property-collide-with-bodies)

- void **set\_collide\_with\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_bodies\_enabled**()


If `true`, the query will take [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) s into account.

* * *

[int](class_int.md#class-int) **collision\_mask** = `4294967295` [🔗](#class-physicsrayqueryparameters2d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **exclude** = `[]` [🔗](#class-physicsrayqueryparameters2d-property-exclude)

- void **set\_exclude**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_exclude**()


The list of object [RID](class_rid.md#class-rid) s that will be excluded from collisions. Use [CollisionObject2D.get\_rid()](class_collisionobject2d.md#class-collisionobject2d-method-get-rid) to get the [RID](class_rid.md#class-rid) associated with a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)-derived node.

**Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then assign it to the property again.

* * *

[Vector2](class_vector2.md#class-vector2) **from** = `Vector2(0, 0)` [🔗](#class-physicsrayqueryparameters2d-property-from)

- void **set\_from**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_from**()


The starting point of the ray being queried for, in global coordinates.

* * *

[bool](class_bool.md#class-bool) **hit\_from\_inside** = `false` [🔗](#class-physicsrayqueryparameters2d-property-hit-from-inside)

- void **set\_hit\_from\_inside**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hit\_from\_inside\_enabled**()


If `true`, the query will detect a hit when starting inside shapes. In this case the collision normal will be `Vector2(0, 0)`. Does not affect concave polygon shapes.

* * *

[Vector2](class_vector2.md#class-vector2) **to** = `Vector2(0, 0)` [🔗](#class-physicsrayqueryparameters2d-property-to)

- void **set\_to**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_to**()


The ending point of the ray being queried for, in global coordinates.

* * *

## Method Descriptions

[PhysicsRayQueryParameters2D](#class-physicsrayqueryparameters2d) **create**(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2), collision\_mask: [int](class_int.md#class-int) = 4294967295, exclude: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] = \[\]) static [🔗](#class-physicsrayqueryparameters2d-method-create)

Returns a new, pre-configured **PhysicsRayQueryParameters2D** object. Use it to quickly create query parameters using the most common options.

```
var query = PhysicsRayQueryParameters2D.create(global_position, global_position + Vector2(0, 100))
var collision = get_world_2d().direct_space_state.intersect_ray(query)

```

[Previous](class_physicspointqueryparameters3d.md "PhysicsPointQueryParameters3D") [Next](class_physicsrayqueryparameters3d.md "PhysicsRayQueryParameters3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicspointqueryparameters3d.md "PhysicsPointQueryParameters3D") [Next](class_physicsrayqueryparameters3d.md "PhysicsRayQueryParameters3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).