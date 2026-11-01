---
title: ScrollBar — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scrollbar.html
crawled_at: "2026-08-13T10:38:46+12:00"
content_hash: 160c8e65204859a367311200c78b0ed88bbe34add7d4e415f743f0e4cbf221d3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ScrollBar

* * *

# ScrollBar

**Inherits:** [Range](class_range.md#class-range) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [HScrollBar](class_hscrollbar.md#class-hscrollbar), [VScrollBar](class_vscrollbar.md#class-vscrollbar)

Abstract base class for scrollbars.

## Description

Abstract base class for scrollbars, typically used to navigate through content that extends beyond the visible area of a control. Scrollbars are [Range](class_range.md#class-range)-based controls.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [custom\_step](#class-scrollbar-property-custom-step) | `-1.0` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `3` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [float](class_float.md#class-float) | step | `0.0` (overrides [Range](class_range.md#class-range-property-step)) |

## Theme Properties

|     |     |
| --- | --- |
| [Texture2D](class_texture2d.md#class-texture2d) | [decrement](#class-scrollbar-theme-icon-decrement) |
| [Texture2D](class_texture2d.md#class-texture2d) | [decrement\_highlight](#class-scrollbar-theme-icon-decrement-highlight) |
| [Texture2D](class_texture2d.md#class-texture2d) | [decrement\_pressed](#class-scrollbar-theme-icon-decrement-pressed) |
| [Texture2D](class_texture2d.md#class-texture2d) | [increment](#class-scrollbar-theme-icon-increment) |
| [Texture2D](class_texture2d.md#class-texture2d) | [increment\_highlight](#class-scrollbar-theme-icon-increment-highlight) |
| [Texture2D](class_texture2d.md#class-texture2d) | [increment\_pressed](#class-scrollbar-theme-icon-increment-pressed) |
| [StyleBox](class_stylebox.md#class-stylebox) | [grabber](#class-scrollbar-theme-style-grabber) |
| [StyleBox](class_stylebox.md#class-stylebox) | [grabber\_highlight](#class-scrollbar-theme-style-grabber-highlight) |
| [StyleBox](class_stylebox.md#class-stylebox) | [grabber\_pressed](#class-scrollbar-theme-style-grabber-pressed) |
| [StyleBox](class_stylebox.md#class-stylebox) | [scroll](#class-scrollbar-theme-style-scroll) |
| [StyleBox](class_stylebox.md#class-stylebox) | [scroll\_focus](#class-scrollbar-theme-style-scroll-focus) |

* * *

## Signals

**scrolling**() [🔗](#class-scrollbar-signal-scrolling)

Emitted when the scrollbar is being scrolled.

* * *

## Property Descriptions

[float](class_float.md#class-float) **custom\_step** = `-1.0` [🔗](#class-scrollbar-property-custom-step)

- void **set\_custom\_step**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_custom\_step**()


Overrides the step used when clicking increment and decrement buttons or when using arrow keys when the **ScrollBar** is focused.

* * *

## Theme Property Descriptions

[Texture2D](class_texture2d.md#class-texture2d) **decrement** [🔗](#class-scrollbar-theme-icon-decrement)

Icon used as a button to scroll the **ScrollBar** left/up. Supports custom step using the [custom\_step](#class-scrollbar-property-custom-step) property.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **decrement\_highlight** [🔗](#class-scrollbar-theme-icon-decrement-highlight)

Displayed when the mouse cursor hovers over the decrement button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **decrement\_pressed** [🔗](#class-scrollbar-theme-icon-decrement-pressed)

Displayed when the decrement button is being pressed.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **increment** [🔗](#class-scrollbar-theme-icon-increment)

Icon used as a button to scroll the **ScrollBar** right/down. Supports custom step using the [custom\_step](#class-scrollbar-property-custom-step) property.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **increment\_highlight** [🔗](#class-scrollbar-theme-icon-increment-highlight)

Displayed when the mouse cursor hovers over the increment button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **increment\_pressed** [🔗](#class-scrollbar-theme-icon-increment-pressed)

Displayed when the increment button is being pressed.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **grabber** [🔗](#class-scrollbar-theme-style-grabber)

Used as texture for the grabber, the draggable element representing current scroll.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **grabber\_highlight** [🔗](#class-scrollbar-theme-style-grabber-highlight)

Used when the mouse hovers over the grabber.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **grabber\_pressed** [🔗](#class-scrollbar-theme-style-grabber-pressed)

Used when the grabber is being dragged.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **scroll** [🔗](#class-scrollbar-theme-style-scroll)

Used as background of this **ScrollBar**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **scroll\_focus** [🔗](#class-scrollbar-theme-style-scroll-focus)

Used as background when the **ScrollBar** has the GUI focus.

[Previous](class_scripteditorbase.md "ScriptEditorBase") [Next](class_scrollcontainer.md "ScrollContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scripteditorbase.md "ScriptEditorBase") [Next](class_scrollcontainer.md "ScrollContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).