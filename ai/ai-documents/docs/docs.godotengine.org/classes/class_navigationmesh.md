---
title: NavigationMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationmesh.html
crawled_at: "2026-08-13T10:20:25+12:00"
content_hash: c208e43a82072821942f35fce1a2607ad44a030722d4e6076d0ea13754ed9e16
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationMesh

* * *

# NavigationMesh

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A navigation mesh that defines traversable areas and obstacles.

## Description

A navigation mesh is a collection of polygons that define which areas of an environment are traversable to aid agents in pathfinding through complicated spaces.

## Tutorials

- [Using NavigationMeshes](../tutorials/navigation/navigation_using_navigationmeshes.md)

- [3D Navigation Demo](https://godotengine.org/asset-library/asset/2743)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [agent\_height](#class-navigationmesh-property-agent-height) | `1.5` |
| [float](class_float.md#class-float) | [agent\_max\_climb](#class-navigationmesh-property-agent-max-climb) | `0.25` |
| [float](class_float.md#class-float) | [agent\_max\_slope](#class-navigationmesh-property-agent-max-slope) | `45.0` |
| [float](class_float.md#class-float) | [agent\_radius](#class-navigationmesh-property-agent-radius) | `0.5` |
| [float](class_float.md#class-float) | [border\_size](#class-navigationmesh-property-border-size) | `0.0` |
| [float](class_float.md#class-float) | [cell\_height](#class-navigationmesh-property-cell-height) | `0.25` |
| [float](class_float.md#class-float) | [cell\_size](#class-navigationmesh-property-cell-size) | `0.25` |
| [float](class_float.md#class-float) | [detail\_sample\_distance](#class-navigationmesh-property-detail-sample-distance) | `6.0` |
| [float](class_float.md#class-float) | [detail\_sample\_max\_error](#class-navigationmesh-property-detail-sample-max-error) | `1.0` |
| [float](class_float.md#class-float) | [edge\_max\_error](#class-navigationmesh-property-edge-max-error) | `1.3` |
| [float](class_float.md#class-float) | [edge\_max\_length](#class-navigationmesh-property-edge-max-length) | `0.0` |
| [AABB](class_aabb.md#class-aabb) | [filter\_baking\_aabb](#class-navigationmesh-property-filter-baking-aabb) | `AABB(0, 0, 0, 0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [filter\_baking\_aabb\_offset](#class-navigationmesh-property-filter-baking-aabb-offset) | `Vector3(0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [filter\_ledge\_spans](#class-navigationmesh-property-filter-ledge-spans) | `false` |
| [bool](class_bool.md#class-bool) | [filter\_low\_hanging\_obstacles](#class-navigationmesh-property-filter-low-hanging-obstacles) | `false` |
| [bool](class_bool.md#class-bool) | [filter\_walkable\_low\_height\_spans](#class-navigationmesh-property-filter-walkable-low-height-spans) | `false` |
| [int](class_int.md#class-int) | [geometry\_collision\_mask](#class-navigationmesh-property-geometry-collision-mask) | `4294967295` |
| [ParsedGeometryType](#enum-navigationmesh-parsedgeometrytype) | [geometry\_parsed\_geometry\_type](#class-navigationmesh-property-geometry-parsed-geometry-type) | `2` |
| [SourceGeometryMode](#enum-navigationmesh-sourcegeometrymode) | [geometry\_source\_geometry\_mode](#class-navigationmesh-property-geometry-source-geometry-mode) | `0` |
| [StringName](class_stringname.md#class-stringname) | [geometry\_source\_group\_name](#class-navigationmesh-property-geometry-source-group-name) | `&"navigation_mesh_source_group"` |
| [float](class_float.md#class-float) | [region\_merge\_size](#class-navigationmesh-property-region-merge-size) | `20.0` |
| [float](class_float.md#class-float) | [region\_min\_size](#class-navigationmesh-property-region-min-size) | `2.0` |
| [SamplePartitionType](#enum-navigationmesh-samplepartitiontype) | [sample\_partition\_type](#class-navigationmesh-property-sample-partition-type) | `0` |
| [float](class_float.md#class-float) | [vertices\_per\_polygon](#class-navigationmesh-property-vertices-per-polygon) | `6.0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_polygon](#class-navigationmesh-method-add-polygon)(polygon: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| void | [clear](#class-navigationmesh-method-clear)() |
| void | [clear\_polygons](#class-navigationmesh-method-clear-polygons)() |
| void | [create\_from\_mesh](#class-navigationmesh-method-create-from-mesh)(mesh: [Mesh](class_mesh.md#class-mesh)) |
| [bool](class_bool.md#class-bool) | [get\_collision\_mask\_value](#class-navigationmesh-method-get-collision-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_polygon](#class-navigationmesh-method-get-polygon)(idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_polygon\_count](#class-navigationmesh-method-get-polygon-count)() const |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [get\_vertices](#class-navigationmesh-method-get-vertices)() const |
| void | [set\_collision\_mask\_value](#class-navigationmesh-method-set-collision-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_vertices](#class-navigationmesh-method-set-vertices)(vertices: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array)) |

* * *

## Enumerations

enum **SamplePartitionType**: [🔗](#enum-navigationmesh-samplepartitiontype)

[SamplePartitionType](#enum-navigationmesh-samplepartitiontype) **SAMPLE\_PARTITION\_WATERSHED** = `0`

Watershed partitioning. Generally the best choice if you precompute the navigation mesh, use this if you have large open areas.

[SamplePartitionType](#enum-navigationmesh-samplepartitiontype) **SAMPLE\_PARTITION\_MONOTONE** = `1`

Monotone partitioning. Use this if you want fast navigation mesh generation.

[SamplePartitionType](#enum-navigationmesh-samplepartitiontype) **SAMPLE\_PARTITION\_LAYERS** = `2`

Layer partitioning. Good choice to use for tiled navigation mesh with medium and small sized tiles.

[SamplePartitionType](#enum-navigationmesh-samplepartitiontype) **SAMPLE\_PARTITION\_MAX** = `3`

Represents the size of the [SamplePartitionType](#enum-navigationmesh-samplepartitiontype) enum.

* * *

enum **ParsedGeometryType**: [🔗](#enum-navigationmesh-parsedgeometrytype)

[ParsedGeometryType](#enum-navigationmesh-parsedgeometrytype) **PARSED\_GEOMETRY\_MESH\_INSTANCES** = `0`

Parses mesh instances as geometry. This includes [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d), [CSGShape3D](class_csgshape3d.md#class-csgshape3d), and [GridMap](class_gridmap.md#class-gridmap) nodes.

[ParsedGeometryType](#enum-navigationmesh-parsedgeometrytype) **PARSED\_GEOMETRY\_STATIC\_COLLIDERS** = `1`

Parses [StaticBody3D](class_staticbody3d.md#class-staticbody3d) colliders as geometry. The collider should be in any of the layers specified by [geometry\_collision\_mask](#class-navigationmesh-property-geometry-collision-mask).

[ParsedGeometryType](#enum-navigationmesh-parsedgeometrytype) **PARSED\_GEOMETRY\_BOTH** = `2`

Both [PARSED\_GEOMETRY\_MESH\_INSTANCES](#class-navigationmesh-constant-parsed-geometry-mesh-instances) and [PARSED\_GEOMETRY\_STATIC\_COLLIDERS](#class-navigationmesh-constant-parsed-geometry-static-colliders).

[ParsedGeometryType](#enum-navigationmesh-parsedgeometrytype) **PARSED\_GEOMETRY\_MAX** = `3`

Represents the size of the [ParsedGeometryType](#enum-navigationmesh-parsedgeometrytype) enum.

* * *

enum **SourceGeometryMode**: [🔗](#enum-navigationmesh-sourcegeometrymode)

[SourceGeometryMode](#enum-navigationmesh-sourcegeometrymode) **SOURCE\_GEOMETRY\_ROOT\_NODE\_CHILDREN** = `0`

Scans the child nodes of the root node recursively for geometry.

[SourceGeometryMode](#enum-navigationmesh-sourcegeometrymode) **SOURCE\_GEOMETRY\_GROUPS\_WITH\_CHILDREN** = `1`

Scans nodes in a group and their child nodes recursively for geometry. The group is specified by [geometry\_source\_group\_name](#class-navigationmesh-property-geometry-source-group-name).

[SourceGeometryMode](#enum-navigationmesh-sourcegeometrymode) **SOURCE\_GEOMETRY\_GROUPS\_EXPLICIT** = `2`

Uses nodes in a group for geometry. The group is specified by [geometry\_source\_group\_name](#class-navigationmesh-property-geometry-source-group-name).

[SourceGeometryMode](#enum-navigationmesh-sourcegeometrymode) **SOURCE\_GEOMETRY\_MAX** = `3`

Represents the size of the [SourceGeometryMode](#enum-navigationmesh-sourcegeometrymode) enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **agent\_height** = `1.5` [🔗](#class-navigationmesh-property-agent-height)

- void **set\_agent\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_agent\_height**()


The minimum floor to ceiling height that will still allow the floor area to be considered walkable.

**Note:** While baking, this value will be rounded up to the nearest multiple of [cell\_height](#class-navigationmesh-property-cell-height).

* * *

[float](class_float.md#class-float) **agent\_max\_climb** = `0.25` [🔗](#class-navigationmesh-property-agent-max-climb)

- void **set\_agent\_max\_climb**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_agent\_max\_climb**()


The minimum ledge height that is considered to still be traversable.

**Note:** While baking, this value will be rounded down to the nearest multiple of [cell\_height](#class-navigationmesh-property-cell-height).

* * *

[float](class_float.md#class-float) **agent\_max\_slope** = `45.0` [🔗](#class-navigationmesh-property-agent-max-slope)

- void **set\_agent\_max\_slope**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_agent\_max\_slope**()


The maximum slope that is considered walkable, in degrees.

* * *

[float](class_float.md#class-float) **agent\_radius** = `0.5` [🔗](#class-navigationmesh-property-agent-radius)

- void **set\_agent\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_agent\_radius**()


The distance to erode/shrink the walkable area of the heightfield away from obstructions.

**Note:** While baking, this value will be rounded up to the nearest multiple of [cell\_size](#class-navigationmesh-property-cell-size).

**Note:** The radius must be equal or higher than `0.0`. If the radius is `0.0`, it won't be possible to fix invalid outline overlaps and other precision errors during the baking process. As a result, some obstacles may be excluded incorrectly from the final navigation mesh, or may delete the navigation mesh's polygons.

* * *

[float](class_float.md#class-float) **border\_size** = `0.0` [🔗](#class-navigationmesh-property-border-size)

- void **set\_border\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_border\_size**()


The size of the non-navigable border around the bake bounding area.

In conjunction with the [filter\_baking\_aabb](#class-navigationmesh-property-filter-baking-aabb) and a [edge\_max\_error](#class-navigationmesh-property-edge-max-error) value at `1.0` or below the border size can be used to bake tile aligned navigation meshes without the tile edges being shrunk by [agent\_radius](#class-navigationmesh-property-agent-radius).

**Note:** If this value is not `0.0`, it will be rounded up to the nearest multiple of [cell\_size](#class-navigationmesh-property-cell-size) during baking.

* * *

[float](class_float.md#class-float) **cell\_height** = `0.25` [🔗](#class-navigationmesh-property-cell-height)

- void **set\_cell\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_cell\_height**()


The cell height used to rasterize the navigation mesh vertices on the Y axis. Must match with the cell height on the navigation map.

* * *

[float](class_float.md#class-float) **cell\_size** = `0.25` [🔗](#class-navigationmesh-property-cell-size)

- void **set\_cell\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_cell\_size**()


The cell size used to rasterize the navigation mesh vertices on the XZ plane. Must match with the cell size on the navigation map.

* * *

[float](class_float.md#class-float) **detail\_sample\_distance** = `6.0` [🔗](#class-navigationmesh-property-detail-sample-distance)

- void **set\_detail\_sample\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_detail\_sample\_distance**()


The sampling distance to use when generating the detail mesh, in cell unit.

* * *

[float](class_float.md#class-float) **detail\_sample\_max\_error** = `1.0` [🔗](#class-navigationmesh-property-detail-sample-max-error)

- void **set\_detail\_sample\_max\_error**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_detail\_sample\_max\_error**()


The maximum distance the detail mesh surface should deviate from heightfield, in cell unit.

* * *

[float](class_float.md#class-float) **edge\_max\_error** = `1.3` [🔗](#class-navigationmesh-property-edge-max-error)

- void **set\_edge\_max\_error**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_edge\_max\_error**()


The maximum distance a simplified contour's border edges should deviate the original raw contour.

* * *

[float](class_float.md#class-float) **edge\_max\_length** = `0.0` [🔗](#class-navigationmesh-property-edge-max-length)

- void **set\_edge\_max\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_edge\_max\_length**()


The maximum allowed length for contour edges along the border of the mesh. A value of `0.0` disables this feature.

**Note:** While baking, this value will be rounded up to the nearest multiple of [cell\_size](#class-navigationmesh-property-cell-size).

* * *

[AABB](class_aabb.md#class-aabb) **filter\_baking\_aabb** = `AABB(0, 0, 0, 0, 0, 0)` [🔗](#class-navigationmesh-property-filter-baking-aabb)

- void **set\_filter\_baking\_aabb**(value: [AABB](class_aabb.md#class-aabb))

- [AABB](class_aabb.md#class-aabb) **get\_filter\_baking\_aabb**()


If the baking [AABB](class_aabb.md#class-aabb) has a volume the navigation mesh baking will be restricted to its enclosing area.

* * *

[Vector3](class_vector3.md#class-vector3) **filter\_baking\_aabb\_offset** = `Vector3(0, 0, 0)` [🔗](#class-navigationmesh-property-filter-baking-aabb-offset)

- void **set\_filter\_baking\_aabb\_offset**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_filter\_baking\_aabb\_offset**()


The position offset applied to the [filter\_baking\_aabb](#class-navigationmesh-property-filter-baking-aabb) [AABB](class_aabb.md#class-aabb).

* * *

[bool](class_bool.md#class-bool) **filter\_ledge\_spans** = `false` [🔗](#class-navigationmesh-property-filter-ledge-spans)

- void **set\_filter\_ledge\_spans**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_filter\_ledge\_spans**()


If `true`, marks spans that are ledges as non-walkable.

* * *

[bool](class_bool.md#class-bool) **filter\_low\_hanging\_obstacles** = `false` [🔗](#class-navigationmesh-property-filter-low-hanging-obstacles)

- void **set\_filter\_low\_hanging\_obstacles**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_filter\_low\_hanging\_obstacles**()


If `true`, marks non-walkable spans as walkable if their maximum is within [agent\_max\_climb](#class-navigationmesh-property-agent-max-climb) of a walkable neighbor.

* * *

[bool](class_bool.md#class-bool) **filter\_walkable\_low\_height\_spans** = `false` [🔗](#class-navigationmesh-property-filter-walkable-low-height-spans)

- void **set\_filter\_walkable\_low\_height\_spans**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_filter\_walkable\_low\_height\_spans**()


If `true`, marks walkable spans as not walkable if the clearance above the span is less than [agent\_height](#class-navigationmesh-property-agent-height).

* * *

[int](class_int.md#class-int) **geometry\_collision\_mask** = `4294967295` [🔗](#class-navigationmesh-property-geometry-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers to scan for static colliders.

Only used when [geometry\_parsed\_geometry\_type](#class-navigationmesh-property-geometry-parsed-geometry-type) is [PARSED\_GEOMETRY\_STATIC\_COLLIDERS](#class-navigationmesh-constant-parsed-geometry-static-colliders) or [PARSED\_GEOMETRY\_BOTH](#class-navigationmesh-constant-parsed-geometry-both).

* * *

[ParsedGeometryType](#enum-navigationmesh-parsedgeometrytype) **geometry\_parsed\_geometry\_type** = `2` [🔗](#class-navigationmesh-property-geometry-parsed-geometry-type)

- void **set\_parsed\_geometry\_type**(value: [ParsedGeometryType](#enum-navigationmesh-parsedgeometrytype))

- [ParsedGeometryType](#enum-navigationmesh-parsedgeometrytype) **get\_parsed\_geometry\_type**()


Determines which type of nodes will be parsed as geometry.

* * *

[SourceGeometryMode](#enum-navigationmesh-sourcegeometrymode) **geometry\_source\_geometry\_mode** = `0` [🔗](#class-navigationmesh-property-geometry-source-geometry-mode)

- void **set\_source\_geometry\_mode**(value: [SourceGeometryMode](#enum-navigationmesh-sourcegeometrymode))

- [SourceGeometryMode](#enum-navigationmesh-sourcegeometrymode) **get\_source\_geometry\_mode**()


The source of the geometry used when baking.

* * *

[StringName](class_stringname.md#class-stringname) **geometry\_source\_group\_name** = `&"navigation_mesh_source_group"` [🔗](#class-navigationmesh-property-geometry-source-group-name)

- void **set\_source\_group\_name**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_source\_group\_name**()


The name of the group to scan for geometry.

Only used when [geometry\_source\_geometry\_mode](#class-navigationmesh-property-geometry-source-geometry-mode) is [SOURCE\_GEOMETRY\_GROUPS\_WITH\_CHILDREN](#class-navigationmesh-constant-source-geometry-groups-with-children) or [SOURCE\_GEOMETRY\_GROUPS\_EXPLICIT](#class-navigationmesh-constant-source-geometry-groups-explicit).

* * *

[float](class_float.md#class-float) **region\_merge\_size** = `20.0` [🔗](#class-navigationmesh-property-region-merge-size)

- void **set\_region\_merge\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_region\_merge\_size**()


Any regions with a size smaller than this will be merged with larger regions if possible.

**Note:** This value will be squared to calculate the number of cells. For example, a value of 20 will set the number of cells to 400.

* * *

[float](class_float.md#class-float) **region\_min\_size** = `2.0` [🔗](#class-navigationmesh-property-region-min-size)

- void **set\_region\_min\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_region\_min\_size**()


The minimum size of a region for it to be created.

**Note:** This value will be squared to calculate the minimum number of cells allowed to form isolated island areas. For example, a value of 8 will set the number of cells to 64.

* * *

[SamplePartitionType](#enum-navigationmesh-samplepartitiontype) **sample\_partition\_type** = `0` [🔗](#class-navigationmesh-property-sample-partition-type)

- void **set\_sample\_partition\_type**(value: [SamplePartitionType](#enum-navigationmesh-samplepartitiontype))

- [SamplePartitionType](#enum-navigationmesh-samplepartitiontype) **get\_sample\_partition\_type**()


Partitioning algorithm for creating the navigation mesh polys.

* * *

[float](class_float.md#class-float) **vertices\_per\_polygon** = `6.0` [🔗](#class-navigationmesh-property-vertices-per-polygon)

- void **set\_vertices\_per\_polygon**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_vertices\_per\_polygon**()


The maximum number of vertices allowed for polygons generated during the contour to polygon conversion process.

* * *

## Method Descriptions

void **add\_polygon**(polygon: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-navigationmesh-method-add-polygon)

Adds a polygon using the indices of the vertices you get when calling [get\_vertices()](#class-navigationmesh-method-get-vertices).

* * *

void **clear**() [🔗](#class-navigationmesh-method-clear)

Clears the internal arrays for vertices and polygon indices.

* * *

void **clear\_polygons**() [🔗](#class-navigationmesh-method-clear-polygons)

Clears the array of polygons, but it doesn't clear the array of vertices.

* * *

void **create\_from\_mesh**(mesh: [Mesh](class_mesh.md#class-mesh)) [🔗](#class-navigationmesh-method-create-from-mesh)

Initializes the navigation mesh by setting the vertices and indices according to a [Mesh](class_mesh.md#class-mesh).

**Note:** The given `mesh` must be of type [Mesh.PRIMITIVE\_TRIANGLES](class_mesh.md#class-mesh-constant-primitive-triangles) and have an index array.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-navigationmesh-method-get-collision-mask-value)

Returns whether or not the specified layer of the [geometry\_collision\_mask](#class-navigationmesh-property-geometry-collision-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_polygon**(idx: [int](class_int.md#class-int)) [🔗](#class-navigationmesh-method-get-polygon)

Returns a [PackedInt32Array](class_packedint32array.md#class-packedint32array) containing the indices of the vertices of a created polygon.

* * *

[int](class_int.md#class-int) **get\_polygon\_count**() const [🔗](#class-navigationmesh-method-get-polygon-count)

Returns the number of polygons in the navigation mesh.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_vertices**() const [🔗](#class-navigationmesh-method-get-vertices)

Returns a [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) containing all the vertices being used to create the polygons.

* * *

void **set\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-navigationmesh-method-set-collision-mask-value)

Based on `value`, enables or disables the specified layer in the [geometry\_collision\_mask](#class-navigationmesh-property-geometry-collision-mask), given a `layer_number` between 1 and 32.

* * *

void **set\_vertices**(vertices: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array)) [🔗](#class-navigationmesh-method-set-vertices)

Sets the vertices that can be then indexed to create polygons with the [add\_polygon()](#class-navigationmesh-method-add-polygon) method.

[Previous](class_multimesh.md "MultiMesh") [Next](class_navigationmeshsourcegeometrydata2d.md "NavigationMeshSourceGeometryData2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_multimesh.md "MultiMesh") [Next](class_navigationmeshsourcegeometrydata2d.md "NavigationMeshSourceGeometryData2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).