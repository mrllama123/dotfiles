---
title: ShapeCast2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_shapecast2d.html
crawled_at: "2026-08-13T10:42:43+12:00"
content_hash: 03b6d0e451ad91c1e82801d7d02ff88113e24ced35b54384216719f4de9d65a5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ShapeCast2D

* * *

# ShapeCast2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 2D shape that sweeps a region of space to detect [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) s.

## Description

Shape casting allows to detect collision objects by sweeping its [shape](#class-shapecast2d-property-shape) along the cast direction determined by [target\_position](#class-shapecast2d-property-target-position). This is similar to [RayCast2D](class_raycast2d.md#class-raycast2d), but it allows for sweeping a region of space, rather than just a straight line. **ShapeCast2D** can detect multiple collision objects. It is useful for things like wide laser beams or snapping a simple shape to a floor.

Immediate collision overlaps can be done with the [target\_position](#class-shapecast2d-property-target-position) set to `Vector2(0, 0)` and by calling [force\_shapecast\_update()](#class-shapecast2d-method-force-shapecast-update) within the same physics frame. This helps to overcome some limitations of [Area2D](class_area2d.md#class-area2d) when used as an instantaneous detection area, as collision information isn't immediately available to it.

**Note:** Shape casting is more computationally expensive than ray casting.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collide\_with\_areas](#class-shapecast2d-property-collide-with-areas) | `false` |
| [bool](class_bool.md#class-bool) | [collide\_with\_bodies](#class-shapecast2d-property-collide-with-bodies) | `true` |
| [int](class_int.md#class-int) | [collision\_mask](#class-shapecast2d-property-collision-mask) | `1` |
| [Array](class_array.md#class-array) | [collision\_result](#class-shapecast2d-property-collision-result) | `[]` |
| [bool](class_bool.md#class-bool) | [enabled](#class-shapecast2d-property-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [exclude\_parent](#class-shapecast2d-property-exclude-parent) | `true` |
| [float](class_float.md#class-float) | [margin](#class-shapecast2d-property-margin) | `0.0` |
| [int](class_int.md#class-int) | [max\_results](#class-shapecast2d-property-max-results) | `32` |
| [Shape2D](class_shape2d.md#class-shape2d) | [shape](#class-shapecast2d-property-shape) |  |
| [Vector2](class_vector2.md#class-vector2) | [target\_position](#class-shapecast2d-property-target-position) | `Vector2(0, 50)` |

## Methods

|     |     |
| --- | --- |
| void | [add\_exception](#class-shapecast2d-method-add-exception)(node: [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)) |
| void | [add\_exception\_rid](#class-shapecast2d-method-add-exception-rid)(rid: [RID](class_rid.md#class-rid)) |
| void | [clear\_exceptions](#class-shapecast2d-method-clear-exceptions)() |
| void | [force\_shapecast\_update](#class-shapecast2d-method-force-shapecast-update)() |
| [float](class_float.md#class-float) | [get\_closest\_collision\_safe\_fraction](#class-shapecast2d-method-get-closest-collision-safe-fraction)() const |
| [float](class_float.md#class-float) | [get\_closest\_collision\_unsafe\_fraction](#class-shapecast2d-method-get-closest-collision-unsafe-fraction)() const |
| [Object](class_object.md#class-object) | [get\_collider](#class-shapecast2d-method-get-collider)(index: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_collider\_rid](#class-shapecast2d-method-get-collider-rid)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_collider\_shape](#class-shapecast2d-method-get-collider-shape)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_collision\_count](#class-shapecast2d-method-get-collision-count)() const |
| [bool](class_bool.md#class-bool) | [get\_collision\_mask\_value](#class-shapecast2d-method-get-collision-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_collision\_normal](#class-shapecast2d-method-get-collision-normal)(index: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_collision\_point](#class-shapecast2d-method-get-collision-point)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_colliding](#class-shapecast2d-method-is-colliding)() const |
| void | [remove\_exception](#class-shapecast2d-method-remove-exception)(node: [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)) |
| void | [remove\_exception\_rid](#class-shapecast2d-method-remove-exception-rid)(rid: [RID](class_rid.md#class-rid)) |
| void | [set\_collision\_mask\_value](#class-shapecast2d-method-set-collision-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collide\_with\_areas** = `false` [🔗](#class-shapecast2d-property-collide-with-areas)

- void **set\_collide\_with\_areas**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_areas\_enabled**()


If `true`, collisions with [Area2D](class_area2d.md#class-area2d) s will be reported.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_bodies** = `true` [🔗](#class-shapecast2d-property-collide-with-bodies)

- void **set\_collide\_with\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_bodies\_enabled**()


If `true`, collisions with [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) s will be reported.

* * *

[int](class_int.md#class-int) **collision\_mask** = `1` [🔗](#class-shapecast2d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The shape's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[Array](class_array.md#class-array) **collision\_result** = `[]` [🔗](#class-shapecast2d-property-collision-result)

- [Array](class_array.md#class-array) **get\_collision\_result**()


Returns the complete collision information from the collision sweep. The data returned is the same as in the [PhysicsDirectSpaceState2D.get\_rest\_info()](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d-method-get-rest-info) method.

* * *

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-shapecast2d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


If `true`, collisions will be reported.

* * *

[bool](class_bool.md#class-bool) **exclude\_parent** = `true` [🔗](#class-shapecast2d-property-exclude-parent)

- void **set\_exclude\_parent\_body**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_exclude\_parent\_body**()


If `true`, the parent node will be excluded from collision detection.

* * *

[float](class_float.md#class-float) **margin** = `0.0` [🔗](#class-shapecast2d-property-margin)

- void **set\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_margin**()


The collision margin for the shape. A larger margin helps detecting collisions more consistently, at the cost of precision.

* * *

[int](class_int.md#class-int) **max\_results** = `32` [🔗](#class-shapecast2d-property-max-results)

- void **set\_max\_results**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_results**()


The number of intersections can be limited with this parameter, to reduce the processing time.

* * *

[Shape2D](class_shape2d.md#class-shape2d) **shape** [🔗](#class-shapecast2d-property-shape)

- void **set\_shape**(value: [Shape2D](class_shape2d.md#class-shape2d))

- [Shape2D](class_shape2d.md#class-shape2d) **get\_shape**()


The shape to be used for collision queries.

* * *

[Vector2](class_vector2.md#class-vector2) **target\_position** = `Vector2(0, 50)` [🔗](#class-shapecast2d-property-target-position)

- void **set\_target\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_target\_position**()


The shape's destination point, relative to this node's [Node2D.position](class_node2d.md#class-node2d-property-position).

* * *

## Method Descriptions

void **add\_exception**(node: [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)) [🔗](#class-shapecast2d-method-add-exception)

Adds a collision exception so the shape does not report collisions with the specified node.

* * *

void **add\_exception\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-shapecast2d-method-add-exception-rid)

Adds a collision exception so the shape does not report collisions with the specified [RID](class_rid.md#class-rid).

* * *

void **clear\_exceptions**() [🔗](#class-shapecast2d-method-clear-exceptions)

Removes all collision exceptions for this shape.

* * *

void **force\_shapecast\_update**() [🔗](#class-shapecast2d-method-force-shapecast-update)

Updates the collision information for the shape immediately, without waiting for the next `_physics_process` call. Use this method, for example, when the shape or its parent has changed state.

**Note:** Setting [enabled](#class-shapecast2d-property-enabled) to `true` is not required for this to work.

* * *

[float](class_float.md#class-float) **get\_closest\_collision\_safe\_fraction**() const [🔗](#class-shapecast2d-method-get-closest-collision-safe-fraction)

Returns the fraction from this cast's origin to its [target\_position](#class-shapecast2d-property-target-position) of how far the shape can move without triggering a collision, as a value between `0.0` and `1.0`.

* * *

[float](class_float.md#class-float) **get\_closest\_collision\_unsafe\_fraction**() const [🔗](#class-shapecast2d-method-get-closest-collision-unsafe-fraction)

Returns the fraction from this cast's origin to its [target\_position](#class-shapecast2d-property-target-position) of how far the shape must move to trigger a collision, as a value between `0.0` and `1.0`.

In ideal conditions this would be the same as [get\_closest\_collision\_safe\_fraction()](#class-shapecast2d-method-get-closest-collision-safe-fraction), however shape casting is calculated in discrete steps, so the precise point of collision can occur between two calculated positions.

* * *

[Object](class_object.md#class-object) **get\_collider**(index: [int](class_int.md#class-int)) const [🔗](#class-shapecast2d-method-get-collider)

Returns the collided [Object](class_object.md#class-object) of one of the multiple collisions at `index`, or `null` if no object is intersecting the shape (i.e. [is\_colliding()](#class-shapecast2d-method-is-colliding) returns `false`).

* * *

[RID](class_rid.md#class-rid) **get\_collider\_rid**(index: [int](class_int.md#class-int)) const [🔗](#class-shapecast2d-method-get-collider-rid)

Returns the [RID](class_rid.md#class-rid) of the collided object of one of the multiple collisions at `index`.

* * *

[int](class_int.md#class-int) **get\_collider\_shape**(index: [int](class_int.md#class-int)) const [🔗](#class-shapecast2d-method-get-collider-shape)

Returns the shape ID of the colliding shape of one of the multiple collisions at `index`, or `0` if no object is intersecting the shape (i.e. [is\_colliding()](#class-shapecast2d-method-is-colliding) returns `false`).

* * *

[int](class_int.md#class-int) **get\_collision\_count**() const [🔗](#class-shapecast2d-method-get-collision-count)

The number of collisions detected at the point of impact. Use this to iterate over multiple collisions as provided by [get\_collider()](#class-shapecast2d-method-get-collider), [get\_collider\_shape()](#class-shapecast2d-method-get-collider-shape), [get\_collision\_point()](#class-shapecast2d-method-get-collision-point), and [get\_collision\_normal()](#class-shapecast2d-method-get-collision-normal) methods.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-shapecast2d-method-get-collision-mask-value)

Returns whether or not the specified layer of the [collision\_mask](#class-shapecast2d-property-collision-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_collision\_normal**(index: [int](class_int.md#class-int)) const [🔗](#class-shapecast2d-method-get-collision-normal)

Returns the normal of one of the multiple collisions at `index` of the intersecting object.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_collision\_point**(index: [int](class_int.md#class-int)) const [🔗](#class-shapecast2d-method-get-collision-point)

Returns the collision point of one of the multiple collisions at `index` where the shape intersects the colliding object.

**Note:** This point is in the **global** coordinate system.

* * *

[bool](class_bool.md#class-bool) **is\_colliding**() const [🔗](#class-shapecast2d-method-is-colliding)

Returns whether any object is intersecting with the shape's vector (considering the vector length).

* * *

void **remove\_exception**(node: [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)) [🔗](#class-shapecast2d-method-remove-exception)

Removes a collision exception so the shape does report collisions with the specified node.

* * *

void **remove\_exception\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-shapecast2d-method-remove-exception-rid)

Removes a collision exception so the shape does report collisions with the specified [RID](class_rid.md#class-rid).

* * *

void **set\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-shapecast2d-method-set-collision-mask-value)

Based on `value`, enables or disables the specified layer in the [collision\_mask](#class-shapecast2d-property-collision-mask), given a `layer_number` between 1 and 32.

[Previous](class_shaderglobalsoverride.md "ShaderGlobalsOverride") [Next](class_shapecast3d.md "ShapeCast3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_shaderglobalsoverride.md "ShaderGlobalsOverride") [Next](class_shapecast3d.md "ShapeCast3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).