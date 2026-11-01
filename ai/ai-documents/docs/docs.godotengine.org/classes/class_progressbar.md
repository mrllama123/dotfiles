---
title: ProgressBar — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_progressbar.html
crawled_at: "2026-08-13T10:30:50+12:00"
content_hash: a675c8871ef60491d2c9372a811c751f047627a862361ff246ef8c933e873711
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ProgressBar

* * *

# ProgressBar

**Inherits:** [Range](class_range.md#class-range) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A control used for visual representation of a percentage.

## Description

A control used for visual representation of a percentage. Shows the fill percentage in the center. Can also be used to show indeterminate progress. For more fill modes, use [TextureProgressBar](class_textureprogressbar.md#class-textureprogressbar) instead.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [editor\_preview\_indeterminate](#class-progressbar-property-editor-preview-indeterminate) |  |
| [int](class_int.md#class-int) | [fill\_mode](#class-progressbar-property-fill-mode) | `0` |
| [bool](class_bool.md#class-bool) | [indeterminate](#class-progressbar-property-indeterminate) | `false` |
| [bool](class_bool.md#class-bool) | [show\_percentage](#class-progressbar-property-show-percentage) | `true` |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [font\_color](#class-progressbar-theme-color-font-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-progressbar-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [int](class_int.md#class-int) | [outline\_size](#class-progressbar-theme-constant-outline-size) | `0` |
| [Font](class_font.md#class-font) | [font](#class-progressbar-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-progressbar-theme-font-size-font-size) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [background](#class-progressbar-theme-style-background) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [fill](#class-progressbar-theme-style-fill) |  |

* * *

## Enumerations

enum **FillMode**: [🔗](#enum-progressbar-fillmode)

[FillMode](#enum-progressbar-fillmode) **FILL\_BEGIN\_TO\_END** = `0`

The progress bar fills from begin to end horizontally, according to the language direction. If [Control.is\_layout\_rtl()](class_control.md#class-control-method-is-layout-rtl) returns `false`, it fills from left to right, and if it returns `true`, it fills from right to left.

[FillMode](#enum-progressbar-fillmode) **FILL\_END\_TO\_BEGIN** = `1`

The progress bar fills from end to begin horizontally, according to the language direction. If [Control.is\_layout\_rtl()](class_control.md#class-control-method-is-layout-rtl) returns `false`, it fills from right to left, and if it returns `true`, it fills from left to right.

[FillMode](#enum-progressbar-fillmode) **FILL\_TOP\_TO\_BOTTOM** = `2`

The progress fills from top to bottom.

[FillMode](#enum-progressbar-fillmode) **FILL\_BOTTOM\_TO\_TOP** = `3`

The progress fills from bottom to top.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **editor\_preview\_indeterminate** [🔗](#class-progressbar-property-editor-preview-indeterminate)

- void **set\_editor\_preview\_indeterminate**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editor\_preview\_indeterminate\_enabled**()


If `false`, the [indeterminate](#class-progressbar-property-indeterminate) animation will be paused in the editor.

* * *

[int](class_int.md#class-int) **fill\_mode** = `0` [🔗](#class-progressbar-property-fill-mode)

- void **set\_fill\_mode**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fill\_mode**()


The fill direction. See [FillMode](#enum-progressbar-fillmode) for possible values.

* * *

[bool](class_bool.md#class-bool) **indeterminate** = `false` [🔗](#class-progressbar-property-indeterminate)

- void **set\_indeterminate**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_indeterminate**()


When set to `true`, the progress bar indicates that something is happening with an animation, but does not show the fill percentage or value.

* * *

[bool](class_bool.md#class-bool) **show\_percentage** = `true` [🔗](#class-progressbar-property-show-percentage)

- void **set\_show\_percentage**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_percentage\_shown**()


If `true`, the fill percentage is displayed on the bar.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **font\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-progressbar-theme-color-font-color)

The color of the text.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-progressbar-theme-color-font-outline-color)

The tint of text outline of the **ProgressBar**.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-progressbar-theme-constant-outline-size)

The size of the text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-progressbar-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-progressbar-theme-font-font)

Font used to draw the fill percentage if [show\_percentage](#class-progressbar-property-show-percentage) is `true`.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-progressbar-theme-font-size-font-size)

Font size used to draw the fill percentage if [show\_percentage](#class-progressbar-property-show-percentage) is `true`.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **background** [🔗](#class-progressbar-theme-style-background)

The style of the background.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **fill** [🔗](#class-progressbar-theme-style-fill)

The style of the progress (i.e. the part that fills the bar).

[Previous](class_popuppanel.md "PopupPanel") [Next](class_range.md "Range")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_popuppanel.md "PopupPanel") [Next](class_range.md "Range")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).