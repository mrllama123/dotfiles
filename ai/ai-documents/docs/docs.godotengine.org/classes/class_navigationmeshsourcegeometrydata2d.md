---
title: NavigationMeshSourceGeometryData2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationmeshsourcegeometrydata2d.html
crawled_at: "2026-08-13T10:19:16+12:00"
content_hash: 3c3cdb7ff6d1dcb104a92e556bb41802129dada17dae57db416ddf30a9a15760
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationMeshSourceGeometryData2D

* * *

# NavigationMeshSourceGeometryData2D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Container for parsed source geometry data used in navigation mesh baking.

## Description

Container for parsed source geometry data used in navigation mesh baking.

## Methods

|     |     |
| --- | --- |
| void | [add\_obstruction\_outline](#class-navigationmeshsourcegeometrydata2d-method-add-obstruction-outline)(shape\_outline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| void | [add\_projected\_obstruction](#class-navigationmeshsourcegeometrydata2d-method-add-projected-obstruction)(vertices: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), carve: [bool](class_bool.md#class-bool)) |
| void | [add\_traversable\_outline](#class-navigationmeshsourcegeometrydata2d-method-add-traversable-outline)(shape\_outline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| void | [append\_obstruction\_outlines](#class-navigationmeshsourcegeometrydata2d-method-append-obstruction-outlines)(obstruction\_outlines: [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\]) |
| void | [append\_traversable\_outlines](#class-navigationmeshsourcegeometrydata2d-method-append-traversable-outlines)(traversable\_outlines: [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\]) |
| void | [clear](#class-navigationmeshsourcegeometrydata2d-method-clear)() |
| void | [clear\_projected\_obstructions](#class-navigationmeshsourcegeometrydata2d-method-clear-projected-obstructions)() |
| [Rect2](class_rect2.md#class-rect2) | [get\_bounds](#class-navigationmeshsourcegeometrydata2d-method-get-bounds)() |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [get\_obstruction\_outlines](#class-navigationmeshsourcegeometrydata2d-method-get-obstruction-outlines)() const |
| [Array](class_array.md#class-array) | [get\_projected\_obstructions](#class-navigationmeshsourcegeometrydata2d-method-get-projected-obstructions)() const |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [get\_traversable\_outlines](#class-navigationmeshsourcegeometrydata2d-method-get-traversable-outlines)() const |
| [bool](class_bool.md#class-bool) | [has\_data](#class-navigationmeshsourcegeometrydata2d-method-has-data)() |
| void | [merge](#class-navigationmeshsourcegeometrydata2d-method-merge)(other\_geometry: [NavigationMeshSourceGeometryData2D](#class-navigationmeshsourcegeometrydata2d)) |
| void | [set\_obstruction\_outlines](#class-navigationmeshsourcegeometrydata2d-method-set-obstruction-outlines)(obstruction\_outlines: [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\]) |
| void | [set\_projected\_obstructions](#class-navigationmeshsourcegeometrydata2d-method-set-projected-obstructions)(projected\_obstructions: [Array](class_array.md#class-array)) |
| void | [set\_traversable\_outlines](#class-navigationmeshsourcegeometrydata2d-method-set-traversable-outlines)(traversable\_outlines: [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\]) |

* * *

## Method Descriptions

void **add\_obstruction\_outline**(shape\_outline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-navigationmeshsourcegeometrydata2d-method-add-obstruction-outline)

Adds the outline points of a shape as obstructed area.

* * *

void **add\_projected\_obstruction**(vertices: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), carve: [bool](class_bool.md#class-bool)) [🔗](#class-navigationmeshsourcegeometrydata2d-method-add-projected-obstruction)

Adds a projected obstruction shape to the source geometry. If `carve` is `true` the carved shape will not be affected by additional offsets (e.g. agent radius) of the navigation mesh baking process.

* * *

void **add\_traversable\_outline**(shape\_outline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-navigationmeshsourcegeometrydata2d-method-add-traversable-outline)

Adds the outline points of a shape as traversable area.

* * *

void **append\_obstruction\_outlines**(obstruction\_outlines: [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\]) [🔗](#class-navigationmeshsourcegeometrydata2d-method-append-obstruction-outlines)

Appends another array of `obstruction_outlines` at the end of the existing obstruction outlines array.

* * *

void **append\_traversable\_outlines**(traversable\_outlines: [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\]) [🔗](#class-navigationmeshsourcegeometrydata2d-method-append-traversable-outlines)

Appends another array of `traversable_outlines` at the end of the existing traversable outlines array.

* * *

void **clear**() [🔗](#class-navigationmeshsourcegeometrydata2d-method-clear)

Clears the internal data.

* * *

void **clear\_projected\_obstructions**() [🔗](#class-navigationmeshsourcegeometrydata2d-method-clear-projected-obstructions)

Clears all projected obstructions.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_bounds**() [🔗](#class-navigationmeshsourcegeometrydata2d-method-get-bounds)

Returns an axis-aligned bounding box that covers all the stored geometry data. The bounds are calculated when calling this function with the result cached until further geometry changes are made.

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **get\_obstruction\_outlines**() const [🔗](#class-navigationmeshsourcegeometrydata2d-method-get-obstruction-outlines)

Returns all the obstructed area outlines arrays.

* * *

[Array](class_array.md#class-array) **get\_projected\_obstructions**() const [🔗](#class-navigationmeshsourcegeometrydata2d-method-get-projected-obstructions)

Returns the projected obstructions as an [Array](class_array.md#class-array) of dictionaries. Each [Dictionary](class_dictionary.md#class-dictionary) contains the following entries:

- `vertices` \- A [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) that defines the outline points of the projected shape.

- `carve` \- A [bool](class_bool.md#class-bool) that defines how the projected shape affects the navigation mesh baking. If `true` the projected shape will not be affected by addition offsets, e.g. agent radius.


* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **get\_traversable\_outlines**() const [🔗](#class-navigationmeshsourcegeometrydata2d-method-get-traversable-outlines)

Returns all the traversable area outlines arrays.

* * *

[bool](class_bool.md#class-bool) **has\_data**() [🔗](#class-navigationmeshsourcegeometrydata2d-method-has-data)

Returns `true` when parsed source geometry data exists.

* * *

void **merge**(other\_geometry: [NavigationMeshSourceGeometryData2D](#class-navigationmeshsourcegeometrydata2d)) [🔗](#class-navigationmeshsourcegeometrydata2d-method-merge)

Adds the geometry data of another **NavigationMeshSourceGeometryData2D** to the navigation mesh baking data.

* * *

void **set\_obstruction\_outlines**(obstruction\_outlines: [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\]) [🔗](#class-navigationmeshsourcegeometrydata2d-method-set-obstruction-outlines)

Sets all the obstructed area outlines arrays.

* * *

void **set\_projected\_obstructions**(projected\_obstructions: [Array](class_array.md#class-array)) [🔗](#class-navigationmeshsourcegeometrydata2d-method-set-projected-obstructions)

Sets the projected obstructions with an Array of Dictionaries with the following key value pairs:

GDScript

```
"vertices" : PackedFloat32Array
"carve" : bool

```

* * *

void **set\_traversable\_outlines**(traversable\_outlines: [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\]) [🔗](#class-navigationmeshsourcegeometrydata2d-method-set-traversable-outlines)

Sets all the traversable area outlines arrays.

[Previous](class_navigationmesh.md "NavigationMesh") [Next](class_navigationmeshsourcegeometrydata3d.md "NavigationMeshSourceGeometryData3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationmesh.md "NavigationMesh") [Next](class_navigationmeshsourcegeometrydata3d.md "NavigationMeshSourceGeometryData3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).