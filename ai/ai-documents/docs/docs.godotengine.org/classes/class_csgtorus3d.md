---
title: CSGTorus3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_csgtorus3d.html
crawled_at: "2026-08-13T10:30:26+12:00"
content_hash: 2d489bc425b1c664aa846827b3a528215a36ecfbe1eeac3c4e33057c40ce614a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CSGTorus3D

* * *

# CSGTorus3D

**Inherits:** [CSGPrimitive3D](class_csgprimitive3d.md#class-csgprimitive3d) **<** [CSGShape3D](class_csgshape3d.md#class-csgshape3d) **<** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A CSG Torus shape.

## Description

This node allows you to create a torus for use with the CSG system.

**Note:** CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) with a [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh). Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.

## Tutorials

- [Prototyping levels with CSG](../tutorials/3d/csg_tools.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [inner\_radius](#class-csgtorus3d-property-inner-radius) | `0.5` |
| [Material](class_material.md#class-material) | [material](#class-csgtorus3d-property-material) |  |
| [float](class_float.md#class-float) | [outer\_radius](#class-csgtorus3d-property-outer-radius) | `1.0` |
| [int](class_int.md#class-int) | [ring\_sides](#class-csgtorus3d-property-ring-sides) | `6` |
| [int](class_int.md#class-int) | [sides](#class-csgtorus3d-property-sides) | `8` |
| [bool](class_bool.md#class-bool) | [smooth\_faces](#class-csgtorus3d-property-smooth-faces) | `true` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **inner\_radius** = `0.5` [🔗](#class-csgtorus3d-property-inner-radius)

- void **set\_inner\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_inner\_radius**()


The inner radius of the torus.

* * *

[Material](class_material.md#class-material) **material** [🔗](#class-csgtorus3d-property-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


The material used to render the torus.

* * *

[float](class_float.md#class-float) **outer\_radius** = `1.0` [🔗](#class-csgtorus3d-property-outer-radius)

- void **set\_outer\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_outer\_radius**()


The outer radius of the torus.

* * *

[int](class_int.md#class-int) **ring\_sides** = `6` [🔗](#class-csgtorus3d-property-ring-sides)

- void **set\_ring\_sides**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_ring\_sides**()


The number of edges each ring of the torus is constructed of.

* * *

[int](class_int.md#class-int) **sides** = `8` [🔗](#class-csgtorus3d-property-sides)

- void **set\_sides**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sides**()


The number of slices the torus is constructed of.

* * *

[bool](class_bool.md#class-bool) **smooth\_faces** = `true` [🔗](#class-csgtorus3d-property-smooth-faces)

- void **set\_smooth\_faces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_smooth\_faces**()


If `true` the normals of the torus are set to give a smooth effect making the torus seem rounded. If `false` the torus will have a flat shaded look.

[Previous](class_csgsphere3d.md "CSGSphere3D") [Next](class_dampedspringjoint2d.md "DampedSpringJoint2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_csgsphere3d.md "CSGSphere3D") [Next](class_dampedspringjoint2d.md "DampedSpringJoint2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).