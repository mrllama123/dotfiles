---
title: Slider — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_slider.html
crawled_at: "2026-08-13T10:31:45+12:00"
content_hash: 782d989f733ad4ec1a7138bff922d9fccbd7e74ea7c3a54b8fbb5993b1efec45
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Slider

* * *

# Slider

**Inherits:** [Range](class_range.md#class-range) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [HSlider](class_hslider.md#class-hslider), [VSlider](class_vslider.md#class-vslider)

Abstract base class for sliders.

## Description

Abstract base class for sliders, used to adjust a value by moving a grabber along a horizontal or vertical axis. Sliders are [Range](class_range.md#class-range)-based controls.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [editable](#class-slider-property-editable) | `true` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `2` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [bool](class_bool.md#class-bool) | [scrollable](#class-slider-property-scrollable) | `true` |
| [float](class_float.md#class-float) | step | `1.0` (overrides [Range](class_range.md#class-range-property-step)) |
| [int](class_int.md#class-int) | [tick\_count](#class-slider-property-tick-count) | `0` |
| [bool](class_bool.md#class-bool) | [ticks\_on\_borders](#class-slider-property-ticks-on-borders) | `false` |
| [TickPosition](#enum-slider-tickposition) | [ticks\_position](#class-slider-property-ticks-position) | `0` |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [center\_grabber](#class-slider-theme-constant-center-grabber) | `0` |
| [int](class_int.md#class-int) | [grabber\_offset](#class-slider-theme-constant-grabber-offset) | `0` |
| [int](class_int.md#class-int) | [tick\_offset](#class-slider-theme-constant-tick-offset) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [grabber](#class-slider-theme-icon-grabber) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [grabber\_disabled](#class-slider-theme-icon-grabber-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [grabber\_highlight](#class-slider-theme-icon-grabber-highlight) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [tick](#class-slider-theme-icon-tick) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [grabber\_area](#class-slider-theme-style-grabber-area) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [grabber\_area\_highlight](#class-slider-theme-style-grabber-area-highlight) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [slider](#class-slider-theme-style-slider) |  |

* * *

## Signals

**drag\_ended**(value\_changed: [bool](class_bool.md#class-bool)) [🔗](#class-slider-signal-drag-ended)

Emitted when the grabber stops being dragged. If `value_changed` is `true`, [Range.value](class_range.md#class-range-property-value) is different from the value when the dragging was started.

* * *

**drag\_started**() [🔗](#class-slider-signal-drag-started)

Emitted when the grabber starts being dragged. This is emitted before the corresponding [Range.value\_changed](class_range.md#class-range-signal-value-changed) signal.

* * *

## Enumerations

enum **TickPosition**: [🔗](#enum-slider-tickposition)

[TickPosition](#enum-slider-tickposition) **TICK\_POSITION\_BOTTOM\_RIGHT** = `0`

Places the ticks at the bottom of the [HSlider](class_hslider.md#class-hslider), or right of the [VSlider](class_vslider.md#class-vslider).

[TickPosition](#enum-slider-tickposition) **TICK\_POSITION\_TOP\_LEFT** = `1`

Places the ticks at the top of the [HSlider](class_hslider.md#class-hslider), or left of the [VSlider](class_vslider.md#class-vslider).

[TickPosition](#enum-slider-tickposition) **TICK\_POSITION\_BOTH** = `2`

Places the ticks at the both sides of the slider.

[TickPosition](#enum-slider-tickposition) **TICK\_POSITION\_CENTER** = `3`

Places the ticks at the center of the slider.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **editable** = `true` [🔗](#class-slider-property-editable)

- void **set\_editable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editable**()


If `true`, the slider can be interacted with. If `false`, the value can be changed only by code.

* * *

[bool](class_bool.md#class-bool) **scrollable** = `true` [🔗](#class-slider-property-scrollable)

- void **set\_scrollable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_scrollable**()


If `true`, the value can be changed using the mouse wheel.

* * *

[int](class_int.md#class-int) **tick\_count** = `0` [🔗](#class-slider-property-tick-count)

- void **set\_ticks**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_ticks**()


Number of ticks displayed on the slider, including border ticks. Ticks are uniformly-distributed value markers.

* * *

[bool](class_bool.md#class-bool) **ticks\_on\_borders** = `false` [🔗](#class-slider-property-ticks-on-borders)

- void **set\_ticks\_on\_borders**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_ticks\_on\_borders**()


If `true`, the slider will display ticks for minimum and maximum values.

* * *

[TickPosition](#enum-slider-tickposition) **ticks\_position** = `0` [🔗](#class-slider-property-ticks-position)

- void **set\_ticks\_position**(value: [TickPosition](#enum-slider-tickposition))

- [TickPosition](#enum-slider-tickposition) **get\_ticks\_position**()


Sets the position of the ticks. See [TickPosition](#enum-slider-tickposition) for details.

* * *

## Theme Property Descriptions

[int](class_int.md#class-int) **center\_grabber** = `0` [🔗](#class-slider-theme-constant-center-grabber)

Boolean constant. If `1`, the grabber texture size will be ignored and it will fit within slider's bounds based only on its center position.

* * *

[int](class_int.md#class-int) **grabber\_offset** = `0` [🔗](#class-slider-theme-constant-grabber-offset)

Vertical or horizontal offset of the grabber.

* * *

[int](class_int.md#class-int) **tick\_offset** = `0` [🔗](#class-slider-theme-constant-tick-offset)

Vertical or horizontal offset of the ticks. The offset is reversed for top or left ticks.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **grabber** [🔗](#class-slider-theme-icon-grabber)

The texture for the grabber (the draggable element).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **grabber\_disabled** [🔗](#class-slider-theme-icon-grabber-disabled)

The texture for the grabber when it's disabled.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **grabber\_highlight** [🔗](#class-slider-theme-icon-grabber-highlight)

The texture for the grabber when it's focused.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **tick** [🔗](#class-slider-theme-icon-tick)

The texture for the ticks, visible when [tick\_count](#class-slider-property-tick-count) is greater than 0.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **grabber\_area** [🔗](#class-slider-theme-style-grabber-area)

The background of the area to the left or bottom of the grabber.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **grabber\_area\_highlight** [🔗](#class-slider-theme-style-grabber-area-highlight)

The background of the area to the left or bottom of the grabber that displays when it's being hovered or focused.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **slider** [🔗](#class-slider-theme-style-slider)

The background for the whole slider. Affects the height or width of the [grabber\_area](#class-slider-theme-style-grabber-area).

[Previous](class_skeletonmodifier3d.md "SkeletonModifier3D") [Next](class_sliderjoint3d.md "SliderJoint3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonmodifier3d.md "SkeletonModifier3D") [Next](class_sliderjoint3d.md "SliderJoint3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).