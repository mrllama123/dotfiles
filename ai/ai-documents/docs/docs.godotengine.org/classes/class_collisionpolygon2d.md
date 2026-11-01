---
title: CollisionPolygon2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_collisionpolygon2d.html
crawled_at: "2026-08-13T10:32:16+12:00"
content_hash: 812731f28a39896519292df78665117af6c21d014e57173c9a4c53d4d67ee87f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CollisionPolygon2D

* * *

# CollisionPolygon2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node that provides a polygon shape to a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) parent.

## Description

A node that provides a polygon shape to a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) parent and allows to edit it. The polygon can be concave or convex. This can give a detection shape to an [Area2D](class_area2d.md#class-area2d), turn [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) into a solid object, or give a hollow shape to a [StaticBody2D](class_staticbody2d.md#class-staticbody2d).

**Warning:** A non-uniformly scaled **CollisionPolygon2D** will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its polygon instead.

## Properties

|     |     |     |
| --- | --- | --- |
| [BuildMode](#enum-collisionpolygon2d-buildmode) | [build\_mode](#class-collisionpolygon2d-property-build-mode) | `0` |
| [bool](class_bool.md#class-bool) | [disabled](#class-collisionpolygon2d-property-disabled) | `false` |
| [bool](class_bool.md#class-bool) | [one\_way\_collision](#class-collisionpolygon2d-property-one-way-collision) | `false` |
| [float](class_float.md#class-float) | [one\_way\_collision\_margin](#class-collisionpolygon2d-property-one-way-collision-margin) | `1.0` |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [polygon](#class-collisionpolygon2d-property-polygon) | `PackedVector2Array()` |

* * *

## Enumerations

enum **BuildMode**: [🔗](#enum-collisionpolygon2d-buildmode)

[BuildMode](#enum-collisionpolygon2d-buildmode) **BUILD\_SOLIDS** = `0`

Collisions will include the polygon and its contained area. In this mode the node has the same effect as several [ConvexPolygonShape2D](class_convexpolygonshape2d.md#class-convexpolygonshape2d) nodes, one for each convex shape in the convex decomposition of the polygon (but without the overhead of multiple nodes).

[BuildMode](#enum-collisionpolygon2d-buildmode) **BUILD\_SEGMENTS** = `1`

Collisions will only include the polygon edges. In this mode the node has the same effect as a single [ConcavePolygonShape2D](class_concavepolygonshape2d.md#class-concavepolygonshape2d) made of segments, with the restriction that each segment (after the first one) starts where the previous one ends, and the last one ends where the first one starts (forming a closed but hollow polygon).

* * *

## Property Descriptions

[BuildMode](#enum-collisionpolygon2d-buildmode) **build\_mode** = `0` [🔗](#class-collisionpolygon2d-property-build-mode)

- void **set\_build\_mode**(value: [BuildMode](#enum-collisionpolygon2d-buildmode))

- [BuildMode](#enum-collisionpolygon2d-buildmode) **get\_build\_mode**()


Collision build mode.

* * *

[bool](class_bool.md#class-bool) **disabled** = `false` [🔗](#class-collisionpolygon2d-property-disabled)

- void **set\_disabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_disabled**()


If `true`, no collisions will be detected. This property should be changed with [Object.set\_deferred()](class_object.md#class-object-method-set-deferred).

* * *

[bool](class_bool.md#class-bool) **one\_way\_collision** = `false` [🔗](#class-collisionpolygon2d-property-one-way-collision)

- void **set\_one\_way\_collision**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_one\_way\_collision\_enabled**()


If `true`, only edges that face up, relative to **CollisionPolygon2D**'s rotation, will collide with other objects.

**Note:** This property has no effect if this **CollisionPolygon2D** is a child of an [Area2D](class_area2d.md#class-area2d) node.

* * *

[float](class_float.md#class-float) **one\_way\_collision\_margin** = `1.0` [🔗](#class-collisionpolygon2d-property-one-way-collision-margin)

- void **set\_one\_way\_collision\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_one\_way\_collision\_margin**()


The margin used for one-way collision (in pixels). Higher values will make the shape thicker, and work better for colliders that enter the polygon at a high velocity.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **polygon** = `PackedVector2Array()` [🔗](#class-collisionpolygon2d-property-polygon)

- void **set\_polygon**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_polygon**()


The polygon's list of vertices. Each point will be connected to the next, and the final point will be connected to the first.

**Note:** The returned vertices are in the local coordinate space of the given **CollisionPolygon2D**.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

[Previous](class_collisionobject3d.md "CollisionObject3D") [Next](class_collisionpolygon3d.md "CollisionPolygon3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_collisionobject3d.md "CollisionObject3D") [Next](class_collisionpolygon3d.md "CollisionPolygon3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).