---
title: GraphElement — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_graphelement.html
crawled_at: "2026-08-13T10:30:16+12:00"
content_hash: 445ba40ef31ce9890fbfcf3203d3a8f463c4a5d7291431124bff5e89b1f4614c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GraphElement

* * *

# GraphElement

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [GraphFrame](class_graphframe.md#class-graphframe), [GraphNode](class_graphnode.md#class-graphnode)

A container that represents a basic element that can be placed inside a [GraphEdit](class_graphedit.md#class-graphedit) control.

## Description

**GraphElement** allows to create custom elements for a [GraphEdit](class_graphedit.md#class-graphedit) graph. By default such elements can be selected, resized, and repositioned, but they cannot be connected. For a graph element that allows for connections see [GraphNode](class_graphnode.md#class-graphnode).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [draggable](#class-graphelement-property-draggable) | `true` |
| [Vector2](class_vector2.md#class-vector2) | [position\_offset](#class-graphelement-property-position-offset) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [resizable](#class-graphelement-property-resizable) | `false` |
| [bool](class_bool.md#class-bool) | [selectable](#class-graphelement-property-selectable) | `true` |
| [bool](class_bool.md#class-bool) | [selected](#class-graphelement-property-selected) | `false` |

## Theme Properties

|     |     |
| --- | --- |
| [Texture2D](class_texture2d.md#class-texture2d) | [resizer](#class-graphelement-theme-icon-resizer) |

* * *

## Signals

**delete\_request**() [🔗](#class-graphelement-signal-delete-request)

Emitted when removing the GraphElement is requested.

* * *

**dragged**(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-graphelement-signal-dragged)

Emitted when the GraphElement is dragged.

* * *

**node\_deselected**() [🔗](#class-graphelement-signal-node-deselected)

Emitted when the GraphElement is deselected.

* * *

**node\_selected**() [🔗](#class-graphelement-signal-node-selected)

Emitted when the GraphElement is selected.

* * *

**position\_offset\_changed**() [🔗](#class-graphelement-signal-position-offset-changed)

Emitted when the GraphElement is moved.

* * *

**raise\_request**() [🔗](#class-graphelement-signal-raise-request)

Emitted when displaying the GraphElement over other ones is requested. Happens on focusing (clicking into) the GraphElement.

* * *

**resize\_end**(new\_size: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-graphelement-signal-resize-end)

Emitted when releasing the mouse button after dragging the resizer handle (see [resizable](#class-graphelement-property-resizable)).

* * *

**resize\_request**(new\_size: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-graphelement-signal-resize-request)

Emitted when resizing the GraphElement is requested. Happens on dragging the resizer handle (see [resizable](#class-graphelement-property-resizable)).

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **draggable** = `true` [🔗](#class-graphelement-property-draggable)

- void **set\_draggable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_draggable**()


If `true`, the user can drag the GraphElement.

* * *

[Vector2](class_vector2.md#class-vector2) **position\_offset** = `Vector2(0, 0)` [🔗](#class-graphelement-property-position-offset)

- void **set\_position\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_position\_offset**()


The offset of the GraphElement, relative to the scroll offset of the [GraphEdit](class_graphedit.md#class-graphedit).

* * *

[bool](class_bool.md#class-bool) **resizable** = `false` [🔗](#class-graphelement-property-resizable)

- void **set\_resizable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_resizable**()


If `true`, the user can resize the GraphElement.

**Note:** Dragging the handle will only emit the [resize\_request](#class-graphelement-signal-resize-request) and [resize\_end](#class-graphelement-signal-resize-end) signals, the GraphElement needs to be resized manually.

* * *

[bool](class_bool.md#class-bool) **selectable** = `true` [🔗](#class-graphelement-property-selectable)

- void **set\_selectable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_selectable**()


If `true`, the user can select the GraphElement.

* * *

[bool](class_bool.md#class-bool) **selected** = `false` [🔗](#class-graphelement-property-selected)

- void **set\_selected**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_selected**()


If `true`, the GraphElement is selected.

* * *

## Theme Property Descriptions

[Texture2D](class_texture2d.md#class-texture2d) **resizer** [🔗](#class-graphelement-theme-icon-resizer)

The icon used for the resizer, visible when [resizable](#class-graphelement-property-resizable) is enabled.

[Previous](class_graphedit.md "GraphEdit") [Next](class_graphframe.md "GraphFrame")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_graphedit.md "GraphEdit") [Next](class_graphframe.md "GraphFrame")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).