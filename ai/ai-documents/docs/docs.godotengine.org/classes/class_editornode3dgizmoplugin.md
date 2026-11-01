---
title: EditorNode3DGizmoPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editornode3dgizmoplugin.html
crawled_at: "2026-08-13T10:26:35+12:00"
content_hash: fd62a07635b438a65b18d58dc151da935ebef7fb9f3d05d89e2a7a814223258d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorNode3DGizmoPlugin

* * *

# EditorNode3DGizmoPlugin

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A class used by the editor to define Node3D gizmo types.

## Description

**EditorNode3DGizmoPlugin** allows you to define a new type of Gizmo. There are two main ways to do so: extending **EditorNode3DGizmoPlugin** for the simpler gizmos, or creating a new [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) type. See the tutorial in the documentation for more info.

To use **EditorNode3DGizmoPlugin**, register it using the [EditorPlugin.add\_node\_3d\_gizmo\_plugin()](class_editorplugin.md#class-editorplugin-method-add-node-3d-gizmo-plugin) method first.

## Tutorials

- [Node3D gizmo plugins](../tutorials/plugins/editor/3d_gizmos.md)


## Methods

|     |     |
| --- | --- |
| void | [\_begin\_handle\_action](#class-editornode3dgizmoplugin-private-method-begin-handle-action)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtual |
| [bool](class_bool.md#class-bool) | [\_can\_be\_hidden](#class-editornode3dgizmoplugin-private-method-can-be-hidden)() virtualconst |
| void | [\_commit\_handle](#class-editornode3dgizmoplugin-private-method-commit-handle)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool), restore: [Variant](class_variant.md#class-variant), cancel: [bool](class_bool.md#class-bool)) virtual |
| void | [\_commit\_subgizmos](#class-editornode3dgizmoplugin-private-method-commit-subgizmos)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), ids: [PackedInt32Array](class_packedint32array.md#class-packedint32array), restores: [Array](class_array.md#class-array)\[ [Transform3D](class_transform3d.md#class-transform3d)\], cancel: [bool](class_bool.md#class-bool)) virtual |
| [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) | [\_create\_gizmo](#class-editornode3dgizmoplugin-private-method-create-gizmo)(for\_node\_3d: [Node3D](class_node3d.md#class-node3d)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_gizmo\_name](#class-editornode3dgizmoplugin-private-method-get-gizmo-name)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_handle\_name](#class-editornode3dgizmoplugin-private-method-get-handle-name)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst |
| [Variant](class_variant.md#class-variant) | [\_get\_handle\_value](#class-editornode3dgizmoplugin-private-method-get-handle-value)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst |
| [int](class_int.md#class-int) | [\_get\_priority](#class-editornode3dgizmoplugin-private-method-get-priority)() virtualconst |
| [Transform3D](class_transform3d.md#class-transform3d) | [\_get\_subgizmo\_transform](#class-editornode3dgizmoplugin-private-method-get-subgizmo-transform)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), subgizmo\_id: [int](class_int.md#class-int)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_has\_gizmo](#class-editornode3dgizmoplugin-private-method-has-gizmo)(for\_node\_3d: [Node3D](class_node3d.md#class-node3d)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_handle\_highlighted](#class-editornode3dgizmoplugin-private-method-is-handle-highlighted)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_selectable\_when\_hidden](#class-editornode3dgizmoplugin-private-method-is-selectable-when-hidden)() virtualconst |
| void | [\_redraw](#class-editornode3dgizmoplugin-private-method-redraw)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo)) virtual |
| void | [\_set\_handle](#class-editornode3dgizmoplugin-private-method-set-handle)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool), camera: [Camera3D](class_camera3d.md#class-camera3d), screen\_pos: [Vector2](class_vector2.md#class-vector2)) virtual |
| void | [\_set\_subgizmo\_transform](#class-editornode3dgizmoplugin-private-method-set-subgizmo-transform)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), subgizmo\_id: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtual |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_subgizmos\_intersect\_frustum](#class-editornode3dgizmoplugin-private-method-subgizmos-intersect-frustum)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), camera: [Camera3D](class_camera3d.md#class-camera3d), frustum\_planes: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\]) virtualconst |
| [int](class_int.md#class-int) | [\_subgizmos\_intersect\_ray](#class-editornode3dgizmoplugin-private-method-subgizmos-intersect-ray)(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), camera: [Camera3D](class_camera3d.md#class-camera3d), screen\_pos: [Vector2](class_vector2.md#class-vector2)) virtualconst |
| void | [add\_material](#class-editornode3dgizmoplugin-method-add-material)(name: [String](class_string.md#class-string), material: [StandardMaterial3D](class_standardmaterial3d.md#class-standardmaterial3d)) |
| void | [create\_handle\_material](#class-editornode3dgizmoplugin-method-create-handle-material)(name: [String](class_string.md#class-string), billboard: [bool](class_bool.md#class-bool) = false, texture: [Texture2D](class_texture2d.md#class-texture2d) = null) |
| void | [create\_icon\_material](#class-editornode3dgizmoplugin-method-create-icon-material)(name: [String](class_string.md#class-string), texture: [Texture2D](class_texture2d.md#class-texture2d), on\_top: [bool](class_bool.md#class-bool) = false, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) |
| void | [create\_material](#class-editornode3dgizmoplugin-method-create-material)(name: [String](class_string.md#class-string), color: [Color](class_color.md#class-color), billboard: [bool](class_bool.md#class-bool) = false, on\_top: [bool](class_bool.md#class-bool) = false, use\_vertex\_color: [bool](class_bool.md#class-bool) = false) |
| [StandardMaterial3D](class_standardmaterial3d.md#class-standardmaterial3d) | [get\_material](#class-editornode3dgizmoplugin-method-get-material)(name: [String](class_string.md#class-string), gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) = null) |

* * *

## Method Descriptions

void **\_begin\_handle\_action**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtual [🔗](#class-editornode3dgizmoplugin-private-method-begin-handle-action)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_can\_be\_hidden**() virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-can-be-hidden)

Override this method to define whether the gizmos handled by this plugin can be hidden or not. Returns `true` if not overridden.

* * *

void **\_commit\_handle**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool), restore: [Variant](class_variant.md#class-variant), cancel: [bool](class_bool.md#class-bool)) virtual [🔗](#class-editornode3dgizmoplugin-private-method-commit-handle)

Override this method to commit a handle being edited (handles must have been previously added by [EditorNode3DGizmo.add\_handles()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-handles) during [\_redraw()](#class-editornode3dgizmoplugin-private-method-redraw)). This usually means creating an [UndoRedo](class_undoredo.md#class-undoredo) action for the change, using the current handle value as "do" and the `restore` argument as "undo".

If the `cancel` argument is `true`, the `restore` value should be directly set, without any [UndoRedo](class_undoredo.md#class-undoredo) action.

The `secondary` argument is `true` when the committed handle is secondary (see [EditorNode3DGizmo.add\_handles()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-handles) for more information).

Called for this plugin's active gizmos.

* * *

void **\_commit\_subgizmos**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), ids: [PackedInt32Array](class_packedint32array.md#class-packedint32array), restores: [Array](class_array.md#class-array)\[ [Transform3D](class_transform3d.md#class-transform3d)\], cancel: [bool](class_bool.md#class-bool)) virtual [🔗](#class-editornode3dgizmoplugin-private-method-commit-subgizmos)

Override this method to commit a group of subgizmos being edited (see [\_subgizmos\_intersect\_ray()](#class-editornode3dgizmoplugin-private-method-subgizmos-intersect-ray) and [\_subgizmos\_intersect\_frustum()](#class-editornode3dgizmoplugin-private-method-subgizmos-intersect-frustum)). This usually means creating an [UndoRedo](class_undoredo.md#class-undoredo) action for the change, using the current transforms as "do" and the `restores` transforms as "undo".

If the `cancel` argument is `true`, the `restores` transforms should be directly set, without any [UndoRedo](class_undoredo.md#class-undoredo) action. As with all subgizmo methods, transforms are given in local space respect to the gizmo's Node3D. Called for this plugin's active gizmos.

* * *

[EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) **\_create\_gizmo**(for\_node\_3d: [Node3D](class_node3d.md#class-node3d)) virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-create-gizmo)

Override this method to return a custom [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) for the 3D nodes of your choice, return `null` for the rest of nodes. See also [\_has\_gizmo()](#class-editornode3dgizmoplugin-private-method-has-gizmo).

* * *

[String](class_string.md#class-string) **\_get\_gizmo\_name**() virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-get-gizmo-name)

Override this method to provide the name that will appear in the gizmo visibility menu.

* * *

[String](class_string.md#class-string) **\_get\_handle\_name**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-get-handle-name)

Override this method to provide gizmo's handle names. The `secondary` argument is `true` when the requested handle is secondary (see [EditorNode3DGizmo.add\_handles()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-handles) for more information). Called for this plugin's active gizmos.

* * *

[Variant](class_variant.md#class-variant) **\_get\_handle\_value**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-get-handle-value)

Override this method to return the current value of a handle. This value will be requested at the start of an edit and used as the `restore` argument in [\_commit\_handle()](#class-editornode3dgizmoplugin-private-method-commit-handle).

The `secondary` argument is `true` when the requested handle is secondary (see [EditorNode3DGizmo.add\_handles()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-handles) for more information).

Called for this plugin's active gizmos.

* * *

[int](class_int.md#class-int) **\_get\_priority**() virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-get-priority)

Override this method to set the gizmo's priority. Gizmos with higher priority will have precedence when processing inputs like handles or subgizmos selection.

All built-in editor gizmos return a priority of `-1`. If not overridden, this method will return `0`, which means custom gizmos will automatically get higher priority than built-in gizmos.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **\_get\_subgizmo\_transform**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), subgizmo\_id: [int](class_int.md#class-int)) virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-get-subgizmo-transform)

Override this method to return the current transform of a subgizmo. As with all subgizmo methods, the transform should be in local space respect to the gizmo's Node3D. This transform will be requested at the start of an edit and used in the `restore` argument in [\_commit\_subgizmos()](#class-editornode3dgizmoplugin-private-method-commit-subgizmos). Called for this plugin's active gizmos.

* * *

[bool](class_bool.md#class-bool) **\_has\_gizmo**(for\_node\_3d: [Node3D](class_node3d.md#class-node3d)) virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-has-gizmo)

Override this method to define which Node3D nodes have a gizmo from this plugin. Whenever a [Node3D](class_node3d.md#class-node3d) node is added to a scene this method is called, if it returns `true` the node gets a generic [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) assigned and is added to this plugin's list of active gizmos.

* * *

[bool](class_bool.md#class-bool) **\_is\_handle\_highlighted**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-is-handle-highlighted)

Override this method to return `true` whenever to given handle should be highlighted in the editor. The `secondary` argument is `true` when the requested handle is secondary (see [EditorNode3DGizmo.add\_handles()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-handles) for more information). Called for this plugin's active gizmos.

* * *

[bool](class_bool.md#class-bool) **\_is\_selectable\_when\_hidden**() virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-is-selectable-when-hidden)

Override this method to define whether Node3D with this gizmo should be selectable even when the gizmo is hidden.

* * *

void **\_redraw**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo)) virtual [🔗](#class-editornode3dgizmoplugin-private-method-redraw)

Override this method to add all the gizmo elements whenever a gizmo update is requested. It's common to call [EditorNode3DGizmo.clear()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-clear) at the beginning of this method and then add visual elements depending on the node's properties.

* * *

void **\_set\_handle**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), handle\_id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool), camera: [Camera3D](class_camera3d.md#class-camera3d), screen\_pos: [Vector2](class_vector2.md#class-vector2)) virtual [🔗](#class-editornode3dgizmoplugin-private-method-set-handle)

Override this method to update the node's properties when the user drags a gizmo handle (previously added with [EditorNode3DGizmo.add\_handles()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-handles)). The provided `screen_pos` is the mouse position in screen coordinates and the `camera` can be used to convert it to raycasts.

The `secondary` argument is `true` when the edited handle is secondary (see [EditorNode3DGizmo.add\_handles()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-handles) for more information).

Called for this plugin's active gizmos.

* * *

void **\_set\_subgizmo\_transform**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), subgizmo\_id: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtual [🔗](#class-editornode3dgizmoplugin-private-method-set-subgizmo-transform)

Override this method to update the node properties during subgizmo editing (see [\_subgizmos\_intersect\_ray()](#class-editornode3dgizmoplugin-private-method-subgizmos-intersect-ray) and [\_subgizmos\_intersect\_frustum()](#class-editornode3dgizmoplugin-private-method-subgizmos-intersect-frustum)). The `transform` is given in the Node3D's local coordinate system. Called for this plugin's active gizmos.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_subgizmos\_intersect\_frustum**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), camera: [Camera3D](class_camera3d.md#class-camera3d), frustum\_planes: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\]) virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-subgizmos-intersect-frustum)

Override this method to allow selecting subgizmos using mouse drag box selection. Given a `camera` and `frustum_planes`, this method should return which subgizmos are contained within the frustums. The `frustum_planes` argument consists of an array with all the [Plane](class_plane.md#class-plane) s that make up the selection frustum. The returned value should contain a list of unique subgizmo identifiers, these identifiers can have any non-negative value and will be used in other virtual methods like [\_get\_subgizmo\_transform()](#class-editornode3dgizmoplugin-private-method-get-subgizmo-transform) or [\_commit\_subgizmos()](#class-editornode3dgizmoplugin-private-method-commit-subgizmos). Called for this plugin's active gizmos.

* * *

[int](class_int.md#class-int) **\_subgizmos\_intersect\_ray**(gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), camera: [Camera3D](class_camera3d.md#class-camera3d), screen\_pos: [Vector2](class_vector2.md#class-vector2)) virtualconst [🔗](#class-editornode3dgizmoplugin-private-method-subgizmos-intersect-ray)

Override this method to allow selecting subgizmos using mouse clicks. Given a `camera` and a `screen_pos` in screen coordinates, this method should return which subgizmo should be selected. The returned value should be a unique subgizmo identifier, which can have any non-negative value and will be used in other virtual methods like [\_get\_subgizmo\_transform()](#class-editornode3dgizmoplugin-private-method-get-subgizmo-transform) or [\_commit\_subgizmos()](#class-editornode3dgizmoplugin-private-method-commit-subgizmos). Called for this plugin's active gizmos.

* * *

void **add\_material**(name: [String](class_string.md#class-string), material: [StandardMaterial3D](class_standardmaterial3d.md#class-standardmaterial3d)) [🔗](#class-editornode3dgizmoplugin-method-add-material)

Adds a new material to the internal material list for the plugin. It can then be accessed with [get\_material()](#class-editornode3dgizmoplugin-method-get-material). Should not be overridden.

* * *

void **create\_handle\_material**(name: [String](class_string.md#class-string), billboard: [bool](class_bool.md#class-bool) = false, texture: [Texture2D](class_texture2d.md#class-texture2d) = null) [🔗](#class-editornode3dgizmoplugin-method-create-handle-material)

Creates a handle material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with [get\_material()](#class-editornode3dgizmoplugin-method-get-material) and used in [EditorNode3DGizmo.add\_handles()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-handles). Should not be overridden.

You can optionally provide a texture to use instead of the default icon.

* * *

void **create\_icon\_material**(name: [String](class_string.md#class-string), texture: [Texture2D](class_texture2d.md#class-texture2d), on\_top: [bool](class_bool.md#class-bool) = false, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) [🔗](#class-editornode3dgizmoplugin-method-create-icon-material)

Creates an icon material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with [get\_material()](#class-editornode3dgizmoplugin-method-get-material) and used in [EditorNode3DGizmo.add\_unscaled\_billboard()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-unscaled-billboard). Should not be overridden.

* * *

void **create\_material**(name: [String](class_string.md#class-string), color: [Color](class_color.md#class-color), billboard: [bool](class_bool.md#class-bool) = false, on\_top: [bool](class_bool.md#class-bool) = false, use\_vertex\_color: [bool](class_bool.md#class-bool) = false) [🔗](#class-editornode3dgizmoplugin-method-create-material)

Creates an unshaded material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with [get\_material()](#class-editornode3dgizmoplugin-method-get-material) and used in [EditorNode3DGizmo.add\_mesh()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-mesh) and [EditorNode3DGizmo.add\_lines()](class_editornode3dgizmo.md#class-editornode3dgizmo-method-add-lines). Should not be overridden.

* * *

[StandardMaterial3D](class_standardmaterial3d.md#class-standardmaterial3d) **get\_material**(name: [String](class_string.md#class-string), gizmo: [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) = null) [🔗](#class-editornode3dgizmoplugin-method-get-material)

Gets material from the internal list of materials. If an [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) is provided, it will try to get the corresponding variant (selected and/or editable).

[Previous](class_dpitexture.md "DPITexture") [Next](class_editorsettings.md "EditorSettings")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_dpitexture.md "DPITexture") [Next](class_editorsettings.md "EditorSettings")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).