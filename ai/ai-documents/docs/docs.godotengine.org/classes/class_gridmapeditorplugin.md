---
title: GridMapEditorPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gridmapeditorplugin.html
crawled_at: "2026-08-13T10:30:36+12:00"
content_hash: 00dc186215905cd2a50814fd54e49494aa984f375b0bd6df5a5e48b4575b0615
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GridMapEditorPlugin

* * *

# GridMapEditorPlugin

**Inherits:** [EditorPlugin](class_editorplugin.md#class-editorplugin) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Editor for [GridMap](class_gridmap.md#class-gridmap) nodes.

## Description

GridMapEditorPlugin provides access to the [GridMap](class_gridmap.md#class-gridmap) editor functionality.

## Methods

|     |     |
| --- | --- |
| void | [clear\_selection](#class-gridmapeditorplugin-method-clear-selection)() |
| [GridMap](class_gridmap.md#class-gridmap) | [get\_current\_grid\_map](#class-gridmapeditorplugin-method-get-current-grid-map)() const |
| [Array](class_array.md#class-array) | [get\_selected\_cells](#class-gridmapeditorplugin-method-get-selected-cells)() const |
| [int](class_int.md#class-int) | [get\_selected\_palette\_item](#class-gridmapeditorplugin-method-get-selected-palette-item)() const |
| [AABB](class_aabb.md#class-aabb) | [get\_selection](#class-gridmapeditorplugin-method-get-selection)() const |
| [bool](class_bool.md#class-bool) | [has\_selection](#class-gridmapeditorplugin-method-has-selection)() const |
| void | [set\_selected\_palette\_item](#class-gridmapeditorplugin-method-set-selected-palette-item)(item: [int](class_int.md#class-int)) const |
| void | [set\_selection](#class-gridmapeditorplugin-method-set-selection)(begin: [Vector3i](class_vector3i.md#class-vector3i), end: [Vector3i](class_vector3i.md#class-vector3i)) |

* * *

## Method Descriptions

void **clear\_selection**() [🔗](#class-gridmapeditorplugin-method-clear-selection)

Deselects any currently selected cells.

* * *

[GridMap](class_gridmap.md#class-gridmap) **get\_current\_grid\_map**() const [🔗](#class-gridmapeditorplugin-method-get-current-grid-map)

Returns the [GridMap](class_gridmap.md#class-gridmap) node currently edited by the grid map editor.

* * *

[Array](class_array.md#class-array) **get\_selected\_cells**() const [🔗](#class-gridmapeditorplugin-method-get-selected-cells)

Returns an array of [Vector3i](class_vector3i.md#class-vector3i) s with the selected cells' coordinates.

* * *

[int](class_int.md#class-int) **get\_selected\_palette\_item**() const [🔗](#class-gridmapeditorplugin-method-get-selected-palette-item)

Returns the index of the selected [MeshLibrary](class_meshlibrary.md#class-meshlibrary) item in the grid map editor's palette or `-1` if no item is selected.

**Note:** The indices might not be in the same order as they appear in the editor's interface.

* * *

[AABB](class_aabb.md#class-aabb) **get\_selection**() const [🔗](#class-gridmapeditorplugin-method-get-selection)

Returns the cell coordinate bounds of the current selection. Use [has\_selection()](#class-gridmapeditorplugin-method-has-selection) to check if there is an active selection.

* * *

[bool](class_bool.md#class-bool) **has\_selection**() const [🔗](#class-gridmapeditorplugin-method-has-selection)

Returns `true` if there are selected cells.

* * *

void **set\_selected\_palette\_item**(item: [int](class_int.md#class-int)) const [🔗](#class-gridmapeditorplugin-method-set-selected-palette-item)

Selects the [MeshLibrary](class_meshlibrary.md#class-meshlibrary) item with the given index in the grid map editor's palette. If a negative index is given, no item will be selected. If a value greater than the last index is given, the last item will be selected.

**Note:** The indices might not be in the same order as they appear in the editor's interface.

* * *

void **set\_selection**(begin: [Vector3i](class_vector3i.md#class-vector3i), end: [Vector3i](class_vector3i.md#class-vector3i)) [🔗](#class-gridmapeditorplugin-method-set-selection)

Selects the cells inside the given bounds from `begin` to `end`.

[Previous](class_gridmap.md "GridMap") [Next](class_groovejoint2d.md "GrooveJoint2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gridmap.md "GridMap") [Next](class_groovejoint2d.md "GrooveJoint2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).