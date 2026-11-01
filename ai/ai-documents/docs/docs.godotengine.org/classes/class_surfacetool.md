---
title: SurfaceTool — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_surfacetool.html
crawled_at: "2026-08-13T10:26:54+12:00"
content_hash: 400c7bad287a74980d75251546d545952af5dbfa1bea44e8eaa6c659fd02dfbb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SurfaceTool

* * *

# SurfaceTool

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Helper tool to create geometry.

## Description

The **SurfaceTool** is used to construct a [Mesh](class_mesh.md#class-mesh) by specifying vertex attributes individually. It can be used to construct a [Mesh](class_mesh.md#class-mesh) from a script. All properties except indices need to be added before calling [add\_vertex()](#class-surfacetool-method-add-vertex). For example, to add vertex colors and UVs:

GDScriptC#

```
var st = SurfaceTool.new()
st.begin(Mesh.PRIMITIVE_TRIANGLES)
st.set_color(Color(1, 0, 0))
st.set_uv(Vector2(0, 0))
st.add_vertex(Vector3(0, 0, 0))

```

```
var st = new SurfaceTool();
st.Begin(Mesh.PrimitiveType.Triangles);
st.SetColor(new Color(1, 0, 0));
st.SetUV(new Vector2(0, 0));
st.AddVertex(new Vector3(0, 0, 0));

```

The above **SurfaceTool** now contains one vertex of a triangle which has a UV coordinate and a specified [Color](class_color.md#class-color). If another vertex were added without calling [set\_uv()](#class-surfacetool-method-set-uv) or [set\_color()](#class-surfacetool-method-set-color), then the last values would be used.

Vertex attributes must be passed **before** calling [add\_vertex()](#class-surfacetool-method-add-vertex). Failure to do so will result in an error when committing the vertex information to a mesh.

Additionally, the attributes used before the first vertex is added determine the format of the mesh. For example, if you only add UVs to the first vertex, you cannot add color to any of the subsequent vertices.

See also [ArrayMesh](class_arraymesh.md#class-arraymesh), [ImmediateMesh](class_immediatemesh.md#class-immediatemesh) and [MeshDataTool](class_meshdatatool.md#class-meshdatatool) for procedural geometry generation.

**Note:** Godot uses clockwise [winding order](https://learnopengl.com/Advanced-OpenGL/Face-culling) for front faces of triangle primitive modes.

## Tutorials

- [Using the SurfaceTool](../tutorials/3d/procedural_geometry/surfacetool.md)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Methods

|     |     |
| --- | --- |
| void | [add\_index](#class-surfacetool-method-add-index)(index: [int](class_int.md#class-int)) |
| void | [add\_triangle\_fan](#class-surfacetool-method-add-triangle-fan)(vertices: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) = PackedColorArray(), uv2s: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), normals: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) = PackedVector3Array(), tangents: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\] = \[\]) |
| void | [add\_vertex](#class-surfacetool-method-add-vertex)(vertex: [Vector3](class_vector3.md#class-vector3)) |
| void | [append\_from](#class-surfacetool-method-append-from)(existing: [Mesh](class_mesh.md#class-mesh), surface: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [begin](#class-surfacetool-method-begin)(primitive: [PrimitiveType](class_mesh.md#enum-mesh-primitivetype)) |
| void | [clear](#class-surfacetool-method-clear)() |
| [ArrayMesh](class_arraymesh.md#class-arraymesh) | [commit](#class-surfacetool-method-commit)(existing: [ArrayMesh](class_arraymesh.md#class-arraymesh) = null, flags: [int](class_int.md#class-int) = 0) |
| [Array](class_array.md#class-array) | [commit\_to\_arrays](#class-surfacetool-method-commit-to-arrays)() |
| void | [create\_from](#class-surfacetool-method-create-from)(existing: [Mesh](class_mesh.md#class-mesh), surface: [int](class_int.md#class-int)) |
| void | [create\_from\_arrays](#class-surfacetool-method-create-from-arrays)(arrays: [Array](class_array.md#class-array), primitive\_type: [PrimitiveType](class_mesh.md#enum-mesh-primitivetype) = 3) |
| void | [create\_from\_blend\_shape](#class-surfacetool-method-create-from-blend-shape)(existing: [Mesh](class_mesh.md#class-mesh), surface: [int](class_int.md#class-int), blend\_shape: [String](class_string.md#class-string)) |
| void | [deindex](#class-surfacetool-method-deindex)() |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [generate\_lod](#class-surfacetool-method-generate-lod)(nd\_threshold: [float](class_float.md#class-float), target\_index\_count: [int](class_int.md#class-int) = 3) |
| void | [generate\_normals](#class-surfacetool-method-generate-normals)(flip: [bool](class_bool.md#class-bool) = false) |
| void | [generate\_tangents](#class-surfacetool-method-generate-tangents)() |
| [AABB](class_aabb.md#class-aabb) | [get\_aabb](#class-surfacetool-method-get-aabb)() const |
| [CustomFormat](#enum-surfacetool-customformat) | [get\_custom\_format](#class-surfacetool-method-get-custom-format)(channel\_index: [int](class_int.md#class-int)) const |
| [PrimitiveType](class_mesh.md#enum-mesh-primitivetype) | [get\_primitive\_type](#class-surfacetool-method-get-primitive-type)() const |
| [SkinWeightCount](#enum-surfacetool-skinweightcount) | [get\_skin\_weight\_count](#class-surfacetool-method-get-skin-weight-count)() const |
| void | [index](#class-surfacetool-method-index)() |
| void | [optimize\_indices\_for\_cache](#class-surfacetool-method-optimize-indices-for-cache)() |
| void | [set\_bones](#class-surfacetool-method-set-bones)(bones: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| void | [set\_color](#class-surfacetool-method-set-color)(color: [Color](class_color.md#class-color)) |
| void | [set\_custom](#class-surfacetool-method-set-custom)(channel\_index: [int](class_int.md#class-int), custom\_color: [Color](class_color.md#class-color)) |
| void | [set\_custom\_format](#class-surfacetool-method-set-custom-format)(channel\_index: [int](class_int.md#class-int), format: [CustomFormat](#enum-surfacetool-customformat)) |
| void | [set\_material](#class-surfacetool-method-set-material)(material: [Material](class_material.md#class-material)) |
| void | [set\_normal](#class-surfacetool-method-set-normal)(normal: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_skin\_weight\_count](#class-surfacetool-method-set-skin-weight-count)(count: [SkinWeightCount](#enum-surfacetool-skinweightcount)) |
| void | [set\_smooth\_group](#class-surfacetool-method-set-smooth-group)(index: [int](class_int.md#class-int)) |
| void | [set\_tangent](#class-surfacetool-method-set-tangent)(tangent: [Plane](class_plane.md#class-plane)) |
| void | [set\_uv](#class-surfacetool-method-set-uv)(uv: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_uv2](#class-surfacetool-method-set-uv2)(uv2: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_weights](#class-surfacetool-method-set-weights)(weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |

* * *

## Enumerations

enum **CustomFormat**: [🔗](#enum-surfacetool-customformat)

[CustomFormat](#enum-surfacetool-customformat) **CUSTOM\_RGBA8\_UNORM** = `0`

Limits range of data passed to [set\_custom()](#class-surfacetool-method-set-custom) to unsigned normalized 0 to 1 stored in 8 bits per channel. See [Mesh.ARRAY\_CUSTOM\_RGBA8\_UNORM](class_mesh.md#class-mesh-constant-array-custom-rgba8-unorm).

[CustomFormat](#enum-surfacetool-customformat) **CUSTOM\_RGBA8\_SNORM** = `1`

Limits range of data passed to [set\_custom()](#class-surfacetool-method-set-custom) to signed normalized -1 to 1 stored in 8 bits per channel. See [Mesh.ARRAY\_CUSTOM\_RGBA8\_SNORM](class_mesh.md#class-mesh-constant-array-custom-rgba8-snorm).

[CustomFormat](#enum-surfacetool-customformat) **CUSTOM\_RG\_HALF** = `2`

Stores data passed to [set\_custom()](#class-surfacetool-method-set-custom) as half precision floats, and uses only red and green color channels. See [Mesh.ARRAY\_CUSTOM\_RG\_HALF](class_mesh.md#class-mesh-constant-array-custom-rg-half).

[CustomFormat](#enum-surfacetool-customformat) **CUSTOM\_RGBA\_HALF** = `3`

Stores data passed to [set\_custom()](#class-surfacetool-method-set-custom) as half precision floats and uses all color channels. See [Mesh.ARRAY\_CUSTOM\_RGBA\_HALF](class_mesh.md#class-mesh-constant-array-custom-rgba-half).

[CustomFormat](#enum-surfacetool-customformat) **CUSTOM\_R\_FLOAT** = `4`

Stores data passed to [set\_custom()](#class-surfacetool-method-set-custom) as full precision floats, and uses only red color channel. See [Mesh.ARRAY\_CUSTOM\_R\_FLOAT](class_mesh.md#class-mesh-constant-array-custom-r-float).

[CustomFormat](#enum-surfacetool-customformat) **CUSTOM\_RG\_FLOAT** = `5`

Stores data passed to [set\_custom()](#class-surfacetool-method-set-custom) as full precision floats, and uses only red and green color channels. See [Mesh.ARRAY\_CUSTOM\_RG\_FLOAT](class_mesh.md#class-mesh-constant-array-custom-rg-float).

[CustomFormat](#enum-surfacetool-customformat) **CUSTOM\_RGB\_FLOAT** = `6`

Stores data passed to [set\_custom()](#class-surfacetool-method-set-custom) as full precision floats, and uses only red, green and blue color channels. See [Mesh.ARRAY\_CUSTOM\_RGB\_FLOAT](class_mesh.md#class-mesh-constant-array-custom-rgb-float).

[CustomFormat](#enum-surfacetool-customformat) **CUSTOM\_RGBA\_FLOAT** = `7`

Stores data passed to [set\_custom()](#class-surfacetool-method-set-custom) as full precision floats, and uses all color channels. See [Mesh.ARRAY\_CUSTOM\_RGBA\_FLOAT](class_mesh.md#class-mesh-constant-array-custom-rgba-float).

[CustomFormat](#enum-surfacetool-customformat) **CUSTOM\_MAX** = `8`

Used to indicate a disabled custom channel.

* * *

enum **SkinWeightCount**: [🔗](#enum-surfacetool-skinweightcount)

[SkinWeightCount](#enum-surfacetool-skinweightcount) **SKIN\_4\_WEIGHTS** = `0`

Each individual vertex can be influenced by only 4 bone weights.

[SkinWeightCount](#enum-surfacetool-skinweightcount) **SKIN\_8\_WEIGHTS** = `1`

Each individual vertex can be influenced by up to 8 bone weights.

* * *

## Method Descriptions

void **add\_index**(index: [int](class_int.md#class-int)) [🔗](#class-surfacetool-method-add-index)

Adds a vertex to index array if you are using indexed vertices. Does not need to be called before adding vertices.

* * *

void **add\_triangle\_fan**(vertices: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) = PackedColorArray(), uv2s: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), normals: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) = PackedVector3Array(), tangents: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\] = \[\]) [🔗](#class-surfacetool-method-add-triangle-fan)

Inserts a triangle fan made of array data into [Mesh](class_mesh.md#class-mesh) being constructed.

Requires the primitive type be set to [Mesh.PRIMITIVE\_TRIANGLES](class_mesh.md#class-mesh-constant-primitive-triangles).

* * *

void **add\_vertex**(vertex: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-surfacetool-method-add-vertex)

Specifies the position of current vertex. Should be called after specifying other vertex properties (e.g. Color, UV).

* * *

void **append\_from**(existing: [Mesh](class_mesh.md#class-mesh), surface: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-surfacetool-method-append-from)

Append vertices from a given [Mesh](class_mesh.md#class-mesh) surface onto the current vertex array with specified [Transform3D](class_transform3d.md#class-transform3d).

* * *

void **begin**(primitive: [PrimitiveType](class_mesh.md#enum-mesh-primitivetype)) [🔗](#class-surfacetool-method-begin)

Called before adding any vertices. Takes the primitive type as an argument (e.g. [Mesh.PRIMITIVE\_TRIANGLES](class_mesh.md#class-mesh-constant-primitive-triangles)).

* * *

void **clear**() [🔗](#class-surfacetool-method-clear)

Clear all information passed into the surface tool so far.

* * *

[ArrayMesh](class_arraymesh.md#class-arraymesh) **commit**(existing: [ArrayMesh](class_arraymesh.md#class-arraymesh) = null, flags: [int](class_int.md#class-int) = 0) [🔗](#class-surfacetool-method-commit)

Returns a constructed [ArrayMesh](class_arraymesh.md#class-arraymesh) from current information passed in. If an existing [ArrayMesh](class_arraymesh.md#class-arraymesh) is passed in as an argument, will add an extra surface to the existing [ArrayMesh](class_arraymesh.md#class-arraymesh).

The `flags` argument can be the bitwise OR of [Mesh.ARRAY\_FLAG\_USE\_DYNAMIC\_UPDATE](class_mesh.md#class-mesh-constant-array-flag-use-dynamic-update), [Mesh.ARRAY\_FLAG\_USE\_8\_BONE\_WEIGHTS](class_mesh.md#class-mesh-constant-array-flag-use-8-bone-weights), or [Mesh.ARRAY\_FLAG\_USES\_EMPTY\_VERTEX\_ARRAY](class_mesh.md#class-mesh-constant-array-flag-uses-empty-vertex-array).

* * *

[Array](class_array.md#class-array) **commit\_to\_arrays**() [🔗](#class-surfacetool-method-commit-to-arrays)

Commits the data to the same format used by [ArrayMesh.add\_surface\_from\_arrays()](class_arraymesh.md#class-arraymesh-method-add-surface-from-arrays), [ImporterMesh.add\_surface()](class_importermesh.md#class-importermesh-method-add-surface), and [create\_from\_arrays()](#class-surfacetool-method-create-from-arrays). This way you can further process the mesh data using the [ArrayMesh](class_arraymesh.md#class-arraymesh) or [ImporterMesh](class_importermesh.md#class-importermesh) APIs.

* * *

void **create\_from**(existing: [Mesh](class_mesh.md#class-mesh), surface: [int](class_int.md#class-int)) [🔗](#class-surfacetool-method-create-from)

Creates a vertex array from an existing [Mesh](class_mesh.md#class-mesh).

* * *

void **create\_from\_arrays**(arrays: [Array](class_array.md#class-array), primitive\_type: [PrimitiveType](class_mesh.md#enum-mesh-primitivetype) = 3) [🔗](#class-surfacetool-method-create-from-arrays)

Creates this SurfaceTool from existing vertex arrays such as returned by [commit\_to\_arrays()](#class-surfacetool-method-commit-to-arrays), [Mesh.surface\_get\_arrays()](class_mesh.md#class-mesh-method-surface-get-arrays), [Mesh.surface\_get\_blend\_shape\_arrays()](class_mesh.md#class-mesh-method-surface-get-blend-shape-arrays), [ImporterMesh.get\_surface\_arrays()](class_importermesh.md#class-importermesh-method-get-surface-arrays), and [ImporterMesh.get\_surface\_blend\_shape\_arrays()](class_importermesh.md#class-importermesh-method-get-surface-blend-shape-arrays). `primitive_type` controls the type of mesh data, defaulting to [Mesh.PRIMITIVE\_TRIANGLES](class_mesh.md#class-mesh-constant-primitive-triangles).

* * *

void **create\_from\_blend\_shape**(existing: [Mesh](class_mesh.md#class-mesh), surface: [int](class_int.md#class-int), blend\_shape: [String](class_string.md#class-string)) [🔗](#class-surfacetool-method-create-from-blend-shape)

Creates a vertex array from the specified blend shape of an existing [Mesh](class_mesh.md#class-mesh). This can be used to extract a specific pose from a blend shape.

* * *

void **deindex**() [🔗](#class-surfacetool-method-deindex)

Removes the index array by expanding the vertex array.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **generate\_lod**(nd\_threshold: [float](class_float.md#class-float), target\_index\_count: [int](class_int.md#class-int) = 3) [🔗](#class-surfacetool-method-generate-lod)

**Deprecated:** This method is unused internally, as it does not preserve normals or UVs. Consider using [ImporterMesh.generate\_lods()](class_importermesh.md#class-importermesh-method-generate-lods) instead.

Generates an LOD for a given `nd_threshold` in linear units (square root of quadric error metric), using at most `target_index_count` indices.

* * *

void **generate\_normals**(flip: [bool](class_bool.md#class-bool) = false) [🔗](#class-surfacetool-method-generate-normals)

Generates normals from vertices so you do not have to do it manually. If `flip` is `true`, the resulting normals will be inverted. [generate\_normals()](#class-surfacetool-method-generate-normals) should be called _after_ generating geometry and _before_ committing the mesh using [commit()](#class-surfacetool-method-commit) or [commit\_to\_arrays()](#class-surfacetool-method-commit-to-arrays). For correct display of normal-mapped surfaces, you will also have to generate tangents using [generate\_tangents()](#class-surfacetool-method-generate-tangents).

**Note:** [generate\_normals()](#class-surfacetool-method-generate-normals) only works if the primitive type is set to [Mesh.PRIMITIVE\_TRIANGLES](class_mesh.md#class-mesh-constant-primitive-triangles).

**Note:** [generate\_normals()](#class-surfacetool-method-generate-normals) takes smooth groups into account. To generate smooth normals, set the smooth group to a value greater than or equal to `0` using [set\_smooth\_group()](#class-surfacetool-method-set-smooth-group) or leave the smooth group at the default of `0`. To generate flat normals, set the smooth group to `-1` using [set\_smooth\_group()](#class-surfacetool-method-set-smooth-group) prior to adding vertices.

* * *

void **generate\_tangents**() [🔗](#class-surfacetool-method-generate-tangents)

Generates a tangent vector for each vertex. Requires that each vertex already has UVs and normals set (see [generate\_normals()](#class-surfacetool-method-generate-normals)).

* * *

[AABB](class_aabb.md#class-aabb) **get\_aabb**() const [🔗](#class-surfacetool-method-get-aabb)

Returns the axis-aligned bounding box of the vertex positions.

* * *

[CustomFormat](#enum-surfacetool-customformat) **get\_custom\_format**(channel\_index: [int](class_int.md#class-int)) const [🔗](#class-surfacetool-method-get-custom-format)

Returns the format for custom `channel_index` (currently up to 4). Returns [CUSTOM\_MAX](#class-surfacetool-constant-custom-max) if this custom channel is unused.

* * *

[PrimitiveType](class_mesh.md#enum-mesh-primitivetype) **get\_primitive\_type**() const [🔗](#class-surfacetool-method-get-primitive-type)

Returns the type of mesh geometry, such as [Mesh.PRIMITIVE\_TRIANGLES](class_mesh.md#class-mesh-constant-primitive-triangles).

* * *

[SkinWeightCount](#enum-surfacetool-skinweightcount) **get\_skin\_weight\_count**() const [🔗](#class-surfacetool-method-get-skin-weight-count)

By default, returns [SKIN\_4\_WEIGHTS](#class-surfacetool-constant-skin-4-weights) to indicate only 4 bone influences per vertex are used.

Returns [SKIN\_8\_WEIGHTS](#class-surfacetool-constant-skin-8-weights) if up to 8 influences are used.

**Note:** This function returns an enum, not the exact number of weights.

* * *

void **index**() [🔗](#class-surfacetool-method-index)

Shrinks the vertex array by creating an index array. This can improve performance by avoiding vertex reuse.

* * *

void **optimize\_indices\_for\_cache**() [🔗](#class-surfacetool-method-optimize-indices-for-cache)

Optimizes triangle sorting for performance. Requires that [get\_primitive\_type()](#class-surfacetool-method-get-primitive-type) is [Mesh.PRIMITIVE\_TRIANGLES](class_mesh.md#class-mesh-constant-primitive-triangles).

* * *

void **set\_bones**(bones: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-surfacetool-method-set-bones)

Specifies an array of bones to use for the _next_ vertex. `bones` must contain 4 integers.

* * *

void **set\_color**(color: [Color](class_color.md#class-color)) [🔗](#class-surfacetool-method-set-color)

Specifies a [Color](class_color.md#class-color) to use for the _next_ vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.

**Note:** The material must have [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) enabled for the vertex color to be visible.

* * *

void **set\_custom**(channel\_index: [int](class_int.md#class-int), custom\_color: [Color](class_color.md#class-color)) [🔗](#class-surfacetool-method-set-custom)

Sets the custom value on this vertex for `channel_index`.

[set\_custom\_format()](#class-surfacetool-method-set-custom-format) must be called first for this `channel_index`. Formats which are not RGBA will ignore other color channels.

* * *

void **set\_custom\_format**(channel\_index: [int](class_int.md#class-int), format: [CustomFormat](#enum-surfacetool-customformat)) [🔗](#class-surfacetool-method-set-custom-format)

Sets the color format for this custom `channel_index`. Use [CUSTOM\_MAX](#class-surfacetool-constant-custom-max) to disable.

Must be invoked after [begin()](#class-surfacetool-method-begin) and should be set before [commit()](#class-surfacetool-method-commit) or [commit\_to\_arrays()](#class-surfacetool-method-commit-to-arrays).

* * *

void **set\_material**(material: [Material](class_material.md#class-material)) [🔗](#class-surfacetool-method-set-material)

Sets [Material](class_material.md#class-material) to be used by the [Mesh](class_mesh.md#class-mesh) you are constructing.

* * *

void **set\_normal**(normal: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-surfacetool-method-set-normal)

Specifies a normal to use for the _next_ vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.

* * *

void **set\_skin\_weight\_count**(count: [SkinWeightCount](#enum-surfacetool-skinweightcount)) [🔗](#class-surfacetool-method-set-skin-weight-count)

Set to [SKIN\_8\_WEIGHTS](#class-surfacetool-constant-skin-8-weights) to indicate that up to 8 bone influences per vertex may be used.

By default, only 4 bone influences are used ( [SKIN\_4\_WEIGHTS](#class-surfacetool-constant-skin-4-weights)).

**Note:** This function takes an enum, not the exact number of weights.

* * *

void **set\_smooth\_group**(index: [int](class_int.md#class-int)) [🔗](#class-surfacetool-method-set-smooth-group)

Specifies the smooth group to use for the _next_ vertex. If this is never called, all vertices will have the default smooth group of `0` and will be smoothed with adjacent vertices of the same group. To produce a mesh with flat normals, set the smooth group to `-1`.

**Note:** This function actually takes a `uint32_t`, so C# users should use `uint32.MaxValue` instead of `-1` to produce a mesh with flat normals.

* * *

void **set\_tangent**(tangent: [Plane](class_plane.md#class-plane)) [🔗](#class-surfacetool-method-set-tangent)

Specifies a tangent to use for the _next_ vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.

* * *

void **set\_uv**(uv: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-surfacetool-method-set-uv)

Specifies a set of UV coordinates to use for the _next_ vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.

* * *

void **set\_uv2**(uv2: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-surfacetool-method-set-uv2)

Specifies an optional second set of UV coordinates to use for the _next_ vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.

* * *

void **set\_weights**(weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-surfacetool-method-set-weights)

Specifies weight values to use for the _next_ vertex. `weights` must contain 4 values. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.

[Previous](class_subtweentweener.md "SubtweenTweener") [Next](class_tcpserver.md "TCPServer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_subtweentweener.md "SubtweenTweener") [Next](class_tcpserver.md "TCPServer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).