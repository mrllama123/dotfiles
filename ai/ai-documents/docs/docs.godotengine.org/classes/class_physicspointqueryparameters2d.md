---
title: PhysicsPointQueryParameters2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicspointqueryparameters2d.html
crawled_at: "2026-08-13T10:26:41+12:00"
content_hash: 3fddbeebb6da893d100b0df08217f927dc779c548eecbc3997ee38aae8394c9d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsPointQueryParameters2D

* * *

# PhysicsPointQueryParameters2D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides parameters for [PhysicsDirectSpaceState2D.intersect\_point()](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d-method-intersect-point).

## Description

By changing various properties of this object, such as the point position, you can configure the parameters for [PhysicsDirectSpaceState2D.intersect\_point()](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d-method-intersect-point).

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [canvas\_instance\_id](#class-physicspointqueryparameters2d-property-canvas-instance-id) | `0` |
| [bool](class_bool.md#class-bool) | [collide\_with\_areas](#class-physicspointqueryparameters2d-property-collide-with-areas) | `false` |
| [bool](class_bool.md#class-bool) | [collide\_with\_bodies](#class-physicspointqueryparameters2d-property-collide-with-bodies) | `true` |
| [int](class_int.md#class-int) | [collision\_mask](#class-physicspointqueryparameters2d-property-collision-mask) | `4294967295` |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [exclude](#class-physicspointqueryparameters2d-property-exclude) | `[]` |
| [Vector2](class_vector2.md#class-vector2) | [position](#class-physicspointqueryparameters2d-property-position) | `Vector2(0, 0)` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **canvas\_instance\_id** = `0` [🔗](#class-physicspointqueryparameters2d-property-canvas-instance-id)

- void **set\_canvas\_instance\_id**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_canvas\_instance\_id**()


If different from `0`, restricts the query to a specific canvas layer specified by its instance ID. See [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id).

If `0`, restricts the query to the Viewport's default canvas layer.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_areas** = `false` [🔗](#class-physicspointqueryparameters2d-property-collide-with-areas)

- void **set\_collide\_with\_areas**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_areas\_enabled**()


If `true`, the query will take [Area2D](class_area2d.md#class-area2d) s into account.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_bodies** = `true` [🔗](#class-physicspointqueryparameters2d-property-collide-with-bodies)

- void **set\_collide\_with\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_bodies\_enabled**()


If `true`, the query will take [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) s into account.

* * *

[int](class_int.md#class-int) **collision\_mask** = `4294967295` [🔗](#class-physicspointqueryparameters2d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **exclude** = `[]` [🔗](#class-physicspointqueryparameters2d-property-exclude)

- void **set\_exclude**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_exclude**()


The list of object [RID](class_rid.md#class-rid) s that will be excluded from collisions. Use [CollisionObject2D.get\_rid()](class_collisionobject2d.md#class-collisionobject2d-method-get-rid) to get the [RID](class_rid.md#class-rid) associated with a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)-derived node.

**Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then assign it to the property again.

* * *

[Vector2](class_vector2.md#class-vector2) **position** = `Vector2(0, 0)` [🔗](#class-physicspointqueryparameters2d-property-position)

- void **set\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_position**()


The position being queried for, in global coordinates.

[Previous](class_physicsdirectspacestate3dextension.md "PhysicsDirectSpaceState3DExtension") [Next](class_physicspointqueryparameters3d.md "PhysicsPointQueryParameters3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsdirectspacestate3dextension.md "PhysicsDirectSpaceState3DExtension") [Next](class_physicspointqueryparameters3d.md "PhysicsPointQueryParameters3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).