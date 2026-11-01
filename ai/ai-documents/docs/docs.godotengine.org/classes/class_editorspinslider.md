---
title: EditorSpinSlider — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorspinslider.html
crawled_at: "2026-08-13T10:37:32+12:00"
content_hash: 4e32f3e9526431501b0e573514aa08cbc9780015cf4696f9977591b115c6fdd1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorSpinSlider

* * *

# EditorSpinSlider

**Inherits:** [Range](class_range.md#class-range) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Godot editor's control for editing numeric values.

## Description

This [Control](class_control.md#class-control) node is used in the editor's Inspector dock to allow editing of numeric values. Can be used with [EditorInspectorPlugin](class_editorinspectorplugin.md#class-editorinspectorplugin) to recreate the same behavior.

If the [Range.step](class_range.md#class-range-property-step) value is `1`, the **EditorSpinSlider** will display up/down arrows, similar to [SpinBox](class_spinbox.md#class-spinbox). If the [Range.step](class_range.md#class-range-property-step) value is not `1`, a slider will be displayed instead.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [editing\_integer](#class-editorspinslider-property-editing-integer) | `false` |
| [bool](class_bool.md#class-bool) | [flat](#class-editorspinslider-property-flat) | `false` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `2` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [bool](class_bool.md#class-bool) | [hide\_slider](#class-editorspinslider-property-hide-slider) | `false` |
| [String](class_string.md#class-string) | [label](#class-editorspinslider-property-label) | `""` |
| [bool](class_bool.md#class-bool) | [read\_only](#class-editorspinslider-property-read-only) | `false` |
| BitField\[ [SizeFlags](class_control.md#enum-control-sizeflags)\] | size\_flags\_vertical | `1` (overrides [Control](class_control.md#class-control-property-size-flags-vertical)) |
| [float](class_float.md#class-float) | step | `1.0` (overrides [Range](class_range.md#class-range-property-step)) |
| [String](class_string.md#class-string) | [suffix](#class-editorspinslider-property-suffix) | `""` |

## Theme Properties

|     |     |
| --- | --- |
| [Texture2D](class_texture2d.md#class-texture2d) | [updown](#class-editorspinslider-theme-icon-updown) |
| [Texture2D](class_texture2d.md#class-texture2d) | [updown\_disabled](#class-editorspinslider-theme-icon-updown-disabled) |

* * *

## Signals

**grabbed**() [🔗](#class-editorspinslider-signal-grabbed)

Emitted when the spinner/slider is grabbed.

* * *

**ungrabbed**() [🔗](#class-editorspinslider-signal-ungrabbed)

Emitted when the spinner/slider is ungrabbed.

* * *

**updown\_pressed**() [🔗](#class-editorspinslider-signal-updown-pressed)

Emitted when the updown button is pressed.

* * *

**value\_focus\_entered**() [🔗](#class-editorspinslider-signal-value-focus-entered)

Emitted when the value form gains focus.

* * *

**value\_focus\_exited**() [🔗](#class-editorspinslider-signal-value-focus-exited)

Emitted when the value form loses focus.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **editing\_integer** = `false` [🔗](#class-editorspinslider-property-editing-integer)

- void **set\_editing\_integer**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editing\_integer**()


If `true`, the **EditorSpinSlider** is considered to be editing an integer value. If `false`, the **EditorSpinSlider** is considered to be editing a floating-point value. This is used to determine whether a slider should be drawn. The slider is only drawn for floats; integers use up-down arrows similar to [SpinBox](class_spinbox.md#class-spinbox) instead.

* * *

[bool](class_bool.md#class-bool) **flat** = `false` [🔗](#class-editorspinslider-property-flat)

- void **set\_flat**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flat**()


If `true`, the slider will not draw background.

* * *

[bool](class_bool.md#class-bool) **hide\_slider** = `false` [🔗](#class-editorspinslider-property-hide-slider)

- void **set\_hide\_slider**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hiding\_slider**()


If `true`, the slider and up/down arrows are hidden.

* * *

[String](class_string.md#class-string) **label** = `""` [🔗](#class-editorspinslider-property-label)

- void **set\_label**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_label**()


The text that displays to the left of the value.

* * *

[bool](class_bool.md#class-bool) **read\_only** = `false` [🔗](#class-editorspinslider-property-read-only)

- void **set\_read\_only**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_read\_only**()


If `true`, the slider can't be interacted with.

* * *

[String](class_string.md#class-string) **suffix** = `""` [🔗](#class-editorspinslider-property-suffix)

- void **set\_suffix**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_suffix**()


The suffix to display after the value (in a faded color). This should generally be a plural word. You may have to use an abbreviation if the suffix is too long to be displayed.

* * *

## Theme Property Descriptions

[Texture2D](class_texture2d.md#class-texture2d) **updown** [🔗](#class-editorspinslider-theme-icon-updown)

Single texture representing both the up and down buttons.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **updown\_disabled** [🔗](#class-editorspinslider-theme-icon-updown-disabled)

Single texture representing both the up and down buttons, when the control is readonly or disabled.

[Previous](class_editorscriptpicker.md "EditorScriptPicker") [Next](class_editortoaster.md "EditorToaster")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorscriptpicker.md "EditorScriptPicker") [Next](class_editortoaster.md "EditorToaster")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).