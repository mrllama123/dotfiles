---
title: PopupMenu — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_popupmenu.html
crawled_at: "2026-08-13T10:29:41+12:00"
content_hash: b11e27668c94960e119e958a9e181dc0dd6e48daeb58683d27272a101f31eebf
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PopupMenu

* * *

# PopupMenu

**Inherits:** [Popup](class_popup.md#class-popup) **<** [Window](class_window.md#class-window) **<** [Viewport](class_viewport.md#class-viewport) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A modal window used to display a list of options.

## Description

**PopupMenu** is a modal window used to display a list of options. Useful for toolbars and context menus.

The size of a **PopupMenu** can be limited by using [Window.max\_size](class_window.md#class-window-property-max-size). If the height of the list of items is larger than the maximum height of the **PopupMenu**, a [ScrollContainer](class_scrollcontainer.md#class-scrollcontainer) within the popup will allow the user to scroll the contents. If no maximum size is set, or if it is set to `0`, the **PopupMenu** height will be limited by its parent rect.

All `set_*` methods allow negative item indices, i.e. `-1` to access the last item, `-2` to select the second-to-last item, and so on.

**Incremental search:** Like [ItemList](class_itemlist.md#class-itemlist) and [Tree](class_tree.md#class-tree), **PopupMenu** supports searching within the list while the control is focused. Press a key that matches the first letter of an item's name to select the first item starting with the given letter. After that point, there are two ways to perform incremental search: 1) Press the same key again before the timeout duration to select the next item starting with the same letter. 2) Press letter keys that match the rest of the word before the timeout duration to match to select the item in question directly. Both of these actions will be reset to the beginning of the list if the timeout duration has passed since the last keystroke was registered. You can adjust the timeout duration by changing [ProjectSettings.gui/timers/incremental\_search\_max\_interval\_msec](class_projectsettings.md#class-projectsettings-property-gui-timers-incremental-search-max-interval-msec).

**Note:** The ID values used for items are limited to 32 bits, not full 64 bits of [int](class_int.md#class-int). This has a range of `-2^32` to `2^32 - 1`, i.e. `-2147483648` to `2147483647`.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_search](#class-popupmenu-property-allow-search) | `true` |
| [bool](class_bool.md#class-bool) | [hide\_on\_checkable\_item\_selection](#class-popupmenu-property-hide-on-checkable-item-selection) | `true` |
| [bool](class_bool.md#class-bool) | [hide\_on\_item\_selection](#class-popupmenu-property-hide-on-item-selection) | `true` |
| [bool](class_bool.md#class-bool) | [hide\_on\_state\_item\_selection](#class-popupmenu-property-hide-on-state-item-selection) | `false` |
| [int](class_int.md#class-int) | [item\_count](#class-popupmenu-property-item-count) | `0` |
| [bool](class_bool.md#class-bool) | [prefer\_native\_menu](#class-popupmenu-property-prefer-native-menu) | `false` |
| [float](class_float.md#class-float) | [submenu\_popup\_delay](#class-popupmenu-property-submenu-popup-delay) | `0.3` |
| [SystemMenus](class_nativemenu.md#enum-nativemenu-systemmenus) | [system\_menu\_id](#class-popupmenu-property-system-menu-id) | `0` |
| [bool](class_bool.md#class-bool) | transparent | `true` (overrides [Window](class_window.md#class-window-property-transparent)) |
| [bool](class_bool.md#class-bool) | transparent\_bg | `true` (overrides [Viewport](class_viewport.md#class-viewport-property-transparent-bg)) |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [activate\_item\_by\_event](#class-popupmenu-method-activate-item-by-event)(event: [InputEvent](class_inputevent.md#class-inputevent), for\_global\_only: [bool](class_bool.md#class-bool) = false) |
| void | [add\_check\_item](#class-popupmenu-method-add-check-item)(label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) |
| void | [add\_check\_shortcut](#class-popupmenu-method-add-check-shortcut)(shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false) |
| void | [add\_icon\_check\_item](#class-popupmenu-method-add-icon-check-item)(texture: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) |
| void | [add\_icon\_check\_shortcut](#class-popupmenu-method-add-icon-check-shortcut)(texture: [Texture2D](class_texture2d.md#class-texture2d), shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false) |
| void | [add\_icon\_item](#class-popupmenu-method-add-icon-item)(texture: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) |
| void | [add\_icon\_radio\_check\_item](#class-popupmenu-method-add-icon-radio-check-item)(texture: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) |
| void | [add\_icon\_radio\_check\_shortcut](#class-popupmenu-method-add-icon-radio-check-shortcut)(texture: [Texture2D](class_texture2d.md#class-texture2d), shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false) |
| void | [add\_icon\_shortcut](#class-popupmenu-method-add-icon-shortcut)(texture: [Texture2D](class_texture2d.md#class-texture2d), shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false, allow\_echo: [bool](class_bool.md#class-bool) = false) |
| void | [add\_item](#class-popupmenu-method-add-item)(label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) |
| void | [add\_multistate\_item](#class-popupmenu-method-add-multistate-item)(label: [String](class_string.md#class-string), max\_states: [int](class_int.md#class-int), default\_state: [int](class_int.md#class-int) = 0, id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) |
| void | [add\_radio\_check\_item](#class-popupmenu-method-add-radio-check-item)(label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) |
| void | [add\_radio\_check\_shortcut](#class-popupmenu-method-add-radio-check-shortcut)(shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false) |
| void | [add\_separator](#class-popupmenu-method-add-separator)(label: [String](class_string.md#class-string) = "", id: [int](class_int.md#class-int) = -1) |
| void | [add\_shortcut](#class-popupmenu-method-add-shortcut)(shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false, allow\_echo: [bool](class_bool.md#class-bool) = false) |
| void | [add\_submenu\_item](#class-popupmenu-method-add-submenu-item)(label: [String](class_string.md#class-string), submenu: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1) |
| void | [add\_submenu\_node\_item](#class-popupmenu-method-add-submenu-node-item)(label: [String](class_string.md#class-string), submenu: [PopupMenu](#class-popupmenu), id: [int](class_int.md#class-int) = -1) |
| void | [clear](#class-popupmenu-method-clear)(free\_submenus: [bool](class_bool.md#class-bool) = false) |
| [int](class_int.md#class-int) | [get\_focused\_item](#class-popupmenu-method-get-focused-item)() const |
| [Key](class_@globalscope.md#enum-globalscope-key) | [get\_item\_accelerator](#class-popupmenu-method-get-item-accelerator)(index: [int](class_int.md#class-int)) const |
| [AutoTranslateMode](class_node.md#enum-node-autotranslatemode) | [get\_item\_auto\_translate\_mode](#class-popupmenu-method-get-item-auto-translate-mode)(index: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_item\_icon](#class-popupmenu-method-get-item-icon)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_icon\_max\_width](#class-popupmenu-method-get-item-icon-max-width)(index: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_item\_icon\_modulate](#class-popupmenu-method-get-item-icon-modulate)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_id](#class-popupmenu-method-get-item-id)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_indent](#class-popupmenu-method-get-item-indent)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_index](#class-popupmenu-method-get-item-index)(id: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_language](#class-popupmenu-method-get-item-language)(index: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_item\_metadata](#class-popupmenu-method-get-item-metadata)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_multistate](#class-popupmenu-method-get-item-multistate)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_multistate\_max](#class-popupmenu-method-get-item-multistate-max)(index: [int](class_int.md#class-int)) const |
| [Shortcut](class_shortcut.md#class-shortcut) | [get\_item\_shortcut](#class-popupmenu-method-get-item-shortcut)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_submenu](#class-popupmenu-method-get-item-submenu)(index: [int](class_int.md#class-int)) const |
| [PopupMenu](#class-popupmenu) | [get\_item\_submenu\_node](#class-popupmenu-method-get-item-submenu-node)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_text](#class-popupmenu-method-get-item-text)(index: [int](class_int.md#class-int)) const |
| [TextDirection](class_control.md#enum-control-textdirection) | [get\_item\_text\_direction](#class-popupmenu-method-get-item-text-direction)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_tooltip](#class-popupmenu-method-get-item-tooltip)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_checkable](#class-popupmenu-method-is-item-checkable)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_checked](#class-popupmenu-method-is-item-checked)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_disabled](#class-popupmenu-method-is-item-disabled)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_radio\_checkable](#class-popupmenu-method-is-item-radio-checkable)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_separator](#class-popupmenu-method-is-item-separator)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_shortcut\_disabled](#class-popupmenu-method-is-item-shortcut-disabled)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_native\_menu](#class-popupmenu-method-is-native-menu)() const |
| [bool](class_bool.md#class-bool) | [is\_system\_menu](#class-popupmenu-method-is-system-menu)() const |
| void | [remove\_item](#class-popupmenu-method-remove-item)(index: [int](class_int.md#class-int)) |
| void | [scroll\_to\_item](#class-popupmenu-method-scroll-to-item)(index: [int](class_int.md#class-int)) |
| void | [set\_focused\_item](#class-popupmenu-method-set-focused-item)(index: [int](class_int.md#class-int)) |
| void | [set\_item\_accelerator](#class-popupmenu-method-set-item-accelerator)(index: [int](class_int.md#class-int), accel: [Key](class_@globalscope.md#enum-globalscope-key)) |
| void | [set\_item\_as\_checkable](#class-popupmenu-method-set-item-as-checkable)(index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_as\_radio\_checkable](#class-popupmenu-method-set-item-as-radio-checkable)(index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_as\_separator](#class-popupmenu-method-set-item-as-separator)(index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_auto\_translate\_mode](#class-popupmenu-method-set-item-auto-translate-mode)(index: [int](class_int.md#class-int), mode: [AutoTranslateMode](class_node.md#enum-node-autotranslatemode)) |
| void | [set\_item\_checked](#class-popupmenu-method-set-item-checked)(index: [int](class_int.md#class-int), checked: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_disabled](#class-popupmenu-method-set-item-disabled)(index: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_icon](#class-popupmenu-method-set-item-icon)(index: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_item\_icon\_max\_width](#class-popupmenu-method-set-item-icon-max-width)(index: [int](class_int.md#class-int), width: [int](class_int.md#class-int)) |
| void | [set\_item\_icon\_modulate](#class-popupmenu-method-set-item-icon-modulate)(index: [int](class_int.md#class-int), modulate: [Color](class_color.md#class-color)) |
| void | [set\_item\_id](#class-popupmenu-method-set-item-id)(index: [int](class_int.md#class-int), id: [int](class_int.md#class-int)) |
| void | [set\_item\_indent](#class-popupmenu-method-set-item-indent)(index: [int](class_int.md#class-int), indent: [int](class_int.md#class-int)) |
| void | [set\_item\_language](#class-popupmenu-method-set-item-language)(index: [int](class_int.md#class-int), language: [String](class_string.md#class-string)) |
| void | [set\_item\_metadata](#class-popupmenu-method-set-item-metadata)(index: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) |
| void | [set\_item\_multistate](#class-popupmenu-method-set-item-multistate)(index: [int](class_int.md#class-int), state: [int](class_int.md#class-int)) |
| void | [set\_item\_multistate\_max](#class-popupmenu-method-set-item-multistate-max)(index: [int](class_int.md#class-int), max\_states: [int](class_int.md#class-int)) |
| void | [set\_item\_shortcut](#class-popupmenu-method-set-item-shortcut)(index: [int](class_int.md#class-int), shortcut: [Shortcut](class_shortcut.md#class-shortcut), global: [bool](class_bool.md#class-bool) = false) |
| void | [set\_item\_shortcut\_disabled](#class-popupmenu-method-set-item-shortcut-disabled)(index: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_submenu](#class-popupmenu-method-set-item-submenu)(index: [int](class_int.md#class-int), submenu: [String](class_string.md#class-string)) |
| void | [set\_item\_submenu\_node](#class-popupmenu-method-set-item-submenu-node)(index: [int](class_int.md#class-int), submenu: [PopupMenu](#class-popupmenu)) |
| void | [set\_item\_text](#class-popupmenu-method-set-item-text)(index: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) |
| void | [set\_item\_text\_direction](#class-popupmenu-method-set-item-text-direction)(index: [int](class_int.md#class-int), direction: [TextDirection](class_control.md#enum-control-textdirection)) |
| void | [set\_item\_tooltip](#class-popupmenu-method-set-item-tooltip)(index: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |
| void | [toggle\_item\_checked](#class-popupmenu-method-toggle-item-checked)(index: [int](class_int.md#class-int)) |
| void | [toggle\_item\_multistate](#class-popupmenu-method-toggle-item-multistate)(index: [int](class_int.md#class-int)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [font\_accelerator\_color](#class-popupmenu-theme-color-font-accelerator-color) | `Color(0.7, 0.7, 0.7, 0.8)` |
| [Color](class_color.md#class-color) | [font\_color](#class-popupmenu-theme-color-font-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [font\_disabled\_color](#class-popupmenu-theme-color-font-disabled-color) | `Color(0.4, 0.4, 0.4, 0.8)` |
| [Color](class_color.md#class-color) | [font\_hover\_color](#class-popupmenu-theme-color-font-hover-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-popupmenu-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_separator\_color](#class-popupmenu-theme-color-font-separator-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [font\_separator\_outline\_color](#class-popupmenu-theme-color-font-separator-outline-color) | `Color(0, 0, 0, 1)` |
| [int](class_int.md#class-int) | [h\_separation](#class-popupmenu-theme-constant-h-separation) | `4` |
| [int](class_int.md#class-int) | [icon\_max\_width](#class-popupmenu-theme-constant-icon-max-width) | `0` |
| [int](class_int.md#class-int) | [indent](#class-popupmenu-theme-constant-indent) | `10` |
| [int](class_int.md#class-int) | [item\_end\_padding](#class-popupmenu-theme-constant-item-end-padding) | `2` |
| [int](class_int.md#class-int) | [item\_start\_padding](#class-popupmenu-theme-constant-item-start-padding) | `2` |
| [int](class_int.md#class-int) | [outline\_size](#class-popupmenu-theme-constant-outline-size) | `0` |
| [int](class_int.md#class-int) | [separator\_outline\_size](#class-popupmenu-theme-constant-separator-outline-size) | `0` |
| [int](class_int.md#class-int) | [v\_separation](#class-popupmenu-theme-constant-v-separation) | `4` |
| [Font](class_font.md#class-font) | [font](#class-popupmenu-theme-font-font) |  |
| [Font](class_font.md#class-font) | [font\_separator](#class-popupmenu-theme-font-font-separator) |  |
| [int](class_int.md#class-int) | [font\_separator\_size](#class-popupmenu-theme-font-size-font-separator-size) |  |
| [int](class_int.md#class-int) | [font\_size](#class-popupmenu-theme-font-size-font-size) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [checked](#class-popupmenu-theme-icon-checked) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [checked\_disabled](#class-popupmenu-theme-icon-checked-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [radio\_checked](#class-popupmenu-theme-icon-radio-checked) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [radio\_checked\_disabled](#class-popupmenu-theme-icon-radio-checked-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [radio\_unchecked](#class-popupmenu-theme-icon-radio-unchecked) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [radio\_unchecked\_disabled](#class-popupmenu-theme-icon-radio-unchecked-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [submenu](#class-popupmenu-theme-icon-submenu) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [submenu\_mirrored](#class-popupmenu-theme-icon-submenu-mirrored) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [unchecked](#class-popupmenu-theme-icon-unchecked) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [unchecked\_disabled](#class-popupmenu-theme-icon-unchecked-disabled) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hover](#class-popupmenu-theme-style-hover) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [labeled\_separator\_left](#class-popupmenu-theme-style-labeled-separator-left) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [labeled\_separator\_right](#class-popupmenu-theme-style-labeled-separator-right) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel](#class-popupmenu-theme-style-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [separator](#class-popupmenu-theme-style-separator) |  |

* * *

## Signals

**id\_focused**(id: [int](class_int.md#class-int)) [🔗](#class-popupmenu-signal-id-focused)

Emitted when the user navigated to an item of some `id` using the [ProjectSettings.input/ui\_up](class_projectsettings.md#class-projectsettings-property-input-ui-up) or [ProjectSettings.input/ui\_down](class_projectsettings.md#class-projectsettings-property-input-ui-down) input action.

* * *

**id\_pressed**(id: [int](class_int.md#class-int)) [🔗](#class-popupmenu-signal-id-pressed)

Emitted when an item of some `id` is pressed or its accelerator is activated.

**Note:** If `id` is negative (either explicitly or due to overflow), this will return the corresponding index instead.

* * *

**index\_pressed**(index: [int](class_int.md#class-int)) [🔗](#class-popupmenu-signal-index-pressed)

Emitted when an item of some `index` is pressed or its accelerator is activated.

* * *

**menu\_changed**() [🔗](#class-popupmenu-signal-menu-changed)

Emitted when any item is added, modified or removed.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_search** = `true` [🔗](#class-popupmenu-property-allow-search)

- void **set\_allow\_search**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_allow\_search**()


If `true`, allows navigating **PopupMenu** with letter keys.

* * *

[bool](class_bool.md#class-bool) **hide\_on\_checkable\_item\_selection** = `true` [🔗](#class-popupmenu-property-hide-on-checkable-item-selection)

- void **set\_hide\_on\_checkable\_item\_selection**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hide\_on\_checkable\_item\_selection**()


If `true`, hides the **PopupMenu** when a checkbox or radio button is selected.

* * *

[bool](class_bool.md#class-bool) **hide\_on\_item\_selection** = `true` [🔗](#class-popupmenu-property-hide-on-item-selection)

- void **set\_hide\_on\_item\_selection**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hide\_on\_item\_selection**()


If `true`, hides the **PopupMenu** when an item is selected.

* * *

[bool](class_bool.md#class-bool) **hide\_on\_state\_item\_selection** = `false` [🔗](#class-popupmenu-property-hide-on-state-item-selection)

- void **set\_hide\_on\_state\_item\_selection**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hide\_on\_state\_item\_selection**()


If `true`, hides the **PopupMenu** when a state item is selected.

* * *

[int](class_int.md#class-int) **item\_count** = `0` [🔗](#class-popupmenu-property-item-count)

- void **set\_item\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_item\_count**()


The number of items currently in the list.

* * *

[bool](class_bool.md#class-bool) **prefer\_native\_menu** = `false` [🔗](#class-popupmenu-property-prefer-native-menu)

- void **set\_prefer\_native\_menu**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_prefer\_native\_menu**()


If `true`, [MenuBar](class_menubar.md#class-menubar) will use native menu when supported.

**Note:** If **PopupMenu** is linked to [StatusIndicator](class_statusindicator.md#class-statusindicator), [MenuBar](class_menubar.md#class-menubar), or another **PopupMenu** item it can use native menu regardless of this property, use [is\_native\_menu()](#class-popupmenu-method-is-native-menu) to check it.

* * *

[float](class_float.md#class-float) **submenu\_popup\_delay** = `0.3` [🔗](#class-popupmenu-property-submenu-popup-delay)

- void **set\_submenu\_popup\_delay**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_submenu\_popup\_delay**()


Sets the delay time in seconds for the submenu item to popup on mouse hovering. If the popup menu is added as a child of another (acting as a submenu), it will inherit the delay time of the parent menu item.

* * *

[SystemMenus](class_nativemenu.md#enum-nativemenu-systemmenus) **system\_menu\_id** = `0` [🔗](#class-popupmenu-property-system-menu-id)

- void **set\_system\_menu**(value: [SystemMenus](class_nativemenu.md#enum-nativemenu-systemmenus))

- [SystemMenus](class_nativemenu.md#enum-nativemenu-systemmenus) **get\_system\_menu**()


If set to one of the values of [SystemMenus](class_nativemenu.md#enum-nativemenu-systemmenus), this **PopupMenu** is bound to the special system menu. Only one **PopupMenu** can be bound to each special menu at a time.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **activate\_item\_by\_event**(event: [InputEvent](class_inputevent.md#class-inputevent), for\_global\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-popupmenu-method-activate-item-by-event)

Checks the provided `event` against the **PopupMenu**'s shortcuts and accelerators, and activates the first item with matching events. If `for_global_only` is `true`, only shortcuts and accelerators with `global` set to `true` will be called.

Returns `true` if an item was successfully activated.

**Note:** Certain [Control](class_control.md#class-control) s, such as [MenuButton](class_menubutton.md#class-menubutton), will call this method automatically.

* * *

void **add\_check\_item**(label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) [🔗](#class-popupmenu-method-add-check-item)

Adds a new checkable item with text `label`.

An `id` can optionally be provided, as well as an accelerator ( `accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided, then the default value of 0 (corresponding to [@GlobalScope.KEY\_NONE](class_@globalscope.md#class-globalscope-constant-key-none)) will be assigned to the item (which means it won't have any accelerator). See [get\_item\_accelerator()](#class-popupmenu-method-get-item-accelerator) for more info on accelerators.

**Note:** Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See [set\_item\_checked()](#class-popupmenu-method-set-item-checked) for more info on how to control it.

* * *

void **add\_check\_shortcut**(shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false) [🔗](#class-popupmenu-method-add-check-shortcut)

Adds a new checkable item and assigns the specified [Shortcut](class_shortcut.md#class-shortcut) to it. Sets the label of the checkbox to the [Shortcut](class_shortcut.md#class-shortcut)'s name.

An `id` can optionally be provided. If no `id` is provided, one will be created from the index.

**Note:** Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See [set\_item\_checked()](#class-popupmenu-method-set-item-checked) for more info on how to control it.

* * *

void **add\_icon\_check\_item**(texture: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) [🔗](#class-popupmenu-method-add-icon-check-item)

Adds a new checkable item with text `label` and icon `texture`.

An `id` can optionally be provided, as well as an accelerator ( `accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided, then the default value of 0 (corresponding to [@GlobalScope.KEY\_NONE](class_@globalscope.md#class-globalscope-constant-key-none)) will be assigned to the item (which means it won't have any accelerator). See [get\_item\_accelerator()](#class-popupmenu-method-get-item-accelerator) for more info on accelerators.

**Note:** Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See [set\_item\_checked()](#class-popupmenu-method-set-item-checked) for more info on how to control it.

* * *

void **add\_icon\_check\_shortcut**(texture: [Texture2D](class_texture2d.md#class-texture2d), shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false) [🔗](#class-popupmenu-method-add-icon-check-shortcut)

Adds a new checkable item and assigns the specified [Shortcut](class_shortcut.md#class-shortcut) and icon `texture` to it. Sets the label of the checkbox to the [Shortcut](class_shortcut.md#class-shortcut)'s name.

An `id` can optionally be provided. If no `id` is provided, one will be created from the index.

**Note:** Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See [set\_item\_checked()](#class-popupmenu-method-set-item-checked) for more info on how to control it.

* * *

void **add\_icon\_item**(texture: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) [🔗](#class-popupmenu-method-add-icon-item)

Adds a new item with text `label` and icon `texture`.

An `id` can optionally be provided, as well as an accelerator ( `accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided, then the default value of 0 (corresponding to [@GlobalScope.KEY\_NONE](class_@globalscope.md#class-globalscope-constant-key-none)) will be assigned to the item (which means it won't have any accelerator). See [get\_item\_accelerator()](#class-popupmenu-method-get-item-accelerator) for more info on accelerators.

* * *

void **add\_icon\_radio\_check\_item**(texture: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) [🔗](#class-popupmenu-method-add-icon-radio-check-item)

Same as [add\_icon\_check\_item()](#class-popupmenu-method-add-icon-check-item), but uses a radio check button.

* * *

void **add\_icon\_radio\_check\_shortcut**(texture: [Texture2D](class_texture2d.md#class-texture2d), shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false) [🔗](#class-popupmenu-method-add-icon-radio-check-shortcut)

Same as [add\_icon\_check\_shortcut()](#class-popupmenu-method-add-icon-check-shortcut), but uses a radio check button.

* * *

void **add\_icon\_shortcut**(texture: [Texture2D](class_texture2d.md#class-texture2d), shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false, allow\_echo: [bool](class_bool.md#class-bool) = false) [🔗](#class-popupmenu-method-add-icon-shortcut)

Adds a new item and assigns the specified [Shortcut](class_shortcut.md#class-shortcut) and icon `texture` to it. Sets the label of the checkbox to the [Shortcut](class_shortcut.md#class-shortcut)'s name.

An `id` can optionally be provided. If no `id` is provided, one will be created from the index.

If `allow_echo` is `true`, the shortcut can be activated with echo events.

* * *

void **add\_item**(label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) [🔗](#class-popupmenu-method-add-item)

Adds a new item with text `label`.

An `id` can optionally be provided, as well as an accelerator ( `accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided, then the default value of 0 (corresponding to [@GlobalScope.KEY\_NONE](class_@globalscope.md#class-globalscope-constant-key-none)) will be assigned to the item (which means it won't have any accelerator). See [get\_item\_accelerator()](#class-popupmenu-method-get-item-accelerator) for more info on accelerators.

**Note:** The provided `id` is used only in [id\_pressed](#class-popupmenu-signal-id-pressed) and [id\_focused](#class-popupmenu-signal-id-focused) signals. It's not related to the `index` arguments in e.g. [set\_item\_checked()](#class-popupmenu-method-set-item-checked).

* * *

void **add\_multistate\_item**(label: [String](class_string.md#class-string), max\_states: [int](class_int.md#class-int), default\_state: [int](class_int.md#class-int) = 0, id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) [🔗](#class-popupmenu-method-add-multistate-item)

Adds a new multistate item with text `label`.

Contrarily to normal binary items, multistate items can have more than two states, as defined by `max_states`. The default value is defined by `default_state`.

An `id` can optionally be provided, as well as an accelerator ( `accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided, then the default value of 0 (corresponding to [@GlobalScope.KEY\_NONE](class_@globalscope.md#class-globalscope-constant-key-none)) will be assigned to the item (which means it won't have any accelerator). See [get\_item\_accelerator()](#class-popupmenu-method-get-item-accelerator) for more info on accelerators.

```
func _ready():
    add_multistate_item("Item", 3, 0)

    index_pressed.connect(func(index: int):
            toggle_item_multistate(index)
            match get_item_multistate(index):
                0:
                    print("First state")
                1:
                    print("Second state")
                2:
                    print("Third state")
        )

```

**Note:** Multistate items don't update their state automatically and must be done manually. See [toggle\_item\_multistate()](#class-popupmenu-method-toggle-item-multistate), [set\_item\_multistate()](#class-popupmenu-method-set-item-multistate) and [get\_item\_multistate()](#class-popupmenu-method-get-item-multistate) for more info on how to control it.

* * *

void **add\_radio\_check\_item**(label: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1, accel: [Key](class_@globalscope.md#enum-globalscope-key) = 0) [🔗](#class-popupmenu-method-add-radio-check-item)

Adds a new radio check button with text `label`.

An `id` can optionally be provided, as well as an accelerator ( `accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided, then the default value of 0 (corresponding to [@GlobalScope.KEY\_NONE](class_@globalscope.md#class-globalscope-constant-key-none)) will be assigned to the item (which means it won't have any accelerator). See [get\_item\_accelerator()](#class-popupmenu-method-get-item-accelerator) for more info on accelerators.

**Note:** Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See [set\_item\_checked()](#class-popupmenu-method-set-item-checked) for more info on how to control it.

* * *

void **add\_radio\_check\_shortcut**(shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false) [🔗](#class-popupmenu-method-add-radio-check-shortcut)

Adds a new radio check button and assigns a [Shortcut](class_shortcut.md#class-shortcut) to it. Sets the label of the checkbox to the [Shortcut](class_shortcut.md#class-shortcut)'s name.

An `id` can optionally be provided. If no `id` is provided, one will be created from the index.

**Note:** Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See [set\_item\_checked()](#class-popupmenu-method-set-item-checked) for more info on how to control it.

* * *

void **add\_separator**(label: [String](class_string.md#class-string) = "", id: [int](class_int.md#class-int) = -1) [🔗](#class-popupmenu-method-add-separator)

Adds a separator between items. Separators also occupy an index, which you can set by using the `id` parameter.

A `label` can optionally be provided, which will appear at the center of the separator.

* * *

void **add\_shortcut**(shortcut: [Shortcut](class_shortcut.md#class-shortcut), id: [int](class_int.md#class-int) = -1, global: [bool](class_bool.md#class-bool) = false, allow\_echo: [bool](class_bool.md#class-bool) = false) [🔗](#class-popupmenu-method-add-shortcut)

Adds a [Shortcut](class_shortcut.md#class-shortcut).

An `id` can optionally be provided. If no `id` is provided, one will be created from the index.

If `allow_echo` is `true`, the shortcut can be activated with echo events.

* * *

void **add\_submenu\_item**(label: [String](class_string.md#class-string), submenu: [String](class_string.md#class-string), id: [int](class_int.md#class-int) = -1) [🔗](#class-popupmenu-method-add-submenu-item)

**Deprecated:** Prefer using [add\_submenu\_node\_item()](#class-popupmenu-method-add-submenu-node-item) instead.

Adds an item that will act as a submenu of the parent **PopupMenu** node when clicked. The `submenu` argument must be the name of an existing **PopupMenu** that has been added as a child to this node. This submenu will be shown when the item is clicked, hovered for long enough, or activated using the `ui_select` or `ui_right` input actions.

An `id` can optionally be provided. If no `id` is provided, one will be created from the index.

* * *

void **add\_submenu\_node\_item**(label: [String](class_string.md#class-string), submenu: [PopupMenu](#class-popupmenu), id: [int](class_int.md#class-int) = -1) [🔗](#class-popupmenu-method-add-submenu-node-item)

Adds an item that will act as a submenu of the parent **PopupMenu** node when clicked. This submenu will be shown when the item is clicked, hovered for long enough, or activated using the `ui_select` or `ui_right` input actions.

`submenu` must be either child of this **PopupMenu** or has no parent node (in which case it will be automatically added as a child). If the `submenu` popup has another parent, this method will fail.

An `id` can optionally be provided. If no `id` is provided, one will be created from the index.

* * *

void **clear**(free\_submenus: [bool](class_bool.md#class-bool) = false) [🔗](#class-popupmenu-method-clear)

Removes all items from the **PopupMenu**. If `free_submenus` is `true`, the submenu nodes are automatically freed.

* * *

[int](class_int.md#class-int) **get\_focused\_item**() const [🔗](#class-popupmenu-method-get-focused-item)

Returns the index of the currently focused item. Returns `-1` if no item is focused.

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **get\_item\_accelerator**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-accelerator)

Returns the accelerator of the item at the given `index`. An accelerator is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The return value is an integer which is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`). If no accelerator is defined for the specified `index`, [get\_item\_accelerator()](#class-popupmenu-method-get-item-accelerator) returns `0` (corresponding to [@GlobalScope.KEY\_NONE](class_@globalscope.md#class-globalscope-constant-key-none)).

* * *

[AutoTranslateMode](class_node.md#enum-node-autotranslatemode) **get\_item\_auto\_translate\_mode**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-auto-translate-mode)

Returns the auto translate mode of the item at the given `index`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_item\_icon**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-icon)

Returns the icon of the item at the given `index`.

* * *

[int](class_int.md#class-int) **get\_item\_icon\_max\_width**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-icon-max-width)

Returns the maximum allowed width of the icon for the item at the given `index`.

* * *

[Color](class_color.md#class-color) **get\_item\_icon\_modulate**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-icon-modulate)

Returns a [Color](class_color.md#class-color) modulating the item's icon at the given `index`.

* * *

[int](class_int.md#class-int) **get\_item\_id**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-id)

Returns the ID of the item at the given `index`. `id` can be manually assigned, while index can not.

* * *

[int](class_int.md#class-int) **get\_item\_indent**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-indent)

Returns the horizontal offset of the item at the given `index`.

* * *

[int](class_int.md#class-int) **get\_item\_index**(id: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-index)

Returns the index of the item containing the specified `id`. Index is automatically assigned to each item by the engine and can not be set manually.

* * *

[String](class_string.md#class-string) **get\_item\_language**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-language)

Returns item's text language code.

* * *

[Variant](class_variant.md#class-variant) **get\_item\_metadata**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-metadata)

Returns the metadata of the specified item, which might be of any type. You can set it with [set\_item\_metadata()](#class-popupmenu-method-set-item-metadata), which provides a simple way of assigning context data to items.

* * *

[int](class_int.md#class-int) **get\_item\_multistate**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-multistate)

Returns the state of the item at the given `index`.

* * *

[int](class_int.md#class-int) **get\_item\_multistate\_max**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-multistate-max)

Returns the max states of the item at the given `index`.

* * *

[Shortcut](class_shortcut.md#class-shortcut) **get\_item\_shortcut**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-shortcut)

Returns the [Shortcut](class_shortcut.md#class-shortcut) associated with the item at the given `index`.

* * *

[String](class_string.md#class-string) **get\_item\_submenu**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-submenu)

**Deprecated:** Prefer using [get\_item\_submenu\_node()](#class-popupmenu-method-get-item-submenu-node) instead.

Returns the submenu name of the item at the given `index`. See [add\_submenu\_item()](#class-popupmenu-method-add-submenu-item) for more info on how to add a submenu.

* * *

[PopupMenu](#class-popupmenu) **get\_item\_submenu\_node**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-submenu-node)

Returns the submenu of the item at the given `index`, or `null` if no submenu was added. See [add\_submenu\_node\_item()](#class-popupmenu-method-add-submenu-node-item) for more info on how to add a submenu.

* * *

[String](class_string.md#class-string) **get\_item\_text**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-text)

Returns the text of the item at the given `index`.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **get\_item\_text\_direction**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-text-direction)

Returns item's text base writing direction.

* * *

[String](class_string.md#class-string) **get\_item\_tooltip**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-get-item-tooltip)

Returns the tooltip associated with the item at the given `index`.

* * *

[bool](class_bool.md#class-bool) **is\_item\_checkable**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-is-item-checkable)

Returns `true` if the item at the given `index` is checkable in some way, i.e. if it has a checkbox or radio button.

**Note:** Checkable items just display a checkmark or radio button, but don't have any built-in checking behavior and must be checked/unchecked manually.

* * *

[bool](class_bool.md#class-bool) **is\_item\_checked**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-is-item-checked)

Returns `true` if the item at the given `index` is checked.

* * *

[bool](class_bool.md#class-bool) **is\_item\_disabled**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-is-item-disabled)

Returns `true` if the item at the given `index` is disabled. When it is disabled it can't be selected, or its action invoked.

See [set\_item\_disabled()](#class-popupmenu-method-set-item-disabled) for more info on how to disable an item.

* * *

[bool](class_bool.md#class-bool) **is\_item\_radio\_checkable**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-is-item-radio-checkable)

Returns `true` if the item at the given `index` has radio button-style checkability.

**Note:** This is purely cosmetic; you must add the logic for checking/unchecking items in radio groups.

* * *

[bool](class_bool.md#class-bool) **is\_item\_separator**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-is-item-separator)

Returns `true` if the item is a separator. If it is, it will be displayed as a line. See [add\_separator()](#class-popupmenu-method-add-separator) for more info on how to add a separator.

* * *

[bool](class_bool.md#class-bool) **is\_item\_shortcut\_disabled**(index: [int](class_int.md#class-int)) const [🔗](#class-popupmenu-method-is-item-shortcut-disabled)

Returns `true` if the specified item's shortcut is disabled.

* * *

[bool](class_bool.md#class-bool) **is\_native\_menu**() const [🔗](#class-popupmenu-method-is-native-menu)

Returns `true` if the system native menu is supported and currently used by this **PopupMenu**.

* * *

[bool](class_bool.md#class-bool) **is\_system\_menu**() const [🔗](#class-popupmenu-method-is-system-menu)

Returns `true` if the menu is bound to the special system menu.

* * *

void **remove\_item**(index: [int](class_int.md#class-int)) [🔗](#class-popupmenu-method-remove-item)

Removes the item at the given `index` from the menu.

**Note:** The indices of items after the removed item will be shifted by one.

* * *

void **scroll\_to\_item**(index: [int](class_int.md#class-int)) [🔗](#class-popupmenu-method-scroll-to-item)

Moves the scroll view to make the item at the given `index` visible.

* * *

void **set\_focused\_item**(index: [int](class_int.md#class-int)) [🔗](#class-popupmenu-method-set-focused-item)

Sets the currently focused item as the given `index`.

Passing `-1` as the index makes so that no item is focused.

* * *

void **set\_item\_accelerator**(index: [int](class_int.md#class-int), accel: [Key](class_@globalscope.md#enum-globalscope-key)) [🔗](#class-popupmenu-method-set-item-accelerator)

Sets the accelerator of the item at the given `index`. An accelerator is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. `accel` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

* * *

void **set\_item\_as\_checkable**(index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-popupmenu-method-set-item-as-checkable)

Sets whether the item at the given `index` has a checkbox. If `false`, sets the type of the item to plain text.

**Note:** Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.

* * *

void **set\_item\_as\_radio\_checkable**(index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-popupmenu-method-set-item-as-radio-checkable)

Sets the type of the item at the given `index` to radio button. If `false`, sets the type of the item to plain text.

* * *

void **set\_item\_as\_separator**(index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-popupmenu-method-set-item-as-separator)

Mark the item at the given `index` as a separator, which means that it would be displayed as a line. If `false`, sets the type of the item to plain text.

* * *

void **set\_item\_auto\_translate\_mode**(index: [int](class_int.md#class-int), mode: [AutoTranslateMode](class_node.md#enum-node-autotranslatemode)) [🔗](#class-popupmenu-method-set-item-auto-translate-mode)

Sets the auto translate mode of the item at the given `index`.

Items use [Node.AUTO\_TRANSLATE\_MODE\_INHERIT](class_node.md#class-node-constant-auto-translate-mode-inherit) by default, which uses the same auto translate mode as the **PopupMenu** itself.

* * *

void **set\_item\_checked**(index: [int](class_int.md#class-int), checked: [bool](class_bool.md#class-bool)) [🔗](#class-popupmenu-method-set-item-checked)

Sets the checkstate status of the item at the given `index`.

* * *

void **set\_item\_disabled**(index: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-popupmenu-method-set-item-disabled)

Enables/disables the item at the given `index`. When it is disabled, it can't be selected and its action can't be invoked.

* * *

void **set\_item\_icon**(index: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-popupmenu-method-set-item-icon)

Replaces the [Texture2D](class_texture2d.md#class-texture2d) icon of the item at the given `index`.

* * *

void **set\_item\_icon\_max\_width**(index: [int](class_int.md#class-int), width: [int](class_int.md#class-int)) [🔗](#class-popupmenu-method-set-item-icon-max-width)

Sets the maximum allowed width of the icon for the item at the given `index`. This limit is applied on top of the default size of the icon and on top of [icon\_max\_width](#class-popupmenu-theme-constant-icon-max-width). The height is adjusted according to the icon's ratio.

* * *

void **set\_item\_icon\_modulate**(index: [int](class_int.md#class-int), modulate: [Color](class_color.md#class-color)) [🔗](#class-popupmenu-method-set-item-icon-modulate)

Sets a modulating [Color](class_color.md#class-color) of the item's icon at the given `index`.

* * *

void **set\_item\_id**(index: [int](class_int.md#class-int), id: [int](class_int.md#class-int)) [🔗](#class-popupmenu-method-set-item-id)

Sets the `id` of the item at the given `index`.

The `id` is used in [id\_pressed](#class-popupmenu-signal-id-pressed) and [id\_focused](#class-popupmenu-signal-id-focused) signals.

* * *

void **set\_item\_indent**(index: [int](class_int.md#class-int), indent: [int](class_int.md#class-int)) [🔗](#class-popupmenu-method-set-item-indent)

Sets the horizontal offset of the item at the given `index`.

* * *

void **set\_item\_language**(index: [int](class_int.md#class-int), language: [String](class_string.md#class-string)) [🔗](#class-popupmenu-method-set-item-language)

Sets language code of item's text used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

void **set\_item\_metadata**(index: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) [🔗](#class-popupmenu-method-set-item-metadata)

Sets the metadata of an item, which may be of any type. You can later get it with [get\_item\_metadata()](#class-popupmenu-method-get-item-metadata), which provides a simple way of assigning context data to items.

* * *

void **set\_item\_multistate**(index: [int](class_int.md#class-int), state: [int](class_int.md#class-int)) [🔗](#class-popupmenu-method-set-item-multistate)

Sets the state of a multistate item. See [add\_multistate\_item()](#class-popupmenu-method-add-multistate-item) for details.

* * *

void **set\_item\_multistate\_max**(index: [int](class_int.md#class-int), max\_states: [int](class_int.md#class-int)) [🔗](#class-popupmenu-method-set-item-multistate-max)

Sets the max states of a multistate item. See [add\_multistate\_item()](#class-popupmenu-method-add-multistate-item) for details.

* * *

void **set\_item\_shortcut**(index: [int](class_int.md#class-int), shortcut: [Shortcut](class_shortcut.md#class-shortcut), global: [bool](class_bool.md#class-bool) = false) [🔗](#class-popupmenu-method-set-item-shortcut)

Sets a [Shortcut](class_shortcut.md#class-shortcut) for the item at the given `index`.

* * *

void **set\_item\_shortcut\_disabled**(index: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-popupmenu-method-set-item-shortcut-disabled)

Disables the [Shortcut](class_shortcut.md#class-shortcut) of the item at the given `index`.

* * *

void **set\_item\_submenu**(index: [int](class_int.md#class-int), submenu: [String](class_string.md#class-string)) [🔗](#class-popupmenu-method-set-item-submenu)

**Deprecated:** Prefer using [set\_item\_submenu\_node()](#class-popupmenu-method-set-item-submenu-node) instead.

Sets the submenu of the item at the given `index`. The submenu is the name of a child **PopupMenu** node that would be shown when the item is clicked.

* * *

void **set\_item\_submenu\_node**(index: [int](class_int.md#class-int), submenu: [PopupMenu](#class-popupmenu)) [🔗](#class-popupmenu-method-set-item-submenu-node)

Sets the submenu of the item at the given `index`. The submenu is a **PopupMenu** node that would be shown when the item is clicked. It must either be a child of this **PopupMenu** or has no parent (in which case it will be automatically added as a child). If the `submenu` popup has another parent, this method will fail.

* * *

void **set\_item\_text**(index: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) [🔗](#class-popupmenu-method-set-item-text)

Sets the text of the item at the given `index`.

* * *

void **set\_item\_text\_direction**(index: [int](class_int.md#class-int), direction: [TextDirection](class_control.md#enum-control-textdirection)) [🔗](#class-popupmenu-method-set-item-text-direction)

Sets item's text base writing direction.

* * *

void **set\_item\_tooltip**(index: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-popupmenu-method-set-item-tooltip)

Sets the [String](class_string.md#class-string) tooltip of the item at the given `index`.

* * *

void **toggle\_item\_checked**(index: [int](class_int.md#class-int)) [🔗](#class-popupmenu-method-toggle-item-checked)

Toggles the check state of the item at the given `index`.

* * *

void **toggle\_item\_multistate**(index: [int](class_int.md#class-int)) [🔗](#class-popupmenu-method-toggle-item-multistate)

Cycle to the next state of a multistate item. See [add\_multistate\_item()](#class-popupmenu-method-add-multistate-item) for details.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **font\_accelerator\_color** = `Color(0.7, 0.7, 0.7, 0.8)` [🔗](#class-popupmenu-theme-color-font-accelerator-color)

The text [Color](class_color.md#class-color) used for shortcuts and accelerators that show next to the menu item name when defined. See [get\_item\_accelerator()](#class-popupmenu-method-get-item-accelerator) for more info on accelerators.

* * *

[Color](class_color.md#class-color) **font\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-popupmenu-theme-color-font-color)

The default text [Color](class_color.md#class-color) for menu items' names.

* * *

[Color](class_color.md#class-color) **font\_disabled\_color** = `Color(0.4, 0.4, 0.4, 0.8)` [🔗](#class-popupmenu-theme-color-font-disabled-color)

[Color](class_color.md#class-color) used for disabled menu items' text.

* * *

[Color](class_color.md#class-color) **font\_hover\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-popupmenu-theme-color-font-hover-color)

[Color](class_color.md#class-color) used for the hovered text.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-popupmenu-theme-color-font-outline-color)

The tint of text outline of the menu item.

* * *

[Color](class_color.md#class-color) **font\_separator\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-popupmenu-theme-color-font-separator-color)

[Color](class_color.md#class-color) used for labeled separators' text. See [add\_separator()](#class-popupmenu-method-add-separator).

* * *

[Color](class_color.md#class-color) **font\_separator\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-popupmenu-theme-color-font-separator-outline-color)

The tint of text outline of the labeled separator.

* * *

[int](class_int.md#class-int) **h\_separation** = `4` [🔗](#class-popupmenu-theme-constant-h-separation)

The horizontal space between the item's elements.

* * *

[int](class_int.md#class-int) **icon\_max\_width** = `0` [🔗](#class-popupmenu-theme-constant-icon-max-width)

The maximum allowed width of the item's icon. This limit is applied on top of the default size of the icon, but before the value set with [set\_item\_icon\_max\_width()](#class-popupmenu-method-set-item-icon-max-width). The height is adjusted according to the icon's ratio.

* * *

[int](class_int.md#class-int) **indent** = `10` [🔗](#class-popupmenu-theme-constant-indent)

Width of the single indentation level.

* * *

[int](class_int.md#class-int) **item\_end\_padding** = `2` [🔗](#class-popupmenu-theme-constant-item-end-padding)

Horizontal padding to the right of the items (or left, in RTL layout).

* * *

[int](class_int.md#class-int) **item\_start\_padding** = `2` [🔗](#class-popupmenu-theme-constant-item-start-padding)

Horizontal padding to the left of the items (or right, in RTL layout).

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-popupmenu-theme-constant-outline-size)

The size of the item text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-popupmenu-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[int](class_int.md#class-int) **separator\_outline\_size** = `0` [🔗](#class-popupmenu-theme-constant-separator-outline-size)

The size of the labeled separator text outline.

* * *

[int](class_int.md#class-int) **v\_separation** = `4` [🔗](#class-popupmenu-theme-constant-v-separation)

The vertical space between each menu item.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-popupmenu-theme-font-font)

[Font](class_font.md#class-font) used for the menu items.

* * *

[Font](class_font.md#class-font) **font\_separator** [🔗](#class-popupmenu-theme-font-font-separator)

[Font](class_font.md#class-font) used for the labeled separator.

* * *

[int](class_int.md#class-int) **font\_separator\_size** [🔗](#class-popupmenu-theme-font-size-font-separator-size)

Font size of the labeled separator.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-popupmenu-theme-font-size-font-size)

Font size of the menu items.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **checked** [🔗](#class-popupmenu-theme-icon-checked)

[Texture2D](class_texture2d.md#class-texture2d) icon for the checked checkbox items.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **checked\_disabled** [🔗](#class-popupmenu-theme-icon-checked-disabled)

[Texture2D](class_texture2d.md#class-texture2d) icon for the checked checkbox items when they are disabled.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **radio\_checked** [🔗](#class-popupmenu-theme-icon-radio-checked)

[Texture2D](class_texture2d.md#class-texture2d) icon for the checked radio button items.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **radio\_checked\_disabled** [🔗](#class-popupmenu-theme-icon-radio-checked-disabled)

[Texture2D](class_texture2d.md#class-texture2d) icon for the checked radio button items when they are disabled.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **radio\_unchecked** [🔗](#class-popupmenu-theme-icon-radio-unchecked)

[Texture2D](class_texture2d.md#class-texture2d) icon for the unchecked radio button items.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **radio\_unchecked\_disabled** [🔗](#class-popupmenu-theme-icon-radio-unchecked-disabled)

[Texture2D](class_texture2d.md#class-texture2d) icon for the unchecked radio button items when they are disabled.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **submenu** [🔗](#class-popupmenu-theme-icon-submenu)

[Texture2D](class_texture2d.md#class-texture2d) icon for the submenu arrow (for left-to-right layouts).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **submenu\_mirrored** [🔗](#class-popupmenu-theme-icon-submenu-mirrored)

[Texture2D](class_texture2d.md#class-texture2d) icon for the submenu arrow (for right-to-left layouts).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **unchecked** [🔗](#class-popupmenu-theme-icon-unchecked)

[Texture2D](class_texture2d.md#class-texture2d) icon for the unchecked checkbox items.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **unchecked\_disabled** [🔗](#class-popupmenu-theme-icon-unchecked-disabled)

[Texture2D](class_texture2d.md#class-texture2d) icon for the unchecked checkbox items when they are disabled.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hover** [🔗](#class-popupmenu-theme-style-hover)

[StyleBox](class_stylebox.md#class-stylebox) displayed when the **PopupMenu** item is hovered.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **labeled\_separator\_left** [🔗](#class-popupmenu-theme-style-labeled-separator-left)

[StyleBox](class_stylebox.md#class-stylebox) for the left side of labeled separator. See [add\_separator()](#class-popupmenu-method-add-separator).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **labeled\_separator\_right** [🔗](#class-popupmenu-theme-style-labeled-separator-right)

[StyleBox](class_stylebox.md#class-stylebox) for the right side of labeled separator. See [add\_separator()](#class-popupmenu-method-add-separator).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel** [🔗](#class-popupmenu-theme-style-panel)

[StyleBox](class_stylebox.md#class-stylebox) for the background panel.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **separator** [🔗](#class-popupmenu-theme-style-separator)

[StyleBox](class_stylebox.md#class-stylebox) used for the separators. See [add\_separator()](#class-popupmenu-method-add-separator).

[Previous](class_popup.md "Popup") [Next](class_popuppanel.md "PopupPanel")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_popup.md "Popup") [Next](class_popuppanel.md "PopupPanel")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).