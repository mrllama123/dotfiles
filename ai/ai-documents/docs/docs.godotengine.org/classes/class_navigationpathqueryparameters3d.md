---
title: NavigationPathQueryParameters3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationpathqueryparameters3d.html
crawled_at: "2026-08-13T10:36:06+12:00"
content_hash: e154c61a666abf5029a1d130a9ee6815b109f44c086ea42f1932ae2b157f179d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationPathQueryParameters3D

* * *

# NavigationPathQueryParameters3D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides parameters for 3D navigation path queries.

## Description

By changing various properties of this object, such as the start and target position, you can configure path queries to the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

## Tutorials

- [Using NavigationPathQueryObjects](../tutorials/navigation/navigation_using_navigationpathqueryobjects.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [excluded\_regions](#class-navigationpathqueryparameters3d-property-excluded-regions) | `[]` |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [included\_regions](#class-navigationpathqueryparameters3d-property-included-regions) | `[]` |
| [RID](class_rid.md#class-rid) | [map](#class-navigationpathqueryparameters3d-property-map) | `RID()` |
| BitField\[ [PathMetadataFlags](#enum-navigationpathqueryparameters3d-pathmetadataflags)\] | [metadata\_flags](#class-navigationpathqueryparameters3d-property-metadata-flags) | `7` |
| [int](class_int.md#class-int) | [navigation\_layers](#class-navigationpathqueryparameters3d-property-navigation-layers) | `1` |
| [PathPostProcessing](#enum-navigationpathqueryparameters3d-pathpostprocessing) | [path\_postprocessing](#class-navigationpathqueryparameters3d-property-path-postprocessing) | `0` |
| [float](class_float.md#class-float) | [path\_return\_max\_length](#class-navigationpathqueryparameters3d-property-path-return-max-length) | `0.0` |
| [float](class_float.md#class-float) | [path\_return\_max\_radius](#class-navigationpathqueryparameters3d-property-path-return-max-radius) | `0.0` |
| [float](class_float.md#class-float) | [path\_search\_max\_distance](#class-navigationpathqueryparameters3d-property-path-search-max-distance) | `0.0` |
| [int](class_int.md#class-int) | [path\_search\_max\_polygons](#class-navigationpathqueryparameters3d-property-path-search-max-polygons) | `4096` |
| [PathfindingAlgorithm](#enum-navigationpathqueryparameters3d-pathfindingalgorithm) | [pathfinding\_algorithm](#class-navigationpathqueryparameters3d-property-pathfinding-algorithm) | `0` |
| [float](class_float.md#class-float) | [simplify\_epsilon](#class-navigationpathqueryparameters3d-property-simplify-epsilon) | `0.0` |
| [bool](class_bool.md#class-bool) | [simplify\_path](#class-navigationpathqueryparameters3d-property-simplify-path) | `false` |
| [Vector3](class_vector3.md#class-vector3) | [start\_position](#class-navigationpathqueryparameters3d-property-start-position) | `Vector3(0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [target\_position](#class-navigationpathqueryparameters3d-property-target-position) | `Vector3(0, 0, 0)` |

* * *

## Enumerations

enum **PathfindingAlgorithm**: [🔗](#enum-navigationpathqueryparameters3d-pathfindingalgorithm)

[PathfindingAlgorithm](#enum-navigationpathqueryparameters3d-pathfindingalgorithm) **PATHFINDING\_ALGORITHM\_ASTAR** = `0`

The path query uses the default A\* pathfinding algorithm.

* * *

enum **PathPostProcessing**: [🔗](#enum-navigationpathqueryparameters3d-pathpostprocessing)

[PathPostProcessing](#enum-navigationpathqueryparameters3d-pathpostprocessing) **PATH\_POSTPROCESSING\_CORRIDORFUNNEL** = `0`

Applies a funnel algorithm to the raw path corridor found by the pathfinding algorithm. This will result in the shortest path possible inside the path corridor. This postprocessing very much depends on the navigation mesh polygon layout and the created corridor. Especially tile- or gridbased layouts can face artificial corners with diagonal movement due to a jagged path corridor imposed by the cell shapes.

[PathPostProcessing](#enum-navigationpathqueryparameters3d-pathpostprocessing) **PATH\_POSTPROCESSING\_EDGECENTERED** = `1`

Centers every path position in the middle of the traveled navigation mesh polygon edge. This creates better paths for tile- or gridbased layouts that restrict the movement to the cells center.

[PathPostProcessing](#enum-navigationpathqueryparameters3d-pathpostprocessing) **PATH\_POSTPROCESSING\_NONE** = `2`

Applies no postprocessing and returns the raw path corridor as found by the pathfinding algorithm.

* * *

flags **PathMetadataFlags**: [🔗](#enum-navigationpathqueryparameters3d-pathmetadataflags)

[PathMetadataFlags](#enum-navigationpathqueryparameters3d-pathmetadataflags) **PATH\_METADATA\_INCLUDE\_NONE** = `0`

Don't include any additional metadata about the returned path.

[PathMetadataFlags](#enum-navigationpathqueryparameters3d-pathmetadataflags) **PATH\_METADATA\_INCLUDE\_TYPES** = `1`

Include the type of navigation primitive (region or link) that each point of the path goes through.

[PathMetadataFlags](#enum-navigationpathqueryparameters3d-pathmetadataflags) **PATH\_METADATA\_INCLUDE\_RIDS** = `2`

Include the [RID](class_rid.md#class-rid) s of the regions and links that each point of the path goes through.

[PathMetadataFlags](#enum-navigationpathqueryparameters3d-pathmetadataflags) **PATH\_METADATA\_INCLUDE\_OWNERS** = `4`

Include the `ObjectID` s of the [Object](class_object.md#class-object) s which manage the regions and links each point of the path goes through.

[PathMetadataFlags](#enum-navigationpathqueryparameters3d-pathmetadataflags) **PATH\_METADATA\_INCLUDE\_ALL** = `7`

Include all available metadata about the returned path.

* * *

## Property Descriptions

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **excluded\_regions** = `[]` [🔗](#class-navigationpathqueryparameters3d-property-excluded-regions)

- void **set\_excluded\_regions**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_excluded\_regions**()


The list of region [RID](class_rid.md#class-rid) s that will be excluded from the path query. Use [NavigationRegion3D.get\_rid()](class_navigationregion3d.md#class-navigationregion3d-method-get-rid) to get the [RID](class_rid.md#class-rid) associated with a [NavigationRegion3D](class_navigationregion3d.md#class-navigationregion3d) node.

**Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then set it to the property again.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **included\_regions** = `[]` [🔗](#class-navigationpathqueryparameters3d-property-included-regions)

- void **set\_included\_regions**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_included\_regions**()


The list of region [RID](class_rid.md#class-rid) s that will be included by the path query. Use [NavigationRegion3D.get\_rid()](class_navigationregion3d.md#class-navigationregion3d-method-get-rid) to get the [RID](class_rid.md#class-rid) associated with a [NavigationRegion3D](class_navigationregion3d.md#class-navigationregion3d) node. If left empty all regions are included. If a region ends up being both included and excluded at the same time it will be excluded.

**Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then set it to the property again.

* * *

[RID](class_rid.md#class-rid) **map** = `RID()` [🔗](#class-navigationpathqueryparameters3d-property-map)

- void **set\_map**(value: [RID](class_rid.md#class-rid))

- [RID](class_rid.md#class-rid) **get\_map**()


The navigation map [RID](class_rid.md#class-rid) used in the path query.

* * *

BitField\[ [PathMetadataFlags](#enum-navigationpathqueryparameters3d-pathmetadataflags)\] **metadata\_flags** = `7` [🔗](#class-navigationpathqueryparameters3d-property-metadata-flags)

- void **set\_metadata\_flags**(value: BitField\[ [PathMetadataFlags](#enum-navigationpathqueryparameters3d-pathmetadataflags)\])

- BitField\[ [PathMetadataFlags](#enum-navigationpathqueryparameters3d-pathmetadataflags)\] **get\_metadata\_flags**()


Additional information to include with the navigation path.

* * *

[int](class_int.md#class-int) **navigation\_layers** = `1` [🔗](#class-navigationpathqueryparameters3d-property-navigation-layers)

- void **set\_navigation\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_navigation\_layers**()


The navigation layers the query will use (as a bitmask).

* * *

[PathPostProcessing](#enum-navigationpathqueryparameters3d-pathpostprocessing) **path\_postprocessing** = `0` [🔗](#class-navigationpathqueryparameters3d-property-path-postprocessing)

- void **set\_path\_postprocessing**(value: [PathPostProcessing](#enum-navigationpathqueryparameters3d-pathpostprocessing))

- [PathPostProcessing](#enum-navigationpathqueryparameters3d-pathpostprocessing) **get\_path\_postprocessing**()


The path postprocessing applied to the raw path corridor found by the [pathfinding\_algorithm](#class-navigationpathqueryparameters3d-property-pathfinding-algorithm).

* * *

[float](class_float.md#class-float) **path\_return\_max\_length** = `0.0` [🔗](#class-navigationpathqueryparameters3d-property-path-return-max-length)

- void **set\_path\_return\_max\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_return\_max\_length**()


The maximum allowed length of the returned path in world units. A path will be clipped when going over this length. A value of `0` or below counts as disabled.

* * *

[float](class_float.md#class-float) **path\_return\_max\_radius** = `0.0` [🔗](#class-navigationpathqueryparameters3d-property-path-return-max-radius)

- void **set\_path\_return\_max\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_return\_max\_radius**()


The maximum allowed radius in world units that the returned path can be from the path start. The path will be clipped when going over this radius. A value of `0` or below counts as disabled.

**Note:** This will perform a sphere shaped clip operation on the path with the first path position being the sphere's center position.

* * *

[float](class_float.md#class-float) **path\_search\_max\_distance** = `0.0` [🔗](#class-navigationpathqueryparameters3d-property-path-search-max-distance)

- void **set\_path\_search\_max\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_search\_max\_distance**()


The maximum distance a searched polygon can be away from the start polygon before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of `0` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

* * *

[int](class_int.md#class-int) **path\_search\_max\_polygons** = `4096` [🔗](#class-navigationpathqueryparameters3d-property-path-search-max-polygons)

- void **set\_path\_search\_max\_polygons**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_path\_search\_max\_polygons**()


The maximum number of polygons that are searched before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of `0` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

* * *

[PathfindingAlgorithm](#enum-navigationpathqueryparameters3d-pathfindingalgorithm) **pathfinding\_algorithm** = `0` [🔗](#class-navigationpathqueryparameters3d-property-pathfinding-algorithm)

- void **set\_pathfinding\_algorithm**(value: [PathfindingAlgorithm](#enum-navigationpathqueryparameters3d-pathfindingalgorithm))

- [PathfindingAlgorithm](#enum-navigationpathqueryparameters3d-pathfindingalgorithm) **get\_pathfinding\_algorithm**()


The pathfinding algorithm used in the path query.

* * *

[float](class_float.md#class-float) **simplify\_epsilon** = `0.0` [🔗](#class-navigationpathqueryparameters3d-property-simplify-epsilon)

- void **set\_simplify\_epsilon**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_simplify\_epsilon**()


The path simplification amount in worlds units.

* * *

[bool](class_bool.md#class-bool) **simplify\_path** = `false` [🔗](#class-navigationpathqueryparameters3d-property-simplify-path)

- void **set\_simplify\_path**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_simplify\_path**()


If `true` a simplified version of the path will be returned with less critical path points removed. The simplification amount is controlled by [simplify\_epsilon](#class-navigationpathqueryparameters3d-property-simplify-epsilon). The simplification uses a variant of Ramer-Douglas-Peucker algorithm for curve point decimation.

Path simplification can be helpful to mitigate various path following issues that can arise with certain agent types and script behaviors. E.g. "steering" agents or avoidance in "open fields".

* * *

[Vector3](class_vector3.md#class-vector3) **start\_position** = `Vector3(0, 0, 0)` [🔗](#class-navigationpathqueryparameters3d-property-start-position)

- void **set\_start\_position**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_start\_position**()


The pathfinding start position in global coordinates.

* * *

[Vector3](class_vector3.md#class-vector3) **target\_position** = `Vector3(0, 0, 0)` [🔗](#class-navigationpathqueryparameters3d-property-target-position)

- void **set\_target\_position**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_target\_position**()


The pathfinding target position in global coordinates.

[Previous](class_navigationpathqueryparameters2d.md "NavigationPathQueryParameters2D") [Next](class_navigationpathqueryresult2d.md "NavigationPathQueryResult2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationpathqueryparameters2d.md "NavigationPathQueryParameters2D") [Next](class_navigationpathqueryresult2d.md "NavigationPathQueryResult2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).