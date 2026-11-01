---
title: PrimitiveMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_primitivemesh.html
crawled_at: "2026-08-13T10:26:28+12:00"
content_hash: 5690793a57b2c70bb9c8a1da183dd8bfcdd08d6fa74456e6cbf05c7bd3fa2b50
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PrimitiveMesh

* * *

# PrimitiveMesh

**Inherits:** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [BoxMesh](class_boxmesh.md#class-boxmesh), [CapsuleMesh](class_capsulemesh.md#class-capsulemesh), [CylinderMesh](class_cylindermesh.md#class-cylindermesh), [PlaneMesh](class_planemesh.md#class-planemesh), [PointMesh](class_pointmesh.md#class-pointmesh), [PrismMesh](class_prismmesh.md#class-prismmesh), [RibbonTrailMesh](class_ribbontrailmesh.md#class-ribbontrailmesh), [SphereMesh](class_spheremesh.md#class-spheremesh), [TextMesh](class_textmesh.md#class-textmesh), [TorusMesh](class_torusmesh.md#class-torusmesh), [TubeTrailMesh](class_tubetrailmesh.md#class-tubetrailmesh)

Base class for all primitive meshes. Handles applying a [Material](class_material.md#class-material) to a primitive mesh.

## Description

Base class for all primitive meshes. Handles applying a [Material](class_material.md#class-material) to a primitive mesh. Examples include [BoxMesh](class_boxmesh.md#class-boxmesh), [CapsuleMesh](class_capsulemesh.md#class-capsulemesh), [CylinderMesh](class_cylindermesh.md#class-cylindermesh), [PlaneMesh](class_planemesh.md#class-planemesh), [PrismMesh](class_prismmesh.md#class-prismmesh), and [SphereMesh](class_spheremesh.md#class-spheremesh).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [add\_uv2](#class-primitivemesh-property-add-uv2) | `false` |
| [AABB](class_aabb.md#class-aabb) | [custom\_aabb](#class-primitivemesh-property-custom-aabb) | `AABB(0, 0, 0, 0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [flip\_faces](#class-primitivemesh-property-flip-faces) | `false` |
| [Material](class_material.md#class-material) | [material](#class-primitivemesh-property-material) |  |
| [float](class_float.md#class-float) | [uv2\_padding](#class-primitivemesh-property-uv2-padding) | `2.0` |

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array) | [\_create\_mesh\_array](#class-primitivemesh-private-method-create-mesh-array)() virtualconst |
| [Array](class_array.md#class-array) | [get\_mesh\_arrays](#class-primitivemesh-method-get-mesh-arrays)() const |
| void | [request\_update](#class-primitivemesh-method-request-update)() |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **add\_uv2** = `false` [🔗](#class-primitivemesh-property-add-uv2)

- void **set\_add\_uv2**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_add\_uv2**()


If set, generates UV2 UV coordinates applying a padding using the [uv2\_padding](#class-primitivemesh-property-uv2-padding) setting. UV2 is needed for lightmapping.

* * *

[AABB](class_aabb.md#class-aabb) **custom\_aabb** = `AABB(0, 0, 0, 0, 0, 0)` [🔗](#class-primitivemesh-property-custom-aabb)

- void **set\_custom\_aabb**(value: [AABB](class_aabb.md#class-aabb))

- [AABB](class_aabb.md#class-aabb) **get\_custom\_aabb**()


Overrides the [AABB](class_aabb.md#class-aabb) with one defined by user for use with frustum culling. Especially useful to avoid unexpected culling when using a shader to offset vertices.

* * *

[bool](class_bool.md#class-bool) **flip\_faces** = `false` [🔗](#class-primitivemesh-property-flip-faces)

- void **set\_flip\_faces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flip\_faces**()


If `true`, the order of the vertices in each triangle is reversed, resulting in the backside of the mesh being drawn.

This gives the same result as using [BaseMaterial3D.CULL\_FRONT](class_basematerial3d.md#class-basematerial3d-constant-cull-front) in [BaseMaterial3D.cull\_mode](class_basematerial3d.md#class-basematerial3d-property-cull-mode).

* * *

[Material](class_material.md#class-material) **material** [🔗](#class-primitivemesh-property-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


The current [Material](class_material.md#class-material) of the primitive mesh.

* * *

[float](class_float.md#class-float) **uv2\_padding** = `2.0` [🔗](#class-primitivemesh-property-uv2-padding)

- void **set\_uv2\_padding**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_uv2\_padding**()


If [add\_uv2](#class-primitivemesh-property-add-uv2) is set, specifies the padding in pixels applied along seams of the mesh. Lower padding values allow making better use of the lightmap texture (resulting in higher texel density), but may introduce visible lightmap bleeding along edges.

If the size of the lightmap texture can't be determined when generating the mesh, UV2 is calculated assuming a texture size of 1024x1024.

* * *

## Method Descriptions

[Array](class_array.md#class-array) **\_create\_mesh\_array**() virtualconst [🔗](#class-primitivemesh-private-method-create-mesh-array)

Override this method to customize how this primitive mesh should be generated. Should return an [Array](class_array.md#class-array) where each element is another Array of values required for the mesh (see the [ArrayType](class_mesh.md#enum-mesh-arraytype) constants).

* * *

[Array](class_array.md#class-array) **get\_mesh\_arrays**() const [🔗](#class-primitivemesh-method-get-mesh-arrays)

Returns the mesh arrays used to make up the surface of this primitive mesh.

**Example:** Pass the result to [ArrayMesh.add\_surface\_from\_arrays()](class_arraymesh.md#class-arraymesh-method-add-surface-from-arrays) to create a new surface:

GDScriptC#

```
var c = CylinderMesh.new()
var arr_mesh = ArrayMesh.new()
arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, c.get_mesh_arrays())

```

```
var c = new CylinderMesh();
var arrMesh = new ArrayMesh();
arrMesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, c.GetMeshArrays());

```

* * *

void **request\_update**() [🔗](#class-primitivemesh-method-request-update)

Request an update of this primitive mesh based on its properties.

[Previous](class_portablecompressedtexture2d.md "PortableCompressedTexture2D") [Next](class_prismmesh.md "PrismMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_portablecompressedtexture2d.md "PortableCompressedTexture2D") [Next](class_prismmesh.md "PrismMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).