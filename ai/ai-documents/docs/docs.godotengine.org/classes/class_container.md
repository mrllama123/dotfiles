---
title: Container — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_container.html
crawled_at: "2026-08-13T10:31:17+12:00"
content_hash: f22793fddfec7951450f352985047f03732ff27d37a89dee4575c1ca3601df54
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Container

* * *

# Container

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [AspectRatioContainer](class_aspectratiocontainer.md#class-aspectratiocontainer), [BoxContainer](class_boxcontainer.md#class-boxcontainer), [CenterContainer](class_centercontainer.md#class-centercontainer), [EditorProperty](class_editorproperty.md#class-editorproperty), [FlowContainer](class_flowcontainer.md#class-flowcontainer), [FoldableContainer](class_foldablecontainer.md#class-foldablecontainer), [GraphElement](class_graphelement.md#class-graphelement), [GridContainer](class_gridcontainer.md#class-gridcontainer), [MarginContainer](class_margincontainer.md#class-margincontainer), [PanelContainer](class_panelcontainer.md#class-panelcontainer), [ScrollContainer](class_scrollcontainer.md#class-scrollcontainer), [SplitContainer](class_splitcontainer.md#class-splitcontainer), [SubViewportContainer](class_subviewportcontainer.md#class-subviewportcontainer), [TabContainer](class_tabcontainer.md#class-tabcontainer)

Base class for all GUI containers.

## Description

Base class for all GUI containers. A **Container** automatically arranges its child controls in a certain way. This class can be inherited to make custom container types.

## Tutorials

- [Using Containers](../tutorials/ui/gui_containers.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [MouseFilter](class_control.md#enum-control-mousefilter) | mouse\_filter | `1` (overrides [Control](class_control.md#class-control-property-mouse-filter)) |

## Methods

|     |     |
| --- | --- |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_get\_allowed\_size\_flags\_horizontal](#class-container-private-method-get-allowed-size-flags-horizontal)() virtualconst |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_get\_allowed\_size\_flags\_vertical](#class-container-private-method-get-allowed-size-flags-vertical)() virtualconst |
| void | [fit\_child\_in\_rect](#class-container-method-fit-child-in-rect)(child: [Control](class_control.md#class-control), rect: [Rect2](class_rect2.md#class-rect2)) |
| void | [queue\_sort](#class-container-method-queue-sort)() |

* * *

## Signals

**pre\_sort\_children**() [🔗](#class-container-signal-pre-sort-children)

Emitted when children are going to be sorted.

* * *

**sort\_children**() [🔗](#class-container-signal-sort-children)

Emitted when sorting the children is needed.

* * *

## Constants

**NOTIFICATION\_PRE\_SORT\_CHILDREN** = `50` [🔗](#class-container-constant-notification-pre-sort-children)

Notification just before children are going to be sorted, in case there's something to process beforehand.

**NOTIFICATION\_SORT\_CHILDREN** = `51` [🔗](#class-container-constant-notification-sort-children)

Notification for when sorting the children, it must be obeyed immediately.

* * *

## Method Descriptions

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_get\_allowed\_size\_flags\_horizontal**() virtualconst [🔗](#class-container-private-method-get-allowed-size-flags-horizontal)

Implement to return a list of allowed horizontal [SizeFlags](class_control.md#enum-control-sizeflags) for child nodes. This doesn't technically prevent the usages of any other size flags, if your implementation requires that. This only limits the options available to the user in the Inspector dock.

**Note:** Having no size flags is equal to having [Control.SIZE\_SHRINK\_BEGIN](class_control.md#class-control-constant-size-shrink-begin). As such, this value is always implicitly allowed.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_get\_allowed\_size\_flags\_vertical**() virtualconst [🔗](#class-container-private-method-get-allowed-size-flags-vertical)

Implement to return a list of allowed vertical [SizeFlags](class_control.md#enum-control-sizeflags) for child nodes. This doesn't technically prevent the usages of any other size flags, if your implementation requires that. This only limits the options available to the user in the Inspector dock.

**Note:** Having no size flags is equal to having [Control.SIZE\_SHRINK\_BEGIN](class_control.md#class-control-constant-size-shrink-begin). As such, this value is always implicitly allowed.

* * *

void **fit\_child\_in\_rect**(child: [Control](class_control.md#class-control), rect: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-container-method-fit-child-in-rect)

Fit a child control in a given rect. This is mainly a helper for creating custom container classes.

* * *

void **queue\_sort**() [🔗](#class-container-method-queue-sort)

Queue resort of the contained children. This is called automatically anyway, but can be called upon request.

[Previous](class_confirmationdialog.md "ConfirmationDialog") [Next](class_control.md "Control")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_confirmationdialog.md "ConfirmationDialog") [Next](class_control.md "Control")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).