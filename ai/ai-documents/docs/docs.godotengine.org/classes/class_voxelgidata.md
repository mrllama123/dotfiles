---
title: VoxelGIData — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_voxelgidata.html
crawled_at: "2026-08-13T10:35:41+12:00"
content_hash: 62c65a5f268e061052292335cbaf7e86f8ddfc10f23ca53ad7f26c795109c207
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VoxelGIData

* * *

# VoxelGIData

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Contains baked voxel global illumination data for use in a [VoxelGI](class_voxelgi.md#class-voxelgi) node.

## Description

**VoxelGIData** contains baked voxel global illumination for use in a [VoxelGI](class_voxelgi.md#class-voxelgi) node. **VoxelGIData** also offers several properties to adjust the final appearance of the global illumination. These properties can be adjusted at run-time without having to bake the [VoxelGI](class_voxelgi.md#class-voxelgi) node again.

**Note:** To prevent text-based scene files ( `.tscn`) from growing too much and becoming slow to load and save, always save **VoxelGIData** to an external binary resource file ( `.res`) instead of embedding it within the scene. This can be done by clicking the dropdown arrow next to the **VoxelGIData** resource, choosing **Edit**, clicking the floppy disk icon at the top of the Inspector then choosing **Save As...**.

## Tutorials

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [bias](#class-voxelgidata-property-bias) | `1.5` |
| [float](class_float.md#class-float) | [dynamic\_range](#class-voxelgidata-property-dynamic-range) | `2.0` |
| [float](class_float.md#class-float) | [energy](#class-voxelgidata-property-energy) | `1.0` |
| [bool](class_bool.md#class-bool) | [interior](#class-voxelgidata-property-interior) | `false` |
| [float](class_float.md#class-float) | [normal\_bias](#class-voxelgidata-property-normal-bias) | `0.0` |
| [float](class_float.md#class-float) | [propagation](#class-voxelgidata-property-propagation) | `0.5` |
| [bool](class_bool.md#class-bool) | [use\_two\_bounces](#class-voxelgidata-property-use-two-bounces) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [allocate](#class-voxelgidata-method-allocate)(to\_cell\_xform: [Transform3D](class_transform3d.md#class-transform3d), aabb: [AABB](class_aabb.md#class-aabb), octree\_size: [Vector3](class_vector3.md#class-vector3), octree\_cells: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), data\_cells: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), distance\_field: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), level\_counts: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| [AABB](class_aabb.md#class-aabb) | [get\_bounds](#class-voxelgidata-method-get-bounds)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [get\_data\_cells](#class-voxelgidata-method-get-data-cells)() const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_level\_counts](#class-voxelgidata-method-get-level-counts)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [get\_octree\_cells](#class-voxelgidata-method-get-octree-cells)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_octree\_size](#class-voxelgidata-method-get-octree-size)() const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_to\_cell\_xform](#class-voxelgidata-method-get-to-cell-xform)() const |

* * *

## Property Descriptions

[float](class_float.md#class-float) **bias** = `1.5` [🔗](#class-voxelgidata-property-bias)

- void **set\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bias**()


The normal bias to use for indirect lighting and reflections. Higher values reduce self-reflections visible in non-rough materials, at the cost of more visible light leaking and flatter-looking indirect lighting. To prioritize hiding self-reflections over lighting quality, set [bias](#class-voxelgidata-property-bias) to `0.0` and [normal\_bias](#class-voxelgidata-property-normal-bias) to a value between `1.0` and `2.0`.

* * *

[float](class_float.md#class-float) **dynamic\_range** = `2.0` [🔗](#class-voxelgidata-property-dynamic-range)

- void **set\_dynamic\_range**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_dynamic\_range**()


The dynamic range to use ( `1.0` represents a low dynamic range scene brightness). Higher values can be used to provide brighter indirect lighting, at the cost of more visible color banding in dark areas (both in indirect lighting and reflections). To avoid color banding, it's recommended to use the lowest value that does not result in visible light clipping.

* * *

[float](class_float.md#class-float) **energy** = `1.0` [🔗](#class-voxelgidata-property-energy)

- void **set\_energy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_energy**()


The energy of the indirect lighting and reflections produced by the [VoxelGI](class_voxelgi.md#class-voxelgi) node. Higher values result in brighter indirect lighting. If indirect lighting looks too flat, try decreasing [propagation](#class-voxelgidata-property-propagation) while increasing [energy](#class-voxelgidata-property-energy) at the same time. See also [use\_two\_bounces](#class-voxelgidata-property-use-two-bounces) which influences the indirect lighting's effective brightness.

* * *

[bool](class_bool.md#class-bool) **interior** = `false` [🔗](#class-voxelgidata-property-interior)

- void **set\_interior**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_interior**()


If `true`, [Environment](class_environment.md#class-environment) lighting is ignored by the [VoxelGI](class_voxelgi.md#class-voxelgi) node. If `false`, [Environment](class_environment.md#class-environment) lighting is taken into account by the [VoxelGI](class_voxelgi.md#class-voxelgi) node. [Environment](class_environment.md#class-environment) lighting updates in real-time, which means it can be changed without having to bake the [VoxelGI](class_voxelgi.md#class-voxelgi) node again.

* * *

[float](class_float.md#class-float) **normal\_bias** = `0.0` [🔗](#class-voxelgidata-property-normal-bias)

- void **set\_normal\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_normal\_bias**()


The normal bias to use for indirect lighting and reflections. Higher values reduce self-reflections visible in non-rough materials, at the cost of more visible light leaking and flatter-looking indirect lighting. See also [bias](#class-voxelgidata-property-bias). To prioritize hiding self-reflections over lighting quality, set [bias](#class-voxelgidata-property-bias) to `0.0` and [normal\_bias](#class-voxelgidata-property-normal-bias) to a value between `1.0` and `2.0`.

* * *

[float](class_float.md#class-float) **propagation** = `0.5` [🔗](#class-voxelgidata-property-propagation)

- void **set\_propagation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_propagation**()


The multiplier to use when light bounces off a surface. Higher values result in brighter indirect lighting. If indirect lighting looks too flat, try decreasing [propagation](#class-voxelgidata-property-propagation) while increasing [energy](#class-voxelgidata-property-energy) at the same time. See also [use\_two\_bounces](#class-voxelgidata-property-use-two-bounces) which influences the indirect lighting's effective brightness.

* * *

[bool](class_bool.md#class-bool) **use\_two\_bounces** = `true` [🔗](#class-voxelgidata-property-use-two-bounces)

- void **set\_use\_two\_bounces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_two\_bounces**()


If `true`, performs two bounces of indirect lighting instead of one. This makes indirect lighting look more natural and brighter at a small performance cost. The second bounce is also visible in reflections. If the scene appears too bright after enabling [use\_two\_bounces](#class-voxelgidata-property-use-two-bounces), adjust [propagation](#class-voxelgidata-property-propagation) and [energy](#class-voxelgidata-property-energy).

* * *

## Method Descriptions

void **allocate**(to\_cell\_xform: [Transform3D](class_transform3d.md#class-transform3d), aabb: [AABB](class_aabb.md#class-aabb), octree\_size: [Vector3](class_vector3.md#class-vector3), octree\_cells: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), data\_cells: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), distance\_field: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), level\_counts: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-voxelgidata-method-allocate)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[AABB](class_aabb.md#class-aabb) **get\_bounds**() const [🔗](#class-voxelgidata-method-get-bounds)

Returns the bounds of the baked voxel data as an [AABB](class_aabb.md#class-aabb), which should match [VoxelGI.size](class_voxelgi.md#class-voxelgi-property-size) after being baked (which only contains the size as a [Vector3](class_vector3.md#class-vector3)).

**Note:** If the size was modified without baking the VoxelGI data, then the value of [get\_bounds()](#class-voxelgidata-method-get-bounds) and [VoxelGI.size](class_voxelgi.md#class-voxelgi-property-size) will not match.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_data\_cells**() const [🔗](#class-voxelgidata-method-get-data-cells)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_level\_counts**() const [🔗](#class-voxelgidata-method-get-level-counts)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_octree\_cells**() const [🔗](#class-voxelgidata-method-get-octree-cells)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **get\_octree\_size**() const [🔗](#class-voxelgidata-method-get-octree-size)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_to\_cell\_xform**() const [🔗](#class-voxelgidata-method-get-to-cell-xform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_visualshadernodeworldpositionfromdepth.md "VisualShaderNodeWorldPositionFromDepth") [Next](class_world2d.md "World2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeworldpositionfromdepth.md "VisualShaderNodeWorldPositionFromDepth") [Next](class_world2d.md "World2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).