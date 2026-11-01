---
title: NativeMenu — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_nativemenu.html
crawled_at: "2026-08-13T10:34:41+12:00"
content_hash: 96c38b7fb0ecc52e2a97260665372c262c0908fe39d4863a802db5dc155b9462
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NativeMenu

* * *

# NativeMenu

**Inherits:** [Object](class_object.md#class-object)

A server interface for OS native menus.

## Description

**NativeMenu** handles low-level access to the OS native global menu bar and popup menus.

**Note:** This is low-level API, consider using [MenuBar](class_menubar.md#class-menubar) with [MenuBar.prefer\_global\_menu](class_menubar.md#class-menubar-property-prefer-global-menu) set to `true`, and [PopupMenu](class_popupmenu.md#class-popupmenu) with [PopupMenu.prefer\_native\_menu](class_popupmenu.md#class-popupmenu-property-prefer-native-menu) set to `true`.

To create a menu, use [create\_menu()](#class-nativemenu-method-create-menu), add menu items using `add_*_item` methods. To remove a menu, use [free\_menu()](#class-nativemenu-method-free-menu).

```
var menu

func _menu_callback(item_id):
    if item_id == "ITEM_CUT":
        cut()
    elif item_id == "ITEM_COPY":
        copy()
    elif item_id == "ITEM_PASTE":
        paste()

func _enter_tree():
    # Create new menu and add items:
    menu = NativeMenu.create_menu()
    NativeMenu.add_item(menu, "Cut", _menu_callback, Callable(), "ITEM_CUT")
    NativeMenu.add_item(menu, "Copy", _menu_callback, Callable(), "ITEM_COPY")
    NativeMenu.add_separator(menu)
    NativeMenu.add_item(menu, "Paste", _menu_callback, Callable(), "ITEM_PASTE")

func _on_button_pressed():
    # Show popup menu at mouse position:
    NativeMenu.popup(menu, DisplayServer.mouse_get_position())

func _exit_tree():
    # Remove menu when it's no longer needed:
    NativeMenu.free_menu(menu)

```

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [add\_check\_item](#class-nativemenu-method-add-check-item)(rid: [RID](class_rid.md#class-rid), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [add\_icon\_check\_item](#class-nativemenu-method-add-icon-check-item)(rid: [RID](class_rid.md#class-rid), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [add\_icon\_item](#class-nativemenu-method-add-icon-item)(rid: [RID](class_rid.md#class-rid), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [add\_icon\_radio\_check\_item](#class-nativemenu-method-add-icon-radio-check-item)(rid: [RID](class_rid.md#class-rid), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [add\_item](#class-nativemenu-method-add-item)(rid: [RID](class_rid.md#class-rid), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [add\_multistate\_item](#class-nativemenu-method-add-multistate-item)(rid: [RID](class_rid.md#class-rid), label: [String](class_string.md#class-string), max\_states: [int](class_int.md#class-int), default\_state: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [add\_radio\_check\_item](#class-nativemenu-method-add-radio-check-item)(rid: [RID](class_rid.md#class-rid), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [add\_separator](#class-nativemenu-method-add-separator)(rid: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [add\_submenu\_item](#class-nativemenu-method-add-submenu-item)(rid: [RID](class_rid.md#class-rid), label: [String](class_string.md#class-string), submenu\_rid: [RID](class_rid.md#class-rid), tag: [Variant](class_variant.md#class-variant) = null, index: [int](class_int.md#class-int) = -1) |
| void | [clear](#class-nativemenu-method-clear)(rid: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [create\_menu](#class-nativemenu-method-create-menu)() |
| [int](class_int.md#class-int) | [find\_item\_index\_with\_submenu](#class-nativemenu-method-find-item-index-with-submenu)(rid: [RID](class_rid.md#class-rid), submenu\_rid: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [find\_item\_index\_with\_tag](#class-nativemenu-method-find-item-index-with-tag)(rid: [RID](class_rid.md#class-rid), tag: [Variant](class_variant.md#class-variant)) const |
| [int](class_int.md#class-int) | [find\_item\_index\_with\_text](#class-nativemenu-method-find-item-index-with-text)(rid: [RID](class_rid.md#class-rid), text: [String](class_string.md#class-string)) const |
| void | [free\_menu](#class-nativemenu-method-free-menu)(rid: [RID](class_rid.md#class-rid)) |
| [Key](class_@globalscope.md#enum-globalscope-key) | [get\_item\_accelerator](#class-nativemenu-method-get-item-accelerator)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [Callable](class_callable.md#class-callable) | [get\_item\_callback](#class-nativemenu-method-get-item-callback)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_count](#class-nativemenu-method-get-item-count)(rid: [RID](class_rid.md#class-rid)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_item\_icon](#class-nativemenu-method-get-item-icon)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_indentation\_level](#class-nativemenu-method-get-item-indentation-level)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [Callable](class_callable.md#class-callable) | [get\_item\_key\_callback](#class-nativemenu-method-get-item-key-callback)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_max\_states](#class-nativemenu-method-get-item-max-states)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_item\_state](#class-nativemenu-method-get-item-state)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_item\_submenu](#class-nativemenu-method-get-item-submenu)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_item\_tag](#class-nativemenu-method-get-item-tag)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_text](#class-nativemenu-method-get-item-text)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_item\_tooltip](#class-nativemenu-method-get-item-tooltip)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_minimum\_width](#class-nativemenu-method-get-minimum-width)(rid: [RID](class_rid.md#class-rid)) const |
| [Callable](class_callable.md#class-callable) | [get\_popup\_close\_callback](#class-nativemenu-method-get-popup-close-callback)(rid: [RID](class_rid.md#class-rid)) const |
| [Callable](class_callable.md#class-callable) | [get\_popup\_open\_callback](#class-nativemenu-method-get-popup-open-callback)(rid: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_size](#class-nativemenu-method-get-size)(rid: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [get\_system\_menu](#class-nativemenu-method-get-system-menu)(menu\_id: [SystemMenus](#enum-nativemenu-systemmenus)) const |
| [String](class_string.md#class-string) | [get\_system\_menu\_name](#class-nativemenu-method-get-system-menu-name)(menu\_id: [SystemMenus](#enum-nativemenu-systemmenus)) const |
| [bool](class_bool.md#class-bool) | [has\_feature](#class-nativemenu-method-has-feature)(feature: [Feature](#enum-nativemenu-feature)) const |
| [bool](class_bool.md#class-bool) | [has\_menu](#class-nativemenu-method-has-menu)(rid: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [has\_system\_menu](#class-nativemenu-method-has-system-menu)(menu\_id: [SystemMenus](#enum-nativemenu-systemmenus)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_checkable](#class-nativemenu-method-is-item-checkable)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_checked](#class-nativemenu-method-is-item-checked)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_disabled](#class-nativemenu-method-is-item-disabled)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_hidden](#class-nativemenu-method-is-item-hidden)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_item\_radio\_checkable](#class-nativemenu-method-is-item-radio-checkable)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_opened](#class-nativemenu-method-is-opened)(rid: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [is\_system\_menu](#class-nativemenu-method-is-system-menu)(rid: [RID](class_rid.md#class-rid)) const |
| void | [popup](#class-nativemenu-method-popup)(rid: [RID](class_rid.md#class-rid), position: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [remove\_item](#class-nativemenu-method-remove-item)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) |
| void | [set\_interface\_direction](#class-nativemenu-method-set-interface-direction)(rid: [RID](class_rid.md#class-rid), is\_rtl: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_accelerator](#class-nativemenu-method-set-item-accelerator)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), keycode: [Key](class_@globalscope.md#enum-globalscope-key)) |
| void | [set\_item\_callback](#class-nativemenu-method-set-item-callback)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) |
| void | [set\_item\_checkable](#class-nativemenu-method-set-item-checkable)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), checkable: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_checked](#class-nativemenu-method-set-item-checked)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), checked: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_disabled](#class-nativemenu-method-set-item-disabled)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_hidden](#class-nativemenu-method-set-item-hidden)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), hidden: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_hover\_callbacks](#class-nativemenu-method-set-item-hover-callbacks)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) |
| void | [set\_item\_icon](#class-nativemenu-method-set-item-icon)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_item\_indentation\_level](#class-nativemenu-method-set-item-indentation-level)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), level: [int](class_int.md#class-int)) |
| void | [set\_item\_key\_callback](#class-nativemenu-method-set-item-key-callback)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), key\_callback: [Callable](class_callable.md#class-callable)) |
| void | [set\_item\_max\_states](#class-nativemenu-method-set-item-max-states)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), max\_states: [int](class_int.md#class-int)) |
| void | [set\_item\_radio\_checkable](#class-nativemenu-method-set-item-radio-checkable)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), checkable: [bool](class_bool.md#class-bool)) |
| void | [set\_item\_state](#class-nativemenu-method-set-item-state)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), state: [int](class_int.md#class-int)) |
| void | [set\_item\_submenu](#class-nativemenu-method-set-item-submenu)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), submenu\_rid: [RID](class_rid.md#class-rid)) |
| void | [set\_item\_tag](#class-nativemenu-method-set-item-tag)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), tag: [Variant](class_variant.md#class-variant)) |
| void | [set\_item\_text](#class-nativemenu-method-set-item-text)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) |
| void | [set\_item\_tooltip](#class-nativemenu-method-set-item-tooltip)(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |
| void | [set\_minimum\_width](#class-nativemenu-method-set-minimum-width)(rid: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float)) |
| void | [set\_popup\_close\_callback](#class-nativemenu-method-set-popup-close-callback)(rid: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) |
| void | [set\_popup\_open\_callback](#class-nativemenu-method-set-popup-open-callback)(rid: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) |

* * *

## Enumerations

enum **Feature**: [🔗](#enum-nativemenu-feature)

[Feature](#enum-nativemenu-feature) **FEATURE\_GLOBAL\_MENU** = `0`

**NativeMenu** supports native global main menu.

[Feature](#enum-nativemenu-feature) **FEATURE\_POPUP\_MENU** = `1`

**NativeMenu** supports native popup menus.

[Feature](#enum-nativemenu-feature) **FEATURE\_OPEN\_CLOSE\_CALLBACK** = `2`

**NativeMenu** supports menu open and close callbacks.

[Feature](#enum-nativemenu-feature) **FEATURE\_HOVER\_CALLBACK** = `3`

**NativeMenu** supports menu item hover callback.

[Feature](#enum-nativemenu-feature) **FEATURE\_KEY\_CALLBACK** = `4`

**NativeMenu** supports menu item accelerator/key callback.

* * *

enum **SystemMenus**: [🔗](#enum-nativemenu-systemmenus)

[SystemMenus](#enum-nativemenu-systemmenus) **INVALID\_MENU\_ID** = `0`

Invalid special system menu ID.

[SystemMenus](#enum-nativemenu-systemmenus) **MAIN\_MENU\_ID** = `1`

Global main menu ID.

[SystemMenus](#enum-nativemenu-systemmenus) **APPLICATION\_MENU\_ID** = `2`

Application (first menu after "Apple" menu on macOS) menu ID.

[SystemMenus](#enum-nativemenu-systemmenus) **WINDOW\_MENU\_ID** = `3`

"Window" menu ID (on macOS this menu includes standard window control items and a list of open windows).

[SystemMenus](#enum-nativemenu-systemmenus) **HELP\_MENU\_ID** = `4`

"Help" menu ID (on macOS this menu includes help search bar).

[SystemMenus](#enum-nativemenu-systemmenus) **DOCK\_MENU\_ID** = `5`

Dock icon right-click menu ID (on macOS this menu include standard application control items and a list of open windows).

* * *

## Method Descriptions

[int](class_int.md#class-int) **add\_check\_item**(rid: [RID](class_rid.md#class-rid), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-nativemenu-method-add-check-item)

Adds a new checkable item with text `label` to the global menu `rid`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented on macOS and Windows.

**Note:** On Windows, `accelerator` and `key_callback` are ignored.

* * *

[int](class_int.md#class-int) **add\_icon\_check\_item**(rid: [RID](class_rid.md#class-rid), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-nativemenu-method-add-icon-check-item)

Adds a new checkable item with text `label` and icon `icon` to the global menu `rid`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented on macOS and Windows.

**Note:** On Windows, `accelerator` and `key_callback` are ignored.

* * *

[int](class_int.md#class-int) **add\_icon\_item**(rid: [RID](class_rid.md#class-rid), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-nativemenu-method-add-icon-item)

Adds a new item with text `label` and icon `icon` to the global menu `rid`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented on macOS and Windows.

**Note:** On Windows, `accelerator` and `key_callback` are ignored.

* * *

[int](class_int.md#class-int) **add\_icon\_radio\_check\_item**(rid: [RID](class_rid.md#class-rid), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-nativemenu-method-add-icon-radio-check-item)

Adds a new radio-checkable item with text `label` and icon `icon` to the global menu `rid`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** Radio-checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See [set\_item\_checked()](#class-nativemenu-method-set-item-checked) for more info on how to control it.

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented on macOS and Windows.

**Note:** On Windows, `accelerator` and `key_callback` are ignored.

* * *

[int](class_int.md#class-int) **add\_item**(rid: [RID](class_rid.md#class-rid), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-nativemenu-method-add-item)

Adds a new item with text `label` to the global menu `rid`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented on macOS and Windows.

**Note:** On Windows, `accelerator` and `key_callback` are ignored.

* * *

[int](class_int.md#class-int) **add\_multistate\_item**(rid: [RID](class_rid.md#class-rid), label: [String](class_string.md#class-string), max\_states: [int](class_int.md#class-int), default\_state: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-nativemenu-method-add-multistate-item)

Adds a new item with text `label` to the global menu `rid`.

Contrarily to normal binary items, multistate items can have more than two states, as defined by `max_states`. Each press or activate of the item will increase the state by one. The default value is defined by `default_state`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** By default, there's no indication of the current item state, it should be changed manually.

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented on macOS and Windows.

**Note:** On Windows, `accelerator` and `key_callback` are ignored.

* * *

[int](class_int.md#class-int) **add\_radio\_check\_item**(rid: [RID](class_rid.md#class-rid), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-nativemenu-method-add-radio-check-item)

Adds a new radio-checkable item with text `label` to the global menu `rid`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** Radio-checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See [set\_item\_checked()](#class-nativemenu-method-set-item-checked) for more info on how to control it.

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented on macOS and Windows.

**Note:** On Windows, `accelerator` and `key_callback` are ignored.

* * *

[int](class_int.md#class-int) **add\_separator**(rid: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int) = -1) [🔗](#class-nativemenu-method-add-separator)

Adds a separator between items to the global menu `rid`. Separators also occupy an index.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

**Note:** This method is implemented on macOS and Windows.

* * *

[int](class_int.md#class-int) **add\_submenu\_item**(rid: [RID](class_rid.md#class-rid), label: [String](class_string.md#class-string), submenu\_rid: [RID](class_rid.md#class-rid), tag: [Variant](class_variant.md#class-variant) = null, index: [int](class_int.md#class-int) = -1) [🔗](#class-nativemenu-method-add-submenu-item)

Adds an item that will act as a submenu of the global menu `rid`. The `submenu_rid` argument is the RID of the global menu that will be shown when the item is clicked.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

**Note:** This method is implemented on macOS and Windows.

* * *

void **clear**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-nativemenu-method-clear)

Removes all items from the global menu `rid`.

**Note:** This method is implemented on macOS and Windows.

* * *

[RID](class_rid.md#class-rid) **create\_menu**() [🔗](#class-nativemenu-method-create-menu)

Creates a new global menu object.

**Note:** This method is implemented on macOS and Windows.

* * *

[int](class_int.md#class-int) **find\_item\_index\_with\_submenu**(rid: [RID](class_rid.md#class-rid), submenu\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-nativemenu-method-find-item-index-with-submenu)

Returns the index of the item with the submenu specified by `submenu_rid`. Indices are automatically assigned to each item by the engine, and cannot be set manually.

**Note:** This method is implemented on macOS and Windows.

* * *

[int](class_int.md#class-int) **find\_item\_index\_with\_tag**(rid: [RID](class_rid.md#class-rid), tag: [Variant](class_variant.md#class-variant)) const [🔗](#class-nativemenu-method-find-item-index-with-tag)

Returns the index of the item with the specified `tag`. Indices are automatically assigned to each item by the engine, and cannot be set manually.

**Note:** This method is implemented on macOS and Windows.

* * *

[int](class_int.md#class-int) **find\_item\_index\_with\_text**(rid: [RID](class_rid.md#class-rid), text: [String](class_string.md#class-string)) const [🔗](#class-nativemenu-method-find-item-index-with-text)

Returns the index of the item with the specified `text`. Indices are automatically assigned to each item by the engine, and cannot be set manually.

**Note:** This method is implemented on macOS and Windows.

* * *

void **free\_menu**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-nativemenu-method-free-menu)

Frees a global menu object created by this **NativeMenu**.

**Note:** This method is implemented on macOS and Windows.

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **get\_item\_accelerator**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-accelerator)

Returns the accelerator of the item at index `idx`. Accelerators are special combinations of keys that activate the item, no matter which control is focused.

**Note:** This method is implemented only on macOS.

* * *

[Callable](class_callable.md#class-callable) **get\_item\_callback**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-callback)

Returns the callback of the item at index `idx`.

**Note:** This method is implemented on macOS and Windows.

* * *

[int](class_int.md#class-int) **get\_item\_count**(rid: [RID](class_rid.md#class-rid)) const [🔗](#class-nativemenu-method-get-item-count)

Returns number of items in the global menu `rid`.

**Note:** This method is implemented on macOS and Windows.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_item\_icon**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-icon)

Returns the icon of the item at index `idx`.

**Note:** This method is implemented on macOS and Windows.

* * *

[int](class_int.md#class-int) **get\_item\_indentation\_level**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-indentation-level)

Returns the horizontal offset of the item at the given `idx`.

**Note:** This method is implemented only on macOS.

* * *

[Callable](class_callable.md#class-callable) **get\_item\_key\_callback**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-key-callback)

Returns the callback of the item accelerator at index `idx`.

**Note:** This method is implemented only on macOS.

* * *

[int](class_int.md#class-int) **get\_item\_max\_states**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-max-states)

Returns number of states of a multistate item. See [add\_multistate\_item()](#class-nativemenu-method-add-multistate-item) for details.

**Note:** This method is implemented on macOS and Windows.

* * *

[int](class_int.md#class-int) **get\_item\_state**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-state)

Returns the state of a multistate item. See [add\_multistate\_item()](#class-nativemenu-method-add-multistate-item) for details.

**Note:** This method is implemented on macOS and Windows.

* * *

[RID](class_rid.md#class-rid) **get\_item\_submenu**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-submenu)

Returns the submenu ID of the item at index `idx`. See [add\_submenu\_item()](#class-nativemenu-method-add-submenu-item) for more info on how to add a submenu.

**Note:** This method is implemented on macOS and Windows.

* * *

[Variant](class_variant.md#class-variant) **get\_item\_tag**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-tag)

Returns the metadata of the specified item, which might be of any type. You can set it with [set\_item\_tag()](#class-nativemenu-method-set-item-tag), which provides a simple way of assigning context data to items.

**Note:** This method is implemented on macOS and Windows.

* * *

[String](class_string.md#class-string) **get\_item\_text**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-text)

Returns the text of the item at index `idx`.

**Note:** This method is implemented on macOS and Windows.

* * *

[String](class_string.md#class-string) **get\_item\_tooltip**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-get-item-tooltip)

Returns the tooltip associated with the specified index `idx`.

**Note:** This method is implemented only on macOS.

* * *

[float](class_float.md#class-float) **get\_minimum\_width**(rid: [RID](class_rid.md#class-rid)) const [🔗](#class-nativemenu-method-get-minimum-width)

Returns global menu minimum width.

**Note:** This method is implemented only on macOS.

* * *

[Callable](class_callable.md#class-callable) **get\_popup\_close\_callback**(rid: [RID](class_rid.md#class-rid)) const [🔗](#class-nativemenu-method-get-popup-close-callback)

Returns global menu close callback.

**Note:** This method is implemented on macOS and Windows.

* * *

[Callable](class_callable.md#class-callable) **get\_popup\_open\_callback**(rid: [RID](class_rid.md#class-rid)) const [🔗](#class-nativemenu-method-get-popup-open-callback)

Returns global menu open callback.

**Note:** This method is implemented only on macOS.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_size**(rid: [RID](class_rid.md#class-rid)) const [🔗](#class-nativemenu-method-get-size)

Returns global menu size.

**Note:** This method is implemented on macOS and Windows.

* * *

[RID](class_rid.md#class-rid) **get\_system\_menu**(menu\_id: [SystemMenus](#enum-nativemenu-systemmenus)) const [🔗](#class-nativemenu-method-get-system-menu)

Returns RID of a special system menu.

**Note:** This method is implemented only on macOS.

* * *

[String](class_string.md#class-string) **get\_system\_menu\_name**(menu\_id: [SystemMenus](#enum-nativemenu-systemmenus)) const [🔗](#class-nativemenu-method-get-system-menu-name)

Returns readable name of a special system menu.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **has\_feature**(feature: [Feature](#enum-nativemenu-feature)) const [🔗](#class-nativemenu-method-has-feature)

Returns `true` if the specified `feature` is supported by the current **NativeMenu**, `false` otherwise.

**Note:** This method is implemented on macOS and Windows.

* * *

[bool](class_bool.md#class-bool) **has\_menu**(rid: [RID](class_rid.md#class-rid)) const [🔗](#class-nativemenu-method-has-menu)

Returns `true` if `rid` is valid global menu.

**Note:** This method is implemented on macOS and Windows.

* * *

[bool](class_bool.md#class-bool) **has\_system\_menu**(menu\_id: [SystemMenus](#enum-nativemenu-systemmenus)) const [🔗](#class-nativemenu-method-has-system-menu)

Returns `true` if a special system menu is supported.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **is\_item\_checkable**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-is-item-checkable)

Returns `true` if the item at index `idx` is checkable in some way, i.e. if it has a checkbox or radio button.

**Note:** This method is implemented on macOS and Windows.

* * *

[bool](class_bool.md#class-bool) **is\_item\_checked**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-is-item-checked)

Returns `true` if the item at index `idx` is checked.

**Note:** This method is implemented on macOS and Windows.

* * *

[bool](class_bool.md#class-bool) **is\_item\_disabled**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-is-item-disabled)

Returns `true` if the item at index `idx` is disabled. When it is disabled it can't be selected, or its action invoked.

See [set\_item\_disabled()](#class-nativemenu-method-set-item-disabled) for more info on how to disable an item.

**Note:** This method is implemented on macOS and Windows.

* * *

[bool](class_bool.md#class-bool) **is\_item\_hidden**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-is-item-hidden)

Returns `true` if the item at index `idx` is hidden.

See [set\_item\_hidden()](#class-nativemenu-method-set-item-hidden) for more info on how to hide an item.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **is\_item\_radio\_checkable**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) const [🔗](#class-nativemenu-method-is-item-radio-checkable)

Returns `true` if the item at index `idx` has radio button-style checkability.

**Note:** This is purely cosmetic; you must add the logic for checking/unchecking items in radio groups.

**Note:** This method is implemented on macOS and Windows.

* * *

[bool](class_bool.md#class-bool) **is\_opened**(rid: [RID](class_rid.md#class-rid)) const [🔗](#class-nativemenu-method-is-opened)

Returns `true` if the menu is currently opened.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **is\_system\_menu**(rid: [RID](class_rid.md#class-rid)) const [🔗](#class-nativemenu-method-is-system-menu)

Return `true` is global menu is a special system menu.

**Note:** This method is implemented only on macOS.

* * *

void **popup**(rid: [RID](class_rid.md#class-rid), position: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-nativemenu-method-popup)

Shows the global menu at `position` in the screen coordinates.

**Note:** This method is implemented on macOS and Windows.

* * *

void **remove\_item**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int)) [🔗](#class-nativemenu-method-remove-item)

Removes the item at index `idx` from the global menu `rid`.

**Note:** The indices of items after the removed item will be shifted by one.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_interface\_direction**(rid: [RID](class_rid.md#class-rid), is\_rtl: [bool](class_bool.md#class-bool)) [🔗](#class-nativemenu-method-set-interface-direction)

Sets the menu text layout direction from right-to-left if `is_rtl` is `true`.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_accelerator**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), keycode: [Key](class_@globalscope.md#enum-globalscope-key)) [🔗](#class-nativemenu-method-set-item-accelerator)

Sets the accelerator of the item at index `idx`. `keycode` can be a single [Key](class_@globalscope.md#enum-globalscope-key), or a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** This method is implemented only on macOS.

* * *

void **set\_item\_callback**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-nativemenu-method-set-item-callback)

Sets the callback of the item at index `idx`. Callback is emitted when an item is pressed.

**Note:** The `callback` Callable needs to accept exactly one Variant parameter, the parameter passed to the Callable will be the value passed to the `tag` parameter when the menu item was created.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_checkable**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), checkable: [bool](class_bool.md#class-bool)) [🔗](#class-nativemenu-method-set-item-checkable)

Sets whether the item at index `idx` has a checkbox. If `false`, sets the type of the item to plain text.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_checked**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), checked: [bool](class_bool.md#class-bool)) [🔗](#class-nativemenu-method-set-item-checked)

Sets the checkstate status of the item at index `idx`.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_disabled**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-nativemenu-method-set-item-disabled)

Enables/disables the item at index `idx`. When it is disabled, it can't be selected and its action can't be invoked.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_hidden**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), hidden: [bool](class_bool.md#class-bool)) [🔗](#class-nativemenu-method-set-item-hidden)

Hides/shows the item at index `idx`. When it is hidden, an item does not appear in a menu and its action cannot be invoked.

**Note:** This method is implemented only on macOS.

* * *

void **set\_item\_hover\_callbacks**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-nativemenu-method-set-item-hover-callbacks)

Sets the callback of the item at index `idx`. The callback is emitted when an item is hovered.

**Note:** The `callback` Callable needs to accept exactly one Variant parameter, the parameter passed to the Callable will be the value passed to the `tag` parameter when the menu item was created.

**Note:** This method is implemented only on macOS.

* * *

void **set\_item\_icon**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-nativemenu-method-set-item-icon)

Replaces the [Texture2D](class_texture2d.md#class-texture2d) icon of the specified `idx`.

**Note:** This method is implemented on macOS and Windows.

**Note:** This method is not supported by macOS Dock menu items.

* * *

void **set\_item\_indentation\_level**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), level: [int](class_int.md#class-int)) [🔗](#class-nativemenu-method-set-item-indentation-level)

Sets the horizontal offset of the item at the given `idx`.

**Note:** This method is implemented only on macOS.

* * *

void **set\_item\_key\_callback**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), key\_callback: [Callable](class_callable.md#class-callable)) [🔗](#class-nativemenu-method-set-item-key-callback)

Sets the callback of the item at index `idx`. Callback is emitted when its accelerator is activated.

**Note:** The `key_callback` Callable needs to accept exactly one Variant parameter, the parameter passed to the Callable will be the value passed to the `tag` parameter when the menu item was created.

**Note:** This method is implemented only on macOS.

* * *

void **set\_item\_max\_states**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), max\_states: [int](class_int.md#class-int)) [🔗](#class-nativemenu-method-set-item-max-states)

Sets number of state of a multistate item. See [add\_multistate\_item()](#class-nativemenu-method-add-multistate-item) for details.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_radio\_checkable**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), checkable: [bool](class_bool.md#class-bool)) [🔗](#class-nativemenu-method-set-item-radio-checkable)

Sets the type of the item at the specified index `idx` to radio button. If `false`, sets the type of the item to plain text.

**Note:** This is purely cosmetic; you must add the logic for checking/unchecking items in radio groups.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_state**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), state: [int](class_int.md#class-int)) [🔗](#class-nativemenu-method-set-item-state)

Sets the state of a multistate item. See [add\_multistate\_item()](#class-nativemenu-method-add-multistate-item) for details.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_submenu**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), submenu\_rid: [RID](class_rid.md#class-rid)) [🔗](#class-nativemenu-method-set-item-submenu)

Sets the submenu RID of the item at index `idx`. The submenu is a global menu that would be shown when the item is clicked.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_tag**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), tag: [Variant](class_variant.md#class-variant)) [🔗](#class-nativemenu-method-set-item-tag)

Sets the metadata of an item, which may be of any type. You can later get it with [get\_item\_tag()](#class-nativemenu-method-get-item-tag), which provides a simple way of assigning context data to items.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_text**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) [🔗](#class-nativemenu-method-set-item-text)

Sets the text of the item at index `idx`.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_item\_tooltip**(rid: [RID](class_rid.md#class-rid), idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-nativemenu-method-set-item-tooltip)

Sets the [String](class_string.md#class-string) tooltip of the item at the specified index `idx`.

**Note:** This method is implemented only on macOS.

* * *

void **set\_minimum\_width**(rid: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float)) [🔗](#class-nativemenu-method-set-minimum-width)

Sets the minimum width of the global menu.

**Note:** This method is implemented only on macOS.

* * *

void **set\_popup\_close\_callback**(rid: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-nativemenu-method-set-popup-close-callback)

Registers callable to emit when the menu is about to show.

**Note:** The OS can simulate menu opening to track menu item changes and global shortcuts, in which case the corresponding close callback is not triggered. Use [is\_opened()](#class-nativemenu-method-is-opened) to check if the menu is currently opened.

**Note:** This method is implemented on macOS and Windows.

* * *

void **set\_popup\_open\_callback**(rid: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-nativemenu-method-set-popup-open-callback)

Registers callable to emit after the menu is closed.

**Note:** This method is implemented only on macOS.

[Previous](class_mutex.md "Mutex") [Next](class_navigationmeshgenerator.md "NavigationMeshGenerator")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_mutex.md "Mutex") [Next](class_navigationmeshgenerator.md "NavigationMeshGenerator")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).