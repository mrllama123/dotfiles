---
title: PolygonOccluder3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_polygonoccluder3d.html
crawled_at: "2026-08-13T10:21:23+12:00"
content_hash: ff0ded13ee4402bd3237d29e1288eaf7f94beb858c735410f8a53acd0377a926
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PolygonOccluder3D

* * *

# PolygonOccluder3D

**Inherits:** [Occluder3D](class_occluder3d.md#class-occluder3d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Flat 2D polygon shape for use with occlusion culling in [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d).

## Description

**PolygonOccluder3D** stores a polygon shape that can be used by the engine's occlusion culling system. When an [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d) with a **PolygonOccluder3D** is selected in the editor, an editor will appear at the top of the 3D viewport so you can add/remove points. All points must be placed on the same 2D plane, which means it is not possible to create arbitrary 3D shapes with a single **PolygonOccluder3D**. To use arbitrary 3D shapes as occluders, use [ArrayOccluder3D](class_arrayoccluder3d.md#class-arrayoccluder3d) or [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d)'s baking feature instead.

See [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d)'s documentation for instructions on setting up occlusion culling.

## Tutorials

- [Occlusion culling](../tutorials/3d/occlusion_culling.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [polygon](#class-polygonoccluder3d-property-polygon) | `PackedVector2Array()` |

* * *

## Property Descriptions

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **polygon** = `PackedVector2Array()` [🔗](#class-polygonoccluder3d-property-polygon)

- void **set\_polygon**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_polygon**()


The polygon to use for occlusion culling. The polygon can be convex or concave, but it should have as few points as possible to maximize performance.

The polygon must _not_ have intersecting lines. Otherwise, triangulation will fail (with an error message printed).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

[Previous](class_pointmesh.md "PointMesh") [Next](class_polygonpathfinder.md "PolygonPathFinder")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_pointmesh.md "PointMesh") [Next](class_polygonpathfinder.md "PolygonPathFinder")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).