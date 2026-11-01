---
title: PhysicsShapeQueryParameters3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsshapequeryparameters3d.html
crawled_at: "2026-08-13T10:19:40+12:00"
content_hash: 3ae8797678f8d1df86c8c5c87a7a42730e3b68d43f4acf539eedc43c521faa88
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsShapeQueryParameters3D

* * *

# PhysicsShapeQueryParameters3D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides parameters for [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d)'s methods.

## Description

By changing various properties of this object, such as the shape, you can configure the parameters for [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d)'s methods.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collide\_with\_areas](#class-physicsshapequeryparameters3d-property-collide-with-areas) | `false` |
| [bool](class_bool.md#class-bool) | [collide\_with\_bodies](#class-physicsshapequeryparameters3d-property-collide-with-bodies) | `true` |
| [int](class_int.md#class-int) | [collision\_mask](#class-physicsshapequeryparameters3d-property-collision-mask) | `4294967295` |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [exclude](#class-physicsshapequeryparameters3d-property-exclude) | `[]` |
| [float](class_float.md#class-float) | [margin](#class-physicsshapequeryparameters3d-property-margin) | `0.0` |
| [Vector3](class_vector3.md#class-vector3) | [motion](#class-physicsshapequeryparameters3d-property-motion) | `Vector3(0, 0, 0)` |
| [Resource](class_resource.md#class-resource) | [shape](#class-physicsshapequeryparameters3d-property-shape) |  |
| [RID](class_rid.md#class-rid) | [shape\_rid](#class-physicsshapequeryparameters3d-property-shape-rid) | `RID()` |
| [Transform3D](class_transform3d.md#class-transform3d) | [transform](#class-physicsshapequeryparameters3d-property-transform) | `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collide\_with\_areas** = `false` [🔗](#class-physicsshapequeryparameters3d-property-collide-with-areas)

- void **set\_collide\_with\_areas**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_areas\_enabled**()


If `true`, the query will take [Area3D](class_area3d.md#class-area3d) s into account.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_bodies** = `true` [🔗](#class-physicsshapequeryparameters3d-property-collide-with-bodies)

- void **set\_collide\_with\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_bodies\_enabled**()


If `true`, the query will take [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) s into account.

* * *

[int](class_int.md#class-int) **collision\_mask** = `4294967295` [🔗](#class-physicsshapequeryparameters3d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **exclude** = `[]` [🔗](#class-physicsshapequeryparameters3d-property-exclude)

- void **set\_exclude**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_exclude**()


The list of object [RID](class_rid.md#class-rid) s that will be excluded from collisions. Use [CollisionObject3D.get\_rid()](class_collisionobject3d.md#class-collisionobject3d-method-get-rid) to get the [RID](class_rid.md#class-rid) associated with a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)-derived node.

**Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then assign it to the property again.

* * *

[float](class_float.md#class-float) **margin** = `0.0` [🔗](#class-physicsshapequeryparameters3d-property-margin)

- void **set\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_margin**()


The collision margin for the shape.

* * *

[Vector3](class_vector3.md#class-vector3) **motion** = `Vector3(0, 0, 0)` [🔗](#class-physicsshapequeryparameters3d-property-motion)

- void **set\_motion**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_motion**()


The motion of the shape being queried for.

* * *

[Resource](class_resource.md#class-resource) **shape** [🔗](#class-physicsshapequeryparameters3d-property-shape)

- void **set\_shape**(value: [Resource](class_resource.md#class-resource))

- [Resource](class_resource.md#class-resource) **get\_shape**()


The [Shape3D](class_shape3d.md#class-shape3d) that will be used for collision/intersection queries. This stores the actual reference which avoids the shape to be released while being used for queries, so always prefer using this over [shape\_rid](#class-physicsshapequeryparameters3d-property-shape-rid).

* * *

[RID](class_rid.md#class-rid) **shape\_rid** = `RID()` [🔗](#class-physicsshapequeryparameters3d-property-shape-rid)

- void **set\_shape\_rid**(value: [RID](class_rid.md#class-rid))

- [RID](class_rid.md#class-rid) **get\_shape\_rid**()


The queried shape's [RID](class_rid.md#class-rid) that will be used for collision/intersection queries. Use this over [shape](#class-physicsshapequeryparameters3d-property-shape) if you want to optimize for performance using the Servers API:

GDScriptC#

```
var shape_rid = PhysicsServer3D.sphere_shape_create()
var radius = 2.0
PhysicsServer3D.shape_set_data(shape_rid, radius)

var params = PhysicsShapeQueryParameters3D.new()
params.shape_rid = shape_rid

# Execute physics queries here...

# Release the shape when done with physics queries.
PhysicsServer3D.free_rid(shape_rid)

```

```
RID shapeRid = PhysicsServer3D.SphereShapeCreate();
float radius = 2.0f;
PhysicsServer3D.ShapeSetData(shapeRid, radius);

var params = new PhysicsShapeQueryParameters3D();
params.ShapeRid = shapeRid;

// Execute physics queries here...

// Release the shape when done with physics queries.
PhysicsServer3D.FreeRid(shapeRid);

```

* * *

[Transform3D](class_transform3d.md#class-transform3d) **transform** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-physicsshapequeryparameters3d-property-transform)

- void **set\_transform**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_transform**()


The queried shape's transform matrix.

[Previous](class_physicsshapequeryparameters2d.md "PhysicsShapeQueryParameters2D") [Next](class_physicstestmotionparameters2d.md "PhysicsTestMotionParameters2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsshapequeryparameters2d.md "PhysicsShapeQueryParameters2D") [Next](class_physicstestmotionparameters2d.md "PhysicsTestMotionParameters2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).