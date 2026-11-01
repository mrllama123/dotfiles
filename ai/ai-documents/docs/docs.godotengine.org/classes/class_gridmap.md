---
title: GridMap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gridmap.html
crawled_at: "2026-08-13T10:29:47+12:00"
content_hash: c8ba005f1154d936ff72d8485cf8561531853d75a97d8805b983d98f3016b2d5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GridMap

* * *

# GridMap

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Node for 3D tile-based maps.

## Description

GridMap lets you place meshes on a grid interactively. It works both from the editor and from scripts, which can help you create in-game level editors.

GridMaps use a [MeshLibrary](class_meshlibrary.md#class-meshlibrary) which contains a list of tiles. Each tile is a mesh with materials plus optional collision and navigation shapes.

A GridMap contains a collection of cells. Each grid cell refers to a tile in the [MeshLibrary](class_meshlibrary.md#class-meshlibrary). All cells in the map have the same dimensions.

Internally, a GridMap is split into a sparse collection of octants for efficient rendering and physics processing. Every octant has the same dimensions and can contain several cells.

**Note:** GridMap doesn't extend [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) and therefore can't be hidden or cull masked based on [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers). If you make a light not affect the first layer, the whole GridMap won't be lit by the light in question.

## Tutorials

- [Using gridmaps](../tutorials/3d/using_gridmaps.md)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [3D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2739)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [bake\_navigation](#class-gridmap-property-bake-navigation) | `false` |
| [bool](class_bool.md#class-bool) | [cell\_center\_x](#class-gridmap-property-cell-center-x) | `true` |
| [bool](class_bool.md#class-bool) | [cell\_center\_y](#class-gridmap-property-cell-center-y) | `true` |
| [bool](class_bool.md#class-bool) | [cell\_center\_z](#class-gridmap-property-cell-center-z) | `true` |
| [int](class_int.md#class-int) | [cell\_octant\_size](#class-gridmap-property-cell-octant-size) | `8` |
| [float](class_float.md#class-float) | [cell\_scale](#class-gridmap-property-cell-scale) | `1.0` |
| [Vector3](class_vector3.md#class-vector3) | [cell\_size](#class-gridmap-property-cell-size) | `Vector3(2, 2, 2)` |
| [int](class_int.md#class-int) | [collision\_layer](#class-gridmap-property-collision-layer) | `1` |
| [int](class_int.md#class-int) | [collision\_mask](#class-gridmap-property-collision-mask) | `1` |
| [float](class_float.md#class-float) | [collision\_priority](#class-gridmap-property-collision-priority) | `1.0` |
| [MeshLibrary](class_meshlibrary.md#class-meshlibrary) | [mesh\_library](#class-gridmap-property-mesh-library) |  |
| [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) | [physics\_material](#class-gridmap-property-physics-material) |  |

## Methods

|     |     |
| --- | --- |
| void | [clear](#class-gridmap-method-clear)() |
| void | [clear\_baked\_meshes](#class-gridmap-method-clear-baked-meshes)() |
| [RID](class_rid.md#class-rid) | [get\_bake\_mesh\_instance](#class-gridmap-method-get-bake-mesh-instance)(idx: [int](class_int.md#class-int)) |
| [Array](class_array.md#class-array) | [get\_bake\_meshes](#class-gridmap-method-get-bake-meshes)() |
| [Basis](class_basis.md#class-basis) | [get\_basis\_with\_orthogonal\_index](#class-gridmap-method-get-basis-with-orthogonal-index)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_cell\_item](#class-gridmap-method-get-cell-item)(position: [Vector3i](class_vector3i.md#class-vector3i)) const |
| [Basis](class_basis.md#class-basis) | [get\_cell\_item\_basis](#class-gridmap-method-get-cell-item-basis)(position: [Vector3i](class_vector3i.md#class-vector3i)) const |
| [int](class_int.md#class-int) | [get\_cell\_item\_orientation](#class-gridmap-method-get-cell-item-orientation)(position: [Vector3i](class_vector3i.md#class-vector3i)) const |
| [bool](class_bool.md#class-bool) | [get\_collision\_layer\_value](#class-gridmap-method-get-collision-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_collision\_mask\_value](#class-gridmap-method-get-collision-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array) | [get\_meshes](#class-gridmap-method-get-meshes)() const |
| [RID](class_rid.md#class-rid) | [get\_navigation\_map](#class-gridmap-method-get-navigation-map)() const |
| [int](class_int.md#class-int) | [get\_orthogonal\_index\_from\_basis](#class-gridmap-method-get-orthogonal-index-from-basis)(basis: [Basis](class_basis.md#class-basis)) const |
| [Array](class_array.md#class-array)\[ [Vector3i](class_vector3i.md#class-vector3i)\] | [get\_used\_cells](#class-gridmap-method-get-used-cells)() const |
| [Array](class_array.md#class-array)\[ [Vector3i](class_vector3i.md#class-vector3i)\] | [get\_used\_cells\_by\_item](#class-gridmap-method-get-used-cells-by-item)(item: [int](class_int.md#class-int)) const |
| [Vector3i](class_vector3i.md#class-vector3i) | [local\_to\_map](#class-gridmap-method-local-to-map)(local\_position: [Vector3](class_vector3.md#class-vector3)) const |
| void | [make\_baked\_meshes](#class-gridmap-method-make-baked-meshes)(gen\_lightmap\_uv: [bool](class_bool.md#class-bool) = false, lightmap\_uv\_texel\_size: [float](class_float.md#class-float) = 0.1) |
| [Vector3](class_vector3.md#class-vector3) | [map\_to\_local](#class-gridmap-method-map-to-local)(map\_position: [Vector3i](class_vector3i.md#class-vector3i)) const |
| void | [resource\_changed](#class-gridmap-method-resource-changed)(resource: [Resource](class_resource.md#class-resource)) |
| void | [set\_cell\_item](#class-gridmap-method-set-cell-item)(position: [Vector3i](class_vector3i.md#class-vector3i), item: [int](class_int.md#class-int), orientation: [int](class_int.md#class-int) = 0) |
| void | [set\_collision\_layer\_value](#class-gridmap-method-set-collision-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_collision\_mask\_value](#class-gridmap-method-set-collision-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_navigation\_map](#class-gridmap-method-set-navigation-map)(navigation\_map: [RID](class_rid.md#class-rid)) |

* * *

## Signals

**cell\_size\_changed**(cell\_size: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-gridmap-signal-cell-size-changed)

Emitted when [cell\_size](#class-gridmap-property-cell-size) changes.

* * *

**changed**() [🔗](#class-gridmap-signal-changed)

Emitted when the [MeshLibrary](class_meshlibrary.md#class-meshlibrary) of this GridMap changes.

* * *

## Constants

**INVALID\_CELL\_ITEM** = `-1` [🔗](#class-gridmap-constant-invalid-cell-item)

Invalid cell item that can be used in [set\_cell\_item()](#class-gridmap-method-set-cell-item) to clear cells (or represent an empty cell in [get\_cell\_item()](#class-gridmap-method-get-cell-item)).

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **bake\_navigation** = `false` [🔗](#class-gridmap-property-bake-navigation)

- void **set\_bake\_navigation**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_baking\_navigation**()


If `true`, this GridMap creates a navigation region for each cell that uses a [mesh\_library](#class-gridmap-property-mesh-library) item with a navigation mesh. The created navigation region will use the navigation layers bitmask assigned to the [MeshLibrary](class_meshlibrary.md#class-meshlibrary)'s item.

* * *

[bool](class_bool.md#class-bool) **cell\_center\_x** = `true` [🔗](#class-gridmap-property-cell-center-x)

- void **set\_center\_x**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_center\_x**()


If `true`, grid items are centered on the X axis.

* * *

[bool](class_bool.md#class-bool) **cell\_center\_y** = `true` [🔗](#class-gridmap-property-cell-center-y)

- void **set\_center\_y**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_center\_y**()


If `true`, grid items are centered on the Y axis.

* * *

[bool](class_bool.md#class-bool) **cell\_center\_z** = `true` [🔗](#class-gridmap-property-cell-center-z)

- void **set\_center\_z**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_center\_z**()


If `true`, grid items are centered on the Z axis.

* * *

[int](class_int.md#class-int) **cell\_octant\_size** = `8` [🔗](#class-gridmap-property-cell-octant-size)

- void **set\_octant\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_octant\_size**()


The size of each octant measured in number of cells. This applies to all three axis.

* * *

[float](class_float.md#class-float) **cell\_scale** = `1.0` [🔗](#class-gridmap-property-cell-scale)

- void **set\_cell\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_cell\_scale**()


The scale of the cell items.

This does not affect the size of the grid cells themselves, only the items in them. This can be used to make cell items overlap their neighbors.

* * *

[Vector3](class_vector3.md#class-vector3) **cell\_size** = `Vector3(2, 2, 2)` [🔗](#class-gridmap-property-cell-size)

- void **set\_cell\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_cell\_size**()


The dimensions of the grid's cells.

This does not affect the size of the meshes. See [cell\_scale](#class-gridmap-property-cell-scale).

* * *

[int](class_int.md#class-int) **collision\_layer** = `1` [🔗](#class-gridmap-property-collision-layer)

- void **set\_collision\_layer**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_layer**()


The physics layers this GridMap is in.

GridMaps act as static bodies, meaning they aren't affected by gravity or other forces. They only affect other physics bodies that collide with them.

* * *

[int](class_int.md#class-int) **collision\_mask** = `1` [🔗](#class-gridmap-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers this GridMap detects collisions in. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[float](class_float.md#class-float) **collision\_priority** = `1.0` [🔗](#class-gridmap-property-collision-priority)

- void **set\_collision\_priority**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_collision\_priority**()


The priority used to solve colliding when occurring penetration. The higher the priority is, the lower the penetration into the object will be. This can for example be used to prevent the player from breaking through the boundaries of a level.

* * *

[MeshLibrary](class_meshlibrary.md#class-meshlibrary) **mesh\_library** [🔗](#class-gridmap-property-mesh-library)

- void **set\_mesh\_library**(value: [MeshLibrary](class_meshlibrary.md#class-meshlibrary))

- [MeshLibrary](class_meshlibrary.md#class-meshlibrary) **get\_mesh\_library**()


The assigned [MeshLibrary](class_meshlibrary.md#class-meshlibrary).

* * *

[PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) **physics\_material** [🔗](#class-gridmap-property-physics-material)

- void **set\_physics\_material**(value: [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial))

- [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) **get\_physics\_material**()


Overrides the default friction and bounce physics properties for the whole **GridMap**.

* * *

## Method Descriptions

void **clear**() [🔗](#class-gridmap-method-clear)

Clear all cells.

* * *

void **clear\_baked\_meshes**() [🔗](#class-gridmap-method-clear-baked-meshes)

Clears all baked meshes. See [make\_baked\_meshes()](#class-gridmap-method-make-baked-meshes).

* * *

[RID](class_rid.md#class-rid) **get\_bake\_mesh\_instance**(idx: [int](class_int.md#class-int)) [🔗](#class-gridmap-method-get-bake-mesh-instance)

Returns [RID](class_rid.md#class-rid) of a baked mesh with the given `idx`.

* * *

[Array](class_array.md#class-array) **get\_bake\_meshes**() [🔗](#class-gridmap-method-get-bake-meshes)

Returns an array of [ArrayMesh](class_arraymesh.md#class-arraymesh) es and [Transform3D](class_transform3d.md#class-transform3d) references of all bake meshes that exist within the current GridMap. Even indices contain [ArrayMesh](class_arraymesh.md#class-arraymesh) es, while odd indices contain [Transform3D](class_transform3d.md#class-transform3d) s that are always equal to [Transform3D.IDENTITY](class_transform3d.md#class-transform3d-constant-identity).

This method relies on the output of [make\_baked\_meshes()](#class-gridmap-method-make-baked-meshes), which will be called with `gen_lightmap_uv` set to `true` and `lightmap_uv_texel_size` set to `0.1` if it hasn't been called yet.

* * *

[Basis](class_basis.md#class-basis) **get\_basis\_with\_orthogonal\_index**(index: [int](class_int.md#class-int)) const [🔗](#class-gridmap-method-get-basis-with-orthogonal-index)

Returns one of 24 possible rotations that lie along the vectors (x,y,z) with each component being either -1, 0, or 1. For further details, refer to the Godot source code.

* * *

[int](class_int.md#class-int) **get\_cell\_item**(position: [Vector3i](class_vector3i.md#class-vector3i)) const [🔗](#class-gridmap-method-get-cell-item)

The [MeshLibrary](class_meshlibrary.md#class-meshlibrary) item index located at the given grid coordinates. If the cell is empty, [INVALID\_CELL\_ITEM](#class-gridmap-constant-invalid-cell-item) will be returned.

* * *

[Basis](class_basis.md#class-basis) **get\_cell\_item\_basis**(position: [Vector3i](class_vector3i.md#class-vector3i)) const [🔗](#class-gridmap-method-get-cell-item-basis)

Returns the basis that gives the specified cell its orientation.

* * *

[int](class_int.md#class-int) **get\_cell\_item\_orientation**(position: [Vector3i](class_vector3i.md#class-vector3i)) const [🔗](#class-gridmap-method-get-cell-item-orientation)

The orientation of the cell at the given grid coordinates. `-1` is returned if the cell is empty.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-gridmap-method-get-collision-layer-value)

Returns whether or not the specified layer of the [collision\_layer](#class-gridmap-property-collision-layer) is enabled, given a `layer_number` between 1 and 32.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-gridmap-method-get-collision-mask-value)

Returns whether or not the specified layer of the [collision\_mask](#class-gridmap-property-collision-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

[Array](class_array.md#class-array) **get\_meshes**() const [🔗](#class-gridmap-method-get-meshes)

Returns an array of [Transform3D](class_transform3d.md#class-transform3d) and [Mesh](class_mesh.md#class-mesh) references corresponding to the non-empty cells in the grid. The transforms are specified in local space. Even indices contain [Transform3D](class_transform3d.md#class-transform3d) s, while odd indices contain [Mesh](class_mesh.md#class-mesh) es related to the [Transform3D](class_transform3d.md#class-transform3d) in the index preceding it.

* * *

[RID](class_rid.md#class-rid) **get\_navigation\_map**() const [🔗](#class-gridmap-method-get-navigation-map)

Returns the [RID](class_rid.md#class-rid) of the navigation map this GridMap node uses for its cell baked navigation meshes.

This function returns always the map set on the GridMap node and not the map on the NavigationServer. If the map is changed directly with the NavigationServer API the GridMap node will not be aware of the map change.

* * *

[int](class_int.md#class-int) **get\_orthogonal\_index\_from\_basis**(basis: [Basis](class_basis.md#class-basis)) const [🔗](#class-gridmap-method-get-orthogonal-index-from-basis)

This function considers a discretization of rotations into 24 points on unit sphere, lying along the vectors (x,y,z) with each component being either -1, 0, or 1, and returns the index (in the range from 0 to 23) of the point best representing the orientation of the object. For further details, refer to the Godot source code.

* * *

[Array](class_array.md#class-array)\[ [Vector3i](class_vector3i.md#class-vector3i)\] **get\_used\_cells**() const [🔗](#class-gridmap-method-get-used-cells)

Returns an array of [Vector3](class_vector3.md#class-vector3) with the non-empty cell coordinates in the grid map.

* * *

[Array](class_array.md#class-array)\[ [Vector3i](class_vector3i.md#class-vector3i)\] **get\_used\_cells\_by\_item**(item: [int](class_int.md#class-int)) const [🔗](#class-gridmap-method-get-used-cells-by-item)

Returns an array of all cells with the given item index specified in `item`.

* * *

[Vector3i](class_vector3i.md#class-vector3i) **local\_to\_map**(local\_position: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-gridmap-method-local-to-map)

Returns the map coordinates of the cell containing the given `local_position`. If `local_position` is in global coordinates, consider using [Node3D.to\_local()](class_node3d.md#class-node3d-method-to-local) before passing it to this method. See also [map\_to\_local()](#class-gridmap-method-map-to-local).

* * *

void **make\_baked\_meshes**(gen\_lightmap\_uv: [bool](class_bool.md#class-bool) = false, lightmap\_uv\_texel\_size: [float](class_float.md#class-float) = 0.1) [🔗](#class-gridmap-method-make-baked-meshes)

Generates a baked mesh that represents all meshes in the assigned [MeshLibrary](class_meshlibrary.md#class-meshlibrary) for use with [LightmapGI](class_lightmapgi.md#class-lightmapgi). If `gen_lightmap_uv` is `true`, UV2 data will be generated for each mesh currently used in the **GridMap**. Otherwise, only meshes that already have UV2 data present will be able to use baked lightmaps. When generating UV2, `lightmap_uv_texel_size` controls the texel density for lightmaps, with lower values resulting in more detailed lightmaps. `lightmap_uv_texel_size` is ignored if `gen_lightmap_uv` is `false`. See also [get\_bake\_meshes()](#class-gridmap-method-get-bake-meshes), which relies on the output of this method.

**Note:** Calling this method will not actually bake lightmaps, as lightmap baking is performed using the [LightmapGI](class_lightmapgi.md#class-lightmapgi) node.

* * *

[Vector3](class_vector3.md#class-vector3) **map\_to\_local**(map\_position: [Vector3i](class_vector3i.md#class-vector3i)) const [🔗](#class-gridmap-method-map-to-local)

Returns the position of a grid cell in the GridMap's local coordinate space. To convert the returned value into global coordinates, use [Node3D.to\_global()](class_node3d.md#class-node3d-method-to-global). See also [local\_to\_map()](#class-gridmap-method-local-to-map).

* * *

void **resource\_changed**(resource: [Resource](class_resource.md#class-resource)) [🔗](#class-gridmap-method-resource-changed)

**Deprecated:** Use [Resource.changed](class_resource.md#class-resource-signal-changed) instead.

This method does nothing.

* * *

void **set\_cell\_item**(position: [Vector3i](class_vector3i.md#class-vector3i), item: [int](class_int.md#class-int), orientation: [int](class_int.md#class-int) = 0) [🔗](#class-gridmap-method-set-cell-item)

Sets the mesh index for the cell referenced by its grid coordinates.

A negative item index such as [INVALID\_CELL\_ITEM](#class-gridmap-constant-invalid-cell-item) will clear the cell.

Optionally, the item's orientation can be passed. For valid orientation values, see [get\_orthogonal\_index\_from\_basis()](#class-gridmap-method-get-orthogonal-index-from-basis).

* * *

void **set\_collision\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-gridmap-method-set-collision-layer-value)

Based on `value`, enables or disables the specified layer in the [collision\_layer](#class-gridmap-property-collision-layer), given a `layer_number` between 1 and 32.

* * *

void **set\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-gridmap-method-set-collision-mask-value)

Based on `value`, enables or disables the specified layer in the [collision\_mask](#class-gridmap-property-collision-mask), given a `layer_number` between 1 and 32.

* * *

void **set\_navigation\_map**(navigation\_map: [RID](class_rid.md#class-rid)) [🔗](#class-gridmap-method-set-navigation-map)

Sets the [RID](class_rid.md#class-rid) of the navigation map this GridMap node should use for its cell baked navigation meshes.

[Previous](class_gridcontainer.md "GridContainer") [Next](class_gridmapeditorplugin.md "GridMapEditorPlugin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gridcontainer.md "GridContainer") [Next](class_gridmapeditorplugin.md "GridMapEditorPlugin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).