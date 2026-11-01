---
title: BoxMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_boxmesh.html
crawled_at: "2026-08-13T10:42:04+12:00"
content_hash: 491d2b3e708309ddb8ad267090be23dbf5253762044d4be0ae27c71e7a07ca72
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - BoxMesh

* * *

# BoxMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Generate an axis-aligned box [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Description

Generate an axis-aligned box [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

The box's UV layout is arranged in a 3×2 layout that allows texturing each face individually. To apply the same texture on all faces, change the material's UV property to `Vector3(3, 2, 1)`. This is equivalent to adding `UV *= vec2(3.0, 2.0)` in a vertex shader.

**Note:** When using a large textured **BoxMesh** (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase [subdivide\_depth](#class-boxmesh-property-subdivide-depth), [subdivide\_height](#class-boxmesh-property-subdivide-height) and [subdivide\_width](#class-boxmesh-property-subdivide-width) until you no longer notice UV jittering.

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-boxmesh-property-size) | `Vector3(1, 1, 1)` |
| [int](class_int.md#class-int) | [subdivide\_depth](#class-boxmesh-property-subdivide-depth) | `0` |
| [int](class_int.md#class-int) | [subdivide\_height](#class-boxmesh-property-subdivide-height) | `0` |
| [int](class_int.md#class-int) | [subdivide\_width](#class-boxmesh-property-subdivide-width) | `0` |

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(1, 1, 1)` [🔗](#class-boxmesh-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The box's width, height and depth.

* * *

[int](class_int.md#class-int) **subdivide\_depth** = `0` [🔗](#class-boxmesh-property-subdivide-depth)

- void **set\_subdivide\_depth**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_subdivide\_depth**()


Number of extra edge loops inserted along the Z axis.

* * *

[int](class_int.md#class-int) **subdivide\_height** = `0` [🔗](#class-boxmesh-property-subdivide-height)

- void **set\_subdivide\_height**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_subdivide\_height**()


Number of extra edge loops inserted along the Y axis.

* * *

[int](class_int.md#class-int) **subdivide\_width** = `0` [🔗](#class-boxmesh-property-subdivide-width)

- void **set\_subdivide\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_subdivide\_width**()


Number of extra edge loops inserted along the X axis.

[Previous](class_bonemap.md "BoneMap") [Next](class_boxoccluder3d.md "BoxOccluder3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_bonemap.md "BoneMap") [Next](class_boxoccluder3d.md "BoxOccluder3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).