---
title: QuadOccluder3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_quadoccluder3d.html
crawled_at: "2026-08-13T10:23:11+12:00"
content_hash: e22f086c1dc494f101b8eff9542fad5e2dfa14b671c0820d25f4c9a67d8d6f51
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - QuadOccluder3D

* * *

# QuadOccluder3D

**Inherits:** [Occluder3D](class_occluder3d.md#class-occluder3d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Flat plane shape for use with occlusion culling in [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d).

## Description

**QuadOccluder3D** stores a flat plane shape that can be used by the engine's occlusion culling system. See also [PolygonOccluder3D](class_polygonoccluder3d.md#class-polygonoccluder3d) if you need to customize the quad's shape.

See [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d)'s documentation for instructions on setting up occlusion culling.

## Tutorials

- [Occlusion culling](../tutorials/3d/occlusion_culling.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [size](#class-quadoccluder3d-property-size) | `Vector2(1, 1)` |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **size** = `Vector2(1, 1)` [🔗](#class-quadoccluder3d-property-size)

- void **set\_size**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_size**()


The quad's size in 3D units.

[Previous](class_quadmesh.md "QuadMesh") [Next](class_rdshaderfile.md "RDShaderFile")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_quadmesh.md "QuadMesh") [Next](class_rdshaderfile.md "RDShaderFile")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).