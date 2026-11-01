---
title: ItemList — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_itemlist.html
crawled_at: "2026-08-13T10:28:48+12:00"
content_hash: 20c4d60d4793016f0b6807227abe025b658d42525c924f3c1ca52d7aea986cd7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ItemList

* * *

# ItemList

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A vertical list of selectable items with one or multiple columns.

## Description

This control provides a vertical list of selectable items that may be in a single or in multiple columns, with each item having options for text and an icon. Tooltips are supported and may be different for every item in the list.

Selectable items in the list may be selected or deselected and multiple selection may be enabled. Selection with right mouse button may also be enabled to allow use of popup context menus. Items may also be "activated" by double-clicking them or by pressing `Enter`.

Item text only supports single-line strings. Newline characters (e.g. `\n`) in the string won't produce a newline. Text wrapping is enabled in [ICON\_MODE\_TOP](#class-itemlist-constant-icon-mode-top) mode, but the column's width is adjusted to fully fit its content by default. You need to set [fixed\_column\_width](#class-itemlist-property-fixed-column-width) greater than zero to wrap the text.

All `set_*` methods allow negative item indices, i.e. `-1` to access the last item, `-2` to select the second-to-last item, and so on.

**Incremental search:** Like [PopupMenu](class_popupmenu.md#class-popupmenu) and [Tree](class_tree.md#class-tree), **ItemList** supports searching within the list while the control is focused. Press a key that matches the first letter of an item's name to select the first item starting with the given letter. After that point, there are two ways to perform incremental search: 1) Press the same key again before the timeout duration to select the next item starting with the same letter. 2) Press letter keys that match the rest of the word before the timeout duration to match to select the item in question directly. Both of these actions will be reset to the beginning of the list if the timeout duration has passed since the last keystroke was registered. You can adjust the timeout duration by changing [ProjectSettings.gui/timers/incremental\_search\_max\_interval\_msec](class_projectsettings.md#class-projectsettings-property-gui-timers-incremental-search-max-interval-msec).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_reselect](#class-itemlist-property-allow-reselect) | `false` |
| [bool](class_bool.md#class-bool) | [allow\_rmb\_select](#class-itemlist-property-allow-rmb-select) | `false` |
| [bool](class_bool.md#class-bool) | [allow\_search](#class-itemlist-property-allow-search) | `true` |
| [bool](class_bool.md#class-bool) | [auto\_height](#class-itemlist-property-auto-height) | `false` |
| [bool](class_bool.md#class-bool) | [auto\_width](#class-itemlist-property-auto-width) | `false` |
| [bool](class_bool.md#class-bool) | clip\_contents | `true` (overrides [Control](class_control.md#class-control-property-clip-contents)) |
| [int](class_int.md#class-int) | [fixed\_column\_width](#class-itemlist-property-fixed-column-width) | `0` |
| [Vector2i](class_vector2i.md#class-vector2i) | [fixed\_icon\_size](#class-itemlist-property-fixed-icon-size) | `Vector2i(0, 0)` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `2` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [IconMode](#enum-itemlist-iconmode) | [icon\_mode](#class-itemlist-property-icon-mode) | `1` |
| [float](class_float.md#class-float) | [icon\_scale](#class-itemlist-property-icon-scale) | `1.0` |
| [int](class_int.md#class-int) | [item\_count](#class-itemlist-property-item-count) | `0` |
| [int](class_int.md#class-int) | [max\_columns](#class-itemlist-property-max-columns) | `1` |
| [int](class_int.md#class-int) | [max\_text\_lines](#class-itemlist-property-max-text-lines) | `1` |
| [bool](class_bool.md#class-bool) | [same\_column\_width](#class-itemlist-property-same-column-width) | `false` |
| [SelectMode](#enum-itemlist-selectmode) | [select\_mode](#class-itemlist-property-select-mode) | `0` |
| [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) | [text\_overrun\_behavior](#class-itemlist-property-text-overrun-behavior) | `3` |
| [bool](class_bool.md#class-bool) | [wraparound\_items](#class-itemlist-property-wraparound-items) | `true` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [add\_icon\_item](#class-itemlist-method-add-icon-item)(icon: [Texture2D](class_texture2d.md#class-texture2d), selectable: [bool](class_bool.md#class-bool) = true) |
| [int](class_int.md#class-int) | [add\_item](#class-itemlist-method-add-item)(text: [String](class_string.md#class-string), icon: [Texture2D](class_texture2d.md#class-texture2d) = null, selectable: [bool](class_bool.md#class-bool) = true) |
| void | [clear](#class-itemlist-method-clear)() |
| void | [deselect](#class-itemlist-method-deselect)(idx: [int](class_int.md#class-int)) |
| void | [deselect\_all](#class-itemlist-method-deselect-all)() |
| void | [ensure\_current\_is\_visible](#class-itemlist-method-ensure-current-is-visible)() |
| void | [force\_update\_list\_size](#class-itemlist-method-force-update-list-size)() |
| [HScrollBar](class_hscrollbar.md#class-hscrollbar) | [get\_h\_scroll\_bar](#class-itemlist-method-get-h-scroll-bar)() |
| [int](class_int.md#class-int) | [get\_item\_at\_position](#class-itemlist-method-get-item-at-position)(position: [Vector2](class_vector2.md#class-vector2), exact: [bool](class_bool.md#class-bool) = false) const |
| [AutoTranslateMode](class_node.md#enum-node-autotranslatemode) | [get\_item\_auto\_translate\_mode](#class-itemlist-method-get-item-auto-translate-mode)(idx: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_item\_custom\_bg\_color](#class-itemlist-method-get-item-custom-bg-color)(idx: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_item\_custom\_fg\_color](#class-itemlist-method-get-item-custom-fg-color)(idx: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_item\_icon](#class-itemlist-method-get-item-icon)(idx: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_item\_icon\_modulate](#class-itemlist-method-get-item-icon-modulate)(idx: [int](class_int.md#class-int)) const |
| [Rect2](class_rect2.md#class-rect2) | [get\_item\_icon\_region](#class-itemlist-method-get-item-icon-region)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_language](#class-itemlist-method-get-item-language)(idx: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_item\_metadata](#class-itemlist-method-get-item-metadata)(idx: [int](class_int.md#class-int)) const |
| [Rect2](class_rect2.md#class-rect2) | [get\_item\_rect](#class-itemlist-method-get-item-rect)(idx: [int](class_int.md#class-int), expand: [bool](class_bool.md#class-bool) = true) const |
| [String](class_string.md#class-string) | [get\_item\_text](#class-itemlist-method-get-item-text)(idx: [int](class_int.md#class-int)) const |
| [TextDirection](class_control.md#enum-control-textdirection) | [get\_item\_text\_direction](#class-itemlist-method-get-item-text-direction)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_tooltip](#class-itemlist-method-get-item-tooltip)(idx: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_selected\_items](#class-itemlist-method-get-selected-items)() |
| [VScrollBar](class_vscrollbar.md#class-vscrollbar) | [get\_v\_scroll\_bar](#class-itemlist-method-get-v-scroll-bar)() |
| [bool](class_bool.md#class-bool) | [is\_anything\_selected](#class-itemlist-method-is-anything-selected)() |
| [bool](class_bool.md#class-bool) | [is\_item\_disabled](#class-itemlist-method-is-item-disabled)(idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_icon\_transposed](#class-itemlist-method-is-item-icon-transposed)(idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_selectable](#class-itemlist-method-is-item-selectable)(idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_tooltip\_enabled](#class-itemlist-method-is-item-tooltip-enabled)(idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_selected](#class-itemlist-method-is-selected)(idx: [int](class_int.md#class-int)) const |
| void | [move\_item](#class-itemlist-method-move-item)(from\_idx: [int](class_int.md#class-int), to\_idx: [int](class_int.md#class-int)) |
| void | [remove\_item](#class-itemlist-method-remove-item)(idx: [int](class_int.md#class-int)) |
| void | [select](#class-itemlist-method-select)(idx: [int](class_int.md#class-int), single: [bool](class_bool.md#class-bool) = true) |
| void | [set\_item\_auto\_translate\_mode](#class-itemlist-method-set-item-auto-translate-mode)(idx: [int](class_int.md#class-int), mode: [AutoTranslateMode](class_node.md#enum-node-autotranslatemode)) |
| void | [set\_item\_custom\_bg\_color](#class-itemlist-method-set-item-custom-bg-color)(idx: [int](class_int.md#class-int), custom\_bg\_color: [Color](class_color.md#class-color)) |
| void | [set\_item\_custom\_fg\_color](#class-itemlist-method-set-item-custom-fg-color)(idx: [int](class_int.md#class-int), custom\_fg\_color: [Color](class_color.md#class-color)) |
| void | [set\_item\_disabled](#class-itemlist-method-set-item-disabled)(idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_icon](#class-itemlist-method-set-item-icon)(idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_item\_icon\_modulate](#class-itemlist-method-set-item-icon-modulate)(idx: [int](class_int.md#class-int), modulate: [Color](class_color.md#class-color)) |
| void | [set\_item\_icon\_region](#class-itemlist-method-set-item-icon-region)(idx: [int](class_int.md#class-int), rect: [Rect2](class_rect2.md#class-rect2)) |
| void | [set\_item\_icon\_transposed](#class-itemlist-method-set-item-icon-transposed)(idx: [int](class_int.md#class-int), transposed: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_language](#class-itemlist-method-set-item-language)(idx: [int](class_int.md#class-int), language: [String](class_string.md#class-string)) |
| void | [set\_item\_metadata](#class-itemlist-method-set-item-metadata)(idx: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) |
| void | [set\_item\_selectable](#class-itemlist-method-set-item-selectable)(idx: [int](class_int.md#class-int), selectable: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_text](#class-itemlist-method-set-item-text)(idx: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) |
| void | [set\_item\_text\_direction](#class-itemlist-method-set-item-text-direction)(idx: [int](class_int.md#class-int), direction: [TextDirection](class_control.md#enum-control-textdirection)) |
| void | [set\_item\_tooltip](#class-itemlist-method-set-item-tooltip)(idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |
| void | [set\_item\_tooltip\_enabled](#class-itemlist-method-set-item-tooltip-enabled)(idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [sort\_items\_by\_text](#class-itemlist-method-sort-items-by-text)() |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [font\_color](#class-itemlist-theme-color-font-color) | `Color(0.65, 0.65, 0.65, 1)` |
| [Color](class_color.md#class-color) | [font\_hovered\_color](#class-itemlist-theme-color-font-hovered-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_hovered\_selected\_color](#class-itemlist-theme-color-font-hovered-selected-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-itemlist-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_selected\_color](#class-itemlist-theme-color-font-selected-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [guide\_color](#class-itemlist-theme-color-guide-color) | `Color(0.7, 0.7, 0.7, 0.25)` |
| [int](class_int.md#class-int) | [h\_separation](#class-itemlist-theme-constant-h-separation) | `4` |
| [int](class_int.md#class-int) | [icon\_margin](#class-itemlist-theme-constant-icon-margin) | `4` |
| [int](class_int.md#class-int) | [line\_separation](#class-itemlist-theme-constant-line-separation) | `2` |
| [int](class_int.md#class-int) | [outline\_size](#class-itemlist-theme-constant-outline-size) | `0` |
| [int](class_int.md#class-int) | [v\_separation](#class-itemlist-theme-constant-v-separation) | `4` |
| [Font](class_font.md#class-font) | [font](#class-itemlist-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-itemlist-theme-font-size-font-size) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [cursor](#class-itemlist-theme-style-cursor) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [cursor\_unfocused](#class-itemlist-theme-style-cursor-unfocused) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [focus](#class-itemlist-theme-style-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hovered](#class-itemlist-theme-style-hovered) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hovered\_selected](#class-itemlist-theme-style-hovered-selected) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hovered\_selected\_focus](#class-itemlist-theme-style-hovered-selected-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel](#class-itemlist-theme-style-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [selected](#class-itemlist-theme-style-selected) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [selected\_focus](#class-itemlist-theme-style-selected-focus) |  |

* * *

## Signals

**empty\_clicked**(at\_position: [Vector2](class_vector2.md#class-vector2), mouse\_button\_index: [int](class_int.md#class-int)) [🔗](#class-itemlist-signal-empty-clicked)

Emitted when any mouse click is issued within the rect of the list but on empty space.

`at_position` is the click position in this control's local coordinate system.

* * *

**item\_activated**(index: [int](class_int.md#class-int)) [🔗](#class-itemlist-signal-item-activated)

Emitted when specified list item is activated via double-clicking or by pressing `Enter`.

* * *

**item\_clicked**(index: [int](class_int.md#class-int), at\_position: [Vector2](class_vector2.md#class-vector2), mouse\_button\_index: [int](class_int.md#class-int)) [🔗](#class-itemlist-signal-item-clicked)

Emitted when specified list item has been clicked with any mouse button.

`at_position` is the click position in this control's local coordinate system.

* * *

**item\_selected**(index: [int](class_int.md#class-int)) [🔗](#class-itemlist-signal-item-selected)

Emitted when specified item has been selected. Only applicable in single selection mode.

[allow\_reselect](#class-itemlist-property-allow-reselect) must be enabled to reselect an item.

* * *

**multi\_selected**(index: [int](class_int.md#class-int), selected: [bool](class_bool.md#class-bool)) [🔗](#class-itemlist-signal-multi-selected)

Emitted when a multiple selection is altered on a list allowing multiple selection.

* * *

## Enumerations

enum **IconMode**: [🔗](#enum-itemlist-iconmode)

[IconMode](#enum-itemlist-iconmode) **ICON\_MODE\_TOP** = `0`

Icon is drawn above the text.

[IconMode](#enum-itemlist-iconmode) **ICON\_MODE\_LEFT** = `1`

Icon is drawn to the left of the text.

* * *

enum **SelectMode**: [🔗](#enum-itemlist-selectmode)

[SelectMode](#enum-itemlist-selectmode) **SELECT\_SINGLE** = `0`

Only allow selecting a single item.

[SelectMode](#enum-itemlist-selectmode) **SELECT\_MULTI** = `1`

Allows selecting multiple items by holding `Ctrl` or `Shift`.

[SelectMode](#enum-itemlist-selectmode) **SELECT\_TOGGLE** = `2`

Allows selecting multiple items by toggling them on and off.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_reselect** = `false` [🔗](#class-itemlist-property-allow-reselect)

- void **set\_allow\_reselect**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_allow\_reselect**()


If `true`, the currently selected item can be selected again.

* * *

[bool](class_bool.md#class-bool) **allow\_rmb\_select** = `false` [🔗](#class-itemlist-property-allow-rmb-select)

- void **set\_allow\_rmb\_select**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_allow\_rmb\_select**()


If `true`, right mouse button click can select items.

* * *

[bool](class_bool.md#class-bool) **allow\_search** = `true` [🔗](#class-itemlist-property-allow-search)

- void **set\_allow\_search**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_allow\_search**()


If `true`, allows navigating the **ItemList** with letter keys through incremental search.

* * *

[bool](class_bool.md#class-bool) **auto\_height** = `false` [🔗](#class-itemlist-property-auto-height)

- void **set\_auto\_height**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_auto\_height**()


If `true`, the control will automatically resize the height to fit its content.

* * *

[bool](class_bool.md#class-bool) **auto\_width** = `false` [🔗](#class-itemlist-property-auto-width)

- void **set\_auto\_width**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_auto\_width**()


If `true`, the control will automatically resize the width to fit its content.

* * *

[int](class_int.md#class-int) **fixed\_column\_width** = `0` [🔗](#class-itemlist-property-fixed-column-width)

- void **set\_fixed\_column\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fixed\_column\_width**()


The width all columns will be adjusted to.

A value of zero disables the adjustment, each item will have a width equal to the width of its content and the columns will have an uneven width.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **fixed\_icon\_size** = `Vector2i(0, 0)` [🔗](#class-itemlist-property-fixed-icon-size)

- void **set\_fixed\_icon\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_fixed\_icon\_size**()


The size all icons will be adjusted to.

If either X or Y component is not greater than zero, icon size won't be affected.

* * *

[IconMode](#enum-itemlist-iconmode) **icon\_mode** = `1` [🔗](#class-itemlist-property-icon-mode)

- void **set\_icon\_mode**(value: [IconMode](#enum-itemlist-iconmode))

- [IconMode](#enum-itemlist-iconmode) **get\_icon\_mode**()


The icon position, whether above or to the left of the text. See the [IconMode](#enum-itemlist-iconmode) constants.

* * *

[float](class_float.md#class-float) **icon\_scale** = `1.0` [🔗](#class-itemlist-property-icon-scale)

- void **set\_icon\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_icon\_scale**()


The scale of icon applied after [fixed\_icon\_size](#class-itemlist-property-fixed-icon-size) and transposing takes effect.

* * *

[int](class_int.md#class-int) **item\_count** = `0` [🔗](#class-itemlist-property-item-count)

- void **set\_item\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_item\_count**()


The number of items currently in the list.

* * *

[int](class_int.md#class-int) **max\_columns** = `1` [🔗](#class-itemlist-property-max-columns)

- void **set\_max\_columns**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_columns**()


Maximum columns the list will have.

If greater than zero, the content will be split among the specified columns.

A value of zero means unlimited columns, i.e. all items will be put in the same row.

* * *

[int](class_int.md#class-int) **max\_text\_lines** = `1` [🔗](#class-itemlist-property-max-text-lines)

- void **set\_max\_text\_lines**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_text\_lines**()


Maximum lines of text allowed in each item. Space will be reserved even when there is not enough lines of text to display.

**Note:** This property takes effect only when [icon\_mode](#class-itemlist-property-icon-mode) is [ICON\_MODE\_TOP](#class-itemlist-constant-icon-mode-top). To make the text wrap, [fixed\_column\_width](#class-itemlist-property-fixed-column-width) should be greater than zero.

* * *

[bool](class_bool.md#class-bool) **same\_column\_width** = `false` [🔗](#class-itemlist-property-same-column-width)

- void **set\_same\_column\_width**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_same\_column\_width**()


Whether all columns will have the same width.

If `true`, the width is equal to the largest column width of all columns.

* * *

[SelectMode](#enum-itemlist-selectmode) **select\_mode** = `0` [🔗](#class-itemlist-property-select-mode)

- void **set\_select\_mode**(value: [SelectMode](#enum-itemlist-selectmode))

- [SelectMode](#enum-itemlist-selectmode) **get\_select\_mode**()


Allows single or multiple item selection. See the [SelectMode](#enum-itemlist-selectmode) constants.

* * *

[OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **text\_overrun\_behavior** = `3` [🔗](#class-itemlist-property-text-overrun-behavior)

- void **set\_text\_overrun\_behavior**(value: [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior))

- [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **get\_text\_overrun\_behavior**()


The clipping behavior when the text exceeds an item's bounding rectangle.

* * *

[bool](class_bool.md#class-bool) **wraparound\_items** = `true` [🔗](#class-itemlist-property-wraparound-items)

- void **set\_wraparound\_items**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_wraparound\_items**()


If `true`, the control will automatically move items into a new row to fit its content. See also [HFlowContainer](class_hflowcontainer.md#class-hflowcontainer) for this behavior.

If `false`, the control will add a horizontal scrollbar to make all items visible.

* * *

## Method Descriptions

[int](class_int.md#class-int) **add\_icon\_item**(icon: [Texture2D](class_texture2d.md#class-texture2d), selectable: [bool](class_bool.md#class-bool) = true) [🔗](#class-itemlist-method-add-icon-item)

Adds an item to the item list with no text, only an icon. Returns the index of an added item.

* * *

[int](class_int.md#class-int) **add\_item**(text: [String](class_string.md#class-string), icon: [Texture2D](class_texture2d.md#class-texture2d) = null, selectable: [bool](class_bool.md#class-bool) = true) [🔗](#class-itemlist-method-add-item)

Adds an item to the item list with specified text. Returns the index of an added item.

Specify an `icon`, or use `null` as the `icon` for a list item with no icon.

If `selectable` is `true`, the list item will be selectable.

* * *

void **clear**() [🔗](#class-itemlist-method-clear)

Removes all items from the list.

* * *

void **deselect**(idx: [int](class_int.md#class-int)) [🔗](#class-itemlist-method-deselect)

Ensures the item associated with the specified index is not selected.

* * *

void **deselect\_all**() [🔗](#class-itemlist-method-deselect-all)

Ensures there are no items selected.

* * *

void **ensure\_current\_is\_visible**() [🔗](#class-itemlist-method-ensure-current-is-visible)

Ensure current selection is visible, adjusting the scroll position as necessary.

* * *

void **force\_update\_list\_size**() [🔗](#class-itemlist-method-force-update-list-size)

Forces an update to the list size based on its items. This happens automatically whenever size of the items, or other relevant settings like [auto\_height](#class-itemlist-property-auto-height), change. The method can be used to trigger the update ahead of next drawing pass.

* * *

[HScrollBar](class_hscrollbar.md#class-hscrollbar) **get\_h\_scroll\_bar**() [🔗](#class-itemlist-method-get-h-scroll-bar)

Returns the horizontal scrollbar.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

[int](class_int.md#class-int) **get\_item\_at\_position**(position: [Vector2](class_vector2.md#class-vector2), exact: [bool](class_bool.md#class-bool) = false) const [🔗](#class-itemlist-method-get-item-at-position)

Returns the item index at the given `position`.

When there is no item at that point, -1 will be returned if `exact` is `true`, and the closest item index will be returned otherwise.

**Note:** The returned value is unreliable if called right after modifying the **ItemList**, before it redraws in the next frame.

* * *

[AutoTranslateMode](class_node.md#enum-node-autotranslatemode) **get\_item\_auto\_translate\_mode**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-auto-translate-mode)

Returns item's auto translate mode.

* * *

[Color](class_color.md#class-color) **get\_item\_custom\_bg\_color**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-custom-bg-color)

Returns the custom background color of the item specified by `idx` index.

* * *

[Color](class_color.md#class-color) **get\_item\_custom\_fg\_color**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-custom-fg-color)

Returns the custom foreground color of the item specified by `idx` index.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_item\_icon**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-icon)

Returns the icon associated with the specified index.

* * *

[Color](class_color.md#class-color) **get\_item\_icon\_modulate**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-icon-modulate)

Returns a [Color](class_color.md#class-color) modulating item's icon at the specified index.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_item\_icon\_region**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-icon-region)

Returns the region of item's icon used. The whole icon will be used if the region has no area.

* * *

[String](class_string.md#class-string) **get\_item\_language**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-language)

Returns item's text language code.

* * *

[Variant](class_variant.md#class-variant) **get\_item\_metadata**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-metadata)

Returns the metadata value of the specified index.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_item\_rect**(idx: [int](class_int.md#class-int), expand: [bool](class_bool.md#class-bool) = true) const [🔗](#class-itemlist-method-get-item-rect)

Returns the position and size of the item with the specified index, in the coordinate system of the **ItemList** node. If `expand` is `true` the last column expands to fill the rest of the row.

**Note:** The returned value is unreliable if called right after modifying the **ItemList**, before it redraws in the next frame.

* * *

[String](class_string.md#class-string) **get\_item\_text**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-text)

Returns the text associated with the specified index.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **get\_item\_text\_direction**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-text-direction)

Returns item's text base writing direction.

* * *

[String](class_string.md#class-string) **get\_item\_tooltip**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-get-item-tooltip)

Returns the tooltip hint associated with the specified index.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_selected\_items**() [🔗](#class-itemlist-method-get-selected-items)

Returns an array with the indexes of the selected items.

* * *

[VScrollBar](class_vscrollbar.md#class-vscrollbar) **get\_v\_scroll\_bar**() [🔗](#class-itemlist-method-get-v-scroll-bar)

Returns the vertical scrollbar.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

[bool](class_bool.md#class-bool) **is\_anything\_selected**() [🔗](#class-itemlist-method-is-anything-selected)

Returns `true` if one or more items are selected.

* * *

[bool](class_bool.md#class-bool) **is\_item\_disabled**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-is-item-disabled)

Returns `true` if the item at the specified index is disabled.

* * *

[bool](class_bool.md#class-bool) **is\_item\_icon\_transposed**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-is-item-icon-transposed)

Returns `true` if the item icon will be drawn transposed, i.e. the X and Y axes are swapped.

* * *

[bool](class_bool.md#class-bool) **is\_item\_selectable**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-is-item-selectable)

Returns `true` if the item at the specified index is selectable.

* * *

[bool](class_bool.md#class-bool) **is\_item\_tooltip\_enabled**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-is-item-tooltip-enabled)

Returns `true` if the tooltip is enabled for specified item index.

* * *

[bool](class_bool.md#class-bool) **is\_selected**(idx: [int](class_int.md#class-int)) const [🔗](#class-itemlist-method-is-selected)

Returns `true` if the item at the specified index is currently selected.

* * *

void **move\_item**(from\_idx: [int](class_int.md#class-int), to\_idx: [int](class_int.md#class-int)) [🔗](#class-itemlist-method-move-item)

Moves item from index `from_idx` to `to_idx`.

* * *

void **remove\_item**(idx: [int](class_int.md#class-int)) [🔗](#class-itemlist-method-remove-item)

Removes the item specified by `idx` index from the list.

* * *

void **select**(idx: [int](class_int.md#class-int), single: [bool](class_bool.md#class-bool) = true) [🔗](#class-itemlist-method-select)

Select the item at the specified index.

**Note:** This method does not trigger the item selection signal.

* * *

void **set\_item\_auto\_translate\_mode**(idx: [int](class_int.md#class-int), mode: [AutoTranslateMode](class_node.md#enum-node-autotranslatemode)) [🔗](#class-itemlist-method-set-item-auto-translate-mode)

Sets the auto translate mode of the item associated with the specified index.

Items use [Node.AUTO\_TRANSLATE\_MODE\_INHERIT](class_node.md#class-node-constant-auto-translate-mode-inherit) by default, which uses the same auto translate mode as the **ItemList** itself.

* * *

void **set\_item\_custom\_bg\_color**(idx: [int](class_int.md#class-int), custom\_bg\_color: [Color](class_color.md#class-color)) [🔗](#class-itemlist-method-set-item-custom-bg-color)

Sets the background color of the item specified by `idx` index to the specified [Color](class_color.md#class-color).

* * *

void **set\_item\_custom\_fg\_color**(idx: [int](class_int.md#class-int), custom\_fg\_color: [Color](class_color.md#class-color)) [🔗](#class-itemlist-method-set-item-custom-fg-color)

Sets the foreground color of the item specified by `idx` index to the specified [Color](class_color.md#class-color).

* * *

void **set\_item\_disabled**(idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-itemlist-method-set-item-disabled)

Disables (or enables) the item at the specified index.

Disabled items cannot be selected and do not trigger activation signals (when double-clicking or pressing `Enter`).

* * *

void **set\_item\_icon**(idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-itemlist-method-set-item-icon)

Sets (or replaces) the icon's [Texture2D](class_texture2d.md#class-texture2d) associated with the specified index.

* * *

void **set\_item\_icon\_modulate**(idx: [int](class_int.md#class-int), modulate: [Color](class_color.md#class-color)) [🔗](#class-itemlist-method-set-item-icon-modulate)

Sets a modulating [Color](class_color.md#class-color) of the item associated with the specified index.

* * *

void **set\_item\_icon\_region**(idx: [int](class_int.md#class-int), rect: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-itemlist-method-set-item-icon-region)

Sets the region of item's icon used. The whole icon will be used if the region has no area.

* * *

void **set\_item\_icon\_transposed**(idx: [int](class_int.md#class-int), transposed: [bool](class_bool.md#class-bool)) [🔗](#class-itemlist-method-set-item-icon-transposed)

Sets whether the item icon will be drawn transposed.

* * *

void **set\_item\_language**(idx: [int](class_int.md#class-int), language: [String](class_string.md#class-string)) [🔗](#class-itemlist-method-set-item-language)

Sets language code of item's text used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

void **set\_item\_metadata**(idx: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) [🔗](#class-itemlist-method-set-item-metadata)

Sets a value (of any type) to be stored with the item associated with the specified index.

* * *

void **set\_item\_selectable**(idx: [int](class_int.md#class-int), selectable: [bool](class_bool.md#class-bool)) [🔗](#class-itemlist-method-set-item-selectable)

Allows or disallows selection of the item associated with the specified index.

* * *

void **set\_item\_text**(idx: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) [🔗](#class-itemlist-method-set-item-text)

Sets text of the item associated with the specified index.

* * *

void **set\_item\_text\_direction**(idx: [int](class_int.md#class-int), direction: [TextDirection](class_control.md#enum-control-textdirection)) [🔗](#class-itemlist-method-set-item-text-direction)

Sets item's text base writing direction.

* * *

void **set\_item\_tooltip**(idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-itemlist-method-set-item-tooltip)

Sets the tooltip hint for the item associated with the specified index.

* * *

void **set\_item\_tooltip\_enabled**(idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-itemlist-method-set-item-tooltip-enabled)

Sets whether the tooltip hint is enabled for specified item index.

* * *

void **sort\_items\_by\_text**() [🔗](#class-itemlist-method-sort-items-by-text)

Sorts items in the list by their text.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **font\_color** = `Color(0.65, 0.65, 0.65, 1)` [🔗](#class-itemlist-theme-color-font-color)

Default text [Color](class_color.md#class-color) of the item.

* * *

[Color](class_color.md#class-color) **font\_hovered\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-itemlist-theme-color-font-hovered-color)

Text [Color](class_color.md#class-color) used when the item is hovered and not selected yet.

* * *

[Color](class_color.md#class-color) **font\_hovered\_selected\_color** = `Color(1, 1, 1, 1)` [🔗](#class-itemlist-theme-color-font-hovered-selected-color)

Text [Color](class_color.md#class-color) used when the item is hovered and selected.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-itemlist-theme-color-font-outline-color)

The tint of text outline of the item.

* * *

[Color](class_color.md#class-color) **font\_selected\_color** = `Color(1, 1, 1, 1)` [🔗](#class-itemlist-theme-color-font-selected-color)

Text [Color](class_color.md#class-color) used when the item is selected, but not hovered.

* * *

[Color](class_color.md#class-color) **guide\_color** = `Color(0.7, 0.7, 0.7, 0.25)` [🔗](#class-itemlist-theme-color-guide-color)

[Color](class_color.md#class-color) of the guideline. The guideline is a line drawn between each row of items.

* * *

[int](class_int.md#class-int) **h\_separation** = `4` [🔗](#class-itemlist-theme-constant-h-separation)

The horizontal spacing between items.

* * *

[int](class_int.md#class-int) **icon\_margin** = `4` [🔗](#class-itemlist-theme-constant-icon-margin)

The spacing between item's icon and text.

* * *

[int](class_int.md#class-int) **line\_separation** = `2` [🔗](#class-itemlist-theme-constant-line-separation)

The vertical spacing between each line of text.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-itemlist-theme-constant-outline-size)

The size of the item text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-itemlist-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[int](class_int.md#class-int) **v\_separation** = `4` [🔗](#class-itemlist-theme-constant-v-separation)

The vertical spacing between items.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-itemlist-theme-font-font)

[Font](class_font.md#class-font) of the item's text.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-itemlist-theme-font-size-font-size)

Font size of the item's text.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **cursor** [🔗](#class-itemlist-theme-style-cursor)

[StyleBox](class_stylebox.md#class-stylebox) used for the cursor, when the **ItemList** is being focused.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **cursor\_unfocused** [🔗](#class-itemlist-theme-style-cursor-unfocused)

[StyleBox](class_stylebox.md#class-stylebox) used for the cursor, when the **ItemList** is not being focused.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **focus** [🔗](#class-itemlist-theme-style-focus)

The focused style for the **ItemList**, drawn on top of the background, but below everything else.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hovered** [🔗](#class-itemlist-theme-style-hovered)

[StyleBox](class_stylebox.md#class-stylebox) for the hovered, but not selected items.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hovered\_selected** [🔗](#class-itemlist-theme-style-hovered-selected)

[StyleBox](class_stylebox.md#class-stylebox) for the hovered and selected items, used when the **ItemList** is not being focused.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hovered\_selected\_focus** [🔗](#class-itemlist-theme-style-hovered-selected-focus)

[StyleBox](class_stylebox.md#class-stylebox) for the hovered and selected items, used when the **ItemList** is being focused.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel** [🔗](#class-itemlist-theme-style-panel)

The background style for the **ItemList**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **selected** [🔗](#class-itemlist-theme-style-selected)

[StyleBox](class_stylebox.md#class-stylebox) for the selected items, used when the **ItemList** is not being focused.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **selected\_focus** [🔗](#class-itemlist-theme-style-selected-focus)

[StyleBox](class_stylebox.md#class-stylebox) for the selected items, used when the **ItemList** is being focused.

[Previous](class_instanceplaceholder.md "InstancePlaceholder") [Next](class_joint2d.md "Joint2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_instanceplaceholder.md "InstancePlaceholder") [Next](class_joint2d.md "Joint2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).