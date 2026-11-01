---
title: RayCast3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_raycast3d.html
crawled_at: "2026-08-13T10:23:12+12:00"
content_hash: 7bddffdf93e63ca5a00a4b37f1d7229fdd62fb79fcfde394f2dd3c45610ef0ac
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RayCast3D

* * *

# RayCast3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A ray in 3D space, used to find the first collision object it intersects.

## Description

A raycast represents a ray from its origin to its [target\_position](#class-raycast3d-property-target-position) that finds the closest object along its path, if it intersects any.

**RayCast3D** can ignore some objects by adding them to an exception list, by making its detection reporting ignore [Area3D](class_area3d.md#class-area3d) s ( [collide\_with\_areas](#class-raycast3d-property-collide-with-areas)) or [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) s ( [collide\_with\_bodies](#class-raycast3d-property-collide-with-bodies)), or by configuring physics layers.

**RayCast3D** calculates intersection every physics frame, and it holds the result until the next physics frame. For an immediate raycast, or if you want to configure a **RayCast3D** multiple times within the same physics frame, use [force\_raycast\_update()](#class-raycast3d-method-force-raycast-update).

To sweep over a region of 3D space, you can approximate the region with multiple **RayCast3D** s or use [ShapeCast3D](class_shapecast3d.md#class-shapecast3d).

## Tutorials

- [Ray-casting](../tutorials/physics/ray-casting.md)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collide\_with\_areas](#class-raycast3d-property-collide-with-areas) | `false` |
| [bool](class_bool.md#class-bool) | [collide\_with\_bodies](#class-raycast3d-property-collide-with-bodies) | `true` |
| [int](class_int.md#class-int) | [collision\_mask](#class-raycast3d-property-collision-mask) | `1` |
| [Color](class_color.md#class-color) | [debug\_shape\_custom\_color](#class-raycast3d-property-debug-shape-custom-color) | `Color(0, 0, 0, 1)` |
| [int](class_int.md#class-int) | [debug\_shape\_thickness](#class-raycast3d-property-debug-shape-thickness) | `2` |
| [bool](class_bool.md#class-bool) | [enabled](#class-raycast3d-property-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [exclude\_parent](#class-raycast3d-property-exclude-parent) | `true` |
| [bool](class_bool.md#class-bool) | [hit\_back\_faces](#class-raycast3d-property-hit-back-faces) | `true` |
| [bool](class_bool.md#class-bool) | [hit\_from\_inside](#class-raycast3d-property-hit-from-inside) | `false` |
| [Vector3](class_vector3.md#class-vector3) | [target\_position](#class-raycast3d-property-target-position) | `Vector3(0, -1, 0)` |

## Methods

|     |     |
| --- | --- |
| void | [add\_exception](#class-raycast3d-method-add-exception)(node: [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)) |
| void | [add\_exception\_rid](#class-raycast3d-method-add-exception-rid)(rid: [RID](class_rid.md#class-rid)) |
| void | [clear\_exceptions](#class-raycast3d-method-clear-exceptions)() |
| void | [force\_raycast\_update](#class-raycast3d-method-force-raycast-update)() |
| [Object](class_object.md#class-object) | [get\_collider](#class-raycast3d-method-get-collider)() const |
| [RID](class_rid.md#class-rid) | [get\_collider\_rid](#class-raycast3d-method-get-collider-rid)() const |
| [int](class_int.md#class-int) | [get\_collider\_shape](#class-raycast3d-method-get-collider-shape)() const |
| [int](class_int.md#class-int) | [get\_collision\_face\_index](#class-raycast3d-method-get-collision-face-index)() const |
| [bool](class_bool.md#class-bool) | [get\_collision\_mask\_value](#class-raycast3d-method-get-collision-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_collision\_normal](#class-raycast3d-method-get-collision-normal)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_collision\_point](#class-raycast3d-method-get-collision-point)() const |
| [bool](class_bool.md#class-bool) | [is\_colliding](#class-raycast3d-method-is-colliding)() const |
| void | [remove\_exception](#class-raycast3d-method-remove-exception)(node: [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)) |
| void | [remove\_exception\_rid](#class-raycast3d-method-remove-exception-rid)(rid: [RID](class_rid.md#class-rid)) |
| void | [set\_collision\_mask\_value](#class-raycast3d-method-set-collision-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collide\_with\_areas** = `false` [🔗](#class-raycast3d-property-collide-with-areas)

- void **set\_collide\_with\_areas**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_areas\_enabled**()


If `true`, collisions with [Area3D](class_area3d.md#class-area3d) s will be reported.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_bodies** = `true` [🔗](#class-raycast3d-property-collide-with-bodies)

- void **set\_collide\_with\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_bodies\_enabled**()


If `true`, collisions with [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) s will be reported.

* * *

[int](class_int.md#class-int) **collision\_mask** = `1` [🔗](#class-raycast3d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The ray's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[Color](class_color.md#class-color) **debug\_shape\_custom\_color** = `Color(0, 0, 0, 1)` [🔗](#class-raycast3d-property-debug-shape-custom-color)

- void **set\_debug\_shape\_custom\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_debug\_shape\_custom\_color**()


The custom color to use to draw the shape in the editor and at run-time if **Visible Collision Shapes** is enabled in the **Debug** menu. This color will be highlighted at run-time if the **RayCast3D** is colliding with something.

If set to `Color(0.0, 0.0, 0.0)` (by default), the color set in [ProjectSettings.debug/shapes/collision/shape\_color](class_projectsettings.md#class-projectsettings-property-debug-shapes-collision-shape-color) is used.

* * *

[int](class_int.md#class-int) **debug\_shape\_thickness** = `2` [🔗](#class-raycast3d-property-debug-shape-thickness)

- void **set\_debug\_shape\_thickness**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_debug\_shape\_thickness**()


If set to `1`, a line is used as the debug shape. Otherwise, a truncated pyramid is drawn to represent the **RayCast3D**. Requires **Visible Collision Shapes** to be enabled in the **Debug** menu for the debug shape to be visible at run-time.

* * *

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-raycast3d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


If `true`, collisions will be reported.

* * *

[bool](class_bool.md#class-bool) **exclude\_parent** = `true` [🔗](#class-raycast3d-property-exclude-parent)

- void **set\_exclude\_parent\_body**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_exclude\_parent\_body**()


If `true`, this raycast will not report collisions with its parent node. This property only has an effect if the parent node is a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d). See also [Node.get\_parent()](class_node.md#class-node-method-get-parent) and [add\_exception()](#class-raycast3d-method-add-exception).

* * *

[bool](class_bool.md#class-bool) **hit\_back\_faces** = `true` [🔗](#class-raycast3d-property-hit-back-faces)

- void **set\_hit\_back\_faces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hit\_back\_faces\_enabled**()


If `true`, the ray will hit back faces with concave polygon shapes with back face enabled or heightmap shapes.

* * *

[bool](class_bool.md#class-bool) **hit\_from\_inside** = `false` [🔗](#class-raycast3d-property-hit-from-inside)

- void **set\_hit\_from\_inside**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hit\_from\_inside\_enabled**()


If `true`, the ray will detect a hit when starting inside shapes. In this case the collision normal will be `Vector3(0, 0, 0)`. Does not affect shapes with no volume like concave polygon or heightmap.

* * *

[Vector3](class_vector3.md#class-vector3) **target\_position** = `Vector3(0, -1, 0)` [🔗](#class-raycast3d-property-target-position)

- void **set\_target\_position**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_target\_position**()


The ray's destination point, relative to this raycast's [Node3D.position](class_node3d.md#class-node3d-property-position).

* * *

## Method Descriptions

void **add\_exception**(node: [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)) [🔗](#class-raycast3d-method-add-exception)

Adds a collision exception so the ray does not report collisions with the specified `node`.

* * *

void **add\_exception\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-raycast3d-method-add-exception-rid)

Adds a collision exception so the ray does not report collisions with the specified [RID](class_rid.md#class-rid).

* * *

void **clear\_exceptions**() [🔗](#class-raycast3d-method-clear-exceptions)

Removes all collision exceptions for this ray.

* * *

void **force\_raycast\_update**() [🔗](#class-raycast3d-method-force-raycast-update)

Updates the collision information for the ray immediately, without waiting for the next `_physics_process` call. Use this method, for example, when the ray or its parent has changed state.

**Note:** [enabled](#class-raycast3d-property-enabled) does not need to be `true` for this to work.

* * *

[Object](class_object.md#class-object) **get\_collider**() const [🔗](#class-raycast3d-method-get-collider)

Returns the first object that the ray intersects, or `null` if no object is intersecting the ray (i.e. [is\_colliding()](#class-raycast3d-method-is-colliding) returns `false`).

**Note:** This object is not guaranteed to be a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d). For example, if the ray intersects a [CSGShape3D](class_csgshape3d.md#class-csgshape3d) or a [GridMap](class_gridmap.md#class-gridmap), the method will return a [CSGShape3D](class_csgshape3d.md#class-csgshape3d) or [GridMap](class_gridmap.md#class-gridmap) instance.

* * *

[RID](class_rid.md#class-rid) **get\_collider\_rid**() const [🔗](#class-raycast3d-method-get-collider-rid)

Returns the [RID](class_rid.md#class-rid) of the first object that the ray intersects, or an empty [RID](class_rid.md#class-rid) if no object is intersecting the ray (i.e. [is\_colliding()](#class-raycast3d-method-is-colliding) returns `false`).

* * *

[int](class_int.md#class-int) **get\_collider\_shape**() const [🔗](#class-raycast3d-method-get-collider-shape)

Returns the shape ID of the first object that the ray intersects, or `0` if no object is intersecting the ray (i.e. [is\_colliding()](#class-raycast3d-method-is-colliding) returns `false`).

To get the intersected shape node, for a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) target, use:

GDScriptC#

```
var target = get_collider() # A CollisionObject3D.
var shape_id = get_collider_shape() # The shape index in the collider.
var owner_id = target.shape_find_owner(shape_id) # The owner ID in the collider.
var shape = target.shape_owner_get_owner(owner_id)

```

```
var target = (CollisionObject3D)GetCollider(); // A CollisionObject3D.
var shapeId = GetColliderShape(); // The shape index in the collider.
var ownerId = target.ShapeFindOwner(shapeId); // The owner ID in the collider.
var shape = target.ShapeOwnerGetOwner(ownerId);

```

* * *

[int](class_int.md#class-int) **get\_collision\_face\_index**() const [🔗](#class-raycast3d-method-get-collision-face-index)

Returns the collision object's face index at the collision point, or `-1` if the shape intersecting the ray is not a [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d).

* * *

[bool](class_bool.md#class-bool) **get\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-raycast3d-method-get-collision-mask-value)

Returns whether or not the specified layer of the [collision\_mask](#class-raycast3d-property-collision-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_collision\_normal**() const [🔗](#class-raycast3d-method-get-collision-normal)

Returns the normal of the intersecting object's shape at the collision point, or `Vector3(0, 0, 0)` if the ray starts inside the shape and [hit\_from\_inside](#class-raycast3d-property-hit-from-inside) is `true`.

**Note:** Check that [is\_colliding()](#class-raycast3d-method-is-colliding) returns `true` before calling this method to ensure the returned normal is valid and up-to-date.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_collision\_point**() const [🔗](#class-raycast3d-method-get-collision-point)

Returns the collision point at which the ray intersects the closest object, in the global coordinate system. If [hit\_from\_inside](#class-raycast3d-property-hit-from-inside) is `true` and the ray starts inside of a collision shape, this function will return the origin point of the ray.

**Note:** Check that [is\_colliding()](#class-raycast3d-method-is-colliding) returns `true` before calling this method to ensure the returned point is valid and up-to-date.

* * *

[bool](class_bool.md#class-bool) **is\_colliding**() const [🔗](#class-raycast3d-method-is-colliding)

Returns whether any object is intersecting with the ray's vector (considering the vector length).

* * *

void **remove\_exception**(node: [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)) [🔗](#class-raycast3d-method-remove-exception)

Removes a collision exception so the ray can report collisions with the specified `node`.

* * *

void **remove\_exception\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-raycast3d-method-remove-exception-rid)

Removes a collision exception so the ray can report collisions with the specified [RID](class_rid.md#class-rid).

* * *

void **set\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-raycast3d-method-set-collision-mask-value)

Based on `value`, enables or disables the specified layer in the [collision\_mask](#class-raycast3d-property-collision-mask), given a `layer_number` between 1 and 32.

[Previous](class_raycast2d.md "RayCast2D") [Next](class_referencerect.md "ReferenceRect")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_raycast2d.md "RayCast2D") [Next](class_referencerect.md "ReferenceRect")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).