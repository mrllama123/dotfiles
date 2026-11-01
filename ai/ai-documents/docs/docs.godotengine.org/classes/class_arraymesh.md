---
title: ArrayMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_arraymesh.html
crawled_at: "2026-08-13T10:19:41+12:00"
content_hash: eecb4b5ab7d8a1d189f2e70149098f1c9241b481ecbc9a009fe8b592e6ec165d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ArrayMesh

* * *

# ArrayMesh

**Inherits:** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

[Mesh](class_mesh.md#class-mesh) type that provides utility for constructing a surface from arrays.

## Description

The **ArrayMesh** is used to construct a [Mesh](class_mesh.md#class-mesh) by specifying the attributes as arrays.

The most basic example is the creation of a single triangle:

GDScriptC#

```
var vertices = PackedVector3Array()
vertices.push_back(Vector3(0, 1, 0))
vertices.push_back(Vector3(1, 0, 0))
vertices.push_back(Vector3(0, 0, 1))

# Initialize the ArrayMesh.
var arr_mesh = ArrayMesh.new()
var arrays = []
arrays.resize(Mesh.ARRAY_MAX)
arrays[Mesh.ARRAY_VERTEX] = vertices

# Create the Mesh.
arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
var m = MeshInstance3D.new()
m.mesh = arr_mesh

```

```
Vector3[] vertices =
[
    new Vector3(0, 1, 0),
    new Vector3(1, 0, 0),
    new Vector3(0, 0, 1),
];

// Initialize the ArrayMesh.
var arrMesh = new ArrayMesh();
Godot.Collections.Array arrays = [];
arrays.Resize((int)Mesh.ArrayType.Max);
arrays[(int)Mesh.ArrayType.Vertex] = vertices;

// Create the Mesh.
arrMesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, arrays);
var m = new MeshInstance3D();
m.Mesh = arrMesh;

```

The [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) is ready to be added to the [SceneTree](class_scenetree.md#class-scenetree) to be shown.

See also [ImmediateMesh](class_immediatemesh.md#class-immediatemesh), [MeshDataTool](class_meshdatatool.md#class-meshdatatool) and [SurfaceTool](class_surfacetool.md#class-surfacetool) for procedural geometry generation.

**Note:** Godot uses clockwise [winding order](https://learnopengl.com/Advanced-OpenGL/Face-culling) for front faces of triangle primitive modes.

## Tutorials

- [Procedural geometry using the ArrayMesh](../tutorials/3d/procedural_geometry/arraymesh.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [BlendShapeMode](class_mesh.md#enum-mesh-blendshapemode) | [blend\_shape\_mode](#class-arraymesh-property-blend-shape-mode) | `1` |
| [AABB](class_aabb.md#class-aabb) | [custom\_aabb](#class-arraymesh-property-custom-aabb) | `AABB(0, 0, 0, 0, 0, 0)` |
| [ArrayMesh](#class-arraymesh) | [shadow\_mesh](#class-arraymesh-property-shadow-mesh) |  |

## Methods

|     |     |
| --- | --- |
| void | [add\_blend\_shape](#class-arraymesh-method-add-blend-shape)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [add\_surface\_from\_arrays](#class-arraymesh-method-add-surface-from-arrays)(primitive: [PrimitiveType](class_mesh.md#enum-mesh-primitivetype), arrays: [Array](class_array.md#class-array), blend\_shapes: [Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] = \[\], lods: [Dictionary](class_dictionary.md#class-dictionary) = {}, flags: BitField\[ [ArrayFormat](class_mesh.md#enum-mesh-arrayformat)\] = 0) |
| void | [clear\_blend\_shapes](#class-arraymesh-method-clear-blend-shapes)() |
| void | [clear\_surfaces](#class-arraymesh-method-clear-surfaces)() |
| [int](class_int.md#class-int) | [get\_blend\_shape\_count](#class-arraymesh-method-get-blend-shape-count)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_blend\_shape\_name](#class-arraymesh-method-get-blend-shape-name)(index: [int](class_int.md#class-int)) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [lightmap\_unwrap](#class-arraymesh-method-lightmap-unwrap)(transform: [Transform3D](class_transform3d.md#class-transform3d), texel\_size: [float](class_float.md#class-float)) |
| void | [regen\_normal\_maps](#class-arraymesh-method-regen-normal-maps)() |
| void | [set\_blend\_shape\_name](#class-arraymesh-method-set-blend-shape-name)(index: [int](class_int.md#class-int), name: [StringName](class_stringname.md#class-stringname)) |
| [int](class_int.md#class-int) | [surface\_find\_by\_name](#class-arraymesh-method-surface-find-by-name)(name: [String](class_string.md#class-string)) const |
| [int](class_int.md#class-int) | [surface\_get\_array\_index\_len](#class-arraymesh-method-surface-get-array-index-len)(surf\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [surface\_get\_array\_len](#class-arraymesh-method-surface-get-array-len)(surf\_idx: [int](class_int.md#class-int)) const |
| BitField\[ [ArrayFormat](class_mesh.md#enum-mesh-arrayformat)\] | [surface\_get\_format](#class-arraymesh-method-surface-get-format)(surf\_idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [surface\_get\_name](#class-arraymesh-method-surface-get-name)(surf\_idx: [int](class_int.md#class-int)) const |
| [PrimitiveType](class_mesh.md#enum-mesh-primitivetype) | [surface\_get\_primitive\_type](#class-arraymesh-method-surface-get-primitive-type)(surf\_idx: [int](class_int.md#class-int)) const |
| void | [surface\_remove](#class-arraymesh-method-surface-remove)(surf\_idx: [int](class_int.md#class-int)) |
| void | [surface\_set\_name](#class-arraymesh-method-surface-set-name)(surf\_idx: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [surface\_update\_attribute\_region](#class-arraymesh-method-surface-update-attribute-region)(surf\_idx: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [surface\_update\_skin\_region](#class-arraymesh-method-surface-update-skin-region)(surf\_idx: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [surface\_update\_vertex\_region](#class-arraymesh-method-surface-update-vertex-region)(surf\_idx: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |

* * *

## Property Descriptions

[BlendShapeMode](class_mesh.md#enum-mesh-blendshapemode) **blend\_shape\_mode** = `1` [🔗](#class-arraymesh-property-blend-shape-mode)

- void **set\_blend\_shape\_mode**(value: [BlendShapeMode](class_mesh.md#enum-mesh-blendshapemode))

- [BlendShapeMode](class_mesh.md#enum-mesh-blendshapemode) **get\_blend\_shape\_mode**()


The blend shape mode.

* * *

[AABB](class_aabb.md#class-aabb) **custom\_aabb** = `AABB(0, 0, 0, 0, 0, 0)` [🔗](#class-arraymesh-property-custom-aabb)

- void **set\_custom\_aabb**(value: [AABB](class_aabb.md#class-aabb))

- [AABB](class_aabb.md#class-aabb) **get\_custom\_aabb**()


Overrides the [AABB](class_aabb.md#class-aabb) with one defined by user for use with frustum culling. Especially useful to avoid unexpected culling when using a shader to offset vertices.

* * *

[ArrayMesh](#class-arraymesh) **shadow\_mesh** [🔗](#class-arraymesh-property-shadow-mesh)

- void **set\_shadow\_mesh**(value: [ArrayMesh](#class-arraymesh))

- [ArrayMesh](#class-arraymesh) **get\_shadow\_mesh**()


An optional mesh which can be used for rendering shadows and the depth prepass. Can be used to increase performance by supplying a mesh with fused vertices and only vertex position data (without normals, UVs, colors, etc.).

**Note:** This mesh must have exactly the same vertex positions as the source mesh (including the source mesh's LODs, if present). If vertex positions differ, then the mesh will not draw correctly.

* * *

## Method Descriptions

void **add\_blend\_shape**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-arraymesh-method-add-blend-shape)

Adds name for a blend shape that will be added with [add\_surface\_from\_arrays()](#class-arraymesh-method-add-surface-from-arrays). Must be called before surface is added.

* * *

void **add\_surface\_from\_arrays**(primitive: [PrimitiveType](class_mesh.md#enum-mesh-primitivetype), arrays: [Array](class_array.md#class-array), blend\_shapes: [Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] = \[\], lods: [Dictionary](class_dictionary.md#class-dictionary) = {}, flags: BitField\[ [ArrayFormat](class_mesh.md#enum-mesh-arrayformat)\] = 0) [🔗](#class-arraymesh-method-add-surface-from-arrays)

Creates a new surface. [Mesh.get\_surface\_count()](class_mesh.md#class-mesh-method-get-surface-count) will become the `surf_idx` for this new surface.

Surfaces are created to be rendered using a `primitive`, which may be any of the values defined in [PrimitiveType](class_mesh.md#enum-mesh-primitivetype).

The `arrays` argument is an array of arrays. Each of the [Mesh.ARRAY\_MAX](class_mesh.md#class-mesh-constant-array-max) elements contains an array with some of the mesh data for this surface as described by the corresponding member of [ArrayType](class_mesh.md#enum-mesh-arraytype) or `null` if it is not used by the surface. For example, `arrays[0]` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this surface into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array (or be an exact multiple of the vertex array's length, when multiple elements of a sub-array correspond to a single vertex) or be empty, except for [Mesh.ARRAY\_INDEX](class_mesh.md#class-mesh-constant-array-index) if it is used.

The `blend_shapes` argument is an array of vertex data for each blend shape. Each element is an array of the same structure as `arrays`, but [Mesh.ARRAY\_VERTEX](class_mesh.md#class-mesh-constant-array-vertex), [Mesh.ARRAY\_NORMAL](class_mesh.md#class-mesh-constant-array-normal), and [Mesh.ARRAY\_TANGENT](class_mesh.md#class-mesh-constant-array-tangent) are set if and only if they are set in `arrays` and all other entries are `null`.

The `lods` argument is a dictionary with [float](class_float.md#class-float) keys and [PackedInt32Array](class_packedint32array.md#class-packedint32array) values. Each entry in the dictionary represents an LOD level of the surface, where the value is the [Mesh.ARRAY\_INDEX](class_mesh.md#class-mesh-constant-array-index) array to use for the LOD level and the key is roughly proportional to the distance at which the LOD stats being used. I.e., increasing the key of an LOD also increases the distance that the objects has to be from the camera before the LOD is used.

The `flags` argument is the bitwise OR of, as required: One value of [ArrayCustomFormat](class_mesh.md#enum-mesh-arraycustomformat) left shifted by `ARRAY_FORMAT_CUSTOMn_SHIFT` for each custom channel in use, [Mesh.ARRAY\_FLAG\_USE\_DYNAMIC\_UPDATE](class_mesh.md#class-mesh-constant-array-flag-use-dynamic-update), [Mesh.ARRAY\_FLAG\_USE\_8\_BONE\_WEIGHTS](class_mesh.md#class-mesh-constant-array-flag-use-8-bone-weights), or [Mesh.ARRAY\_FLAG\_USES\_EMPTY\_VERTEX\_ARRAY](class_mesh.md#class-mesh-constant-array-flag-uses-empty-vertex-array).

**Note:** When using indices, it is recommended to only use points, lines, or triangles.

* * *

void **clear\_blend\_shapes**() [🔗](#class-arraymesh-method-clear-blend-shapes)

Removes all blend shapes from this **ArrayMesh**.

* * *

void **clear\_surfaces**() [🔗](#class-arraymesh-method-clear-surfaces)

Removes all surfaces from this **ArrayMesh**.

* * *

[int](class_int.md#class-int) **get\_blend\_shape\_count**() const [🔗](#class-arraymesh-method-get-blend-shape-count)

Returns the number of blend shapes that the **ArrayMesh** holds.

* * *

[StringName](class_stringname.md#class-stringname) **get\_blend\_shape\_name**(index: [int](class_int.md#class-int)) const [🔗](#class-arraymesh-method-get-blend-shape-name)

Returns the name of the blend shape at this index.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **lightmap\_unwrap**(transform: [Transform3D](class_transform3d.md#class-transform3d), texel\_size: [float](class_float.md#class-float)) [🔗](#class-arraymesh-method-lightmap-unwrap)

Performs a UV unwrap on the **ArrayMesh** to prepare the mesh for lightmapping.

* * *

void **regen\_normal\_maps**() [🔗](#class-arraymesh-method-regen-normal-maps)

Regenerates tangents for each of the **ArrayMesh**'s surfaces.

* * *

void **set\_blend\_shape\_name**(index: [int](class_int.md#class-int), name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-arraymesh-method-set-blend-shape-name)

Sets the name of the blend shape at this index.

* * *

[int](class_int.md#class-int) **surface\_find\_by\_name**(name: [String](class_string.md#class-string)) const [🔗](#class-arraymesh-method-surface-find-by-name)

Returns the index of the first surface with this name held within this **ArrayMesh**. If none are found, -1 is returned.

* * *

[int](class_int.md#class-int) **surface\_get\_array\_index\_len**(surf\_idx: [int](class_int.md#class-int)) const [🔗](#class-arraymesh-method-surface-get-array-index-len)

Returns the length in indices of the index array in the requested surface (see [add\_surface\_from\_arrays()](#class-arraymesh-method-add-surface-from-arrays)).

* * *

[int](class_int.md#class-int) **surface\_get\_array\_len**(surf\_idx: [int](class_int.md#class-int)) const [🔗](#class-arraymesh-method-surface-get-array-len)

Returns the length in vertices of the vertex array in the requested surface (see [add\_surface\_from\_arrays()](#class-arraymesh-method-add-surface-from-arrays)).

* * *

BitField\[ [ArrayFormat](class_mesh.md#enum-mesh-arrayformat)\] **surface\_get\_format**(surf\_idx: [int](class_int.md#class-int)) const [🔗](#class-arraymesh-method-surface-get-format)

Returns the format mask of the requested surface (see [add\_surface\_from\_arrays()](#class-arraymesh-method-add-surface-from-arrays)).

* * *

[String](class_string.md#class-string) **surface\_get\_name**(surf\_idx: [int](class_int.md#class-int)) const [🔗](#class-arraymesh-method-surface-get-name)

Gets the name assigned to this surface.

* * *

[PrimitiveType](class_mesh.md#enum-mesh-primitivetype) **surface\_get\_primitive\_type**(surf\_idx: [int](class_int.md#class-int)) const [🔗](#class-arraymesh-method-surface-get-primitive-type)

Returns the primitive type of the requested surface (see [add\_surface\_from\_arrays()](#class-arraymesh-method-add-surface-from-arrays)).

* * *

void **surface\_remove**(surf\_idx: [int](class_int.md#class-int)) [🔗](#class-arraymesh-method-surface-remove)

Removes the surface at the given index from the Mesh, shifting surfaces with higher index down by one.

* * *

void **surface\_set\_name**(surf\_idx: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-arraymesh-method-surface-set-name)

Sets a name for a given surface.

* * *

void **surface\_update\_attribute\_region**(surf\_idx: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-arraymesh-method-surface-update-attribute-region)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **surface\_update\_skin\_region**(surf\_idx: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-arraymesh-method-surface-update-skin-region)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **surface\_update\_vertex\_region**(surf\_idx: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-arraymesh-method-surface-update-vertex-region)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_animationrootnode.md "AnimationRootNode") [Next](class_arrayoccluder3d.md "ArrayOccluder3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationrootnode.md "AnimationRootNode") [Next](class_arrayoccluder3d.md "ArrayOccluder3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).