---
title: PhysicsPointQueryParameters3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicspointqueryparameters3d.html
crawled_at: "2026-08-13T10:40:25+12:00"
content_hash: 8aa7281f9d60166c3983c1f49877d49e74e6dd5992a6368ca9484c11e04a5d80
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsPointQueryParameters3D

* * *

# PhysicsPointQueryParameters3D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides parameters for [PhysicsDirectSpaceState3D.intersect\_point()](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d-method-intersect-point).

## Description

By changing various properties of this object, such as the point position, you can configure the parameters for [PhysicsDirectSpaceState3D.intersect\_point()](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d-method-intersect-point).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collide\_with\_areas](#class-physicspointqueryparameters3d-property-collide-with-areas) | `false` |
| [bool](class_bool.md#class-bool) | [collide\_with\_bodies](#class-physicspointqueryparameters3d-property-collide-with-bodies) | `true` |
| [int](class_int.md#class-int) | [collision\_mask](#class-physicspointqueryparameters3d-property-collision-mask) | `4294967295` |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [exclude](#class-physicspointqueryparameters3d-property-exclude) | `[]` |
| [Vector3](class_vector3.md#class-vector3) | [position](#class-physicspointqueryparameters3d-property-position) | `Vector3(0, 0, 0)` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collide\_with\_areas** = `false` [🔗](#class-physicspointqueryparameters3d-property-collide-with-areas)

- void **set\_collide\_with\_areas**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_areas\_enabled**()


If `true`, the query will take [Area3D](class_area3d.md#class-area3d) s into account.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_bodies** = `true` [🔗](#class-physicspointqueryparameters3d-property-collide-with-bodies)

- void **set\_collide\_with\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_bodies\_enabled**()


If `true`, the query will take [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) s into account.

* * *

[int](class_int.md#class-int) **collision\_mask** = `4294967295` [🔗](#class-physicspointqueryparameters3d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **exclude** = `[]` [🔗](#class-physicspointqueryparameters3d-property-exclude)

- void **set\_exclude**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_exclude**()


The list of object [RID](class_rid.md#class-rid) s that will be excluded from collisions. Use [CollisionObject3D.get\_rid()](class_collisionobject3d.md#class-collisionobject3d-method-get-rid) to get the [RID](class_rid.md#class-rid) associated with a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)-derived node.

**Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then assign it to the property again.

* * *

[Vector3](class_vector3.md#class-vector3) **position** = `Vector3(0, 0, 0)` [🔗](#class-physicspointqueryparameters3d-property-position)

- void **set\_position**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_position**()


The position being queried for, in global coordinates.

[Previous](class_physicspointqueryparameters2d.md "PhysicsPointQueryParameters2D") [Next](class_physicsrayqueryparameters2d.md "PhysicsRayQueryParameters2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicspointqueryparameters2d.md "PhysicsPointQueryParameters2D") [Next](class_physicsrayqueryparameters2d.md "PhysicsRayQueryParameters2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).