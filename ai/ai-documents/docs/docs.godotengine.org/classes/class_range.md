---
title: Range — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_range.html
crawled_at: "2026-08-13T10:23:29+12:00"
content_hash: 460d6931ba5fb6757dfa0cf45761bf7f8c269f93ef5ac3361372a42d5f67cccd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Range

* * *

# Range

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [EditorSpinSlider](class_editorspinslider.md#class-editorspinslider), [ProgressBar](class_progressbar.md#class-progressbar), [ScrollBar](class_scrollbar.md#class-scrollbar), [Slider](class_slider.md#class-slider), [SpinBox](class_spinbox.md#class-spinbox), [TextureProgressBar](class_textureprogressbar.md#class-textureprogressbar)

Abstract base class for controls that represent a number within a range.

## Description

Range is an abstract base class for controls that represent a number within a range, using a configured [step](#class-range-property-step) and [page](#class-range-property-page) size. See e.g. [ScrollBar](class_scrollbar.md#class-scrollbar) and [Slider](class_slider.md#class-slider) for examples of higher-level nodes using Range.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_greater](#class-range-property-allow-greater) | `false` |
| [bool](class_bool.md#class-bool) | [allow\_lesser](#class-range-property-allow-lesser) | `false` |
| [bool](class_bool.md#class-bool) | [exp\_edit](#class-range-property-exp-edit) | `false` |
| [float](class_float.md#class-float) | [max\_value](#class-range-property-max-value) | `100.0` |
| [float](class_float.md#class-float) | [min\_value](#class-range-property-min-value) | `0.0` |
| [float](class_float.md#class-float) | [page](#class-range-property-page) | `0.0` |
| [float](class_float.md#class-float) | [ratio](#class-range-property-ratio) |  |
| [bool](class_bool.md#class-bool) | [rounded](#class-range-property-rounded) | `false` |
| BitField\[ [SizeFlags](class_control.md#enum-control-sizeflags)\] | size\_flags\_vertical | `0` (overrides [Control](class_control.md#class-control-property-size-flags-vertical)) |
| [float](class_float.md#class-float) | [step](#class-range-property-step) | `0.01` |
| [float](class_float.md#class-float) | [value](#class-range-property-value) | `0.0` |

## Methods

|     |     |
| --- | --- |
| void | [\_value\_changed](#class-range-private-method-value-changed)(new\_value: [float](class_float.md#class-float)) virtual |
| void | [set\_value\_no\_signal](#class-range-method-set-value-no-signal)(value: [float](class_float.md#class-float)) |
| void | [share](#class-range-method-share)(with: [Node](class_node.md#class-node)) |
| void | [unshare](#class-range-method-unshare)() |

* * *

## Signals

**changed**() [🔗](#class-range-signal-changed)

Emitted when [min\_value](#class-range-property-min-value), [max\_value](#class-range-property-max-value), [page](#class-range-property-page), or [step](#class-range-property-step) change.

* * *

**value\_changed**(value: [float](class_float.md#class-float)) [🔗](#class-range-signal-value-changed)

Emitted when [value](#class-range-property-value) changes. When used on a [Slider](class_slider.md#class-slider), this is called continuously while dragging (potentially every frame). If you are performing an expensive operation in a function connected to [value\_changed](#class-range-signal-value-changed), consider using a _debouncing_ [Timer](class_timer.md#class-timer) to call the function less often.

**Note:** Unlike signals such as [LineEdit.text\_changed](class_lineedit.md#class-lineedit-signal-text-changed), [value\_changed](#class-range-signal-value-changed) is also emitted when `value` is set directly via code.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_greater** = `false` [🔗](#class-range-property-allow-greater)

- void **set\_allow\_greater**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_greater\_allowed**()


If `true`, [value](#class-range-property-value) may be greater than [max\_value](#class-range-property-max-value).

* * *

[bool](class_bool.md#class-bool) **allow\_lesser** = `false` [🔗](#class-range-property-allow-lesser)

- void **set\_allow\_lesser**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_lesser\_allowed**()


If `true`, [value](#class-range-property-value) may be less than [min\_value](#class-range-property-min-value).

* * *

[bool](class_bool.md#class-bool) **exp\_edit** = `false` [🔗](#class-range-property-exp-edit)

- void **set\_exp\_ratio**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ratio\_exp**()


If `true`, and [min\_value](#class-range-property-min-value) is greater or equal to `0`, [value](#class-range-property-value) will be represented exponentially rather than linearly.

* * *

[float](class_float.md#class-float) **max\_value** = `100.0` [🔗](#class-range-property-max-value)

- void **set\_max**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max**()


Maximum value. Range is clamped if [value](#class-range-property-value) is greater than [max\_value](#class-range-property-max-value).

* * *

[float](class_float.md#class-float) **min\_value** = `0.0` [🔗](#class-range-property-min-value)

- void **set\_min**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_min**()


Minimum value. Range is clamped if [value](#class-range-property-value) is less than [min\_value](#class-range-property-min-value).

* * *

[float](class_float.md#class-float) **page** = `0.0` [🔗](#class-range-property-page)

- void **set\_page**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_page**()


Page size. Used mainly for [ScrollBar](class_scrollbar.md#class-scrollbar). A [ScrollBar](class_scrollbar.md#class-scrollbar)'s grabber length is the [ScrollBar](class_scrollbar.md#class-scrollbar)'s size multiplied by [page](#class-range-property-page) over the difference between [min\_value](#class-range-property-min-value) and [max\_value](#class-range-property-max-value).

* * *

[float](class_float.md#class-float) **ratio** [🔗](#class-range-property-ratio)

- void **set\_as\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_as\_ratio**()


The value mapped between 0 and 1.

* * *

[bool](class_bool.md#class-bool) **rounded** = `false` [🔗](#class-range-property-rounded)

- void **set\_use\_rounded\_values**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_rounded\_values**()


If `true`, [value](#class-range-property-value) will always be rounded to the nearest integer.

* * *

[float](class_float.md#class-float) **step** = `0.01` [🔗](#class-range-property-step)

- void **set\_step**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_step**()


If greater than 0, [value](#class-range-property-value) will always be rounded to a multiple of this property's value above [min\_value](#class-range-property-min-value). For example, if [min\_value](#class-range-property-min-value) is `0.1` and step is 0.2, then [value](#class-range-property-value) is limited to `0.1`, `0.3`, `0.5`, and so on. If [rounded](#class-range-property-rounded) is also `true`, [value](#class-range-property-value) will first be rounded to a multiple of this property's value, then rounded to the nearest integer.

* * *

[float](class_float.md#class-float) **value** = `0.0` [🔗](#class-range-property-value)

- void **set\_value**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_value**()


Range's current value. Changing this property (even via code) will trigger [value\_changed](#class-range-signal-value-changed) signal. Use [set\_value\_no\_signal()](#class-range-method-set-value-no-signal) if you want to avoid it.

* * *

## Method Descriptions

void **\_value\_changed**(new\_value: [float](class_float.md#class-float)) virtual [🔗](#class-range-private-method-value-changed)

Called when the **Range**'s value is changed (following the same conditions as [value\_changed](#class-range-signal-value-changed)).

* * *

void **set\_value\_no\_signal**(value: [float](class_float.md#class-float)) [🔗](#class-range-method-set-value-no-signal)

Sets the **Range**'s current value to the specified `value`, without emitting the [value\_changed](#class-range-signal-value-changed) signal.

* * *

void **share**(with: [Node](class_node.md#class-node)) [🔗](#class-range-method-share)

Binds two **Range** s together along with any ranges previously grouped with either of them. When any of range's member variables change, it will share the new value with all other ranges in its group.

* * *

void **unshare**() [🔗](#class-range-method-unshare)

Stops the **Range** from sharing its member variables with any other.

[Previous](class_progressbar.md "ProgressBar") [Next](class_raycast2d.md "RayCast2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_progressbar.md "ProgressBar") [Next](class_raycast2d.md "RayCast2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).