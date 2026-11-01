---
title: OptionButton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_optionbutton.html
crawled_at: "2026-08-13T10:22:26+12:00"
content_hash: be5cd0f064af47a8648456ba69a110baa4fc6c794c307ff96a32bb03470414e9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OptionButton

* * *

# OptionButton

**Inherits:** [Button](class_button.md#class-button) **<** [BaseButton](class_basebutton.md#class-basebutton) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A button that brings up a dropdown with selectable options when pressed.

## Description

**OptionButton** is a type of button that brings up a dropdown with selectable items when pressed. The item selected becomes the "current" item and is displayed as the button text.

See also [BaseButton](class_basebutton.md#class-basebutton) which contains common properties and methods associated with this node.

**Note:** The IDs used for items are limited to signed 32-bit integers, not the full 64 bits of [int](class_int.md#class-int). These have a range of `-2^31` to `2^31 - 1`, that is, `-2147483648` to `2147483647`.

**Note:** The [Button.text](class_button.md#class-button-property-text) and [Button.icon](class_button.md#class-button-property-icon) properties are set automatically based on the selected item. They shouldn't be changed manually.

## Properties

|     |     |     |
| --- | --- | --- |
| [ActionMode](class_basebutton.md#enum-basebutton-actionmode) | action\_mode | `0` (overrides [BaseButton](class_basebutton.md#class-basebutton-property-action-mode)) |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | alignment | `0` (overrides [Button](class_button.md#class-button-property-alignment)) |
| [bool](class_bool.md#class-bool) | [allow\_reselect](#class-optionbutton-property-allow-reselect) | `false` |
| [bool](class_bool.md#class-bool) | [fit\_to\_longest\_item](#class-optionbutton-property-fit-to-longest-item) | `true` |
| [int](class_int.md#class-int) | [item\_count](#class-optionbutton-property-item-count) | `0` |
| [int](class_int.md#class-int) | [selected](#class-optionbutton-property-selected) | `-1` |
| [bool](class_bool.md#class-bool) | toggle\_mode | `true` (overrides [BaseButton](class_basebutton.md#class-basebutton-property-toggle-mode)) |

## Methods

|     |     |
| --- | --- |
| void | [add\_icon\_item](#class-optionbutton-method-add-icon-item)(texture: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1) |
| void | [add\_item](#class-optionbutton-method-add-item)(label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1) |
| void | [add\_separator](#class-optionbutton-method-add-separator)(text: [String](class_string.md#class-string) = "") |
| void | [clear](#class-optionbutton-method-clear)() |
| [AutoTranslateMode](class_node.md#enum-node-autotranslatemode) | [get\_item\_auto\_translate\_mode](#class-optionbutton-method-get-item-auto-translate-mode)(idx: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_item\_icon](#class-optionbutton-method-get-item-icon)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_id](#class-optionbutton-method-get-item-id)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_index](#class-optionbutton-method-get-item-index)(id: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_item\_metadata](#class-optionbutton-method-get-item-metadata)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_text](#class-optionbutton-method-get-item-text)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_tooltip](#class-optionbutton-method-get-item-tooltip)(idx: [int](class_int.md#class-int)) const |
| [PopupMenu](class_popupmenu.md#class-popupmenu) | [get\_popup](#class-optionbutton-method-get-popup)() const |
| [int](class_int.md#class-int) | [get\_selectable\_item](#class-optionbutton-method-get-selectable-item)(from\_last: [bool](class_bool.md#class-bool) = false) const |
| [int](class_int.md#class-int) | [get\_selected\_id](#class-optionbutton-method-get-selected-id)() const |
| [Variant](class_variant.md#class-variant) | [get\_selected\_metadata](#class-optionbutton-method-get-selected-metadata)() const |
| [bool](class_bool.md#class-bool) | [has\_selectable\_items](#class-optionbutton-method-has-selectable-items)() const |
| [bool](class_bool.md#class-bool) | [is\_item\_disabled](#class-optionbutton-method-is-item-disabled)(idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_separator](#class-optionbutton-method-is-item-separator)(idx: [int](class_int.md#class-int)) const |
| void | [remove\_item](#class-optionbutton-method-remove-item)(idx: [int](class_int.md#class-int)) |
| void | [select](#class-optionbutton-method-select)(idx: [int](class_int.md#class-int)) |
| void | [set\_disable\_shortcuts](#class-optionbutton-method-set-disable-shortcuts)(disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_auto\_translate\_mode](#class-optionbutton-method-set-item-auto-translate-mode)(idx: [int](class_int.md#class-int), mode: [AutoTranslateMode](class_node.md#enum-node-autotranslatemode)) |
| void | [set\_item\_disabled](#class-optionbutton-method-set-item-disabled)(idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_icon](#class-optionbutton-method-set-item-icon)(idx: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_item\_id](#class-optionbutton-method-set-item-id)(idx: [int](class_int.md#class-int), id: [int](class_int.md#class-int)) |
| void | [set\_item\_metadata](#class-optionbutton-method-set-item-metadata)(idx: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) |
| void | [set\_item\_text](#class-optionbutton-method-set-item-text)(idx: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) |
| void | [set\_item\_tooltip](#class-optionbutton-method-set-item-tooltip)(idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |
| void | [show\_popup](#class-optionbutton-method-show-popup)() |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [arrow\_margin](#class-optionbutton-theme-constant-arrow-margin) | `4` |
| [int](class_int.md#class-int) | [modulate\_arrow](#class-optionbutton-theme-constant-modulate-arrow) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [arrow](#class-optionbutton-theme-icon-arrow) |  |

* * *

## Signals

**item\_focused**(index: [int](class_int.md#class-int)) [🔗](#class-optionbutton-signal-item-focused)

Emitted when the user navigates to an item using the [ProjectSettings.input/ui\_up](class_projectsettings.md#class-projectsettings-property-input-ui-up) or [ProjectSettings.input/ui\_down](class_projectsettings.md#class-projectsettings-property-input-ui-down) input actions. The index of the item selected is passed as argument.

* * *

**item\_selected**(index: [int](class_int.md#class-int)) [🔗](#class-optionbutton-signal-item-selected)

Emitted when the current item has been changed by the user. The index of the item selected is passed as argument.

[allow\_reselect](#class-optionbutton-property-allow-reselect) must be enabled to reselect an item.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_reselect** = `false` [🔗](#class-optionbutton-property-allow-reselect)

- void **set\_allow\_reselect**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_allow\_reselect**()


If `true`, the currently selected item can be selected again.

* * *

[bool](class_bool.md#class-bool) **fit\_to\_longest\_item** = `true` [🔗](#class-optionbutton-property-fit-to-longest-item)

- void **set\_fit\_to\_longest\_item**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_fit\_to\_longest\_item**()


If `true`, minimum size will be determined by the longest item's text, instead of the currently selected one's.

**Note:** For performance reasons, the minimum size doesn't update immediately when adding, removing or modifying items.

* * *

[int](class_int.md#class-int) **item\_count** = `0` [🔗](#class-optionbutton-property-item-count)

- void **set\_item\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_item\_count**()


The number of items to select from.

* * *

[int](class_int.md#class-int) **selected** = `-1` [🔗](#class-optionbutton-property-selected)

- [int](class_int.md#class-int) **get\_selected**()


The index of the currently selected item, or `-1` if no item is selected.

* * *

## Method Descriptions

void **add\_icon\_item**(texture: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1) [🔗](#class-optionbutton-method-add-icon-item)

Adds an item, with a `texture` icon, text `label` and (optionally) `id`. If no `id` is passed, the item index will be used as the item's ID. New items are appended at the end.

**Note:** The item will be selected if there are no other items.

* * *

void **add\_item**(label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1) [🔗](#class-optionbutton-method-add-item)

Adds an item, with text `label` and (optionally) `id`. If no `id` is passed, the item index will be used as the item's ID. New items are appended at the end.

**Note:** The item will be selected if there are no other items.

* * *

void **add\_separator**(text: [String](class_string.md#class-string) = "") [🔗](#class-optionbutton-method-add-separator)

Adds a separator to the list of items. Separators help to group items, and can optionally be given a `text` header. A separator also gets an index assigned, and is appended at the end of the item list.

* * *

void **clear**() [🔗](#class-optionbutton-method-clear)

Clears all the items in the **OptionButton**.

* * *

[AutoTranslateMode](class_node.md#enum-node-autotranslatemode) **get\_item\_auto\_translate\_mode**(idx: [int](class_int.md#class-int)) const [🔗](#class-optionbutton-method-get-item-auto-translate-mode)

Returns the auto translate mode of the item at index `idx`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_item\_icon**(idx: [int](class_int.md#class-int)) const [🔗](#class-optionbutton-method-get-item-icon)

Returns the icon of the item at index `idx`.

* * *

[int](class_int.md#class-int) **get\_item\_id**(idx: [int](class_int.md#class-int)) const [🔗](#class-optionbutton-method-get-item-id)

Returns the ID of the item at index `idx`.

* * *

[int](class_int.md#class-int) **get\_item\_index**(id: [int](class_int.md#class-int)) const [🔗](#class-optionbutton-method-get-item-index)

Returns the index of the item with the given `id`.

* * *

[Variant](class_variant.md#class-variant) **get\_item\_metadata**(idx: [int](class_int.md#class-int)) const [🔗](#class-optionbutton-method-get-item-metadata)

Retrieves the metadata of an item. Metadata may be any type and can be used to store extra information about an item, such as an external string ID.

* * *

[String](class_string.md#class-string) **get\_item\_text**(idx: [int](class_int.md#class-int)) const [🔗](#class-optionbutton-method-get-item-text)

Returns the text of the item at index `idx`.

* * *

[String](class_string.md#class-string) **get\_item\_tooltip**(idx: [int](class_int.md#class-int)) const [🔗](#class-optionbutton-method-get-item-tooltip)

Returns the tooltip of the item at index `idx`.

* * *

[PopupMenu](class_popupmenu.md#class-popupmenu) **get\_popup**() const [🔗](#class-optionbutton-method-get-popup)

Returns the [PopupMenu](class_popupmenu.md#class-popupmenu) contained in this button.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [Window.visible](class_window.md#class-window-property-visible) property.

* * *

[int](class_int.md#class-int) **get\_selectable\_item**(from\_last: [bool](class_bool.md#class-bool) = false) const [🔗](#class-optionbutton-method-get-selectable-item)

Returns the index of the first item which is not disabled, or marked as a separator. If `from_last` is `true`, the items will be searched in reverse order.

Returns `-1` if no item is found.

* * *

[int](class_int.md#class-int) **get\_selected\_id**() const [🔗](#class-optionbutton-method-get-selected-id)

Returns the ID of the selected item, or `-1` if no item is selected.

* * *

[Variant](class_variant.md#class-variant) **get\_selected\_metadata**() const [🔗](#class-optionbutton-method-get-selected-metadata)

Gets the metadata of the selected item. Metadata for items can be set using [set\_item\_metadata()](#class-optionbutton-method-set-item-metadata).

* * *

[bool](class_bool.md#class-bool) **has\_selectable\_items**() const [🔗](#class-optionbutton-method-has-selectable-items)

Returns `true` if this button contains at least one item which is not disabled, or marked as a separator.

* * *

[bool](class_bool.md#class-bool) **is\_item\_disabled**(idx: [int](class_int.md#class-int)) const [🔗](#class-optionbutton-method-is-item-disabled)

Returns `true` if the item at index `idx` is disabled.

* * *

[bool](class_bool.md#class-bool) **is\_item\_separator**(idx: [int](class_int.md#class-int)) const [🔗](#class-optionbutton-method-is-item-separator)

Returns `true` if the item at index `idx` is marked as a separator.

* * *

void **remove\_item**(idx: [int](class_int.md#class-int)) [🔗](#class-optionbutton-method-remove-item)

Removes the item at index `idx`.

* * *

void **select**(idx: [int](class_int.md#class-int)) [🔗](#class-optionbutton-method-select)

Selects an item by index and makes it the current item. This will work even if the item is disabled.

Passing `-1` as the index deselects any currently selected item.

* * *

void **set\_disable\_shortcuts**(disabled: [bool](class_bool.md#class-bool)) [🔗](#class-optionbutton-method-set-disable-shortcuts)

If `true`, shortcuts are disabled and cannot be used to trigger the button.

* * *

void **set\_item\_auto\_translate\_mode**(idx: [int](class_int.md#class-int), mode: [AutoTranslateMode](class_node.md#enum-node-autotranslatemode)) [🔗](#class-optionbutton-method-set-item-auto-translate-mode)

Sets the auto translate mode of the item at index `idx`.

Items use [Node.AUTO\_TRANSLATE\_MODE\_INHERIT](class_node.md#class-node-constant-auto-translate-mode-inherit) by default, which uses the same auto translate mode as the **OptionButton** itself.

* * *

void **set\_item\_disabled**(idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-optionbutton-method-set-item-disabled)

Sets whether the item at index `idx` is disabled.

Disabled items are drawn differently in the dropdown and are not selectable by the user. If the current selected item is set as disabled, it will remain selected.

* * *

void **set\_item\_icon**(idx: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-optionbutton-method-set-item-icon)

Sets the icon of the item at index `idx`.

* * *

void **set\_item\_id**(idx: [int](class_int.md#class-int), id: [int](class_int.md#class-int)) [🔗](#class-optionbutton-method-set-item-id)

Sets the ID of the item at index `idx`.

* * *

void **set\_item\_metadata**(idx: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) [🔗](#class-optionbutton-method-set-item-metadata)

Sets the metadata of an item. Metadata may be of any type and can be used to store extra information about an item, such as an external string ID.

* * *

void **set\_item\_text**(idx: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) [🔗](#class-optionbutton-method-set-item-text)

Sets the text of the item at index `idx`.

* * *

void **set\_item\_tooltip**(idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-optionbutton-method-set-item-tooltip)

Sets the tooltip of the item at index `idx`.

* * *

void **show\_popup**() [🔗](#class-optionbutton-method-show-popup)

Adjusts popup position and sizing for the **OptionButton**, then shows the [PopupMenu](class_popupmenu.md#class-popupmenu). Prefer this over using `get_popup().popup()`.

* * *

## Theme Property Descriptions

[int](class_int.md#class-int) **arrow\_margin** = `4` [🔗](#class-optionbutton-theme-constant-arrow-margin)

The horizontal space between the arrow icon and the right edge of the button.

* * *

[int](class_int.md#class-int) **modulate\_arrow** = `0` [🔗](#class-optionbutton-theme-constant-modulate-arrow)

If different than `0`, the arrow icon will be modulated to the font color.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **arrow** [🔗](#class-optionbutton-theme-icon-arrow)

The arrow icon to be drawn on the right end of the button.

[Previous](class_openxrvisibilitymask.md "OpenXRVisibilityMask") [Next](class_panel.md "Panel")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrvisibilitymask.md "OpenXRVisibilityMask") [Next](class_panel.md "Panel")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).