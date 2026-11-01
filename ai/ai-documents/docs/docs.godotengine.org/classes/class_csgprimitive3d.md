---
title: CSGPrimitive3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_csgprimitive3d.html
crawled_at: "2026-08-13T10:39:09+12:00"
content_hash: 4d7aaa6e33b3259632fbd535db2ee18de6e2735be8e0f4669c07173c8fb07726
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CSGPrimitive3D

* * *

# CSGPrimitive3D

**Inherits:** [CSGShape3D](class_csgshape3d.md#class-csgshape3d) **<** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [CSGBox3D](class_csgbox3d.md#class-csgbox3d), [CSGCylinder3D](class_csgcylinder3d.md#class-csgcylinder3d), [CSGMesh3D](class_csgmesh3d.md#class-csgmesh3d), [CSGPolygon3D](class_csgpolygon3d.md#class-csgpolygon3d), [CSGSphere3D](class_csgsphere3d.md#class-csgsphere3d), [CSGTorus3D](class_csgtorus3d.md#class-csgtorus3d)

Base class for CSG primitives.

## Description

Parent class for various CSG primitives. It contains code and functionality that is common between them. It cannot be used directly. Instead use one of the various classes that inherit from it.

**Note:** CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) with a [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh). Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.

## Tutorials

- [Prototyping levels with CSG](../tutorials/3d/csg_tools.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [flip\_faces](#class-csgprimitive3d-property-flip-faces) | `false` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **flip\_faces** = `false` [🔗](#class-csgprimitive3d-property-flip-faces)

- void **set\_flip\_faces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flip\_faces**()


If set, the order of the vertices in each triangle are reversed resulting in the backside of the mesh being drawn.

[Previous](class_csgpolygon3d.md "CSGPolygon3D") [Next](class_csgshape3d.md "CSGShape3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_csgpolygon3d.md "CSGPolygon3D") [Next](class_csgshape3d.md "CSGShape3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).