---
title: MultiMeshInstance2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_multimeshinstance2d.html
crawled_at: "2026-08-13T10:41:29+12:00"
content_hash: 9b595af71947ebf7bd0e895284914e79c8fecc09bf19b267e4aa9652d3e4c727
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MultiMeshInstance2D

* * *

# MultiMeshInstance2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Node that instances a [MultiMesh](class_multimesh.md#class-multimesh) in 2D.

## Description

**MultiMeshInstance2D** is a specialized node to instance a [MultiMesh](class_multimesh.md#class-multimesh) resource in 2D.

Usage is the same as [MultiMeshInstance3D](class_multimeshinstance3d.md#class-multimeshinstance3d).

## Properties

|     |     |
| --- | --- |
| [MultiMesh](class_multimesh.md#class-multimesh) | [multimesh](#class-multimeshinstance2d-property-multimesh) |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-multimeshinstance2d-property-texture) |

* * *

## Signals

**texture\_changed**() [🔗](#class-multimeshinstance2d-signal-texture-changed)

Emitted when the [texture](#class-multimeshinstance2d-property-texture) is changed.

* * *

## Property Descriptions

[MultiMesh](class_multimesh.md#class-multimesh) **multimesh** [🔗](#class-multimeshinstance2d-property-multimesh)

- void **set\_multimesh**(value: [MultiMesh](class_multimesh.md#class-multimesh))

- [MultiMesh](class_multimesh.md#class-multimesh) **get\_multimesh**()


The [MultiMesh](class_multimesh.md#class-multimesh) that will be drawn by the **MultiMeshInstance2D**.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-multimeshinstance2d-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


The [Texture2D](class_texture2d.md#class-texture2d) that will be used if using the default [CanvasItemMaterial](class_canvasitemmaterial.md#class-canvasitemmaterial). Can be accessed as `TEXTURE` in CanvasItem shader.

[Previous](class_modifierbonetarget3d.md "ModifierBoneTarget3D") [Next](class_multimeshinstance3d.md "MultiMeshInstance3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_modifierbonetarget3d.md "ModifierBoneTarget3D") [Next](class_multimeshinstance3d.md "MultiMeshInstance3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).