---
title: PhysicsShapeQueryParameters2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsshapequeryparameters2d.html
crawled_at: "2026-08-13T10:35:54+12:00"
content_hash: 829271e985b093003425664c47f4d388016bf5670dcbf70f3d3888a074065691
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsShapeQueryParameters2D

* * *

# PhysicsShapeQueryParameters2D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides parameters for [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d)'s methods.

## Description

By changing various properties of this object, such as the shape, you can configure the parameters for [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d)'s methods.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collide\_with\_areas](#class-physicsshapequeryparameters2d-property-collide-with-areas) | `false` |
| [bool](class_bool.md#class-bool) | [collide\_with\_bodies](#class-physicsshapequeryparameters2d-property-collide-with-bodies) | `true` |
| [int](class_int.md#class-int) | [collision\_mask](#class-physicsshapequeryparameters2d-property-collision-mask) | `4294967295` |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [exclude](#class-physicsshapequeryparameters2d-property-exclude) | `[]` |
| [float](class_float.md#class-float) | [margin](#class-physicsshapequeryparameters2d-property-margin) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [motion](#class-physicsshapequeryparameters2d-property-motion) | `Vector2(0, 0)` |
| [Resource](class_resource.md#class-resource) | [shape](#class-physicsshapequeryparameters2d-property-shape) |  |
| [RID](class_rid.md#class-rid) | [shape\_rid](#class-physicsshapequeryparameters2d-property-shape-rid) | `RID()` |
| [Transform2D](class_transform2d.md#class-transform2d) | [transform](#class-physicsshapequeryparameters2d-property-transform) | `Transform2D(1, 0, 0, 1, 0, 0)` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collide\_with\_areas** = `false` [🔗](#class-physicsshapequeryparameters2d-property-collide-with-areas)

- void **set\_collide\_with\_areas**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_areas\_enabled**()


If `true`, the query will take [Area2D](class_area2d.md#class-area2d) s into account.

* * *

[bool](class_bool.md#class-bool) **collide\_with\_bodies** = `true` [🔗](#class-physicsshapequeryparameters2d-property-collide-with-bodies)

- void **set\_collide\_with\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collide\_with\_bodies\_enabled**()


If `true`, the query will take [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) s into account.

* * *

[int](class_int.md#class-int) **collision\_mask** = `4294967295` [🔗](#class-physicsshapequeryparameters2d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **exclude** = `[]` [🔗](#class-physicsshapequeryparameters2d-property-exclude)

- void **set\_exclude**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_exclude**()


The list of object [RID](class_rid.md#class-rid) s that will be excluded from collisions. Use [CollisionObject2D.get\_rid()](class_collisionobject2d.md#class-collisionobject2d-method-get-rid) to get the [RID](class_rid.md#class-rid) associated with a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d)-derived node.

**Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then assign it to the property again.

* * *

[float](class_float.md#class-float) **margin** = `0.0` [🔗](#class-physicsshapequeryparameters2d-property-margin)

- void **set\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_margin**()


The collision margin for the shape.

* * *

[Vector2](class_vector2.md#class-vector2) **motion** = `Vector2(0, 0)` [🔗](#class-physicsshapequeryparameters2d-property-motion)

- void **set\_motion**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_motion**()


The motion of the shape being queried for.

* * *

[Resource](class_resource.md#class-resource) **shape** [🔗](#class-physicsshapequeryparameters2d-property-shape)

- void **set\_shape**(value: [Resource](class_resource.md#class-resource))

- [Resource](class_resource.md#class-resource) **get\_shape**()


The [Shape2D](class_shape2d.md#class-shape2d) that will be used for collision/intersection queries. This stores the actual reference which avoids the shape to be released while being used for queries, so always prefer using this over [shape\_rid](#class-physicsshapequeryparameters2d-property-shape-rid).

* * *

[RID](class_rid.md#class-rid) **shape\_rid** = `RID()` [🔗](#class-physicsshapequeryparameters2d-property-shape-rid)

- void **set\_shape\_rid**(value: [RID](class_rid.md#class-rid))

- [RID](class_rid.md#class-rid) **get\_shape\_rid**()


The queried shape's [RID](class_rid.md#class-rid) that will be used for collision/intersection queries. Use this over [shape](#class-physicsshapequeryparameters2d-property-shape) if you want to optimize for performance using the Servers API:

GDScriptC#

```
var shape_rid = PhysicsServer2D.circle_shape_create()
var radius = 64
PhysicsServer2D.shape_set_data(shape_rid, radius)

var params = PhysicsShapeQueryParameters2D.new()
params.shape_rid = shape_rid

# Execute physics queries here...

# Release the shape when done with physics queries.
PhysicsServer2D.free_rid(shape_rid)

```

```
RID shapeRid = PhysicsServer2D.CircleShapeCreate();
int radius = 64;
PhysicsServer2D.ShapeSetData(shapeRid, radius);

var params = new PhysicsShapeQueryParameters2D();
params.ShapeRid = shapeRid;

// Execute physics queries here...

// Release the shape when done with physics queries.
PhysicsServer2D.FreeRid(shapeRid);

```

* * *

[Transform2D](class_transform2d.md#class-transform2d) **transform** = `Transform2D(1, 0, 0, 1, 0, 0)` [🔗](#class-physicsshapequeryparameters2d-property-transform)

- void **set\_transform**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_transform**()


The queried shape's transform matrix.

[Previous](class_physicsserver3drenderingserverhandler.md "PhysicsServer3DRenderingServerHandler") [Next](class_physicsshapequeryparameters3d.md "PhysicsShapeQueryParameters3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsserver3drenderingserverhandler.md "PhysicsServer3DRenderingServerHandler") [Next](class_physicsshapequeryparameters3d.md "PhysicsShapeQueryParameters3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).