---
title: NavigationMeshSourceGeometryData3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationmeshsourcegeometrydata3d.html
crawled_at: "2026-08-13T10:31:55+12:00"
content_hash: 8a0a6f99eac73e09762a0c1c8e66afa14602134cc1eec559882bd24dc1382a58
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationMeshSourceGeometryData3D

* * *

# NavigationMeshSourceGeometryData3D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Container for parsed source geometry data used in navigation mesh baking.

## Description

Container for parsed source geometry data used in navigation mesh baking.

## Methods

|     |     |
| --- | --- |
| void | [add\_faces](#class-navigationmeshsourcegeometrydata3d-method-add-faces)(faces: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), xform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [add\_mesh](#class-navigationmeshsourcegeometrydata3d-method-add-mesh)(mesh: [Mesh](class_mesh.md#class-mesh), xform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [add\_mesh\_array](#class-navigationmeshsourcegeometrydata3d-method-add-mesh-array)(mesh\_array: [Array](class_array.md#class-array), xform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [add\_projected\_obstruction](#class-navigationmeshsourcegeometrydata3d-method-add-projected-obstruction)(vertices: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), elevation: [float](class_float.md#class-float), height: [float](class_float.md#class-float), carve: [bool](class_bool.md#class-bool)) |
| void | [append\_arrays](#class-navigationmeshsourcegeometrydata3d-method-append-arrays)(vertices: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), indices: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| void | [clear](#class-navigationmeshsourcegeometrydata3d-method-clear)() |
| void | [clear\_projected\_obstructions](#class-navigationmeshsourcegeometrydata3d-method-clear-projected-obstructions)() |
| [AABB](class_aabb.md#class-aabb) | [get\_bounds](#class-navigationmeshsourcegeometrydata3d-method-get-bounds)() |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_indices](#class-navigationmeshsourcegeometrydata3d-method-get-indices)() const |
| [Array](class_array.md#class-array) | [get\_projected\_obstructions](#class-navigationmeshsourcegeometrydata3d-method-get-projected-obstructions)() const |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [get\_vertices](#class-navigationmeshsourcegeometrydata3d-method-get-vertices)() const |
| [bool](class_bool.md#class-bool) | [has\_data](#class-navigationmeshsourcegeometrydata3d-method-has-data)() |
| void | [merge](#class-navigationmeshsourcegeometrydata3d-method-merge)(other\_geometry: [NavigationMeshSourceGeometryData3D](#class-navigationmeshsourcegeometrydata3d)) |
| void | [set\_indices](#class-navigationmeshsourcegeometrydata3d-method-set-indices)(indices: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| void | [set\_projected\_obstructions](#class-navigationmeshsourcegeometrydata3d-method-set-projected-obstructions)(projected\_obstructions: [Array](class_array.md#class-array)) |
| void | [set\_vertices](#class-navigationmeshsourcegeometrydata3d-method-set-vertices)(vertices: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |

* * *

## Method Descriptions

void **add\_faces**(faces: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), xform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-navigationmeshsourcegeometrydata3d-method-add-faces)

Adds an array of vertex positions to the geometry data for navigation mesh baking to form triangulated faces. For each face the array must have three vertex positions in clockwise winding order. Since [NavigationMesh](class_navigationmesh.md#class-navigationmesh) resources have no transform, all vertex positions need to be offset by the node's transform using `xform`.

* * *

void **add\_mesh**(mesh: [Mesh](class_mesh.md#class-mesh), xform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-navigationmeshsourcegeometrydata3d-method-add-mesh)

Adds the geometry data of a [Mesh](class_mesh.md#class-mesh) resource to the navigation mesh baking data. The mesh must have valid triangulated mesh data to be considered. Since [NavigationMesh](class_navigationmesh.md#class-navigationmesh) resources have no transform, all vertex positions need to be offset by the node's transform using `xform`.

* * *

void **add\_mesh\_array**(mesh\_array: [Array](class_array.md#class-array), xform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-navigationmeshsourcegeometrydata3d-method-add-mesh-array)

Adds an [Array](class_array.md#class-array) the size of [Mesh.ARRAY\_MAX](class_mesh.md#class-mesh-constant-array-max) and with vertices at index [Mesh.ARRAY\_VERTEX](class_mesh.md#class-mesh-constant-array-vertex) and indices at index [Mesh.ARRAY\_INDEX](class_mesh.md#class-mesh-constant-array-index) to the navigation mesh baking data. The array must have valid triangulated mesh data to be considered. Since [NavigationMesh](class_navigationmesh.md#class-navigationmesh) resources have no transform, all vertex positions need to be offset by the node's transform using `xform`.

* * *

void **add\_projected\_obstruction**(vertices: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), elevation: [float](class_float.md#class-float), height: [float](class_float.md#class-float), carve: [bool](class_bool.md#class-bool)) [🔗](#class-navigationmeshsourcegeometrydata3d-method-add-projected-obstruction)

Adds a projected obstruction shape to the source geometry. The `vertices` are considered projected on an xz-axes plane, placed at the global y-axis `elevation` and extruded by `height`. If `carve` is `true` the carved shape will not be affected by additional offsets (e.g. agent radius) of the navigation mesh baking process.

* * *

void **append\_arrays**(vertices: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), indices: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-navigationmeshsourcegeometrydata3d-method-append-arrays)

Appends arrays of `vertices` and `indices` at the end of the existing arrays. Adds the existing index as an offset to the appended indices.

* * *

void **clear**() [🔗](#class-navigationmeshsourcegeometrydata3d-method-clear)

Clears the internal data.

* * *

void **clear\_projected\_obstructions**() [🔗](#class-navigationmeshsourcegeometrydata3d-method-clear-projected-obstructions)

Clears all projected obstructions.

* * *

[AABB](class_aabb.md#class-aabb) **get\_bounds**() [🔗](#class-navigationmeshsourcegeometrydata3d-method-get-bounds)

Returns an axis-aligned bounding box that covers all the stored geometry data. The bounds are calculated when calling this function with the result cached until further geometry changes are made.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_indices**() const [🔗](#class-navigationmeshsourcegeometrydata3d-method-get-indices)

Returns the parsed source geometry data indices array.

* * *

[Array](class_array.md#class-array) **get\_projected\_obstructions**() const [🔗](#class-navigationmeshsourcegeometrydata3d-method-get-projected-obstructions)

Returns the projected obstructions as an [Array](class_array.md#class-array) of dictionaries. Each [Dictionary](class_dictionary.md#class-dictionary) contains the following entries:

- `vertices` \- A [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) that defines the outline points of the projected shape.

- `elevation` \- A [float](class_float.md#class-float) that defines the projected shape placement on the y-axis.

- `height` \- A [float](class_float.md#class-float) that defines how much the projected shape is extruded along the y-axis.

- `carve` \- A [bool](class_bool.md#class-bool) that defines how the obstacle affects the navigation mesh baking. If `true` the projected shape will not be affected by addition offsets, e.g. agent radius.


* * *

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_vertices**() const [🔗](#class-navigationmeshsourcegeometrydata3d-method-get-vertices)

Returns the parsed source geometry data vertices array.

* * *

[bool](class_bool.md#class-bool) **has\_data**() [🔗](#class-navigationmeshsourcegeometrydata3d-method-has-data)

Returns `true` when parsed source geometry data exists.

* * *

void **merge**(other\_geometry: [NavigationMeshSourceGeometryData3D](#class-navigationmeshsourcegeometrydata3d)) [🔗](#class-navigationmeshsourcegeometrydata3d-method-merge)

Adds the geometry data of another **NavigationMeshSourceGeometryData3D** to the navigation mesh baking data.

* * *

void **set\_indices**(indices: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-navigationmeshsourcegeometrydata3d-method-set-indices)

Sets the parsed source geometry data indices. The indices need to be matched with appropriated vertices.

**Warning:** Inappropriate data can crash the baking process of the involved third-party libraries.

* * *

void **set\_projected\_obstructions**(projected\_obstructions: [Array](class_array.md#class-array)) [🔗](#class-navigationmeshsourcegeometrydata3d-method-set-projected-obstructions)

Sets the projected obstructions with an Array of Dictionaries with the following key value pairs:

GDScript

```
"vertices" : PackedFloat32Array
"elevation" : float
"height" : float
"carve" : bool

```

* * *

void **set\_vertices**(vertices: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-navigationmeshsourcegeometrydata3d-method-set-vertices)

Sets the parsed source geometry data vertices. The vertices need to be matched with appropriated indices.

**Warning:** Inappropriate data can crash the baking process of the involved third-party libraries.

[Previous](class_navigationmeshsourcegeometrydata2d.md "NavigationMeshSourceGeometryData2D") [Next](class_navigationpolygon.md "NavigationPolygon")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationmeshsourcegeometrydata2d.md "NavigationMeshSourceGeometryData2D") [Next](class_navigationpolygon.md "NavigationPolygon")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).