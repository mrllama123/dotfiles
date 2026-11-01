---
title: CheckButton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_checkbutton.html
crawled_at: "2026-08-13T10:31:33+12:00"
content_hash: 6cd958915f1ab76145c6e66b21dba160b215322af028b885139536dbbbd43d1a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CheckButton

* * *

# CheckButton

**Inherits:** [Button](class_button.md#class-button) **<** [BaseButton](class_basebutton.md#class-basebutton) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A button that represents a binary choice.

## Description

**CheckButton** is a toggle button displayed as a check field. It's similar to [CheckBox](class_checkbox.md#class-checkbox) in functionality, but it has a different appearance. To follow established UX patterns, it's recommended to use **CheckButton** when toggling it has an **immediate** effect on something. For example, it can be used when pressing it shows or hides advanced settings, without asking the user to confirm this action.

See also [BaseButton](class_basebutton.md#class-basebutton) which contains common properties and methods associated with this node.

## Properties

|     |     |     |
| --- | --- | --- |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | alignment | `0` (overrides [Button](class_button.md#class-button-property-alignment)) |
| [bool](class_bool.md#class-bool) | toggle\_mode | `true` (overrides [BaseButton](class_basebutton.md#class-basebutton-property-toggle-mode)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [button\_checked\_color](#class-checkbutton-theme-color-button-checked-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [button\_unchecked\_color](#class-checkbutton-theme-color-button-unchecked-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [check\_v\_offset](#class-checkbutton-theme-constant-check-v-offset) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [checked](#class-checkbutton-theme-icon-checked) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [checked\_disabled](#class-checkbutton-theme-icon-checked-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [checked\_disabled\_mirrored](#class-checkbutton-theme-icon-checked-disabled-mirrored) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [checked\_mirrored](#class-checkbutton-theme-icon-checked-mirrored) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [unchecked](#class-checkbutton-theme-icon-unchecked) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [unchecked\_disabled](#class-checkbutton-theme-icon-unchecked-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [unchecked\_disabled\_mirrored](#class-checkbutton-theme-icon-unchecked-disabled-mirrored) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [unchecked\_mirrored](#class-checkbutton-theme-icon-unchecked-mirrored) |  |

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **button\_checked\_color** = `Color(1, 1, 1, 1)` [🔗](#class-checkbutton-theme-color-button-checked-color)

The color of the checked icon when the checkbox is pressed.

* * *

[Color](class_color.md#class-color) **button\_unchecked\_color** = `Color(1, 1, 1, 1)` [🔗](#class-checkbutton-theme-color-button-unchecked-color)

The color of the unchecked icon when the checkbox is not pressed.

* * *

[int](class_int.md#class-int) **check\_v\_offset** = `0` [🔗](#class-checkbutton-theme-constant-check-v-offset)

The vertical offset used when rendering the toggle icons (in pixels).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **checked** [🔗](#class-checkbutton-theme-icon-checked)

The icon to display when the **CheckButton** is checked (for left-to-right layouts).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **checked\_disabled** [🔗](#class-checkbutton-theme-icon-checked-disabled)

The icon to display when the **CheckButton** is checked and disabled (for left-to-right layouts).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **checked\_disabled\_mirrored** [🔗](#class-checkbutton-theme-icon-checked-disabled-mirrored)

The icon to display when the **CheckButton** is checked and disabled (for right-to-left layouts).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **checked\_mirrored** [🔗](#class-checkbutton-theme-icon-checked-mirrored)

The icon to display when the **CheckButton** is checked (for right-to-left layouts).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **unchecked** [🔗](#class-checkbutton-theme-icon-unchecked)

The icon to display when the **CheckButton** is unchecked (for left-to-right layouts).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **unchecked\_disabled** [🔗](#class-checkbutton-theme-icon-unchecked-disabled)

The icon to display when the **CheckButton** is unchecked and disabled (for left-to-right layouts).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **unchecked\_disabled\_mirrored** [🔗](#class-checkbutton-theme-icon-unchecked-disabled-mirrored)

The icon to display when the **CheckButton** is unchecked and disabled (for right-to-left layouts).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **unchecked\_mirrored** [🔗](#class-checkbutton-theme-icon-unchecked-mirrored)

The icon to display when the **CheckButton** is unchecked (for right-to-left layouts).

[Previous](class_checkbox.md "CheckBox") [Next](class_codeedit.md "CodeEdit")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_checkbox.md "CheckBox") [Next](class_codeedit.md "CodeEdit")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).