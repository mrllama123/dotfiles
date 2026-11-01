---
title: MeshInstance2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_meshinstance2d.html
crawled_at: "2026-08-13T10:38:03+12:00"
content_hash: b351083e8b030a97503f3322cfb9aff85d1e51daaf43eeccb7682e4c078ee02a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MeshInstance2D

* * *

# MeshInstance2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Node used for displaying a [Mesh](class_mesh.md#class-mesh) in 2D.

## Description

Node used for displaying a [Mesh](class_mesh.md#class-mesh) in 2D. A **MeshInstance2D** can be automatically created from an existing [Sprite2D](class_sprite2d.md#class-sprite2d) via a tool in the editor toolbar. Select the [Sprite2D](class_sprite2d.md#class-sprite2d) node, then choose **Sprite2D > Convert to MeshInstance2D** at the top of the 2D editor viewport.

## Tutorials

- [2D meshes](../tutorials/2d/2d_meshes.md)


## Properties

|     |     |
| --- | --- |
| [Mesh](class_mesh.md#class-mesh) | [mesh](#class-meshinstance2d-property-mesh) |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-meshinstance2d-property-texture) |

* * *

## Signals

**texture\_changed**() [🔗](#class-meshinstance2d-signal-texture-changed)

Emitted when the [texture](#class-meshinstance2d-property-texture) is changed.

* * *

## Property Descriptions

[Mesh](class_mesh.md#class-mesh) **mesh** [🔗](#class-meshinstance2d-property-mesh)

- void **set\_mesh**(value: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_mesh**()


The [Mesh](class_mesh.md#class-mesh) that will be drawn by the **MeshInstance2D**.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-meshinstance2d-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


The [Texture2D](class_texture2d.md#class-texture2d) that will be used if using the default [CanvasItemMaterial](class_canvasitemmaterial.md#class-canvasitemmaterial). Can be accessed as `TEXTURE` in CanvasItem shader.

[Previous](class_menubutton.md "MenuButton") [Next](class_meshinstance3d.md "MeshInstance3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_menubutton.md "MenuButton") [Next](class_meshinstance3d.md "MeshInstance3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).