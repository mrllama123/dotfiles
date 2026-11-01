---
title: TreeItem — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_treeitem.html
crawled_at: "2026-08-13T10:39:32+12:00"
content_hash: b2b5cb45765a4cee438a9cc8db81d38de4743adfa3e228fa50545f79ad816203
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TreeItem

* * *

# TreeItem

**Inherits:** [Object](class_object.md#class-object)

An internal control for a single item inside [Tree](class_tree.md#class-tree).

## Description

A single item of a [Tree](class_tree.md#class-tree) control. It can contain other **TreeItem** s as children, which allows it to create a hierarchy. It can also contain text and buttons. **TreeItem** is not a [Node](class_node.md#class-node), it is internal to the [Tree](class_tree.md#class-tree).

To create a **TreeItem**, use [Tree.create\_item()](class_tree.md#class-tree-method-create-item) or [create\_child()](#class-treeitem-method-create-child). To remove a **TreeItem**, use [Object.free()](class_object.md#class-object-method-free).

**Note:** The ID values used for buttons are 32-bit, unlike [int](class_int.md#class-int) which is always 64-bit. They go from `-2147483648` to `2147483647`.

## Properties

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [collapsed](#class-treeitem-property-collapsed) |
| [int](class_int.md#class-int) | [custom\_minimum\_height](#class-treeitem-property-custom-minimum-height) |
| [bool](class_bool.md#class-bool) | [disable\_folding](#class-treeitem-property-disable-folding) |
| [bool](class_bool.md#class-bool) | [visible](#class-treeitem-property-visible) |

## Methods

|     |     |
| --- | --- |
| void | [add\_button](#class-treeitem-method-add-button)(column: [int](class_int.md#class-int), button: [Texture2D](class_texture2d.md#class-texture2d), id: [int](class_int.md#class-int) = -1, disabled: [bool](class_bool.md#class-bool) = false, tooltip\_text: [String](class_string.md#class-string) = "", description: [String](class_string.md#class-string) = "") |
| void | [add\_child](#class-treeitem-method-add-child)(child: [TreeItem](#class-treeitem)) |
| void | [call\_recursive](#class-treeitem-method-call-recursive)(method: [StringName](class_stringname.md#class-stringname), ...) vararg |
| void | [clear\_buttons](#class-treeitem-method-clear-buttons)() |
| void | [clear\_custom\_bg\_color](#class-treeitem-method-clear-custom-bg-color)(column: [int](class_int.md#class-int)) |
| void | [clear\_custom\_color](#class-treeitem-method-clear-custom-color)(column: [int](class_int.md#class-int)) |
| [TreeItem](#class-treeitem) | [create\_child](#class-treeitem-method-create-child)(index: [int](class_int.md#class-int) = -1) |
| void | [deselect](#class-treeitem-method-deselect)(column: [int](class_int.md#class-int)) |
| void | [erase\_button](#class-treeitem-method-erase-button)(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int)) |
| [AutoTranslateMode](class_node.md#enum-node-autotranslatemode) | [get\_auto\_translate\_mode](#class-treeitem-method-get-auto-translate-mode)(column: [int](class_int.md#class-int)) const |
| [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) | [get\_autowrap\_mode](#class-treeitem-method-get-autowrap-mode)(column: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_button](#class-treeitem-method-get-button)(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_button\_by\_id](#class-treeitem-method-get-button-by-id)(column: [int](class_int.md#class-int), id: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_button\_color](#class-treeitem-method-get-button-color)(column: [int](class_int.md#class-int), id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_button\_count](#class-treeitem-method-get-button-count)(column: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_button\_id](#class-treeitem-method-get-button-id)(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_button\_tooltip\_text](#class-treeitem-method-get-button-tooltip-text)(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int)) const |
| [TreeCellMode](#enum-treeitem-treecellmode) | [get\_cell\_mode](#class-treeitem-method-get-cell-mode)(column: [int](class_int.md#class-int)) const |
| [TreeItem](#class-treeitem) | [get\_child](#class-treeitem-method-get-child)(index: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_child\_count](#class-treeitem-method-get-child-count)() |
| [Array](class_array.md#class-array)\[ [TreeItem](#class-treeitem)\] | [get\_children](#class-treeitem-method-get-children)() |
| [Color](class_color.md#class-color) | [get\_custom\_bg\_color](#class-treeitem-method-get-custom-bg-color)(column: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_custom\_color](#class-treeitem-method-get-custom-color)(column: [int](class_int.md#class-int)) const |
| [Callable](class_callable.md#class-callable) | [get\_custom\_draw\_callback](#class-treeitem-method-get-custom-draw-callback)(column: [int](class_int.md#class-int)) const |
| [Font](class_font.md#class-font) | [get\_custom\_font](#class-treeitem-method-get-custom-font)(column: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_custom\_font\_size](#class-treeitem-method-get-custom-font-size)(column: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_description](#class-treeitem-method-get-description)(column: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_expand\_right](#class-treeitem-method-get-expand-right)(column: [int](class_int.md#class-int)) const |
| [TreeItem](#class-treeitem) | [get\_first\_child](#class-treeitem-method-get-first-child)() const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_icon](#class-treeitem-method-get-icon)(column: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_icon\_max\_width](#class-treeitem-method-get-icon-max-width)(column: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_icon\_modulate](#class-treeitem-method-get-icon-modulate)(column: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_icon\_overlay](#class-treeitem-method-get-icon-overlay)(column: [int](class_int.md#class-int)) const |
| [Rect2](class_rect2.md#class-rect2) | [get\_icon\_region](#class-treeitem-method-get-icon-region)(column: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_index](#class-treeitem-method-get-index)() |
| [String](class_string.md#class-string) | [get\_language](#class-treeitem-method-get-language)(column: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_metadata](#class-treeitem-method-get-metadata)(column: [int](class_int.md#class-int)) const |
| [TreeItem](#class-treeitem) | [get\_next](#class-treeitem-method-get-next)() const |
| [TreeItem](#class-treeitem) | [get\_next\_in\_tree](#class-treeitem-method-get-next-in-tree)(wrap: [bool](class_bool.md#class-bool) = false) |
| [TreeItem](#class-treeitem) | [get\_next\_visible](#class-treeitem-method-get-next-visible)(wrap: [bool](class_bool.md#class-bool) = false) |
| [TreeItem](#class-treeitem) | [get\_parent](#class-treeitem-method-get-parent)() const |
| [TreeItem](#class-treeitem) | [get\_prev](#class-treeitem-method-get-prev)() |
| [TreeItem](#class-treeitem) | [get\_prev\_in\_tree](#class-treeitem-method-get-prev-in-tree)(wrap: [bool](class_bool.md#class-bool) = false) |
| [TreeItem](#class-treeitem) | [get\_prev\_visible](#class-treeitem-method-get-prev-visible)(wrap: [bool](class_bool.md#class-bool) = false) |
| [float](class_float.md#class-float) | [get\_range](#class-treeitem-method-get-range)(column: [int](class_int.md#class-int)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_range\_config](#class-treeitem-method-get-range-config)(column: [int](class_int.md#class-int)) |
| [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) | [get\_structured\_text\_bidi\_override](#class-treeitem-method-get-structured-text-bidi-override)(column: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array) | [get\_structured\_text\_bidi\_override\_options](#class-treeitem-method-get-structured-text-bidi-override-options)(column: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_suffix](#class-treeitem-method-get-suffix)(column: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_text](#class-treeitem-method-get-text)(column: [int](class_int.md#class-int)) const |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [get\_text\_alignment](#class-treeitem-method-get-text-alignment)(column: [int](class_int.md#class-int)) const |
| [TextDirection](class_control.md#enum-control-textdirection) | [get\_text\_direction](#class-treeitem-method-get-text-direction)(column: [int](class_int.md#class-int)) const |
| [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) | [get\_text\_overrun\_behavior](#class-treeitem-method-get-text-overrun-behavior)(column: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_tooltip\_text](#class-treeitem-method-get-tooltip-text)(column: [int](class_int.md#class-int)) const |
| [Tree](class_tree.md#class-tree) | [get\_tree](#class-treeitem-method-get-tree)() const |
| [bool](class_bool.md#class-bool) | [is\_any\_collapsed](#class-treeitem-method-is-any-collapsed)(only\_visible: [bool](class_bool.md#class-bool) = false) |
| [bool](class_bool.md#class-bool) | [is\_button\_disabled](#class-treeitem-method-is-button-disabled)(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_checked](#class-treeitem-method-is-checked)(column: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_custom\_set\_as\_button](#class-treeitem-method-is-custom-set-as-button)(column: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_edit\_multiline](#class-treeitem-method-is-edit-multiline)(column: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_editable](#class-treeitem-method-is-editable)(column: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [is\_indeterminate](#class-treeitem-method-is-indeterminate)(column: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_selectable](#class-treeitem-method-is-selectable)(column: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_selected](#class-treeitem-method-is-selected)(column: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [is\_visible\_in\_tree](#class-treeitem-method-is-visible-in-tree)() const |
| void | [move\_after](#class-treeitem-method-move-after)(item: [TreeItem](#class-treeitem)) |
| void | [move\_before](#class-treeitem-method-move-before)(item: [TreeItem](#class-treeitem)) |
| void | [propagate\_check](#class-treeitem-method-propagate-check)(column: [int](class_int.md#class-int), emit\_signal: [bool](class_bool.md#class-bool) = true) |
| void | [remove\_child](#class-treeitem-method-remove-child)(child: [TreeItem](#class-treeitem)) |
| void | [select](#class-treeitem-method-select)(column: [int](class_int.md#class-int)) |
| void | [set\_auto\_translate\_mode](#class-treeitem-method-set-auto-translate-mode)(column: [int](class_int.md#class-int), mode: [AutoTranslateMode](class_node.md#enum-node-autotranslatemode)) |
| void | [set\_autowrap\_mode](#class-treeitem-method-set-autowrap-mode)(column: [int](class_int.md#class-int), autowrap\_mode: [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode)) |
| void | [set\_button](#class-treeitem-method-set-button)(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int), button: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_button\_color](#class-treeitem-method-set-button-color)(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_button\_description](#class-treeitem-method-set-button-description)(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int), description: [String](class_string.md#class-string)) |
| void | [set\_button\_disabled](#class-treeitem-method-set-button-disabled)(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_button\_tooltip\_text](#class-treeitem-method-set-button-tooltip-text)(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |
| void | [set\_cell\_mode](#class-treeitem-method-set-cell-mode)(column: [int](class_int.md#class-int), mode: [TreeCellMode](#enum-treeitem-treecellmode)) |
| void | [set\_checked](#class-treeitem-method-set-checked)(column: [int](class_int.md#class-int), checked: [bool](class_bool.md#class-bool)) |
| void | [set\_collapsed\_recursive](#class-treeitem-method-set-collapsed-recursive)(enable: [bool](class_bool.md#class-bool)) |
| void | [set\_custom\_as\_button](#class-treeitem-method-set-custom-as-button)(column: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_custom\_bg\_color](#class-treeitem-method-set-custom-bg-color)(column: [int](class_int.md#class-int), color: [Color](class_color.md#class-color), just\_outline: [bool](class_bool.md#class-bool) = false) |
| void | [set\_custom\_color](#class-treeitem-method-set-custom-color)(column: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_custom\_draw](#class-treeitem-method-set-custom-draw)(column: [int](class_int.md#class-int), object: [Object](class_object.md#class-object), callback: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_custom\_draw\_callback](#class-treeitem-method-set-custom-draw-callback)(column: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) |
| void | [set\_custom\_font](#class-treeitem-method-set-custom-font)(column: [int](class_int.md#class-int), font: [Font](class_font.md#class-font)) |
| void | [set\_custom\_font\_size](#class-treeitem-method-set-custom-font-size)(column: [int](class_int.md#class-int), font\_size: [int](class_int.md#class-int)) |
| void | [set\_description](#class-treeitem-method-set-description)(column: [int](class_int.md#class-int), description: [String](class_string.md#class-string)) |
| void | [set\_edit\_multiline](#class-treeitem-method-set-edit-multiline)(column: [int](class_int.md#class-int), multiline: [bool](class_bool.md#class-bool)) |
| void | [set\_editable](#class-treeitem-method-set-editable)(column: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_expand\_right](#class-treeitem-method-set-expand-right)(column: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_icon](#class-treeitem-method-set-icon)(column: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_icon\_max\_width](#class-treeitem-method-set-icon-max-width)(column: [int](class_int.md#class-int), width: [int](class_int.md#class-int)) |
| void | [set\_icon\_modulate](#class-treeitem-method-set-icon-modulate)(column: [int](class_int.md#class-int), modulate: [Color](class_color.md#class-color)) |
| void | [set\_icon\_overlay](#class-treeitem-method-set-icon-overlay)(column: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_icon\_region](#class-treeitem-method-set-icon-region)(column: [int](class_int.md#class-int), region: [Rect2](class_rect2.md#class-rect2)) |
| void | [set\_indeterminate](#class-treeitem-method-set-indeterminate)(column: [int](class_int.md#class-int), indeterminate: [bool](class_bool.md#class-bool)) |
| void | [set\_language](#class-treeitem-method-set-language)(column: [int](class_int.md#class-int), language: [String](class_string.md#class-string)) |
| void | [set\_metadata](#class-treeitem-method-set-metadata)(column: [int](class_int.md#class-int), meta: [Variant](class_variant.md#class-variant)) |
| void | [set\_range](#class-treeitem-method-set-range)(column: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) |
| void | [set\_range\_config](#class-treeitem-method-set-range-config)(column: [int](class_int.md#class-int), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float), step: [float](class_float.md#class-float), expr: [bool](class_bool.md#class-bool) = false) |
| void | [set\_selectable](#class-treeitem-method-set-selectable)(column: [int](class_int.md#class-int), selectable: [bool](class_bool.md#class-bool)) |
| void | [set\_structured\_text\_bidi\_override](#class-treeitem-method-set-structured-text-bidi-override)(column: [int](class_int.md#class-int), parser: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser)) |
| void | [set\_structured\_text\_bidi\_override\_options](#class-treeitem-method-set-structured-text-bidi-override-options)(column: [int](class_int.md#class-int), args: [Array](class_array.md#class-array)) |
| void | [set\_suffix](#class-treeitem-method-set-suffix)(column: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) |
| void | [set\_text](#class-treeitem-method-set-text)(column: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) |
| void | [set\_text\_alignment](#class-treeitem-method-set-text-alignment)(column: [int](class_int.md#class-int), text\_alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment)) |
| void | [set\_text\_direction](#class-treeitem-method-set-text-direction)(column: [int](class_int.md#class-int), direction: [TextDirection](class_control.md#enum-control-textdirection)) |
| void | [set\_text\_overrun\_behavior](#class-treeitem-method-set-text-overrun-behavior)(column: [int](class_int.md#class-int), overrun\_behavior: [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior)) |
| void | [set\_tooltip\_text](#class-treeitem-method-set-tooltip-text)(column: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |
| void | [uncollapse\_tree](#class-treeitem-method-uncollapse-tree)() |

* * *

## Enumerations

enum **TreeCellMode**: [🔗](#enum-treeitem-treecellmode)

[TreeCellMode](#enum-treeitem-treecellmode) **CELL\_MODE\_STRING** = `0`

Cell shows a string label, optionally with an icon. When editable, the text can be edited using a [LineEdit](class_lineedit.md#class-lineedit), or a [TextEdit](class_textedit.md#class-textedit) popup if [set\_edit\_multiline()](#class-treeitem-method-set-edit-multiline) is used.

[TreeCellMode](#enum-treeitem-treecellmode) **CELL\_MODE\_CHECK** = `1`

Cell shows a checkbox, optionally with text and an icon. The checkbox can be pressed, released, or indeterminate (via [set\_indeterminate()](#class-treeitem-method-set-indeterminate)). The checkbox can't be clicked unless the cell is editable.

[TreeCellMode](#enum-treeitem-treecellmode) **CELL\_MODE\_RANGE** = `2`

Cell shows a numeric range. When editable, it can be edited using a range slider. Use [set\_range()](#class-treeitem-method-set-range) to set the value and [set\_range\_config()](#class-treeitem-method-set-range-config) to configure the range.

This cell can also be used in a text dropdown mode when you assign a text with [set\_text()](#class-treeitem-method-set-text). Separate options with a comma, e.g. `"Option1,Option2,Option3"`.

[TreeCellMode](#enum-treeitem-treecellmode) **CELL\_MODE\_ICON** = `3`

Cell shows an icon. It can't be edited nor display text. The icon is always centered within the cell.

[TreeCellMode](#enum-treeitem-treecellmode) **CELL\_MODE\_CUSTOM** = `4`

Cell shows as a clickable button. It will display an arrow similar to [OptionButton](class_optionbutton.md#class-optionbutton), but doesn't feature a dropdown (for that you can use [CELL\_MODE\_RANGE](#class-treeitem-constant-cell-mode-range)). Clicking the button emits the [Tree.item\_edited](class_tree.md#class-tree-signal-item-edited) signal. The button is flat by default, you can use [set\_custom\_as\_button()](#class-treeitem-method-set-custom-as-button) to display it with a [StyleBox](class_stylebox.md#class-stylebox).

This mode also supports custom drawing using [set\_custom\_draw\_callback()](#class-treeitem-method-set-custom-draw-callback).

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collapsed** [🔗](#class-treeitem-property-collapsed)

- void **set\_collapsed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collapsed**()


If `true`, the TreeItem is collapsed.

* * *

[int](class_int.md#class-int) **custom\_minimum\_height** [🔗](#class-treeitem-property-custom-minimum-height)

- void **set\_custom\_minimum\_height**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_custom\_minimum\_height**()


The custom minimum height.

* * *

[bool](class_bool.md#class-bool) **disable\_folding** [🔗](#class-treeitem-property-disable-folding)

- void **set\_disable\_folding**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_folding\_disabled**()


If `true`, folding is disabled for this TreeItem.

* * *

[bool](class_bool.md#class-bool) **visible** [🔗](#class-treeitem-property-visible)

- void **set\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_visible**()


If `true`, the **TreeItem** is visible (default).

Note that if a **TreeItem** is set to not be visible, none of its children will be visible either.

* * *

## Method Descriptions

void **add\_button**(column: [int](class_int.md#class-int), button: [Texture2D](class_texture2d.md#class-texture2d), id: [int](class_int.md#class-int) = -1, disabled: [bool](class_bool.md#class-bool) = false, tooltip\_text: [String](class_string.md#class-string) = "", description: [String](class_string.md#class-string) = "") [🔗](#class-treeitem-method-add-button)

Adds a button with [Texture2D](class_texture2d.md#class-texture2d) `button` to the end of the cell at column `column`. The `id` is used to identify the button in the according [Tree.button\_clicked](class_tree.md#class-tree-signal-button-clicked) signal and can be different from the buttons index. If not specified, the next available index is used, which may be retrieved by calling [get\_button\_count()](#class-treeitem-method-get-button-count) immediately before this method. Optionally, the button can be `disabled` and have a `tooltip_text`. `description` is used as the button description for assistive apps.

* * *

void **add\_child**(child: [TreeItem](#class-treeitem)) [🔗](#class-treeitem-method-add-child)

Adds a previously unparented **TreeItem** as a direct child of this one. The `child` item must not be a part of any [Tree](class_tree.md#class-tree) or parented to any **TreeItem**. See also [remove\_child()](#class-treeitem-method-remove-child).

* * *

void **call\_recursive**(method: [StringName](class_stringname.md#class-stringname), ...) vararg [🔗](#class-treeitem-method-call-recursive)

Calls the `method` on the actual TreeItem and its children recursively. Pass parameters as a comma separated list.

* * *

void **clear\_buttons**() [🔗](#class-treeitem-method-clear-buttons)

Removes all buttons from all columns of this item.

* * *

void **clear\_custom\_bg\_color**(column: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-clear-custom-bg-color)

Resets the background color for the given column to default.

* * *

void **clear\_custom\_color**(column: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-clear-custom-color)

Resets the color for the given column to default.

* * *

[TreeItem](#class-treeitem) **create\_child**(index: [int](class_int.md#class-int) = -1) [🔗](#class-treeitem-method-create-child)

Creates an item and adds it as a child.

The new item will be inserted as position `index` (the default value `-1` means the last position), or it will be the last child if `index` is higher than the child count.

* * *

void **deselect**(column: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-deselect)

Deselects the given column.

* * *

void **erase\_button**(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-erase-button)

Removes the button at index `button_index` in column `column`.

* * *

[AutoTranslateMode](class_node.md#enum-node-autotranslatemode) **get\_auto\_translate\_mode**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-auto-translate-mode)

Returns the column's auto translate mode.

* * *

[AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **get\_autowrap\_mode**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-autowrap-mode)

Returns the text autowrap mode in the given `column`. By default it is [TextServer.AUTOWRAP\_OFF](class_textserver.md#class-textserver-constant-autowrap-off).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_button**(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-button)

Returns the [Texture2D](class_texture2d.md#class-texture2d) of the button at index `button_index` in column `column`.

* * *

[int](class_int.md#class-int) **get\_button\_by\_id**(column: [int](class_int.md#class-int), id: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-button-by-id)

Returns the button index if there is a button with ID `id` in column `column`, otherwise returns -1.

* * *

[Color](class_color.md#class-color) **get\_button\_color**(column: [int](class_int.md#class-int), id: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-button-color)

Returns the color of the button with ID `id` in column `column`. If the specified button does not exist, returns [Color.BLACK](class_color.md#class-color-constant-black).

* * *

[int](class_int.md#class-int) **get\_button\_count**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-button-count)

Returns the number of buttons in column `column`.

* * *

[int](class_int.md#class-int) **get\_button\_id**(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-button-id)

Returns the ID for the button at index `button_index` in column `column`.

* * *

[String](class_string.md#class-string) **get\_button\_tooltip\_text**(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-button-tooltip-text)

Returns the tooltip text for the button at index `button_index` in column `column`.

* * *

[TreeCellMode](#enum-treeitem-treecellmode) **get\_cell\_mode**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-cell-mode)

Returns the column's cell mode.

* * *

[TreeItem](#class-treeitem) **get\_child**(index: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-get-child)

Returns a child item by its `index` (see [get\_child\_count()](#class-treeitem-method-get-child-count)). This method is often used for iterating all children of an item.

Negative indices access the children from the last one.

* * *

[int](class_int.md#class-int) **get\_child\_count**() [🔗](#class-treeitem-method-get-child-count)

Returns the number of child items.

* * *

[Array](class_array.md#class-array)\[ [TreeItem](#class-treeitem)\] **get\_children**() [🔗](#class-treeitem-method-get-children)

Returns an array of references to the item's children.

* * *

[Color](class_color.md#class-color) **get\_custom\_bg\_color**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-custom-bg-color)

Returns the custom background color of column `column`.

* * *

[Color](class_color.md#class-color) **get\_custom\_color**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-custom-color)

Returns the custom color of column `column`.

* * *

[Callable](class_callable.md#class-callable) **get\_custom\_draw\_callback**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-custom-draw-callback)

Returns the custom callback of column `column`.

* * *

[Font](class_font.md#class-font) **get\_custom\_font**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-custom-font)

Returns custom font used to draw text in the column `column`.

* * *

[int](class_int.md#class-int) **get\_custom\_font\_size**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-custom-font-size)

Returns custom font size used to draw text in the column `column`.

* * *

[String](class_string.md#class-string) **get\_description**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-description)

Returns the given column's description for assistive apps.

* * *

[bool](class_bool.md#class-bool) **get\_expand\_right**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-expand-right)

Returns `true` if `expand_right` is set.

* * *

[TreeItem](#class-treeitem) **get\_first\_child**() const [🔗](#class-treeitem-method-get-first-child)

Returns the TreeItem's first child.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_icon**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-icon)

Returns the given column's icon [Texture2D](class_texture2d.md#class-texture2d). Error if no icon is set.

* * *

[int](class_int.md#class-int) **get\_icon\_max\_width**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-icon-max-width)

Returns the maximum allowed width of the icon in the given `column`.

* * *

[Color](class_color.md#class-color) **get\_icon\_modulate**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-icon-modulate)

Returns the [Color](class_color.md#class-color) modulating the column's icon.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_icon\_overlay**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-icon-overlay)

Returns the given column's icon overlay [Texture2D](class_texture2d.md#class-texture2d).

* * *

[Rect2](class_rect2.md#class-rect2) **get\_icon\_region**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-icon-region)

Returns the icon [Texture2D](class_texture2d.md#class-texture2d) region as [Rect2](class_rect2.md#class-rect2).

* * *

[int](class_int.md#class-int) **get\_index**() [🔗](#class-treeitem-method-get-index)

Returns the node's order in the tree. For example, if called on the first child item the position is `0`.

* * *

[String](class_string.md#class-string) **get\_language**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-language)

Returns item's text language code.

* * *

[Variant](class_variant.md#class-variant) **get\_metadata**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-metadata)

Returns the metadata value that was set for the given column using [set\_metadata()](#class-treeitem-method-set-metadata).

* * *

[TreeItem](#class-treeitem) **get\_next**() const [🔗](#class-treeitem-method-get-next)

Returns the next sibling TreeItem in the tree or a `null` object if there is none.

* * *

[TreeItem](#class-treeitem) **get\_next\_in\_tree**(wrap: [bool](class_bool.md#class-bool) = false) [🔗](#class-treeitem-method-get-next-in-tree)

Returns the next TreeItem in the tree (in the context of a depth-first search) or a `null` object if there is none.

If `wrap` is enabled, the method will wrap around to the first element in the tree when called on the last element, otherwise it returns `null`.

* * *

[TreeItem](#class-treeitem) **get\_next\_visible**(wrap: [bool](class_bool.md#class-bool) = false) [🔗](#class-treeitem-method-get-next-visible)

Returns the next visible TreeItem in the tree (in the context of a depth-first search) or a `null` object if there is none.

If `wrap` is enabled, the method will wrap around to the first visible element in the tree when called on the last visible element, otherwise it returns `null`.

* * *

[TreeItem](#class-treeitem) **get\_parent**() const [🔗](#class-treeitem-method-get-parent)

Returns the parent TreeItem or a `null` object if there is none.

* * *

[TreeItem](#class-treeitem) **get\_prev**() [🔗](#class-treeitem-method-get-prev)

Returns the previous sibling TreeItem in the tree or a `null` object if there is none.

* * *

[TreeItem](#class-treeitem) **get\_prev\_in\_tree**(wrap: [bool](class_bool.md#class-bool) = false) [🔗](#class-treeitem-method-get-prev-in-tree)

Returns the previous TreeItem in the tree (in the context of a depth-first search) or a `null` object if there is none.

If `wrap` is enabled, the method will wrap around to the last element in the tree when called on the first visible element, otherwise it returns `null`.

* * *

[TreeItem](#class-treeitem) **get\_prev\_visible**(wrap: [bool](class_bool.md#class-bool) = false) [🔗](#class-treeitem-method-get-prev-visible)

Returns the previous visible sibling TreeItem in the tree (in the context of a depth-first search) or a `null` object if there is none.

If `wrap` is enabled, the method will wrap around to the last visible element in the tree when called on the first visible element, otherwise it returns `null`.

* * *

[float](class_float.md#class-float) **get\_range**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-range)

Returns the value of a [CELL\_MODE\_RANGE](#class-treeitem-constant-cell-mode-range) column.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_range\_config**(column: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-get-range-config)

Returns a dictionary containing the range parameters for a given column. The keys are "min", "max", "step", and "expr".

* * *

[StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **get\_structured\_text\_bidi\_override**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-structured-text-bidi-override)

Returns the BiDi algorithm override set for this cell.

* * *

[Array](class_array.md#class-array) **get\_structured\_text\_bidi\_override\_options**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-structured-text-bidi-override-options)

Returns the additional BiDi options set for this cell.

* * *

[String](class_string.md#class-string) **get\_suffix**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-suffix)

Gets the suffix string shown after the column value.

* * *

[String](class_string.md#class-string) **get\_text**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-text)

Returns the given column's text.

* * *

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_text\_alignment**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-text-alignment)

Returns the given column's text alignment.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **get\_text\_direction**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-text-direction)

Returns item's text base writing direction.

* * *

[OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **get\_text\_overrun\_behavior**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-text-overrun-behavior)

Returns the clipping behavior when the text exceeds the item's bounding rectangle in the given `column`. By default it is [TextServer.OVERRUN\_TRIM\_ELLIPSIS](class_textserver.md#class-textserver-constant-overrun-trim-ellipsis).

* * *

[String](class_string.md#class-string) **get\_tooltip\_text**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-get-tooltip-text)

Returns the given column's tooltip text.

* * *

[Tree](class_tree.md#class-tree) **get\_tree**() const [🔗](#class-treeitem-method-get-tree)

Returns the [Tree](class_tree.md#class-tree) that owns this TreeItem.

* * *

[bool](class_bool.md#class-bool) **is\_any\_collapsed**(only\_visible: [bool](class_bool.md#class-bool) = false) [🔗](#class-treeitem-method-is-any-collapsed)

Returns `true` if this **TreeItem**, or any of its descendants, is collapsed.

If `only_visible` is `true` it ignores non-visible **TreeItem** s.

* * *

[bool](class_bool.md#class-bool) **is\_button\_disabled**(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-is-button-disabled)

Returns `true` if the button at index `button_index` for the given `column` is disabled.

* * *

[bool](class_bool.md#class-bool) **is\_checked**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-is-checked)

Returns `true` if the given `column` is checked.

* * *

[bool](class_bool.md#class-bool) **is\_custom\_set\_as\_button**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-is-custom-set-as-button)

Returns `true` if the cell was made into a button with [set\_custom\_as\_button()](#class-treeitem-method-set-custom-as-button).

* * *

[bool](class_bool.md#class-bool) **is\_edit\_multiline**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-is-edit-multiline)

Returns `true` if the given `column` is multiline editable.

* * *

[bool](class_bool.md#class-bool) **is\_editable**(column: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-is-editable)

Returns `true` if the given `column` is editable.

* * *

[bool](class_bool.md#class-bool) **is\_indeterminate**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-is-indeterminate)

Returns `true` if the given `column` is indeterminate.

* * *

[bool](class_bool.md#class-bool) **is\_selectable**(column: [int](class_int.md#class-int)) const [🔗](#class-treeitem-method-is-selectable)

Returns `true` if the given `column` is selectable.

* * *

[bool](class_bool.md#class-bool) **is\_selected**(column: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-is-selected)

Returns `true` if the given `column` is selected.

* * *

[bool](class_bool.md#class-bool) **is\_visible\_in\_tree**() const [🔗](#class-treeitem-method-is-visible-in-tree)

Returns `true` if [visible](#class-treeitem-property-visible) is `true` and all its ancestors are also visible.

* * *

void **move\_after**(item: [TreeItem](#class-treeitem)) [🔗](#class-treeitem-method-move-after)

Moves this TreeItem right after the given `item`.

**Note:** You can't move to the root or move the root.

* * *

void **move\_before**(item: [TreeItem](#class-treeitem)) [🔗](#class-treeitem-method-move-before)

Moves this TreeItem right before the given `item`.

**Note:** You can't move to the root or move the root.

* * *

void **propagate\_check**(column: [int](class_int.md#class-int), emit\_signal: [bool](class_bool.md#class-bool) = true) [🔗](#class-treeitem-method-propagate-check)

Propagates this item's checked status to its children and parents for the given `column`. It is possible to process the items affected by this method call by connecting to [Tree.check\_propagated\_to\_item](class_tree.md#class-tree-signal-check-propagated-to-item). The order that the items affected will be processed is as follows: the item invoking this method, children of that item, and finally parents of that item. If `emit_signal` is `false`, then [Tree.check\_propagated\_to\_item](class_tree.md#class-tree-signal-check-propagated-to-item) will not be emitted.

* * *

void **remove\_child**(child: [TreeItem](#class-treeitem)) [🔗](#class-treeitem-method-remove-child)

Removes the given child **TreeItem** and all its children from the [Tree](class_tree.md#class-tree). Note that it doesn't free the item from memory, so it can be reused later (see [add\_child()](#class-treeitem-method-add-child)). To completely remove a **TreeItem** use [Object.free()](class_object.md#class-object-method-free).

**Note:** If you want to move a child from one [Tree](class_tree.md#class-tree) to another, then instead of removing and adding it manually you can use [move\_before()](#class-treeitem-method-move-before) or [move\_after()](#class-treeitem-method-move-after).

* * *

void **select**(column: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-select)

Selects the given `column`.

* * *

void **set\_auto\_translate\_mode**(column: [int](class_int.md#class-int), mode: [AutoTranslateMode](class_node.md#enum-node-autotranslatemode)) [🔗](#class-treeitem-method-set-auto-translate-mode)

Sets the given column's auto translate mode to `mode`.

All columns use [Node.AUTO\_TRANSLATE\_MODE\_INHERIT](class_node.md#class-node-constant-auto-translate-mode-inherit) by default, which uses the same auto translate mode as the [Tree](class_tree.md#class-tree) itself.

* * *

void **set\_autowrap\_mode**(column: [int](class_int.md#class-int), autowrap\_mode: [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode)) [🔗](#class-treeitem-method-set-autowrap-mode)

Sets the autowrap mode in the given `column`. If set to something other than [TextServer.AUTOWRAP\_OFF](class_textserver.md#class-textserver-constant-autowrap-off), the text gets wrapped inside the cell's bounding rectangle.

* * *

void **set\_button**(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int), button: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-treeitem-method-set-button)

Sets the given column's button [Texture2D](class_texture2d.md#class-texture2d) at index `button_index` to `button`.

* * *

void **set\_button\_color**(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-treeitem-method-set-button-color)

Sets the given column's button color at index `button_index` to `color`.

* * *

void **set\_button\_description**(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int), description: [String](class_string.md#class-string)) [🔗](#class-treeitem-method-set-button-description)

Sets the given column's button description at index `button_index` for assistive apps.

* * *

void **set\_button\_disabled**(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-treeitem-method-set-button-disabled)

If `true`, disables the button at index `button_index` in the given `column`.

* * *

void **set\_button\_tooltip\_text**(column: [int](class_int.md#class-int), button\_index: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-treeitem-method-set-button-tooltip-text)

Sets the tooltip text for the button at index `button_index` in the given `column`.

* * *

void **set\_cell\_mode**(column: [int](class_int.md#class-int), mode: [TreeCellMode](#enum-treeitem-treecellmode)) [🔗](#class-treeitem-method-set-cell-mode)

Sets the given column's cell mode to `mode`. This determines how the cell is displayed and edited.

* * *

void **set\_checked**(column: [int](class_int.md#class-int), checked: [bool](class_bool.md#class-bool)) [🔗](#class-treeitem-method-set-checked)

If `checked` is `true`, the given `column` is checked. Clears column's indeterminate status.

* * *

void **set\_collapsed\_recursive**(enable: [bool](class_bool.md#class-bool)) [🔗](#class-treeitem-method-set-collapsed-recursive)

Collapses or uncollapses this **TreeItem** and all the descendants of this item.

* * *

void **set\_custom\_as\_button**(column: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-treeitem-method-set-custom-as-button)

Makes a cell with [CELL\_MODE\_CUSTOM](#class-treeitem-constant-cell-mode-custom) display as a non-flat button with a [StyleBox](class_stylebox.md#class-stylebox).

* * *

void **set\_custom\_bg\_color**(column: [int](class_int.md#class-int), color: [Color](class_color.md#class-color), just\_outline: [bool](class_bool.md#class-bool) = false) [🔗](#class-treeitem-method-set-custom-bg-color)

Sets the given column's custom background color and whether to just use it as an outline.

* * *

void **set\_custom\_color**(column: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-treeitem-method-set-custom-color)

Sets the given column's custom color.

* * *

void **set\_custom\_draw**(column: [int](class_int.md#class-int), object: [Object](class_object.md#class-object), callback: [StringName](class_stringname.md#class-stringname)) [🔗](#class-treeitem-method-set-custom-draw)

**Deprecated:** Use [set\_custom\_draw\_callback()](#class-treeitem-method-set-custom-draw-callback) instead.

Sets the given column's custom draw callback to the `callback` method on `object`.

The method named `callback` should accept two arguments: the **TreeItem** that is drawn and its position and size as a [Rect2](class_rect2.md#class-rect2).

* * *

void **set\_custom\_draw\_callback**(column: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-treeitem-method-set-custom-draw-callback)

Sets the given column's custom draw callback. Use an empty [Callable](class_callable.md#class-callable) ( `Callable()`) to clear the custom callback. The cell has to be in [CELL\_MODE\_CUSTOM](#class-treeitem-constant-cell-mode-custom) to use this feature.

The `callback` should accept two arguments: the **TreeItem** that is drawn and its position and size as a [Rect2](class_rect2.md#class-rect2).

* * *

void **set\_custom\_font**(column: [int](class_int.md#class-int), font: [Font](class_font.md#class-font)) [🔗](#class-treeitem-method-set-custom-font)

Sets custom font used to draw text in the given `column`.

* * *

void **set\_custom\_font\_size**(column: [int](class_int.md#class-int), font\_size: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-set-custom-font-size)

Sets custom font size used to draw text in the given `column`.

* * *

void **set\_description**(column: [int](class_int.md#class-int), description: [String](class_string.md#class-string)) [🔗](#class-treeitem-method-set-description)

Sets the given column's description for assistive apps.

* * *

void **set\_edit\_multiline**(column: [int](class_int.md#class-int), multiline: [bool](class_bool.md#class-bool)) [🔗](#class-treeitem-method-set-edit-multiline)

If `multiline` is `true`, the given `column` is multiline editable.

**Note:** This option only affects the type of control ( [LineEdit](class_lineedit.md#class-lineedit) or [TextEdit](class_textedit.md#class-textedit)) that appears when editing the column. You can set multiline values with [set\_text()](#class-treeitem-method-set-text) even if the column is not multiline editable.

* * *

void **set\_editable**(column: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-treeitem-method-set-editable)

If `enabled` is `true`, the given `column` is editable.

* * *

void **set\_expand\_right**(column: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-treeitem-method-set-expand-right)

If `enable` is `true`, the given `column` is expanded to the right.

* * *

void **set\_icon**(column: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-treeitem-method-set-icon)

Sets the given cell's icon [Texture2D](class_texture2d.md#class-texture2d). If the cell is in [CELL\_MODE\_ICON](#class-treeitem-constant-cell-mode-icon) mode, the icon is displayed in the center of the cell. Otherwise, the icon is displayed before the cell's text. [CELL\_MODE\_RANGE](#class-treeitem-constant-cell-mode-range) does not display an icon.

* * *

void **set\_icon\_max\_width**(column: [int](class_int.md#class-int), width: [int](class_int.md#class-int)) [🔗](#class-treeitem-method-set-icon-max-width)

Sets the maximum allowed width of the icon in the given `column`. This limit is applied on top of the default size of the icon and on top of [Tree.icon\_max\_width](class_tree.md#class-tree-theme-constant-icon-max-width). The height is adjusted according to the icon's ratio.

* * *

void **set\_icon\_modulate**(column: [int](class_int.md#class-int), modulate: [Color](class_color.md#class-color)) [🔗](#class-treeitem-method-set-icon-modulate)

Modulates the given column's icon with `modulate`.

* * *

void **set\_icon\_overlay**(column: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-treeitem-method-set-icon-overlay)

Sets the given cell's icon overlay [Texture2D](class_texture2d.md#class-texture2d). The cell has to be in [CELL\_MODE\_ICON](#class-treeitem-constant-cell-mode-icon) mode, and icon has to be set. Overlay is drawn on top of icon, in the bottom left corner.

* * *

void **set\_icon\_region**(column: [int](class_int.md#class-int), region: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-treeitem-method-set-icon-region)

Sets the given column's icon's texture region.

* * *

void **set\_indeterminate**(column: [int](class_int.md#class-int), indeterminate: [bool](class_bool.md#class-bool)) [🔗](#class-treeitem-method-set-indeterminate)

If `indeterminate` is `true`, the given `column` is marked indeterminate.

**Note:** If set `true` from `false`, then column is cleared of checked status.

* * *

void **set\_language**(column: [int](class_int.md#class-int), language: [String](class_string.md#class-string)) [🔗](#class-treeitem-method-set-language)

Sets language code of item's text used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

void **set\_metadata**(column: [int](class_int.md#class-int), meta: [Variant](class_variant.md#class-variant)) [🔗](#class-treeitem-method-set-metadata)

Sets the metadata value for the given column, which can be retrieved later using [get\_metadata()](#class-treeitem-method-get-metadata). This can be used, for example, to store a reference to the original data.

* * *

void **set\_range**(column: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) [🔗](#class-treeitem-method-set-range)

Sets the value of a [CELL\_MODE\_RANGE](#class-treeitem-constant-cell-mode-range) column.

* * *

void **set\_range\_config**(column: [int](class_int.md#class-int), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float), step: [float](class_float.md#class-float), expr: [bool](class_bool.md#class-bool) = false) [🔗](#class-treeitem-method-set-range-config)

Sets the range of accepted values for a column. The column must be in the [CELL\_MODE\_RANGE](#class-treeitem-constant-cell-mode-range) mode.

If `expr` is `true`, the edit mode slider will use an exponential scale as with [Range.exp\_edit](class_range.md#class-range-property-exp-edit).

* * *

void **set\_selectable**(column: [int](class_int.md#class-int), selectable: [bool](class_bool.md#class-bool)) [🔗](#class-treeitem-method-set-selectable)

If `selectable` is `true`, the given `column` is selectable.

* * *

void **set\_structured\_text\_bidi\_override**(column: [int](class_int.md#class-int), parser: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser)) [🔗](#class-treeitem-method-set-structured-text-bidi-override)

Set BiDi algorithm override for the structured text. Has effect for cells that display text.

* * *

void **set\_structured\_text\_bidi\_override\_options**(column: [int](class_int.md#class-int), args: [Array](class_array.md#class-array)) [🔗](#class-treeitem-method-set-structured-text-bidi-override-options)

Set additional options for BiDi override. Has effect for cells that display text.

* * *

void **set\_suffix**(column: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) [🔗](#class-treeitem-method-set-suffix)

Sets a string to be shown after a column's value (for example, a unit abbreviation).

* * *

void **set\_text**(column: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) [🔗](#class-treeitem-method-set-text)

Sets the given column's text value.

* * *

void **set\_text\_alignment**(column: [int](class_int.md#class-int), text\_alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment)) [🔗](#class-treeitem-method-set-text-alignment)

Sets the given column's text alignment to `text_alignment`.

* * *

void **set\_text\_direction**(column: [int](class_int.md#class-int), direction: [TextDirection](class_control.md#enum-control-textdirection)) [🔗](#class-treeitem-method-set-text-direction)

Sets item's text base writing direction.

* * *

void **set\_text\_overrun\_behavior**(column: [int](class_int.md#class-int), overrun\_behavior: [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior)) [🔗](#class-treeitem-method-set-text-overrun-behavior)

Sets the clipping behavior when the text exceeds the item's bounding rectangle in the given `column`.

* * *

void **set\_tooltip\_text**(column: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-treeitem-method-set-tooltip-text)

Sets the given column's tooltip text.

* * *

void **uncollapse\_tree**() [🔗](#class-treeitem-method-uncollapse-tree)

Uncollapses all **TreeItem** s necessary to reveal this **TreeItem**, i.e. all ancestor **TreeItem** s.

[Previous](class_translationserver.md "TranslationServer") [Next](class_trianglemesh.md "TriangleMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_translationserver.md "TranslationServer") [Next](class_trianglemesh.md "TriangleMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).