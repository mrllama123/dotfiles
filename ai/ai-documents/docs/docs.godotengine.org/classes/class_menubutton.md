---
title: MenuButton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_menubutton.html
crawled_at: "2026-08-13T10:42:19+12:00"
content_hash: 44eb3eccbbe2c7db600101be0fa24752f768318002b7df750a43a7f758f2d6e1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MenuButton

* * *

# MenuButton

**Inherits:** [Button](class_button.md#class-button) **<** [BaseButton](class_basebutton.md#class-basebutton) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A button that brings up a [PopupMenu](class_popupmenu.md#class-popupmenu) when clicked.

## Description

A button that brings up a [PopupMenu](class_popupmenu.md#class-popupmenu) when clicked. To create new items inside this [PopupMenu](class_popupmenu.md#class-popupmenu), use `get_popup().add_item("My Item Name")`. You can also create them directly from Godot editor's inspector.

See also [BaseButton](class_basebutton.md#class-basebutton) which contains common properties and methods associated with this node.

## Properties

|     |     |     |
| --- | --- | --- |
| [ActionMode](class_basebutton.md#enum-basebutton-actionmode) | action\_mode | `0` (overrides [BaseButton](class_basebutton.md#class-basebutton-property-action-mode)) |
| [bool](class_bool.md#class-bool) | flat | `true` (overrides [Button](class_button.md#class-button-property-flat)) |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `3` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [int](class_int.md#class-int) | [item\_count](#class-menubutton-property-item-count) | `0` |
| [bool](class_bool.md#class-bool) | [switch\_on\_hover](#class-menubutton-property-switch-on-hover) | `false` |
| [bool](class_bool.md#class-bool) | toggle\_mode | `true` (overrides [BaseButton](class_basebutton.md#class-basebutton-property-toggle-mode)) |

## Methods

|     |     |
| --- | --- |
| [PopupMenu](class_popupmenu.md#class-popupmenu) | [get\_popup](#class-menubutton-method-get-popup)() const |
| void | [set\_disable\_shortcuts](#class-menubutton-method-set-disable-shortcuts)(disabled: [bool](class_bool.md#class-bool)) |
| void | [show\_popup](#class-menubutton-method-show-popup)() |

* * *

## Signals

**about\_to\_popup**() [🔗](#class-menubutton-signal-about-to-popup)

Emitted when the [PopupMenu](class_popupmenu.md#class-popupmenu) of this MenuButton is about to show.

* * *

## Property Descriptions

[int](class_int.md#class-int) **item\_count** = `0` [🔗](#class-menubutton-property-item-count)

- void **set\_item\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_item\_count**()


The number of items currently in the list.

* * *

[bool](class_bool.md#class-bool) **switch\_on\_hover** = `false` [🔗](#class-menubutton-property-switch-on-hover)

- void **set\_switch\_on\_hover**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_switch\_on\_hover**()


If `true`, when the cursor hovers above another **MenuButton** within the same parent which also has [switch\_on\_hover](#class-menubutton-property-switch-on-hover) enabled, it will close the current **MenuButton** and open the other one.

* * *

## Method Descriptions

[PopupMenu](class_popupmenu.md#class-popupmenu) **get\_popup**() const [🔗](#class-menubutton-method-get-popup)

Returns the [PopupMenu](class_popupmenu.md#class-popupmenu) contained in this button.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [Window.visible](class_window.md#class-window-property-visible) property.

* * *

void **set\_disable\_shortcuts**(disabled: [bool](class_bool.md#class-bool)) [🔗](#class-menubutton-method-set-disable-shortcuts)

If `true`, shortcuts are disabled and cannot be used to trigger the button.

* * *

void **show\_popup**() [🔗](#class-menubutton-method-show-popup)

Adjusts popup position and sizing for the **MenuButton**, then shows the [PopupMenu](class_popupmenu.md#class-popupmenu). Prefer this over using `get_popup().popup()`.

[Previous](class_menubar.md "MenuBar") [Next](class_meshinstance2d.md "MeshInstance2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_menubar.md "MenuBar") [Next](class_meshinstance2d.md "MeshInstance2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).