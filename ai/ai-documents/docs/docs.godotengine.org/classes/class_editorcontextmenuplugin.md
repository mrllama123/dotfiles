---
title: EditorContextMenuPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorcontextmenuplugin.html
crawled_at: "2026-08-13T10:33:17+12:00"
content_hash: 14ad75c2e552db8be4da426ffd63ee6c945cee743b1c7bf9dbd8e09d5e6ddc2c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorContextMenuPlugin

* * *

# EditorContextMenuPlugin

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Plugin for adding custom context menus in the editor.

## Description

**EditorContextMenuPlugin** allows for the addition of custom options in the editor's context menu.

Currently, context menus are supported for three commonly used areas: the file system, scene tree, and editor script list panel.

## Methods

|     |     |
| --- | --- |
| void | [\_popup\_menu](#class-editorcontextmenuplugin-private-method-popup-menu)(paths: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtual |
| void | [add\_context\_menu\_item](#class-editorcontextmenuplugin-method-add-context-menu-item)(name: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable), icon: [Texture2D](class_texture2d.md#class-texture2d) = null) |
| void | [add\_context\_menu\_item\_from\_shortcut](#class-editorcontextmenuplugin-method-add-context-menu-item-from-shortcut)(name: [String](class_string.md#class-string), shortcut: [Shortcut](class_shortcut.md#class-shortcut), icon: [Texture2D](class_texture2d.md#class-texture2d) = null) |
| void | [add\_context\_submenu\_item](#class-editorcontextmenuplugin-method-add-context-submenu-item)(name: [String](class_string.md#class-string), menu: [PopupMenu](class_popupmenu.md#class-popupmenu), icon: [Texture2D](class_texture2d.md#class-texture2d) = null) |
| void | [add\_menu\_shortcut](#class-editorcontextmenuplugin-method-add-menu-shortcut)(shortcut: [Shortcut](class_shortcut.md#class-shortcut), callback: [Callable](class_callable.md#class-callable)) |

* * *

## Enumerations

enum **ContextMenuSlot**: [🔗](#enum-editorcontextmenuplugin-contextmenuslot)

[ContextMenuSlot](#enum-editorcontextmenuplugin-contextmenuslot) **CONTEXT\_SLOT\_SCENE\_TREE** = `0`

Context menu of Scene dock. [\_popup\_menu()](#class-editorcontextmenuplugin-private-method-popup-menu) will be called with a list of paths to currently selected nodes, while option callback will receive the list of currently selected nodes.

[ContextMenuSlot](#enum-editorcontextmenuplugin-contextmenuslot) **CONTEXT\_SLOT\_FILESYSTEM** = `1`

Context menu of FileSystem dock. [\_popup\_menu()](#class-editorcontextmenuplugin-private-method-popup-menu) and option callback will be called with list of paths of the currently selected files.

[ContextMenuSlot](#enum-editorcontextmenuplugin-contextmenuslot) **CONTEXT\_SLOT\_SCRIPT\_EDITOR** = `2`

Context menu of Script editor's script tabs. [\_popup\_menu()](#class-editorcontextmenuplugin-private-method-popup-menu) will be called with the path to the currently edited script, while option callback will receive reference to that script.

[ContextMenuSlot](#enum-editorcontextmenuplugin-contextmenuslot) **CONTEXT\_SLOT\_FILESYSTEM\_CREATE** = `3`

The "Create..." submenu of FileSystem dock's context menu, or the "New" section of the main context menu when empty space is clicked. [\_popup\_menu()](#class-editorcontextmenuplugin-private-method-popup-menu) and option callback will be called with the path of the currently selected folder. When clicking the empty space, the list of paths for popup method will be empty.

```
func _popup_menu(paths):
    if paths.is_empty():
        add_context_menu_item("New Image File...", create_image)
    else:
        add_context_menu_item("Image File...", create_image)

```

[ContextMenuSlot](#enum-editorcontextmenuplugin-contextmenuslot) **CONTEXT\_SLOT\_SCRIPT\_EDITOR\_CODE** = `4`

Context menu of Script editor's code editor. [\_popup\_menu()](#class-editorcontextmenuplugin-private-method-popup-menu) will be called with the path to the [CodeEdit](class_codeedit.md#class-codeedit) node. You can fetch it using this code:

```
func _popup_menu(paths):
    var code_edit = Engine.get_main_loop().root.get_node(paths[0]);

```

The option callback will receive reference to that node. You can use [CodeEdit](class_codeedit.md#class-codeedit) methods to perform symbol lookups etc.

[ContextMenuSlot](#enum-editorcontextmenuplugin-contextmenuslot) **CONTEXT\_SLOT\_SCENE\_TABS** = `5`

Context menu of scene tabs. [\_popup\_menu()](#class-editorcontextmenuplugin-private-method-popup-menu) will be called with the path of the clicked scene, or empty [PackedStringArray](class_packedstringarray.md#class-packedstringarray) if the menu was opened on empty space. The option callback will receive the path of the clicked scene, or empty [String](class_string.md#class-string) if none was clicked.

[ContextMenuSlot](#enum-editorcontextmenuplugin-contextmenuslot) **CONTEXT\_SLOT\_2D\_EDITOR** = `6`

Context menu of 2D editor's basic right-click menu. [\_popup\_menu()](#class-editorcontextmenuplugin-private-method-popup-menu) will be called with paths to all [CanvasItem](class_canvasitem.md#class-canvasitem) nodes under the cursor. You can fetch them using this code:

```
func _popup_menu(paths):
    var canvas_item = Engine.get_main_loop().root.get_node(paths[0]); # Replace 0 with the desired index.

```

The paths array is empty if there weren't any nodes under cursor. The option callback will receive a typed array of [CanvasItem](class_canvasitem.md#class-canvasitem) nodes.

* * *

## Method Descriptions

void **\_popup\_menu**(paths: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtual [🔗](#class-editorcontextmenuplugin-private-method-popup-menu)

Called when creating a context menu, custom options can be added by using the [add\_context\_menu\_item()](#class-editorcontextmenuplugin-method-add-context-menu-item) or [add\_context\_menu\_item\_from\_shortcut()](#class-editorcontextmenuplugin-method-add-context-menu-item-from-shortcut) functions. `paths` contains currently selected paths (depending on menu), which can be used to conditionally add options.

* * *

void **add\_context\_menu\_item**(name: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable), icon: [Texture2D](class_texture2d.md#class-texture2d) = null) [🔗](#class-editorcontextmenuplugin-method-add-context-menu-item)

Add custom option to the context menu of the plugin's specified slot. When the option is activated, `callback` will be called. Callback should take single [Array](class_array.md#class-array) argument; array contents depend on context menu slot.

```
func _popup_menu(paths):
    add_context_menu_item("File Custom options", handle, ICON)

```

If you want to assign shortcut to the menu item, use [add\_context\_menu\_item\_from\_shortcut()](#class-editorcontextmenuplugin-method-add-context-menu-item-from-shortcut) instead.

* * *

void **add\_context\_menu\_item\_from\_shortcut**(name: [String](class_string.md#class-string), shortcut: [Shortcut](class_shortcut.md#class-shortcut), icon: [Texture2D](class_texture2d.md#class-texture2d) = null) [🔗](#class-editorcontextmenuplugin-method-add-context-menu-item-from-shortcut)

Add custom option to the context menu of the plugin's specified slot. The option will have the `shortcut` assigned and reuse its callback. The shortcut has to be registered beforehand with [add\_menu\_shortcut()](#class-editorcontextmenuplugin-method-add-menu-shortcut).

```
func _init():
    add_menu_shortcut(SHORTCUT, handle)

func _popup_menu(paths):
    add_context_menu_item_from_shortcut("File Custom options", SHORTCUT, ICON)

```

* * *

void **add\_context\_submenu\_item**(name: [String](class_string.md#class-string), menu: [PopupMenu](class_popupmenu.md#class-popupmenu), icon: [Texture2D](class_texture2d.md#class-texture2d) = null) [🔗](#class-editorcontextmenuplugin-method-add-context-submenu-item)

Add a submenu to the context menu of the plugin's specified slot. The submenu is not automatically handled, you need to connect to its signals yourself. Also the submenu is freed on every popup, so provide a new [PopupMenu](class_popupmenu.md#class-popupmenu) every time.

```
func _popup_menu(paths):
    var popup_menu = PopupMenu.new()
    popup_menu.add_item("Blue")
    popup_menu.add_item("White")
    popup_menu.id_pressed.connect(_on_color_submenu_option)

    add_context_submenu_item("Set Node Color", popup_menu)

```

* * *

void **add\_menu\_shortcut**(shortcut: [Shortcut](class_shortcut.md#class-shortcut), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-editorcontextmenuplugin-method-add-menu-shortcut)

Registers a shortcut associated with the plugin's context menu. This method should be called once (e.g. in plugin's [Object.\_init()](class_object.md#class-object-private-method-init)). `callback` will be called when user presses the specified `shortcut` while the menu's context is in effect (e.g. FileSystem dock is focused). Callback should take single [Array](class_array.md#class-array) argument; array contents depend on context menu slot.

```
func _init():
    add_menu_shortcut(SHORTCUT, handle)

```

[Previous](class_dtlsserver.md "DTLSServer") [Next](class_editordebuggerplugin.md "EditorDebuggerPlugin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_dtlsserver.md "DTLSServer") [Next](class_editordebuggerplugin.md "EditorDebuggerPlugin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).