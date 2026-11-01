---
title: MeshDataTool — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_meshdatatool.html
crawled_at: "2026-08-13T10:26:57+12:00"
content_hash: c7eb2bea1beb6a7e310de93a07bd4dc342de9230a89b030e08067620ddc50812
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MeshDataTool

* * *

# MeshDataTool

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Helper tool to access and edit [Mesh](class_mesh.md#class-mesh) data.

## Description

MeshDataTool provides access to individual vertices in a [Mesh](class_mesh.md#class-mesh). It allows users to read and edit vertex data of meshes. It also creates an array of faces and edges.

To use MeshDataTool, load a mesh with [create\_from\_surface()](#class-meshdatatool-method-create-from-surface). When you are finished editing the data commit the data to a mesh with [commit\_to\_surface()](#class-meshdatatool-method-commit-to-surface).

Below is an example of how MeshDataTool may be used.

GDScriptC#

```
var mesh = ArrayMesh.new()
mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, BoxMesh.new().get_mesh_arrays())
var mdt = MeshDataTool.new()
mdt.create_from_surface(mesh, 0)
for i in range(mdt.get_vertex_count()):
    var vertex = mdt.get_vertex(i)
    # In this example we extend the mesh by one unit, which results in separated faces as it is flat shaded.
    vertex += mdt.get_vertex_normal(i)
    # Save your change.
    mdt.set_vertex(i, vertex)
mesh.clear_surfaces()
mdt.commit_to_surface(mesh)
var mi = MeshInstance.new()
mi.mesh = mesh
add_child(mi)

```

```
var mesh = new ArrayMesh();
mesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, new BoxMesh().GetMeshArrays());
var mdt = new MeshDataTool();
mdt.CreateFromSurface(mesh, 0);
for (var i = 0; i < mdt.GetVertexCount(); i++)
{
    Vector3 vertex = mdt.GetVertex(i);
    // In this example we extend the mesh by one unit, which results in separated faces as it is flat shaded.
    vertex += mdt.GetVertexNormal(i);
    // Save your change.
    mdt.SetVertex(i, vertex);
}
mesh.ClearSurfaces();
mdt.CommitToSurface(mesh);
var mi = new MeshInstance();
mi.Mesh = mesh;
AddChild(mi);

```

See also [ArrayMesh](class_arraymesh.md#class-arraymesh), [ImmediateMesh](class_immediatemesh.md#class-immediatemesh) and [SurfaceTool](class_surfacetool.md#class-surfacetool) for procedural geometry generation.

**Note:** Godot uses clockwise [winding order](https://learnopengl.com/Advanced-OpenGL/Face-culling) for front faces of triangle primitive modes.

## Tutorials

- [Using the MeshDataTool](../tutorials/3d/procedural_geometry/meshdatatool.md)


## Methods

|     |     |
| --- | --- |
| void | [clear](#class-meshdatatool-method-clear)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [commit\_to\_surface](#class-meshdatatool-method-commit-to-surface)(mesh: [ArrayMesh](class_arraymesh.md#class-arraymesh), compression\_flags: [int](class_int.md#class-int) = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_from\_surface](#class-meshdatatool-method-create-from-surface)(mesh: [ArrayMesh](class_arraymesh.md#class-arraymesh), surface: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_edge\_count](#class-meshdatatool-method-get-edge-count)() const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_edge\_faces](#class-meshdatatool-method-get-edge-faces)(idx: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_edge\_meta](#class-meshdatatool-method-get-edge-meta)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_edge\_vertex](#class-meshdatatool-method-get-edge-vertex)(idx: [int](class_int.md#class-int), vertex: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_face\_count](#class-meshdatatool-method-get-face-count)() const |
| [int](class_int.md#class-int) | [get\_face\_edge](#class-meshdatatool-method-get-face-edge)(idx: [int](class_int.md#class-int), edge: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_face\_meta](#class-meshdatatool-method-get-face-meta)(idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_face\_normal](#class-meshdatatool-method-get-face-normal)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_face\_vertex](#class-meshdatatool-method-get-face-vertex)(idx: [int](class_int.md#class-int), vertex: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_format](#class-meshdatatool-method-get-format)() const |
| [Material](class_material.md#class-material) | [get\_material](#class-meshdatatool-method-get-material)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_vertex](#class-meshdatatool-method-get-vertex)(idx: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_vertex\_bones](#class-meshdatatool-method-get-vertex-bones)(idx: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_vertex\_color](#class-meshdatatool-method-get-vertex-color)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_vertex\_count](#class-meshdatatool-method-get-vertex-count)() const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_vertex\_edges](#class-meshdatatool-method-get-vertex-edges)(idx: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_vertex\_faces](#class-meshdatatool-method-get-vertex-faces)(idx: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_vertex\_meta](#class-meshdatatool-method-get-vertex-meta)(idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_vertex\_normal](#class-meshdatatool-method-get-vertex-normal)(idx: [int](class_int.md#class-int)) const |
| [Plane](class_plane.md#class-plane) | [get\_vertex\_tangent](#class-meshdatatool-method-get-vertex-tangent)(idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_vertex\_uv](#class-meshdatatool-method-get-vertex-uv)(idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_vertex\_uv2](#class-meshdatatool-method-get-vertex-uv2)(idx: [int](class_int.md#class-int)) const |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [get\_vertex\_weights](#class-meshdatatool-method-get-vertex-weights)(idx: [int](class_int.md#class-int)) const |
| void | [set\_edge\_meta](#class-meshdatatool-method-set-edge-meta)(idx: [int](class_int.md#class-int), meta: [Variant](class_variant.md#class-variant)) |
| void | [set\_face\_meta](#class-meshdatatool-method-set-face-meta)(idx: [int](class_int.md#class-int), meta: [Variant](class_variant.md#class-variant)) |
| void | [set\_material](#class-meshdatatool-method-set-material)(material: [Material](class_material.md#class-material)) |
| void | [set\_vertex](#class-meshdatatool-method-set-vertex)(idx: [int](class_int.md#class-int), vertex: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_vertex\_bones](#class-meshdatatool-method-set-vertex-bones)(idx: [int](class_int.md#class-int), bones: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| void | [set\_vertex\_color](#class-meshdatatool-method-set-vertex-color)(idx: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_vertex\_meta](#class-meshdatatool-method-set-vertex-meta)(idx: [int](class_int.md#class-int), meta: [Variant](class_variant.md#class-variant)) |
| void | [set\_vertex\_normal](#class-meshdatatool-method-set-vertex-normal)(idx: [int](class_int.md#class-int), normal: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_vertex\_tangent](#class-meshdatatool-method-set-vertex-tangent)(idx: [int](class_int.md#class-int), tangent: [Plane](class_plane.md#class-plane)) |
| void | [set\_vertex\_uv](#class-meshdatatool-method-set-vertex-uv)(idx: [int](class_int.md#class-int), uv: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_vertex\_uv2](#class-meshdatatool-method-set-vertex-uv2)(idx: [int](class_int.md#class-int), uv2: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_vertex\_weights](#class-meshdatatool-method-set-vertex-weights)(idx: [int](class_int.md#class-int), weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |

* * *

## Method Descriptions

void **clear**() [🔗](#class-meshdatatool-method-clear)

Clears all data currently in MeshDataTool.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **commit\_to\_surface**(mesh: [ArrayMesh](class_arraymesh.md#class-arraymesh), compression\_flags: [int](class_int.md#class-int) = 0) [🔗](#class-meshdatatool-method-commit-to-surface)

Adds a new surface to specified [Mesh](class_mesh.md#class-mesh) with edited data.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **create\_from\_surface**(mesh: [ArrayMesh](class_arraymesh.md#class-arraymesh), surface: [int](class_int.md#class-int)) [🔗](#class-meshdatatool-method-create-from-surface)

Uses specified surface of given [Mesh](class_mesh.md#class-mesh) to populate data for MeshDataTool.

Requires [Mesh](class_mesh.md#class-mesh) with primitive type [Mesh.PRIMITIVE\_TRIANGLES](class_mesh.md#class-mesh-constant-primitive-triangles).

* * *

[int](class_int.md#class-int) **get\_edge\_count**() const [🔗](#class-meshdatatool-method-get-edge-count)

Returns the number of edges in this [Mesh](class_mesh.md#class-mesh).

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_edge\_faces**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-edge-faces)

Returns array of faces that touch given edge.

* * *

[Variant](class_variant.md#class-variant) **get\_edge\_meta**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-edge-meta)

Returns meta information assigned to given edge.

* * *

[int](class_int.md#class-int) **get\_edge\_vertex**(idx: [int](class_int.md#class-int), vertex: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-edge-vertex)

Returns the index of the specified `vertex` connected to the edge at index `idx`.

`vertex` can only be `0` or `1`, as edges are composed of two vertices.

* * *

[int](class_int.md#class-int) **get\_face\_count**() const [🔗](#class-meshdatatool-method-get-face-count)

Returns the number of faces in this [Mesh](class_mesh.md#class-mesh).

* * *

[int](class_int.md#class-int) **get\_face\_edge**(idx: [int](class_int.md#class-int), edge: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-face-edge)

Returns the edge associated with the face at index `idx`.

`edge` argument must be either `0`, `1`, or `2` because a face only has three edges.

* * *

[Variant](class_variant.md#class-variant) **get\_face\_meta**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-face-meta)

Returns the metadata associated with the given face.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_face\_normal**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-face-normal)

Calculates and returns the face normal of the given face.

* * *

[int](class_int.md#class-int) **get\_face\_vertex**(idx: [int](class_int.md#class-int), vertex: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-face-vertex)

Returns the specified vertex index of the given face.

`vertex` must be either `0`, `1`, or `2` because faces contain three vertices.

GDScriptC#

```
var index = mesh_data_tool.get_face_vertex(0, 1) # Gets the index of the second vertex of the first face.
var position = mesh_data_tool.get_vertex(index)
var normal = mesh_data_tool.get_vertex_normal(index)

```

```
int index = meshDataTool.GetFaceVertex(0, 1); // Gets the index of the second vertex of the first face.
Vector3 position = meshDataTool.GetVertex(index);
Vector3 normal = meshDataTool.GetVertexNormal(index);

```

* * *

[int](class_int.md#class-int) **get\_format**() const [🔗](#class-meshdatatool-method-get-format)

Returns the [Mesh](class_mesh.md#class-mesh)'s format as a combination of the [ArrayFormat](class_mesh.md#enum-mesh-arrayformat) flags. For example, a mesh containing both vertices and normals would return a format of `3` because [Mesh.ARRAY\_FORMAT\_VERTEX](class_mesh.md#class-mesh-constant-array-format-vertex) is `1` and [Mesh.ARRAY\_FORMAT\_NORMAL](class_mesh.md#class-mesh-constant-array-format-normal) is `2`.

* * *

[Material](class_material.md#class-material) **get\_material**() const [🔗](#class-meshdatatool-method-get-material)

Returns the material assigned to the [Mesh](class_mesh.md#class-mesh).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_vertex**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex)

Returns the position of the given vertex.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_vertex\_bones**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex-bones)

Returns the bones of the given vertex.

* * *

[Color](class_color.md#class-color) **get\_vertex\_color**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex-color)

Returns the color of the given vertex.

* * *

[int](class_int.md#class-int) **get\_vertex\_count**() const [🔗](#class-meshdatatool-method-get-vertex-count)

Returns the total number of vertices in [Mesh](class_mesh.md#class-mesh).

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_vertex\_edges**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex-edges)

Returns an array of edges that share the given vertex.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_vertex\_faces**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex-faces)

Returns an array of faces that share the given vertex.

* * *

[Variant](class_variant.md#class-variant) **get\_vertex\_meta**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex-meta)

Returns the metadata associated with the given vertex.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_vertex\_normal**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex-normal)

Returns the normal of the given vertex.

* * *

[Plane](class_plane.md#class-plane) **get\_vertex\_tangent**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex-tangent)

Returns the tangent of the given vertex.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_vertex\_uv**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex-uv)

Returns the UV of the given vertex.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_vertex\_uv2**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex-uv2)

Returns the UV2 of the given vertex.

* * *

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_vertex\_weights**(idx: [int](class_int.md#class-int)) const [🔗](#class-meshdatatool-method-get-vertex-weights)

Returns bone weights of the given vertex.

* * *

void **set\_edge\_meta**(idx: [int](class_int.md#class-int), meta: [Variant](class_variant.md#class-variant)) [🔗](#class-meshdatatool-method-set-edge-meta)

Sets the metadata of the given edge.

* * *

void **set\_face\_meta**(idx: [int](class_int.md#class-int), meta: [Variant](class_variant.md#class-variant)) [🔗](#class-meshdatatool-method-set-face-meta)

Sets the metadata of the given face.

* * *

void **set\_material**(material: [Material](class_material.md#class-material)) [🔗](#class-meshdatatool-method-set-material)

Sets the material to be used by newly-constructed [Mesh](class_mesh.md#class-mesh).

* * *

void **set\_vertex**(idx: [int](class_int.md#class-int), vertex: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-meshdatatool-method-set-vertex)

Sets the position of the given vertex.

* * *

void **set\_vertex\_bones**(idx: [int](class_int.md#class-int), bones: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-meshdatatool-method-set-vertex-bones)

Sets the bones of the given vertex.

* * *

void **set\_vertex\_color**(idx: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-meshdatatool-method-set-vertex-color)

Sets the color of the given vertex.

* * *

void **set\_vertex\_meta**(idx: [int](class_int.md#class-int), meta: [Variant](class_variant.md#class-variant)) [🔗](#class-meshdatatool-method-set-vertex-meta)

Sets the metadata associated with the given vertex.

* * *

void **set\_vertex\_normal**(idx: [int](class_int.md#class-int), normal: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-meshdatatool-method-set-vertex-normal)

Sets the normal of the given vertex.

* * *

void **set\_vertex\_tangent**(idx: [int](class_int.md#class-int), tangent: [Plane](class_plane.md#class-plane)) [🔗](#class-meshdatatool-method-set-vertex-tangent)

Sets the tangent of the given vertex.

* * *

void **set\_vertex\_uv**(idx: [int](class_int.md#class-int), uv: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-meshdatatool-method-set-vertex-uv)

Sets the UV of the given vertex.

* * *

void **set\_vertex\_uv2**(idx: [int](class_int.md#class-int), uv2: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-meshdatatool-method-set-vertex-uv2)

Sets the UV2 of the given vertex.

* * *

void **set\_vertex\_weights**(idx: [int](class_int.md#class-int), weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-meshdatatool-method-set-vertex-weights)

Sets the bone weights of the given vertex.

[Previous](class_meshconvexdecompositionsettings.md "MeshConvexDecompositionSettings") [Next](class_methodtweener.md "MethodTweener")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_meshconvexdecompositionsettings.md "MeshConvexDecompositionSettings") [Next](class_methodtweener.md "MethodTweener")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).