---
title: MeshLibrary — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_meshlibrary.html
crawled_at: "2026-08-13T10:29:45+12:00"
content_hash: 588c4948e906f66078e02330ca53fe109c4a67bc284c356cec2bc3c0d7b3d21d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MeshLibrary

* * *

# MeshLibrary

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Library of meshes.

## Description

A library of meshes. Contains a list of [Mesh](class_mesh.md#class-mesh) resources, each with a name and ID. Each item can also include collision and navigation shapes. This resource is used in [GridMap](class_gridmap.md#class-gridmap).

## Tutorials

- [3D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2739)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)


## Methods

|     |     |
| --- | --- |
| void | [clear](#class-meshlibrary-method-clear)() |
| void | [create\_item](#class-meshlibrary-method-create-item)(id: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [find\_item\_by\_name](#class-meshlibrary-method-find-item-by-name)(name: [String](class_string.md#class-string)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_item\_list](#class-meshlibrary-method-get-item-list)() const |
| [Mesh](class_mesh.md#class-mesh) | [get\_item\_mesh](#class-meshlibrary-method-get-item-mesh)(id: [int](class_int.md#class-int)) const |
| [ShadowCastingSetting](class_renderingserver.md#enum-renderingserver-shadowcastingsetting) | [get\_item\_mesh\_cast\_shadow](#class-meshlibrary-method-get-item-mesh-cast-shadow)(id: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_item\_mesh\_transform](#class-meshlibrary-method-get-item-mesh-transform)(id: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_name](#class-meshlibrary-method-get-item-name)(id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_navigation\_layers](#class-meshlibrary-method-get-item-navigation-layers)(id: [int](class_int.md#class-int)) const |
| [NavigationMesh](class_navigationmesh.md#class-navigationmesh) | [get\_item\_navigation\_mesh](#class-meshlibrary-method-get-item-navigation-mesh)(id: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_item\_navigation\_mesh\_transform](#class-meshlibrary-method-get-item-navigation-mesh-transform)(id: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_item\_preview](#class-meshlibrary-method-get-item-preview)(id: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array) | [get\_item\_shapes](#class-meshlibrary-method-get-item-shapes)(id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_last\_unused\_item\_id](#class-meshlibrary-method-get-last-unused-item-id)() const |
| void | [remove\_item](#class-meshlibrary-method-remove-item)(id: [int](class_int.md#class-int)) |
| void | [set\_item\_mesh](#class-meshlibrary-method-set-item-mesh)(id: [int](class_int.md#class-int), mesh: [Mesh](class_mesh.md#class-mesh)) |
| void | [set\_item\_mesh\_cast\_shadow](#class-meshlibrary-method-set-item-mesh-cast-shadow)(id: [int](class_int.md#class-int), shadow\_casting\_setting: [ShadowCastingSetting](class_renderingserver.md#enum-renderingserver-shadowcastingsetting)) |
| void | [set\_item\_mesh\_transform](#class-meshlibrary-method-set-item-mesh-transform)(id: [int](class_int.md#class-int), mesh\_transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [set\_item\_name](#class-meshlibrary-method-set-item-name)(id: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_item\_navigation\_layers](#class-meshlibrary-method-set-item-navigation-layers)(id: [int](class_int.md#class-int), navigation\_layers: [int](class_int.md#class-int)) |
| void | [set\_item\_navigation\_mesh](#class-meshlibrary-method-set-item-navigation-mesh)(id: [int](class_int.md#class-int), navigation\_mesh: [NavigationMesh](class_navigationmesh.md#class-navigationmesh)) |
| void | [set\_item\_navigation\_mesh\_transform](#class-meshlibrary-method-set-item-navigation-mesh-transform)(id: [int](class_int.md#class-int), navigation\_mesh: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [set\_item\_preview](#class-meshlibrary-method-set-item-preview)(id: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_item\_shapes](#class-meshlibrary-method-set-item-shapes)(id: [int](class_int.md#class-int), shapes: [Array](class_array.md#class-array)) |

* * *

## Method Descriptions

void **clear**() [🔗](#class-meshlibrary-method-clear)

Clears the library.

* * *

void **create\_item**(id: [int](class_int.md#class-int)) [🔗](#class-meshlibrary-method-create-item)

Creates a new item in the library with the given ID.

You can get an unused ID from [get\_last\_unused\_item\_id()](#class-meshlibrary-method-get-last-unused-item-id).

* * *

[int](class_int.md#class-int) **find\_item\_by\_name**(name: [String](class_string.md#class-string)) const [🔗](#class-meshlibrary-method-find-item-by-name)

Returns the first item with the given name, or `-1` if no item is found.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_item\_list**() const [🔗](#class-meshlibrary-method-get-item-list)

Returns the list of item IDs in use.

* * *

[Mesh](class_mesh.md#class-mesh) **get\_item\_mesh**(id: [int](class_int.md#class-int)) const [🔗](#class-meshlibrary-method-get-item-mesh)

Returns the item's mesh.

* * *

[ShadowCastingSetting](class_renderingserver.md#enum-renderingserver-shadowcastingsetting) **get\_item\_mesh\_cast\_shadow**(id: [int](class_int.md#class-int)) const [🔗](#class-meshlibrary-method-get-item-mesh-cast-shadow)

Returns the item's shadow casting mode.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_item\_mesh\_transform**(id: [int](class_int.md#class-int)) const [🔗](#class-meshlibrary-method-get-item-mesh-transform)

Returns the transform applied to the item's mesh.

* * *

[String](class_string.md#class-string) **get\_item\_name**(id: [int](class_int.md#class-int)) const [🔗](#class-meshlibrary-method-get-item-name)

Returns the item's name.

* * *

[int](class_int.md#class-int) **get\_item\_navigation\_layers**(id: [int](class_int.md#class-int)) const [🔗](#class-meshlibrary-method-get-item-navigation-layers)

Returns the item's navigation layers bitmask.

* * *

[NavigationMesh](class_navigationmesh.md#class-navigationmesh) **get\_item\_navigation\_mesh**(id: [int](class_int.md#class-int)) const [🔗](#class-meshlibrary-method-get-item-navigation-mesh)

Returns the item's navigation mesh.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_item\_navigation\_mesh\_transform**(id: [int](class_int.md#class-int)) const [🔗](#class-meshlibrary-method-get-item-navigation-mesh-transform)

Returns the transform applied to the item's navigation mesh.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_item\_preview**(id: [int](class_int.md#class-int)) const [🔗](#class-meshlibrary-method-get-item-preview)

When running in the editor, returns a generated item preview (a 3D rendering in isometric perspective). When used in a running project, returns the manually-defined item preview which can be set using [set\_item\_preview()](#class-meshlibrary-method-set-item-preview). Returns an empty [Texture2D](class_texture2d.md#class-texture2d) if no preview was manually set in a running project.

* * *

[Array](class_array.md#class-array) **get\_item\_shapes**(id: [int](class_int.md#class-int)) const [🔗](#class-meshlibrary-method-get-item-shapes)

Returns an item's collision shapes.

The array consists of each [Shape3D](class_shape3d.md#class-shape3d) followed by its [Transform3D](class_transform3d.md#class-transform3d).

* * *

[int](class_int.md#class-int) **get\_last\_unused\_item\_id**() const [🔗](#class-meshlibrary-method-get-last-unused-item-id)

Gets an unused ID for a new item.

* * *

void **remove\_item**(id: [int](class_int.md#class-int)) [🔗](#class-meshlibrary-method-remove-item)

Removes the item.

* * *

void **set\_item\_mesh**(id: [int](class_int.md#class-int), mesh: [Mesh](class_mesh.md#class-mesh)) [🔗](#class-meshlibrary-method-set-item-mesh)

Sets the item's mesh.

* * *

void **set\_item\_mesh\_cast\_shadow**(id: [int](class_int.md#class-int), shadow\_casting\_setting: [ShadowCastingSetting](class_renderingserver.md#enum-renderingserver-shadowcastingsetting)) [🔗](#class-meshlibrary-method-set-item-mesh-cast-shadow)

Sets the item's shadow casting mode to `shadow_casting_setting`.

* * *

void **set\_item\_mesh\_transform**(id: [int](class_int.md#class-int), mesh\_transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-meshlibrary-method-set-item-mesh-transform)

Sets the transform to apply to the item's mesh.

* * *

void **set\_item\_name**(id: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-meshlibrary-method-set-item-name)

Sets the item's name.

This name is shown in the editor. It can also be used to look up the item later using [find\_item\_by\_name()](#class-meshlibrary-method-find-item-by-name).

* * *

void **set\_item\_navigation\_layers**(id: [int](class_int.md#class-int), navigation\_layers: [int](class_int.md#class-int)) [🔗](#class-meshlibrary-method-set-item-navigation-layers)

Sets the item's navigation layers bitmask.

* * *

void **set\_item\_navigation\_mesh**(id: [int](class_int.md#class-int), navigation\_mesh: [NavigationMesh](class_navigationmesh.md#class-navigationmesh)) [🔗](#class-meshlibrary-method-set-item-navigation-mesh)

Sets the item's navigation mesh.

* * *

void **set\_item\_navigation\_mesh\_transform**(id: [int](class_int.md#class-int), navigation\_mesh: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-meshlibrary-method-set-item-navigation-mesh-transform)

Sets the transform to apply to the item's navigation mesh.

* * *

void **set\_item\_preview**(id: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-meshlibrary-method-set-item-preview)

Sets a texture to use as the item's preview icon in the editor.

* * *

void **set\_item\_shapes**(id: [int](class_int.md#class-int), shapes: [Array](class_array.md#class-array)) [🔗](#class-meshlibrary-method-set-item-shapes)

Sets an item's collision shapes.

The array should consist of [Shape3D](class_shape3d.md#class-shape3d) objects, each followed by a [Transform3D](class_transform3d.md#class-transform3d) that will be applied to it. For shapes that should not have a transform, use [Transform3D.IDENTITY](class_transform3d.md#class-transform3d-constant-identity).

[Previous](class_mesh.md "Mesh") [Next](class_meshtexture.md "MeshTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_mesh.md "Mesh") [Next](class_meshtexture.md "MeshTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).