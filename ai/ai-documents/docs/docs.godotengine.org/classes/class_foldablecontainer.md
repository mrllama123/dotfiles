---
title: FoldableContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_foldablecontainer.html
crawled_at: "2026-08-13T10:27:37+12:00"
content_hash: 17da2f8fef203257e90773e2f5c85e218fa217bf32fe1b8a1cfda9cd441049c4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FoldableContainer

* * *

# FoldableContainer

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A container that can be expanded/collapsed.

## Description

A container that can be expanded/collapsed, with a title that can be filled with controls, such as buttons.

The title can be positioned at the top or bottom of the container.

The container can be expanded or collapsed by clicking the title or by pressing `ui_accept` when focused.

Child control nodes are hidden when the container is collapsed. Ignores non-control children.

Can allow grouping with other FoldableContainers, check [foldable\_group](#class-foldablecontainer-property-foldable-group) and [FoldableGroup](class_foldablegroup.md#class-foldablegroup).

## Properties

|     |     |     |
| --- | --- | --- |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `2` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [FoldableGroup](class_foldablegroup.md#class-foldablegroup) | [foldable\_group](#class-foldablecontainer-property-foldable-group) |  |
| [bool](class_bool.md#class-bool) | [folded](#class-foldablecontainer-property-folded) | `false` |
| [String](class_string.md#class-string) | [language](#class-foldablecontainer-property-language) | `""` |
| [MouseFilter](class_control.md#enum-control-mousefilter) | mouse\_filter | `0` (overrides [Control](class_control.md#class-control-property-mouse-filter)) |
| [String](class_string.md#class-string) | [title](#class-foldablecontainer-property-title) | `""` |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [title\_alignment](#class-foldablecontainer-property-title-alignment) | `0` |
| [TitlePosition](#enum-foldablecontainer-titleposition) | [title\_position](#class-foldablecontainer-property-title-position) | `0` |
| [TextDirection](class_control.md#enum-control-textdirection) | [title\_text\_direction](#class-foldablecontainer-property-title-text-direction) | `0` |
| [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) | [title\_text\_overrun\_behavior](#class-foldablecontainer-property-title-text-overrun-behavior) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_title\_bar\_control](#class-foldablecontainer-method-add-title-bar-control)(control: [Control](class_control.md#class-control)) |
| void | [expand](#class-foldablecontainer-method-expand)() |
| void | [fold](#class-foldablecontainer-method-fold)() |
| void | [remove\_title\_bar\_control](#class-foldablecontainer-method-remove-title-bar-control)(control: [Control](class_control.md#class-control)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [collapsed\_font\_color](#class-foldablecontainer-theme-color-collapsed-font-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [font\_color](#class-foldablecontainer-theme-color-font-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-foldablecontainer-theme-color-font-outline-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [hover\_font\_color](#class-foldablecontainer-theme-color-hover-font-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [int](class_int.md#class-int) | [h\_separation](#class-foldablecontainer-theme-constant-h-separation) | `2` |
| [int](class_int.md#class-int) | [outline\_size](#class-foldablecontainer-theme-constant-outline-size) | `0` |
| [Font](class_font.md#class-font) | [font](#class-foldablecontainer-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-foldablecontainer-theme-font-size-font-size) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [expanded\_arrow](#class-foldablecontainer-theme-icon-expanded-arrow) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [expanded\_arrow\_mirrored](#class-foldablecontainer-theme-icon-expanded-arrow-mirrored) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [folded\_arrow](#class-foldablecontainer-theme-icon-folded-arrow) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [folded\_arrow\_mirrored](#class-foldablecontainer-theme-icon-folded-arrow-mirrored) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [focus](#class-foldablecontainer-theme-style-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel](#class-foldablecontainer-theme-style-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [title\_collapsed\_hover\_panel](#class-foldablecontainer-theme-style-title-collapsed-hover-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [title\_collapsed\_panel](#class-foldablecontainer-theme-style-title-collapsed-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [title\_hover\_panel](#class-foldablecontainer-theme-style-title-hover-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [title\_panel](#class-foldablecontainer-theme-style-title-panel) |  |

* * *

## Signals

**folding\_changed**(is\_folded: [bool](class_bool.md#class-bool)) [🔗](#class-foldablecontainer-signal-folding-changed)

Emitted when the container is folded/expanded.

* * *

## Enumerations

enum **TitlePosition**: [🔗](#enum-foldablecontainer-titleposition)

[TitlePosition](#enum-foldablecontainer-titleposition) **POSITION\_TOP** = `0`

Makes the title appear at the top of the container.

[TitlePosition](#enum-foldablecontainer-titleposition) **POSITION\_BOTTOM** = `1`

Makes the title appear at the bottom of the container. Also makes all StyleBoxes flipped vertically.

* * *

## Property Descriptions

[FoldableGroup](class_foldablegroup.md#class-foldablegroup) **foldable\_group** [🔗](#class-foldablecontainer-property-foldable-group)

- void **set\_foldable\_group**(value: [FoldableGroup](class_foldablegroup.md#class-foldablegroup))

- [FoldableGroup](class_foldablegroup.md#class-foldablegroup) **get\_foldable\_group**()


The [FoldableGroup](class_foldablegroup.md#class-foldablegroup) associated with the container. When multiple **FoldableContainer** nodes share the same group, only one of them is allowed to be unfolded.

* * *

[bool](class_bool.md#class-bool) **folded** = `false` [🔗](#class-foldablecontainer-property-folded)

- void **set\_folded**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_folded**()


If `true`, the container will becomes folded and will hide all its children.

* * *

[String](class_string.md#class-string) **language** = `""` [🔗](#class-foldablecontainer-property-language)

- void **set\_language**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_language**()


Language code used for text shaping algorithms. If left empty, current locale is used instead.

* * *

[String](class_string.md#class-string) **title** = `""` [🔗](#class-foldablecontainer-property-title)

- void **set\_title**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_title**()


The container's title text.

* * *

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **title\_alignment** = `0` [🔗](#class-foldablecontainer-property-title-alignment)

- void **set\_title\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_title\_alignment**()


Title's horizontal text alignment.

* * *

[TitlePosition](#enum-foldablecontainer-titleposition) **title\_position** = `0` [🔗](#class-foldablecontainer-property-title-position)

- void **set\_title\_position**(value: [TitlePosition](#enum-foldablecontainer-titleposition))

- [TitlePosition](#enum-foldablecontainer-titleposition) **get\_title\_position**()


Title's position.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **title\_text\_direction** = `0` [🔗](#class-foldablecontainer-property-title-text-direction)

- void **set\_title\_text\_direction**(value: [TextDirection](class_control.md#enum-control-textdirection))

- [TextDirection](class_control.md#enum-control-textdirection) **get\_title\_text\_direction**()


Title text writing direction.

* * *

[OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **title\_text\_overrun\_behavior** = `0` [🔗](#class-foldablecontainer-property-title-text-overrun-behavior)

- void **set\_title\_text\_overrun\_behavior**(value: [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior))

- [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **get\_title\_text\_overrun\_behavior**()


Defines the behavior of the title when the text is longer than the available space.

* * *

## Method Descriptions

void **add\_title\_bar\_control**(control: [Control](class_control.md#class-control)) [🔗](#class-foldablecontainer-method-add-title-bar-control)

Adds a [Control](class_control.md#class-control) that will be placed next to the container's title, obscuring the clickable area. Prime usage is adding [Button](class_button.md#class-button) nodes, but it can be any [Control](class_control.md#class-control).

The control will be added as a child of this container and removed from previous parent if necessary. The controls will be placed aligned to the right, with the first added control being the leftmost one.

* * *

void **expand**() [🔗](#class-foldablecontainer-method-expand)

Expands the container and emits [folding\_changed](#class-foldablecontainer-signal-folding-changed).

* * *

void **fold**() [🔗](#class-foldablecontainer-method-fold)

Folds the container and emits [folding\_changed](#class-foldablecontainer-signal-folding-changed).

* * *

void **remove\_title\_bar\_control**(control: [Control](class_control.md#class-control)) [🔗](#class-foldablecontainer-method-remove-title-bar-control)

Removes a [Control](class_control.md#class-control) added with [add\_title\_bar\_control()](#class-foldablecontainer-method-add-title-bar-control). The node is not freed automatically, you need to use [Node.queue\_free()](class_node.md#class-node-method-queue-free).

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **collapsed\_font\_color** = `Color(1, 1, 1, 1)` [🔗](#class-foldablecontainer-theme-color-collapsed-font-color)

The title's font color when collapsed.

* * *

[Color](class_color.md#class-color) **font\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-foldablecontainer-theme-color-font-color)

The title's font color when expanded.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(1, 1, 1, 1)` [🔗](#class-foldablecontainer-theme-color-font-outline-color)

The title's font outline color.

* * *

[Color](class_color.md#class-color) **hover\_font\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-foldablecontainer-theme-color-hover-font-color)

The title's font hover color.

* * *

[int](class_int.md#class-int) **h\_separation** = `2` [🔗](#class-foldablecontainer-theme-constant-h-separation)

The horizontal separation between the title's icon and text, and between title bar controls.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-foldablecontainer-theme-constant-outline-size)

The title's font outline size.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-foldablecontainer-theme-font-font)

The title's font.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-foldablecontainer-theme-font-size-font-size)

The title's font size.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **expanded\_arrow** [🔗](#class-foldablecontainer-theme-icon-expanded-arrow)

The title's icon used when expanded.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **expanded\_arrow\_mirrored** [🔗](#class-foldablecontainer-theme-icon-expanded-arrow-mirrored)

The title's icon used when expanded (for bottom title).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **folded\_arrow** [🔗](#class-foldablecontainer-theme-icon-folded-arrow)

The title's icon used when folded (for left-to-right layouts).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **folded\_arrow\_mirrored** [🔗](#class-foldablecontainer-theme-icon-folded-arrow-mirrored)

The title's icon used when collapsed (for right-to-left layouts).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **focus** [🔗](#class-foldablecontainer-theme-style-focus)

Background used when **FoldableContainer** has GUI focus. The [focus](#class-foldablecontainer-theme-style-focus) [StyleBox](class_stylebox.md#class-stylebox) is displayed _over_ the base [StyleBox](class_stylebox.md#class-stylebox), so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the base [StyleBox](class_stylebox.md#class-stylebox) remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel** [🔗](#class-foldablecontainer-theme-style-panel)

Default background for the **FoldableContainer**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **title\_collapsed\_hover\_panel** [🔗](#class-foldablecontainer-theme-style-title-collapsed-hover-panel)

Background used when the mouse cursor enters the title's area when collapsed.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **title\_collapsed\_panel** [🔗](#class-foldablecontainer-theme-style-title-collapsed-panel)

Default background for the **FoldableContainer**'s title when collapsed.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **title\_hover\_panel** [🔗](#class-foldablecontainer-theme-style-title-hover-panel)

Background used when the mouse cursor enters the title's area when expanded.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **title\_panel** [🔗](#class-foldablecontainer-theme-style-title-panel)

Default background for the **FoldableContainer**'s title when expanded.

[Previous](class_fogvolume.md "FogVolume") [Next](class_generic6dofjoint3d.md "Generic6DOFJoint3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_fogvolume.md "FogVolume") [Next](class_generic6dofjoint3d.md "Generic6DOFJoint3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).