---
title: MenuBar — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_menubar.html
crawled_at: "2026-08-13T10:26:32+12:00"
content_hash: 3e606a370a01c52ec41d909d19ddc2c948b337e6f76e45aec7f94f96610eec4b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MenuBar

* * *

# MenuBar

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A horizontal menu bar that creates a menu for each [PopupMenu](class_popupmenu.md#class-popupmenu) child.

## Description

A horizontal menu bar that creates a menu for each [PopupMenu](class_popupmenu.md#class-popupmenu) child. New items are created by adding [PopupMenu](class_popupmenu.md#class-popupmenu) s to this node. Item title is determined by [Window.title](class_window.md#class-window-property-title), or node name if [Window.title](class_window.md#class-window-property-title) is empty. Item title can be overridden using [set\_menu\_title()](#class-menubar-method-set-menu-title).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [flat](#class-menubar-property-flat) | `false` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `3` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [String](class_string.md#class-string) | [language](#class-menubar-property-language) | `""` |
| [bool](class_bool.md#class-bool) | [prefer\_global\_menu](#class-menubar-property-prefer-global-menu) | `true` |
| [int](class_int.md#class-int) | [start\_index](#class-menubar-property-start-index) | `-1` |
| [bool](class_bool.md#class-bool) | [switch\_on\_hover](#class-menubar-property-switch-on-hover) | `true` |
| [TextDirection](class_control.md#enum-control-textdirection) | [text\_direction](#class-menubar-property-text-direction) | `0` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_menu\_count](#class-menubar-method-get-menu-count)() const |
| [PopupMenu](class_popupmenu.md#class-popupmenu) | [get\_menu\_popup](#class-menubar-method-get-menu-popup)(menu: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_menu\_title](#class-menubar-method-get-menu-title)(menu: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_menu\_tooltip](#class-menubar-method-get-menu-tooltip)(menu: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_menu\_disabled](#class-menubar-method-is-menu-disabled)(menu: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_menu\_hidden](#class-menubar-method-is-menu-hidden)(menu: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_native\_menu](#class-menubar-method-is-native-menu)() const |
| void | [set\_disable\_shortcuts](#class-menubar-method-set-disable-shortcuts)(disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_menu\_disabled](#class-menubar-method-set-menu-disabled)(menu: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_menu\_hidden](#class-menubar-method-set-menu-hidden)(menu: [int](class_int.md#class-int), hidden: [bool](class_bool.md#class-bool)) |
| void | [set\_menu\_title](#class-menubar-method-set-menu-title)(menu: [int](class_int.md#class-int), title: [String](class_string.md#class-string)) |
| void | [set\_menu\_tooltip](#class-menubar-method-set-menu-tooltip)(menu: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [font\_color](#class-menubar-theme-color-font-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [font\_disabled\_color](#class-menubar-theme-color-font-disabled-color) | `Color(0.875, 0.875, 0.875, 0.5)` |
| [Color](class_color.md#class-color) | [font\_focus\_color](#class-menubar-theme-color-font-focus-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_hover\_color](#class-menubar-theme-color-font-hover-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_hover\_pressed\_color](#class-menubar-theme-color-font-hover-pressed-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-menubar-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_pressed\_color](#class-menubar-theme-color-font-pressed-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [h\_separation](#class-menubar-theme-constant-h-separation) | `4` |
| [int](class_int.md#class-int) | [outline\_size](#class-menubar-theme-constant-outline-size) | `0` |
| [Font](class_font.md#class-font) | [font](#class-menubar-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-menubar-theme-font-size-font-size) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [disabled](#class-menubar-theme-style-disabled) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [disabled\_mirrored](#class-menubar-theme-style-disabled-mirrored) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hover](#class-menubar-theme-style-hover) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hover\_mirrored](#class-menubar-theme-style-hover-mirrored) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hover\_pressed](#class-menubar-theme-style-hover-pressed) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hover\_pressed\_mirrored](#class-menubar-theme-style-hover-pressed-mirrored) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [normal](#class-menubar-theme-style-normal) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [normal\_mirrored](#class-menubar-theme-style-normal-mirrored) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [pressed](#class-menubar-theme-style-pressed) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [pressed\_mirrored](#class-menubar-theme-style-pressed-mirrored) |  |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **flat** = `false` [🔗](#class-menubar-property-flat)

- void **set\_flat**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flat**()


Flat **MenuBar** don't display item decoration.

* * *

[String](class_string.md#class-string) **language** = `""` [🔗](#class-menubar-property-language)

- void **set\_language**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_language**()


Language code used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

[bool](class_bool.md#class-bool) **prefer\_global\_menu** = `true` [🔗](#class-menubar-property-prefer-global-menu)

- void **set\_prefer\_global\_menu**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_prefer\_global\_menu**()


If `true`, **MenuBar** will use system global menu when supported.

**Note:** If `true` and global menu is supported, this node is not displayed, has zero size, and all its child nodes except [PopupMenu](class_popupmenu.md#class-popupmenu) s are inaccessible.

**Note:** This property overrides the value of the [PopupMenu.prefer\_native\_menu](class_popupmenu.md#class-popupmenu-property-prefer-native-menu) property of the child nodes.

* * *

[int](class_int.md#class-int) **start\_index** = `-1` [🔗](#class-menubar-property-start-index)

- void **set\_start\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_start\_index**()


Position order in the global menu to insert **MenuBar** items at. All menu items in the **MenuBar** are always inserted as a continuous range. Menus with lower [start\_index](#class-menubar-property-start-index) are inserted first. Menus with [start\_index](#class-menubar-property-start-index) equal to `-1` are inserted last.

* * *

[bool](class_bool.md#class-bool) **switch\_on\_hover** = `true` [🔗](#class-menubar-property-switch-on-hover)

- void **set\_switch\_on\_hover**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_switch\_on\_hover**()


If `true`, when the cursor hovers above menu item, it will close the current [PopupMenu](class_popupmenu.md#class-popupmenu) and open the other one.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **text\_direction** = `0` [🔗](#class-menubar-property-text-direction)

- void **set\_text\_direction**(value: [TextDirection](class_control.md#enum-control-textdirection))

- [TextDirection](class_control.md#enum-control-textdirection) **get\_text\_direction**()


Base text writing direction.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_menu\_count**() const [🔗](#class-menubar-method-get-menu-count)

Returns number of menu items.

* * *

[PopupMenu](class_popupmenu.md#class-popupmenu) **get\_menu\_popup**(menu: [int](class_int.md#class-int)) const [🔗](#class-menubar-method-get-menu-popup)

Returns [PopupMenu](class_popupmenu.md#class-popupmenu) associated with menu item.

* * *

[String](class_string.md#class-string) **get\_menu\_title**(menu: [int](class_int.md#class-int)) const [🔗](#class-menubar-method-get-menu-title)

Returns menu item title.

* * *

[String](class_string.md#class-string) **get\_menu\_tooltip**(menu: [int](class_int.md#class-int)) const [🔗](#class-menubar-method-get-menu-tooltip)

Returns menu item tooltip.

* * *

[bool](class_bool.md#class-bool) **is\_menu\_disabled**(menu: [int](class_int.md#class-int)) const [🔗](#class-menubar-method-is-menu-disabled)

Returns `true`, if menu item is disabled.

* * *

[bool](class_bool.md#class-bool) **is\_menu\_hidden**(menu: [int](class_int.md#class-int)) const [🔗](#class-menubar-method-is-menu-hidden)

Returns `true`, if menu item is hidden.

* * *

[bool](class_bool.md#class-bool) **is\_native\_menu**() const [🔗](#class-menubar-method-is-native-menu)

Returns `true`, if system global menu is supported and used by this **MenuBar**.

* * *

void **set\_disable\_shortcuts**(disabled: [bool](class_bool.md#class-bool)) [🔗](#class-menubar-method-set-disable-shortcuts)

If `true`, shortcuts are disabled and cannot be used to trigger the button.

* * *

void **set\_menu\_disabled**(menu: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-menubar-method-set-menu-disabled)

If `true`, menu item is disabled.

* * *

void **set\_menu\_hidden**(menu: [int](class_int.md#class-int), hidden: [bool](class_bool.md#class-bool)) [🔗](#class-menubar-method-set-menu-hidden)

If `true`, menu item is hidden.

* * *

void **set\_menu\_title**(menu: [int](class_int.md#class-int), title: [String](class_string.md#class-string)) [🔗](#class-menubar-method-set-menu-title)

Sets menu item title.

* * *

void **set\_menu\_tooltip**(menu: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-menubar-method-set-menu-tooltip)

Sets menu item tooltip.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **font\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-menubar-theme-color-font-color)

Default text [Color](class_color.md#class-color) of the menu item.

* * *

[Color](class_color.md#class-color) **font\_disabled\_color** = `Color(0.875, 0.875, 0.875, 0.5)` [🔗](#class-menubar-theme-color-font-disabled-color)

Text [Color](class_color.md#class-color) used when the menu item is disabled.

* * *

[Color](class_color.md#class-color) **font\_focus\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-menubar-theme-color-font-focus-color)

Text [Color](class_color.md#class-color) used when the menu item is focused. Only replaces the normal text color of the menu item. Disabled, hovered, and pressed states take precedence over this color.

* * *

[Color](class_color.md#class-color) **font\_hover\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-menubar-theme-color-font-hover-color)

Text [Color](class_color.md#class-color) used when the menu item is being hovered.

* * *

[Color](class_color.md#class-color) **font\_hover\_pressed\_color** = `Color(1, 1, 1, 1)` [🔗](#class-menubar-theme-color-font-hover-pressed-color)

Text [Color](class_color.md#class-color) used when the menu item is being hovered and pressed.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-menubar-theme-color-font-outline-color)

The tint of text outline of the menu item.

* * *

[Color](class_color.md#class-color) **font\_pressed\_color** = `Color(1, 1, 1, 1)` [🔗](#class-menubar-theme-color-font-pressed-color)

Text [Color](class_color.md#class-color) used when the menu item is being pressed.

* * *

[int](class_int.md#class-int) **h\_separation** = `4` [🔗](#class-menubar-theme-constant-h-separation)

The horizontal space between menu items.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-menubar-theme-constant-outline-size)

The size of the text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-menubar-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-menubar-theme-font-font)

[Font](class_font.md#class-font) of the menu item's text.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-menubar-theme-font-size-font-size)

Font size of the menu item's text.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **disabled** [🔗](#class-menubar-theme-style-disabled)

[StyleBox](class_stylebox.md#class-stylebox) used when the menu item is disabled.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **disabled\_mirrored** [🔗](#class-menubar-theme-style-disabled-mirrored)

[StyleBox](class_stylebox.md#class-stylebox) used when the menu item is disabled (for right-to-left layouts).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hover** [🔗](#class-menubar-theme-style-hover)

[StyleBox](class_stylebox.md#class-stylebox) used when the menu item is being hovered.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hover\_mirrored** [🔗](#class-menubar-theme-style-hover-mirrored)

[StyleBox](class_stylebox.md#class-stylebox) used when the menu item is being hovered (for right-to-left layouts).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hover\_pressed** [🔗](#class-menubar-theme-style-hover-pressed)

[StyleBox](class_stylebox.md#class-stylebox) used when the menu item is being pressed and hovered at the same time.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hover\_pressed\_mirrored** [🔗](#class-menubar-theme-style-hover-pressed-mirrored)

[StyleBox](class_stylebox.md#class-stylebox) used when the menu item is being pressed and hovered at the same time (for right-to-left layouts).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **normal** [🔗](#class-menubar-theme-style-normal)

Default [StyleBox](class_stylebox.md#class-stylebox) for the menu item.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **normal\_mirrored** [🔗](#class-menubar-theme-style-normal-mirrored)

Default [StyleBox](class_stylebox.md#class-stylebox) for the menu item (for right-to-left layouts).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **pressed** [🔗](#class-menubar-theme-style-pressed)

[StyleBox](class_stylebox.md#class-stylebox) used when the menu item is being pressed.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **pressed\_mirrored** [🔗](#class-menubar-theme-style-pressed-mirrored)

[StyleBox](class_stylebox.md#class-stylebox) used when the menu item is being pressed (for right-to-left layouts).

[Previous](class_marker3d.md "Marker3D") [Next](class_menubutton.md "MenuButton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_marker3d.md "Marker3D") [Next](class_menubutton.md "MenuButton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).