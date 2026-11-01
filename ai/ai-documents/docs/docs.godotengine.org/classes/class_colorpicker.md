---
title: ColorPicker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_colorpicker.html
crawled_at: "2026-08-13T10:19:36+12:00"
content_hash: 3801be8fcc222cab8200acddb57c5b1e7381e548a5c702fc8e785c0221293356
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ColorPicker

* * *

# ColorPicker

**Inherits:** [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) **<** [BoxContainer](class_boxcontainer.md#class-boxcontainer) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A widget that provides an interface for selecting or modifying a color.

## Description

A widget that provides an interface for selecting or modifying a color. It can optionally provide functionalities like a color sampler (eyedropper), color modes, and presets.

**Note:** This control is the color picker widget itself. You can use a [ColorPickerButton](class_colorpickerbutton.md#class-colorpickerbutton) instead if you need a button that brings up a **ColorPicker** in a popup.

## Tutorials

- [Tween Interpolation Demo](https://godotengine.org/asset-library/asset/2733)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [can\_add\_swatches](#class-colorpicker-property-can-add-swatches) | `true` |
| [Color](class_color.md#class-color) | [color](#class-colorpicker-property-color) | `Color(1, 1, 1, 1)` |
| [ColorModeType](#enum-colorpicker-colormodetype) | [color\_mode](#class-colorpicker-property-color-mode) | `0` |
| [bool](class_bool.md#class-bool) | [color\_modes\_visible](#class-colorpicker-property-color-modes-visible) | `true` |
| [bool](class_bool.md#class-bool) | [deferred\_mode](#class-colorpicker-property-deferred-mode) | `false` |
| [bool](class_bool.md#class-bool) | [edit\_alpha](#class-colorpicker-property-edit-alpha) | `true` |
| [bool](class_bool.md#class-bool) | [edit\_intensity](#class-colorpicker-property-edit-intensity) | `true` |
| [bool](class_bool.md#class-bool) | [hex\_visible](#class-colorpicker-property-hex-visible) | `true` |
| [PickerShapeType](#enum-colorpicker-pickershapetype) | [picker\_shape](#class-colorpicker-property-picker-shape) | `0` |
| [bool](class_bool.md#class-bool) | [presets\_visible](#class-colorpicker-property-presets-visible) | `true` |
| [bool](class_bool.md#class-bool) | [sampler\_visible](#class-colorpicker-property-sampler-visible) | `true` |
| [bool](class_bool.md#class-bool) | [sliders\_visible](#class-colorpicker-property-sliders-visible) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [add\_preset](#class-colorpicker-method-add-preset)(color: [Color](class_color.md#class-color)) |
| void | [add\_recent\_preset](#class-colorpicker-method-add-recent-preset)(color: [Color](class_color.md#class-color)) |
| void | [erase\_preset](#class-colorpicker-method-erase-preset)(color: [Color](class_color.md#class-color)) |
| void | [erase\_recent\_preset](#class-colorpicker-method-erase-recent-preset)(color: [Color](class_color.md#class-color)) |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [get\_presets](#class-colorpicker-method-get-presets)() const |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [get\_recent\_presets](#class-colorpicker-method-get-recent-presets)() const |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [focused\_not\_editing\_cursor\_color](#class-colorpicker-theme-color-focused-not-editing-cursor-color) | `Color(1, 1, 1, 0.275)` |
| [int](class_int.md#class-int) | [center\_slider\_grabbers](#class-colorpicker-theme-constant-center-slider-grabbers) | `1` |
| [int](class_int.md#class-int) | [h\_width](#class-colorpicker-theme-constant-h-width) | `30` |
| [int](class_int.md#class-int) | [label\_width](#class-colorpicker-theme-constant-label-width) | `10` |
| [int](class_int.md#class-int) | [margin](#class-colorpicker-theme-constant-margin) | `4` |
| [int](class_int.md#class-int) | [sv\_height](#class-colorpicker-theme-constant-sv-height) | `256` |
| [int](class_int.md#class-int) | [sv\_width](#class-colorpicker-theme-constant-sv-width) | `256` |
| [Texture2D](class_texture2d.md#class-texture2d) | [add\_preset](#class-colorpicker-theme-icon-add-preset) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [bar\_arrow](#class-colorpicker-theme-icon-bar-arrow) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [color\_hue](#class-colorpicker-theme-icon-color-hue) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [color\_script](#class-colorpicker-theme-icon-color-script) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [expanded\_arrow](#class-colorpicker-theme-icon-expanded-arrow) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [folded\_arrow](#class-colorpicker-theme-icon-folded-arrow) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [menu\_option](#class-colorpicker-theme-icon-menu-option) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [overbright\_indicator](#class-colorpicker-theme-icon-overbright-indicator) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [picker\_cursor](#class-colorpicker-theme-icon-picker-cursor) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [picker\_cursor\_bg](#class-colorpicker-theme-icon-picker-cursor-bg) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [sample\_bg](#class-colorpicker-theme-icon-sample-bg) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [sample\_revert](#class-colorpicker-theme-icon-sample-revert) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [screen\_picker](#class-colorpicker-theme-icon-screen-picker) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [shape\_circle](#class-colorpicker-theme-icon-shape-circle) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [shape\_rect](#class-colorpicker-theme-icon-shape-rect) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [shape\_rect\_wheel](#class-colorpicker-theme-icon-shape-rect-wheel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [picker\_focus\_circle](#class-colorpicker-theme-style-picker-focus-circle) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [picker\_focus\_rectangle](#class-colorpicker-theme-style-picker-focus-rectangle) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [sample\_focus](#class-colorpicker-theme-style-sample-focus) |  |

* * *

## Signals

**color\_changed**(color: [Color](class_color.md#class-color)) [🔗](#class-colorpicker-signal-color-changed)

Emitted when the color is changed.

* * *

**preset\_added**(color: [Color](class_color.md#class-color)) [🔗](#class-colorpicker-signal-preset-added)

Emitted when a preset is added.

* * *

**preset\_removed**(color: [Color](class_color.md#class-color)) [🔗](#class-colorpicker-signal-preset-removed)

Emitted when a preset is removed.

* * *

## Enumerations

enum **ColorModeType**: [🔗](#enum-colorpicker-colormodetype)

[ColorModeType](#enum-colorpicker-colormodetype) **MODE\_RGB** = `0`

Allows editing the color with Red/Green/Blue sliders in sRGB color space.

[ColorModeType](#enum-colorpicker-colormodetype) **MODE\_HSV** = `1`

Allows editing the color with Hue/Saturation/Value sliders.

[ColorModeType](#enum-colorpicker-colormodetype) **MODE\_RAW** = `2`

**Deprecated:** This is replaced by [MODE\_LINEAR](#class-colorpicker-constant-mode-linear).

[ColorModeType](#enum-colorpicker-colormodetype) **MODE\_LINEAR** = `2`

Allows editing the color with Red/Green/Blue sliders in linear color space.

[ColorModeType](#enum-colorpicker-colormodetype) **MODE\_OKHSL** = `3`

Allows editing the color with Hue/Saturation/Lightness sliders.

OKHSL is a new color space similar to HSL but that better match perception by leveraging the Oklab color space which is designed to be simple to use, while doing a good job at predicting perceived lightness, chroma and hue.

[Okhsv and Okhsl color spaces](https://bottosson.github.io/posts/colorpicker/)

* * *

enum **PickerShapeType**: [🔗](#enum-colorpicker-pickershapetype)

[PickerShapeType](#enum-colorpicker-pickershapetype) **SHAPE\_HSV\_RECTANGLE** = `0`

HSV Color Model rectangle color space.

[PickerShapeType](#enum-colorpicker-pickershapetype) **SHAPE\_HSV\_WHEEL** = `1`

HSV Color Model rectangle color space with a wheel.

[PickerShapeType](#enum-colorpicker-pickershapetype) **SHAPE\_VHS\_CIRCLE** = `2`

HSV Color Model circle color space. Use Saturation as a radius.

[PickerShapeType](#enum-colorpicker-pickershapetype) **SHAPE\_OKHSL\_CIRCLE** = `3`

HSL OK Color Model circle color space.

[PickerShapeType](#enum-colorpicker-pickershapetype) **SHAPE\_NONE** = `4`

The color space shape and the shape select button are hidden. Can't be selected from the shapes popup.

[PickerShapeType](#enum-colorpicker-pickershapetype) **SHAPE\_OK\_HS\_RECTANGLE** = `5`

OKHSL Color Model rectangle with constant lightness.

[PickerShapeType](#enum-colorpicker-pickershapetype) **SHAPE\_OK\_HL\_RECTANGLE** = `6`

OKHSL Color Model rectangle with constant saturation.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **can\_add\_swatches** = `true` [🔗](#class-colorpicker-property-can-add-swatches)

- void **set\_can\_add\_swatches**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **are\_swatches\_enabled**()


If `true`, it's possible to add presets under Swatches. If `false`, the button to add presets is disabled.

* * *

[Color](class_color.md#class-color) **color** = `Color(1, 1, 1, 1)` [🔗](#class-colorpicker-property-color)

- void **set\_pick\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_pick\_color**()


The currently selected color.

* * *

[ColorModeType](#enum-colorpicker-colormodetype) **color\_mode** = `0` [🔗](#class-colorpicker-property-color-mode)

- void **set\_color\_mode**(value: [ColorModeType](#enum-colorpicker-colormodetype))

- [ColorModeType](#enum-colorpicker-colormodetype) **get\_color\_mode**()


The currently selected color mode.

* * *

[bool](class_bool.md#class-bool) **color\_modes\_visible** = `true` [🔗](#class-colorpicker-property-color-modes-visible)

- void **set\_modes\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **are\_modes\_visible**()


If `true`, the color mode buttons are visible.

* * *

[bool](class_bool.md#class-bool) **deferred\_mode** = `false` [🔗](#class-colorpicker-property-deferred-mode)

- void **set\_deferred\_mode**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_deferred\_mode**()


If `true`, the color will apply only after the user releases the mouse button, otherwise it will apply immediately even in mouse motion event (which can cause performance issues).

* * *

[bool](class_bool.md#class-bool) **edit\_alpha** = `true` [🔗](#class-colorpicker-property-edit-alpha)

- void **set\_edit\_alpha**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editing\_alpha**()


If `true`, shows an alpha channel slider (opacity).

* * *

[bool](class_bool.md#class-bool) **edit\_intensity** = `true` [🔗](#class-colorpicker-property-edit-intensity)

- void **set\_edit\_intensity**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editing\_intensity**()


If `true`, shows an intensity slider. The intensity is applied as follows: multiply the color by `2 ** intensity` in linear RGB space, and then convert it back to sRGB.

* * *

[bool](class_bool.md#class-bool) **hex\_visible** = `true` [🔗](#class-colorpicker-property-hex-visible)

- void **set\_hex\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hex\_visible**()


If `true`, the hex color code input field is visible.

* * *

[PickerShapeType](#enum-colorpicker-pickershapetype) **picker\_shape** = `0` [🔗](#class-colorpicker-property-picker-shape)

- void **set\_picker\_shape**(value: [PickerShapeType](#enum-colorpicker-pickershapetype))

- [PickerShapeType](#enum-colorpicker-pickershapetype) **get\_picker\_shape**()


The shape of the color space view.

* * *

[bool](class_bool.md#class-bool) **presets\_visible** = `true` [🔗](#class-colorpicker-property-presets-visible)

- void **set\_presets\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **are\_presets\_visible**()


If `true`, the Swatches and Recent Colors presets are visible.

* * *

[bool](class_bool.md#class-bool) **sampler\_visible** = `true` [🔗](#class-colorpicker-property-sampler-visible)

- void **set\_sampler\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_sampler\_visible**()


If `true`, the color sampler and color preview are visible.

* * *

[bool](class_bool.md#class-bool) **sliders\_visible** = `true` [🔗](#class-colorpicker-property-sliders-visible)

- void **set\_sliders\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **are\_sliders\_visible**()


If `true`, the color sliders are visible.

* * *

## Method Descriptions

void **add\_preset**(color: [Color](class_color.md#class-color)) [🔗](#class-colorpicker-method-add-preset)

Adds the given color to a list of color presets. The presets are displayed in the color picker and the user will be able to select them.

**Note:** The presets list is only for _this_ color picker.

* * *

void **add\_recent\_preset**(color: [Color](class_color.md#class-color)) [🔗](#class-colorpicker-method-add-recent-preset)

Adds the given color to a list of color recent presets so that it can be picked later. Recent presets are the colors that were picked recently, a new preset is automatically created and added to recent presets when you pick a new color.

**Note:** The recent presets list is only for _this_ color picker.

* * *

void **erase\_preset**(color: [Color](class_color.md#class-color)) [🔗](#class-colorpicker-method-erase-preset)

Removes the given color from the list of color presets of this color picker.

* * *

void **erase\_recent\_preset**(color: [Color](class_color.md#class-color)) [🔗](#class-colorpicker-method-erase-recent-preset)

Removes the given color from the list of color recent presets of this color picker.

* * *

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **get\_presets**() const [🔗](#class-colorpicker-method-get-presets)

Returns the list of colors in the presets of the color picker.

* * *

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **get\_recent\_presets**() const [🔗](#class-colorpicker-method-get-recent-presets)

Returns the list of colors in the recent presets of the color picker.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **focused\_not\_editing\_cursor\_color** = `Color(1, 1, 1, 0.275)` [🔗](#class-colorpicker-theme-color-focused-not-editing-cursor-color)

Color of rectangle or circle drawn when a picker shape part is focused but not editable via keyboard or joypad. Displayed _over_ the picker shape, so a partially transparent color should be used to ensure the picker shape remains visible.

* * *

[int](class_int.md#class-int) **center\_slider\_grabbers** = `1` [🔗](#class-colorpicker-theme-constant-center-slider-grabbers)

Overrides the [Slider.center\_grabber](class_slider.md#class-slider-theme-constant-center-grabber) theme property of the sliders.

* * *

[int](class_int.md#class-int) **h\_width** = `30` [🔗](#class-colorpicker-theme-constant-h-width)

The width of the hue selection slider.

* * *

[int](class_int.md#class-int) **label\_width** = `10` [🔗](#class-colorpicker-theme-constant-label-width)

The minimum width of the color labels next to sliders.

* * *

[int](class_int.md#class-int) **margin** = `4` [🔗](#class-colorpicker-theme-constant-margin)

The margin around the **ColorPicker**.

* * *

[int](class_int.md#class-int) **sv\_height** = `256` [🔗](#class-colorpicker-theme-constant-sv-height)

The height of the saturation-value selection box.

* * *

[int](class_int.md#class-int) **sv\_width** = `256` [🔗](#class-colorpicker-theme-constant-sv-width)

The width of the saturation-value selection box.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **add\_preset** [🔗](#class-colorpicker-theme-icon-add-preset)

The icon for the "Add Preset" button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **bar\_arrow** [🔗](#class-colorpicker-theme-icon-bar-arrow)

The texture for the arrow grabber.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **color\_hue** [🔗](#class-colorpicker-theme-icon-color-hue)

Custom texture for the hue selection slider on the right.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **color\_script** [🔗](#class-colorpicker-theme-icon-color-script)

The icon for the button that switches color text to hexadecimal.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **expanded\_arrow** [🔗](#class-colorpicker-theme-icon-expanded-arrow)

The icon for color preset drop down menu when expanded.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **folded\_arrow** [🔗](#class-colorpicker-theme-icon-folded-arrow)

The icon for color preset drop down menu when folded.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **menu\_option** [🔗](#class-colorpicker-theme-icon-menu-option)

The icon for color preset option menu.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **overbright\_indicator** [🔗](#class-colorpicker-theme-icon-overbright-indicator)

The indicator used to signalize that the color value is outside the 0-1 range.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **picker\_cursor** [🔗](#class-colorpicker-theme-icon-picker-cursor)

The image displayed over the color box/circle (depending on the [picker\_shape](#class-colorpicker-property-picker-shape)), marking the currently selected color.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **picker\_cursor\_bg** [🔗](#class-colorpicker-theme-icon-picker-cursor-bg)

The fill image displayed behind the picker cursor.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **sample\_bg** [🔗](#class-colorpicker-theme-icon-sample-bg)

Background panel for the color preview box (visible when the color is translucent).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **sample\_revert** [🔗](#class-colorpicker-theme-icon-sample-revert)

The icon for the revert button (visible on the middle of the "old" color when it differs from the currently selected color). This icon is modulated with a dark color if the "old" color is bright enough, so the icon should be bright to ensure visibility in both scenarios.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **screen\_picker** [🔗](#class-colorpicker-theme-icon-screen-picker)

The icon for the screen color picker button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **shape\_circle** [🔗](#class-colorpicker-theme-icon-shape-circle)

The icon for circular picker shapes.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **shape\_rect** [🔗](#class-colorpicker-theme-icon-shape-rect)

The icon for rectangular picker shapes.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **shape\_rect\_wheel** [🔗](#class-colorpicker-theme-icon-shape-rect-wheel)

The icon for rectangular wheel picker shapes.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **picker\_focus\_circle** [🔗](#class-colorpicker-theme-style-picker-focus-circle)

The [StyleBox](class_stylebox.md#class-stylebox) used when the circle-shaped part of the picker is focused. Displayed _over_ the picker shape, so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the picker shape remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **picker\_focus\_rectangle** [🔗](#class-colorpicker-theme-style-picker-focus-rectangle)

The [StyleBox](class_stylebox.md#class-stylebox) used when the rectangle-shaped part of the picker is focused. Displayed _over_ the picker shape, so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the picker shape remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **sample\_focus** [🔗](#class-colorpicker-theme-style-sample-focus)

The [StyleBox](class_stylebox.md#class-stylebox) used for the old color sample part when it is focused. Displayed _over_ the sample, so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the picker shape remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

[Previous](class_collisionshape3d.md "CollisionShape3D") [Next](class_colorpickerbutton.md "ColorPickerButton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_collisionshape3d.md "CollisionShape3D") [Next](class_colorpickerbutton.md "ColorPickerButton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).