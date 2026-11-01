---
title: Mesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_mesh.html
crawled_at: "2026-08-13T10:30:12+12:00"
content_hash: 1a3edcffe3bc983cd5dd743cbb3d817f029cbaa459fda9a39e3bd93d872f44cb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Mesh

* * *

# Mesh

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [ArrayMesh](class_arraymesh.md#class-arraymesh), [ImmediateMesh](class_immediatemesh.md#class-immediatemesh), [PlaceholderMesh](class_placeholdermesh.md#class-placeholdermesh), [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh)

A [Resource](class_resource.md#class-resource) that contains vertex array-based geometry.

## Description

Mesh is a type of [Resource](class_resource.md#class-resource) that contains vertex array-based geometry, divided in _surfaces_. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials. The maximum number of surfaces per mesh is [RenderingServer.MAX\_MESH\_SURFACES](class_renderingserver.md#class-renderingserver-constant-max-mesh-surfaces).

## Tutorials

- [3D Material Testers Demo](https://godotengine.org/asset-library/asset/2742)

- [3D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2739)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2i](class_vector2i.md#class-vector2i) | [lightmap\_size\_hint](#class-mesh-property-lightmap-size-hint) | `Vector2i(0, 0)` |

## Methods

|     |     |
| --- | --- |
| [AABB](class_aabb.md#class-aabb) | [\_get\_aabb](#class-mesh-private-method-get-aabb)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_blend\_shape\_count](#class-mesh-private-method-get-blend-shape-count)() virtualrequiredconst |
| [StringName](class_stringname.md#class-stringname) | [\_get\_blend\_shape\_name](#class-mesh-private-method-get-blend-shape-name)(index: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_surface\_count](#class-mesh-private-method-get-surface-count)() virtualrequiredconst |
| void | [\_set\_blend\_shape\_name](#class-mesh-private-method-set-blend-shape-name)(index: [int](class_int.md#class-int), name: [StringName](class_stringname.md#class-stringname)) virtualrequired |
| [int](class_int.md#class-int) | [\_surface\_get\_array\_index\_len](#class-mesh-private-method-surface-get-array-index-len)(index: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_surface\_get\_array\_len](#class-mesh-private-method-surface-get-array-len)(index: [int](class_int.md#class-int)) virtualrequiredconst |
| [Array](class_array.md#class-array) | [\_surface\_get\_arrays](#class-mesh-private-method-surface-get-arrays)(index: [int](class_int.md#class-int)) virtualrequiredconst |
| [Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] | [\_surface\_get\_blend\_shape\_arrays](#class-mesh-private-method-surface-get-blend-shape-arrays)(index: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_surface\_get\_format](#class-mesh-private-method-surface-get-format)(index: [int](class_int.md#class-int)) virtualrequiredconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_surface\_get\_lods](#class-mesh-private-method-surface-get-lods)(index: [int](class_int.md#class-int)) virtualrequiredconst |
| [Material](class_material.md#class-material) | [\_surface\_get\_material](#class-mesh-private-method-surface-get-material)(index: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_surface\_get\_primitive\_type](#class-mesh-private-method-surface-get-primitive-type)(index: [int](class_int.md#class-int)) virtualrequiredconst |
| void | [\_surface\_set\_material](#class-mesh-private-method-surface-set-material)(index: [int](class_int.md#class-int), material: [Material](class_material.md#class-material)) virtualrequired |
| [ConvexPolygonShape3D](class_convexpolygonshape3d.md#class-convexpolygonshape3d) | [create\_convex\_shape](#class-mesh-method-create-convex-shape)(clean: [bool](class_bool.md#class-bool) = true, simplify: [bool](class_bool.md#class-bool) = false) const |
| [Mesh](#class-mesh) | [create\_outline](#class-mesh-method-create-outline)(margin: [float](class_float.md#class-float)) const |
| [Resource](class_resource.md#class-resource) | [create\_placeholder](#class-mesh-method-create-placeholder)() const |
| [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) | [create\_trimesh\_shape](#class-mesh-method-create-trimesh-shape)() const |
| [TriangleMesh](class_trianglemesh.md#class-trianglemesh) | [generate\_triangle\_mesh](#class-mesh-method-generate-triangle-mesh)() const |
| [AABB](class_aabb.md#class-aabb) | [get\_aabb](#class-mesh-method-get-aabb)() const |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [get\_faces](#class-mesh-method-get-faces)() const |
| [int](class_int.md#class-int) | [get\_surface\_count](#class-mesh-method-get-surface-count)() const |
| [Array](class_array.md#class-array) | [surface\_get\_arrays](#class-mesh-method-surface-get-arrays)(surf\_idx: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] | [surface\_get\_blend\_shape\_arrays](#class-mesh-method-surface-get-blend-shape-arrays)(surf\_idx: [int](class_int.md#class-int)) const |
| [Material](class_material.md#class-material) | [surface\_get\_material](#class-mesh-method-surface-get-material)(surf\_idx: [int](class_int.md#class-int)) const |
| void | [surface\_set\_material](#class-mesh-method-surface-set-material)(surf\_idx: [int](class_int.md#class-int), material: [Material](class_material.md#class-material)) |

* * *

## Enumerations

enum **PrimitiveType**: [🔗](#enum-mesh-primitivetype)

[PrimitiveType](#enum-mesh-primitivetype) **PRIMITIVE\_POINTS** = `0`

Render array as points (one vertex equals one point).

[PrimitiveType](#enum-mesh-primitivetype) **PRIMITIVE\_LINES** = `1`

Render array as lines (every two vertices a line is created).

[PrimitiveType](#enum-mesh-primitivetype) **PRIMITIVE\_LINE\_STRIP** = `2`

Render array as line strip.

[PrimitiveType](#enum-mesh-primitivetype) **PRIMITIVE\_TRIANGLES** = `3`

Render array as triangles (every three vertices a triangle is created).

[PrimitiveType](#enum-mesh-primitivetype) **PRIMITIVE\_TRIANGLE\_STRIP** = `4`

Render array as triangle strips.

* * *

enum **ArrayType**: [🔗](#enum-mesh-arraytype)

[ArrayType](#enum-mesh-arraytype) **ARRAY\_VERTEX** = `0`

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array), [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), or [Array](class_array.md#class-array) of vertex positions.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_NORMAL** = `1`

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) of vertex normals.

**Note:** The array has to consist of normal vectors, otherwise they will be normalized by the engine, potentially causing visual discrepancies.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_TANGENT** = `2`

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) of vertex tangents. Each element in groups of 4 floats, first 3 floats determine the tangent, and the last the binormal direction as -1 or 1.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_COLOR** = `3`

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) of vertex colors.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_TEX\_UV** = `4`

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for UV coordinates.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_TEX\_UV2** = `5`

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for second UV coordinates.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_CUSTOM0** = `6`

Contains custom color channel 0. [PackedByteArray](class_packedbytearray.md#class-packedbytearray) if `(format >> Mesh.ARRAY_FORMAT_CUSTOM0_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK` is [ARRAY\_CUSTOM\_RGBA8\_UNORM](#class-mesh-constant-array-custom-rgba8-unorm), [ARRAY\_CUSTOM\_RGBA8\_SNORM](#class-mesh-constant-array-custom-rgba8-snorm), [ARRAY\_CUSTOM\_RG\_HALF](#class-mesh-constant-array-custom-rg-half), or [ARRAY\_CUSTOM\_RGBA\_HALF](#class-mesh-constant-array-custom-rgba-half). [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) otherwise.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_CUSTOM1** = `7`

Contains custom color channel 1. [PackedByteArray](class_packedbytearray.md#class-packedbytearray) if `(format >> Mesh.ARRAY_FORMAT_CUSTOM1_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK` is [ARRAY\_CUSTOM\_RGBA8\_UNORM](#class-mesh-constant-array-custom-rgba8-unorm), [ARRAY\_CUSTOM\_RGBA8\_SNORM](#class-mesh-constant-array-custom-rgba8-snorm), [ARRAY\_CUSTOM\_RG\_HALF](#class-mesh-constant-array-custom-rg-half), or [ARRAY\_CUSTOM\_RGBA\_HALF](#class-mesh-constant-array-custom-rgba-half). [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) otherwise.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_CUSTOM2** = `8`

Contains custom color channel 2. [PackedByteArray](class_packedbytearray.md#class-packedbytearray) if `(format >> Mesh.ARRAY_FORMAT_CUSTOM2_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK` is [ARRAY\_CUSTOM\_RGBA8\_UNORM](#class-mesh-constant-array-custom-rgba8-unorm), [ARRAY\_CUSTOM\_RGBA8\_SNORM](#class-mesh-constant-array-custom-rgba8-snorm), [ARRAY\_CUSTOM\_RG\_HALF](#class-mesh-constant-array-custom-rg-half), or [ARRAY\_CUSTOM\_RGBA\_HALF](#class-mesh-constant-array-custom-rgba-half). [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) otherwise.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_CUSTOM3** = `9`

Contains custom color channel 3. [PackedByteArray](class_packedbytearray.md#class-packedbytearray) if `(format >> Mesh.ARRAY_FORMAT_CUSTOM3_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK` is [ARRAY\_CUSTOM\_RGBA8\_UNORM](#class-mesh-constant-array-custom-rgba8-unorm), [ARRAY\_CUSTOM\_RGBA8\_SNORM](#class-mesh-constant-array-custom-rgba8-snorm), [ARRAY\_CUSTOM\_RG\_HALF](#class-mesh-constant-array-custom-rg-half), or [ARRAY\_CUSTOM\_RGBA\_HALF](#class-mesh-constant-array-custom-rgba-half). [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) otherwise.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_BONES** = `10`

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) or [PackedInt32Array](class_packedint32array.md#class-packedint32array) of bone indices. Contains either 4 or 8 numbers per vertex depending on the presence of the [ARRAY\_FLAG\_USE\_8\_BONE\_WEIGHTS](#class-mesh-constant-array-flag-use-8-bone-weights) flag.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_WEIGHTS** = `11`

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) or [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) of bone weights in the range `0.0` to `1.0` (inclusive). Contains either 4 or 8 numbers per vertex depending on the presence of the [ARRAY\_FLAG\_USE\_8\_BONE\_WEIGHTS](#class-mesh-constant-array-flag-use-8-bone-weights) flag.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_INDEX** = `12`

[PackedInt32Array](class_packedint32array.md#class-packedint32array) of integers used as indices referencing vertices, colors, normals, tangents, and textures. All of those arrays must have the same number of elements as the vertex array. No index can be beyond the vertex array size. When this index array is present, it puts the function into "index mode," where the index selects the _i_'th vertex, normal, tangent, color, UV, etc. This means if you want to have different normals or colors along an edge, you have to duplicate the vertices.

For triangles, the index array is interpreted as triples, referring to the vertices of each triangle. For lines, the index array is in pairs indicating the start and end of each line.

[ArrayType](#enum-mesh-arraytype) **ARRAY\_MAX** = `13`

Represents the size of the [ArrayType](#enum-mesh-arraytype) enum.

* * *

enum **ArrayCustomFormat**: [🔗](#enum-mesh-arraycustomformat)

[ArrayCustomFormat](#enum-mesh-arraycustomformat) **ARRAY\_CUSTOM\_RGBA8\_UNORM** = `0`

Indicates this custom channel contains unsigned normalized byte colors from 0 to 1, encoded as [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

[ArrayCustomFormat](#enum-mesh-arraycustomformat) **ARRAY\_CUSTOM\_RGBA8\_SNORM** = `1`

Indicates this custom channel contains signed normalized byte colors from -1 to 1, encoded as [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

[ArrayCustomFormat](#enum-mesh-arraycustomformat) **ARRAY\_CUSTOM\_RG\_HALF** = `2`

Indicates this custom channel contains half precision float colors, encoded as [PackedByteArray](class_packedbytearray.md#class-packedbytearray). Only red and green channels are used.

[ArrayCustomFormat](#enum-mesh-arraycustomformat) **ARRAY\_CUSTOM\_RGBA\_HALF** = `3`

Indicates this custom channel contains half precision float colors, encoded as [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

[ArrayCustomFormat](#enum-mesh-arraycustomformat) **ARRAY\_CUSTOM\_R\_FLOAT** = `4`

Indicates this custom channel contains full float colors, in a [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array). Only the red channel is used.

[ArrayCustomFormat](#enum-mesh-arraycustomformat) **ARRAY\_CUSTOM\_RG\_FLOAT** = `5`

Indicates this custom channel contains full float colors, in a [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array). Only red and green channels are used.

[ArrayCustomFormat](#enum-mesh-arraycustomformat) **ARRAY\_CUSTOM\_RGB\_FLOAT** = `6`

Indicates this custom channel contains full float colors, in a [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array). Only red, green and blue channels are used.

[ArrayCustomFormat](#enum-mesh-arraycustomformat) **ARRAY\_CUSTOM\_RGBA\_FLOAT** = `7`

Indicates this custom channel contains full float colors, in a [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array).

[ArrayCustomFormat](#enum-mesh-arraycustomformat) **ARRAY\_CUSTOM\_MAX** = `8`

Represents the size of the [ArrayCustomFormat](#enum-mesh-arraycustomformat) enum.

* * *

flags **ArrayFormat**: [🔗](#enum-mesh-arrayformat)

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_VERTEX** = `1`

Mesh array contains vertices. All meshes require a vertex array so this should always be present.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_NORMAL** = `2`

Mesh array contains normals.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_TANGENT** = `4`

Mesh array contains tangents.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_COLOR** = `8`

Mesh array contains colors.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_TEX\_UV** = `16`

Mesh array contains UVs.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_TEX\_UV2** = `32`

Mesh array contains second UV.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM0** = `64`

Mesh array contains custom channel index 0.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM1** = `128`

Mesh array contains custom channel index 1.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM2** = `256`

Mesh array contains custom channel index 2.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM3** = `512`

Mesh array contains custom channel index 3.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_BONES** = `1024`

Mesh array contains bones.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_WEIGHTS** = `2048`

Mesh array contains bone weights.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_INDEX** = `4096`

Mesh array uses indices.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_BLEND\_SHAPE\_MASK** = `7`

Mask of mesh channels permitted in blend shapes.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM\_BASE** = `13`

Shift of first custom channel.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM\_BITS** = `3`

Number of format bits per custom channel. See [ArrayCustomFormat](#enum-mesh-arraycustomformat).

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM0\_SHIFT** = `13`

Amount to shift [ArrayCustomFormat](#enum-mesh-arraycustomformat) for custom channel index 0.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM1\_SHIFT** = `16`

Amount to shift [ArrayCustomFormat](#enum-mesh-arraycustomformat) for custom channel index 1.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM2\_SHIFT** = `19`

Amount to shift [ArrayCustomFormat](#enum-mesh-arraycustomformat) for custom channel index 2.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM3\_SHIFT** = `22`

Amount to shift [ArrayCustomFormat](#enum-mesh-arraycustomformat) for custom channel index 3.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FORMAT\_CUSTOM\_MASK** = `7`

Mask of custom format bits per custom channel. Must be shifted by one of the SHIFT constants. See [ArrayCustomFormat](#enum-mesh-arraycustomformat).

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_COMPRESS\_FLAGS\_BASE** = `25`

Shift of first compress flag. Compress flags should be passed to [ArrayMesh.add\_surface\_from\_arrays()](class_arraymesh.md#class-arraymesh-method-add-surface-from-arrays) and [SurfaceTool.commit()](class_surfacetool.md#class-surfacetool-method-commit).

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FLAG\_USE\_2D\_VERTICES** = `33554432`

Flag used to mark that the array contains 2D vertices.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FLAG\_USE\_DYNAMIC\_UPDATE** = `67108864`

Flag used to mark that the mesh data will use `GL_DYNAMIC_DRAW` on GLES. Unused on Vulkan.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FLAG\_USE\_8\_BONE\_WEIGHTS** = `134217728`

Flag used to mark that the mesh contains up to 8 bone influences per vertex. This flag indicates that [ARRAY\_BONES](#class-mesh-constant-array-bones) and [ARRAY\_WEIGHTS](#class-mesh-constant-array-weights) elements will have double length.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FLAG\_USES\_EMPTY\_VERTEX\_ARRAY** = `268435456`

Flag used to mark that the mesh intentionally contains no vertex array.

[ArrayFormat](#enum-mesh-arrayformat) **ARRAY\_FLAG\_COMPRESS\_ATTRIBUTES** = `536870912`

Flag used to mark that a mesh is using compressed attributes (vertices, normals, tangents, UVs). When this form of compression is enabled, vertex positions will be packed into an RGBA16UNORM attribute and scaled in the vertex shader. The normal and tangent will be packed into an RG16UNORM representing an axis, and a 16-bit float stored in the A-channel of the vertex. UVs will use 16-bit normalized floats instead of full 32-bit signed floats. When using this compression mode you must use either vertices, normals, and tangents or only vertices. You cannot use normals without tangents. Importers will automatically enable this compression if they can.

* * *

enum **BlendShapeMode**: [🔗](#enum-mesh-blendshapemode)

[BlendShapeMode](#enum-mesh-blendshapemode) **BLEND\_SHAPE\_MODE\_NORMALIZED** = `0`

Blend shapes are normalized.

[BlendShapeMode](#enum-mesh-blendshapemode) **BLEND\_SHAPE\_MODE\_RELATIVE** = `1`

Blend shapes are relative to base weight.

* * *

## Property Descriptions

[Vector2i](class_vector2i.md#class-vector2i) **lightmap\_size\_hint** = `Vector2i(0, 0)` [🔗](#class-mesh-property-lightmap-size-hint)

- void **set\_lightmap\_size\_hint**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_lightmap\_size\_hint**()


Sets a hint to be used for lightmap resolution.

* * *

## Method Descriptions

[AABB](class_aabb.md#class-aabb) **\_get\_aabb**() virtualrequiredconst [🔗](#class-mesh-private-method-get-aabb)

Virtual method to override the [AABB](class_aabb.md#class-aabb) for a custom class extending **Mesh**.

* * *

[int](class_int.md#class-int) **\_get\_blend\_shape\_count**() virtualrequiredconst [🔗](#class-mesh-private-method-get-blend-shape-count)

Virtual method to override the number of blend shapes for a custom class extending **Mesh**.

* * *

[StringName](class_stringname.md#class-stringname) **\_get\_blend\_shape\_name**(index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-mesh-private-method-get-blend-shape-name)

Virtual method to override the retrieval of blend shape names for a custom class extending **Mesh**.

* * *

[int](class_int.md#class-int) **\_get\_surface\_count**() virtualrequiredconst [🔗](#class-mesh-private-method-get-surface-count)

Virtual method to override the surface count for a custom class extending **Mesh**.

* * *

void **\_set\_blend\_shape\_name**(index: [int](class_int.md#class-int), name: [StringName](class_stringname.md#class-stringname)) virtualrequired [🔗](#class-mesh-private-method-set-blend-shape-name)

Virtual method to override the names of blend shapes for a custom class extending **Mesh**.

* * *

[int](class_int.md#class-int) **\_surface\_get\_array\_index\_len**(index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-mesh-private-method-surface-get-array-index-len)

Virtual method to override the surface array index length for a custom class extending **Mesh**.

* * *

[int](class_int.md#class-int) **\_surface\_get\_array\_len**(index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-mesh-private-method-surface-get-array-len)

Virtual method to override the surface array length for a custom class extending **Mesh**.

* * *

[Array](class_array.md#class-array) **\_surface\_get\_arrays**(index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-mesh-private-method-surface-get-arrays)

Virtual method to override the surface arrays for a custom class extending **Mesh**.

* * *

[Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] **\_surface\_get\_blend\_shape\_arrays**(index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-mesh-private-method-surface-get-blend-shape-arrays)

Virtual method to override the blend shape arrays for a custom class extending **Mesh**.

* * *

[int](class_int.md#class-int) **\_surface\_get\_format**(index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-mesh-private-method-surface-get-format)

Virtual method to override the surface format for a custom class extending **Mesh**.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_surface\_get\_lods**(index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-mesh-private-method-surface-get-lods)

Virtual method to override the surface LODs for a custom class extending **Mesh**.

* * *

[Material](class_material.md#class-material) **\_surface\_get\_material**(index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-mesh-private-method-surface-get-material)

Virtual method to override the surface material for a custom class extending **Mesh**.

* * *

[int](class_int.md#class-int) **\_surface\_get\_primitive\_type**(index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-mesh-private-method-surface-get-primitive-type)

Virtual method to override the surface primitive type for a custom class extending **Mesh**.

* * *

void **\_surface\_set\_material**(index: [int](class_int.md#class-int), material: [Material](class_material.md#class-material)) virtualrequired [🔗](#class-mesh-private-method-surface-set-material)

Virtual method to override the setting of a `material` at the given `index` for a custom class extending **Mesh**.

* * *

[ConvexPolygonShape3D](class_convexpolygonshape3d.md#class-convexpolygonshape3d) **create\_convex\_shape**(clean: [bool](class_bool.md#class-bool) = true, simplify: [bool](class_bool.md#class-bool) = false) const [🔗](#class-mesh-method-create-convex-shape)

Calculate a [ConvexPolygonShape3D](class_convexpolygonshape3d.md#class-convexpolygonshape3d) from the mesh.

If `clean` is `true` (default), duplicate and interior vertices are removed automatically. You can set it to `false` to make the process faster if not needed.

If `simplify` is `true`, the geometry can be further simplified to reduce the number of vertices. Disabled by default.

* * *

[Mesh](#class-mesh) **create\_outline**(margin: [float](class_float.md#class-float)) const [🔗](#class-mesh-method-create-outline)

Calculate an outline mesh at a defined offset (margin) from the original mesh.

**Note:** This method typically returns the vertices in reverse order (e.g. clockwise to counterclockwise).

* * *

[Resource](class_resource.md#class-resource) **create\_placeholder**() const [🔗](#class-mesh-method-create-placeholder)

Creates a placeholder version of this resource ( [PlaceholderMesh](class_placeholdermesh.md#class-placeholdermesh)).

* * *

[ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) **create\_trimesh\_shape**() const [🔗](#class-mesh-method-create-trimesh-shape)

Calculate a [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) from the mesh.

* * *

[TriangleMesh](class_trianglemesh.md#class-trianglemesh) **generate\_triangle\_mesh**() const [🔗](#class-mesh-method-generate-triangle-mesh)

Generate a [TriangleMesh](class_trianglemesh.md#class-trianglemesh) from the mesh. Considers only surfaces using one of these primitive types: [PRIMITIVE\_TRIANGLES](#class-mesh-constant-primitive-triangles), [PRIMITIVE\_TRIANGLE\_STRIP](#class-mesh-constant-primitive-triangle-strip).

* * *

[AABB](class_aabb.md#class-aabb) **get\_aabb**() const [🔗](#class-mesh-method-get-aabb)

Returns the smallest [AABB](class_aabb.md#class-aabb) enclosing this mesh in local space. Not affected by `custom_aabb`.

**Note:** This is only implemented for [ArrayMesh](class_arraymesh.md#class-arraymesh) and [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_faces**() const [🔗](#class-mesh-method-get-faces)

Returns all the vertices that make up the faces of the mesh. Each three vertices represent one triangle.

* * *

[int](class_int.md#class-int) **get\_surface\_count**() const [🔗](#class-mesh-method-get-surface-count)

Returns the number of surfaces that the **Mesh** holds. This is equivalent to [MeshInstance3D.get\_surface\_override\_material\_count()](class_meshinstance3d.md#class-meshinstance3d-method-get-surface-override-material-count).

* * *

[Array](class_array.md#class-array) **surface\_get\_arrays**(surf\_idx: [int](class_int.md#class-int)) const [🔗](#class-mesh-method-surface-get-arrays)

Returns the arrays for the vertices, normals, UVs, etc. that make up the requested surface (see [ArrayMesh.add\_surface\_from\_arrays()](class_arraymesh.md#class-arraymesh-method-add-surface-from-arrays)).

* * *

[Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] **surface\_get\_blend\_shape\_arrays**(surf\_idx: [int](class_int.md#class-int)) const [🔗](#class-mesh-method-surface-get-blend-shape-arrays)

Returns the blend shape arrays for the requested surface.

* * *

[Material](class_material.md#class-material) **surface\_get\_material**(surf\_idx: [int](class_int.md#class-int)) const [🔗](#class-mesh-method-surface-get-material)

Returns a [Material](class_material.md#class-material) in a given surface. Surface is rendered using this material.

**Note:** This returns the material within the **Mesh** resource, not the [Material](class_material.md#class-material) associated to the [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d)'s Surface Material Override properties. To get the [Material](class_material.md#class-material) associated to the [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d)'s Surface Material Override properties, use [MeshInstance3D.get\_surface\_override\_material()](class_meshinstance3d.md#class-meshinstance3d-method-get-surface-override-material) instead.

* * *

void **surface\_set\_material**(surf\_idx: [int](class_int.md#class-int), material: [Material](class_material.md#class-material)) [🔗](#class-mesh-method-surface-set-material)

Sets a [Material](class_material.md#class-material) for a given surface. Surface will be rendered using this material.

**Note:** This assigns the material within the **Mesh** resource, not the [Material](class_material.md#class-material) associated to the [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d)'s Surface Material Override properties. To set the [Material](class_material.md#class-material) associated to the [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d)'s Surface Material Override properties, use [MeshInstance3D.set\_surface\_override\_material()](class_meshinstance3d.md#class-meshinstance3d-method-set-surface-override-material) instead.

[Previous](class_material.md "Material") [Next](class_meshlibrary.md "MeshLibrary")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_material.md "Material") [Next](class_meshlibrary.md "MeshLibrary")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).