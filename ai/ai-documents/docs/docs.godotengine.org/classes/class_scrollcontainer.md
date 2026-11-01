---
title: ScrollContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scrollcontainer.html
crawled_at: "2026-08-13T10:20:07+12:00"
content_hash: 81a2967726954e5220c3a6578a5b6457f181738a683fe8a2f4a0b719a4f7809c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ScrollContainer

* * *

# ScrollContainer

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [EditorInspector](class_editorinspector.md#class-editorinspector)

A container used to provide scrollbars to a child control when needed.

## Description

A container used to provide a child control with scrollbars when needed. Scrollbars will automatically be drawn at the right (for vertical) or bottom (for horizontal) and will enable dragging to move the viewable Control (and its children) within the ScrollContainer. Scrollbars will also automatically resize the grabber based on the [Control.custom\_minimum\_size](class_control.md#class-control-property-custom-minimum-size) of the Control relative to the ScrollContainer.

## Tutorials

- [Using Containers](../tutorials/ui/gui_containers.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | clip\_contents | `true` (overrides [Control](class_control.md#class-control-property-clip-contents)) |
| [bool](class_bool.md#class-bool) | [draw\_focus\_border](#class-scrollcontainer-property-draw-focus-border) | `false` |
| [bool](class_bool.md#class-bool) | [follow\_focus](#class-scrollcontainer-property-follow-focus) | `false` |
| [ScrollMode](#enum-scrollcontainer-scrollmode) | [horizontal\_scroll\_mode](#class-scrollcontainer-property-horizontal-scroll-mode) | `1` |
| [int](class_int.md#class-int) | [scroll\_deadzone](#class-scrollcontainer-property-scroll-deadzone) | `0` |
| [int](class_int.md#class-int) | [scroll\_horizontal](#class-scrollcontainer-property-scroll-horizontal) | `0` |
| [float](class_float.md#class-float) | [scroll\_horizontal\_custom\_step](#class-scrollcontainer-property-scroll-horizontal-custom-step) | `-1.0` |
| [int](class_int.md#class-int) | [scroll\_vertical](#class-scrollcontainer-property-scroll-vertical) | `0` |
| [float](class_float.md#class-float) | [scroll\_vertical\_custom\_step](#class-scrollcontainer-property-scroll-vertical-custom-step) | `-1.0` |
| [ScrollMode](#enum-scrollcontainer-scrollmode) | [vertical\_scroll\_mode](#class-scrollcontainer-property-vertical-scroll-mode) | `1` |

## Methods

|     |     |
| --- | --- |
| void | [ensure\_control\_visible](#class-scrollcontainer-method-ensure-control-visible)(control: [Control](class_control.md#class-control)) |
| [HScrollBar](class_hscrollbar.md#class-hscrollbar) | [get\_h\_scroll\_bar](#class-scrollcontainer-method-get-h-scroll-bar)() |
| [VScrollBar](class_vscrollbar.md#class-vscrollbar) | [get\_v\_scroll\_bar](#class-scrollcontainer-method-get-v-scroll-bar)() |

## Theme Properties

|     |     |
| --- | --- |
| [StyleBox](class_stylebox.md#class-stylebox) | [focus](#class-scrollcontainer-theme-style-focus) |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel](#class-scrollcontainer-theme-style-panel) |

* * *

## Signals

**scroll\_ended**() [🔗](#class-scrollcontainer-signal-scroll-ended)

Emitted when scrolling stops when dragging the scrollable area _with a touch event_. This signal is _not_ emitted when scrolling by dragging the scrollbar, scrolling with the mouse wheel or scrolling with keyboard/gamepad events.

**Note:** This signal is only emitted on Android or iOS, or on desktop/web platforms when [ProjectSettings.input\_devices/pointing/emulate\_touch\_from\_mouse](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-emulate-touch-from-mouse) is enabled.

* * *

**scroll\_started**() [🔗](#class-scrollcontainer-signal-scroll-started)

Emitted when scrolling starts when dragging the scrollable area w _ith a touch event_. This signal is _not_ emitted when scrolling by dragging the scrollbar, scrolling with the mouse wheel or scrolling with keyboard/gamepad events.

**Note:** This signal is only emitted on Android or iOS, or on desktop/web platforms when [ProjectSettings.input\_devices/pointing/emulate\_touch\_from\_mouse](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-emulate-touch-from-mouse) is enabled.

* * *

## Enumerations

enum **ScrollMode**: [🔗](#enum-scrollcontainer-scrollmode)

[ScrollMode](#enum-scrollcontainer-scrollmode) **SCROLL\_MODE\_DISABLED** = `0`

Scrolling disabled, scrollbar will be invisible.

[ScrollMode](#enum-scrollcontainer-scrollmode) **SCROLL\_MODE\_AUTO** = `1`

Scrolling enabled, scrollbar will be visible only if necessary, i.e. container's content is bigger than the container.

[ScrollMode](#enum-scrollcontainer-scrollmode) **SCROLL\_MODE\_SHOW\_ALWAYS** = `2`

Scrolling enabled, scrollbar will be always visible.

[ScrollMode](#enum-scrollcontainer-scrollmode) **SCROLL\_MODE\_SHOW\_NEVER** = `3`

Scrolling enabled, scrollbar will be hidden.

[ScrollMode](#enum-scrollcontainer-scrollmode) **SCROLL\_MODE\_RESERVE** = `4`

Combines [SCROLL\_MODE\_AUTO](#class-scrollcontainer-constant-scroll-mode-auto) and [SCROLL\_MODE\_SHOW\_ALWAYS](#class-scrollcontainer-constant-scroll-mode-show-always). The scrollbar is only visible if necessary, but the content size is adjusted as if it was always visible. It's useful for ensuring that content size stays the same regardless if the scrollbar is visible.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **draw\_focus\_border** = `false` [🔗](#class-scrollcontainer-property-draw-focus-border)

- void **set\_draw\_focus\_border**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_focus\_border**()


If `true`, [focus](#class-scrollcontainer-theme-style-focus) is drawn when the ScrollContainer or one of its descendant nodes is focused.

* * *

[bool](class_bool.md#class-bool) **follow\_focus** = `false` [🔗](#class-scrollcontainer-property-follow-focus)

- void **set\_follow\_focus**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_following\_focus**()


If `true`, the ScrollContainer will automatically scroll to focused children (including indirect children) to make sure they are fully visible.

* * *

[ScrollMode](#enum-scrollcontainer-scrollmode) **horizontal\_scroll\_mode** = `1` [🔗](#class-scrollcontainer-property-horizontal-scroll-mode)

- void **set\_horizontal\_scroll\_mode**(value: [ScrollMode](#enum-scrollcontainer-scrollmode))

- [ScrollMode](#enum-scrollcontainer-scrollmode) **get\_horizontal\_scroll\_mode**()


Controls whether horizontal scrollbar can be used and when it should be visible.

* * *

[int](class_int.md#class-int) **scroll\_deadzone** = `0` [🔗](#class-scrollcontainer-property-scroll-deadzone)

- void **set\_deadzone**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_deadzone**()


Deadzone for touch scrolling. Lower deadzone makes the scrolling more sensitive.

* * *

[int](class_int.md#class-int) **scroll\_horizontal** = `0` [🔗](#class-scrollcontainer-property-scroll-horizontal)

- void **set\_h\_scroll**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_h\_scroll**()


The current horizontal scroll value.

**Note:** If you are setting this value in the [Node.\_ready()](class_node.md#class-node-private-method-ready) function or earlier, it needs to be wrapped with [Object.set\_deferred()](class_object.md#class-object-method-set-deferred), since scroll bar's [Range.max\_value](class_range.md#class-range-property-max-value) is not initialized yet.

```
func _ready():
    set_deferred("scroll_horizontal", 600)

```

* * *

[float](class_float.md#class-float) **scroll\_horizontal\_custom\_step** = `-1.0` [🔗](#class-scrollcontainer-property-scroll-horizontal-custom-step)

- void **set\_horizontal\_custom\_step**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_horizontal\_custom\_step**()


Overrides the [ScrollBar.custom\_step](class_scrollbar.md#class-scrollbar-property-custom-step) used when clicking the internal scroll bar's horizontal increment and decrement buttons or when using arrow keys when the [ScrollBar](class_scrollbar.md#class-scrollbar) is focused.

* * *

[int](class_int.md#class-int) **scroll\_vertical** = `0` [🔗](#class-scrollcontainer-property-scroll-vertical)

- void **set\_v\_scroll**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_v\_scroll**()


The current vertical scroll value.

**Note:** Setting it early needs to be deferred, just like in [scroll\_horizontal](#class-scrollcontainer-property-scroll-horizontal).

```
func _ready():
    set_deferred("scroll_vertical", 600)

```

* * *

[float](class_float.md#class-float) **scroll\_vertical\_custom\_step** = `-1.0` [🔗](#class-scrollcontainer-property-scroll-vertical-custom-step)

- void **set\_vertical\_custom\_step**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_vertical\_custom\_step**()


Overrides the [ScrollBar.custom\_step](class_scrollbar.md#class-scrollbar-property-custom-step) used when clicking the internal scroll bar's vertical increment and decrement buttons or when using arrow keys when the [ScrollBar](class_scrollbar.md#class-scrollbar) is focused.

* * *

[ScrollMode](#enum-scrollcontainer-scrollmode) **vertical\_scroll\_mode** = `1` [🔗](#class-scrollcontainer-property-vertical-scroll-mode)

- void **set\_vertical\_scroll\_mode**(value: [ScrollMode](#enum-scrollcontainer-scrollmode))

- [ScrollMode](#enum-scrollcontainer-scrollmode) **get\_vertical\_scroll\_mode**()


Controls whether vertical scrollbar can be used and when it should be visible.

* * *

## Method Descriptions

void **ensure\_control\_visible**(control: [Control](class_control.md#class-control)) [🔗](#class-scrollcontainer-method-ensure-control-visible)

Ensures the given `control` is visible (must be a direct or indirect child of the ScrollContainer). Used by [follow\_focus](#class-scrollcontainer-property-follow-focus).

**Note:** This will not work on a node that was just added during the same frame. If you want to scroll to a newly added child, you must wait until the next frame using [SceneTree.process\_frame](class_scenetree.md#class-scenetree-signal-process-frame):

```
add_child(child_node)
await get_tree().process_frame
ensure_control_visible(child_node)

```

* * *

[HScrollBar](class_hscrollbar.md#class-hscrollbar) **get\_h\_scroll\_bar**() [🔗](#class-scrollcontainer-method-get-h-scroll-bar)

Returns the horizontal scrollbar [HScrollBar](class_hscrollbar.md#class-hscrollbar) of this **ScrollContainer**.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to disable or hide a scrollbar, you can use [horizontal\_scroll\_mode](#class-scrollcontainer-property-horizontal-scroll-mode).

* * *

[VScrollBar](class_vscrollbar.md#class-vscrollbar) **get\_v\_scroll\_bar**() [🔗](#class-scrollcontainer-method-get-v-scroll-bar)

Returns the vertical scrollbar [VScrollBar](class_vscrollbar.md#class-vscrollbar) of this **ScrollContainer**.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to disable or hide a scrollbar, you can use [vertical\_scroll\_mode](#class-scrollcontainer-property-vertical-scroll-mode).

* * *

## Theme Property Descriptions

[StyleBox](class_stylebox.md#class-stylebox) **focus** [🔗](#class-scrollcontainer-theme-style-focus)

The focus border [StyleBox](class_stylebox.md#class-stylebox) of the **ScrollContainer**. Only used if [draw\_focus\_border](#class-scrollcontainer-property-draw-focus-border) is `true`.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel** [🔗](#class-scrollcontainer-theme-style-panel)

The background [StyleBox](class_stylebox.md#class-stylebox) of the **ScrollContainer**.

[Previous](class_scrollbar.md "ScrollBar") [Next](class_separator.md "Separator")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scrollbar.md "ScrollBar") [Next](class_separator.md "Separator")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).