---
title: CSGCylinder3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_csgcylinder3d.html
crawled_at: "2026-08-13T10:24:15+12:00"
content_hash: 746c0e46d6ab82af7351019df4f337010f827056cc70e34d1cc7cb8f1f3e1847
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CSGCylinder3D

* * *

# CSGCylinder3D

**Inherits:** [CSGPrimitive3D](class_csgprimitive3d.md#class-csgprimitive3d) **<** [CSGShape3D](class_csgshape3d.md#class-csgshape3d) **<** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A CSG Cylinder shape.

## Description

This node allows you to create a cylinder (or cone) for use with the CSG system.

**Note:** CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) with a [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh). Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.

## Tutorials

- [Prototyping levels with CSG](../tutorials/3d/csg_tools.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [cone](#class-csgcylinder3d-property-cone) | `false` |
| [float](class_float.md#class-float) | [height](#class-csgcylinder3d-property-height) | `2.0` |
| [Material](class_material.md#class-material) | [material](#class-csgcylinder3d-property-material) |  |
| [float](class_float.md#class-float) | [radius](#class-csgcylinder3d-property-radius) | `0.5` |
| [int](class_int.md#class-int) | [sides](#class-csgcylinder3d-property-sides) | `8` |
| [bool](class_bool.md#class-bool) | [smooth\_faces](#class-csgcylinder3d-property-smooth-faces) | `true` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **cone** = `false` [🔗](#class-csgcylinder3d-property-cone)

- void **set\_cone**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_cone**()


If `true` a cone is created, the [radius](#class-csgcylinder3d-property-radius) will only apply to one side.

* * *

[float](class_float.md#class-float) **height** = `2.0` [🔗](#class-csgcylinder3d-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


The height of the cylinder.

* * *

[Material](class_material.md#class-material) **material** [🔗](#class-csgcylinder3d-property-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


The material used to render the cylinder.

* * *

[float](class_float.md#class-float) **radius** = `0.5` [🔗](#class-csgcylinder3d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The radius of the cylinder.

* * *

[int](class_int.md#class-int) **sides** = `8` [🔗](#class-csgcylinder3d-property-sides)

- void **set\_sides**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sides**()


The number of sides of the cylinder, the higher this number the more detail there will be in the cylinder.

* * *

[bool](class_bool.md#class-bool) **smooth\_faces** = `true` [🔗](#class-csgcylinder3d-property-smooth-faces)

- void **set\_smooth\_faces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_smooth\_faces**()


If `true` the normals of the cylinder are set to give a smooth effect making the cylinder seem rounded. If `false` the cylinder will have a flat shaded look.

[Previous](class_csgcombiner3d.md "CSGCombiner3D") [Next](class_csgmesh3d.md "CSGMesh3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_csgcombiner3d.md "CSGCombiner3D") [Next](class_csgmesh3d.md "CSGMesh3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).