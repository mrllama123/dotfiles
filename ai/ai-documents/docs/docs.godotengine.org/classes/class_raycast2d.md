---
title: RayCast2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_raycast2d.html
crawled_at: "2026-08-13T10:30:49+12:00"
content_hash: 42ccd92882045c8edd4a51e12a1298040e98fd5c9a8a126c56e7db5f2239bef0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RayCast2D

* * *

# RayCast2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A ray in 2D space, used to find the first collision object it intersects.

## Description

A raycast represents a ray from its origin to its [target\_position](#class-raycast2d-property-target-position) that finds the closest object along its path, if it intersects any.

**RayCast2D** can ignore some objects by adding them to an exception list, by making its detection reporting ignore [Area2D](class_area2d.md#class-area2d) s ( [collide\_with\_areas](#class-raycast2d-property-collide-with-areas)) or [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) s ( [collide\_with\_bodies](#class-raycast2d-property-collide-with-bodies)), or by configuring physics layers.

**RayCast2D** calculates intersection every physics frame, and it holds the result until the next physics frame. For an immediate raycast, or if you want to configure a **RayCast2D** multiple times within the same physics frame, use [force\_raycast\_update()](#class-raycast2d-method-force-raycast-update).

To sweep over a region of 2D space, you can approximate the region with multiple **RayCast2D** s or use [ShapeCast2D](class_shapecast2d.md#class-shapecast2d).

## Tutorials

- [Ray-casting](../tutorials/physics/ray-casting.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collide\_with\_areas](#class-raycast2d-property-collide-with-areas) | `false` |
| [bool](class_bool.md#class-bool) | [collide\_with\_bodies](#class-raycast2d-property-collide-with-bodies) | `true` |
| [int](class_int.md#class-int) | [collision\_mask](#class-raycast2d-property-collision-mask) | `1` |
| [bool](class_bool.md#class-bool) | [enabled](#class-raycast2d-property-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [exclude\_parent](#class-raycast2d-property-exclude-parent) | `true` |
| [bool](class_bool.md#class-bool) | [hit\_from\_inside](#class-raycast2d-property-hit-from-inside) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [target\_position](#class-raycast2d-property-target-position) | `Vector2(0, 50)` |

## Methods

|     |     |
| --- | --- |
| void | [add\_exception](#class-raycast2d-method-add-exception)(node: [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)) |
| void | [add\_exception\_rid](#class-raycast2d-method-add-exception-rid)(rid: [RID](class_rid.md#class-rid)) |
| void | [clear\_exceptions](#class-raycast2d-method-clear-exceptions)() |
| void | [force\_raycast\_update](#class-raycast2d-method-force-raycast-update)() |
| [Object](class_object.md#class-object) | [get\_collider](#class-raycast2d-method-get-collider)() const |
| [RID](class_rid.md#class-rid) | [get\_collider\_rid](#class-raycast2d-method-get-collider-rid)() const |
| [int](class_int.md#class-int) | [get\_collider\_shape](#class-raycast2d-method-get-collider-shape)() const |
| [bool](class_bool.md#class-bool) | [get\_collision\_mask\_value](#class-raycast2d-method-get-collision-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_collision\_normal](#class-raycast2d-method-get-collision-normal)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_collision\_point](#class-raycast2d-method-get-collision-point)() const |
| [bool](class_bool.md#class-bool) | [is\_colliding](#class-raycast2d-method-is-colliding)() const |
| void | [remove\_exception](#class-raycast2d-method-remove-exception)(node: [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)) |
| void | [remove\_exception\_rid](#class-raycast2d-method-remove-exception-rid)(rid: [RID](class_rid.md#class-rid)) |
| void | [set\_collision\_mask\_value](#class-raycast2d-method-set-collision-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collide\_with\_areas** = `false` [🔗](#class-raycast2d-property-collide-with-areas)

- void **set\_collide\_with\_areas**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_areas\_enabled**()


If `true`, collisions with [Area2D](class_area2d.md#class-area2d) s will be reported.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_bodies** = `true` [🔗](#class-raycast2d-property-collide-with-bodies)

- void **set\_collide\_with\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_bodies\_enabled**()


If `true`, collisions with [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) s will be reported.

* * *

[int](class_int.md#class-int) **collision\_mask** = `1` [🔗](#class-raycast2d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The ray's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-raycast2d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


If `true`, collisions will be reported.

* * *

[bool](class_bool.md#class-bool) **exclude\_parent** = `true` [🔗](#class-raycast2d-property-exclude-parent)

- void **set\_exclude\_parent\_body**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_exclude\_parent\_body**()


If `true`, this raycast will not report collisions with its parent node. This property only has an effect if the parent node is a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d). See also [Node.get\_parent()](class_node.md#class-node-method-get-parent) and [add\_exception()](#class-raycast2d-method-add-exception).

* * *

[bool](class_bool.md#class-bool) **hit\_from\_inside** = `false` [🔗](#class-raycast2d-property-hit-from-inside)

- void **set\_hit\_from\_inside**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hit\_from\_inside\_enabled**()


If `true`, the ray will detect a hit when starting inside shapes. In this case the collision normal will be `Vector2(0, 0)`. Does not affect concave polygon shapes.

* * *

[Vector2](class_vector2.md#class-vector2) **target\_position** = `Vector2(0, 50)` [🔗](#class-raycast2d-property-target-position)

- void **set\_target\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_target\_position**()


The ray's destination point, relative to this raycast's [Node2D.position](class_node2d.md#class-node2d-property-position).

* * *

## Method Descriptions

void **add\_exception**(node: [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)) [🔗](#class-raycast2d-method-add-exception)

Adds a collision exception so the ray does not report collisions with the specified `node`.

* * *

void **add\_exception\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-raycast2d-method-add-exception-rid)

Adds a collision exception so the ray does not report collisions with the specified [RID](class_rid.md#class-rid).

* * *

void **clear\_exceptions**() [🔗](#class-raycast2d-method-clear-exceptions)

Removes all collision exceptions for this ray.

* * *

void **force\_raycast\_update**() [🔗](#class-raycast2d-method-force-raycast-update)

Updates the collision information for the ray immediately, without waiting for the next `_physics_process` call. Use this method, for example, when the ray or its parent has changed state.

**Note:** [enabled](#class-raycast2d-property-enabled) does not need to be `true` for this to work.

* * *

[Object](class_object.md#class-object) **get\_collider**() const [🔗](#class-raycast2d-method-get-collider)

Returns the first object that the ray intersects, or `null` if no object is intersecting the ray (i.e. [is\_colliding()](#class-raycast2d-method-is-colliding) returns `false`).

**Note:** This object is not guaranteed to be a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d). For example, if the ray intersects a [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer), the method will return a [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer) instance.

* * *

[RID](class_rid.md#class-rid) **get\_collider\_rid**() const [🔗](#class-raycast2d-method-get-collider-rid)

Returns the [RID](class_rid.md#class-rid) of the first object that the ray intersects, or an empty [RID](class_rid.md#class-rid) if no object is intersecting the ray (i.e. [is\_colliding()](#class-raycast2d-method-is-colliding) returns `false`).

* * *

[int](class_int.md#class-int) **get\_collider\_shape**() const [🔗](#class-raycast2d-method-get-collider-shape)

Returns the shape ID of the first object that the ray intersects, or `0` if no object is intersecting the ray (i.e. [is\_colliding()](#class-raycast2d-method-is-colliding) returns `false`).

To get the intersected shape node, for a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) target, use:

GDScriptC#

```
var target = get_collider() # A CollisionObject2D.
var shape_id = get_collider_shape() # The shape index in the collider.
var owner_id = target.shape_find_owner(shape_id) # The owner ID in the collider.
var shape = target.shape_owner_get_owner(owner_id)

```

```
var target = (CollisionObject2D)GetCollider(); // A CollisionObject2D.
var shapeId = GetColliderShape(); // The shape index in the collider.
var ownerId = target.ShapeFindOwner(shapeId); // The owner ID in the collider.
var shape = target.ShapeOwnerGetOwner(ownerId);

```

* * *

[bool](class_bool.md#class-bool) **get\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-raycast2d-method-get-collision-mask-value)

Returns whether or not the specified layer of the [collision\_mask](#class-raycast2d-property-collision-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_collision\_normal**() const [🔗](#class-raycast2d-method-get-collision-normal)

Returns the normal of the intersecting object's shape at the collision point, or `Vector2(0, 0)` if the ray starts inside the shape and [hit\_from\_inside](#class-raycast2d-property-hit-from-inside) is `true`.

**Note:** Check that [is\_colliding()](#class-raycast2d-method-is-colliding) returns `true` before calling this method to ensure the returned normal is valid and up-to-date.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_collision\_point**() const [🔗](#class-raycast2d-method-get-collision-point)

Returns the collision point at which the ray intersects the closest object, in the global coordinate system. If [hit\_from\_inside](#class-raycast2d-property-hit-from-inside) is `true` and the ray starts inside of a collision shape, this function will return the origin point of the ray.

**Note:** Check that [is\_colliding()](#class-raycast2d-method-is-colliding) returns `true` before calling this method to ensure the returned point is valid and up-to-date.

* * *

[bool](class_bool.md#class-bool) **is\_colliding**() const [🔗](#class-raycast2d-method-is-colliding)

Returns whether any object is intersecting with the ray's vector (considering the vector length).

* * *

void **remove\_exception**(node: [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)) [🔗](#class-raycast2d-method-remove-exception)

Removes a collision exception so the ray can report collisions with the specified specified `node`.

* * *

void **remove\_exception\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-raycast2d-method-remove-exception-rid)

Removes a collision exception so the ray can report collisions with the specified [RID](class_rid.md#class-rid).

* * *

void **set\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-raycast2d-method-set-collision-mask-value)

Based on `value`, enables or disables the specified layer in the [collision\_mask](#class-raycast2d-property-collision-mask), given a `layer_number` between 1 and 32.

[Previous](class_range.md "Range") [Next](class_raycast3d.md "RayCast3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_range.md "Range") [Next](class_raycast3d.md "RayCast3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).