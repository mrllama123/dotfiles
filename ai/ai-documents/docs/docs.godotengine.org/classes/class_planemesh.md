---
title: PlaneMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_planemesh.html
crawled_at: "2026-08-13T10:35:11+12:00"
content_hash: cd7218c212e43056340f7cbb42c03bed0b51d37317672cf53c5ae9d341df0239
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PlaneMesh

* * *

# PlaneMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [QuadMesh](class_quadmesh.md#class-quadmesh)

Class representing a planar [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Description

Class representing a planar [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh). This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Z axes; this default rotation isn't suited for use with billboarded materials. For billboarded materials, change [orientation](#class-planemesh-property-orientation) to [FACE\_Z](#class-planemesh-constant-face-z).

**Note:** When using a large textured **PlaneMesh** (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase [subdivide\_depth](#class-planemesh-property-subdivide-depth) and [subdivide\_width](#class-planemesh-property-subdivide-width) until you no longer notice UV jittering.

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [center\_offset](#class-planemesh-property-center-offset) | `Vector3(0, 0, 0)` |
| [Orientation](#enum-planemesh-orientation) | [orientation](#class-planemesh-property-orientation) | `1` |
| [Vector2](class_vector2.md#class-vector2) | [size](#class-planemesh-property-size) | `Vector2(2, 2)` |
| [int](class_int.md#class-int) | [subdivide\_depth](#class-planemesh-property-subdivide-depth) | `0` |
| [int](class_int.md#class-int) | [subdivide\_width](#class-planemesh-property-subdivide-width) | `0` |

* * *

## Enumerations

enum **Orientation**: [🔗](#enum-planemesh-orientation)

[Orientation](#enum-planemesh-orientation) **FACE\_X** = `0`

**PlaneMesh** will face the positive X-axis.

[Orientation](#enum-planemesh-orientation) **FACE\_Y** = `1`

**PlaneMesh** will face the positive Y-axis. This matches the behavior of the **PlaneMesh** in Godot 3.x.

[Orientation](#enum-planemesh-orientation) **FACE\_Z** = `2`

**PlaneMesh** will face the positive Z-axis. This matches the behavior of the QuadMesh in Godot 3.x.

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **center\_offset** = `Vector3(0, 0, 0)` [🔗](#class-planemesh-property-center-offset)

- void **set\_center\_offset**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_center\_offset**()


Offset of the generated plane. Useful for particles.

* * *

[Orientation](#enum-planemesh-orientation) **orientation** = `1` [🔗](#class-planemesh-property-orientation)

- void **set\_orientation**(value: [Orientation](#enum-planemesh-orientation))

- [Orientation](#enum-planemesh-orientation) **get\_orientation**()


Direction that the **PlaneMesh** is facing.

* * *

[Vector2](class_vector2.md#class-vector2) **size** = `Vector2(2, 2)` [🔗](#class-planemesh-property-size)

- void **set\_size**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_size**()


Size of the generated plane.

* * *

[int](class_int.md#class-int) **subdivide\_depth** = `0` [🔗](#class-planemesh-property-subdivide-depth)

- void **set\_subdivide\_depth**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_subdivide\_depth**()


Number of subdivision along the Z axis.

* * *

[int](class_int.md#class-int) **subdivide\_width** = `0` [🔗](#class-planemesh-property-subdivide-width)

- void **set\_subdivide\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_subdivide\_width**()


Number of subdivision along the X axis.

[Previous](class_placeholdertexturelayered.md "PlaceholderTextureLayered") [Next](class_pointmesh.md "PointMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_placeholdertexturelayered.md "PlaceholderTextureLayered") [Next](class_pointmesh.md "PointMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).