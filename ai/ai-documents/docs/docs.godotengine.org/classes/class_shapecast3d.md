---
title: ShapeCast3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_shapecast3d.html
crawled_at: "2026-08-13T10:33:12+12:00"
content_hash: f8a1c290890aeb0d396e73740b10b1157656d01c80e881e45b0429e818368075
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ShapeCast3D

* * *

# ShapeCast3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 3D shape that sweeps a region of space to detect [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) s.

## Description

Shape casting allows to detect collision objects by sweeping its [shape](#class-shapecast3d-property-shape) along the cast direction determined by [target\_position](#class-shapecast3d-property-target-position). This is similar to [RayCast3D](class_raycast3d.md#class-raycast3d), but it allows for sweeping a region of space, rather than just a straight line. **ShapeCast3D** can detect multiple collision objects. It is useful for things like wide laser beams or snapping a simple shape to a floor.

Immediate collision overlaps can be done with the [target\_position](#class-shapecast3d-property-target-position) set to `Vector3(0, 0, 0)` and by calling [force\_shapecast\_update()](#class-shapecast3d-method-force-shapecast-update) within the same physics frame. This helps to overcome some limitations of [Area3D](class_area3d.md#class-area3d) when used as an instantaneous detection area, as collision information isn't immediately available to it.

**Note:** Shape casting is more computationally expensive than ray casting.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collide\_with\_areas](#class-shapecast3d-property-collide-with-areas) | `false` |
| [bool](class_bool.md#class-bool) | [collide\_with\_bodies](#class-shapecast3d-property-collide-with-bodies) | `true` |
| [int](class_int.md#class-int) | [collision\_mask](#class-shapecast3d-property-collision-mask) | `1` |
| [Array](class_array.md#class-array) | [collision\_result](#class-shapecast3d-property-collision-result) | `[]` |
| [Color](class_color.md#class-color) | [debug\_shape\_custom\_color](#class-shapecast3d-property-debug-shape-custom-color) | `Color(0, 0, 0, 1)` |
| [bool](class_bool.md#class-bool) | [enabled](#class-shapecast3d-property-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [exclude\_parent](#class-shapecast3d-property-exclude-parent) | `true` |
| [float](class_float.md#class-float) | [margin](#class-shapecast3d-property-margin) | `0.0` |
| [int](class_int.md#class-int) | [max\_results](#class-shapecast3d-property-max-results) | `32` |
| [Shape3D](class_shape3d.md#class-shape3d) | [shape](#class-shapecast3d-property-shape) |  |
| [Vector3](class_vector3.md#class-vector3) | [target\_position](#class-shapecast3d-property-target-position) | `Vector3(0, -1, 0)` |

## Methods

|     |     |
| --- | --- |
| void | [add\_exception](#class-shapecast3d-method-add-exception)(node: [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)) |
| void | [add\_exception\_rid](#class-shapecast3d-method-add-exception-rid)(rid: [RID](class_rid.md#class-rid)) |
| void | [clear\_exceptions](#class-shapecast3d-method-clear-exceptions)() |
| void | [force\_shapecast\_update](#class-shapecast3d-method-force-shapecast-update)() |
| [float](class_float.md#class-float) | [get\_closest\_collision\_safe\_fraction](#class-shapecast3d-method-get-closest-collision-safe-fraction)() const |
| [float](class_float.md#class-float) | [get\_closest\_collision\_unsafe\_fraction](#class-shapecast3d-method-get-closest-collision-unsafe-fraction)() const |
| [Object](class_object.md#class-object) | [get\_collider](#class-shapecast3d-method-get-collider)(index: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_collider\_rid](#class-shapecast3d-method-get-collider-rid)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_collider\_shape](#class-shapecast3d-method-get-collider-shape)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_collision\_count](#class-shapecast3d-method-get-collision-count)() const |
| [bool](class_bool.md#class-bool) | [get\_collision\_mask\_value](#class-shapecast3d-method-get-collision-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_collision\_normal](#class-shapecast3d-method-get-collision-normal)(index: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_collision\_point](#class-shapecast3d-method-get-collision-point)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_colliding](#class-shapecast3d-method-is-colliding)() const |
| void | [remove\_exception](#class-shapecast3d-method-remove-exception)(node: [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)) |
| void | [remove\_exception\_rid](#class-shapecast3d-method-remove-exception-rid)(rid: [RID](class_rid.md#class-rid)) |
| void | [resource\_changed](#class-shapecast3d-method-resource-changed)(resource: [Resource](class_resource.md#class-resource)) |
| void | [set\_collision\_mask\_value](#class-shapecast3d-method-set-collision-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collide\_with\_areas** = `false` [🔗](#class-shapecast3d-property-collide-with-areas)

- void **set\_collide\_with\_areas**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_areas\_enabled**()


If `true`, collisions with [Area3D](class_area3d.md#class-area3d) s will be reported.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_bodies** = `true` [🔗](#class-shapecast3d-property-collide-with-bodies)

- void **set\_collide\_with\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_bodies\_enabled**()


If `true`, collisions with [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) s will be reported.

* * *

[int](class_int.md#class-int) **collision\_mask** = `1` [🔗](#class-shapecast3d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The shape's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[Array](class_array.md#class-array) **collision\_result** = `[]` [🔗](#class-shapecast3d-property-collision-result)

- [Array](class_array.md#class-array) **get\_collision\_result**()


Returns the complete collision information from the collision sweep. The data returned is the same as in the [PhysicsDirectSpaceState3D.get\_rest\_info()](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d-method-get-rest-info) method.

* * *

[Color](class_color.md#class-color) **debug\_shape\_custom\_color** = `Color(0, 0, 0, 1)` [🔗](#class-shapecast3d-property-debug-shape-custom-color)

- void **set\_debug\_shape\_custom\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_debug\_shape\_custom\_color**()


The custom color to use to draw the shape in the editor and at run-time if **Visible Collision Shapes** is enabled in the **Debug** menu. This color will be highlighted at run-time if the **ShapeCast3D** is colliding with something.

If set to `Color(0.0, 0.0, 0.0)` (by default), the color set in [ProjectSettings.debug/shapes/collision/shape\_color](class_projectsettings.md#class-projectsettings-property-debug-shapes-collision-shape-color) is used.

* * *

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-shapecast3d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


If `true`, collisions will be reported.

* * *

[bool](class_bool.md#class-bool) **exclude\_parent** = `true` [🔗](#class-shapecast3d-property-exclude-parent)

- void **set\_exclude\_parent\_body**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_exclude\_parent\_body**()


If `true`, the parent node will be excluded from collision detection.

* * *

[float](class_float.md#class-float) **margin** = `0.0` [🔗](#class-shapecast3d-property-margin)

- void **set\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_margin**()


The collision margin for the shape. A larger margin helps detecting collisions more consistently, at the cost of precision.

* * *

[int](class_int.md#class-int) **max\_results** = `32` [🔗](#class-shapecast3d-property-max-results)

- void **set\_max\_results**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_results**()


The number of intersections can be limited with this parameter, to reduce the processing time.

* * *

[Shape3D](class_shape3d.md#class-shape3d) **shape** [🔗](#class-shapecast3d-property-shape)

- void **set\_shape**(value: [Shape3D](class_shape3d.md#class-shape3d))

- [Shape3D](class_shape3d.md#class-shape3d) **get\_shape**()


The shape to be used for collision queries.

* * *

[Vector3](class_vector3.md#class-vector3) **target\_position** = `Vector3(0, -1, 0)` [🔗](#class-shapecast3d-property-target-position)

- void **set\_target\_position**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_target\_position**()


The shape's destination point, relative to this node's [Node3D.position](class_node3d.md#class-node3d-property-position).

* * *

## Method Descriptions

void **add\_exception**(node: [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)) [🔗](#class-shapecast3d-method-add-exception)

Adds a collision exception so the shape does not report collisions with the specified node.

* * *

void **add\_exception\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-shapecast3d-method-add-exception-rid)

Adds a collision exception so the shape does not report collisions with the specified [RID](class_rid.md#class-rid).

* * *

void **clear\_exceptions**() [🔗](#class-shapecast3d-method-clear-exceptions)

Removes all collision exceptions for this shape.

* * *

void **force\_shapecast\_update**() [🔗](#class-shapecast3d-method-force-shapecast-update)

Updates the collision information for the shape immediately, without waiting for the next `_physics_process` call. Use this method, for example, when the shape or its parent has changed state.

**Note:** Setting [enabled](#class-shapecast3d-property-enabled) to `true` is not required for this to work.

* * *

[float](class_float.md#class-float) **get\_closest\_collision\_safe\_fraction**() const [🔗](#class-shapecast3d-method-get-closest-collision-safe-fraction)

Returns the fraction from this cast's origin to its [target\_position](#class-shapecast3d-property-target-position) of how far the shape can move without triggering a collision, as a value between `0.0` and `1.0`.

* * *

[float](class_float.md#class-float) **get\_closest\_collision\_unsafe\_fraction**() const [🔗](#class-shapecast3d-method-get-closest-collision-unsafe-fraction)

Returns the fraction from this cast's origin to its [target\_position](#class-shapecast3d-property-target-position) of how far the shape must move to trigger a collision, as a value between `0.0` and `1.0`.

In ideal conditions this would be the same as [get\_closest\_collision\_safe\_fraction()](#class-shapecast3d-method-get-closest-collision-safe-fraction), however shape casting is calculated in discrete steps, so the precise point of collision can occur between two calculated positions.

* * *

[Object](class_object.md#class-object) **get\_collider**(index: [int](class_int.md#class-int)) const [🔗](#class-shapecast3d-method-get-collider)

Returns the collided [Object](class_object.md#class-object) of one of the multiple collisions at `index`, or `null` if no object is intersecting the shape (i.e. [is\_colliding()](#class-shapecast3d-method-is-colliding) returns `false`).

* * *

[RID](class_rid.md#class-rid) **get\_collider\_rid**(index: [int](class_int.md#class-int)) const [🔗](#class-shapecast3d-method-get-collider-rid)

Returns the [RID](class_rid.md#class-rid) of the collided object of one of the multiple collisions at `index`.

* * *

[int](class_int.md#class-int) **get\_collider\_shape**(index: [int](class_int.md#class-int)) const [🔗](#class-shapecast3d-method-get-collider-shape)

Returns the shape ID of the colliding shape of one of the multiple collisions at `index`, or `0` if no object is intersecting the shape (i.e. [is\_colliding()](#class-shapecast3d-method-is-colliding) returns `false`).

* * *

[int](class_int.md#class-int) **get\_collision\_count**() const [🔗](#class-shapecast3d-method-get-collision-count)

The number of collisions detected at the point of impact. Use this to iterate over multiple collisions as provided by [get\_collider()](#class-shapecast3d-method-get-collider), [get\_collider\_shape()](#class-shapecast3d-method-get-collider-shape), [get\_collision\_point()](#class-shapecast3d-method-get-collision-point), and [get\_collision\_normal()](#class-shapecast3d-method-get-collision-normal) methods.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-shapecast3d-method-get-collision-mask-value)

Returns whether or not the specified layer of the [collision\_mask](#class-shapecast3d-property-collision-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_collision\_normal**(index: [int](class_int.md#class-int)) const [🔗](#class-shapecast3d-method-get-collision-normal)

Returns the normal of one of the multiple collisions at `index` of the intersecting object.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_collision\_point**(index: [int](class_int.md#class-int)) const [🔗](#class-shapecast3d-method-get-collision-point)

Returns the collision point of one of the multiple collisions at `index` where the shape intersects the colliding object.

**Note:** This point is in the **global** coordinate system.

* * *

[bool](class_bool.md#class-bool) **is\_colliding**() const [🔗](#class-shapecast3d-method-is-colliding)

Returns whether any object is intersecting with the shape's vector (considering the vector length).

* * *

void **remove\_exception**(node: [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)) [🔗](#class-shapecast3d-method-remove-exception)

Removes a collision exception so the shape does report collisions with the specified node.

* * *

void **remove\_exception\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-shapecast3d-method-remove-exception-rid)

Removes a collision exception so the shape does report collisions with the specified [RID](class_rid.md#class-rid).

* * *

void **resource\_changed**(resource: [Resource](class_resource.md#class-resource)) [🔗](#class-shapecast3d-method-resource-changed)

**Deprecated:** Use [Resource.changed](class_resource.md#class-resource-signal-changed) instead.

This method does nothing.

* * *

void **set\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-shapecast3d-method-set-collision-mask-value)

Based on `value`, enables or disables the specified layer in the [collision\_mask](#class-shapecast3d-property-collision-mask), given a `layer_number` between 1 and 32.

[Previous](class_shapecast2d.md "ShapeCast2D") [Next](class_skeleton2d.md "Skeleton2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_shapecast2d.md "ShapeCast2D") [Next](class_skeleton2d.md "Skeleton2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).