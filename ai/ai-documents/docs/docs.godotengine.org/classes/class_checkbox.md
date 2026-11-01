---
title: CheckBox — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_checkbox.html
crawled_at: "2026-08-13T10:39:30+12:00"
content_hash: dd4ed5dcaf34ceb4cea4d316e7e99f2a26557b01dc7b5d1c72fb5a36a5a77bf2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CheckBox

* * *

# CheckBox

**Inherits:** [Button](class_button.md#class-button) **<** [BaseButton](class_basebutton.md#class-basebutton) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A button that represents a binary choice.

## Description

**CheckBox** allows the user to choose one of only two possible options. It's similar to [CheckButton](class_checkbutton.md#class-checkbutton) in functionality, but it has a different appearance. To follow established UX patterns, it's recommended to use **CheckBox** when toggling it has **no** immediate effect on something. For example, it could be used when toggling it will only do something once a confirmation button is pressed.

See also [BaseButton](class_basebutton.md#class-basebutton) which contains common properties and methods associated with this node.

When [BaseButton.button\_group](class_basebutton.md#class-basebutton-property-button-group) specifies a [ButtonGroup](class_buttongroup.md#class-buttongroup), **CheckBox** changes its appearance to that of a radio button and uses the various `radio_*` theme properties.

## Properties

|     |     |     |
| --- | --- | --- |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | alignment | `0` (overrides [Button](class_button.md#class-button-property-alignment)) |
| [bool](class_bool.md#class-bool) | toggle\_mode | `true` (overrides [BaseButton](class_basebutton.md#class-basebutton-property-toggle-mode)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [checkbox\_checked\_color](#class-checkbox-theme-color-checkbox-checked-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [checkbox\_unchecked\_color](#class-checkbox-theme-color-checkbox-unchecked-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [check\_v\_offset](#class-checkbox-theme-constant-check-v-offset) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [checked](#class-checkbox-theme-icon-checked) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [checked\_disabled](#class-checkbox-theme-icon-checked-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [radio\_checked](#class-checkbox-theme-icon-radio-checked) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [radio\_checked\_disabled](#class-checkbox-theme-icon-radio-checked-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [radio\_unchecked](#class-checkbox-theme-icon-radio-unchecked) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [radio\_unchecked\_disabled](#class-checkbox-theme-icon-radio-unchecked-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [unchecked](#class-checkbox-theme-icon-unchecked) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [unchecked\_disabled](#class-checkbox-theme-icon-unchecked-disabled) |  |

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **checkbox\_checked\_color** = `Color(1, 1, 1, 1)` [🔗](#class-checkbox-theme-color-checkbox-checked-color)

The color of the checked icon when the checkbox is pressed.

* * *

[Color](class_color.md#class-color) **checkbox\_unchecked\_color** = `Color(1, 1, 1, 1)` [🔗](#class-checkbox-theme-color-checkbox-unchecked-color)

The color of the unchecked icon when the checkbox is not pressed.

* * *

[int](class_int.md#class-int) **check\_v\_offset** = `0` [🔗](#class-checkbox-theme-constant-check-v-offset)

The vertical offset used when rendering the check icons (in pixels).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **checked** [🔗](#class-checkbox-theme-icon-checked)

The check icon to display when the **CheckBox** is checked.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **checked\_disabled** [🔗](#class-checkbox-theme-icon-checked-disabled)

The check icon to display when the **CheckBox** is checked and is disabled.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **radio\_checked** [🔗](#class-checkbox-theme-icon-radio-checked)

The check icon to display when the **CheckBox** is configured as a radio button and is checked.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **radio\_checked\_disabled** [🔗](#class-checkbox-theme-icon-radio-checked-disabled)

The check icon to display when the **CheckBox** is configured as a radio button, is disabled, and is unchecked.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **radio\_unchecked** [🔗](#class-checkbox-theme-icon-radio-unchecked)

The check icon to display when the **CheckBox** is configured as a radio button and is unchecked.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **radio\_unchecked\_disabled** [🔗](#class-checkbox-theme-icon-radio-unchecked-disabled)

The check icon to display when the **CheckBox** is configured as a radio button, is disabled, and is unchecked.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **unchecked** [🔗](#class-checkbox-theme-icon-unchecked)

The check icon to display when the **CheckBox** is unchecked.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **unchecked\_disabled** [🔗](#class-checkbox-theme-icon-unchecked-disabled)

The check icon to display when the **CheckBox** is unchecked and is disabled.

[Previous](class_characterbody3d.md "CharacterBody3D") [Next](class_checkbutton.md "CheckButton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_characterbody3d.md "CharacterBody3D") [Next](class_checkbutton.md "CheckButton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).