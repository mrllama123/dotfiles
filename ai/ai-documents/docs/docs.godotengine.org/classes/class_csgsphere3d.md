---
title: CSGSphere3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_csgsphere3d.html
crawled_at: "2026-08-13T10:24:29+12:00"
content_hash: b048de83dca3c39a1c45fc71850fa9ec75c8f349e3f4dad0d7cd98f6fb373379
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CSGSphere3D

* * *

# CSGSphere3D

**Inherits:** [CSGPrimitive3D](class_csgprimitive3d.md#class-csgprimitive3d) **<** [CSGShape3D](class_csgshape3d.md#class-csgshape3d) **<** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A CSG Sphere shape.

## Description

This node allows you to create a sphere for use with the CSG system.

**Note:** CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) with a [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh). Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.

## Tutorials

- [Prototyping levels with CSG](../tutorials/3d/csg_tools.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Material](class_material.md#class-material) | [material](#class-csgsphere3d-property-material) |  |
| [int](class_int.md#class-int) | [radial\_segments](#class-csgsphere3d-property-radial-segments) | `12` |
| [float](class_float.md#class-float) | [radius](#class-csgsphere3d-property-radius) | `0.5` |
| [int](class_int.md#class-int) | [rings](#class-csgsphere3d-property-rings) | `6` |
| [bool](class_bool.md#class-bool) | [smooth\_faces](#class-csgsphere3d-property-smooth-faces) | `true` |

* * *

## Property Descriptions

[Material](class_material.md#class-material) **material** [🔗](#class-csgsphere3d-property-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


The material used to render the sphere.

* * *

[int](class_int.md#class-int) **radial\_segments** = `12` [🔗](#class-csgsphere3d-property-radial-segments)

- void **set\_radial\_segments**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_radial\_segments**()


Number of vertical slices for the sphere.

* * *

[float](class_float.md#class-float) **radius** = `0.5` [🔗](#class-csgsphere3d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


Radius of the sphere.

* * *

[int](class_int.md#class-int) **rings** = `6` [🔗](#class-csgsphere3d-property-rings)

- void **set\_rings**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_rings**()


Number of horizontal slices for the sphere.

* * *

[bool](class_bool.md#class-bool) **smooth\_faces** = `true` [🔗](#class-csgsphere3d-property-smooth-faces)

- void **set\_smooth\_faces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_smooth\_faces**()


If `true` the normals of the sphere are set to give a smooth effect making the sphere seem rounded. If `false` the sphere will have a flat shaded look.

[Previous](class_csgshape3d.md "CSGShape3D") [Next](class_csgtorus3d.md "CSGTorus3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_csgshape3d.md "CSGShape3D") [Next](class_csgtorus3d.md "CSGTorus3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).