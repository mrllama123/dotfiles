---
title: ImporterMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_importermesh.html
crawled_at: "2026-08-13T10:32:02+12:00"
content_hash: cce0fbd9d8af568dd8e1dc1576beac0d9ae4178931592accae2cf362db5f46ff
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ImporterMesh

* * *

# ImporterMesh

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Resource](class_resource.md#class-resource) that contains vertex array-based geometry during the import process.

## Description

ImporterMesh is a type of [Resource](class_resource.md#class-resource) analogous to [ArrayMesh](class_arraymesh.md#class-arraymesh). It contains vertex array-based geometry, divided in _surfaces_. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.

Unlike its runtime counterpart, **ImporterMesh** contains mesh data before various import steps, such as lod and shadow mesh generation, have taken place. Modify surface data by calling [clear()](#class-importermesh-method-clear), followed by [add\_surface()](#class-importermesh-method-add-surface) for each surface.

## Methods

|     |     |
| --- | --- |
| void | [add\_blend\_shape](#class-importermesh-method-add-blend-shape)(name: [String](class_string.md#class-string)) |
| void | [add\_surface](#class-importermesh-method-add-surface)(primitive: [PrimitiveType](class_mesh.md#enum-mesh-primitivetype), arrays: [Array](class_array.md#class-array), blend\_shapes: [Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] = \[\], lods: [Dictionary](class_dictionary.md#class-dictionary) = {}, material: [Material](class_material.md#class-material) = null, name: [String](class_string.md#class-string) = "", flags: [int](class_int.md#class-int) = 0) |
| void | [clear](#class-importermesh-method-clear)() |
| void | [generate\_lods](#class-importermesh-method-generate-lods)(normal\_merge\_angle: [float](class_float.md#class-float), normal\_split\_angle: [float](class_float.md#class-float), bone\_transform\_array: [Array](class_array.md#class-array)) |
| [int](class_int.md#class-int) | [get\_blend\_shape\_count](#class-importermesh-method-get-blend-shape-count)() const |
| [BlendShapeMode](class_mesh.md#enum-mesh-blendshapemode) | [get\_blend\_shape\_mode](#class-importermesh-method-get-blend-shape-mode)() const |
| [String](class_string.md#class-string) | [get\_blend\_shape\_name](#class-importermesh-method-get-blend-shape-name)(blend\_shape\_idx: [int](class_int.md#class-int)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_lightmap\_size\_hint](#class-importermesh-method-get-lightmap-size-hint)() const |
| [ArrayMesh](class_arraymesh.md#class-arraymesh) | [get\_mesh](#class-importermesh-method-get-mesh)(base\_mesh: [ArrayMesh](class_arraymesh.md#class-arraymesh) = null) |
| [Array](class_array.md#class-array) | [get\_surface\_arrays](#class-importermesh-method-get-surface-arrays)(surface\_idx: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array) | [get\_surface\_blend\_shape\_arrays](#class-importermesh-method-get-surface-blend-shape-arrays)(surface\_idx: [int](class_int.md#class-int), blend\_shape\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_surface\_count](#class-importermesh-method-get-surface-count)() const |
| [int](class_int.md#class-int) | [get\_surface\_format](#class-importermesh-method-get-surface-format)(surface\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_surface\_lod\_count](#class-importermesh-method-get-surface-lod-count)(surface\_idx: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_surface\_lod\_indices](#class-importermesh-method-get-surface-lod-indices)(surface\_idx: [int](class_int.md#class-int), lod\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_surface\_lod\_size](#class-importermesh-method-get-surface-lod-size)(surface\_idx: [int](class_int.md#class-int), lod\_idx: [int](class_int.md#class-int)) const |
| [Material](class_material.md#class-material) | [get\_surface\_material](#class-importermesh-method-get-surface-material)(surface\_idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_surface\_name](#class-importermesh-method-get-surface-name)(surface\_idx: [int](class_int.md#class-int)) const |
| [PrimitiveType](class_mesh.md#enum-mesh-primitivetype) | [get\_surface\_primitive\_type](#class-importermesh-method-get-surface-primitive-type)(surface\_idx: [int](class_int.md#class-int)) |
| void | [set\_blend\_shape\_mode](#class-importermesh-method-set-blend-shape-mode)(mode: [BlendShapeMode](class_mesh.md#enum-mesh-blendshapemode)) |
| void | [set\_lightmap\_size\_hint](#class-importermesh-method-set-lightmap-size-hint)(size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [set\_surface\_material](#class-importermesh-method-set-surface-material)(surface\_idx: [int](class_int.md#class-int), material: [Material](class_material.md#class-material)) |
| void | [set\_surface\_name](#class-importermesh-method-set-surface-name)(surface\_idx: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |

* * *

## Method Descriptions

void **add\_blend\_shape**(name: [String](class_string.md#class-string)) [🔗](#class-importermesh-method-add-blend-shape)

Adds name for a blend shape that will be added with [add\_surface()](#class-importermesh-method-add-surface). Must be called before surface is added.

* * *

void **add\_surface**(primitive: [PrimitiveType](class_mesh.md#enum-mesh-primitivetype), arrays: [Array](class_array.md#class-array), blend\_shapes: [Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] = \[\], lods: [Dictionary](class_dictionary.md#class-dictionary) = {}, material: [Material](class_material.md#class-material) = null, name: [String](class_string.md#class-string) = "", flags: [int](class_int.md#class-int) = 0) [🔗](#class-importermesh-method-add-surface)

Creates a new surface. [Mesh.get\_surface\_count()](class_mesh.md#class-mesh-method-get-surface-count) will become the `surf_idx` for this new surface.

Surfaces are created to be rendered using a `primitive`, which may be any of the values defined in [PrimitiveType](class_mesh.md#enum-mesh-primitivetype).

The `arrays` argument is an array of arrays. Each of the [Mesh.ARRAY\_MAX](class_mesh.md#class-mesh-constant-array-max) elements contains an array with some of the mesh data for this surface as described by the corresponding member of [ArrayType](class_mesh.md#enum-mesh-arraytype) or `null` if it is not used by the surface. For example, `arrays[0]` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this surface into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array (or be an exact multiple of the vertex array's length, when multiple elements of a sub-array correspond to a single vertex) or be empty, except for [Mesh.ARRAY\_INDEX](class_mesh.md#class-mesh-constant-array-index) if it is used.

The `blend_shapes` argument is an array of vertex data for each blend shape. Each element is an array of the same structure as `arrays`, but [Mesh.ARRAY\_VERTEX](class_mesh.md#class-mesh-constant-array-vertex), [Mesh.ARRAY\_NORMAL](class_mesh.md#class-mesh-constant-array-normal), and [Mesh.ARRAY\_TANGENT](class_mesh.md#class-mesh-constant-array-tangent) are set if and only if they are set in `arrays` and all other entries are `null`.

The `lods` argument is a dictionary with [float](class_float.md#class-float) keys and [PackedInt32Array](class_packedint32array.md#class-packedint32array) values. Each entry in the dictionary represents an LOD level of the surface, where the value is the [Mesh.ARRAY\_INDEX](class_mesh.md#class-mesh-constant-array-index) array to use for the LOD level and the key is roughly proportional to the distance at which the LOD stats being used. I.e., increasing the key of an LOD also increases the distance that the objects has to be from the camera before the LOD is used.

The `flags` argument is the bitwise OR of, as required: One value of [ArrayCustomFormat](class_mesh.md#enum-mesh-arraycustomformat) left shifted by `ARRAY_FORMAT_CUSTOMn_SHIFT` for each custom channel in use, [Mesh.ARRAY\_FLAG\_USE\_DYNAMIC\_UPDATE](class_mesh.md#class-mesh-constant-array-flag-use-dynamic-update), [Mesh.ARRAY\_FLAG\_USE\_8\_BONE\_WEIGHTS](class_mesh.md#class-mesh-constant-array-flag-use-8-bone-weights), or [Mesh.ARRAY\_FLAG\_USES\_EMPTY\_VERTEX\_ARRAY](class_mesh.md#class-mesh-constant-array-flag-uses-empty-vertex-array).

**Note:** When using indices, it is recommended to only use points, lines, or triangles.

* * *

void **clear**() [🔗](#class-importermesh-method-clear)

Removes all surfaces and blend shapes from this **ImporterMesh**.

* * *

void **generate\_lods**(normal\_merge\_angle: [float](class_float.md#class-float), normal\_split\_angle: [float](class_float.md#class-float), bone\_transform\_array: [Array](class_array.md#class-array)) [🔗](#class-importermesh-method-generate-lods)

Generates all lods for this ImporterMesh.

`normal_merge_angle` is in degrees and used in the same way as the importer settings in `lods`.

`normal_split_angle` is not used and only remains for compatibility with older versions of the API.

The number of generated lods can be accessed using [get\_surface\_lod\_count()](#class-importermesh-method-get-surface-lod-count), and each LOD is available in [get\_surface\_lod\_size()](#class-importermesh-method-get-surface-lod-size) and [get\_surface\_lod\_indices()](#class-importermesh-method-get-surface-lod-indices).

`bone_transform_array` is an [Array](class_array.md#class-array) which can be either empty or contain [Transform3D](class_transform3d.md#class-transform3d) s which, for each of the mesh's bone IDs, will apply mesh skinning when generating the LOD mesh variations. This is usually used to account for discrepancies in scale between the mesh itself and its skinning data.

* * *

[int](class_int.md#class-int) **get\_blend\_shape\_count**() const [🔗](#class-importermesh-method-get-blend-shape-count)

Returns the number of blend shapes that the mesh holds.

* * *

[BlendShapeMode](class_mesh.md#enum-mesh-blendshapemode) **get\_blend\_shape\_mode**() const [🔗](#class-importermesh-method-get-blend-shape-mode)

Returns the blend shape mode for this Mesh.

* * *

[String](class_string.md#class-string) **get\_blend\_shape\_name**(blend\_shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-importermesh-method-get-blend-shape-name)

Returns the name of the blend shape at this index.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_lightmap\_size\_hint**() const [🔗](#class-importermesh-method-get-lightmap-size-hint)

Returns the size hint of this mesh for lightmap-unwrapping in UV-space.

* * *

[ArrayMesh](class_arraymesh.md#class-arraymesh) **get\_mesh**(base\_mesh: [ArrayMesh](class_arraymesh.md#class-arraymesh) = null) [🔗](#class-importermesh-method-get-mesh)

Returns the mesh data represented by this **ImporterMesh** as a usable [ArrayMesh](class_arraymesh.md#class-arraymesh).

This method caches the returned mesh, and subsequent calls will return the cached data until [clear()](#class-importermesh-method-clear) is called.

If not yet cached and `base_mesh` is provided, `base_mesh` will be used and mutated.

* * *

[Array](class_array.md#class-array) **get\_surface\_arrays**(surface\_idx: [int](class_int.md#class-int)) const [🔗](#class-importermesh-method-get-surface-arrays)

Returns the arrays for the vertices, normals, UVs, etc. that make up the requested surface. See [add\_surface()](#class-importermesh-method-add-surface).

* * *

[Array](class_array.md#class-array) **get\_surface\_blend\_shape\_arrays**(surface\_idx: [int](class_int.md#class-int), blend\_shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-importermesh-method-get-surface-blend-shape-arrays)

Returns a single set of blend shape arrays for the requested blend shape index for a surface.

* * *

[int](class_int.md#class-int) **get\_surface\_count**() const [🔗](#class-importermesh-method-get-surface-count)

Returns the number of surfaces that the mesh holds.

* * *

[int](class_int.md#class-int) **get\_surface\_format**(surface\_idx: [int](class_int.md#class-int)) const [🔗](#class-importermesh-method-get-surface-format)

Returns the format of the surface that the mesh holds.

* * *

[int](class_int.md#class-int) **get\_surface\_lod\_count**(surface\_idx: [int](class_int.md#class-int)) const [🔗](#class-importermesh-method-get-surface-lod-count)

Returns the number of lods that the mesh holds on a given surface.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_surface\_lod\_indices**(surface\_idx: [int](class_int.md#class-int), lod\_idx: [int](class_int.md#class-int)) const [🔗](#class-importermesh-method-get-surface-lod-indices)

Returns the index buffer of a lod for a surface.

* * *

[float](class_float.md#class-float) **get\_surface\_lod\_size**(surface\_idx: [int](class_int.md#class-int), lod\_idx: [int](class_int.md#class-int)) const [🔗](#class-importermesh-method-get-surface-lod-size)

Returns the screen ratio which activates a lod for a surface.

* * *

[Material](class_material.md#class-material) **get\_surface\_material**(surface\_idx: [int](class_int.md#class-int)) const [🔗](#class-importermesh-method-get-surface-material)

Returns a [Material](class_material.md#class-material) in a given surface. Surface is rendered using this material.

* * *

[String](class_string.md#class-string) **get\_surface\_name**(surface\_idx: [int](class_int.md#class-int)) const [🔗](#class-importermesh-method-get-surface-name)

Gets the name assigned to this surface.

* * *

[PrimitiveType](class_mesh.md#enum-mesh-primitivetype) **get\_surface\_primitive\_type**(surface\_idx: [int](class_int.md#class-int)) [🔗](#class-importermesh-method-get-surface-primitive-type)

Returns the primitive type of the requested surface (see [add\_surface()](#class-importermesh-method-add-surface)).

* * *

void **set\_blend\_shape\_mode**(mode: [BlendShapeMode](class_mesh.md#enum-mesh-blendshapemode)) [🔗](#class-importermesh-method-set-blend-shape-mode)

Sets the blend shape mode.

* * *

void **set\_lightmap\_size\_hint**(size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-importermesh-method-set-lightmap-size-hint)

Sets the size hint of this mesh for lightmap-unwrapping in UV-space.

* * *

void **set\_surface\_material**(surface\_idx: [int](class_int.md#class-int), material: [Material](class_material.md#class-material)) [🔗](#class-importermesh-method-set-surface-material)

Sets a [Material](class_material.md#class-material) for a given surface. Surface will be rendered using this material.

* * *

void **set\_surface\_name**(surface\_idx: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-importermesh-method-set-surface-name)

Sets a name for a given surface.

[Previous](class_immediatemesh.md "ImmediateMesh") [Next](class_inputevent.md "InputEvent")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_immediatemesh.md "ImmediateMesh") [Next](class_inputevent.md "InputEvent")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).