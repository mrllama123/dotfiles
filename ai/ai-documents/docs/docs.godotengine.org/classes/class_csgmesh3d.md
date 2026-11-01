---
title: CSGMesh3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_csgmesh3d.html
crawled_at: "2026-08-13T10:30:17+12:00"
content_hash: 0de5a7d57aca4df02265a477e8c02658bb5319e9c967c424a1cf946444f91b5e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CSGMesh3D

* * *

# CSGMesh3D

**Inherits:** [CSGPrimitive3D](class_csgprimitive3d.md#class-csgprimitive3d) **<** [CSGShape3D](class_csgshape3d.md#class-csgshape3d) **<** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A CSG Mesh shape that uses a mesh resource.

## Description

This CSG node allows you to use any mesh resource as a CSG shape, provided it is _manifold_. A manifold shape is closed, does not self-intersect, does not contain internal faces and has no edges that connect to more than two faces. See also [CSGPolygon3D](class_csgpolygon3d.md#class-csgpolygon3d) for drawing 2D extruded polygons to be used as CSG nodes.

**Note:** CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) with a [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh). Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.

## Tutorials

- [Prototyping levels with CSG](../tutorials/3d/csg_tools.md)


## Properties

|     |     |
| --- | --- |
| [Material](class_material.md#class-material) | [material](#class-csgmesh3d-property-material) |
| [Mesh](class_mesh.md#class-mesh) | [mesh](#class-csgmesh3d-property-mesh) |

* * *

## Property Descriptions

[Material](class_material.md#class-material) **material** [🔗](#class-csgmesh3d-property-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


The [Material](class_material.md#class-material) used in drawing the CSG shape.

* * *

[Mesh](class_mesh.md#class-mesh) **mesh** [🔗](#class-csgmesh3d-property-mesh)

- void **set\_mesh**(value: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_mesh**()


The [Mesh](class_mesh.md#class-mesh) resource to use as a CSG shape.

**Note:** Some [Mesh](class_mesh.md#class-mesh) types such as [PlaneMesh](class_planemesh.md#class-planemesh), [PointMesh](class_pointmesh.md#class-pointmesh), [QuadMesh](class_quadmesh.md#class-quadmesh), and [RibbonTrailMesh](class_ribbontrailmesh.md#class-ribbontrailmesh) are excluded from the type hint for this property, as these primitives are non- _manifold_ and thus not compatible with the CSG algorithm.

**Note:** When using an [ArrayMesh](class_arraymesh.md#class-arraymesh), all vertex attributes except [Mesh.ARRAY\_VERTEX](class_mesh.md#class-mesh-constant-array-vertex), [Mesh.ARRAY\_NORMAL](class_mesh.md#class-mesh-constant-array-normal) and [Mesh.ARRAY\_TEX\_UV](class_mesh.md#class-mesh-constant-array-tex-uv) are left unused. Only [Mesh.ARRAY\_VERTEX](class_mesh.md#class-mesh-constant-array-vertex) and [Mesh.ARRAY\_TEX\_UV](class_mesh.md#class-mesh-constant-array-tex-uv) will be passed to the GPU.

[Mesh.ARRAY\_NORMAL](class_mesh.md#class-mesh-constant-array-normal) is only used to determine which faces require the use of flat shading. By default, CSGMesh will ignore the mesh's vertex normals, recalculate them for each vertex and use a smooth shader. If a flat shader is required for a face, ensure that all vertex normals of the face are approximately equal.

[Previous](class_csgcylinder3d.md "CSGCylinder3D") [Next](class_csgpolygon3d.md "CSGPolygon3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_csgcylinder3d.md "CSGCylinder3D") [Next](class_csgpolygon3d.md "CSGPolygon3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).