---
title: PrismMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_prismmesh.html
crawled_at: "2026-08-13T10:36:04+12:00"
content_hash: e72aa184174fe58278700f353a6b2adfae55f0f119af1c1d8afc0574bbf0a1b2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PrismMesh

* * *

# PrismMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Class representing a prism-shaped [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Description

Class representing a prism-shaped [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [left\_to\_right](#class-prismmesh-property-left-to-right) | `0.5` |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-prismmesh-property-size) | `Vector3(1, 1, 1)` |
| [int](class_int.md#class-int) | [subdivide\_depth](#class-prismmesh-property-subdivide-depth) | `0` |
| [int](class_int.md#class-int) | [subdivide\_height](#class-prismmesh-property-subdivide-height) | `0` |
| [int](class_int.md#class-int) | [subdivide\_width](#class-prismmesh-property-subdivide-width) | `0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **left\_to\_right** = `0.5` [🔗](#class-prismmesh-property-left-to-right)

- void **set\_left\_to\_right**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_left\_to\_right**()


Displacement of the upper edge along the X axis. 0.0 positions edge straight above the bottom-left edge.

* * *

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(1, 1, 1)` [🔗](#class-prismmesh-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


Size of the prism.

* * *

[int](class_int.md#class-int) **subdivide\_depth** = `0` [🔗](#class-prismmesh-property-subdivide-depth)

- void **set\_subdivide\_depth**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_subdivide\_depth**()


Number of added edge loops along the Z axis.

* * *

[int](class_int.md#class-int) **subdivide\_height** = `0` [🔗](#class-prismmesh-property-subdivide-height)

- void **set\_subdivide\_height**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_subdivide\_height**()


Number of added edge loops along the Y axis.

* * *

[int](class_int.md#class-int) **subdivide\_width** = `0` [🔗](#class-prismmesh-property-subdivide-width)

- void **set\_subdivide\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_subdivide\_width**()


Number of added edge loops along the X axis.

[Previous](class_primitivemesh.md "PrimitiveMesh") [Next](class_proceduralskymaterial.md "ProceduralSkyMaterial")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_primitivemesh.md "PrimitiveMesh") [Next](class_proceduralskymaterial.md "ProceduralSkyMaterial")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).