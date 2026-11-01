---
title: MeshInstance3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_meshinstance3d.html
crawled_at: "2026-08-13T10:23:39+12:00"
content_hash: 8632081e7bb37418699661b00f662544cd006204bd9eefaed09c41b876ca5561
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MeshInstance3D

* * *

# MeshInstance3D

**Inherits:** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [SoftBody3D](class_softbody3d.md#class-softbody3d)

Node that instances meshes into a scenario.

## Description

MeshInstance3D is a node that takes a [Mesh](class_mesh.md#class-mesh) resource and adds it to the current scenario by creating an instance of it. This is the class most often used to render 3D geometry and can be used to instance a single [Mesh](class_mesh.md#class-mesh) in many places. This allows reusing geometry, which can save on resources. When a [Mesh](class_mesh.md#class-mesh) has to be instantiated more than thousands of times at close proximity, consider using a [MultiMesh](class_multimesh.md#class-multimesh) in a [MultiMeshInstance3D](class_multimeshinstance3d.md#class-multimeshinstance3d) instead.

## Tutorials

- [3D Material Testers Demo](https://godotengine.org/asset-library/asset/2742)

- [3D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2739)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [Mesh](class_mesh.md#class-mesh) | [mesh](#class-meshinstance3d-property-mesh) |  |
| [NodePath](class_nodepath.md#class-nodepath) | [skeleton](#class-meshinstance3d-property-skeleton) | `NodePath("..")` |
| [Skin](class_skin.md#class-skin) | [skin](#class-meshinstance3d-property-skin) |  |

## Methods

|     |     |
| --- | --- |
| [ArrayMesh](class_arraymesh.md#class-arraymesh) | [bake\_mesh\_from\_current\_blend\_shape\_mix](#class-meshinstance3d-method-bake-mesh-from-current-blend-shape-mix)(existing: [ArrayMesh](class_arraymesh.md#class-arraymesh) = null) |
| [ArrayMesh](class_arraymesh.md#class-arraymesh) | [bake\_mesh\_from\_current\_skeleton\_pose](#class-meshinstance3d-method-bake-mesh-from-current-skeleton-pose)(existing: [ArrayMesh](class_arraymesh.md#class-arraymesh) = null) |
| void | [create\_convex\_collision](#class-meshinstance3d-method-create-convex-collision)(clean: [bool](class_bool.md#class-bool) = true, simplify: [bool](class_bool.md#class-bool) = false) |
| void | [create\_debug\_tangents](#class-meshinstance3d-method-create-debug-tangents)() |
| void | [create\_multiple\_convex\_collisions](#class-meshinstance3d-method-create-multiple-convex-collisions)(settings: [MeshConvexDecompositionSettings](class_meshconvexdecompositionsettings.md#class-meshconvexdecompositionsettings) = null) |
| void | [create\_trimesh\_collision](#class-meshinstance3d-method-create-trimesh-collision)() |
| [int](class_int.md#class-int) | [find\_blend\_shape\_by\_name](#class-meshinstance3d-method-find-blend-shape-by-name)(name: [StringName](class_stringname.md#class-stringname)) |
| [Material](class_material.md#class-material) | [get\_active\_material](#class-meshinstance3d-method-get-active-material)(surface: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_blend\_shape\_count](#class-meshinstance3d-method-get-blend-shape-count)() const |
| [float](class_float.md#class-float) | [get\_blend\_shape\_value](#class-meshinstance3d-method-get-blend-shape-value)(blend\_shape\_idx: [int](class_int.md#class-int)) const |
| [SkinReference](class_skinreference.md#class-skinreference) | [get\_skin\_reference](#class-meshinstance3d-method-get-skin-reference)() const |
| [Material](class_material.md#class-material) | [get\_surface\_override\_material](#class-meshinstance3d-method-get-surface-override-material)(surface: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_surface\_override\_material\_count](#class-meshinstance3d-method-get-surface-override-material-count)() const |
| void | [set\_blend\_shape\_value](#class-meshinstance3d-method-set-blend-shape-value)(blend\_shape\_idx: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) |
| void | [set\_surface\_override\_material](#class-meshinstance3d-method-set-surface-override-material)(surface: [int](class_int.md#class-int), material: [Material](class_material.md#class-material)) |

* * *

## Property Descriptions

[Mesh](class_mesh.md#class-mesh) **mesh** [🔗](#class-meshinstance3d-property-mesh)

- void **set\_mesh**(value: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_mesh**()


The [Mesh](class_mesh.md#class-mesh) resource for the instance.

* * *

[NodePath](class_nodepath.md#class-nodepath) **skeleton** = `NodePath("..")` [🔗](#class-meshinstance3d-property-skeleton)

- void **set\_skeleton\_path**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_skeleton\_path**()


[NodePath](class_nodepath.md#class-nodepath) to the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) associated with the instance.

* * *

[Skin](class_skin.md#class-skin) **skin** [🔗](#class-meshinstance3d-property-skin)

- void **set\_skin**(value: [Skin](class_skin.md#class-skin))

- [Skin](class_skin.md#class-skin) **get\_skin**()


The [Skin](class_skin.md#class-skin) to be used by this instance.

* * *

## Method Descriptions

[ArrayMesh](class_arraymesh.md#class-arraymesh) **bake\_mesh\_from\_current\_blend\_shape\_mix**(existing: [ArrayMesh](class_arraymesh.md#class-arraymesh) = null) [🔗](#class-meshinstance3d-method-bake-mesh-from-current-blend-shape-mix)

Takes a snapshot from the current [ArrayMesh](class_arraymesh.md#class-arraymesh) with all blend shapes applied according to their current weights and bakes it to the provided `existing` mesh. If no `existing` mesh is provided a new [ArrayMesh](class_arraymesh.md#class-arraymesh) is created, baked and returned. Mesh surface materials are not copied.

**Performance:** [Mesh](class_mesh.md#class-mesh) data needs to be received from the GPU, stalling the [RenderingServer](class_renderingserver.md#class-renderingserver) in the process.

* * *

[ArrayMesh](class_arraymesh.md#class-arraymesh) **bake\_mesh\_from\_current\_skeleton\_pose**(existing: [ArrayMesh](class_arraymesh.md#class-arraymesh) = null) [🔗](#class-meshinstance3d-method-bake-mesh-from-current-skeleton-pose)

Takes a snapshot of the current animated skeleton pose of the skinned mesh and bakes it to the provided `existing` mesh. If no `existing` mesh is provided a new [ArrayMesh](class_arraymesh.md#class-arraymesh) is created, baked, and returned. Requires a skeleton with a registered skin to work. Blendshapes are ignored. Mesh surface materials are not copied.

**Performance:** [Mesh](class_mesh.md#class-mesh) data needs to be retrieved from the GPU, stalling the [RenderingServer](class_renderingserver.md#class-renderingserver) in the process.

* * *

void **create\_convex\_collision**(clean: [bool](class_bool.md#class-bool) = true, simplify: [bool](class_bool.md#class-bool) = false) [🔗](#class-meshinstance3d-method-create-convex-collision)

This helper creates a [StaticBody3D](class_staticbody3d.md#class-staticbody3d) child node with a [ConvexPolygonShape3D](class_convexpolygonshape3d.md#class-convexpolygonshape3d) collision shape calculated from the mesh geometry. It's mainly used for testing.

If `clean` is `true` (default), duplicate and interior vertices are removed automatically. You can set it to `false` to make the process faster if not needed.

If `simplify` is `true`, the geometry can be further simplified to reduce the number of vertices. Disabled by default.

* * *

void **create\_debug\_tangents**() [🔗](#class-meshinstance3d-method-create-debug-tangents)

This helper creates a **MeshInstance3D** child node with gizmos at every vertex calculated from the mesh geometry. It's mainly used for testing.

* * *

void **create\_multiple\_convex\_collisions**(settings: [MeshConvexDecompositionSettings](class_meshconvexdecompositionsettings.md#class-meshconvexdecompositionsettings) = null) [🔗](#class-meshinstance3d-method-create-multiple-convex-collisions)

This helper creates a [StaticBody3D](class_staticbody3d.md#class-staticbody3d) child node with multiple [ConvexPolygonShape3D](class_convexpolygonshape3d.md#class-convexpolygonshape3d) collision shapes calculated from the mesh geometry via convex decomposition. The convex decomposition operation can be controlled with parameters from the optional `settings`.

* * *

void **create\_trimesh\_collision**() [🔗](#class-meshinstance3d-method-create-trimesh-collision)

This helper creates a [StaticBody3D](class_staticbody3d.md#class-staticbody3d) child node with a [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) collision shape calculated from the mesh geometry. It's mainly used for testing.

* * *

[int](class_int.md#class-int) **find\_blend\_shape\_by\_name**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-meshinstance3d-method-find-blend-shape-by-name)

Returns the index of the blend shape with the given `name`. Returns `-1` if no blend shape with this name exists, including when [mesh](#class-meshinstance3d-property-mesh) is `null`.

* * *

[Material](class_material.md#class-material) **get\_active\_material**(surface: [int](class_int.md#class-int)) const [🔗](#class-meshinstance3d-method-get-active-material)

Returns the [Material](class_material.md#class-material) that will be used by the [Mesh](class_mesh.md#class-mesh) when drawing. This can return the [GeometryInstance3D.material\_override](class_geometryinstance3d.md#class-geometryinstance3d-property-material-override), the surface override [Material](class_material.md#class-material) defined in this **MeshInstance3D**, or the surface [Material](class_material.md#class-material) defined in the [mesh](#class-meshinstance3d-property-mesh). For example, if [GeometryInstance3D.material\_override](class_geometryinstance3d.md#class-geometryinstance3d-property-material-override) is used, all surfaces will return the override material.

Returns `null` if no material is active, including when [mesh](#class-meshinstance3d-property-mesh) is `null`.

* * *

[int](class_int.md#class-int) **get\_blend\_shape\_count**() const [🔗](#class-meshinstance3d-method-get-blend-shape-count)

Returns the number of blend shapes available. Produces an error if [mesh](#class-meshinstance3d-property-mesh) is `null`.

* * *

[float](class_float.md#class-float) **get\_blend\_shape\_value**(blend\_shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-meshinstance3d-method-get-blend-shape-value)

Returns the value of the blend shape at the given `blend_shape_idx`. Returns `0.0` and produces an error if [mesh](#class-meshinstance3d-property-mesh) is `null` or doesn't have a blend shape at that index.

* * *

[SkinReference](class_skinreference.md#class-skinreference) **get\_skin\_reference**() const [🔗](#class-meshinstance3d-method-get-skin-reference)

Returns the internal [SkinReference](class_skinreference.md#class-skinreference) containing the skeleton's [RID](class_rid.md#class-rid) attached to this RID. See also [Resource.get\_rid()](class_resource.md#class-resource-method-get-rid), [SkinReference.get\_skeleton()](class_skinreference.md#class-skinreference-method-get-skeleton), and [RenderingServer.instance\_attach\_skeleton()](class_renderingserver.md#class-renderingserver-method-instance-attach-skeleton).

* * *

[Material](class_material.md#class-material) **get\_surface\_override\_material**(surface: [int](class_int.md#class-int)) const [🔗](#class-meshinstance3d-method-get-surface-override-material)

Returns the override [Material](class_material.md#class-material) for the specified `surface` of the [Mesh](class_mesh.md#class-mesh) resource. See also [get\_surface\_override\_material\_count()](#class-meshinstance3d-method-get-surface-override-material-count).

**Note:** This returns the [Material](class_material.md#class-material) associated to the **MeshInstance3D**'s Surface Material Override properties, not the material within the [Mesh](class_mesh.md#class-mesh) resource. To get the material within the [Mesh](class_mesh.md#class-mesh) resource, use [Mesh.surface\_get\_material()](class_mesh.md#class-mesh-method-surface-get-material) instead.

* * *

[int](class_int.md#class-int) **get\_surface\_override\_material\_count**() const [🔗](#class-meshinstance3d-method-get-surface-override-material-count)

Returns the number of surface override materials. This is equivalent to [Mesh.get\_surface\_count()](class_mesh.md#class-mesh-method-get-surface-count). See also [get\_surface\_override\_material()](#class-meshinstance3d-method-get-surface-override-material).

* * *

void **set\_blend\_shape\_value**(blend\_shape\_idx: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) [🔗](#class-meshinstance3d-method-set-blend-shape-value)

Sets the value of the blend shape at `blend_shape_idx` to `value`. Produces an error if [mesh](#class-meshinstance3d-property-mesh) is `null` or doesn't have a blend shape at that index.

* * *

void **set\_surface\_override\_material**(surface: [int](class_int.md#class-int), material: [Material](class_material.md#class-material)) [🔗](#class-meshinstance3d-method-set-surface-override-material)

Sets the override `material` for the specified `surface` of the [Mesh](class_mesh.md#class-mesh) resource. This material is associated with this **MeshInstance3D** rather than with [mesh](#class-meshinstance3d-property-mesh).

**Note:** This assigns the [Material](class_material.md#class-material) associated to the **MeshInstance3D**'s Surface Material Override properties, not the material within the [Mesh](class_mesh.md#class-mesh) resource. To set the material within the [Mesh](class_mesh.md#class-mesh) resource, use [Mesh.surface\_set\_material()](class_mesh.md#class-mesh-method-surface-set-material) instead.

[Previous](class_meshinstance2d.md "MeshInstance2D") [Next](class_missingnode.md "MissingNode")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_meshinstance2d.md "MeshInstance2D") [Next](class_missingnode.md "MissingNode")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).