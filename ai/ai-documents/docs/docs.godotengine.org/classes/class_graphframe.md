---
title: GraphFrame — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_graphframe.html
crawled_at: "2026-08-13T10:36:48+12:00"
content_hash: 16f1ad00423b2476d1bf30b2728d7e4cf3eae69260720d4edcd20f06ed27bb18
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GraphFrame

* * *

# GraphFrame

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [GraphElement](class_graphelement.md#class-graphelement) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

GraphFrame is a special [GraphElement](class_graphelement.md#class-graphelement) that can be used to organize other [GraphElement](class_graphelement.md#class-graphelement) s inside a [GraphEdit](class_graphedit.md#class-graphedit).

## Description

GraphFrame is a special [GraphElement](class_graphelement.md#class-graphelement) to which other [GraphElement](class_graphelement.md#class-graphelement) s can be attached. It can be configured to automatically resize to enclose all attached [GraphElement](class_graphelement.md#class-graphelement) s. If the frame is moved, all the attached [GraphElement](class_graphelement.md#class-graphelement) s inside it will be moved as well.

A GraphFrame is always kept behind the connection layer and other [GraphElement](class_graphelement.md#class-graphelement) s inside a [GraphEdit](class_graphedit.md#class-graphedit).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [autoshrink\_enabled](#class-graphframe-property-autoshrink-enabled) | `true` |
| [int](class_int.md#class-int) | [autoshrink\_margin](#class-graphframe-property-autoshrink-margin) | `40` |
| [int](class_int.md#class-int) | [drag\_margin](#class-graphframe-property-drag-margin) | `16` |
| [MouseFilter](class_control.md#enum-control-mousefilter) | mouse\_filter | `0` (overrides [Control](class_control.md#class-control-property-mouse-filter)) |
| [Color](class_color.md#class-color) | [tint\_color](#class-graphframe-property-tint-color) | `Color(0.3, 0.3, 0.3, 0.75)` |
| [bool](class_bool.md#class-bool) | [tint\_color\_enabled](#class-graphframe-property-tint-color-enabled) | `false` |
| [String](class_string.md#class-string) | [title](#class-graphframe-property-title) | `""` |

## Methods

|     |     |
| --- | --- |
| [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) | [get\_titlebar\_hbox](#class-graphframe-method-get-titlebar-hbox)() |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [resizer\_color](#class-graphframe-theme-color-resizer-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel](#class-graphframe-theme-style-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel\_selected](#class-graphframe-theme-style-panel-selected) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [titlebar](#class-graphframe-theme-style-titlebar) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [titlebar\_selected](#class-graphframe-theme-style-titlebar-selected) |  |

* * *

## Signals

**autoshrink\_changed**() [🔗](#class-graphframe-signal-autoshrink-changed)

Emitted when [autoshrink\_enabled](#class-graphframe-property-autoshrink-enabled) or [autoshrink\_margin](#class-graphframe-property-autoshrink-margin) changes.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **autoshrink\_enabled** = `true` [🔗](#class-graphframe-property-autoshrink-enabled)

- void **set\_autoshrink\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_autoshrink\_enabled**()


If `true`, the frame's rect will be adjusted automatically to enclose all attached [GraphElement](class_graphelement.md#class-graphelement) s.

* * *

[int](class_int.md#class-int) **autoshrink\_margin** = `40` [🔗](#class-graphframe-property-autoshrink-margin)

- void **set\_autoshrink\_margin**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_autoshrink\_margin**()


The margin around the attached nodes that is used to calculate the size of the frame when [autoshrink\_enabled](#class-graphframe-property-autoshrink-enabled) is `true`.

* * *

[int](class_int.md#class-int) **drag\_margin** = `16` [🔗](#class-graphframe-property-drag-margin)

- void **set\_drag\_margin**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_drag\_margin**()


The margin inside the frame that can be used to drag the frame.

* * *

[Color](class_color.md#class-color) **tint\_color** = `Color(0.3, 0.3, 0.3, 0.75)` [🔗](#class-graphframe-property-tint-color)

- void **set\_tint\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_tint\_color**()


The color of the frame when [tint\_color\_enabled](#class-graphframe-property-tint-color-enabled) is `true`.

* * *

[bool](class_bool.md#class-bool) **tint\_color\_enabled** = `false` [🔗](#class-graphframe-property-tint-color-enabled)

- void **set\_tint\_color\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_tint\_color\_enabled**()


If `true`, the tint color will be used to tint the frame.

* * *

[String](class_string.md#class-string) **title** = `""` [🔗](#class-graphframe-property-title)

- void **set\_title**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_title**()


Title of the frame.

* * *

## Method Descriptions

[HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) **get\_titlebar\_hbox**() [🔗](#class-graphframe-method-get-titlebar-hbox)

Returns the [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) used for the title bar, only containing a [Label](class_label.md#class-label) for displaying the title by default.

This can be used to add custom controls to the title bar such as option or close buttons.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **resizer\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-graphframe-theme-color-resizer-color)

The color modulation applied to the resizer icon.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel** [🔗](#class-graphframe-theme-style-panel)

The default [StyleBox](class_stylebox.md#class-stylebox) used for the background of the **GraphFrame**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel\_selected** [🔗](#class-graphframe-theme-style-panel-selected)

The [StyleBox](class_stylebox.md#class-stylebox) used for the background of the **GraphFrame** when it is selected.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **titlebar** [🔗](#class-graphframe-theme-style-titlebar)

The [StyleBox](class_stylebox.md#class-stylebox) used for the title bar of the **GraphFrame**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **titlebar\_selected** [🔗](#class-graphframe-theme-style-titlebar-selected)

The [StyleBox](class_stylebox.md#class-stylebox) used for the title bar of the **GraphFrame** when it is selected.

[Previous](class_graphelement.md "GraphElement") [Next](class_graphnode.md "GraphNode")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_graphelement.md "GraphElement") [Next](class_graphnode.md "GraphNode")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).