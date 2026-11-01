---
title: MeshTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_meshtexture.html
crawled_at: "2026-08-13T10:32:18+12:00"
content_hash: 98a5c1ed26f47269e543e9ae1bcc906d9cc6c287aa56d3fd4a3ce4ecf1c43736
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MeshTexture

* * *

# MeshTexture

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Simple texture that uses a mesh to draw itself.

## Description

Simple texture that uses a mesh to draw itself. It's limited because flags can't be changed and region drawing is not supported.

## Properties

|     |     |     |
| --- | --- | --- |
| [Texture2D](class_texture2d.md#class-texture2d) | [base\_texture](#class-meshtexture-property-base-texture) |  |
| [Vector2](class_vector2.md#class-vector2) | [image\_size](#class-meshtexture-property-image-size) | `Vector2(0, 0)` |
| [Mesh](class_mesh.md#class-mesh) | [mesh](#class-meshtexture-property-mesh) |  |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |

* * *

## Property Descriptions

[Texture2D](class_texture2d.md#class-texture2d) **base\_texture** [🔗](#class-meshtexture-property-base-texture)

- void **set\_base\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_base\_texture**()


Sets the base texture that the Mesh will use to draw.

* * *

[Vector2](class_vector2.md#class-vector2) **image\_size** = `Vector2(0, 0)` [🔗](#class-meshtexture-property-image-size)

- void **set\_image\_size**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_image\_size**()


Sets the size of the image, needed for reference.

* * *

[Mesh](class_mesh.md#class-mesh) **mesh** [🔗](#class-meshtexture-property-mesh)

- void **set\_mesh**(value: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_mesh**()


Sets the mesh used to draw. It must be a mesh using 2D vertices.

[Previous](class_meshlibrary.md "MeshLibrary") [Next](class_missingresource.md "MissingResource")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_meshlibrary.md "MeshLibrary") [Next](class_missingresource.md "MissingResource")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).