---
title: Occluder3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_occluder3d.html
crawled_at: "2026-08-13T10:34:44+12:00"
content_hash: 7a097fef0e81a5aed89dc1a50aeedb8392b8ee398996bd202efa81ac2bb18edc
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Occluder3D

* * *

# Occluder3D

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [ArrayOccluder3D](class_arrayoccluder3d.md#class-arrayoccluder3d), [BoxOccluder3D](class_boxoccluder3d.md#class-boxoccluder3d), [PolygonOccluder3D](class_polygonoccluder3d.md#class-polygonoccluder3d), [QuadOccluder3D](class_quadoccluder3d.md#class-quadoccluder3d), [SphereOccluder3D](class_sphereoccluder3d.md#class-sphereoccluder3d)

Occluder shape resource for use with occlusion culling in [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d).

## Description

**Occluder3D** stores an occluder shape that can be used by the engine's occlusion culling system.

See [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d)'s documentation for instructions on setting up occlusion culling.

## Tutorials

- [Occlusion culling](../tutorials/3d/occlusion_culling.md)


## Methods

|     |     |
| --- | --- |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_indices](#class-occluder3d-method-get-indices)() const |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [get\_vertices](#class-occluder3d-method-get-vertices)() const |

* * *

## Method Descriptions

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_indices**() const [🔗](#class-occluder3d-method-get-indices)

Returns the occluder shape's vertex indices.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_vertices**() const [🔗](#class-occluder3d-method-get-vertices)

Returns the occluder shape's vertex positions.

[Previous](class_noisetexture3d.md "NoiseTexture3D") [Next](class_occluderpolygon2d.md "OccluderPolygon2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_noisetexture3d.md "NoiseTexture3D") [Next](class_occluderpolygon2d.md "OccluderPolygon2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).