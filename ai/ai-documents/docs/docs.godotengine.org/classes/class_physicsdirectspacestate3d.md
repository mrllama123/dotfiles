---
title: PhysicsDirectSpaceState3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsdirectspacestate3d.html
crawled_at: "2026-08-13T10:36:55+12:00"
content_hash: 44054089a2cc1771cf1b6ce8167d06364cc369219c1f0472da9724f0eec2d857
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsDirectSpaceState3D

* * *

# PhysicsDirectSpaceState3D

**Inherits:** [Object](class_object.md#class-object)

**Inherited By:** [PhysicsDirectSpaceState3DExtension](class_physicsdirectspacestate3dextension.md#class-physicsdirectspacestate3dextension)

Provides direct access to a physics space in the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d).

## Description

Provides direct access to a physics space in the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d). It's used mainly to do queries against objects and areas residing in a given space.

**Note:** This class is not meant to be instantiated directly. Use [World3D.direct\_space\_state](class_world3d.md#class-world3d-property-direct-space-state) to get the world's physics 3D space state.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Ray-casting](../tutorials/physics/ray-casting.md)


## Methods

|     |     |
| --- | --- |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [cast\_motion](#class-physicsdirectspacestate3d-method-cast-motion)(parameters: [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d)) |
| [Array](class_array.md#class-array)\[ [Vector3](class_vector3.md#class-vector3)\] | [collide\_shape](#class-physicsdirectspacestate3d-method-collide-shape)(parameters: [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d), max\_results: [int](class_int.md#class-int) = 32) |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_rest\_info](#class-physicsdirectspacestate3d-method-get-rest-info)(parameters: [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d)) |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [intersect\_point](#class-physicsdirectspacestate3d-method-intersect-point)(parameters: [PhysicsPointQueryParameters3D](class_physicspointqueryparameters3d.md#class-physicspointqueryparameters3d), max\_results: [int](class_int.md#class-int) = 32) |
| [Dictionary](class_dictionary.md#class-dictionary) | [intersect\_ray](#class-physicsdirectspacestate3d-method-intersect-ray)(parameters: [PhysicsRayQueryParameters3D](class_physicsrayqueryparameters3d.md#class-physicsrayqueryparameters3d)) |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [intersect\_shape](#class-physicsdirectspacestate3d-method-intersect-shape)(parameters: [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d), max\_results: [int](class_int.md#class-int) = 32) |

* * *

## Method Descriptions

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **cast\_motion**(parameters: [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d)) [🔗](#class-physicsdirectspacestate3d-method-cast-motion)

Checks how far a [Shape3D](class_shape3d.md#class-shape3d) can move without colliding. All the parameters for the query, including the shape and the motion, are supplied through a [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d) object.

Returns an array with the safe and unsafe proportions (between 0 and 1) of the motion. The safe proportion is the maximum fraction of the motion that can be made without a collision. The unsafe proportion is the minimum fraction of the distance that must be moved for a collision. If no collision is detected a result of `[1.0, 1.0]` will be returned.

**Note:** Any [Shape3D](class_shape3d.md#class-shape3d) s that the shape is already colliding with e.g. inside of, will be ignored. Use [collide\_shape()](#class-physicsdirectspacestate3d-method-collide-shape) to determine the [Shape3D](class_shape3d.md#class-shape3d) s that the shape is already colliding with.

* * *

[Array](class_array.md#class-array)\[ [Vector3](class_vector3.md#class-vector3)\] **collide\_shape**(parameters: [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d), max\_results: [int](class_int.md#class-int) = 32) [🔗](#class-physicsdirectspacestate3d-method-collide-shape)

Checks the intersections of a shape, given through a [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d) object, against the space. The resulting array contains a list of points where the shape intersects another. Like with [intersect\_shape()](#class-physicsdirectspacestate3d-method-intersect-shape), the number of returned results can be limited to save processing time.

Returned points are a list of pairs of contact points. For each pair the first one is in the shape passed in [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d) object, second one is in the collided shape from the physics space.

**Note:** This method does not take into account the `motion` property of the object.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_rest\_info**(parameters: [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d)) [🔗](#class-physicsdirectspacestate3d-method-get-rest-info)

Checks the intersections of a shape, given through a [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d) object, against the space. If it collides with more than one shape, the nearest one is selected. The returned object is a dictionary containing the following fields:

`collider_id`: The colliding object's ID.

`linear_velocity`: The colliding object's velocity [Vector3](class_vector3.md#class-vector3). If the object is an [Area3D](class_area3d.md#class-area3d), the result is `(0, 0, 0)`.

`normal`: The collision normal of the query shape at the intersection point, pointing away from the intersecting object.

`point`: The intersection point.

`rid`: The intersecting object's [RID](class_rid.md#class-rid).

`shape`: The shape index of the colliding shape.

If the shape did not intersect anything, then an empty dictionary is returned instead.

**Note:** This method does not take into account the `motion` property of the object.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **intersect\_point**(parameters: [PhysicsPointQueryParameters3D](class_physicspointqueryparameters3d.md#class-physicspointqueryparameters3d), max\_results: [int](class_int.md#class-int) = 32) [🔗](#class-physicsdirectspacestate3d-method-intersect-point)

Checks whether a point is inside any solid shape. Position and other parameters are defined through [PhysicsPointQueryParameters3D](class_physicspointqueryparameters3d.md#class-physicspointqueryparameters3d). The shapes the point is inside of are returned in an array containing dictionaries with the following fields:

`collider`: The colliding object.

`collider_id`: The colliding object's ID.

`rid`: The intersecting object's [RID](class_rid.md#class-rid).

`shape`: The shape index of the colliding shape.

The number of intersections can be limited with the `max_results` parameter, to reduce the processing time.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **intersect\_ray**(parameters: [PhysicsRayQueryParameters3D](class_physicsrayqueryparameters3d.md#class-physicsrayqueryparameters3d)) [🔗](#class-physicsdirectspacestate3d-method-intersect-ray)

Intersects a ray in a given space. Ray position and other parameters are defined through [PhysicsRayQueryParameters3D](class_physicsrayqueryparameters3d.md#class-physicsrayqueryparameters3d). The returned object is a dictionary with the following fields:

`collider`: The colliding object.

`collider_id`: The colliding object's ID.

`normal`: The object's surface normal at the intersection point, or `Vector3(0, 0, 0)` if the ray starts inside the shape and [PhysicsRayQueryParameters3D.hit\_from\_inside](class_physicsrayqueryparameters3d.md#class-physicsrayqueryparameters3d-property-hit-from-inside) is `true`.

`position`: The intersection point.

`face_index`: The face index at the intersection point.

**Note:** Returns a valid number only if the intersected shape is a [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d). Otherwise, `-1` is returned.

`rid`: The intersecting object's [RID](class_rid.md#class-rid).

`shape`: The shape index of the colliding shape.

If the ray did not intersect anything, then an empty dictionary is returned instead.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **intersect\_shape**(parameters: [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d), max\_results: [int](class_int.md#class-int) = 32) [🔗](#class-physicsdirectspacestate3d-method-intersect-shape)

Checks the intersections of a shape, given through a [PhysicsShapeQueryParameters3D](class_physicsshapequeryparameters3d.md#class-physicsshapequeryparameters3d) object, against the space. The intersected shapes are returned in an array containing dictionaries with the following fields:

`collider`: The colliding object.

`collider_id`: The colliding object's ID.

`rid`: The intersecting object's [RID](class_rid.md#class-rid).

`shape`: The shape index of the colliding shape.

The number of intersections can be limited with the `max_results` parameter, to reduce the processing time.

**Note:** This method does not take into account the `motion` property of the object.

[Previous](class_physicsdirectspacestate2dextension.md "PhysicsDirectSpaceState2DExtension") [Next](class_physicsdirectspacestate3dextension.md "PhysicsDirectSpaceState3DExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsdirectspacestate2dextension.md "PhysicsDirectSpaceState2DExtension") [Next](class_physicsdirectspacestate3dextension.md "PhysicsDirectSpaceState3DExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).