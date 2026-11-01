---
title: SplitContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_splitcontainer.html
crawled_at: "2026-08-13T10:20:42+12:00"
content_hash: 0acb23db06a9ee46fd0ee1fce16584c844d13ba78602b5b3a1cf9d8da3c596c0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SplitContainer

* * *

# SplitContainer

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [HSplitContainer](class_hsplitcontainer.md#class-hsplitcontainer), [VSplitContainer](class_vsplitcontainer.md#class-vsplitcontainer)

A container that splits two child controls horizontally or vertically and provides a grabber for adjusting the split ratio.

## Description

A container that accepts only two child controls, then arranges them horizontally or vertically and creates a divisor between them. The divisor can be dragged around to change the size relation between the child controls.

## Tutorials

- [Using Containers](../tutorials/ui/gui_containers.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collapsed](#class-splitcontainer-property-collapsed) | `false` |
| [bool](class_bool.md#class-bool) | [drag\_area\_highlight\_in\_editor](#class-splitcontainer-property-drag-area-highlight-in-editor) | `false` |
| [int](class_int.md#class-int) | [drag\_area\_margin\_begin](#class-splitcontainer-property-drag-area-margin-begin) | `0` |
| [int](class_int.md#class-int) | [drag\_area\_margin\_end](#class-splitcontainer-property-drag-area-margin-end) | `0` |
| [int](class_int.md#class-int) | [drag\_area\_offset](#class-splitcontainer-property-drag-area-offset) | `0` |
| [DraggerVisibility](#enum-splitcontainer-draggervisibility) | [dragger\_visibility](#class-splitcontainer-property-dragger-visibility) | `0` |
| [bool](class_bool.md#class-bool) | [dragging\_enabled](#class-splitcontainer-property-dragging-enabled) | `true` |
| [int](class_int.md#class-int) | [split\_offset](#class-splitcontainer-property-split-offset) | `0` |
| [bool](class_bool.md#class-bool) | [touch\_dragger\_enabled](#class-splitcontainer-property-touch-dragger-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [vertical](#class-splitcontainer-property-vertical) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [clamp\_split\_offset](#class-splitcontainer-method-clamp-split-offset)() |
| [Control](class_control.md#class-control) | [get\_drag\_area\_control](#class-splitcontainer-method-get-drag-area-control)() |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [touch\_dragger\_color](#class-splitcontainer-theme-color-touch-dragger-color) | `Color(1, 1, 1, 0.3)` |
| [Color](class_color.md#class-color) | [touch\_dragger\_hover\_color](#class-splitcontainer-theme-color-touch-dragger-hover-color) | `Color(1, 1, 1, 0.6)` |
| [Color](class_color.md#class-color) | [touch\_dragger\_pressed\_color](#class-splitcontainer-theme-color-touch-dragger-pressed-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [autohide](#class-splitcontainer-theme-constant-autohide) | `1` |
| [int](class_int.md#class-int) | [minimum\_grab\_thickness](#class-splitcontainer-theme-constant-minimum-grab-thickness) | `6` |
| [int](class_int.md#class-int) | [separation](#class-splitcontainer-theme-constant-separation) | `12` |
| [Texture2D](class_texture2d.md#class-texture2d) | [grabber](#class-splitcontainer-theme-icon-grabber) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [h\_grabber](#class-splitcontainer-theme-icon-h-grabber) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [h\_touch\_dragger](#class-splitcontainer-theme-icon-h-touch-dragger) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [touch\_dragger](#class-splitcontainer-theme-icon-touch-dragger) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [v\_grabber](#class-splitcontainer-theme-icon-v-grabber) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [v\_touch\_dragger](#class-splitcontainer-theme-icon-v-touch-dragger) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [split\_bar\_background](#class-splitcontainer-theme-style-split-bar-background) |  |

* * *

## Signals

**drag\_ended**() [🔗](#class-splitcontainer-signal-drag-ended)

Emitted when the user ends dragging.

* * *

**drag\_started**() [🔗](#class-splitcontainer-signal-drag-started)

Emitted when the user starts dragging.

* * *

**dragged**(offset: [int](class_int.md#class-int)) [🔗](#class-splitcontainer-signal-dragged)

Emitted when the dragger is dragged by user.

* * *

## Enumerations

enum **DraggerVisibility**: [🔗](#enum-splitcontainer-draggervisibility)

[DraggerVisibility](#enum-splitcontainer-draggervisibility) **DRAGGER\_VISIBLE** = `0`

The split dragger icon is always visible when [autohide](#class-splitcontainer-theme-constant-autohide) is `false`, otherwise visible only when the cursor hovers it.

The size of the grabber icon determines the minimum [separation](#class-splitcontainer-theme-constant-separation).

The dragger icon is automatically hidden if the length of the grabber icon is longer than the split bar.

[DraggerVisibility](#enum-splitcontainer-draggervisibility) **DRAGGER\_HIDDEN** = `1`

The split dragger icon is never visible regardless of the value of [autohide](#class-splitcontainer-theme-constant-autohide).

The size of the grabber icon determines the minimum [separation](#class-splitcontainer-theme-constant-separation).

[DraggerVisibility](#enum-splitcontainer-draggervisibility) **DRAGGER\_HIDDEN\_COLLAPSED** = `2`

The split dragger icon is not visible, and the split bar is collapsed to zero thickness.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collapsed** = `false` [🔗](#class-splitcontainer-property-collapsed)

- void **set\_collapsed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collapsed**()


If `true`, the dragger will be disabled and the children will be sized as if the [split\_offset](#class-splitcontainer-property-split-offset) was `0`.

* * *

[bool](class_bool.md#class-bool) **drag\_area\_highlight\_in\_editor** = `false` [🔗](#class-splitcontainer-property-drag-area-highlight-in-editor)

- void **set\_drag\_area\_highlight\_in\_editor**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drag\_area\_highlight\_in\_editor\_enabled**()


Highlights the drag area [Rect2](class_rect2.md#class-rect2) so you can see where it is during development. The drag area is gold if [dragging\_enabled](#class-splitcontainer-property-dragging-enabled) is `true`, and red if `false`.

* * *

[int](class_int.md#class-int) **drag\_area\_margin\_begin** = `0` [🔗](#class-splitcontainer-property-drag-area-margin-begin)

- void **set\_drag\_area\_margin\_begin**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_drag\_area\_margin\_begin**()


Reduces the size of the drag area and split bar [split\_bar\_background](#class-splitcontainer-theme-style-split-bar-background) at the beginning of the container.

* * *

[int](class_int.md#class-int) **drag\_area\_margin\_end** = `0` [🔗](#class-splitcontainer-property-drag-area-margin-end)

- void **set\_drag\_area\_margin\_end**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_drag\_area\_margin\_end**()


Reduces the size of the drag area and split bar [split\_bar\_background](#class-splitcontainer-theme-style-split-bar-background) at the end of the container.

* * *

[int](class_int.md#class-int) **drag\_area\_offset** = `0` [🔗](#class-splitcontainer-property-drag-area-offset)

- void **set\_drag\_area\_offset**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_drag\_area\_offset**()


Shifts the drag area in the axis of the container to prevent the drag area from overlapping the [ScrollBar](class_scrollbar.md#class-scrollbar) or other selectable [Control](class_control.md#class-control) of a child node.

* * *

[DraggerVisibility](#enum-splitcontainer-draggervisibility) **dragger\_visibility** = `0` [🔗](#class-splitcontainer-property-dragger-visibility)

- void **set\_dragger\_visibility**(value: [DraggerVisibility](#enum-splitcontainer-draggervisibility))

- [DraggerVisibility](#enum-splitcontainer-draggervisibility) **get\_dragger\_visibility**()


Determines the dragger's visibility. This property does not determine whether dragging is enabled or not. Use [dragging\_enabled](#class-splitcontainer-property-dragging-enabled) for that.

* * *

[bool](class_bool.md#class-bool) **dragging\_enabled** = `true` [🔗](#class-splitcontainer-property-dragging-enabled)

- void **set\_dragging\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_dragging\_enabled**()


Enables or disables split dragging.

* * *

[int](class_int.md#class-int) **split\_offset** = `0` [🔗](#class-splitcontainer-property-split-offset)

- void **set\_split\_offset**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_split\_offset**()


The initial offset of the splitting between the two [Control](class_control.md#class-control) s, with `0` being at the end of the first [Control](class_control.md#class-control).

* * *

[bool](class_bool.md#class-bool) **touch\_dragger\_enabled** = `false` [🔗](#class-splitcontainer-property-touch-dragger-enabled)

- void **set\_touch\_dragger\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_touch\_dragger\_enabled**()


If `true`, a touch-friendly drag handle will be enabled for better usability on smaller screens. Unlike the standard grabber, this drag handle overlaps the **SplitContainer**'s children and does not affect their minimum separation. The standard grabber will no longer be drawn when this option is enabled.

* * *

[bool](class_bool.md#class-bool) **vertical** = `false` [🔗](#class-splitcontainer-property-vertical)

- void **set\_vertical**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_vertical**()


If `true`, the **SplitContainer** will arrange its children vertically, rather than horizontally.

Can't be changed when using [HSplitContainer](class_hsplitcontainer.md#class-hsplitcontainer) and [VSplitContainer](class_vsplitcontainer.md#class-vsplitcontainer).

* * *

## Method Descriptions

void **clamp\_split\_offset**() [🔗](#class-splitcontainer-method-clamp-split-offset)

Clamps the [split\_offset](#class-splitcontainer-property-split-offset) value to not go outside the currently possible minimal and maximum values.

* * *

[Control](class_control.md#class-control) **get\_drag\_area\_control**() [🔗](#class-splitcontainer-method-get-drag-area-control)

Returns the drag area [Control](class_control.md#class-control). For example, you can move a pre-configured button into the drag area [Control](class_control.md#class-control) so that it rides along with the split bar. Try setting the [Button](class_button.md#class-button) anchors to `center` prior to the `reparent()` call.

```
$BarnacleButton.reparent($SplitContainer.get_drag_area_control())

```

**Note:** The drag area [Control](class_control.md#class-control) is drawn over the **SplitContainer**'s children, so [CanvasItem](class_canvasitem.md#class-canvasitem) draw objects called from the [Control](class_control.md#class-control) and children added to the [Control](class_control.md#class-control) will also appear over the **SplitContainer**'s children. Try setting [Control.mouse\_filter](class_control.md#class-control-property-mouse-filter) of custom children to [Control.MOUSE\_FILTER\_IGNORE](class_control.md#class-control-constant-mouse-filter-ignore) to prevent blocking the mouse from dragging if desired.

**Warning:** This is a required internal node, removing and freeing it may cause a crash.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **touch\_dragger\_color** = `Color(1, 1, 1, 0.3)` [🔗](#class-splitcontainer-theme-color-touch-dragger-color)

The color of the touch dragger.

* * *

[Color](class_color.md#class-color) **touch\_dragger\_hover\_color** = `Color(1, 1, 1, 0.6)` [🔗](#class-splitcontainer-theme-color-touch-dragger-hover-color)

The color of the touch dragger when hovered.

* * *

[Color](class_color.md#class-color) **touch\_dragger\_pressed\_color** = `Color(1, 1, 1, 1)` [🔗](#class-splitcontainer-theme-color-touch-dragger-pressed-color)

The color of the touch dragger when pressed.

* * *

[int](class_int.md#class-int) **autohide** = `1` [🔗](#class-splitcontainer-theme-constant-autohide)

Boolean value. If `1` ( `true`), the grabber will hide automatically when it isn't under the cursor. If `0` ( `false`), it's always visible. The [dragger\_visibility](#class-splitcontainer-property-dragger-visibility) must be [DRAGGER\_VISIBLE](#class-splitcontainer-constant-dragger-visible).

* * *

[int](class_int.md#class-int) **minimum\_grab\_thickness** = `6` [🔗](#class-splitcontainer-theme-constant-minimum-grab-thickness)

The minimum thickness of the area users can click on to grab the split bar. This ensures that the split bar can still be dragged if [separation](#class-splitcontainer-theme-constant-separation) or [h\_grabber](#class-splitcontainer-theme-icon-h-grabber) / [v\_grabber](#class-splitcontainer-theme-icon-v-grabber)'s size is too narrow to easily select.

* * *

[int](class_int.md#class-int) **separation** = `12` [🔗](#class-splitcontainer-theme-constant-separation)

The split bar thickness, i.e., the gap between the two children of the container. This is overridden by the size of the grabber icon if [dragger\_visibility](#class-splitcontainer-property-dragger-visibility) is set to [DRAGGER\_VISIBLE](#class-splitcontainer-constant-dragger-visible), or [DRAGGER\_HIDDEN](#class-splitcontainer-constant-dragger-hidden), and [separation](#class-splitcontainer-theme-constant-separation) is smaller than the size of the grabber icon in the same axis.

**Note:** To obtain [separation](#class-splitcontainer-theme-constant-separation) values less than the size of the grabber icon, for example a `1 px` hairline, set [h\_grabber](#class-splitcontainer-theme-icon-h-grabber) or [v\_grabber](#class-splitcontainer-theme-icon-v-grabber) to a new [ImageTexture](class_imagetexture.md#class-imagetexture), which effectively sets the grabber icon size to `0 px`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **grabber** [🔗](#class-splitcontainer-theme-icon-grabber)

The icon used for the grabber drawn in the middle area. This is only used in [HSplitContainer](class_hsplitcontainer.md#class-hsplitcontainer) and [VSplitContainer](class_vsplitcontainer.md#class-vsplitcontainer). For **SplitContainer**, see [h\_grabber](#class-splitcontainer-theme-icon-h-grabber) and [v\_grabber](#class-splitcontainer-theme-icon-v-grabber) instead.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **h\_grabber** [🔗](#class-splitcontainer-theme-icon-h-grabber)

The icon used for the grabber drawn in the middle area when [vertical](#class-splitcontainer-property-vertical) is `false`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **h\_touch\_dragger** [🔗](#class-splitcontainer-theme-icon-h-touch-dragger)

The icon used for the drag handle when [touch\_dragger\_enabled](#class-splitcontainer-property-touch-dragger-enabled) is `true` and [vertical](#class-splitcontainer-property-vertical) is `false`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **touch\_dragger** [🔗](#class-splitcontainer-theme-icon-touch-dragger)

The icon used for the drag handle when [touch\_dragger\_enabled](#class-splitcontainer-property-touch-dragger-enabled) is `true`. This is only used in [HSplitContainer](class_hsplitcontainer.md#class-hsplitcontainer) and [VSplitContainer](class_vsplitcontainer.md#class-vsplitcontainer). For **SplitContainer**, see [h\_touch\_dragger](#class-splitcontainer-theme-icon-h-touch-dragger) and [v\_touch\_dragger](#class-splitcontainer-theme-icon-v-touch-dragger) instead.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **v\_grabber** [🔗](#class-splitcontainer-theme-icon-v-grabber)

The icon used for the grabber drawn in the middle area when [vertical](#class-splitcontainer-property-vertical) is `true`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **v\_touch\_dragger** [🔗](#class-splitcontainer-theme-icon-v-touch-dragger)

The icon used for the drag handle when [touch\_dragger\_enabled](#class-splitcontainer-property-touch-dragger-enabled) is `true` and [vertical](#class-splitcontainer-property-vertical) is `true`.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **split\_bar\_background** [🔗](#class-splitcontainer-theme-style-split-bar-background)

Determines the background of the split bar if its thickness is greater than zero.

[Previous](class_spinbox.md "SpinBox") [Next](class_spotlight3d.md "SpotLight3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_spinbox.md "SpinBox") [Next](class_spotlight3d.md "SpotLight3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).