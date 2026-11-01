---
title: MultiMeshInstance3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_multimeshinstance3d.html
crawled_at: "2026-08-13T10:32:37+12:00"
content_hash: 0bafceabeeb7966c674fd4216ad6778b141868f8219dbcafa36d40253be23f57
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MultiMeshInstance3D

* * *

# MultiMeshInstance3D

**Inherits:** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Node that instances a [MultiMesh](class_multimesh.md#class-multimesh).

## Description

**MultiMeshInstance3D** is a specialized node to instance [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) s based on a [MultiMesh](class_multimesh.md#class-multimesh) resource.

This is useful to optimize the rendering of a high number of instances of a given mesh (for example trees in a forest or grass strands).

## Tutorials

- [Using MultiMeshInstance](../tutorials/3d/using_multi_mesh_instance.md)

- [Optimization using MultiMeshes](../tutorials/performance/using_multimesh.md)

- [Animating thousands of fish with MultiMeshInstance](../tutorials/performance/vertex_animation/animating_thousands_of_fish.md)


## Properties

|     |     |
| --- | --- |
| [MultiMesh](class_multimesh.md#class-multimesh) | [multimesh](#class-multimeshinstance3d-property-multimesh) |

* * *

## Property Descriptions

[MultiMesh](class_multimesh.md#class-multimesh) **multimesh** [🔗](#class-multimeshinstance3d-property-multimesh)

- void **set\_multimesh**(value: [MultiMesh](class_multimesh.md#class-multimesh))

- [MultiMesh](class_multimesh.md#class-multimesh) **get\_multimesh**()


The [MultiMesh](class_multimesh.md#class-multimesh) resource that will be used and shared among all instances of the **MultiMeshInstance3D**.

[Previous](class_multimeshinstance2d.md "MultiMeshInstance2D") [Next](class_multiplayerspawner.md "MultiplayerSpawner")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_multimeshinstance2d.md "MultiMeshInstance2D") [Next](class_multiplayerspawner.md "MultiplayerSpawner")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).