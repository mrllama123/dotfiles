---
title: ArrayOccluder3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_arrayoccluder3d.html
crawled_at: "2026-08-13T10:36:59+12:00"
content_hash: d22cf90caa26612465c21dfab030178e4292883bb37041cb02ad1f63f7d3d8e2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ArrayOccluder3D

* * *

# ArrayOccluder3D

**Inherits:** [Occluder3D](class_occluder3d.md#class-occluder3d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

3D polygon shape for use with occlusion culling in [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d).

## Description

**ArrayOccluder3D** stores an arbitrary 3D polygon shape that can be used by the engine's occlusion culling system. This is analogous to [ArrayMesh](class_arraymesh.md#class-arraymesh), but for occluders.

See [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d)'s documentation for instructions on setting up occlusion culling.

## Tutorials

- [Occlusion culling](../tutorials/3d/occlusion_culling.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [indices](#class-arrayoccluder3d-property-indices) | `PackedInt32Array()` |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [vertices](#class-arrayoccluder3d-property-vertices) | `PackedVector3Array()` |

## Methods

|     |     |
| --- | --- |
| void | [set\_arrays](#class-arrayoccluder3d-method-set-arrays)(vertices: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), indices: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |

* * *

## Property Descriptions

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **indices** = `PackedInt32Array()` [🔗](#class-arrayoccluder3d-property-indices)

- void **set\_indices**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_indices**()


The occluder's index position. Indices determine which points from the [vertices](#class-arrayoccluder3d-property-vertices) array should be drawn, and in which order.

**Note:** The occluder is always updated after setting this value. If creating occluders procedurally, consider using [set\_arrays()](#class-arrayoccluder3d-method-set-arrays) instead to avoid updating the occluder twice when it's created.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **vertices** = `PackedVector3Array()` [🔗](#class-arrayoccluder3d-property-vertices)

- void **set\_vertices**(value: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array))

- [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_vertices**()


The occluder's vertex positions in local 3D coordinates.

**Note:** The occluder is always updated after setting this value. If creating occluders procedurally, consider using [set\_arrays()](#class-arrayoccluder3d-method-set-arrays) instead to avoid updating the occluder twice when it's created.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) for more details.

* * *

## Method Descriptions

void **set\_arrays**(vertices: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), indices: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-arrayoccluder3d-method-set-arrays)

Sets [indices](#class-arrayoccluder3d-property-indices) and [vertices](#class-arrayoccluder3d-property-vertices), while updating the final occluder only once after both values are set.

[Previous](class_arraymesh.md "ArrayMesh") [Next](class_atlastexture.md "AtlasTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_arraymesh.md "ArrayMesh") [Next](class_atlastexture.md "AtlasTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).