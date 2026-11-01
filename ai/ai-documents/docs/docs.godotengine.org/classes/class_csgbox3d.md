---
title: CSGBox3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_csgbox3d.html
crawled_at: "2026-08-13T10:24:19+12:00"
content_hash: 16f662ea451d33618875913819c0f76eb2a6c115a0a6d232ceba13db972a6b51
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CSGBox3D

* * *

# CSGBox3D

**Inherits:** [CSGPrimitive3D](class_csgprimitive3d.md#class-csgprimitive3d) **<** [CSGShape3D](class_csgshape3d.md#class-csgshape3d) **<** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A CSG Box shape.

## Description

This node allows you to create a box for use with the CSG system.

**Note:** CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) with a [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh). Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.

## Tutorials

- [Prototyping levels with CSG](../tutorials/3d/csg_tools.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Material](class_material.md#class-material) | [material](#class-csgbox3d-property-material) |  |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-csgbox3d-property-size) | `Vector3(1, 1, 1)` |

* * *

## Property Descriptions

[Material](class_material.md#class-material) **material** [🔗](#class-csgbox3d-property-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


The material used to render the box.

* * *

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(1, 1, 1)` [🔗](#class-csgbox3d-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The box's width, height and depth.

[Previous](class_cpuparticles3d.md "CPUParticles3D") [Next](class_csgcombiner3d.md "CSGCombiner3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cpuparticles3d.md "CPUParticles3D") [Next](class_csgcombiner3d.md "CSGCombiner3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).