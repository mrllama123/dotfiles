---
title: SpinBox — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_spinbox.html
crawled_at: "2026-08-13T10:25:53+12:00"
content_hash: 4ac2261d142213a6115ae9a31f72e191a64a800eb03b7bde71b496ef98b418b8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SpinBox

* * *

# SpinBox

**Inherits:** [Range](class_range.md#class-range) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

An input field for numbers.

## Description

**SpinBox** is a numerical input text field. It allows entering integers and floating-point numbers. The **SpinBox** also has up and down buttons that can be clicked increase or decrease the value. The value can also be changed by dragging the mouse up or down over the **SpinBox**'s arrows.

Additionally, mathematical expressions can be entered. These are evaluated when the user presses `Enter` while editing the **SpinBox**'s text field. This uses the [Expression](class_expression.md#class-expression) class to parse and evaluate the expression. The result of the expression is then set as the value of the **SpinBox**. Some examples of valid expressions are `5 + 2 * 3`, `pow(2, 4)`, and `PI + sin(0.5)`. Expressions are case-sensitive.

**Example:** Create a **SpinBox**, disable its context menu and set its text alignment to right.

GDScriptC#

```
var spin_box = SpinBox.new()
add_child(spin_box)
var line_edit = spin_box.get_line_edit()
line_edit.context_menu_enabled = false
spin_box.horizontal_alignment = LineEdit.HORIZONTAL_ALIGNMENT_RIGHT

```

```
var spinBox = new SpinBox();
AddChild(spinBox);
var lineEdit = spinBox.GetLineEdit();
lineEdit.ContextMenuEnabled = false;
spinBox.AlignHorizontal = LineEdit.HorizontalAlignEnum.Right;

```

See [Range](class_range.md#class-range) class for more options over the **SpinBox**.

**Note:** With the **SpinBox**'s context menu disabled, you can right-click the bottom half of the spinbox to set the value to its minimum, while right-clicking the top half sets the value to its maximum.

**Note:** **SpinBox** relies on an underlying [LineEdit](class_lineedit.md#class-lineedit) node. To theme a **SpinBox**'s background, add theme items for [LineEdit](class_lineedit.md#class-lineedit) and customize them. The [LineEdit](class_lineedit.md#class-lineedit) has the `SpinBoxInnerLineEdit` theme variation, so that you can give it a distinct appearance from regular [LineEdit](class_lineedit.md#class-lineedit) s.

**Note:** If you want to implement drag and drop for the underlying [LineEdit](class_lineedit.md#class-lineedit), you can use [Control.set\_drag\_forwarding()](class_control.md#class-control-method-set-drag-forwarding) on the node returned by [get\_line\_edit()](#class-spinbox-method-get-line-edit).

## Properties

|     |     |     |
| --- | --- | --- |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [alignment](#class-spinbox-property-alignment) | `0` |
| [float](class_float.md#class-float) | [custom\_arrow\_step](#class-spinbox-property-custom-arrow-step) | `0.0` |
| [bool](class_bool.md#class-bool) | [editable](#class-spinbox-property-editable) | `true` |
| [String](class_string.md#class-string) | [prefix](#class-spinbox-property-prefix) | `""` |
| [bool](class_bool.md#class-bool) | [select\_all\_on\_focus](#class-spinbox-property-select-all-on-focus) | `false` |
| BitField\[ [SizeFlags](class_control.md#enum-control-sizeflags)\] | size\_flags\_vertical | `1` (overrides [Control](class_control.md#class-control-property-size-flags-vertical)) |
| [float](class_float.md#class-float) | step | `1.0` (overrides [Range](class_range.md#class-range-property-step)) |
| [String](class_string.md#class-string) | [suffix](#class-spinbox-property-suffix) | `""` |
| [bool](class_bool.md#class-bool) | [update\_on\_text\_changed](#class-spinbox-property-update-on-text-changed) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [apply](#class-spinbox-method-apply)() |
| [LineEdit](class_lineedit.md#class-lineedit) | [get\_line\_edit](#class-spinbox-method-get-line-edit)() |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [down\_disabled\_icon\_modulate](#class-spinbox-theme-color-down-disabled-icon-modulate) | `Color(0.875, 0.875, 0.875, 0.5)` |
| [Color](class_color.md#class-color) | [down\_hover\_icon\_modulate](#class-spinbox-theme-color-down-hover-icon-modulate) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [down\_icon\_modulate](#class-spinbox-theme-color-down-icon-modulate) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [down\_pressed\_icon\_modulate](#class-spinbox-theme-color-down-pressed-icon-modulate) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [up\_disabled\_icon\_modulate](#class-spinbox-theme-color-up-disabled-icon-modulate) | `Color(0.875, 0.875, 0.875, 0.5)` |
| [Color](class_color.md#class-color) | [up\_hover\_icon\_modulate](#class-spinbox-theme-color-up-hover-icon-modulate) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [up\_icon\_modulate](#class-spinbox-theme-color-up-icon-modulate) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [up\_pressed\_icon\_modulate](#class-spinbox-theme-color-up-pressed-icon-modulate) | `Color(0.95, 0.95, 0.95, 1)` |
| [int](class_int.md#class-int) | [buttons\_vertical\_separation](#class-spinbox-theme-constant-buttons-vertical-separation) | `0` |
| [int](class_int.md#class-int) | [buttons\_width](#class-spinbox-theme-constant-buttons-width) | `16` |
| [int](class_int.md#class-int) | [field\_and\_buttons\_separation](#class-spinbox-theme-constant-field-and-buttons-separation) | `2` |
| [int](class_int.md#class-int) | [set\_min\_buttons\_width\_from\_icons](#class-spinbox-theme-constant-set-min-buttons-width-from-icons) | `1` |
| [Texture2D](class_texture2d.md#class-texture2d) | [down](#class-spinbox-theme-icon-down) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [down\_disabled](#class-spinbox-theme-icon-down-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [down\_hover](#class-spinbox-theme-icon-down-hover) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [down\_pressed](#class-spinbox-theme-icon-down-pressed) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [up](#class-spinbox-theme-icon-up) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [up\_disabled](#class-spinbox-theme-icon-up-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [up\_hover](#class-spinbox-theme-icon-up-hover) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [up\_pressed](#class-spinbox-theme-icon-up-pressed) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [updown](#class-spinbox-theme-icon-updown) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [down\_background](#class-spinbox-theme-style-down-background) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [down\_background\_disabled](#class-spinbox-theme-style-down-background-disabled) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [down\_background\_hovered](#class-spinbox-theme-style-down-background-hovered) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [down\_background\_pressed](#class-spinbox-theme-style-down-background-pressed) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [field\_and\_buttons\_separator](#class-spinbox-theme-style-field-and-buttons-separator) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [up\_background](#class-spinbox-theme-style-up-background) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [up\_background\_disabled](#class-spinbox-theme-style-up-background-disabled) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [up\_background\_hovered](#class-spinbox-theme-style-up-background-hovered) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [up\_background\_pressed](#class-spinbox-theme-style-up-background-pressed) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [up\_down\_buttons\_separator](#class-spinbox-theme-style-up-down-buttons-separator) |  |

* * *

## Property Descriptions

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **alignment** = `0` [🔗](#class-spinbox-property-alignment)

- void **set\_horizontal\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_horizontal\_alignment**()


Changes the alignment of the underlying [LineEdit](class_lineedit.md#class-lineedit).

* * *

[float](class_float.md#class-float) **custom\_arrow\_step** = `0.0` [🔗](#class-spinbox-property-custom-arrow-step)

- void **set\_custom\_arrow\_step**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_custom\_arrow\_step**()


If not `0`, sets the step when interacting with the arrow buttons of the **SpinBox**.

**Note:** [Range.value](class_range.md#class-range-property-value) will still be rounded to a multiple of [Range.step](class_range.md#class-range-property-step).

* * *

[bool](class_bool.md#class-bool) **editable** = `true` [🔗](#class-spinbox-property-editable)

- void **set\_editable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editable**()


If `true`, the **SpinBox** will be editable. Otherwise, it will be read only.

* * *

[String](class_string.md#class-string) **prefix** = `""` [🔗](#class-spinbox-property-prefix)

- void **set\_prefix**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_prefix**()


Adds the specified prefix string before the numerical value of the **SpinBox**.

* * *

[bool](class_bool.md#class-bool) **select\_all\_on\_focus** = `false` [🔗](#class-spinbox-property-select-all-on-focus)

- void **set\_select\_all\_on\_focus**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_select\_all\_on\_focus**()


If `true`, the **SpinBox** will select the whole text when the [LineEdit](class_lineedit.md#class-lineedit) gains focus. Clicking the up and down arrows won't trigger this behavior.

* * *

[String](class_string.md#class-string) **suffix** = `""` [🔗](#class-spinbox-property-suffix)

- void **set\_suffix**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_suffix**()


Adds the specified suffix string after the numerical value of the **SpinBox**.

* * *

[bool](class_bool.md#class-bool) **update\_on\_text\_changed** = `false` [🔗](#class-spinbox-property-update-on-text-changed)

- void **set\_update\_on\_text\_changed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_update\_on\_text\_changed**()


Sets the value of the [Range](class_range.md#class-range) for this **SpinBox** when the [LineEdit](class_lineedit.md#class-lineedit) text is _changed_ instead of _submitted_. See [LineEdit.text\_changed](class_lineedit.md#class-lineedit-signal-text-changed) and [LineEdit.text\_submitted](class_lineedit.md#class-lineedit-signal-text-submitted).

**Note:** If set to `true`, this will interfere with entering mathematical expressions in the **SpinBox**. The **SpinBox** will try to evaluate the expression as you type, which means symbols like a trailing `+` are removed immediately by the expression being evaluated.

* * *

## Method Descriptions

void **apply**() [🔗](#class-spinbox-method-apply)

Applies the current value of this **SpinBox**. This is equivalent to pressing `Enter` while editing the [LineEdit](class_lineedit.md#class-lineedit) used by the **SpinBox**. This will cause [LineEdit.text\_submitted](class_lineedit.md#class-lineedit-signal-text-submitted) to be emitted and its currently contained expression to be evaluated.

* * *

[LineEdit](class_lineedit.md#class-lineedit) **get\_line\_edit**() [🔗](#class-spinbox-method-get-line-edit)

Returns the [LineEdit](class_lineedit.md#class-lineedit) instance from this **SpinBox**. You can use it to access properties and methods of [LineEdit](class_lineedit.md#class-lineedit).

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **down\_disabled\_icon\_modulate** = `Color(0.875, 0.875, 0.875, 0.5)` [🔗](#class-spinbox-theme-color-down-disabled-icon-modulate)

Down button icon modulation color, when the button is disabled.

* * *

[Color](class_color.md#class-color) **down\_hover\_icon\_modulate** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-spinbox-theme-color-down-hover-icon-modulate)

Down button icon modulation color, when the button is hovered.

* * *

[Color](class_color.md#class-color) **down\_icon\_modulate** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-spinbox-theme-color-down-icon-modulate)

Down button icon modulation color.

* * *

[Color](class_color.md#class-color) **down\_pressed\_icon\_modulate** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-spinbox-theme-color-down-pressed-icon-modulate)

Down button icon modulation color, when the button is being pressed.

* * *

[Color](class_color.md#class-color) **up\_disabled\_icon\_modulate** = `Color(0.875, 0.875, 0.875, 0.5)` [🔗](#class-spinbox-theme-color-up-disabled-icon-modulate)

Up button icon modulation color, when the button is disabled.

* * *

[Color](class_color.md#class-color) **up\_hover\_icon\_modulate** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-spinbox-theme-color-up-hover-icon-modulate)

Up button icon modulation color, when the button is hovered.

* * *

[Color](class_color.md#class-color) **up\_icon\_modulate** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-spinbox-theme-color-up-icon-modulate)

Up button icon modulation color.

* * *

[Color](class_color.md#class-color) **up\_pressed\_icon\_modulate** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-spinbox-theme-color-up-pressed-icon-modulate)

Up button icon modulation color, when the button is being pressed.

* * *

[int](class_int.md#class-int) **buttons\_vertical\_separation** = `0` [🔗](#class-spinbox-theme-constant-buttons-vertical-separation)

Vertical separation between the up and down buttons.

* * *

[int](class_int.md#class-int) **buttons\_width** = `16` [🔗](#class-spinbox-theme-constant-buttons-width)

Width of the up and down buttons. If smaller than any icon set on the buttons, the respective icon may overlap neighboring elements. If smaller than `0`, the width is automatically adjusted from the icon size.

* * *

[int](class_int.md#class-int) **field\_and\_buttons\_separation** = `2` [🔗](#class-spinbox-theme-constant-field-and-buttons-separation)

Width of the horizontal separation between the text input field ( [LineEdit](class_lineedit.md#class-lineedit)) and the buttons.

* * *

[int](class_int.md#class-int) **set\_min\_buttons\_width\_from\_icons** = `1` [🔗](#class-spinbox-theme-constant-set-min-buttons-width-from-icons)

If not `0`, the minimum button width corresponds to the widest of all icons set on those buttons, even if [buttons\_width](#class-spinbox-theme-constant-buttons-width) is smaller.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **down** [🔗](#class-spinbox-theme-icon-down)

Down button icon, displayed in the middle of the down (value-decreasing) button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **down\_disabled** [🔗](#class-spinbox-theme-icon-down-disabled)

Down button icon when the button is disabled.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **down\_hover** [🔗](#class-spinbox-theme-icon-down-hover)

Down button icon when the button is hovered.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **down\_pressed** [🔗](#class-spinbox-theme-icon-down-pressed)

Down button icon when the button is being pressed.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **up** [🔗](#class-spinbox-theme-icon-up)

Up button icon, displayed in the middle of the up (value-increasing) button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **up\_disabled** [🔗](#class-spinbox-theme-icon-up-disabled)

Up button icon when the button is disabled.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **up\_hover** [🔗](#class-spinbox-theme-icon-up-hover)

Up button icon when the button is hovered.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **up\_pressed** [🔗](#class-spinbox-theme-icon-up-pressed)

Up button icon when the button is being pressed.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **updown** [🔗](#class-spinbox-theme-icon-updown)

Single texture representing both the up and down buttons icons. It is displayed in the middle of the buttons and does not change upon interaction. If a valid icon is assigned, it will replace [up](#class-spinbox-theme-icon-up) and [down](#class-spinbox-theme-icon-down).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **down\_background** [🔗](#class-spinbox-theme-style-down-background)

Background style of the down button.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **down\_background\_disabled** [🔗](#class-spinbox-theme-style-down-background-disabled)

Background style of the down button when disabled.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **down\_background\_hovered** [🔗](#class-spinbox-theme-style-down-background-hovered)

Background style of the down button when hovered.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **down\_background\_pressed** [🔗](#class-spinbox-theme-style-down-background-pressed)

Background style of the down button when being pressed.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **field\_and\_buttons\_separator** [🔗](#class-spinbox-theme-style-field-and-buttons-separator)

[StyleBox](class_stylebox.md#class-stylebox) drawn in the space occupied by the separation between the input field and the buttons.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **up\_background** [🔗](#class-spinbox-theme-style-up-background)

Background style of the up button.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **up\_background\_disabled** [🔗](#class-spinbox-theme-style-up-background-disabled)

Background style of the up button when disabled.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **up\_background\_hovered** [🔗](#class-spinbox-theme-style-up-background-hovered)

Background style of the up button when hovered.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **up\_background\_pressed** [🔗](#class-spinbox-theme-style-up-background-pressed)

Background style of the up button when being pressed.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **up\_down\_buttons\_separator** [🔗](#class-spinbox-theme-style-up-down-buttons-separator)

[StyleBox](class_stylebox.md#class-stylebox) drawn in the space occupied by the separation between the up and down buttons.

[Previous](class_softbody3d.md "SoftBody3D") [Next](class_splitcontainer.md "SplitContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_softbody3d.md "SoftBody3D") [Next](class_splitcontainer.md "SplitContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).