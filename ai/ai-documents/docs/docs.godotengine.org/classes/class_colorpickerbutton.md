---
title: ColorPickerButton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_colorpickerbutton.html
crawled_at: "2026-08-13T10:24:20+12:00"
content_hash: a7eac9bf14d698dfaa5b4278584d5367b7b4880faf40391c5a5023e907e16f61
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ColorPickerButton

* * *

# ColorPickerButton

**Inherits:** [Button](class_button.md#class-button) **<** [BaseButton](class_basebutton.md#class-basebutton) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A button that brings up a [ColorPicker](class_colorpicker.md#class-colorpicker) when pressed.

## Description

Encapsulates a [ColorPicker](class_colorpicker.md#class-colorpicker), making it accessible by pressing a button. Pressing the button will toggle the [ColorPicker](class_colorpicker.md#class-colorpicker)'s visibility.

See also [BaseButton](class_basebutton.md#class-basebutton) which contains common properties and methods associated with this node.

**Note:** By default, the button may not be wide enough for the color preview swatch to be visible. Make sure to set [Control.custom\_minimum\_size](class_control.md#class-control-property-custom-minimum-size) to a big enough value to give the button enough space.

## Tutorials

- [2D GD Paint Demo](https://godotengine.org/asset-library/asset/2768)

- [GUI Drag And Drop Demo](https://godotengine.org/asset-library/asset/2767)


## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [color](#class-colorpickerbutton-property-color) | `Color(0, 0, 0, 1)` |
| [bool](class_bool.md#class-bool) | [edit\_alpha](#class-colorpickerbutton-property-edit-alpha) | `true` |
| [bool](class_bool.md#class-bool) | [edit\_intensity](#class-colorpickerbutton-property-edit-intensity) | `true` |
| [bool](class_bool.md#class-bool) | toggle\_mode | `true` (overrides [BaseButton](class_basebutton.md#class-basebutton-property-toggle-mode)) |

## Methods

|     |     |
| --- | --- |
| [ColorPicker](class_colorpicker.md#class-colorpicker) | [get\_picker](#class-colorpickerbutton-method-get-picker)() |
| [PopupPanel](class_popuppanel.md#class-popuppanel) | [get\_popup](#class-colorpickerbutton-method-get-popup)() |

## Theme Properties

|     |     |
| --- | --- |
| [Texture2D](class_texture2d.md#class-texture2d) | [bg](#class-colorpickerbutton-theme-icon-bg) |

* * *

## Signals

**color\_changed**(color: [Color](class_color.md#class-color)) [🔗](#class-colorpickerbutton-signal-color-changed)

Emitted when the color changes.

* * *

**picker\_created**() [🔗](#class-colorpickerbutton-signal-picker-created)

Emitted when the [ColorPicker](class_colorpicker.md#class-colorpicker) is created (the button is pressed for the first time).

* * *

**popup\_closed**() [🔗](#class-colorpickerbutton-signal-popup-closed)

Emitted when the [ColorPicker](class_colorpicker.md#class-colorpicker) is closed.

* * *

## Property Descriptions

[Color](class_color.md#class-color) **color** = `Color(0, 0, 0, 1)` [🔗](#class-colorpickerbutton-property-color)

- void **set\_pick\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_pick\_color**()


The currently selected color.

* * *

[bool](class_bool.md#class-bool) **edit\_alpha** = `true` [🔗](#class-colorpickerbutton-property-edit-alpha)

- void **set\_edit\_alpha**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editing\_alpha**()


If `true`, the alpha channel in the displayed [ColorPicker](class_colorpicker.md#class-colorpicker) will be visible.

* * *

[bool](class_bool.md#class-bool) **edit\_intensity** = `true` [🔗](#class-colorpickerbutton-property-edit-intensity)

- void **set\_edit\_intensity**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editing\_intensity**()


If `true`, the intensity slider in the displayed [ColorPicker](class_colorpicker.md#class-colorpicker) will be visible.

* * *

## Method Descriptions

[ColorPicker](class_colorpicker.md#class-colorpicker) **get\_picker**() [🔗](#class-colorpickerbutton-method-get-picker)

Returns the [ColorPicker](class_colorpicker.md#class-colorpicker) that this node toggles.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

[PopupPanel](class_popuppanel.md#class-popuppanel) **get\_popup**() [🔗](#class-colorpickerbutton-method-get-popup)

Returns the control's [PopupPanel](class_popuppanel.md#class-popuppanel) which allows you to connect to popup signals. This allows you to handle events when the ColorPicker is shown or hidden.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [Window.visible](class_window.md#class-window-property-visible) property.

* * *

## Theme Property Descriptions

[Texture2D](class_texture2d.md#class-texture2d) **bg** [🔗](#class-colorpickerbutton-theme-icon-bg)

The background of the color preview rect on the button.

[Previous](class_colorpicker.md "ColorPicker") [Next](class_colorrect.md "ColorRect")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_colorpicker.md "ColorPicker") [Next](class_colorrect.md "ColorRect")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).