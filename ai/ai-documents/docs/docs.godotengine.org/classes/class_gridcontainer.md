---
title: GridContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gridcontainer.html
crawled_at: "2026-08-13T10:36:37+12:00"
content_hash: c6f44b3fe2819e98d4c5abbaf31b4ced8890f0c1742cc3628b3de191d351dff0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GridContainer

* * *

# GridContainer

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A container that arranges its child controls in a grid layout.

## Description

**GridContainer** arranges its child controls in a grid layout. The number of columns is specified by the [columns](#class-gridcontainer-property-columns) property, whereas the number of rows depends on how many are needed for the child controls. The number of rows and columns is preserved for every size of the container.

**Note:** **GridContainer** only works with child nodes inheriting from [Control](class_control.md#class-control). It won't rearrange child nodes inheriting from [Node2D](class_node2d.md#class-node2d).

## Tutorials

- [Using Containers](../tutorials/ui/gui_containers.md)

- [Operating System Testing Demo](https://godotengine.org/asset-library/asset/2789)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [columns](#class-gridcontainer-property-columns) | `1` |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [h\_separation](#class-gridcontainer-theme-constant-h-separation) | `4` |
| [int](class_int.md#class-int) | [v\_separation](#class-gridcontainer-theme-constant-v-separation) | `4` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **columns** = `1` [🔗](#class-gridcontainer-property-columns)

- void **set\_columns**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_columns**()


The number of columns in the **GridContainer**. If modified, **GridContainer** reorders its Control-derived children to accommodate the new layout.

* * *

## Theme Property Descriptions

[int](class_int.md#class-int) **h\_separation** = `4` [🔗](#class-gridcontainer-theme-constant-h-separation)

The horizontal separation of child nodes.

* * *

[int](class_int.md#class-int) **v\_separation** = `4` [🔗](#class-gridcontainer-theme-constant-v-separation)

The vertical separation of child nodes.

[Previous](class_graphnode.md "GraphNode") [Next](class_gridmap.md "GridMap")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_graphnode.md "GraphNode") [Next](class_gridmap.md "GridMap")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).