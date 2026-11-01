---
title: EditorNode3DGizmo — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editornode3dgizmo.html
crawled_at: "2026-08-13T10:19:01+12:00"
content_hash: a0f617f59ca63102db6596fba44c36ec93f81bd49960d44db918d7aba459cb94
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorNode3DGizmo

* * *

# EditorNode3DGizmo

**Inherits:** [Node3DGizmo](class_node3dgizmo.md#class-node3dgizmo) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Gizmo for editing [Node3D](class_node3d.md#class-node3d) objects.

## Description

Gizmo that is used for providing custom visualization and editing (handles and subgizmos) for [Node3D](class_node3d.md#class-node3d) objects. Can be overridden to create custom gizmos, but for simple gizmos creating an [EditorNode3DGizmoPlugin](class_editornode3dgizmoplugin.md#class-editornode3dgizmoplugin) is usually recommended.

## Methods

|     |     |
| --- | --- |
| void | [\_begin\_handle\_action](#class-editornode3dgizmo-private-method-begin-handle-action)(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtual |
| void | [\_commit\_handle](#class-editornode3dgizmo-private-method-commit-handle)(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool), restore: [Variant](class_variant.md#class-variant), cancel: [bool](class_bool.md#class-bool)) virtual |
| void | [\_commit\_subgizmos](#class-editornode3dgizmo-private-method-commit-subgizmos)(ids: [PackedInt32Array](class_packedint32array.md#class-packedint32array), restores: [Array](class_array.md#class-array)\[ [Transform3D](class_transform3d.md#class-transform3d)\], cancel: [bool](class_bool.md#class-bool)) virtual |
| [String](class_string.md#class-string) | [\_get\_handle\_name](#class-editornode3dgizmo-private-method-get-handle-name)(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst |
| [Variant](class_variant.md#class-variant) | [\_get\_handle\_value](#class-editornode3dgizmo-private-method-get-handle-value)(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst |
| [Transform3D](class_transform3d.md#class-transform3d) | [\_get\_subgizmo\_transform](#class-editornode3dgizmo-private-method-get-subgizmo-transform)(id: [int](class_int.md#class-int)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_handle\_highlighted](#class-editornode3dgizmo-private-method-is-handle-highlighted)(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst |
| void | [\_redraw](#class-editornode3dgizmo-private-method-redraw)() virtual |
| void | [\_set\_handle](#class-editornode3dgizmo-private-method-set-handle)(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool), camera: [Camera3D](class_camera3d.md#class-camera3d), point: [Vector2](class_vector2.md#class-vector2)) virtual |
| void | [\_set\_subgizmo\_transform](#class-editornode3dgizmo-private-method-set-subgizmo-transform)(id: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtual |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_subgizmos\_intersect\_frustum](#class-editornode3dgizmo-private-method-subgizmos-intersect-frustum)(camera: [Camera3D](class_camera3d.md#class-camera3d), frustum: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\]) virtualconst |
| [int](class_int.md#class-int) | [\_subgizmos\_intersect\_ray](#class-editornode3dgizmo-private-method-subgizmos-intersect-ray)(camera: [Camera3D](class_camera3d.md#class-camera3d), point: [Vector2](class_vector2.md#class-vector2)) virtualconst |
| void | [add\_collision\_segments](#class-editornode3dgizmo-method-add-collision-segments)(segments: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array)) |
| void | [add\_collision\_triangles](#class-editornode3dgizmo-method-add-collision-triangles)(triangles: [TriangleMesh](class_trianglemesh.md#class-trianglemesh)) |
| void | [add\_handles](#class-editornode3dgizmo-method-add-handles)(handles: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), material: [Material](class_material.md#class-material), ids: [PackedInt32Array](class_packedint32array.md#class-packedint32array), billboard: [bool](class_bool.md#class-bool) = false, secondary: [bool](class_bool.md#class-bool) = false) |
| void | [add\_lines](#class-editornode3dgizmo-method-add-lines)(lines: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), material: [Material](class_material.md#class-material), billboard: [bool](class_bool.md#class-bool) = false, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) |
| void | [add\_mesh](#class-editornode3dgizmo-method-add-mesh)(mesh: [Mesh](class_mesh.md#class-mesh), material: [Material](class_material.md#class-material) = null, transform: [Transform3D](class_transform3d.md#class-transform3d) = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), skeleton: [SkinReference](class_skinreference.md#class-skinreference) = null) |
| void | [add\_unscaled\_billboard](#class-editornode3dgizmo-method-add-unscaled-billboard)(material: [Material](class_material.md#class-material), default\_scale: [float](class_float.md#class-float) = 1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) |
| void | [clear](#class-editornode3dgizmo-method-clear)() |
| [Node3D](class_node3d.md#class-node3d) | [get\_node\_3d](#class-editornode3dgizmo-method-get-node-3d)() const |
| [EditorNode3DGizmoPlugin](class_editornode3dgizmoplugin.md#class-editornode3dgizmoplugin) | [get\_plugin](#class-editornode3dgizmo-method-get-plugin)() const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_subgizmo\_selection](#class-editornode3dgizmo-method-get-subgizmo-selection)() const |
| [bool](class_bool.md#class-bool) | [is\_subgizmo\_selected](#class-editornode3dgizmo-method-is-subgizmo-selected)(id: [int](class_int.md#class-int)) const |
| void | [set\_hidden](#class-editornode3dgizmo-method-set-hidden)(hidden: [bool](class_bool.md#class-bool)) |
| void | [set\_node\_3d](#class-editornode3dgizmo-method-set-node-3d)(node: [Node](class_node.md#class-node)) |

* * *

## Method Descriptions

void **\_begin\_handle\_action**(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtual [🔗](#class-editornode3dgizmo-private-method-begin-handle-action)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_commit\_handle**(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool), restore: [Variant](class_variant.md#class-variant), cancel: [bool](class_bool.md#class-bool)) virtual [🔗](#class-editornode3dgizmo-private-method-commit-handle)

Override this method to commit a handle being edited (handles must have been previously added by [add\_handles()](#class-editornode3dgizmo-method-add-handles)). This usually means creating an [UndoRedo](class_undoredo.md#class-undoredo) action for the change, using the current handle value as "do" and the `restore` argument as "undo".

If the `cancel` argument is `true`, the `restore` value should be directly set, without any [UndoRedo](class_undoredo.md#class-undoredo) action.

The `secondary` argument is `true` when the committed handle is secondary (see [add\_handles()](#class-editornode3dgizmo-method-add-handles) for more information).

* * *

void **\_commit\_subgizmos**(ids: [PackedInt32Array](class_packedint32array.md#class-packedint32array), restores: [Array](class_array.md#class-array)\[ [Transform3D](class_transform3d.md#class-transform3d)\], cancel: [bool](class_bool.md#class-bool)) virtual [🔗](#class-editornode3dgizmo-private-method-commit-subgizmos)

Override this method to commit a group of subgizmos being edited (see [\_subgizmos\_intersect\_ray()](#class-editornode3dgizmo-private-method-subgizmos-intersect-ray) and [\_subgizmos\_intersect\_frustum()](#class-editornode3dgizmo-private-method-subgizmos-intersect-frustum)). This usually means creating an [UndoRedo](class_undoredo.md#class-undoredo) action for the change, using the current transforms as "do" and the `restores` transforms as "undo".

If the `cancel` argument is `true`, the `restores` transforms should be directly set, without any [UndoRedo](class_undoredo.md#class-undoredo) action.

* * *

[String](class_string.md#class-string) **\_get\_handle\_name**(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editornode3dgizmo-private-method-get-handle-name)

Override this method to return the name of an edited handle (handles must have been previously added by [add\_handles()](#class-editornode3dgizmo-method-add-handles)). Handles can be named for reference to the user when editing.

The `secondary` argument is `true` when the requested handle is secondary (see [add\_handles()](#class-editornode3dgizmo-method-add-handles) for more information).

* * *

[Variant](class_variant.md#class-variant) **\_get\_handle\_value**(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editornode3dgizmo-private-method-get-handle-value)

Override this method to return the current value of a handle. This value will be requested at the start of an edit and used as the `restore` argument in [\_commit\_handle()](#class-editornode3dgizmo-private-method-commit-handle).

The `secondary` argument is `true` when the requested handle is secondary (see [add\_handles()](#class-editornode3dgizmo-method-add-handles) for more information).

* * *

[Transform3D](class_transform3d.md#class-transform3d) **\_get\_subgizmo\_transform**(id: [int](class_int.md#class-int)) virtualconst [🔗](#class-editornode3dgizmo-private-method-get-subgizmo-transform)

Override this method to return the current transform of a subgizmo. This transform will be requested at the start of an edit and used as the `restore` argument in [\_commit\_subgizmos()](#class-editornode3dgizmo-private-method-commit-subgizmos).

* * *

[bool](class_bool.md#class-bool) **\_is\_handle\_highlighted**(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editornode3dgizmo-private-method-is-handle-highlighted)

Override this method to return `true` whenever the given handle should be highlighted in the editor.

The `secondary` argument is `true` when the requested handle is secondary (see [add\_handles()](#class-editornode3dgizmo-method-add-handles) for more information).

* * *

void **\_redraw**() virtual [🔗](#class-editornode3dgizmo-private-method-redraw)

Override this method to add all the gizmo elements whenever a gizmo update is requested. It's common to call [clear()](#class-editornode3dgizmo-method-clear) at the beginning of this method and then add visual elements depending on the node's properties.

* * *

void **\_set\_handle**(id: [int](class_int.md#class-int), secondary: [bool](class_bool.md#class-bool), camera: [Camera3D](class_camera3d.md#class-camera3d), point: [Vector2](class_vector2.md#class-vector2)) virtual [🔗](#class-editornode3dgizmo-private-method-set-handle)

Override this method to update the node properties when the user drags a gizmo handle (previously added with [add\_handles()](#class-editornode3dgizmo-method-add-handles)). The provided `point` is the mouse position in screen coordinates and the `camera` can be used to convert it to raycasts.

The `secondary` argument is `true` when the edited handle is secondary (see [add\_handles()](#class-editornode3dgizmo-method-add-handles) for more information).

* * *

void **\_set\_subgizmo\_transform**(id: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtual [🔗](#class-editornode3dgizmo-private-method-set-subgizmo-transform)

Override this method to update the node properties during subgizmo editing (see [\_subgizmos\_intersect\_ray()](#class-editornode3dgizmo-private-method-subgizmos-intersect-ray) and [\_subgizmos\_intersect\_frustum()](#class-editornode3dgizmo-private-method-subgizmos-intersect-frustum)). The `transform` is given in the [Node3D](class_node3d.md#class-node3d)'s local coordinate system.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_subgizmos\_intersect\_frustum**(camera: [Camera3D](class_camera3d.md#class-camera3d), frustum: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\]) virtualconst [🔗](#class-editornode3dgizmo-private-method-subgizmos-intersect-frustum)

Override this method to allow selecting subgizmos using mouse drag box selection. Given a `camera` and a `frustum`, this method should return which subgizmos are contained within the frustum. The `frustum` argument consists of an array with all the [Plane](class_plane.md#class-plane) s that make up the selection frustum. The returned value should contain a list of unique subgizmo identifiers, which can have any non-negative value and will be used in other virtual methods like [\_get\_subgizmo\_transform()](#class-editornode3dgizmo-private-method-get-subgizmo-transform) or [\_commit\_subgizmos()](#class-editornode3dgizmo-private-method-commit-subgizmos).

* * *

[int](class_int.md#class-int) **\_subgizmos\_intersect\_ray**(camera: [Camera3D](class_camera3d.md#class-camera3d), point: [Vector2](class_vector2.md#class-vector2)) virtualconst [🔗](#class-editornode3dgizmo-private-method-subgizmos-intersect-ray)

Override this method to allow selecting subgizmos using mouse clicks. Given a `camera` and a `point` in screen coordinates, this method should return which subgizmo should be selected. The returned value should be a unique subgizmo identifier, which can have any non-negative value and will be used in other virtual methods like [\_get\_subgizmo\_transform()](#class-editornode3dgizmo-private-method-get-subgizmo-transform) or [\_commit\_subgizmos()](#class-editornode3dgizmo-private-method-commit-subgizmos).

* * *

void **add\_collision\_segments**(segments: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array)) [🔗](#class-editornode3dgizmo-method-add-collision-segments)

Adds the specified `segments` to the gizmo's collision shape for picking. Call this method during [\_redraw()](#class-editornode3dgizmo-private-method-redraw).

* * *

void **add\_collision\_triangles**(triangles: [TriangleMesh](class_trianglemesh.md#class-trianglemesh)) [🔗](#class-editornode3dgizmo-method-add-collision-triangles)

Adds collision triangles to the gizmo for picking. A [TriangleMesh](class_trianglemesh.md#class-trianglemesh) can be generated from a regular [Mesh](class_mesh.md#class-mesh) too. Call this method during [\_redraw()](#class-editornode3dgizmo-private-method-redraw).

* * *

void **add\_handles**(handles: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), material: [Material](class_material.md#class-material), ids: [PackedInt32Array](class_packedint32array.md#class-packedint32array), billboard: [bool](class_bool.md#class-bool) = false, secondary: [bool](class_bool.md#class-bool) = false) [🔗](#class-editornode3dgizmo-method-add-handles)

Adds a list of handles (points) which can be used to edit the properties of the gizmo's [Node3D](class_node3d.md#class-node3d). The `ids` argument can be used to specify a custom identifier for each handle, if an empty array is passed, the ids will be assigned automatically from the `handles` argument order.

The `secondary` argument marks the added handles as secondary, meaning they will normally have lower selection priority than regular handles. When the user is holding the shift key secondary handles will switch to have higher priority than regular handles. This change in priority can be used to place multiple handles at the same point while still giving the user control on their selection.

There are virtual methods which will be called upon editing of these handles. Call this method during [\_redraw()](#class-editornode3dgizmo-private-method-redraw).

* * *

void **add\_lines**(lines: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), material: [Material](class_material.md#class-material), billboard: [bool](class_bool.md#class-bool) = false, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) [🔗](#class-editornode3dgizmo-method-add-lines)

Adds lines to the gizmo (as sets of 2 points), with a given material. The lines are used for visualizing the gizmo. Call this method during [\_redraw()](#class-editornode3dgizmo-private-method-redraw).

* * *

void **add\_mesh**(mesh: [Mesh](class_mesh.md#class-mesh), material: [Material](class_material.md#class-material) = null, transform: [Transform3D](class_transform3d.md#class-transform3d) = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), skeleton: [SkinReference](class_skinreference.md#class-skinreference) = null) [🔗](#class-editornode3dgizmo-method-add-mesh)

Adds a mesh to the gizmo with the specified `material`, local `transform` and `skeleton`. Call this method during [\_redraw()](#class-editornode3dgizmo-private-method-redraw).

* * *

void **add\_unscaled\_billboard**(material: [Material](class_material.md#class-material), default\_scale: [float](class_float.md#class-float) = 1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) [🔗](#class-editornode3dgizmo-method-add-unscaled-billboard)

Adds an unscaled billboard for visualization and selection. Call this method during [\_redraw()](#class-editornode3dgizmo-private-method-redraw).

* * *

void **clear**() [🔗](#class-editornode3dgizmo-method-clear)

Removes everything in the gizmo including meshes, collisions and handles.

* * *

[Node3D](class_node3d.md#class-node3d) **get\_node\_3d**() const [🔗](#class-editornode3dgizmo-method-get-node-3d)

Returns the [Node3D](class_node3d.md#class-node3d) node associated with this gizmo.

* * *

[EditorNode3DGizmoPlugin](class_editornode3dgizmoplugin.md#class-editornode3dgizmoplugin) **get\_plugin**() const [🔗](#class-editornode3dgizmo-method-get-plugin)

Returns the [EditorNode3DGizmoPlugin](class_editornode3dgizmoplugin.md#class-editornode3dgizmoplugin) that owns this gizmo. It's useful to retrieve materials using [EditorNode3DGizmoPlugin.get\_material()](class_editornode3dgizmoplugin.md#class-editornode3dgizmoplugin-method-get-material).

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_subgizmo\_selection**() const [🔗](#class-editornode3dgizmo-method-get-subgizmo-selection)

Returns a list of the currently selected subgizmos. Can be used to highlight selected elements during [\_redraw()](#class-editornode3dgizmo-private-method-redraw).

* * *

[bool](class_bool.md#class-bool) **is\_subgizmo\_selected**(id: [int](class_int.md#class-int)) const [🔗](#class-editornode3dgizmo-method-is-subgizmo-selected)

Returns `true` if the given subgizmo is currently selected. Can be used to highlight selected elements during [\_redraw()](#class-editornode3dgizmo-private-method-redraw).

* * *

void **set\_hidden**(hidden: [bool](class_bool.md#class-bool)) [🔗](#class-editornode3dgizmo-method-set-hidden)

Sets the gizmo's hidden state. If `true`, the gizmo will be hidden. If `false`, it will be shown.

* * *

void **set\_node\_3d**(node: [Node](class_node.md#class-node)) [🔗](#class-editornode3dgizmo-method-set-node-3d)

Sets the reference [Node3D](class_node3d.md#class-node3d) node for the gizmo. `node` must inherit from [Node3D](class_node3d.md#class-node3d).

[Previous](class_editorinterface.md "EditorInterface") [Next](class_editorpaths.md "EditorPaths")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorinterface.md "EditorInterface") [Next](class_editorpaths.md "EditorPaths")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).