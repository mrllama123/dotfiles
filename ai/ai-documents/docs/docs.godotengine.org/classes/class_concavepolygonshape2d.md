---
title: ConcavePolygonShape2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_concavepolygonshape2d.html
crawled_at: "2026-08-13T10:30:56+12:00"
content_hash: 4570ffd94d2a5799dcb634d8bc701ba4119424d487fca761119836f8977ce543
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ConcavePolygonShape2D

* * *

# ConcavePolygonShape2D

**Inherits:** [Shape2D](class_shape2d.md#class-shape2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 2D polyline shape used for physics collision.

## Description

A 2D polyline shape, intended for use in physics. Used internally in [CollisionPolygon2D](class_collisionpolygon2d.md#class-collisionpolygon2d) when it's in [CollisionPolygon2D.BUILD\_SEGMENTS](class_collisionpolygon2d.md#class-collisionpolygon2d-constant-build-segments) mode.

Being just a collection of interconnected line segments, **ConcavePolygonShape2D** is the most freely configurable single 2D shape. It can be used to form polygons of any nature, or even shapes that don't enclose an area. However, **ConcavePolygonShape2D** is _hollow_ even if the interconnected line segments do enclose an area, which often makes it unsuitable for physics or detection.

**Note:** When used for collision, **ConcavePolygonShape2D** is intended to work with static [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) nodes like [StaticBody2D](class_staticbody2d.md#class-staticbody2d) and will likely not behave well for [CharacterBody2D](class_characterbody2d.md#class-characterbody2d) s or [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d) s in a mode other than Static.

**Warning:** Physics bodies that are small have a chance to clip through this shape when moving fast. This happens because on one frame, the physics body may be on the "outside" of the shape, and on the next frame it may be "inside" it. **ConcavePolygonShape2D** is hollow, so it won't detect a collision.

**Performance:** Due to its complexity, **ConcavePolygonShape2D** is the slowest 2D collision shape to check collisions against. Its use should generally be limited to level geometry. If the polyline is closed, [CollisionPolygon2D](class_collisionpolygon2d.md#class-collisionpolygon2d)'s [CollisionPolygon2D.BUILD\_SOLIDS](class_collisionpolygon2d.md#class-collisionpolygon2d-constant-build-solids) mode can be used, which decomposes the polygon into convex ones; see [ConvexPolygonShape2D](class_convexpolygonshape2d.md#class-convexpolygonshape2d)'s documentation for instructions.

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [segments](#class-concavepolygonshape2d-property-segments) | `PackedVector2Array()` |

* * *

## Property Descriptions

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **segments** = `PackedVector2Array()` [🔗](#class-concavepolygonshape2d-property-segments)

- void **set\_segments**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_segments**()


The array of points that make up the **ConcavePolygonShape2D**'s line segments. The array (of length divisible by two) is naturally divided into pairs (one pair for each segment); each pair consists of the starting point of a segment and the endpoint of a segment.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

[Previous](class_compressedtexturelayered.md "CompressedTextureLayered") [Next](class_concavepolygonshape3d.md "ConcavePolygonShape3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_compressedtexturelayered.md "CompressedTextureLayered") [Next](class_concavepolygonshape3d.md "ConcavePolygonShape3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).