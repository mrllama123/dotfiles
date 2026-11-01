---
title: QuadMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_quadmesh.html
crawled_at: "2026-08-13T10:28:38+12:00"
content_hash: f8b2a62490380519470418f51f954835032b88c77b00286f7387f8eb4c3283be
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - QuadMesh

* * *

# QuadMesh

**Inherits:** [PlaneMesh](class_planemesh.md#class-planemesh) **<** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Class representing a square mesh facing the camera.

## Description

Class representing a square [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh). This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Y axes; this rotation is more suited for use with billboarded materials. A **QuadMesh** is equivalent to a [PlaneMesh](class_planemesh.md#class-planemesh) except its default [PlaneMesh.orientation](class_planemesh.md#class-planemesh-property-orientation) is [PlaneMesh.FACE\_Z](class_planemesh.md#class-planemesh-constant-face-z).

## Tutorials

- [GUI in 3D Viewport Demo](https://godotengine.org/asset-library/asset/2807)

- [2D in 3D Viewport Demo](https://godotengine.org/asset-library/asset/2803)


## Properties

|     |     |     |
| --- | --- | --- |
| [Orientation](class_planemesh.md#enum-planemesh-orientation) | orientation | `2` (overrides [PlaneMesh](class_planemesh.md#class-planemesh-property-orientation)) |
| [Vector2](class_vector2.md#class-vector2) | size | `Vector2(1, 1)` (overrides [PlaneMesh](class_planemesh.md#class-planemesh-property-size)) |

[Previous](class_proceduralskymaterial.md "ProceduralSkyMaterial") [Next](class_quadoccluder3d.md "QuadOccluder3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_proceduralskymaterial.md "ProceduralSkyMaterial") [Next](class_quadoccluder3d.md "QuadOccluder3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).