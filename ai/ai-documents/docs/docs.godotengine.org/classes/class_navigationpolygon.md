---
title: NavigationPolygon — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationpolygon.html
crawled_at: "2026-08-13T10:33:28+12:00"
content_hash: 36afe24bde95bcc086d25defb3ff0b5089ac0cd236fb2de9a3cc033c9bfc9939
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationPolygon

* * *

# NavigationPolygon

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 2D navigation mesh that describes a traversable surface for pathfinding.

## Description

A navigation mesh can be created either by baking it with the help of the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d), or by adding vertices and convex polygon indices arrays manually.

To bake a navigation mesh at least one outline needs to be added that defines the outer bounds of the baked area.

GDScriptC#

```
var new_navigation_mesh = NavigationPolygon.new()
var bounding_outline = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
new_navigation_mesh.add_outline(bounding_outline)
NavigationServer2D.bake_from_source_geometry_data(new_navigation_mesh, NavigationMeshSourceGeometryData2D.new());
$NavigationRegion2D.navigation_polygon = new_navigation_mesh

```

```
var newNavigationMesh = new NavigationPolygon();
Vector2[] boundingOutline = [new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0)];
newNavigationMesh.AddOutline(boundingOutline);
NavigationServer2D.BakeFromSourceGeometryData(newNavigationMesh, new NavigationMeshSourceGeometryData2D());
GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = newNavigationMesh;

```

Adding vertices and polygon indices manually.

GDScriptC#

```
var new_navigation_mesh = NavigationPolygon.new()
var new_vertices = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
new_navigation_mesh.vertices = new_vertices
var new_polygon_indices = PackedInt32Array([0, 1, 2, 3])
new_navigation_mesh.add_polygon(new_polygon_indices)
$NavigationRegion2D.navigation_polygon = new_navigation_mesh

```

```
var newNavigationMesh = new NavigationPolygon();
Vector2[] newVertices = [new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0)];
newNavigationMesh.Vertices = newVertices;
int[] newPolygonIndices = [0, 1, 2, 3];
newNavigationMesh.AddPolygon(newPolygonIndices);
GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = newNavigationMesh;

```

## Tutorials

- [Using NavigationMeshes](../tutorials/navigation/navigation_using_navigationmeshes.md)

