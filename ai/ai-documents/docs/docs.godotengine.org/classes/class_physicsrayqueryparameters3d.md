---
title: PhysicsRayQueryParameters3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsrayqueryparameters3d.html
crawled_at: "2026-08-13T10:20:08+12:00"
content_hash: 92693c330e260d9353b16eb11825ae3f7b2b2e2c5d56ff223721c330a2b44c68
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsRayQueryParameters3D

* * *

# PhysicsRayQueryParameters3D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides parameters for [PhysicsDirectSpaceState3D.intersect\_ray()](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d-method-intersect-ray).

## Description

By changing various properties of this object, such as the ray position, you can configure the parameters for [PhysicsDirectSpaceState3D.intersect\_ray()](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d-method-intersect-ray).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collide\_with\_areas](#class-physicsrayqueryparameters3d-property-collide-with-areas) | `false` |
| [bool](class_bool.md#class-bool) | [collide\_with\_bodies](#class-physicsrayqueryparameters3d-property-collide-with-bodies) | `true` |
| [int](class_int.md#class-int) | [collision\_mask](#class-physicsrayqueryparameters3d-property-collision-mask) | `4294967295` |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [exclude](#class-physicsrayqueryparameters3d-property-exclude) | `[]` |
| [Vector3](class_vector3.md#class-vector3) | [from](#class-physicsrayqueryparameters3d-property-from) | `Vector3(0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [hit\_back\_faces](#class-physicsrayqueryparameters3d-property-hit-back-faces) | `true` |
| [bool](class_bool.md#class-bool) | [hit\_from\_inside](#class-physicsrayqueryparameters3d-property-hit-from-inside) | `false` |
| [Vector3](class_vector3.md#class-vector3) | [to](#class-physicsrayqueryparameters3d-property-to) | `Vector3(0, 0, 0)` |

## Methods

|     |     |
| --- | --- |
| [PhysicsRayQueryParameters3D](#class-physicsrayqueryparameters3d) | [create](#class-physicsrayqueryparameters3d-method-create)(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), collision\_mask: [int](class_int.md#class-int) = 4294967295, exclude: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] = \[\]) static |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collide\_with\_areas** = `false` [🔗](#class-physicsrayqueryparameters3d-property-collide-with-areas)

- void **set\_collide\_with\_areas**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_areas\_enabled**()


If `true`, the query will take [Area3D](class_area3d.md#class-area3d) s into account.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_bodies** = `true` [🔗](#class-physicsrayqueryparameters3d-property-collide-with-bodies)

- void **set\_collide\_with\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_bodies\_enabled**()


If `true`, the query will take [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) s into account.

* * *

[int](class_int.md#class-int) **collision\_mask** = `4294967295` [🔗](#class-physicsrayqueryparameters3d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **exclude** = `[]` [🔗](#class-physicsrayqueryparameters3d-property-exclude)

- void **set\_exclude**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_exclude**()


The list of object [RID](class_rid.md#class-rid) s that will be excluded from collisions. Use [CollisionObject3D.get\_rid()](class_collisionobject3d.md#class-collisionobject3d-method-get-rid) to get the [RID](class_rid.md#class-rid) associated with a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)-derived node.

**Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then assign it to the property again.

* * *

[Vector3](class_vector3.md#class-vector3) **from** = `Vector3(0, 0, 0)` [🔗](#class-physicsrayqueryparameters3d-property-from)

- void **set\_from**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_from**()


The starting point of the ray being queried for, in global coordinates.

* * *

[bool](class_bool.md#class-bool) **hit\_back\_faces** = `true` [🔗](#class-physicsrayqueryparameters3d-property-hit-back-faces)

- void **set\_hit\_back\_faces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hit\_back\_faces\_enabled**()


If `true`, the query will hit back faces with concave polygon shapes with back face enabled or heightmap shapes.

* * *

[bool](class_bool.md#class-bool) **hit\_from\_inside** = `false` [🔗](#class-physicsrayqueryparameters3d-property-hit-from-inside)

- void **set\_hit\_from\_inside**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hit\_from\_inside\_enabled**()


If `true`, the query will detect a hit when starting inside shapes. In this case the collision normal will be `Vector3(0, 0, 0)`. Does not affect concave polygon shapes or heightmap shapes.

* * *

[Vector3](class_vector3.md#class-vector3) **to** = `Vector3(0, 0, 0)` [🔗](#class-physicsrayqueryparameters3d-property-to)

- void **set\_to**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_to**()


The ending point of the ray being queried for, in global coordinates.

* * *

## Method Descriptions

[PhysicsRayQueryParameters3D](#class-physicsrayqueryparameters3d) **create**(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), collision\_mask: [int](class_int.md#class-int) = 4294967295, exclude: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] = \[\]) static [🔗](#class-physicsrayqueryparameters3d-method-create)

Returns a new, pre-configured **PhysicsRayQueryParameters3D** object. Use it to quickly create query parameters using the most common options.

```
var query = PhysicsRayQueryParameters3D.create(position, position + Vector3(0, -10, 0))
var collision = get_world_3d().direct_space_state.intersect_ray(query)

```

[Previous](class_physicsrayqueryparameters2d.md "PhysicsRayQueryParameters2D") [Next](class_physicsserver2d.md "PhysicsServer2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsrayqueryparameters2d.md "PhysicsRayQueryParameters2D") [Next](class_physicsserver2d.md "PhysicsServer2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).