- [Navigation Polygon 2D Demo](https://godotengine.org/asset-library/asset/2722)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [agent\_radius](#class-navigationpolygon-property-agent-radius) | `10.0` |
| [Rect2](class_rect2.md#class-rect2) | [baking\_rect](#class-navigationpolygon-property-baking-rect) | `Rect2(0, 0, 0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [baking\_rect\_offset](#class-navigationpolygon-property-baking-rect-offset) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [border\_size](#class-navigationpolygon-property-border-size) | `0.0` |
| [float](class_float.md#class-float) | [cell\_size](#class-navigationpolygon-property-cell-size) | `1.0` |
| [int](class_int.md#class-int) | [parsed\_collision\_mask](#class-navigationpolygon-property-parsed-collision-mask) | `4294967295` |
| [ParsedGeometryType](#enum-navigationpolygon-parsedgeometrytype) | [parsed\_geometry\_type](#class-navigationpolygon-property-parsed-geometry-type) | `2` |
| [SamplePartitionType](#enum-navigationpolygon-samplepartitiontype) | [sample\_partition\_type](#class-navigationpolygon-property-sample-partition-type) | `0` |
| [StringName](class_stringname.md#class-stringname) | [source\_geometry\_group\_name](#class-navigationpolygon-property-source-geometry-group-name) | `&"navigation_polygon_source_geometry_group"` |
| [SourceGeometryMode](#enum-navigationpolygon-sourcegeometrymode) | [source\_geometry\_mode](#class-navigationpolygon-property-source-geometry-mode) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_outline](#class-navigationpolygon-method-add-outline)(outline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| void | [add\_outline\_at\_index](#class-navigationpolygon-method-add-outline-at-index)(outline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), index: [int](class_int.md#class-int)) |
| void | [add\_polygon](#class-navigationpolygon-method-add-polygon)(polygon: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| void | [clear](#class-navigationpolygon-method-clear)() |
| void | [clear\_outlines](#class-navigationpolygon-method-clear-outlines)() |
| void | [clear\_polygons](#class-navigationpolygon-method-clear-polygons)() |
| [NavigationMesh](class_navigationmesh.md#class-navigationmesh) | [get\_navigation\_mesh](#class-navigationpolygon-method-get-navigation-mesh)() |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_outline](#class-navigationpolygon-method-get-outline)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_outline\_count](#class-navigationpolygon-method-get-outline-count)() const |
| [bool](class_bool.md#class-bool) | [get\_parsed\_collision\_mask\_value](#class-navigationpolygon-method-get-parsed-collision-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_polygon](#class-navigationpolygon-method-get-polygon)(idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_polygon\_count](#class-navigationpolygon-method-get-polygon-count)() const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_vertices](#class-navigationpolygon-method-get-vertices)() const |
| void | [make\_polygons\_from\_outlines](#class-navigationpolygon-method-make-polygons-from-outlines)() |
| void | [remove\_outline](#class-navigationpolygon-method-remove-outline)(idx: [int](class_int.md#class-int)) |
| void | [set\_outline](#class-navigationpolygon-method-set-outline)(idx: [int](class_int.md#class-int), outline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| void | [set\_parsed\_collision\_mask\_value](#class-navigationpolygon-method-set-parsed-collision-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_vertices](#class-navigationpolygon-method-set-vertices)(vertices: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |

* * *

## Enumerations

enum **SamplePartitionType**: [🔗](#enum-navigationpolygon-samplepartitiontype)

[SamplePartitionType](#enum-navigationpolygon-samplepartitiontype) **SAMPLE\_PARTITION\_CONVEX\_PARTITION** = `0`

Convex partitioning that yields navigation mesh with convex polygons.

[SamplePartitionType](#enum-navigationpolygon-samplepartitiontype) **SAMPLE\_PARTITION\_TRIANGULATE** = `1`

Triangulation partitioning that yields navigation mesh with triangle polygons.

[SamplePartitionType](#enum-navigationpolygon-samplepartitiontype) **SAMPLE\_PARTITION\_MAX** = `2`

Represents the size of the [SamplePartitionType](#enum-navigationpolygon-samplepartitiontype) enum.

* * *

enum **ParsedGeometryType**: [🔗](#enum-navigationpolygon-parsedgeometrytype)

[ParsedGeometryType](#enum-navigationpolygon-parsedgeometrytype) **PARSED\_GEOMETRY\_MESH\_INSTANCES** = `0`

Parses mesh instances as obstruction geometry. This includes [Polygon2D](class_polygon2d.md#class-polygon2d), [MeshInstance2D](class_meshinstance2d.md#class-meshinstance2d), [MultiMeshInstance2D](class_multimeshinstance2d.md#class-multimeshinstance2d), and [TileMap](class_tilemap.md#class-tilemap) nodes.

Meshes are only parsed when they use a 2D vertices surface format.

[ParsedGeometryType](#enum-navigationpolygon-parsedgeometrytype) **PARSED\_GEOMETRY\_STATIC\_COLLIDERS** = `1`

Parses [StaticBody2D](class_staticbody2d.md#class-staticbody2d) and [TileMap](class_tilemap.md#class-tilemap) colliders as obstruction geometry. The collider should be in any of the layers specified by [parsed\_collision\_mask](#class-navigationpolygon-property-parsed-collision-mask).

[ParsedGeometryType](#enum-navigationpolygon-parsedgeometrytype) **PARSED\_GEOMETRY\_BOTH** = `2`

Both [PARSED\_GEOMETRY\_MESH\_INSTANCES](#class-navigationpolygon-constant-parsed-geometry-mesh-instances) and [PARSED\_GEOMETRY\_STATIC\_COLLIDERS](#class-navigationpolygon-constant-parsed-geometry-static-colliders).

[ParsedGeometryType](#enum-navigationpolygon-parsedgeometrytype) **PARSED\_GEOMETRY\_MAX** = `3`

Represents the size of the [ParsedGeometryType](#enum-navigationpolygon-parsedgeometrytype) enum.

* * *

enum **SourceGeometryMode**: [🔗](#enum-navigationpolygon-sourcegeometrymode)

[SourceGeometryMode](#enum-navigationpolygon-sourcegeometrymode) **SOURCE\_GEOMETRY\_ROOT\_NODE\_CHILDREN** = `0`

Scans the child nodes of the root node recursively for geometry.

[SourceGeometryMode](#enum-navigationpolygon-sourcegeometrymode) **SOURCE\_GEOMETRY\_GROUPS\_WITH\_CHILDREN** = `1`

Scans nodes in a group and their child nodes recursively for geometry. The group is specified by [source\_geometry\_group\_name](#class-navigationpolygon-property-source-geometry-group-name).

[SourceGeometryMode](#enum-navigationpolygon-sourcegeometrymode) **SOURCE\_GEOMETRY\_GROUPS\_EXPLICIT** = `2`

Uses nodes in a group for geometry. The group is specified by [source\_geometry\_group\_name](#class-navigationpolygon-property-source-geometry-group-name).

[SourceGeometryMode](#enum-navigationpolygon-sourcegeometrymode) **SOURCE\_GEOMETRY\_MAX** = `3`

Represents the size of the [SourceGeometryMode](#enum-navigationpolygon-sourcegeometrymode) enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **agent\_radius** = `10.0` [🔗](#class-navigationpolygon-property-agent-radius)

- void **set\_agent\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_agent\_radius**()


The distance to erode/shrink the walkable surface when baking the navigation mesh.

**Note:** The radius must be equal or higher than `0.0`. If the radius is `0.0`, it won't be possible to fix invalid outline overlaps and other precision errors during the baking process. As a result, some obstacles may be excluded incorrectly from the final navigation mesh, or may delete the navigation mesh's polygons.

* * *

[Rect2](class_rect2.md#class-rect2) **baking\_rect** = `Rect2(0, 0, 0, 0)` [🔗](#class-navigationpolygon-property-baking-rect)

- void **set\_baking\_rect**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_baking\_rect**()


If the baking [Rect2](class_rect2.md#class-rect2) has an area the navigation mesh baking will be restricted to its enclosing area.

* * *

[Vector2](class_vector2.md#class-vector2) **baking\_rect\_offset** = `Vector2(0, 0)` [🔗](#class-navigationpolygon-property-baking-rect-offset)

- void **set\_baking\_rect\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_baking\_rect\_offset**()


The position offset applied to the [baking\_rect](#class-navigationpolygon-property-baking-rect) [Rect2](class_rect2.md#class-rect2).

* * *

[float](class_float.md#class-float) **border\_size** = `0.0` [🔗](#class-navigationpolygon-property-border-size)

- void **set\_border\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_border\_size**()


The size of the non-navigable border around the bake bounding area defined by the [baking\_rect](#class-navigationpolygon-property-baking-rect) [Rect2](class_rect2.md#class-rect2).

In conjunction with the [baking\_rect](#class-navigationpolygon-property-baking-rect) the border size can be used to bake tile aligned navigation meshes without the tile edges being shrunk by [agent\_radius](#class-navigationpolygon-property-agent-radius).

* * *

[float](class_float.md#class-float) **cell\_size** = `1.0` [🔗](#class-navigationpolygon-property-cell-size)

- void **set\_cell\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_cell\_size**()


The cell size used to rasterize the navigation mesh vertices. Must match with the cell size on the navigation map.

* * *

[int](class_int.md#class-int) **parsed\_collision\_mask** = `4294967295` [🔗](#class-navigationpolygon-property-parsed-collision-mask)

- void **set\_parsed\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_parsed\_collision\_mask**()


The physics layers to scan for static colliders.

Only used when [parsed\_geometry\_type](#class-navigationpolygon-property-parsed-geometry-type) is [PARSED\_GEOMETRY\_STATIC\_COLLIDERS](#class-navigationpolygon-constant-parsed-geometry-static-colliders) or [PARSED\_GEOMETRY\_BOTH](#class-navigationpolygon-constant-parsed-geometry-both).

* * *

[ParsedGeometryType](#enum-navigationpolygon-parsedgeometrytype) **parsed\_geometry\_type** = `2` [🔗](#class-navigationpolygon-property-parsed-geometry-type)

- void **set\_parsed\_geometry\_type**(value: [ParsedGeometryType](#enum-navigationpolygon-parsedgeometrytype))

- [ParsedGeometryType](#enum-navigationpolygon-parsedgeometrytype) **get\_parsed\_geometry\_type**()


Determines which type of nodes will be parsed as geometry.

* * *

[SamplePartitionType](#enum-navigationpolygon-samplepartitiontype) **sample\_partition\_type** = `0` [🔗](#class-navigationpolygon-property-sample-partition-type)

- void **set\_sample\_partition\_type**(value: [SamplePartitionType](#enum-navigationpolygon-samplepartitiontype))

- [SamplePartitionType](#enum-navigationpolygon-samplepartitiontype) **get\_sample\_partition\_type**()


Partitioning algorithm for creating the navigation mesh polys.

* * *

[StringName](class_stringname.md#class-stringname) **source\_geometry\_group\_name** = `&"navigation_polygon_source_geometry_group"` [🔗](#class-navigationpolygon-property-source-geometry-group-name)

- void **set\_source\_geometry\_group\_name**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_source\_geometry\_group\_name**()


The group name of nodes that should be parsed for baking source geometry.

Only used when [source\_geometry\_mode](#class-navigationpolygon-property-source-geometry-mode) is [SOURCE\_GEOMETRY\_GROUPS\_WITH\_CHILDREN](#class-navigationpolygon-constant-source-geometry-groups-with-children) or [SOURCE\_GEOMETRY\_GROUPS\_EXPLICIT](#class-navigationpolygon-constant-source-geometry-groups-explicit).

* * *

[SourceGeometryMode](#enum-navigationpolygon-sourcegeometrymode) **source\_geometry\_mode** = `0` [🔗](#class-navigationpolygon-property-source-geometry-mode)

- void **set\_source\_geometry\_mode**(value: [SourceGeometryMode](#enum-navigationpolygon-sourcegeometrymode))

- [SourceGeometryMode](#enum-navigationpolygon-sourcegeometrymode) **get\_source\_geometry\_mode**()


The source of the geometry used when baking.

* * *

## Method Descriptions

void **add\_outline**(outline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-navigationpolygon-method-add-outline)

Appends a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) that contains the vertices of an outline to the internal array that contains all the outlines.

* * *

void **add\_outline\_at\_index**(outline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), index: [int](class_int.md#class-int)) [🔗](#class-navigationpolygon-method-add-outline-at-index)

Adds a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) that contains the vertices of an outline to the internal array that contains all the outlines at a fixed position.

* * *

void **add\_polygon**(polygon: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-navigationpolygon-method-add-polygon)

Adds a polygon using the indices of the vertices you get when calling [get\_vertices()](#class-navigationpolygon-method-get-vertices).

* * *

void **clear**() [🔗](#class-navigationpolygon-method-clear)

Clears the internal arrays for vertices and polygon indices.

* * *

void **clear\_outlines**() [🔗](#class-navigationpolygon-method-clear-outlines)

Clears the array of the outlines, but it doesn't clear the vertices and the polygons that were created by them.

* * *

void **clear\_polygons**() [🔗](#class-navigationpolygon-method-clear-polygons)

Clears the array of polygons, but it doesn't clear the array of outlines and vertices.

* * *

[NavigationMesh](class_navigationmesh.md#class-navigationmesh) **get\_navigation\_mesh**() [🔗](#class-navigationpolygon-method-get-navigation-mesh)

Returns the [NavigationMesh](class_navigationmesh.md#class-navigationmesh) resulting from this navigation polygon. This navigation mesh can be used to update the navigation mesh of a region with the [NavigationServer3D.region\_set\_navigation\_mesh()](class_navigationserver3d.md#class-navigationserver3d-method-region-set-navigation-mesh) API directly.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_outline**(idx: [int](class_int.md#class-int)) const [🔗](#class-navigationpolygon-method-get-outline)

Returns a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) containing the vertices of an outline that was created in the editor or by script.

* * *

[int](class_int.md#class-int) **get\_outline\_count**() const [🔗](#class-navigationpolygon-method-get-outline-count)

Returns the number of outlines that were created in the editor or by script.

* * *

[bool](class_bool.md#class-bool) **get\_parsed\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-navigationpolygon-method-get-parsed-collision-mask-value)

Returns whether or not the specified layer of the [parsed\_collision\_mask](#class-navigationpolygon-property-parsed-collision-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_polygon**(idx: [int](class_int.md#class-int)) [🔗](#class-navigationpolygon-method-get-polygon)

Returns a [PackedInt32Array](class_packedint32array.md#class-packedint32array) containing the indices of the vertices of a created polygon.

* * *

[int](class_int.md#class-int) **get\_polygon\_count**() const [🔗](#class-navigationpolygon-method-get-polygon-count)

Returns the count of all polygons.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_vertices**() const [🔗](#class-navigationpolygon-method-get-vertices)

Returns a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) containing all the vertices being used to create the polygons.

* * *

void **make\_polygons\_from\_outlines**() [🔗](#class-navigationpolygon-method-make-polygons-from-outlines)

**Deprecated:** Use [NavigationServer2D.parse\_source\_geometry\_data()](class_navigationserver2d.md#class-navigationserver2d-method-parse-source-geometry-data) and [NavigationServer2D.bake\_from\_source\_geometry\_data()](class_navigationserver2d.md#class-navigationserver2d-method-bake-from-source-geometry-data) instead.

Creates polygons from the outlines added in the editor or by script.

* * *

void **remove\_outline**(idx: [int](class_int.md#class-int)) [🔗](#class-navigationpolygon-method-remove-outline)

Removes an outline created in the editor or by script. You have to call [make\_polygons\_from\_outlines()](#class-navigationpolygon-method-make-polygons-from-outlines) for the polygons to update.

* * *

void **set\_outline**(idx: [int](class_int.md#class-int), outline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-navigationpolygon-method-set-outline)

Changes an outline created in the editor or by script. You have to call [make\_polygons\_from\_outlines()](#class-navigationpolygon-method-make-polygons-from-outlines) for the polygons to update.

* * *

void **set\_parsed\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-navigationpolygon-method-set-parsed-collision-mask-value)

Based on `value`, enables or disables the specified layer in the [parsed\_collision\_mask](#class-navigationpolygon-property-parsed-collision-mask), given a `layer_number` between 1 and 32.

* * *

void **set\_vertices**(vertices: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-navigationpolygon-method-set-vertices)

Sets the vertices that can be then indexed to create polygons with the [add\_polygon()](#class-navigationpolygon-method-add-polygon) method.

[Previous](class_navigationmeshsourcegeometrydata3d.md "NavigationMeshSourceGeometryData3D") [Next](class_noise.md "Noise")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationmeshsourcegeometrydata3d.md "NavigationMeshSourceGeometryData3D") [Next](class_noise.md "Noise")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).