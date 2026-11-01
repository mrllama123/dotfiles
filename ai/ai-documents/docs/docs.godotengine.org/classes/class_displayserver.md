---
title: DisplayServer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_displayserver.html
crawled_at: "2026-08-13T10:31:48+12:00"
content_hash: a6f45ad5547ac68c9b48261ab9e4b32b51a8052fe1f85142c49db41773817312
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - DisplayServer

* * *

# DisplayServer

**Inherits:** [Object](class_object.md#class-object)

A server interface for low-level window management.

## Description

**DisplayServer** handles everything related to window management. It is separated from [OS](class_os.md#class-os) as a single operating system may support multiple display servers.

**Headless mode:** Starting the engine with the `--headless` [command line argument](../tutorials/editor/command_line_tutorial.md) disables all rendering and window management functions. Most functions from **DisplayServer** will return dummy values in this case.

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [accessibility\_create\_element](#class-displayserver-method-accessibility-create-element)(window\_id: [int](class_int.md#class-int), role: [AccessibilityRole](#enum-displayserver-accessibilityrole)) |
| [RID](class_rid.md#class-rid) | [accessibility\_create\_sub\_element](#class-displayserver-method-accessibility-create-sub-element)(parent\_rid: [RID](class_rid.md#class-rid), role: [AccessibilityRole](#enum-displayserver-accessibilityrole), insert\_pos: [int](class_int.md#class-int) = -1) |
| [RID](class_rid.md#class-rid) | [accessibility\_create\_sub\_text\_edit\_elements](#class-displayserver-method-accessibility-create-sub-text-edit-elements)(parent\_rid: [RID](class_rid.md#class-rid), shaped\_text: [RID](class_rid.md#class-rid), min\_height: [float](class_float.md#class-float), insert\_pos: [int](class_int.md#class-int) = -1) |
| [Variant](class_variant.md#class-variant) | [accessibility\_element\_get\_meta](#class-displayserver-method-accessibility-element-get-meta)(id: [RID](class_rid.md#class-rid)) const |
| void | [accessibility\_element\_set\_meta](#class-displayserver-method-accessibility-element-set-meta)(id: [RID](class_rid.md#class-rid), meta: [Variant](class_variant.md#class-variant)) |
| void | [accessibility\_free\_element](#class-displayserver-method-accessibility-free-element)(id: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [accessibility\_get\_window\_root](#class-displayserver-method-accessibility-get-window-root)(window\_id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [accessibility\_has\_element](#class-displayserver-method-accessibility-has-element)(id: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [accessibility\_screen\_reader\_active](#class-displayserver-method-accessibility-screen-reader-active)() const |
| void | [accessibility\_set\_window\_focused](#class-displayserver-method-accessibility-set-window-focused)(window\_id: [int](class_int.md#class-int), focused: [bool](class_bool.md#class-bool)) |
| void | [accessibility\_set\_window\_rect](#class-displayserver-method-accessibility-set-window-rect)(window\_id: [int](class_int.md#class-int), rect\_out: [Rect2](class_rect2.md#class-rect2), rect\_in: [Rect2](class_rect2.md#class-rect2)) |
| [int](class_int.md#class-int) | [accessibility\_should\_increase\_contrast](#class-displayserver-method-accessibility-should-increase-contrast)() const |
| [int](class_int.md#class-int) | [accessibility\_should\_reduce\_animation](#class-displayserver-method-accessibility-should-reduce-animation)() const |
| [int](class_int.md#class-int) | [accessibility\_should\_reduce\_transparency](#class-displayserver-method-accessibility-should-reduce-transparency)() const |
| void | [accessibility\_update\_add\_action](#class-displayserver-method-accessibility-update-add-action)(id: [RID](class_rid.md#class-rid), action: [AccessibilityAction](#enum-displayserver-accessibilityaction), callable: [Callable](class_callable.md#class-callable)) |
| void | [accessibility\_update\_add\_child](#class-displayserver-method-accessibility-update-add-child)(id: [RID](class_rid.md#class-rid), child\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_add\_custom\_action](#class-displayserver-method-accessibility-update-add-custom-action)(id: [RID](class_rid.md#class-rid), action\_id: [int](class_int.md#class-int), action\_description: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_add\_related\_controls](#class-displayserver-method-accessibility-update-add-related-controls)(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_add\_related\_described\_by](#class-displayserver-method-accessibility-update-add-related-described-by)(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_add\_related\_details](#class-displayserver-method-accessibility-update-add-related-details)(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_add\_related\_flow\_to](#class-displayserver-method-accessibility-update-add-related-flow-to)(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_add\_related\_labeled\_by](#class-displayserver-method-accessibility-update-add-related-labeled-by)(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_add\_related\_radio\_group](#class-displayserver-method-accessibility-update-add-related-radio-group)(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_set\_active\_descendant](#class-displayserver-method-accessibility-update-set-active-descendant)(id: [RID](class_rid.md#class-rid), other\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_set\_background\_color](#class-displayserver-method-accessibility-update-set-background-color)(id: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [accessibility\_update\_set\_bounds](#class-displayserver-method-accessibility-update-set-bounds)(id: [RID](class_rid.md#class-rid), p\_rect: [Rect2](class_rect2.md#class-rect2)) |
| void | [accessibility\_update\_set\_checked](#class-displayserver-method-accessibility-update-set-checked)(id: [RID](class_rid.md#class-rid), checekd: [bool](class_bool.md#class-bool)) |
| void | [accessibility\_update\_set\_classname](#class-displayserver-method-accessibility-update-set-classname)(id: [RID](class_rid.md#class-rid), classname: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_color\_value](#class-displayserver-method-accessibility-update-set-color-value)(id: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [accessibility\_update\_set\_description](#class-displayserver-method-accessibility-update-set-description)(id: [RID](class_rid.md#class-rid), description: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_error\_message](#class-displayserver-method-accessibility-update-set-error-message)(id: [RID](class_rid.md#class-rid), other\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_set\_extra\_info](#class-displayserver-method-accessibility-update-set-extra-info)(id: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_flag](#class-displayserver-method-accessibility-update-set-flag)(id: [RID](class_rid.md#class-rid), flag: [AccessibilityFlags](#enum-displayserver-accessibilityflags), value: [bool](class_bool.md#class-bool)) |
| void | [accessibility\_update\_set\_focus](#class-displayserver-method-accessibility-update-set-focus)(id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_set\_foreground\_color](#class-displayserver-method-accessibility-update-set-foreground-color)(id: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [accessibility\_update\_set\_in\_page\_link\_target](#class-displayserver-method-accessibility-update-set-in-page-link-target)(id: [RID](class_rid.md#class-rid), other\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_set\_language](#class-displayserver-method-accessibility-update-set-language)(id: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_list\_item\_count](#class-displayserver-method-accessibility-update-set-list-item-count)(id: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) |
| void | [accessibility\_update\_set\_list\_item\_expanded](#class-displayserver-method-accessibility-update-set-list-item-expanded)(id: [RID](class_rid.md#class-rid), expanded: [bool](class_bool.md#class-bool)) |
| void | [accessibility\_update\_set\_list\_item\_index](#class-displayserver-method-accessibility-update-set-list-item-index)(id: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) |
| void | [accessibility\_update\_set\_list\_item\_level](#class-displayserver-method-accessibility-update-set-list-item-level)(id: [RID](class_rid.md#class-rid), level: [int](class_int.md#class-int)) |
| void | [accessibility\_update\_set\_list\_item\_selected](#class-displayserver-method-accessibility-update-set-list-item-selected)(id: [RID](class_rid.md#class-rid), selected: [bool](class_bool.md#class-bool)) |
| void | [accessibility\_update\_set\_list\_orientation](#class-displayserver-method-accessibility-update-set-list-orientation)(id: [RID](class_rid.md#class-rid), vertical: [bool](class_bool.md#class-bool)) |
| void | [accessibility\_update\_set\_live](#class-displayserver-method-accessibility-update-set-live)(id: [RID](class_rid.md#class-rid), live: [AccessibilityLiveMode](#enum-displayserver-accessibilitylivemode)) |
| void | [accessibility\_update\_set\_member\_of](#class-displayserver-method-accessibility-update-set-member-of)(id: [RID](class_rid.md#class-rid), group\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_set\_name](#class-displayserver-method-accessibility-update-set-name)(id: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_next\_on\_line](#class-displayserver-method-accessibility-update-set-next-on-line)(id: [RID](class_rid.md#class-rid), other\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_set\_num\_jump](#class-displayserver-method-accessibility-update-set-num-jump)(id: [RID](class_rid.md#class-rid), jump: [float](class_float.md#class-float)) |
| void | [accessibility\_update\_set\_num\_range](#class-displayserver-method-accessibility-update-set-num-range)(id: [RID](class_rid.md#class-rid), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) |
| void | [accessibility\_update\_set\_num\_step](#class-displayserver-method-accessibility-update-set-num-step)(id: [RID](class_rid.md#class-rid), step: [float](class_float.md#class-float)) |
| void | [accessibility\_update\_set\_num\_value](#class-displayserver-method-accessibility-update-set-num-value)(id: [RID](class_rid.md#class-rid), position: [float](class_float.md#class-float)) |
| void | [accessibility\_update\_set\_placeholder](#class-displayserver-method-accessibility-update-set-placeholder)(id: [RID](class_rid.md#class-rid), placeholder: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_popup\_type](#class-displayserver-method-accessibility-update-set-popup-type)(id: [RID](class_rid.md#class-rid), popup: [AccessibilityPopupType](#enum-displayserver-accessibilitypopuptype)) |
| void | [accessibility\_update\_set\_previous\_on\_line](#class-displayserver-method-accessibility-update-set-previous-on-line)(id: [RID](class_rid.md#class-rid), other\_id: [RID](class_rid.md#class-rid)) |
| void | [accessibility\_update\_set\_role](#class-displayserver-method-accessibility-update-set-role)(id: [RID](class_rid.md#class-rid), role: [AccessibilityRole](#enum-displayserver-accessibilityrole)) |
| void | [accessibility\_update\_set\_role\_description](#class-displayserver-method-accessibility-update-set-role-description)(id: [RID](class_rid.md#class-rid), description: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_scroll\_x](#class-displayserver-method-accessibility-update-set-scroll-x)(id: [RID](class_rid.md#class-rid), position: [float](class_float.md#class-float)) |
| void | [accessibility\_update\_set\_scroll\_x\_range](#class-displayserver-method-accessibility-update-set-scroll-x-range)(id: [RID](class_rid.md#class-rid), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) |
| void | [accessibility\_update\_set\_scroll\_y](#class-displayserver-method-accessibility-update-set-scroll-y)(id: [RID](class_rid.md#class-rid), position: [float](class_float.md#class-float)) |
| void | [accessibility\_update\_set\_scroll\_y\_range](#class-displayserver-method-accessibility-update-set-scroll-y-range)(id: [RID](class_rid.md#class-rid), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) |
| void | [accessibility\_update\_set\_shortcut](#class-displayserver-method-accessibility-update-set-shortcut)(id: [RID](class_rid.md#class-rid), shortcut: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_state\_description](#class-displayserver-method-accessibility-update-set-state-description)(id: [RID](class_rid.md#class-rid), description: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_table\_cell\_position](#class-displayserver-method-accessibility-update-set-table-cell-position)(id: [RID](class_rid.md#class-rid), row\_index: [int](class_int.md#class-int), column\_index: [int](class_int.md#class-int)) |
| void | [accessibility\_update\_set\_table\_cell\_span](#class-displayserver-method-accessibility-update-set-table-cell-span)(id: [RID](class_rid.md#class-rid), row\_span: [int](class_int.md#class-int), column\_span: [int](class_int.md#class-int)) |
| void | [accessibility\_update\_set\_table\_column\_count](#class-displayserver-method-accessibility-update-set-table-column-count)(id: [RID](class_rid.md#class-rid), count: [int](class_int.md#class-int)) |
| void | [accessibility\_update\_set\_table\_column\_index](#class-displayserver-method-accessibility-update-set-table-column-index)(id: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) |
| void | [accessibility\_update\_set\_table\_row\_count](#class-displayserver-method-accessibility-update-set-table-row-count)(id: [RID](class_rid.md#class-rid), count: [int](class_int.md#class-int)) |
| void | [accessibility\_update\_set\_table\_row\_index](#class-displayserver-method-accessibility-update-set-table-row-index)(id: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) |
| void | [accessibility\_update\_set\_text\_align](#class-displayserver-method-accessibility-update-set-text-align)(id: [RID](class_rid.md#class-rid), align: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment)) |
| void | [accessibility\_update\_set\_text\_decorations](#class-displayserver-method-accessibility-update-set-text-decorations)(id: [RID](class_rid.md#class-rid), underline: [bool](class_bool.md#class-bool), strikethrough: [bool](class_bool.md#class-bool), overline: [bool](class_bool.md#class-bool)) |
| void | [accessibility\_update\_set\_text\_orientation](#class-displayserver-method-accessibility-update-set-text-orientation)(id: [RID](class_rid.md#class-rid), vertical: [bool](class_bool.md#class-bool)) |
| void | [accessibility\_update\_set\_text\_selection](#class-displayserver-method-accessibility-update-set-text-selection)(id: [RID](class_rid.md#class-rid), text\_start\_id: [RID](class_rid.md#class-rid), start\_char: [int](class_int.md#class-int), text\_end\_id: [RID](class_rid.md#class-rid), end\_char: [int](class_int.md#class-int)) |
| void | [accessibility\_update\_set\_tooltip](#class-displayserver-method-accessibility-update-set-tooltip)(id: [RID](class_rid.md#class-rid), tooltip: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_transform](#class-displayserver-method-accessibility-update-set-transform)(id: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [accessibility\_update\_set\_url](#class-displayserver-method-accessibility-update-set-url)(id: [RID](class_rid.md#class-rid), url: [String](class_string.md#class-string)) |
| void | [accessibility\_update\_set\_value](#class-displayserver-method-accessibility-update-set-value)(id: [RID](class_rid.md#class-rid), value: [String](class_string.md#class-string)) |
| void | [beep](#class-displayserver-method-beep)() const |
| [String](class_string.md#class-string) | [clipboard\_get](#class-displayserver-method-clipboard-get)() const |
| [Image](class_image.md#class-image) | [clipboard\_get\_image](#class-displayserver-method-clipboard-get-image)() const |
| [String](class_string.md#class-string) | [clipboard\_get\_primary](#class-displayserver-method-clipboard-get-primary)() const |
| [bool](class_bool.md#class-bool) | [clipboard\_has](#class-displayserver-method-clipboard-has)() const |
| [bool](class_bool.md#class-bool) | [clipboard\_has\_image](#class-displayserver-method-clipboard-has-image)() const |
| void | [clipboard\_set](#class-displayserver-method-clipboard-set)(clipboard: [String](class_string.md#class-string)) |
| void | [clipboard\_set\_primary](#class-displayserver-method-clipboard-set-primary)(clipboard\_primary: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [color\_picker](#class-displayserver-method-color-picker)(callback: [Callable](class_callable.md#class-callable)) |
| [int](class_int.md#class-int) | [create\_status\_indicator](#class-displayserver-method-create-status-indicator)(icon: [Texture2D](class_texture2d.md#class-texture2d), tooltip: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable)) |
| [CursorShape](#enum-displayserver-cursorshape) | [cursor\_get\_shape](#class-displayserver-method-cursor-get-shape)() const |
| void | [cursor\_set\_custom\_image](#class-displayserver-method-cursor-set-custom-image)(cursor: [Resource](class_resource.md#class-resource), shape: [CursorShape](#enum-displayserver-cursorshape) = 0, hotspot: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [cursor\_set\_shape](#class-displayserver-method-cursor-set-shape)(shape: [CursorShape](#enum-displayserver-cursorshape)) |
| void | [delete\_status\_indicator](#class-displayserver-method-delete-status-indicator)(id: [int](class_int.md#class-int)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [dialog\_input\_text](#class-displayserver-method-dialog-input-text)(title: [String](class_string.md#class-string), description: [String](class_string.md#class-string), existing\_text: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [dialog\_show](#class-displayserver-method-dialog-show)(title: [String](class_string.md#class-string), description: [String](class_string.md#class-string), buttons: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), callback: [Callable](class_callable.md#class-callable)) |
| void | [enable\_for\_stealing\_focus](#class-displayserver-method-enable-for-stealing-focus)(process\_id: [int](class_int.md#class-int)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [file\_dialog\_show](#class-displayserver-method-file-dialog-show)(title: [String](class_string.md#class-string), current\_directory: [String](class_string.md#class-string), filename: [String](class_string.md#class-string), show\_hidden: [bool](class_bool.md#class-bool), mode: [FileDialogMode](#enum-displayserver-filedialogmode), filters: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), callback: [Callable](class_callable.md#class-callable), parent\_window\_id: [int](class_int.md#class-int) = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [file\_dialog\_with\_options\_show](#class-displayserver-method-file-dialog-with-options-show)(title: [String](class_string.md#class-string), current\_directory: [String](class_string.md#class-string), root: [String](class_string.md#class-string), filename: [String](class_string.md#class-string), show\_hidden: [bool](class_bool.md#class-bool), mode: [FileDialogMode](#enum-displayserver-filedialogmode), filters: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), options: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\], callback: [Callable](class_callable.md#class-callable), parent\_window\_id: [int](class_int.md#class-int) = 0) |
| void | [force\_process\_and\_drop\_events](#class-displayserver-method-force-process-and-drop-events)() |
| [Color](class_color.md#class-color) | [get\_accent\_color](#class-displayserver-method-get-accent-color)() const |
| [Color](class_color.md#class-color) | [get\_base\_color](#class-displayserver-method-get-base-color)() const |
| [Array](class_array.md#class-array)\[ [Rect2](class_rect2.md#class-rect2)\] | [get\_display\_cutouts](#class-displayserver-method-get-display-cutouts)() const |
| [Rect2i](class_rect2i.md#class-rect2i) | [get\_display\_safe\_area](#class-displayserver-method-get-display-safe-area)() const |
| [int](class_int.md#class-int) | [get\_keyboard\_focus\_screen](#class-displayserver-method-get-keyboard-focus-screen)() const |
| [String](class_string.md#class-string) | [get\_name](#class-displayserver-method-get-name)() const |
| [int](class_int.md#class-int) | [get\_primary\_screen](#class-displayserver-method-get-primary-screen)() const |
| [int](class_int.md#class-int) | [get\_screen\_count](#class-displayserver-method-get-screen-count)() const |
| [int](class_int.md#class-int) | [get\_screen\_from\_rect](#class-displayserver-method-get-screen-from-rect)(rect: [Rect2](class_rect2.md#class-rect2)) const |
| [bool](class_bool.md#class-bool) | [get\_swap\_cancel\_ok](#class-displayserver-method-get-swap-cancel-ok)() |
| [int](class_int.md#class-int) | [get\_window\_at\_screen\_position](#class-displayserver-method-get-window-at-screen-position)(position: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_window\_list](#class-displayserver-method-get-window-list)() const |
| [int](class_int.md#class-int) | [global\_menu\_add\_check\_item](#class-displayserver-method-global-menu-add-check-item)(menu\_root: [String](class_string.md#class-string), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [global\_menu\_add\_icon\_check\_item](#class-displayserver-method-global-menu-add-icon-check-item)(menu\_root: [String](class_string.md#class-string), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [global\_menu\_add\_icon\_item](#class-displayserver-method-global-menu-add-icon-item)(menu\_root: [String](class_string.md#class-string), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [global\_menu\_add\_icon\_radio\_check\_item](#class-displayserver-method-global-menu-add-icon-radio-check-item)(menu\_root: [String](class_string.md#class-string), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [global\_menu\_add\_item](#class-displayserver-method-global-menu-add-item)(menu\_root: [String](class_string.md#class-string), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [global\_menu\_add\_multistate\_item](#class-displayserver-method-global-menu-add-multistate-item)(menu\_root: [String](class_string.md#class-string), label: [String](class_string.md#class-string), max\_states: [int](class_int.md#class-int), default\_state: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [global\_menu\_add\_radio\_check\_item](#class-displayserver-method-global-menu-add-radio-check-item)(menu\_root: [String](class_string.md#class-string), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [global\_menu\_add\_separator](#class-displayserver-method-global-menu-add-separator)(menu\_root: [String](class_string.md#class-string), index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [global\_menu\_add\_submenu\_item](#class-displayserver-method-global-menu-add-submenu-item)(menu\_root: [String](class_string.md#class-string), label: [String](class_string.md#class-string), submenu: [String](class_string.md#class-string), index: [int](class_int.md#class-int) = -1) |
| void | [global\_menu\_clear](#class-displayserver-method-global-menu-clear)(menu\_root: [String](class_string.md#class-string)) |
| [Key](class_@globalscope.md#enum-globalscope-key) | [global\_menu\_get\_item\_accelerator](#class-displayserver-method-global-menu-get-item-accelerator)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [Callable](class_callable.md#class-callable) | [global\_menu\_get\_item\_callback](#class-displayserver-method-global-menu-get-item-callback)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [global\_menu\_get\_item\_count](#class-displayserver-method-global-menu-get-item-count)(menu\_root: [String](class_string.md#class-string)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [global\_menu\_get\_item\_icon](#class-displayserver-method-global-menu-get-item-icon)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [global\_menu\_get\_item\_indentation\_level](#class-displayserver-method-global-menu-get-item-indentation-level)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [global\_menu\_get\_item\_index\_from\_tag](#class-displayserver-method-global-menu-get-item-index-from-tag)(menu\_root: [String](class_string.md#class-string), tag: [Variant](class_variant.md#class-variant)) const |
| [int](class_int.md#class-int) | [global\_menu\_get\_item\_index\_from\_text](#class-displayserver-method-global-menu-get-item-index-from-text)(menu\_root: [String](class_string.md#class-string), text: [String](class_string.md#class-string)) const |
| [Callable](class_callable.md#class-callable) | [global\_menu\_get\_item\_key\_callback](#class-displayserver-method-global-menu-get-item-key-callback)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [global\_menu\_get\_item\_max\_states](#class-displayserver-method-global-menu-get-item-max-states)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [global\_menu\_get\_item\_state](#class-displayserver-method-global-menu-get-item-state)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [global\_menu\_get\_item\_submenu](#class-displayserver-method-global-menu-get-item-submenu)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [global\_menu\_get\_item\_tag](#class-displayserver-method-global-menu-get-item-tag)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [global\_menu\_get\_item\_text](#class-displayserver-method-global-menu-get-item-text)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [global\_menu\_get\_item\_tooltip](#class-displayserver-method-global-menu-get-item-tooltip)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [global\_menu\_get\_system\_menu\_roots](#class-displayserver-method-global-menu-get-system-menu-roots)() const |
| [bool](class_bool.md#class-bool) | [global\_menu\_is\_item\_checkable](#class-displayserver-method-global-menu-is-item-checkable)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [global\_menu\_is\_item\_checked](#class-displayserver-method-global-menu-is-item-checked)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [global\_menu\_is\_item\_disabled](#class-displayserver-method-global-menu-is-item-disabled)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [global\_menu\_is\_item\_hidden](#class-displayserver-method-global-menu-is-item-hidden)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [global\_menu\_is\_item\_radio\_checkable](#class-displayserver-method-global-menu-is-item-radio-checkable)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const |
| void | [global\_menu\_remove\_item](#class-displayserver-method-global-menu-remove-item)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) |
| void | [global\_menu\_set\_item\_accelerator](#class-displayserver-method-global-menu-set-item-accelerator)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), keycode: [Key](class_@globalscope.md#enum-globalscope-key)) |
| void | [global\_menu\_set\_item\_callback](#class-displayserver-method-global-menu-set-item-callback)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) |
| void | [global\_menu\_set\_item\_checkable](#class-displayserver-method-global-menu-set-item-checkable)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), checkable: [bool](class_bool.md#class-bool)) |
| void | [global\_menu\_set\_item\_checked](#class-displayserver-method-global-menu-set-item-checked)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), checked: [bool](class_bool.md#class-bool)) |
| void | [global\_menu\_set\_item\_disabled](#class-displayserver-method-global-menu-set-item-disabled)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [global\_menu\_set\_item\_hidden](#class-displayserver-method-global-menu-set-item-hidden)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), hidden: [bool](class_bool.md#class-bool)) |
| void | [global\_menu\_set\_item\_hover\_callbacks](#class-displayserver-method-global-menu-set-item-hover-callbacks)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) |
| void | [global\_menu\_set\_item\_icon](#class-displayserver-method-global-menu-set-item-icon)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [global\_menu\_set\_item\_indentation\_level](#class-displayserver-method-global-menu-set-item-indentation-level)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), level: [int](class_int.md#class-int)) |
| void | [global\_menu\_set\_item\_key\_callback](#class-displayserver-method-global-menu-set-item-key-callback)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), key\_callback: [Callable](class_callable.md#class-callable)) |
| void | [global\_menu\_set\_item\_max\_states](#class-displayserver-method-global-menu-set-item-max-states)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), max\_states: [int](class_int.md#class-int)) |
| void | [global\_menu\_set\_item\_radio\_checkable](#class-displayserver-method-global-menu-set-item-radio-checkable)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), checkable: [bool](class_bool.md#class-bool)) |
| void | [global\_menu\_set\_item\_state](#class-displayserver-method-global-menu-set-item-state)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), state: [int](class_int.md#class-int)) |
| void | [global\_menu\_set\_item\_submenu](#class-displayserver-method-global-menu-set-item-submenu)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), submenu: [String](class_string.md#class-string)) |
| void | [global\_menu\_set\_item\_tag](#class-displayserver-method-global-menu-set-item-tag)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), tag: [Variant](class_variant.md#class-variant)) |
| void | [global\_menu\_set\_item\_text](#class-displayserver-method-global-menu-set-item-text)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) |
| void | [global\_menu\_set\_item\_tooltip](#class-displayserver-method-global-menu-set-item-tooltip)(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |
| void | [global\_menu\_set\_popup\_callbacks](#class-displayserver-method-global-menu-set-popup-callbacks)(menu\_root: [String](class_string.md#class-string), open\_callback: [Callable](class_callable.md#class-callable), close\_callback: [Callable](class_callable.md#class-callable)) |
| [bool](class_bool.md#class-bool) | [has\_additional\_outputs](#class-displayserver-method-has-additional-outputs)() const |
| [bool](class_bool.md#class-bool) | [has\_feature](#class-displayserver-method-has-feature)(feature: [Feature](#enum-displayserver-feature)) const |
| [bool](class_bool.md#class-bool) | [has\_hardware\_keyboard](#class-displayserver-method-has-hardware-keyboard)() const |
| void | [help\_set\_search\_callbacks](#class-displayserver-method-help-set-search-callbacks)(search\_callback: [Callable](class_callable.md#class-callable), action\_callback: [Callable](class_callable.md#class-callable)) |
| [Vector2i](class_vector2i.md#class-vector2i) | [ime\_get\_selection](#class-displayserver-method-ime-get-selection)() const |
| [String](class_string.md#class-string) | [ime\_get\_text](#class-displayserver-method-ime-get-text)() const |
| [bool](class_bool.md#class-bool) | [is\_dark\_mode](#class-displayserver-method-is-dark-mode)() const |
| [bool](class_bool.md#class-bool) | [is\_dark\_mode\_supported](#class-displayserver-method-is-dark-mode-supported)() const |
| [bool](class_bool.md#class-bool) | [is\_touchscreen\_available](#class-displayserver-method-is-touchscreen-available)() const |
| [bool](class_bool.md#class-bool) | [is\_window\_transparency\_available](#class-displayserver-method-is-window-transparency-available)() const |
| [int](class_int.md#class-int) | [keyboard\_get\_current\_layout](#class-displayserver-method-keyboard-get-current-layout)() const |
| [Key](class_@globalscope.md#enum-globalscope-key) | [keyboard\_get\_keycode\_from\_physical](#class-displayserver-method-keyboard-get-keycode-from-physical)(keycode: [Key](class_@globalscope.md#enum-globalscope-key)) const |
| [Key](class_@globalscope.md#enum-globalscope-key) | [keyboard\_get\_label\_from\_physical](#class-displayserver-method-keyboard-get-label-from-physical)(keycode: [Key](class_@globalscope.md#enum-globalscope-key)) const |
| [int](class_int.md#class-int) | [keyboard\_get\_layout\_count](#class-displayserver-method-keyboard-get-layout-count)() const |
| [String](class_string.md#class-string) | [keyboard\_get\_layout\_language](#class-displayserver-method-keyboard-get-layout-language)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [keyboard\_get\_layout\_name](#class-displayserver-method-keyboard-get-layout-name)(index: [int](class_int.md#class-int)) const |
| void | [keyboard\_set\_current\_layout](#class-displayserver-method-keyboard-set-current-layout)(index: [int](class_int.md#class-int)) |
| BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\] | [mouse\_get\_button\_state](#class-displayserver-method-mouse-get-button-state)() const |
| [MouseMode](#enum-displayserver-mousemode) | [mouse\_get\_mode](#class-displayserver-method-mouse-get-mode)() const |
| [Vector2i](class_vector2i.md#class-vector2i) | [mouse\_get\_position](#class-displayserver-method-mouse-get-position)() const |
| void | [mouse\_set\_mode](#class-displayserver-method-mouse-set-mode)(mouse\_mode: [MouseMode](#enum-displayserver-mousemode)) |
| void | [process\_events](#class-displayserver-method-process-events)() |
| void | [register\_additional\_output](#class-displayserver-method-register-additional-output)(object: [Object](class_object.md#class-object)) |
| [int](class_int.md#class-int) | [screen\_get\_dpi](#class-displayserver-method-screen-get-dpi)(screen: [int](class_int.md#class-int) = -1) const |
| [Image](class_image.md#class-image) | [screen\_get\_image](#class-displayserver-method-screen-get-image)(screen: [int](class_int.md#class-int) = -1) const |
| [Image](class_image.md#class-image) | [screen\_get\_image\_rect](#class-displayserver-method-screen-get-image-rect)(rect: [Rect2i](class_rect2i.md#class-rect2i)) const |
| [float](class_float.md#class-float) | [screen\_get\_max\_scale](#class-displayserver-method-screen-get-max-scale)() const |
| [ScreenOrientation](#enum-displayserver-screenorientation) | [screen\_get\_orientation](#class-displayserver-method-screen-get-orientation)(screen: [int](class_int.md#class-int) = -1) const |
| [Color](class_color.md#class-color) | [screen\_get\_pixel](#class-displayserver-method-screen-get-pixel)(position: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [screen\_get\_position](#class-displayserver-method-screen-get-position)(screen: [int](class_int.md#class-int) = -1) const |
| [float](class_float.md#class-float) | [screen\_get\_refresh\_rate](#class-displayserver-method-screen-get-refresh-rate)(screen: [int](class_int.md#class-int) = -1) const |
| [float](class_float.md#class-float) | [screen\_get\_scale](#class-displayserver-method-screen-get-scale)(screen: [int](class_int.md#class-int) = -1) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [screen\_get\_size](#class-displayserver-method-screen-get-size)(screen: [int](class_int.md#class-int) = -1) const |
| [Rect2i](class_rect2i.md#class-rect2i) | [screen\_get\_usable\_rect](#class-displayserver-method-screen-get-usable-rect)(screen: [int](class_int.md#class-int) = -1) const |
| [bool](class_bool.md#class-bool) | [screen\_is\_kept\_on](#class-displayserver-method-screen-is-kept-on)() const |
| void | [screen\_set\_keep\_on](#class-displayserver-method-screen-set-keep-on)(enable: [bool](class_bool.md#class-bool)) |
| void | [screen\_set\_orientation](#class-displayserver-method-screen-set-orientation)(orientation: [ScreenOrientation](#enum-displayserver-screenorientation), screen: [int](class_int.md#class-int) = -1) |
| void | [set\_hardware\_keyboard\_connection\_change\_callback](#class-displayserver-method-set-hardware-keyboard-connection-change-callback)(callable: [Callable](class_callable.md#class-callable)) |
| void | [set\_icon](#class-displayserver-method-set-icon)(image: [Image](class_image.md#class-image)) |
| void | [set\_native\_icon](#class-displayserver-method-set-native-icon)(filename: [String](class_string.md#class-string)) |
| void | [set\_system\_theme\_change\_callback](#class-displayserver-method-set-system-theme-change-callback)(callable: [Callable](class_callable.md#class-callable)) |
| void | [show\_emoji\_and\_symbol\_picker](#class-displayserver-method-show-emoji-and-symbol-picker)() const |
| [Rect2](class_rect2.md#class-rect2) | [status\_indicator\_get\_rect](#class-displayserver-method-status-indicator-get-rect)(id: [int](class_int.md#class-int)) const |
| void | [status\_indicator\_set\_callback](#class-displayserver-method-status-indicator-set-callback)(id: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) |
| void | [status\_indicator\_set\_icon](#class-displayserver-method-status-indicator-set-icon)(id: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [status\_indicator\_set\_menu](#class-displayserver-method-status-indicator-set-menu)(id: [int](class_int.md#class-int), menu\_rid: [RID](class_rid.md#class-rid)) |
| void | [status\_indicator\_set\_tooltip](#class-displayserver-method-status-indicator-set-tooltip)(id: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |
| [String](class_string.md#class-string) | [tablet\_get\_current\_driver](#class-displayserver-method-tablet-get-current-driver)() const |
| [int](class_int.md#class-int) | [tablet\_get\_driver\_count](#class-displayserver-method-tablet-get-driver-count)() const |
| [String](class_string.md#class-string) | [tablet\_get\_driver\_name](#class-displayserver-method-tablet-get-driver-name)(idx: [int](class_int.md#class-int)) const |
| void | [tablet\_set\_current\_driver](#class-displayserver-method-tablet-set-current-driver)(name: [String](class_string.md#class-string)) |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [tts\_get\_voices](#class-displayserver-method-tts-get-voices)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [tts\_get\_voices\_for\_language](#class-displayserver-method-tts-get-voices-for-language)(language: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [tts\_is\_paused](#class-displayserver-method-tts-is-paused)() const |
| [bool](class_bool.md#class-bool) | [tts\_is\_speaking](#class-displayserver-method-tts-is-speaking)() const |
| void | [tts\_pause](#class-displayserver-method-tts-pause)() |
| void | [tts\_resume](#class-displayserver-method-tts-resume)() |
| void | [tts\_set\_utterance\_callback](#class-displayserver-method-tts-set-utterance-callback)(event: [TTSUtteranceEvent](#enum-displayserver-ttsutteranceevent), callable: [Callable](class_callable.md#class-callable)) |
| void | [tts\_speak](#class-displayserver-method-tts-speak)(text: [String](class_string.md#class-string), voice: [String](class_string.md#class-string), volume: [int](class_int.md#class-int) = 50, pitch: [float](class_float.md#class-float) = 1.0, rate: [float](class_float.md#class-float) = 1.0, utterance\_id: [int](class_int.md#class-int) = 0, interrupt: [bool](class_bool.md#class-bool) = false) |
| void | [tts\_stop](#class-displayserver-method-tts-stop)() |
| void | [unregister\_additional\_output](#class-displayserver-method-unregister-additional-output)(object: [Object](class_object.md#class-object)) |
| [int](class_int.md#class-int) | [virtual\_keyboard\_get\_height](#class-displayserver-method-virtual-keyboard-get-height)() const |
| void | [virtual\_keyboard\_hide](#class-displayserver-method-virtual-keyboard-hide)() |
| void | [virtual\_keyboard\_show](#class-displayserver-method-virtual-keyboard-show)(existing\_text: [String](class_string.md#class-string), position: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), type: [VirtualKeyboardType](#enum-displayserver-virtualkeyboardtype) = 0, max\_length: [int](class_int.md#class-int) = -1, cursor\_start: [int](class_int.md#class-int) = -1, cursor\_end: [int](class_int.md#class-int) = -1) |
| void | [warp\_mouse](#class-displayserver-method-warp-mouse)(position: [Vector2i](class_vector2i.md#class-vector2i)) |
| [bool](class_bool.md#class-bool) | [window\_can\_draw](#class-displayserver-method-window-can-draw)(window\_id: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [window\_get\_active\_popup](#class-displayserver-method-window-get-active-popup)() const |
| [int](class_int.md#class-int) | [window\_get\_attached\_instance\_id](#class-displayserver-method-window-get-attached-instance-id)(window\_id: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [window\_get\_current\_screen](#class-displayserver-method-window-get-current-screen)(window\_id: [int](class_int.md#class-int) = 0) const |
| [bool](class_bool.md#class-bool) | [window\_get\_flag](#class-displayserver-method-window-get-flag)(flag: [WindowFlags](#enum-displayserver-windowflags), window\_id: [int](class_int.md#class-int) = 0) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [window\_get\_max\_size](#class-displayserver-method-window-get-max-size)(window\_id: [int](class_int.md#class-int) = 0) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [window\_get\_min\_size](#class-displayserver-method-window-get-min-size)(window\_id: [int](class_int.md#class-int) = 0) const |
| [WindowMode](#enum-displayserver-windowmode) | [window\_get\_mode](#class-displayserver-method-window-get-mode)(window\_id: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [window\_get\_native\_handle](#class-displayserver-method-window-get-native-handle)(handle\_type: [HandleType](#enum-displayserver-handletype), window\_id: [int](class_int.md#class-int) = 0) const |
| [Rect2i](class_rect2i.md#class-rect2i) | [window\_get\_popup\_safe\_rect](#class-displayserver-method-window-get-popup-safe-rect)(window: [int](class_int.md#class-int)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [window\_get\_position](#class-displayserver-method-window-get-position)(window\_id: [int](class_int.md#class-int) = 0) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [window\_get\_position\_with\_decorations](#class-displayserver-method-window-get-position-with-decorations)(window\_id: [int](class_int.md#class-int) = 0) const |
| [Vector3i](class_vector3i.md#class-vector3i) | [window\_get\_safe\_title\_margins](#class-displayserver-method-window-get-safe-title-margins)(window\_id: [int](class_int.md#class-int) = 0) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [window\_get\_size](#class-displayserver-method-window-get-size)(window\_id: [int](class_int.md#class-int) = 0) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [window\_get\_size\_with\_decorations](#class-displayserver-method-window-get-size-with-decorations)(window\_id: [int](class_int.md#class-int) = 0) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [window\_get\_title\_size](#class-displayserver-method-window-get-title-size)(title: [String](class_string.md#class-string), window\_id: [int](class_int.md#class-int) = 0) const |
| [VSyncMode](#enum-displayserver-vsyncmode) | [window\_get\_vsync\_mode](#class-displayserver-method-window-get-vsync-mode)(window\_id: [int](class_int.md#class-int) = 0) const |
| [bool](class_bool.md#class-bool) | [window\_is\_focused](#class-displayserver-method-window-is-focused)(window\_id: [int](class_int.md#class-int) = 0) const |
| [bool](class_bool.md#class-bool) | [window\_is\_maximize\_allowed](#class-displayserver-method-window-is-maximize-allowed)(window\_id: [int](class_int.md#class-int) = 0) const |
| [bool](class_bool.md#class-bool) | [window\_maximize\_on\_title\_dbl\_click](#class-displayserver-method-window-maximize-on-title-dbl-click)() const |
| [bool](class_bool.md#class-bool) | [window\_minimize\_on\_title\_dbl\_click](#class-displayserver-method-window-minimize-on-title-dbl-click)() const |
| void | [window\_move\_to\_foreground](#class-displayserver-method-window-move-to-foreground)(window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_request\_attention](#class-displayserver-method-window-request-attention)(window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_current\_screen](#class-displayserver-method-window-set-current-screen)(screen: [int](class_int.md#class-int), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_drop\_files\_callback](#class-displayserver-method-window-set-drop-files-callback)(callback: [Callable](class_callable.md#class-callable), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_exclusive](#class-displayserver-method-window-set-exclusive)(window\_id: [int](class_int.md#class-int), exclusive: [bool](class_bool.md#class-bool)) |
| void | [window\_set\_flag](#class-displayserver-method-window-set-flag)(flag: [WindowFlags](#enum-displayserver-windowflags), enabled: [bool](class_bool.md#class-bool), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_ime\_active](#class-displayserver-method-window-set-ime-active)(active: [bool](class_bool.md#class-bool), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_ime\_position](#class-displayserver-method-window-set-ime-position)(position: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_input\_event\_callback](#class-displayserver-method-window-set-input-event-callback)(callback: [Callable](class_callable.md#class-callable), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_input\_text\_callback](#class-displayserver-method-window-set-input-text-callback)(callback: [Callable](class_callable.md#class-callable), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_max\_size](#class-displayserver-method-window-set-max-size)(max\_size: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_min\_size](#class-displayserver-method-window-set-min-size)(min\_size: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_mode](#class-displayserver-method-window-set-mode)(mode: [WindowMode](#enum-displayserver-windowmode), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_mouse\_passthrough](#class-displayserver-method-window-set-mouse-passthrough)(region: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_popup\_safe\_rect](#class-displayserver-method-window-set-popup-safe-rect)(window: [int](class_int.md#class-int), rect: [Rect2i](class_rect2i.md#class-rect2i)) |
| void | [window\_set\_position](#class-displayserver-method-window-set-position)(position: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_rect\_changed\_callback](#class-displayserver-method-window-set-rect-changed-callback)(callback: [Callable](class_callable.md#class-callable), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_size](#class-displayserver-method-window-set-size)(size: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_title](#class-displayserver-method-window-set-title)(title: [String](class_string.md#class-string), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_transient](#class-displayserver-method-window-set-transient)(window\_id: [int](class_int.md#class-int), parent\_window\_id: [int](class_int.md#class-int)) |
| void | [window\_set\_vsync\_mode](#class-displayserver-method-window-set-vsync-mode)(vsync\_mode: [VSyncMode](#enum-displayserver-vsyncmode), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_window\_buttons\_offset](#class-displayserver-method-window-set-window-buttons-offset)(offset: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_set\_window\_event\_callback](#class-displayserver-method-window-set-window-event-callback)(callback: [Callable](class_callable.md#class-callable), window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_start\_drag](#class-displayserver-method-window-start-drag)(window\_id: [int](class_int.md#class-int) = 0) |
| void | [window\_start\_resize](#class-displayserver-method-window-start-resize)(edge: [WindowResizeEdge](#enum-displayserver-windowresizeedge), window\_id: [int](class_int.md#class-int) = 0) |

* * *

## Enumerations

enum **Feature**: [🔗](#enum-displayserver-feature)

[Feature](#enum-displayserver-feature) **FEATURE\_GLOBAL\_MENU** = `0`

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Display server supports global menu. This allows the application to display its menu items in the operating system's top bar. **macOS**

[Feature](#enum-displayserver-feature) **FEATURE\_SUBWINDOWS** = `1`

Display server supports multiple windows that can be moved outside of the main window. **Windows, macOS, Linux (X11)**

[Feature](#enum-displayserver-feature) **FEATURE\_TOUCHSCREEN** = `2`

Display server supports touchscreen input. **Windows, Linux (X11), Android, iOS, Web**

[Feature](#enum-displayserver-feature) **FEATURE\_MOUSE** = `3`

Display server supports mouse input. **Windows, macOS, Linux (X11/Wayland), Android, Web**

[Feature](#enum-displayserver-feature) **FEATURE\_MOUSE\_WARP** = `4`

Display server supports warping mouse coordinates to keep the mouse cursor constrained within an area, but looping when one of the edges is reached. **Windows, macOS, Linux (X11/Wayland)**

[Feature](#enum-displayserver-feature) **FEATURE\_CLIPBOARD** = `5`

Display server supports setting and getting clipboard data. See also [FEATURE\_CLIPBOARD\_PRIMARY](#class-displayserver-constant-feature-clipboard-primary). **Windows, macOS, Linux (X11/Wayland), Android, iOS, Web**

[Feature](#enum-displayserver-feature) **FEATURE\_VIRTUAL\_KEYBOARD** = `6`

Display server supports popping up a virtual keyboard when requested to input text without a physical keyboard. **Android, iOS, Web**

[Feature](#enum-displayserver-feature) **FEATURE\_CURSOR\_SHAPE** = `7`

Display server supports setting the mouse cursor shape to be different from the default. **Windows, macOS, Linux (X11/Wayland), Android, Web**

[Feature](#enum-displayserver-feature) **FEATURE\_CUSTOM\_CURSOR\_SHAPE** = `8`

Display server supports setting the mouse cursor shape to a custom image. **Windows, macOS, Linux (X11/Wayland), Web**

[Feature](#enum-displayserver-feature) **FEATURE\_NATIVE\_DIALOG** = `9`

Display server supports spawning text dialogs using the operating system's native look-and-feel. See [dialog\_show()](#class-displayserver-method-dialog-show). **Windows, macOS**

[Feature](#enum-displayserver-feature) **FEATURE\_IME** = `10`

Display server supports [Input Method Editor](https://en.wikipedia.org/wiki/Input_method), which is commonly used for inputting Chinese/Japanese/Korean text. This is handled by the operating system, rather than by Godot. **Windows, macOS, Linux (X11)**

[Feature](#enum-displayserver-feature) **FEATURE\_WINDOW\_TRANSPARENCY** = `11`

Display server supports windows can use per-pixel transparency to make windows behind them partially or fully visible. **Windows, macOS, Linux (X11/Wayland), Android**

[Feature](#enum-displayserver-feature) **FEATURE\_HIDPI** = `12`

Display server supports querying the operating system's display scale factor. This allows automatically detecting the hiDPI display _reliably_, instead of guessing based on the screen resolution and the display's reported DPI (which might be unreliable due to broken monitor EDID). **Windows, Linux (Wayland), macOS**

[Feature](#enum-displayserver-feature) **FEATURE\_ICON** = `13`

Display server supports changing the window icon (usually displayed in the top-left corner). **Windows, macOS, Linux (X11)**

[Feature](#enum-displayserver-feature) **FEATURE\_NATIVE\_ICON** = `14`

Display server supports changing the window icon (usually displayed in the top-left corner). **Windows, macOS**

[Feature](#enum-displayserver-feature) **FEATURE\_ORIENTATION** = `15`

Display server supports changing the screen orientation. **Android, iOS**

[Feature](#enum-displayserver-feature) **FEATURE\_SWAP\_BUFFERS** = `16`

Display server supports V-Sync status can be changed from the default (which is forced to be enabled platforms not supporting this feature). **Windows, macOS, Linux (X11/Wayland)**

[Feature](#enum-displayserver-feature) **FEATURE\_CLIPBOARD\_PRIMARY** = `18`

Display server supports Primary clipboard can be used. This is a different clipboard from [FEATURE\_CLIPBOARD](#class-displayserver-constant-feature-clipboard). **Linux (X11/Wayland)**

[Feature](#enum-displayserver-feature) **FEATURE\_TEXT\_TO\_SPEECH** = `19`

Display server supports text-to-speech. See `tts_*` methods. **Windows, macOS, Linux (X11/Wayland), Android, iOS, Web**

[Feature](#enum-displayserver-feature) **FEATURE\_EXTEND\_TO\_TITLE** = `20`

Display server supports expanding window content to the title. See [WINDOW\_FLAG\_EXTEND\_TO\_TITLE](#class-displayserver-constant-window-flag-extend-to-title). **macOS**

[Feature](#enum-displayserver-feature) **FEATURE\_SCREEN\_CAPTURE** = `21`

Display server supports reading screen pixels. See [screen\_get\_pixel()](#class-displayserver-method-screen-get-pixel).

[Feature](#enum-displayserver-feature) **FEATURE\_STATUS\_INDICATOR** = `22`

Display server supports application status indicators.

[Feature](#enum-displayserver-feature) **FEATURE\_NATIVE\_HELP** = `23`

Display server supports native help system search callbacks. See [help\_set\_search\_callbacks()](#class-displayserver-method-help-set-search-callbacks).

[Feature](#enum-displayserver-feature) **FEATURE\_NATIVE\_DIALOG\_INPUT** = `24`

Display server supports spawning text input dialogs using the operating system's native look-and-feel. See [dialog\_input\_text()](#class-displayserver-method-dialog-input-text). **Windows, macOS**

[Feature](#enum-displayserver-feature) **FEATURE\_NATIVE\_DIALOG\_FILE** = `25`

Display server supports spawning dialogs for selecting files or directories using the operating system's native look-and-feel. See [file\_dialog\_show()](#class-displayserver-method-file-dialog-show). **Windows, macOS, Linux (X11/Wayland), Android**

[Feature](#enum-displayserver-feature) **FEATURE\_NATIVE\_DIALOG\_FILE\_EXTRA** = `26`

The display server supports all features of [FEATURE\_NATIVE\_DIALOG\_FILE](#class-displayserver-constant-feature-native-dialog-file), with the added functionality of Options and native dialog file access to `res://` and `user://` paths. See [file\_dialog\_show()](#class-displayserver-method-file-dialog-show) and [file\_dialog\_with\_options\_show()](#class-displayserver-method-file-dialog-with-options-show). **Windows, macOS, Linux (X11/Wayland)**

[Feature](#enum-displayserver-feature) **FEATURE\_WINDOW\_DRAG** = `27`

The display server supports initiating window drag and resize operations on demand. See [window\_start\_drag()](#class-displayserver-method-window-start-drag) and [window\_start\_resize()](#class-displayserver-method-window-start-resize).

[Feature](#enum-displayserver-feature) **FEATURE\_SCREEN\_EXCLUDE\_FROM\_CAPTURE** = `28`

Display server supports [WINDOW\_FLAG\_EXCLUDE\_FROM\_CAPTURE](#class-displayserver-constant-window-flag-exclude-from-capture) window flag. **Windows, macOS**

[Feature](#enum-displayserver-feature) **FEATURE\_WINDOW\_EMBEDDING** = `29`

Display server supports embedding a window from another process. **Windows, Linux (X11), macOS**

[Feature](#enum-displayserver-feature) **FEATURE\_NATIVE\_DIALOG\_FILE\_MIME** = `30`

Native file selection dialog supports MIME types as filters.

[Feature](#enum-displayserver-feature) **FEATURE\_EMOJI\_AND\_SYMBOL\_PICKER** = `31`

Display server supports system emoji and symbol picker. **Windows, macOS**

[Feature](#enum-displayserver-feature) **FEATURE\_NATIVE\_COLOR\_PICKER** = `32`

Display server supports native color picker. **Linux (X11/Wayland)**

[Feature](#enum-displayserver-feature) **FEATURE\_SELF\_FITTING\_WINDOWS** = `33`

Display server automatically fits popups according to the screen boundaries. Window nodes should not attempt to do that themselves.

[Feature](#enum-displayserver-feature) **FEATURE\_ACCESSIBILITY\_SCREEN\_READER** = `34`

Display server supports interaction with screen reader or Braille display. **Linux (X11/Wayland), macOS, Windows**

* * *

enum **AccessibilityRole**: [🔗](#enum-displayserver-accessibilityrole)

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_UNKNOWN** = `0`

Unknown or custom role.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_DEFAULT\_BUTTON** = `1`

Default dialog button element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_AUDIO** = `2`

Audio player element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_VIDEO** = `3`

Video player element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_STATIC\_TEXT** = `4`

Non-editable text label.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_CONTAINER** = `5`

Container element. Elements with this role are used for internal structure and ignored by screen readers.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_PANEL** = `6`

Panel container element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_BUTTON** = `7`

Button element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_LINK** = `8`

Link element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_CHECK\_BOX** = `9`

Check box element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_RADIO\_BUTTON** = `10`

Radio button element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_CHECK\_BUTTON** = `11`

Check button element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_SCROLL\_BAR** = `12`

Scroll bar element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_SCROLL\_VIEW** = `13`

Scroll container element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_SPLITTER** = `14`

Container splitter handle element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_SLIDER** = `15`

Slider element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_SPIN\_BUTTON** = `16`

Spin box element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_PROGRESS\_INDICATOR** = `17`

Progress indicator element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_TEXT\_FIELD** = `18`

Editable text field element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_MULTILINE\_TEXT\_FIELD** = `19`

Multiline editable text field element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_COLOR\_PICKER** = `20`

Color picker element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_TABLE** = `21`

Table element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_CELL** = `22`

Table/tree cell element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_ROW** = `23`

Table/tree row element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_ROW\_GROUP** = `24`

Table/tree row group element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_ROW\_HEADER** = `25`

Table/tree row header element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_COLUMN\_HEADER** = `26`

Table/tree column header element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_TREE** = `27`

Tree view element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_TREE\_ITEM** = `28`

Tree view item element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_LIST** = `29`

List element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_LIST\_ITEM** = `30`

List item element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_LIST\_BOX** = `31`

List view element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_LIST\_BOX\_OPTION** = `32`

List view item element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_TAB\_BAR** = `33`

Tab bar element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_TAB** = `34`

Tab bar item element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_TAB\_PANEL** = `35`

Tab panel element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_MENU\_BAR** = `36`

Menu bar element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_MENU** = `37`

Popup menu element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_MENU\_ITEM** = `38`

Popup menu item element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_MENU\_ITEM\_CHECK\_BOX** = `39`

Popup menu check button item element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_MENU\_ITEM\_RADIO** = `40`

Popup menu radio button item element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_IMAGE** = `41`

Image element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_WINDOW** = `42`

Window element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_TITLE\_BAR** = `43`

Embedded window title bar element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_DIALOG** = `44`

Dialog window element.

[AccessibilityRole](#enum-displayserver-accessibilityrole) **ROLE\_TOOLTIP** = `45`

Tooltip element.

* * *

enum **AccessibilityPopupType**: [🔗](#enum-displayserver-accessibilitypopuptype)

[AccessibilityPopupType](#enum-displayserver-accessibilitypopuptype) **POPUP\_MENU** = `0`

Popup menu.

[AccessibilityPopupType](#enum-displayserver-accessibilitypopuptype) **POPUP\_LIST** = `1`

Popup list.

[AccessibilityPopupType](#enum-displayserver-accessibilitypopuptype) **POPUP\_TREE** = `2`

Popup tree view.

[AccessibilityPopupType](#enum-displayserver-accessibilitypopuptype) **POPUP\_DIALOG** = `3`

Popup dialog.

* * *

enum **AccessibilityFlags**: [🔗](#enum-displayserver-accessibilityflags)

[AccessibilityFlags](#enum-displayserver-accessibilityflags) **FLAG\_HIDDEN** = `0`

Element is hidden for accessibility tools.

[AccessibilityFlags](#enum-displayserver-accessibilityflags) **FLAG\_MULTISELECTABLE** = `1`

Element is support multiple item selection.

[AccessibilityFlags](#enum-displayserver-accessibilityflags) **FLAG\_REQUIRED** = `2`

Element require user input.

[AccessibilityFlags](#enum-displayserver-accessibilityflags) **FLAG\_VISITED** = `3`

Element is a visited link.

[AccessibilityFlags](#enum-displayserver-accessibilityflags) **FLAG\_BUSY** = `4`

Element content is not ready (e.g. loading).

[AccessibilityFlags](#enum-displayserver-accessibilityflags) **FLAG\_MODAL** = `5`

Element is modal window.

[AccessibilityFlags](#enum-displayserver-accessibilityflags) **FLAG\_TOUCH\_PASSTHROUGH** = `6`

Element allows touches to be passed through when a screen reader is in touch exploration mode.

[AccessibilityFlags](#enum-displayserver-accessibilityflags) **FLAG\_READONLY** = `7`

Element is text field with selectable but read-only text.

[AccessibilityFlags](#enum-displayserver-accessibilityflags) **FLAG\_DISABLED** = `8`

Element is disabled.

[AccessibilityFlags](#enum-displayserver-accessibilityflags) **FLAG\_CLIPS\_CHILDREN** = `9`

Element clips children.

* * *

enum **AccessibilityAction**: [🔗](#enum-displayserver-accessibilityaction)

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_CLICK** = `0`

Single click action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_FOCUS** = `1`

Focus action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_BLUR** = `2`

Blur action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_COLLAPSE** = `3`

Collapse action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_EXPAND** = `4`

Expand action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_DECREMENT** = `5`

Decrement action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_INCREMENT** = `6`

Increment action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_HIDE\_TOOLTIP** = `7`

Hide tooltip action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SHOW\_TOOLTIP** = `8`

Show tooltip action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SET\_TEXT\_SELECTION** = `9`

Set text selection action, callback argument is set to [Dictionary](class_dictionary.md#class-dictionary) with the following keys:

- `"start_element"` accessibility element of the selection start.

- `"start_char"` character offset relative to the accessibility element of the selection start.

- `"end_element"` accessibility element of the selection end.

- `"end_char"` character offset relative to the accessibility element of the selection end.


[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_REPLACE\_SELECTED\_TEXT** = `10`

Replace text action, callback argument is set to [String](class_string.md#class-string) with the replacement text.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SCROLL\_BACKWARD** = `11`

Scroll backward action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SCROLL\_DOWN** = `12`

Scroll down action, callback argument is set to [AccessibilityScrollUnit](#enum-displayserver-accessibilityscrollunit).

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SCROLL\_FORWARD** = `13`

Scroll forward action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SCROLL\_LEFT** = `14`

Scroll left action, callback argument is set to [AccessibilityScrollUnit](#enum-displayserver-accessibilityscrollunit).

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SCROLL\_RIGHT** = `15`

Scroll right action, callback argument is set to [AccessibilityScrollUnit](#enum-displayserver-accessibilityscrollunit).

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SCROLL\_UP** = `16`

Scroll up action, callback argument is set to [AccessibilityScrollUnit](#enum-displayserver-accessibilityscrollunit).

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SCROLL\_INTO\_VIEW** = `17`

Scroll into view action, callback argument is set to [AccessibilityScrollHint](#enum-displayserver-accessibilityscrollhint).

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SCROLL\_TO\_POINT** = `18`

Scroll to point action, callback argument is set to [Vector2](class_vector2.md#class-vector2) with the relative point coordinates.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SET\_SCROLL\_OFFSET** = `19`

Set scroll offset action, callback argument is set to [Vector2](class_vector2.md#class-vector2) with the scroll offset.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SET\_VALUE** = `20`

Set value action, callback argument is set to [String](class_string.md#class-string) or number with the new value.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_SHOW\_CONTEXT\_MENU** = `21`

Show context menu action, callback argument is not set.

[AccessibilityAction](#enum-displayserver-accessibilityaction) **ACTION\_CUSTOM** = `22`

Custom action, callback argument is set to the integer action ID.

* * *

enum **AccessibilityLiveMode**: [🔗](#enum-displayserver-accessibilitylivemode)

[AccessibilityLiveMode](#enum-displayserver-accessibilitylivemode) **LIVE\_OFF** = `0`

Indicates that updates to the live region should not be presented.

[AccessibilityLiveMode](#enum-displayserver-accessibilitylivemode) **LIVE\_POLITE** = `1`

Indicates that updates to the live region should be presented at the next opportunity (for example at the end of speaking the current sentence).

[AccessibilityLiveMode](#enum-displayserver-accessibilitylivemode) **LIVE\_ASSERTIVE** = `2`

Indicates that updates to the live region have the highest priority and should be presented immediately.

* * *

enum **AccessibilityScrollUnit**: [🔗](#enum-displayserver-accessibilityscrollunit)

[AccessibilityScrollUnit](#enum-displayserver-accessibilityscrollunit) **SCROLL\_UNIT\_ITEM** = `0`

The amount by which to scroll. A single item of a list, line of text.

[AccessibilityScrollUnit](#enum-displayserver-accessibilityscrollunit) **SCROLL\_UNIT\_PAGE** = `1`

The amount by which to scroll. A single page.

* * *

enum **AccessibilityScrollHint**: [🔗](#enum-displayserver-accessibilityscrollhint)

[AccessibilityScrollHint](#enum-displayserver-accessibilityscrollhint) **SCROLL\_HINT\_TOP\_LEFT** = `0`

A preferred position for the node scrolled into view. Top-left edge of the scroll container.

[AccessibilityScrollHint](#enum-displayserver-accessibilityscrollhint) **SCROLL\_HINT\_BOTTOM\_RIGHT** = `1`

A preferred position for the node scrolled into view. Bottom-right edge of the scroll container.

[AccessibilityScrollHint](#enum-displayserver-accessibilityscrollhint) **SCROLL\_HINT\_TOP\_EDGE** = `2`

A preferred position for the node scrolled into view. Top edge of the scroll container.

[AccessibilityScrollHint](#enum-displayserver-accessibilityscrollhint) **SCROLL\_HINT\_BOTTOM\_EDGE** = `3`

A preferred position for the node scrolled into view. Bottom edge of the scroll container.

[AccessibilityScrollHint](#enum-displayserver-accessibilityscrollhint) **SCROLL\_HINT\_LEFT\_EDGE** = `4`

A preferred position for the node scrolled into view. Left edge of the scroll container.

[AccessibilityScrollHint](#enum-displayserver-accessibilityscrollhint) **SCROLL\_HINT\_RIGHT\_EDGE** = `5`

A preferred position for the node scrolled into view. Right edge of the scroll container.

* * *

enum **MouseMode**: [🔗](#enum-displayserver-mousemode)

[MouseMode](#enum-displayserver-mousemode) **MOUSE\_MODE\_VISIBLE** = `0`

Makes the mouse cursor visible if it is hidden.

[MouseMode](#enum-displayserver-mousemode) **MOUSE\_MODE\_HIDDEN** = `1`

Makes the mouse cursor hidden if it is visible.

[MouseMode](#enum-displayserver-mousemode) **MOUSE\_MODE\_CAPTURED** = `2`

Captures the mouse. The mouse will be hidden and its position locked at the center of the window manager's window.

**Note:** If you want to process the mouse's movement in this mode, you need to use [InputEventMouseMotion.relative](class_inputeventmousemotion.md#class-inputeventmousemotion-property-relative).

[MouseMode](#enum-displayserver-mousemode) **MOUSE\_MODE\_CONFINED** = `3`

Confines the mouse cursor to the game window, and make it visible.

[MouseMode](#enum-displayserver-mousemode) **MOUSE\_MODE\_CONFINED\_HIDDEN** = `4`

Confines the mouse cursor to the game window, and make it hidden.

[MouseMode](#enum-displayserver-mousemode) **MOUSE\_MODE\_MAX** = `5`

Max value of the [MouseMode](#enum-displayserver-mousemode).

* * *

enum **ScreenOrientation**: [🔗](#enum-displayserver-screenorientation)

[ScreenOrientation](#enum-displayserver-screenorientation) **SCREEN\_LANDSCAPE** = `0`

Default landscape orientation.

[ScreenOrientation](#enum-displayserver-screenorientation) **SCREEN\_PORTRAIT** = `1`

Default portrait orientation.

[ScreenOrientation](#enum-displayserver-screenorientation) **SCREEN\_REVERSE\_LANDSCAPE** = `2`

Reverse landscape orientation (upside down).

[ScreenOrientation](#enum-displayserver-screenorientation) **SCREEN\_REVERSE\_PORTRAIT** = `3`

Reverse portrait orientation (upside down).

[ScreenOrientation](#enum-displayserver-screenorientation) **SCREEN\_SENSOR\_LANDSCAPE** = `4`

Automatic landscape orientation (default or reverse depending on sensor).

[ScreenOrientation](#enum-displayserver-screenorientation) **SCREEN\_SENSOR\_PORTRAIT** = `5`

Automatic portrait orientation (default or reverse depending on sensor).

[ScreenOrientation](#enum-displayserver-screenorientation) **SCREEN\_SENSOR** = `6`

Automatic landscape or portrait orientation (default or reverse depending on sensor).

* * *

enum **VirtualKeyboardType**: [🔗](#enum-displayserver-virtualkeyboardtype)

[VirtualKeyboardType](#enum-displayserver-virtualkeyboardtype) **KEYBOARD\_TYPE\_DEFAULT** = `0`

Default text virtual keyboard.

[VirtualKeyboardType](#enum-displayserver-virtualkeyboardtype) **KEYBOARD\_TYPE\_MULTILINE** = `1`

Multiline virtual keyboard.

[VirtualKeyboardType](#enum-displayserver-virtualkeyboardtype) **KEYBOARD\_TYPE\_NUMBER** = `2`

Virtual number keypad, useful for PIN entry.

[VirtualKeyboardType](#enum-displayserver-virtualkeyboardtype) **KEYBOARD\_TYPE\_NUMBER\_DECIMAL** = `3`

Virtual number keypad, useful for entering fractional numbers.

[VirtualKeyboardType](#enum-displayserver-virtualkeyboardtype) **KEYBOARD\_TYPE\_PHONE** = `4`

Virtual phone number keypad.

[VirtualKeyboardType](#enum-displayserver-virtualkeyboardtype) **KEYBOARD\_TYPE\_EMAIL\_ADDRESS** = `5`

Virtual keyboard with additional keys to assist with typing email addresses.

[VirtualKeyboardType](#enum-displayserver-virtualkeyboardtype) **KEYBOARD\_TYPE\_PASSWORD** = `6`

Virtual keyboard for entering a password. On most platforms, this should disable autocomplete and autocapitalization.

**Note:** This is not supported on Web. Instead, this behaves identically to [KEYBOARD\_TYPE\_DEFAULT](#class-displayserver-constant-keyboard-type-default).

[VirtualKeyboardType](#enum-displayserver-virtualkeyboardtype) **KEYBOARD\_TYPE\_URL** = `7`

Virtual keyboard with additional keys to assist with typing URLs.

* * *

enum **CursorShape**: [🔗](#enum-displayserver-cursorshape)

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_ARROW** = `0`

Arrow cursor shape. This is the default when not pointing anything that overrides the mouse cursor, such as a [LineEdit](class_lineedit.md#class-lineedit) or [TextEdit](class_textedit.md#class-textedit).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_IBEAM** = `1`

I-beam cursor shape. This is used by default when hovering a control that accepts text input, such as [LineEdit](class_lineedit.md#class-lineedit) or [TextEdit](class_textedit.md#class-textedit).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_POINTING\_HAND** = `2`

Pointing hand cursor shape. This is used by default when hovering a [LinkButton](class_linkbutton.md#class-linkbutton) or a URL tag in a [RichTextLabel](class_richtextlabel.md#class-richtextlabel).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_CROSS** = `3`

Crosshair cursor. This is intended to be displayed when the user needs precise aim over an element, such as a rectangle selection tool or a color picker.

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_WAIT** = `4`

Wait cursor. On most cursor themes, this displays a spinning icon _besides_ the arrow. Intended to be used for non-blocking operations (when the user can do something else at the moment). See also [CURSOR\_BUSY](#class-displayserver-constant-cursor-busy).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_BUSY** = `5`

Wait cursor. On most cursor themes, this _replaces_ the arrow with a spinning icon. Intended to be used for blocking operations (when the user can't do anything else at the moment). See also [CURSOR\_WAIT](#class-displayserver-constant-cursor-wait).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_DRAG** = `6`

Dragging hand cursor. This is displayed during drag-and-drop operations. See also [CURSOR\_CAN\_DROP](#class-displayserver-constant-cursor-can-drop).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_CAN\_DROP** = `7`

"Can drop" cursor. This is displayed during drag-and-drop operations if hovering over a [Control](class_control.md#class-control) that can accept the drag-and-drop event. On most cursor themes, this displays a dragging hand with an arrow symbol besides it. See also [CURSOR\_DRAG](#class-displayserver-constant-cursor-drag).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_FORBIDDEN** = `8`

Forbidden cursor. This is displayed during drag-and-drop operations if the hovered [Control](class_control.md#class-control) can't accept the drag-and-drop event.

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_VSIZE** = `9`

Vertical resize cursor. Intended to be displayed when the hovered [Control](class_control.md#class-control) can be vertically resized using the mouse. See also [CURSOR\_VSPLIT](#class-displayserver-constant-cursor-vsplit).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_HSIZE** = `10`

Horizontal resize cursor. Intended to be displayed when the hovered [Control](class_control.md#class-control) can be horizontally resized using the mouse. See also [CURSOR\_HSPLIT](#class-displayserver-constant-cursor-hsplit).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_BDIAGSIZE** = `11`

Secondary diagonal resize cursor (top-right/bottom-left). Intended to be displayed when the hovered [Control](class_control.md#class-control) can be resized on both axes at once using the mouse.

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_FDIAGSIZE** = `12`

Main diagonal resize cursor (top-left/bottom-right). Intended to be displayed when the hovered [Control](class_control.md#class-control) can be resized on both axes at once using the mouse.

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_MOVE** = `13`

Move cursor. Intended to be displayed when the hovered [Control](class_control.md#class-control) can be moved using the mouse.

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_VSPLIT** = `14`

Vertical split cursor. This is displayed when hovering a [Control](class_control.md#class-control) with splits that can be vertically resized using the mouse, such as [VSplitContainer](class_vsplitcontainer.md#class-vsplitcontainer). On some cursor themes, this cursor may have the same appearance as [CURSOR\_VSIZE](#class-displayserver-constant-cursor-vsize).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_HSPLIT** = `15`

Horizontal split cursor. This is displayed when hovering a [Control](class_control.md#class-control) with splits that can be horizontally resized using the mouse, such as [HSplitContainer](class_hsplitcontainer.md#class-hsplitcontainer). On some cursor themes, this cursor may have the same appearance as [CURSOR\_HSIZE](#class-displayserver-constant-cursor-hsize).

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_HELP** = `16`

Help cursor. On most cursor themes, this displays a question mark icon instead of the mouse cursor. Intended to be used when the user has requested help on the next element that will be clicked.

[CursorShape](#enum-displayserver-cursorshape) **CURSOR\_MAX** = `17`

Represents the size of the [CursorShape](#enum-displayserver-cursorshape) enum.

* * *

enum **FileDialogMode**: [🔗](#enum-displayserver-filedialogmode)

[FileDialogMode](#enum-displayserver-filedialogmode) **FILE\_DIALOG\_MODE\_OPEN\_FILE** = `0`

The native file dialog allows selecting one, and only one file.

[FileDialogMode](#enum-displayserver-filedialogmode) **FILE\_DIALOG\_MODE\_OPEN\_FILES** = `1`

The native file dialog allows selecting multiple files.

[FileDialogMode](#enum-displayserver-filedialogmode) **FILE\_DIALOG\_MODE\_OPEN\_DIR** = `2`

The native file dialog only allows selecting a directory, disallowing the selection of any file.

[FileDialogMode](#enum-displayserver-filedialogmode) **FILE\_DIALOG\_MODE\_OPEN\_ANY** = `3`

The native file dialog allows selecting one file or directory.

[FileDialogMode](#enum-displayserver-filedialogmode) **FILE\_DIALOG\_MODE\_SAVE\_FILE** = `4`

The native file dialog will warn when a file exists.

* * *

enum **WindowMode**: [🔗](#enum-displayserver-windowmode)

[WindowMode](#enum-displayserver-windowmode) **WINDOW\_MODE\_WINDOWED** = `0`

Windowed mode, i.e. [Window](class_window.md#class-window) doesn't occupy the whole screen (unless set to the size of the screen).

[WindowMode](#enum-displayserver-windowmode) **WINDOW\_MODE\_MINIMIZED** = `1`

Minimized window mode, i.e. [Window](class_window.md#class-window) is not visible and available on window manager's window list. Normally happens when the minimize button is pressed.

[WindowMode](#enum-displayserver-windowmode) **WINDOW\_MODE\_MAXIMIZED** = `2`

Maximized window mode, i.e. [Window](class_window.md#class-window) will occupy whole screen area except task bar and still display its borders. Normally happens when the maximize button is pressed.

[WindowMode](#enum-displayserver-windowmode) **WINDOW\_MODE\_FULLSCREEN** = `3`

Full screen mode with full multi-window support.

Full screen window covers the entire display area of a screen and has no decorations. The display's video mode is not changed.

**On Android:** This enables immersive mode.

**On macOS:** A new desktop is used to display the running project.

**Note:** Regardless of the platform, enabling full screen will change the window size to match the monitor's size. Therefore, make sure your project supports [multiple resolutions](../tutorials/rendering/multiple_resolutions.md) when enabling full screen mode.

[WindowMode](#enum-displayserver-windowmode) **WINDOW\_MODE\_EXCLUSIVE\_FULLSCREEN** = `4`

A single window full screen mode. This mode has less overhead, but only one window can be open on a given screen at a time (opening a child window or application switching will trigger a full screen transition).

Full screen window covers the entire display area of a screen and has no border or decorations. The display's video mode is not changed.

**Note:** This mode might not work with screen recording software.

**On Android:** This enables immersive mode.

**On Windows:** Depending on video driver, full screen transition might cause screens to go black for a moment.

**On macOS:** A new desktop is used to display the running project. Exclusive full screen mode prevents Dock and Menu from showing up when the mouse pointer is hovering the edge of the screen.

**On Linux (X11):** Exclusive full screen mode bypasses compositor.

**On Linux (Wayland):** Equivalent to [WINDOW\_MODE\_FULLSCREEN](#class-displayserver-constant-window-mode-fullscreen).

**Note:** Regardless of the platform, enabling full screen will change the window size to match the monitor's size. Therefore, make sure your project supports [multiple resolutions](../tutorials/rendering/multiple_resolutions.md) when enabling full screen mode.

* * *

enum **WindowFlags**: [🔗](#enum-displayserver-windowflags)

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_RESIZE\_DISABLED** = `0`

The window can't be resized by dragging its resize grip. It's still possible to resize the window using [window\_set\_size()](#class-displayserver-method-window-set-size). This flag is ignored for full screen windows.

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_BORDERLESS** = `1`

The window do not have native title bar and other decorations. This flag is ignored for full-screen windows.

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_ALWAYS\_ON\_TOP** = `2`

The window is floating on top of all other windows. This flag is ignored for full-screen windows.

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_TRANSPARENT** = `3`

The window background can be transparent.

**Note:** This flag has no effect if [is\_window\_transparency\_available()](#class-displayserver-method-is-window-transparency-available) returns `false`.

**Note:** Transparency support is implemented on Linux (X11/Wayland), macOS, and Windows, but availability might vary depending on GPU driver, display manager, and compositor capabilities.

**Note:** Transparency support is implemented on Android, but can only be enabled via [ProjectSettings.display/window/per\_pixel\_transparency/allowed](class_projectsettings.md#class-projectsettings-property-display-window-per-pixel-transparency-allowed). This flag has no effect on Android.

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_NO\_FOCUS** = `4`

The window can't be focused. No-focus window will ignore all input, except mouse clicks.

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_POPUP** = `5`

Window is part of menu or [OptionButton](class_optionbutton.md#class-optionbutton) dropdown. This flag can't be changed when the window is visible. An active popup window will exclusively receive all input, without stealing focus from its parent. Popup windows are automatically closed when uses click outside it, or when an application is switched. Popup window must have transient parent set (see [window\_set\_transient()](#class-displayserver-method-window-set-transient)).

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_EXTEND\_TO\_TITLE** = `6`

Window content is expanded to the full size of the window. Unlike borderless window, the frame is left intact and can be used to resize the window, title bar is transparent, but have minimize/maximize/close buttons.

Use [window\_set\_window\_buttons\_offset()](#class-displayserver-method-window-set-window-buttons-offset) to adjust minimize/maximize/close buttons offset.

Use [window\_get\_safe\_title\_margins()](#class-displayserver-method-window-get-safe-title-margins) to determine area under the title bar that is not covered by decorations.

**Note:** This flag is implemented only on macOS.

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_MOUSE\_PASSTHROUGH** = `7`

All mouse events are passed to the underlying window of the same application.

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_SHARP\_CORNERS** = `8`

Window style is overridden, forcing sharp corners.

**Note:** This flag is implemented only on Windows (11).

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_EXCLUDE\_FROM\_CAPTURE** = `9`

Window is excluded from screenshots taken by [screen\_get\_image()](#class-displayserver-method-screen-get-image), [screen\_get\_image\_rect()](#class-displayserver-method-screen-get-image-rect), and [screen\_get\_pixel()](#class-displayserver-method-screen-get-pixel).

**Note:** This flag is implemented on macOS and Windows (10, 20H1).

**Note:** Setting this flag will prevent standard screenshot methods from capturing a window image, but does **NOT** guarantee that other apps won't be able to capture an image. It should not be used as a DRM or security measure.

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_POPUP\_WM\_HINT** = `10`

Signals the window manager that this window is supposed to be an implementation-defined "popup" (usually a floating, borderless, untileable and immovable child window).

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_MINIMIZE\_DISABLED** = `11`

Window minimize button is disabled.

**Note:** This flag is implemented on macOS and Windows.

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_MAXIMIZE\_DISABLED** = `12`

Window maximize button is disabled.

**Note:** This flag is implemented on macOS and Windows.

[WindowFlags](#enum-displayserver-windowflags) **WINDOW\_FLAG\_MAX** = `13`

Max value of the [WindowFlags](#enum-displayserver-windowflags).

* * *

enum **WindowEvent**: [🔗](#enum-displayserver-windowevent)

[WindowEvent](#enum-displayserver-windowevent) **WINDOW\_EVENT\_MOUSE\_ENTER** = `0`

Sent when the mouse pointer enters the window.

[WindowEvent](#enum-displayserver-windowevent) **WINDOW\_EVENT\_MOUSE\_EXIT** = `1`

Sent when the mouse pointer exits the window.

[WindowEvent](#enum-displayserver-windowevent) **WINDOW\_EVENT\_FOCUS\_IN** = `2`

Sent when the window grabs focus.

[WindowEvent](#enum-displayserver-windowevent) **WINDOW\_EVENT\_FOCUS\_OUT** = `3`

Sent when the window loses focus.

[WindowEvent](#enum-displayserver-windowevent) **WINDOW\_EVENT\_CLOSE\_REQUEST** = `4`

Sent when the user has attempted to close the window (e.g. close button is pressed).

[WindowEvent](#enum-displayserver-windowevent) **WINDOW\_EVENT\_GO\_BACK\_REQUEST** = `5`

Sent when the device "Back" button is pressed.

**Note:** This event is implemented only on Android.

[WindowEvent](#enum-displayserver-windowevent) **WINDOW\_EVENT\_DPI\_CHANGE** = `6`

Sent when the window is moved to the display with different DPI, or display DPI is changed.

**Note:** This flag is implemented only on macOS and Linux (Wayland).

[WindowEvent](#enum-displayserver-windowevent) **WINDOW\_EVENT\_TITLEBAR\_CHANGE** = `7`

Sent when the window title bar decoration is changed (e.g. [WINDOW\_FLAG\_EXTEND\_TO\_TITLE](#class-displayserver-constant-window-flag-extend-to-title) is set or window entered/exited full screen mode).

**Note:** This flag is implemented only on macOS.

[WindowEvent](#enum-displayserver-windowevent) **WINDOW\_EVENT\_FORCE\_CLOSE** = `8`

Sent when the window has been forcibly closed by the Display Server. The window shall immediately hide and clean any internal rendering references.

**Note:** This flag is implemented only on Linux (Wayland).

* * *

enum **WindowResizeEdge**: [🔗](#enum-displayserver-windowresizeedge)

[WindowResizeEdge](#enum-displayserver-windowresizeedge) **WINDOW\_EDGE\_TOP\_LEFT** = `0`

Top-left edge of a window.

[WindowResizeEdge](#enum-displayserver-windowresizeedge) **WINDOW\_EDGE\_TOP** = `1`

Top edge of a window.

[WindowResizeEdge](#enum-displayserver-windowresizeedge) **WINDOW\_EDGE\_TOP\_RIGHT** = `2`

Top-right edge of a window.

[WindowResizeEdge](#enum-displayserver-windowresizeedge) **WINDOW\_EDGE\_LEFT** = `3`

Left edge of a window.

[WindowResizeEdge](#enum-displayserver-windowresizeedge) **WINDOW\_EDGE\_RIGHT** = `4`

Right edge of a window.

[WindowResizeEdge](#enum-displayserver-windowresizeedge) **WINDOW\_EDGE\_BOTTOM\_LEFT** = `5`

Bottom-left edge of a window.

[WindowResizeEdge](#enum-displayserver-windowresizeedge) **WINDOW\_EDGE\_BOTTOM** = `6`

Bottom edge of a window.

[WindowResizeEdge](#enum-displayserver-windowresizeedge) **WINDOW\_EDGE\_BOTTOM\_RIGHT** = `7`

Bottom-right edge of a window.

[WindowResizeEdge](#enum-displayserver-windowresizeedge) **WINDOW\_EDGE\_MAX** = `8`

Represents the size of the [WindowResizeEdge](#enum-displayserver-windowresizeedge) enum.

* * *

enum **VSyncMode**: [🔗](#enum-displayserver-vsyncmode)

[VSyncMode](#enum-displayserver-vsyncmode) **VSYNC\_DISABLED** = `0`

No vertical synchronization, which means the engine will display frames as fast as possible (tearing may be visible). Framerate is unlimited (regardless of [Engine.max\_fps](class_engine.md#class-engine-property-max-fps)).

[VSyncMode](#enum-displayserver-vsyncmode) **VSYNC\_ENABLED** = `1`

Default vertical synchronization mode, the image is displayed only on vertical blanking intervals (no tearing is visible). Framerate is limited by the monitor refresh rate (regardless of [Engine.max\_fps](class_engine.md#class-engine-property-max-fps)).

[VSyncMode](#enum-displayserver-vsyncmode) **VSYNC\_ADAPTIVE** = `2`

Behaves like [VSYNC\_DISABLED](#class-displayserver-constant-vsync-disabled) when the framerate drops below the screen's refresh rate to reduce stuttering (tearing may be visible). Otherwise, vertical synchronization is enabled to avoid tearing. Framerate is limited by the monitor refresh rate (regardless of [Engine.max\_fps](class_engine.md#class-engine-property-max-fps)). Behaves like [VSYNC\_ENABLED](#class-displayserver-constant-vsync-enabled) when using the Compatibility rendering method.

[VSyncMode](#enum-displayserver-vsyncmode) **VSYNC\_MAILBOX** = `3`

Displays the most recent image in the queue on vertical blanking intervals, while rendering to the other images (no tearing is visible). Framerate is unlimited (regardless of [Engine.max\_fps](class_engine.md#class-engine-property-max-fps)).

Although not guaranteed, the images can be rendered as fast as possible, which may reduce input lag (also called "Fast" V-Sync mode). [VSYNC\_MAILBOX](#class-displayserver-constant-vsync-mailbox) works best when at least twice as many frames as the display refresh rate are rendered. Behaves like [VSYNC\_ENABLED](#class-displayserver-constant-vsync-enabled) when using the Compatibility rendering method.

* * *

enum **HandleType**: [🔗](#enum-displayserver-handletype)

[HandleType](#enum-displayserver-handletype) **DISPLAY\_HANDLE** = `0`

Display handle:

- Linux (X11): `X11::Display*` for the display.

- Linux (Wayland): `wl_display` for the display.

- Android: `EGLDisplay` for the display.


[HandleType](#enum-displayserver-handletype) **WINDOW\_HANDLE** = `1`

Window handle:

- Windows: `HWND` for the window.

- Linux (X11): `X11::Window*` for the window.

- Linux (Wayland): `wl_surface` for the window.

- macOS: `NSWindow*` for the window.

- iOS: `UIViewController*` for the view controller.

- Android: `jObject` for the activity.


[HandleType](#enum-displayserver-handletype) **WINDOW\_VIEW** = `2`

Window view:

- Windows: `HDC` for the window (only with the Compatibility renderer).

- macOS: `NSView*` for the window main view.

- iOS: `UIView*` for the window main view.


[HandleType](#enum-displayserver-handletype) **OPENGL\_CONTEXT** = `3`

OpenGL context (only with the Compatibility renderer):

- Windows: `HGLRC` for the window (native GL), or `EGLContext` for the window (ANGLE).

- Linux (X11): `GLXContext*` for the window.

- Linux (Wayland): `EGLContext` for the window.

- macOS: `NSOpenGLContext*` for the window (native GL), or `EGLContext` for the window (ANGLE).

- Android: `EGLContext` for the window.


[HandleType](#enum-displayserver-handletype) **EGL\_DISPLAY** = `4`

- Windows: `EGLDisplay` for the window (ANGLE).

- macOS: `EGLDisplay` for the window (ANGLE).

- Linux (Wayland): `EGLDisplay` for the window.


[HandleType](#enum-displayserver-handletype) **EGL\_CONFIG** = `5`

- Windows: `EGLConfig` for the window (ANGLE).

- macOS: `EGLConfig` for the window (ANGLE).

- Linux (Wayland): `EGLConfig` for the window.


* * *

enum **TTSUtteranceEvent**: [🔗](#enum-displayserver-ttsutteranceevent)

[TTSUtteranceEvent](#enum-displayserver-ttsutteranceevent) **TTS\_UTTERANCE\_STARTED** = `0`

Utterance has begun to be spoken.

[TTSUtteranceEvent](#enum-displayserver-ttsutteranceevent) **TTS\_UTTERANCE\_ENDED** = `1`

Utterance was successfully finished.

[TTSUtteranceEvent](#enum-displayserver-ttsutteranceevent) **TTS\_UTTERANCE\_CANCELED** = `2`

Utterance was canceled, or TTS service was unable to process it.

[TTSUtteranceEvent](#enum-displayserver-ttsutteranceevent) **TTS\_UTTERANCE\_BOUNDARY** = `3`

Utterance reached a word or sentence boundary.

* * *

## Constants

**INVALID\_SCREEN** = `-1` [🔗](#class-displayserver-constant-invalid-screen)

The ID that refers to a screen that does not exist. This is returned by some **DisplayServer** methods if no screen matches the requested result.

**SCREEN\_WITH\_MOUSE\_FOCUS** = `-4` [🔗](#class-displayserver-constant-screen-with-mouse-focus)

Represents the screen containing the mouse pointer.

**Note:** On Android, iOS, Web, and Linux (Wayland), this constant always represents the screen at index `0`.

**SCREEN\_WITH\_KEYBOARD\_FOCUS** = `-3` [🔗](#class-displayserver-constant-screen-with-keyboard-focus)

Represents the screen containing the window with the keyboard focus.

**Note:** On Android, iOS, Web, and Linux (Wayland), this constant always represents the screen at index `0`.

**SCREEN\_PRIMARY** = `-2` [🔗](#class-displayserver-constant-screen-primary)

Represents the primary screen.

**Note:** On Android, iOS, Web, and Linux (Wayland), this constant always represents the screen at index `0`.

**SCREEN\_OF\_MAIN\_WINDOW** = `-1` [🔗](#class-displayserver-constant-screen-of-main-window)

Represents the screen where the main window is located. This is usually the default value in functions that allow specifying one of several screens.

**Note:** On Android, iOS, Web, and Linux (Wayland), this constant always represents the screen at index `0`.

**MAIN\_WINDOW\_ID** = `0` [🔗](#class-displayserver-constant-main-window-id)

The ID of the main window spawned by the engine, which can be passed to methods expecting a `window_id`.

**INVALID\_WINDOW\_ID** = `-1` [🔗](#class-displayserver-constant-invalid-window-id)

The ID that refers to a nonexistent window. This is returned by some **DisplayServer** methods if no window matches the requested result.

**INVALID\_INDICATOR\_ID** = `-1` [🔗](#class-displayserver-constant-invalid-indicator-id)

The ID that refers to a nonexistent application status indicator.

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **accessibility\_create\_element**(window\_id: [int](class_int.md#class-int), role: [AccessibilityRole](#enum-displayserver-accessibilityrole)) [🔗](#class-displayserver-method-accessibility-create-element)

Creates a new, empty accessibility element resource.

**Note:** An accessibility element is created and freed automatically for each [Node](class_node.md#class-node). In general, this function should not be called manually.

* * *

[RID](class_rid.md#class-rid) **accessibility\_create\_sub\_element**(parent\_rid: [RID](class_rid.md#class-rid), role: [AccessibilityRole](#enum-displayserver-accessibilityrole), insert\_pos: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-accessibility-create-sub-element)

Creates a new, empty accessibility sub-element resource. Sub-elements can be used to provide accessibility information for objects which are not [Node](class_node.md#class-node) s, such as list items, table cells, or menu items. Sub-elements are freed automatically when the parent element is freed, or can be freed early using the [accessibility\_free\_element()](#class-displayserver-method-accessibility-free-element) method.

* * *

[RID](class_rid.md#class-rid) **accessibility\_create\_sub\_text\_edit\_elements**(parent\_rid: [RID](class_rid.md#class-rid), shaped\_text: [RID](class_rid.md#class-rid), min\_height: [float](class_float.md#class-float), insert\_pos: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-accessibility-create-sub-text-edit-elements)

Creates a new, empty accessibility sub-element from the shaped text buffer. Sub-elements are freed automatically when the parent element is freed, or can be freed early using the [accessibility\_free\_element()](#class-displayserver-method-accessibility-free-element) method.

* * *

[Variant](class_variant.md#class-variant) **accessibility\_element\_get\_meta**(id: [RID](class_rid.md#class-rid)) const [🔗](#class-displayserver-method-accessibility-element-get-meta)

Returns the metadata of the accessibility element.

* * *

void **accessibility\_element\_set\_meta**(id: [RID](class_rid.md#class-rid), meta: [Variant](class_variant.md#class-variant)) [🔗](#class-displayserver-method-accessibility-element-set-meta)

Sets the metadata of the accessibility element.

* * *

void **accessibility\_free\_element**(id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-free-element)

Frees an object created by [accessibility\_create\_element()](#class-displayserver-method-accessibility-create-element), [accessibility\_create\_sub\_element()](#class-displayserver-method-accessibility-create-sub-element), or [accessibility\_create\_sub\_text\_edit\_elements()](#class-displayserver-method-accessibility-create-sub-text-edit-elements).

* * *

[RID](class_rid.md#class-rid) **accessibility\_get\_window\_root**(window\_id: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-accessibility-get-window-root)

Returns the main accessibility element of the OS native window.

* * *

[bool](class_bool.md#class-bool) **accessibility\_has\_element**(id: [RID](class_rid.md#class-rid)) const [🔗](#class-displayserver-method-accessibility-has-element)

Returns `true` if `id` is a valid accessibility element.

* * *

[int](class_int.md#class-int) **accessibility\_screen\_reader\_active**() const [🔗](#class-displayserver-method-accessibility-screen-reader-active)

Returns `1` if a screen reader, Braille display or other assistive app is active, `0` otherwise. Returns `-1` if status is unknown.

**Note:** This method is implemented on Linux, macOS, and Windows.

**Note:** Accessibility debugging tools, such as Accessibility Insights for Windows, macOS Accessibility Inspector, or AT-SPI Browser do not count as assistive apps and will not affect this value. To test your app with these tools, set [ProjectSettings.accessibility/general/accessibility\_support](class_projectsettings.md#class-projectsettings-property-accessibility-general-accessibility-support) to `1`.

* * *

void **accessibility\_set\_window\_focused**(window\_id: [int](class_int.md#class-int), focused: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-accessibility-set-window-focused)

Sets the window focused state for assistive apps.

**Note:** This method is implemented on Linux, macOS, and Windows.

**Note:** Advanced users only! [Window](class_window.md#class-window) objects call this method automatically.

* * *

void **accessibility\_set\_window\_rect**(window\_id: [int](class_int.md#class-int), rect\_out: [Rect2](class_rect2.md#class-rect2), rect\_in: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-displayserver-method-accessibility-set-window-rect)

Sets window outer (with decorations) and inner (without decorations) bounds for assistive apps.

**Note:** This method is implemented on Linux, macOS, and Windows.

**Note:** Advanced users only! [Window](class_window.md#class-window) objects call this method automatically.

* * *

[int](class_int.md#class-int) **accessibility\_should\_increase\_contrast**() const [🔗](#class-displayserver-method-accessibility-should-increase-contrast)

Returns `1` if a high-contrast user interface theme should be used, `0` otherwise. Returns `-1` if status is unknown.

**Note:** This method is implemented on Linux (X11/Wayland, GNOME), macOS, and Windows.

* * *

[int](class_int.md#class-int) **accessibility\_should\_reduce\_animation**() const [🔗](#class-displayserver-method-accessibility-should-reduce-animation)

Returns `1` if flashing, blinking, and other moving content that can cause seizures in users with photosensitive epilepsy should be disabled, `0` otherwise. Returns `-1` if status is unknown.

**Note:** This method is implemented on macOS and Windows.

* * *

[int](class_int.md#class-int) **accessibility\_should\_reduce\_transparency**() const [🔗](#class-displayserver-method-accessibility-should-reduce-transparency)

Returns `1` if background images, transparency, and other features that can reduce the contrast between the foreground and background should be disabled, `0` otherwise. Returns `-1` if status is unknown.

**Note:** This method is implemented on macOS and Windows.

* * *

void **accessibility\_update\_add\_action**(id: [RID](class_rid.md#class-rid), action: [AccessibilityAction](#enum-displayserver-accessibilityaction), callable: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-accessibility-update-add-action)

Adds a callback for the accessibility action (action which can be performed by using a special screen reader command or buttons on the Braille display), and marks this action as supported. The action callback receives one [Variant](class_variant.md#class-variant) argument, which value depends on action type.

* * *

void **accessibility\_update\_add\_child**(id: [RID](class_rid.md#class-rid), child\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-add-child)

Adds a child accessibility element.

**Note:** [Node](class_node.md#class-node) children and sub-elements are added to the child list automatically.

* * *

void **accessibility\_update\_add\_custom\_action**(id: [RID](class_rid.md#class-rid), action\_id: [int](class_int.md#class-int), action\_description: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-add-custom-action)

Adds support for a custom accessibility action. `action_id` is passed as an argument to the callback of [ACTION\_CUSTOM](#class-displayserver-constant-action-custom) action.

* * *

void **accessibility\_update\_add\_related\_controls**(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-add-related-controls)

Adds an element that is controlled by this element.

* * *

void **accessibility\_update\_add\_related\_described\_by**(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-add-related-described-by)

Adds an element that describes this element.

* * *

void **accessibility\_update\_add\_related\_details**(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-add-related-details)

Adds an element that details this element.

* * *

void **accessibility\_update\_add\_related\_flow\_to**(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-add-related-flow-to)

Adds an element that this element flow into.

* * *

void **accessibility\_update\_add\_related\_labeled\_by**(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-add-related-labeled-by)

Adds an element that labels this element.

* * *

void **accessibility\_update\_add\_related\_radio\_group**(id: [RID](class_rid.md#class-rid), related\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-add-related-radio-group)

Adds an element that is part of the same radio group.

**Note:** This method should be called on each element of the group, using all other elements as `related_id`.

* * *

void **accessibility\_update\_set\_active\_descendant**(id: [RID](class_rid.md#class-rid), other\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-set-active-descendant)

Adds an element that is an active descendant of this element.

* * *

void **accessibility\_update\_set\_background\_color**(id: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-displayserver-method-accessibility-update-set-background-color)

Sets element background color.

* * *

void **accessibility\_update\_set\_bounds**(id: [RID](class_rid.md#class-rid), p\_rect: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-displayserver-method-accessibility-update-set-bounds)

Sets element bounding box, relative to the node position.

* * *

void **accessibility\_update\_set\_checked**(id: [RID](class_rid.md#class-rid), checekd: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-accessibility-update-set-checked)

Sets element checked state.

* * *

void **accessibility\_update\_set\_classname**(id: [RID](class_rid.md#class-rid), classname: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-classname)

Sets element class name.

* * *

void **accessibility\_update\_set\_color\_value**(id: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-displayserver-method-accessibility-update-set-color-value)

Sets element color value.

* * *

void **accessibility\_update\_set\_description**(id: [RID](class_rid.md#class-rid), description: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-description)

Sets element accessibility description.

* * *

void **accessibility\_update\_set\_error\_message**(id: [RID](class_rid.md#class-rid), other\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-set-error-message)

Sets an element which contains an error message for this element.

* * *

void **accessibility\_update\_set\_extra\_info**(id: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-extra-info)

Sets element accessibility extra information added to the element name.

* * *

void **accessibility\_update\_set\_flag**(id: [RID](class_rid.md#class-rid), flag: [AccessibilityFlags](#enum-displayserver-accessibilityflags), value: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-accessibility-update-set-flag)

Sets element flag.

* * *

void **accessibility\_update\_set\_focus**(id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-set-focus)

Sets currently focused element.

* * *

void **accessibility\_update\_set\_foreground\_color**(id: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-displayserver-method-accessibility-update-set-foreground-color)

Sets element foreground color.

* * *

void **accessibility\_update\_set\_in\_page\_link\_target**(id: [RID](class_rid.md#class-rid), other\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-set-in-page-link-target)

Sets target element for the link.

* * *

void **accessibility\_update\_set\_language**(id: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-language)

Sets element text language.

* * *

void **accessibility\_update\_set\_list\_item\_count**(id: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-accessibility-update-set-list-item-count)

Sets number of items in the list.

* * *

void **accessibility\_update\_set\_list\_item\_expanded**(id: [RID](class_rid.md#class-rid), expanded: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-accessibility-update-set-list-item-expanded)

Sets list/tree item expanded status.

* * *

void **accessibility\_update\_set\_list\_item\_index**(id: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-accessibility-update-set-list-item-index)

Sets the position of the element in the list.

* * *

void **accessibility\_update\_set\_list\_item\_level**(id: [RID](class_rid.md#class-rid), level: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-accessibility-update-set-list-item-level)

Sets the hierarchical level of the element in the list.

* * *

void **accessibility\_update\_set\_list\_item\_selected**(id: [RID](class_rid.md#class-rid), selected: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-accessibility-update-set-list-item-selected)

Sets list/tree item selected status.

* * *

void **accessibility\_update\_set\_list\_orientation**(id: [RID](class_rid.md#class-rid), vertical: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-accessibility-update-set-list-orientation)

Sets the orientation of the list elements.

* * *

void **accessibility\_update\_set\_live**(id: [RID](class_rid.md#class-rid), live: [AccessibilityLiveMode](#enum-displayserver-accessibilitylivemode)) [🔗](#class-displayserver-method-accessibility-update-set-live)

Sets the priority of the live region updates.

* * *

void **accessibility\_update\_set\_member\_of**(id: [RID](class_rid.md#class-rid), group\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-set-member-of)

Sets the element to be a member of the group.

* * *

void **accessibility\_update\_set\_name**(id: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-name)

Sets element accessibility name.

* * *

void **accessibility\_update\_set\_next\_on\_line**(id: [RID](class_rid.md#class-rid), other\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-set-next-on-line)

Sets next element on the line.

* * *

void **accessibility\_update\_set\_num\_jump**(id: [RID](class_rid.md#class-rid), jump: [float](class_float.md#class-float)) [🔗](#class-displayserver-method-accessibility-update-set-num-jump)

Sets numeric value jump.

* * *

void **accessibility\_update\_set\_num\_range**(id: [RID](class_rid.md#class-rid), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) [🔗](#class-displayserver-method-accessibility-update-set-num-range)

Sets numeric value range.

* * *

void **accessibility\_update\_set\_num\_step**(id: [RID](class_rid.md#class-rid), step: [float](class_float.md#class-float)) [🔗](#class-displayserver-method-accessibility-update-set-num-step)

Sets numeric value step.

* * *

void **accessibility\_update\_set\_num\_value**(id: [RID](class_rid.md#class-rid), position: [float](class_float.md#class-float)) [🔗](#class-displayserver-method-accessibility-update-set-num-value)

Sets numeric value.

* * *

void **accessibility\_update\_set\_placeholder**(id: [RID](class_rid.md#class-rid), placeholder: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-placeholder)

Sets placeholder text.

* * *

void **accessibility\_update\_set\_popup\_type**(id: [RID](class_rid.md#class-rid), popup: [AccessibilityPopupType](#enum-displayserver-accessibilitypopuptype)) [🔗](#class-displayserver-method-accessibility-update-set-popup-type)

Sets popup type for popup buttons.

* * *

void **accessibility\_update\_set\_previous\_on\_line**(id: [RID](class_rid.md#class-rid), other\_id: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-accessibility-update-set-previous-on-line)

Sets previous element on the line.

* * *

void **accessibility\_update\_set\_role**(id: [RID](class_rid.md#class-rid), role: [AccessibilityRole](#enum-displayserver-accessibilityrole)) [🔗](#class-displayserver-method-accessibility-update-set-role)

Sets element accessibility role.

* * *

void **accessibility\_update\_set\_role\_description**(id: [RID](class_rid.md#class-rid), description: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-role-description)

Sets element accessibility role description text.

* * *

void **accessibility\_update\_set\_scroll\_x**(id: [RID](class_rid.md#class-rid), position: [float](class_float.md#class-float)) [🔗](#class-displayserver-method-accessibility-update-set-scroll-x)

Sets scroll bar x position.

* * *

void **accessibility\_update\_set\_scroll\_x\_range**(id: [RID](class_rid.md#class-rid), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) [🔗](#class-displayserver-method-accessibility-update-set-scroll-x-range)

Sets scroll bar x range.

* * *

void **accessibility\_update\_set\_scroll\_y**(id: [RID](class_rid.md#class-rid), position: [float](class_float.md#class-float)) [🔗](#class-displayserver-method-accessibility-update-set-scroll-y)

Sets scroll bar y position.

* * *

void **accessibility\_update\_set\_scroll\_y\_range**(id: [RID](class_rid.md#class-rid), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) [🔗](#class-displayserver-method-accessibility-update-set-scroll-y-range)

Sets scroll bar y range.

* * *

void **accessibility\_update\_set\_shortcut**(id: [RID](class_rid.md#class-rid), shortcut: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-shortcut)

Sets the list of keyboard shortcuts used by element.

* * *

void **accessibility\_update\_set\_state\_description**(id: [RID](class_rid.md#class-rid), description: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-state-description)

Sets human-readable description of the current checked state.

* * *

void **accessibility\_update\_set\_table\_cell\_position**(id: [RID](class_rid.md#class-rid), row\_index: [int](class_int.md#class-int), column\_index: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-accessibility-update-set-table-cell-position)

Sets cell position in the table.

* * *

void **accessibility\_update\_set\_table\_cell\_span**(id: [RID](class_rid.md#class-rid), row\_span: [int](class_int.md#class-int), column\_span: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-accessibility-update-set-table-cell-span)

Sets cell row/column span.

* * *

void **accessibility\_update\_set\_table\_column\_count**(id: [RID](class_rid.md#class-rid), count: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-accessibility-update-set-table-column-count)

Sets number of columns in the table.

* * *

void **accessibility\_update\_set\_table\_column\_index**(id: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-accessibility-update-set-table-column-index)

Sets position of the column.

* * *

void **accessibility\_update\_set\_table\_row\_count**(id: [RID](class_rid.md#class-rid), count: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-accessibility-update-set-table-row-count)

Sets number of rows in the table.

* * *

void **accessibility\_update\_set\_table\_row\_index**(id: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-accessibility-update-set-table-row-index)

Sets position of the row in the table.

* * *

void **accessibility\_update\_set\_text\_align**(id: [RID](class_rid.md#class-rid), align: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment)) [🔗](#class-displayserver-method-accessibility-update-set-text-align)

Sets element text alignment.

* * *

void **accessibility\_update\_set\_text\_decorations**(id: [RID](class_rid.md#class-rid), underline: [bool](class_bool.md#class-bool), strikethrough: [bool](class_bool.md#class-bool), overline: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-accessibility-update-set-text-decorations)

Sets text underline/overline/strikethrough.

* * *

void **accessibility\_update\_set\_text\_orientation**(id: [RID](class_rid.md#class-rid), vertical: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-accessibility-update-set-text-orientation)

Sets text orientation.

* * *

void **accessibility\_update\_set\_text\_selection**(id: [RID](class_rid.md#class-rid), text\_start\_id: [RID](class_rid.md#class-rid), start\_char: [int](class_int.md#class-int), text\_end\_id: [RID](class_rid.md#class-rid), end\_char: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-accessibility-update-set-text-selection)

Sets text selection to the text field. `text_start_id` and `text_end_id` should be elements created by [accessibility\_create\_sub\_text\_edit\_elements()](#class-displayserver-method-accessibility-create-sub-text-edit-elements). Character offsets are relative to the corresponding element.

* * *

void **accessibility\_update\_set\_tooltip**(id: [RID](class_rid.md#class-rid), tooltip: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-tooltip)

Sets tooltip text.

* * *

void **accessibility\_update\_set\_transform**(id: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-displayserver-method-accessibility-update-set-transform)

Sets element 2D transform.

* * *

void **accessibility\_update\_set\_url**(id: [RID](class_rid.md#class-rid), url: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-url)

Sets link URL.

* * *

void **accessibility\_update\_set\_value**(id: [RID](class_rid.md#class-rid), value: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-accessibility-update-set-value)

Sets element text value.

* * *

void **beep**() const [🔗](#class-displayserver-method-beep)

Plays the beep sound from the operative system, if possible. Because it comes from the OS, the beep sound will be audible even if the application is muted. It may also be disabled for the entire OS by the user.

**Note:** This method is implemented on macOS, Linux (X11/Wayland), and Windows.

* * *

[String](class_string.md#class-string) **clipboard\_get**() const [🔗](#class-displayserver-method-clipboard-get)

Returns the user's clipboard as a string if possible.

* * *

[Image](class_image.md#class-image) **clipboard\_get\_image**() const [🔗](#class-displayserver-method-clipboard-get-image)

Returns the user's clipboard as an image if possible.

**Note:** This method uses the copied pixel data, e.g. from an image editing software or a web browser, not an image file copied from file explorer.

* * *

[String](class_string.md#class-string) **clipboard\_get\_primary**() const [🔗](#class-displayserver-method-clipboard-get-primary)

Returns the user's [primary](https://unix.stackexchange.com/questions/139191/whats-the-difference-between-primary-selection-and-clipboard-buffer) clipboard as a string if possible. This is the clipboard that is set when the user selects text in any application, rather than when pressing `Ctrl + C`. The clipboard data can then be pasted by clicking the middle mouse button in any application that supports the primary clipboard mechanism.

**Note:** This method is only implemented on Linux (X11/Wayland).

* * *

[bool](class_bool.md#class-bool) **clipboard\_has**() const [🔗](#class-displayserver-method-clipboard-has)

Returns `true` if there is a text content on the user's clipboard.

* * *

[bool](class_bool.md#class-bool) **clipboard\_has\_image**() const [🔗](#class-displayserver-method-clipboard-has-image)

Returns `true` if there is an image content on the user's clipboard.

* * *

void **clipboard\_set**(clipboard: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-clipboard-set)

Sets the user's clipboard content to the given string.

* * *

void **clipboard\_set\_primary**(clipboard\_primary: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-clipboard-set-primary)

Sets the user's [primary](https://unix.stackexchange.com/questions/139191/whats-the-difference-between-primary-selection-and-clipboard-buffer) clipboard content to the given string. This is the clipboard that is set when the user selects text in any application, rather than when pressing `Ctrl + C`. The clipboard data can then be pasted by clicking the middle mouse button in any application that supports the primary clipboard mechanism.

**Note:** This method is only implemented on Linux (X11/Wayland).

* * *

[bool](class_bool.md#class-bool) **color\_picker**(callback: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-color-picker)

Displays OS native color picker.

Callbacks have the following arguments: `status: bool, color: Color`.

**Note:** This method is implemented if the display server has the [FEATURE\_NATIVE\_COLOR\_PICKER](#class-displayserver-constant-feature-native-color-picker) feature.

**Note:** This method is only implemented on Linux (X11/Wayland).

* * *

[int](class_int.md#class-int) **create\_status\_indicator**(icon: [Texture2D](class_texture2d.md#class-texture2d), tooltip: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-create-status-indicator)

Creates a new application status indicator with the specified icon, tooltip, and activation callback.

`callback` should take two arguments: the pressed mouse button (one of the [MouseButton](class_@globalscope.md#enum-globalscope-mousebutton) constants) and the click position in screen coordinates (a [Vector2i](class_vector2i.md#class-vector2i)).

* * *

[CursorShape](#enum-displayserver-cursorshape) **cursor\_get\_shape**() const [🔗](#class-displayserver-method-cursor-get-shape)

Returns the default mouse cursor shape set by [cursor\_set\_shape()](#class-displayserver-method-cursor-set-shape).

* * *

void **cursor\_set\_custom\_image**(cursor: [Resource](class_resource.md#class-resource), shape: [CursorShape](#enum-displayserver-cursorshape) = 0, hotspot: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-displayserver-method-cursor-set-custom-image)

Sets a custom mouse cursor image for the given `shape`. This means the user's operating system and mouse cursor theme will no longer influence the mouse cursor's appearance.

`cursor` can be either a [Texture2D](class_texture2d.md#class-texture2d) or an [Image](class_image.md#class-image), and it should not be larger than 256×256 to display correctly. Optionally, `hotspot` can be set to offset the image's position relative to the click point. By default, `hotspot` is set to the top-left corner of the image. See also [cursor\_set\_shape()](#class-displayserver-method-cursor-set-shape).

* * *

void **cursor\_set\_shape**(shape: [CursorShape](#enum-displayserver-cursorshape)) [🔗](#class-displayserver-method-cursor-set-shape)

Sets the default mouse cursor shape. The cursor's appearance will vary depending on the user's operating system and mouse cursor theme. See also [cursor\_get\_shape()](#class-displayserver-method-cursor-get-shape) and [cursor\_set\_custom\_image()](#class-displayserver-method-cursor-set-custom-image).

* * *

void **delete\_status\_indicator**(id: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-delete-status-indicator)

Removes the application status indicator.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **dialog\_input\_text**(title: [String](class_string.md#class-string), description: [String](class_string.md#class-string), existing\_text: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-dialog-input-text)

Shows a text input dialog which uses the operating system's native look-and-feel. `callback` should accept a single [String](class_string.md#class-string) parameter which contains the text field's contents.

**Note:** This method is implemented if the display server has the [FEATURE\_NATIVE\_DIALOG\_INPUT](#class-displayserver-constant-feature-native-dialog-input) feature. Supported platforms include macOS, Windows, and Android.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **dialog\_show**(title: [String](class_string.md#class-string), description: [String](class_string.md#class-string), buttons: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-dialog-show)

Shows a text dialog which uses the operating system's native look-and-feel. `callback` should accept a single [int](class_int.md#class-int) parameter which corresponds to the index of the pressed button.

**Note:** This method is implemented if the display server has the [FEATURE\_NATIVE\_DIALOG](#class-displayserver-constant-feature-native-dialog) feature. Supported platforms include macOS, Windows, and Android.

* * *

void **enable\_for\_stealing\_focus**(process\_id: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-enable-for-stealing-focus)

Allows the `process_id` PID to steal focus from this window. In other words, this disables the operating system's focus stealing protection for the specified PID.

**Note:** This method is implemented only on Windows.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **file\_dialog\_show**(title: [String](class_string.md#class-string), current\_directory: [String](class_string.md#class-string), filename: [String](class_string.md#class-string), show\_hidden: [bool](class_bool.md#class-bool), mode: [FileDialogMode](#enum-displayserver-filedialogmode), filters: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), callback: [Callable](class_callable.md#class-callable), parent\_window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-file-dialog-show)

Displays OS native dialog for selecting files or directories in the file system.

Each filter string in the `filters` array should be formatted like this: `*.png,*.jpg,*.jpeg;Image Files;image/png,image/jpeg`. The description text of the filter is optional and can be omitted. It is recommended to set both file extension and MIME type. See also [FileDialog.filters](class_filedialog.md#class-filedialog-property-filters).

Callbacks have the following arguments: `status: bool, selected_paths: PackedStringArray, selected_filter_index: int`. **On Android,** the third callback argument ( `selected_filter_index`) is always `0`.

**Note:** This method is implemented if the display server has the [FEATURE\_NATIVE\_DIALOG\_FILE](#class-displayserver-constant-feature-native-dialog-file) feature. Supported platforms include Linux (X11/Wayland), Windows, macOS, and Android (API level 29+).

**Note:** `current_directory` might be ignored.

**Note:** Embedded file dialog and Windows file dialog support only file extensions, while Android, Linux, and macOS file dialogs also support MIME types.

**Note:** On Android and Linux, `show_hidden` is ignored.

**Note:** On Android and macOS, native file dialogs have no title.

**Note:** On macOS, sandboxed apps will save security-scoped bookmarks to retain access to the opened folders across multiple sessions. Use [OS.get\_granted\_permissions()](class_os.md#class-os-method-get-granted-permissions) to get a list of saved bookmarks.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **file\_dialog\_with\_options\_show**(title: [String](class_string.md#class-string), current\_directory: [String](class_string.md#class-string), root: [String](class_string.md#class-string), filename: [String](class_string.md#class-string), show\_hidden: [bool](class_bool.md#class-bool), mode: [FileDialogMode](#enum-displayserver-filedialogmode), filters: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), options: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\], callback: [Callable](class_callable.md#class-callable), parent\_window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-file-dialog-with-options-show)

Displays OS native dialog for selecting files or directories in the file system with additional user selectable options.

Each filter string in the `filters` array should be formatted like this: `*.png,*.jpg,*.jpeg;Image Files;image/png,image/jpeg`. The description text of the filter is optional and can be omitted. It is recommended to set both file extension and MIME type. See also [FileDialog.filters](class_filedialog.md#class-filedialog-property-filters).

`options` is array of [Dictionary](class_dictionary.md#class-dictionary) s with the following keys:

- `"name"` \- option's name [String](class_string.md#class-string).

- `"values"` \- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) of values. If empty, boolean option (check box) is used.

- `"default"` \- default selected option index ( [int](class_int.md#class-int)) or default boolean value ( [bool](class_bool.md#class-bool)).


Callbacks have the following arguments: `status: bool, selected_paths: PackedStringArray, selected_filter_index: int, selected_option: Dictionary`.

**Note:** This method is implemented if the display server has the [FEATURE\_NATIVE\_DIALOG\_FILE\_EXTRA](#class-displayserver-constant-feature-native-dialog-file-extra) feature. Supported platforms include Linux (X11/Wayland), Windows, and macOS.

**Note:** `current_directory` might be ignored.

**Note:** Embedded file dialog and Windows file dialog support only file extensions, while Android, Linux, and macOS file dialogs also support MIME types.

**Note:** On Linux (X11), `show_hidden` is ignored.

**Note:** On macOS, native file dialogs have no title.

**Note:** On macOS, sandboxed apps will save security-scoped bookmarks to retain access to the opened folders across multiple sessions. Use [OS.get\_granted\_permissions()](class_os.md#class-os-method-get-granted-permissions) to get a list of saved bookmarks.

* * *

void **force\_process\_and\_drop\_events**() [🔗](#class-displayserver-method-force-process-and-drop-events)

Forces window manager processing while ignoring all [InputEvent](class_inputevent.md#class-inputevent) s. See also [process\_events()](#class-displayserver-method-process-events).

**Note:** This method is implemented on Windows and macOS.

* * *

[Color](class_color.md#class-color) **get\_accent\_color**() const [🔗](#class-displayserver-method-get-accent-color)

Returns OS theme accent color. Returns `Color(0, 0, 0, 0)`, if accent color is unknown.

**Note:** This method is implemented on macOS, Windows, Android, and Linux (X11/Wayland).

* * *

[Color](class_color.md#class-color) **get\_base\_color**() const [🔗](#class-displayserver-method-get-base-color)

Returns the OS theme base color (default control background). Returns `Color(0, 0, 0, 0)` if the base color is unknown.

**Note:** This method is implemented on macOS, Windows, and Android.

* * *

[Array](class_array.md#class-array)\[ [Rect2](class_rect2.md#class-rect2)\] **get\_display\_cutouts**() const [🔗](#class-displayserver-method-get-display-cutouts)

Returns an [Array](class_array.md#class-array) of [Rect2](class_rect2.md#class-rect2), each of which is the bounding rectangle for a display cutout or notch. These are non-functional areas on edge-to-edge screens used by cameras and sensors. Returns an empty array if the device does not have cutouts. See also [get\_display\_safe\_area()](#class-displayserver-method-get-display-safe-area).

**Note:** Currently only implemented on Android. Other platforms will return an empty array even if they do have display cutouts or notches.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **get\_display\_safe\_area**() const [🔗](#class-displayserver-method-get-display-safe-area)

Returns the unobscured area of the display where interactive controls should be rendered. See also [get\_display\_cutouts()](#class-displayserver-method-get-display-cutouts).

**Note:** Currently only implemented on Android and iOS. On other platforms, `screen_get_usable_rect(SCREEN_OF_MAIN_WINDOW)` will be returned as a fallback. See also [screen\_get\_usable\_rect()](#class-displayserver-method-screen-get-usable-rect).

* * *

[int](class_int.md#class-int) **get\_keyboard\_focus\_screen**() const [🔗](#class-displayserver-method-get-keyboard-focus-screen)

Returns the index of the screen containing the window with the keyboard focus, or the primary screen if there's no focused window.

**Note:** This method is implemented on Linux/X11, macOS, and Windows. On other platforms, this method always returns the primary screen.

* * *

[String](class_string.md#class-string) **get\_name**() const [🔗](#class-displayserver-method-get-name)

Returns the name of the **DisplayServer** currently in use. Most operating systems only have a single **DisplayServer**, but Linux has access to more than one **DisplayServer** (currently X11 and Wayland).

The names of built-in display servers are `Windows`, `macOS`, `X11` (Linux), `Wayland` (Linux), `Android`, `iOS`, `web` (HTML5), and `headless` (when started with the `--headless` [command line argument](../tutorials/editor/command_line_tutorial.md)).

* * *

[int](class_int.md#class-int) **get\_primary\_screen**() const [🔗](#class-displayserver-method-get-primary-screen)

Returns index of the primary screen.

**Note:** This method is implemented on Linux/X11, macOS, and Windows. On other platforms, this method always returns `0`.

* * *

[int](class_int.md#class-int) **get\_screen\_count**() const [🔗](#class-displayserver-method-get-screen-count)

Returns the number of displays available.

**Note:** This method is implemented on Linux (X11 and Wayland), macOS, and Windows. On other platforms, this method always returns `1`.

* * *

[int](class_int.md#class-int) **get\_screen\_from\_rect**(rect: [Rect2](class_rect2.md#class-rect2)) const [🔗](#class-displayserver-method-get-screen-from-rect)

Returns the index of the screen that overlaps the most with the given rectangle. Returns [INVALID\_SCREEN](#class-displayserver-constant-invalid-screen) if the rectangle doesn't overlap with any screen or has no area.

* * *

[bool](class_bool.md#class-bool) **get\_swap\_cancel\_ok**() [🔗](#class-displayserver-method-get-swap-cancel-ok)

Returns `true` if positions of **OK** and **Cancel** buttons are swapped in dialogs. This is enabled by default on Windows to follow interface conventions, and be toggled by changing [ProjectSettings.gui/common/swap\_cancel\_ok](class_projectsettings.md#class-projectsettings-property-gui-common-swap-cancel-ok).

**Note:** This doesn't affect native dialogs such as the ones spawned by [dialog\_show()](#class-displayserver-method-dialog-show).

* * *

[int](class_int.md#class-int) **get\_window\_at\_screen\_position**(position: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-displayserver-method-get-window-at-screen-position)

Returns the ID of the window at the specified screen `position` (in pixels). On multi-monitor setups, the screen position is relative to the virtual desktop area. On multi-monitor setups with different screen resolutions or orientations, the origin may be located outside any display like this:

```
* (0, 0)        +-------+
                |       |
+-------------+ |       |
|             | |       |
|             | |       |
+-------------+ +-------+

```

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_window\_list**() const [🔗](#class-displayserver-method-get-window-list)

Returns the list of Godot window IDs belonging to this process.

**Note:** Native dialogs are not included in this list.

* * *

[int](class_int.md#class-int) **global\_menu\_add\_check\_item**(menu\_root: [String](class_string.md#class-string), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-global-menu-add-check-item)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Adds a new checkable item with text `label` to the global menu with ID `menu_root`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented only on macOS.

**Supported system menu IDs:**

```
"_main" - Main menu (macOS).
"_dock" - Dock popup menu (macOS).
"_apple" - Apple menu (macOS, custom items added before "Services").
"_window" - Window menu (macOS, custom items added after "Bring All to Front").
"_help" - Help menu (macOS).

```

* * *

[int](class_int.md#class-int) **global\_menu\_add\_icon\_check\_item**(menu\_root: [String](class_string.md#class-string), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-global-menu-add-icon-check-item)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Adds a new checkable item with text `label` and icon `icon` to the global menu with ID `menu_root`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented only on macOS.

**Supported system menu IDs:**

```
"_main" - Main menu (macOS).
"_dock" - Dock popup menu (macOS).
"_apple" - Apple menu (macOS, custom items added before "Services").
"_window" - Window menu (macOS, custom items added after "Bring All to Front").
"_help" - Help menu (macOS).

```

* * *

[int](class_int.md#class-int) **global\_menu\_add\_icon\_item**(menu\_root: [String](class_string.md#class-string), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-global-menu-add-icon-item)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Adds a new item with text `label` and icon `icon` to the global menu with ID `menu_root`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented only on macOS.

**Supported system menu IDs:**

```
"_main" - Main menu (macOS).
"_dock" - Dock popup menu (macOS).
"_apple" - Apple menu (macOS, custom items added before "Services").
"_window" - Window menu (macOS, custom items added after "Bring All to Front").
"_help" - Help menu (macOS).

```

* * *

[int](class_int.md#class-int) **global\_menu\_add\_icon\_radio\_check\_item**(menu\_root: [String](class_string.md#class-string), icon: [Texture2D](class_texture2d.md#class-texture2d), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-global-menu-add-icon-radio-check-item)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Adds a new radio-checkable item with text `label` and icon `icon` to the global menu with ID `menu_root`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** Radio-checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See [global\_menu\_set\_item\_checked()](#class-displayserver-method-global-menu-set-item-checked) for more info on how to control it.

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented only on macOS.

**Supported system menu IDs:**

```
"_main" - Main menu (macOS).
"_dock" - Dock popup menu (macOS).
"_apple" - Apple menu (macOS, custom items added before "Services").
"_window" - Window menu (macOS, custom items added after "Bring All to Front").
"_help" - Help menu (macOS).

```

* * *

[int](class_int.md#class-int) **global\_menu\_add\_item**(menu\_root: [String](class_string.md#class-string), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-global-menu-add-item)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Adds a new item with text `label` to the global menu with ID `menu_root`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented only on macOS.

**Supported system menu IDs:**

```
"_main" - Main menu (macOS).
"_dock" - Dock popup menu (macOS).
"_apple" - Apple menu (macOS, custom items added before "Services").
"_window" - Window menu (macOS, custom items added after "Bring All to Front").
"_help" - Help menu (macOS).

```

* * *

[int](class_int.md#class-int) **global\_menu\_add\_multistate\_item**(menu\_root: [String](class_string.md#class-string), label: [String](class_string.md#class-string), max\_states: [int](class_int.md#class-int), default\_state: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-global-menu-add-multistate-item)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Adds a new item with text `label` to the global menu with ID `menu_root`.

Contrarily to normal binary items, multistate items can have more than two states, as defined by `max_states`. Each press or activate of the item will increase the state by one. The default value is defined by `default_state`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** By default, there's no indication of the current item state, it should be changed manually.

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented only on macOS.

**Supported system menu IDs:**

```
"_main" - Main menu (macOS).
"_dock" - Dock popup menu (macOS).
"_apple" - Apple menu (macOS, custom items added before "Services").
"_window" - Window menu (macOS, custom items added after "Bring All to Front").
"_help" - Help menu (macOS).

```

* * *

[int](class_int.md#class-int) **global\_menu\_add\_radio\_check\_item**(menu\_root: [String](class_string.md#class-string), label: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable) = Callable(), key\_callback: [Callable](class_callable.md#class-callable) = Callable(), tag: [Variant](class_variant.md#class-variant) = null, accelerator: [Key](class_@globalscope.md#enum-globalscope-key) = 0, index: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-global-menu-add-radio-check-item)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Adds a new radio-checkable item with text `label` to the global menu with ID `menu_root`.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

An `accelerator` can optionally be defined, which is a keyboard shortcut that can be pressed to trigger the menu button even if it's not currently open. The `accelerator` is generally a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** Radio-checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See [global\_menu\_set\_item\_checked()](#class-displayserver-method-global-menu-set-item-checked) for more info on how to control it.

**Note:** The `callback` and `key_callback` Callables need to accept exactly one Variant parameter, the parameter passed to the Callables will be the value passed to `tag`.

**Note:** This method is implemented only on macOS.

**Supported system menu IDs:**

```
"_main" - Main menu (macOS).
"_dock" - Dock popup menu (macOS).
"_apple" - Apple menu (macOS, custom items added before "Services").
"_window" - Window menu (macOS, custom items added after "Bring All to Front").
"_help" - Help menu (macOS).

```

* * *

[int](class_int.md#class-int) **global\_menu\_add\_separator**(menu\_root: [String](class_string.md#class-string), index: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-global-menu-add-separator)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Adds a separator between items to the global menu with ID `menu_root`. Separators also occupy an index.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

**Note:** This method is implemented only on macOS.

**Supported system menu IDs:**

```
"_main" - Main menu (macOS).
"_dock" - Dock popup menu (macOS).
"_apple" - Apple menu (macOS, custom items added before "Services").
"_window" - Window menu (macOS, custom items added after "Bring All to Front").
"_help" - Help menu (macOS).

```

* * *

[int](class_int.md#class-int) **global\_menu\_add\_submenu\_item**(menu\_root: [String](class_string.md#class-string), label: [String](class_string.md#class-string), submenu: [String](class_string.md#class-string), index: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-global-menu-add-submenu-item)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Adds an item that will act as a submenu of the global menu `menu_root`. The `submenu` argument is the ID of the global menu root that will be shown when the item is clicked.

Returns index of the inserted item, it's not guaranteed to be the same as `index` value.

**Note:** This method is implemented only on macOS.

**Supported system menu IDs:**

```
"_main" - Main menu (macOS).
"_dock" - Dock popup menu (macOS).
"_apple" - Apple menu (macOS, custom items added before "Services").
"_window" - Window menu (macOS, custom items added after "Bring All to Front").
"_help" - Help menu (macOS).

```

* * *

void **global\_menu\_clear**(menu\_root: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-global-menu-clear)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Removes all items from the global menu with ID `menu_root`.

**Note:** This method is implemented only on macOS.

**Supported system menu IDs:**

```
"_main" - Main menu (macOS).
"_dock" - Dock popup menu (macOS).
"_apple" - Apple menu (macOS, custom items added before "Services").
"_window" - Window menu (macOS, custom items added after "Bring All to Front").
"_help" - Help menu (macOS).

```

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **global\_menu\_get\_item\_accelerator**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-accelerator)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the accelerator of the item at index `idx`. Accelerators are special combinations of keys that activate the item, no matter which control is focused.

**Note:** This method is implemented only on macOS.

* * *

[Callable](class_callable.md#class-callable) **global\_menu\_get\_item\_callback**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-callback)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the callback of the item at index `idx`.

**Note:** This method is implemented only on macOS.

* * *

[int](class_int.md#class-int) **global\_menu\_get\_item\_count**(menu\_root: [String](class_string.md#class-string)) const [🔗](#class-displayserver-method-global-menu-get-item-count)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns number of items in the global menu with ID `menu_root`.

**Note:** This method is implemented only on macOS.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **global\_menu\_get\_item\_icon**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-icon)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the icon of the item at index `idx`.

**Note:** This method is implemented only on macOS.

* * *

[int](class_int.md#class-int) **global\_menu\_get\_item\_indentation\_level**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-indentation-level)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the horizontal offset of the item at the given `idx`.

**Note:** This method is implemented only on macOS.

* * *

[int](class_int.md#class-int) **global\_menu\_get\_item\_index\_from\_tag**(menu\_root: [String](class_string.md#class-string), tag: [Variant](class_variant.md#class-variant)) const [🔗](#class-displayserver-method-global-menu-get-item-index-from-tag)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the index of the item with the specified `tag`. Indices are automatically assigned to each item by the engine, and cannot be set manually.

**Note:** This method is implemented only on macOS.

* * *

[int](class_int.md#class-int) **global\_menu\_get\_item\_index\_from\_text**(menu\_root: [String](class_string.md#class-string), text: [String](class_string.md#class-string)) const [🔗](#class-displayserver-method-global-menu-get-item-index-from-text)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the index of the item with the specified `text`. Indices are automatically assigned to each item by the engine, and cannot be set manually.

**Note:** This method is implemented only on macOS.

* * *

[Callable](class_callable.md#class-callable) **global\_menu\_get\_item\_key\_callback**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-key-callback)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the callback of the item accelerator at index `idx`.

**Note:** This method is implemented only on macOS.

* * *

[int](class_int.md#class-int) **global\_menu\_get\_item\_max\_states**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-max-states)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns number of states of a multistate item. See [global\_menu\_add\_multistate\_item()](#class-displayserver-method-global-menu-add-multistate-item) for details.

**Note:** This method is implemented only on macOS.

* * *

[int](class_int.md#class-int) **global\_menu\_get\_item\_state**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-state)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the state of a multistate item. See [global\_menu\_add\_multistate\_item()](#class-displayserver-method-global-menu-add-multistate-item) for details.

**Note:** This method is implemented only on macOS.

* * *

[String](class_string.md#class-string) **global\_menu\_get\_item\_submenu**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-submenu)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the submenu ID of the item at index `idx`. See [global\_menu\_add\_submenu\_item()](#class-displayserver-method-global-menu-add-submenu-item) for more info on how to add a submenu.

**Note:** This method is implemented only on macOS.

* * *

[Variant](class_variant.md#class-variant) **global\_menu\_get\_item\_tag**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-tag)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the metadata of the specified item, which might be of any type. You can set it with [global\_menu\_set\_item\_tag()](#class-displayserver-method-global-menu-set-item-tag), which provides a simple way of assigning context data to items.

**Note:** This method is implemented only on macOS.

* * *

[String](class_string.md#class-string) **global\_menu\_get\_item\_text**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-text)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the text of the item at index `idx`.

**Note:** This method is implemented only on macOS.

* * *

[String](class_string.md#class-string) **global\_menu\_get\_item\_tooltip**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-get-item-tooltip)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns the tooltip associated with the specified index `idx`.

**Note:** This method is implemented only on macOS.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **global\_menu\_get\_system\_menu\_roots**() const [🔗](#class-displayserver-method-global-menu-get-system-menu-roots)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns Dictionary of supported system menu IDs and names.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **global\_menu\_is\_item\_checkable**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-is-item-checkable)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns `true` if the item at index `idx` is checkable in some way, i.e. if it has a checkbox or radio button.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **global\_menu\_is\_item\_checked**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-is-item-checked)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns `true` if the item at index `idx` is checked.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **global\_menu\_is\_item\_disabled**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-is-item-disabled)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns `true` if the item at index `idx` is disabled. When it is disabled it can't be selected, or its action invoked.

See [global\_menu\_set\_item\_disabled()](#class-displayserver-method-global-menu-set-item-disabled) for more info on how to disable an item.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **global\_menu\_is\_item\_hidden**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-is-item-hidden)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns `true` if the item at index `idx` is hidden.

See [global\_menu\_set\_item\_hidden()](#class-displayserver-method-global-menu-set-item-hidden) for more info on how to hide an item.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **global\_menu\_is\_item\_radio\_checkable**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-global-menu-is-item-radio-checkable)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Returns `true` if the item at index `idx` has radio button-style checkability.

**Note:** This is purely cosmetic; you must add the logic for checking/unchecking items in radio groups.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_remove\_item**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-global-menu-remove-item)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Removes the item at index `idx` from the global menu `menu_root`.

**Note:** The indices of items after the removed item will be shifted by one.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_accelerator**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), keycode: [Key](class_@globalscope.md#enum-globalscope-key)) [🔗](#class-displayserver-method-global-menu-set-item-accelerator)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the accelerator of the item at index `idx`. `keycode` can be a single [Key](class_@globalscope.md#enum-globalscope-key), or a combination of [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask) s and [Key](class_@globalscope.md#enum-globalscope-key) s using bitwise OR such as `KEY_MASK_CTRL | KEY_A` ( `Ctrl + A`).

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_callback**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-global-menu-set-item-callback)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the callback of the item at index `idx`. Callback is emitted when an item is pressed.

**Note:** The `callback` Callable needs to accept exactly one Variant parameter, the parameter passed to the Callable will be the value passed to the `tag` parameter when the menu item was created.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_checkable**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), checkable: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-global-menu-set-item-checkable)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets whether the item at index `idx` has a checkbox. If `false`, sets the type of the item to plain text.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_checked**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), checked: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-global-menu-set-item-checked)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the checkstate status of the item at index `idx`.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_disabled**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-global-menu-set-item-disabled)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Enables/disables the item at index `idx`. When it is disabled, it can't be selected and its action can't be invoked.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_hidden**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), hidden: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-global-menu-set-item-hidden)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Hides/shows the item at index `idx`. When it is hidden, an item does not appear in a menu and its action cannot be invoked.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_hover\_callbacks**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-global-menu-set-item-hover-callbacks)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the callback of the item at index `idx`. The callback is emitted when an item is hovered.

**Note:** The `callback` Callable needs to accept exactly one Variant parameter, the parameter passed to the Callable will be the value passed to the `tag` parameter when the menu item was created.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_icon**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-displayserver-method-global-menu-set-item-icon)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Replaces the [Texture2D](class_texture2d.md#class-texture2d) icon of the specified `idx`.

**Note:** This method is implemented only on macOS.

**Note:** This method is not supported by macOS "\_dock" menu items.

* * *

void **global\_menu\_set\_item\_indentation\_level**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), level: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-global-menu-set-item-indentation-level)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the horizontal offset of the item at the given `idx`.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_key\_callback**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), key\_callback: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-global-menu-set-item-key-callback)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the callback of the item at index `idx`. Callback is emitted when its accelerator is activated.

**Note:** The `key_callback` Callable needs to accept exactly one Variant parameter, the parameter passed to the Callable will be the value passed to the `tag` parameter when the menu item was created.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_max\_states**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), max\_states: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-global-menu-set-item-max-states)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets number of state of a multistate item. See [global\_menu\_add\_multistate\_item()](#class-displayserver-method-global-menu-add-multistate-item) for details.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_radio\_checkable**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), checkable: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-global-menu-set-item-radio-checkable)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the type of the item at the specified index `idx` to radio button. If `false`, sets the type of the item to plain text.

**Note:** This is purely cosmetic; you must add the logic for checking/unchecking items in radio groups.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_state**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), state: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-global-menu-set-item-state)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the state of a multistate item. See [global\_menu\_add\_multistate\_item()](#class-displayserver-method-global-menu-add-multistate-item) for details.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_submenu**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), submenu: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-global-menu-set-item-submenu)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the submenu of the item at index `idx`. The submenu is the ID of a global menu root that would be shown when the item is clicked.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_tag**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), tag: [Variant](class_variant.md#class-variant)) [🔗](#class-displayserver-method-global-menu-set-item-tag)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the metadata of an item, which may be of any type. You can later get it with [global\_menu\_get\_item\_tag()](#class-displayserver-method-global-menu-get-item-tag), which provides a simple way of assigning context data to items.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_text**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-global-menu-set-item-text)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the text of the item at index `idx`.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_item\_tooltip**(menu\_root: [String](class_string.md#class-string), idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-global-menu-set-item-tooltip)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Sets the [String](class_string.md#class-string) tooltip of the item at the specified index `idx`.

**Note:** This method is implemented only on macOS.

* * *

void **global\_menu\_set\_popup\_callbacks**(menu\_root: [String](class_string.md#class-string), open\_callback: [Callable](class_callable.md#class-callable), close\_callback: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-global-menu-set-popup-callbacks)

**Deprecated:** Use [NativeMenu](class_nativemenu.md#class-nativemenu) or [PopupMenu](class_popupmenu.md#class-popupmenu) instead.

Registers callables to emit when the menu is respectively about to show or closed. Callback methods should have zero arguments.

* * *

[bool](class_bool.md#class-bool) **has\_additional\_outputs**() const [🔗](#class-displayserver-method-has-additional-outputs)

Returns `true` if any additional outputs have been registered via [register\_additional\_output()](#class-displayserver-method-register-additional-output).

* * *

[bool](class_bool.md#class-bool) **has\_feature**(feature: [Feature](#enum-displayserver-feature)) const [🔗](#class-displayserver-method-has-feature)

Returns `true` if the specified `feature` is supported by the current **DisplayServer**, `false` otherwise.

* * *

[bool](class_bool.md#class-bool) **has\_hardware\_keyboard**() const [🔗](#class-displayserver-method-has-hardware-keyboard)

Returns `true` if a hardware keyboard is connected.

**Note:** This method is implemented on Android and iOS. On other platforms, this method always returns `true`.

* * *

void **help\_set\_search\_callbacks**(search\_callback: [Callable](class_callable.md#class-callable), action\_callback: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-help-set-search-callbacks)

Sets native help system search callbacks.

`search_callback` has the following arguments: `String search_string, int result_limit` and return a [Dictionary](class_dictionary.md#class-dictionary) with "key, display name" pairs for the search results. Called when the user enters search terms in the `Help` menu.

`action_callback` has the following arguments: `String key`. Called when the user selects a search result in the `Help` menu.

**Note:** This method is implemented only on macOS.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **ime\_get\_selection**() const [🔗](#class-displayserver-method-ime-get-selection)

Returns the text selection in the [Input Method Editor](https://en.wikipedia.org/wiki/Input_method) composition string, with the [Vector2i](class_vector2i.md#class-vector2i)'s `x` component being the caret position and `y` being the length of the selection.

**Note:** This method is implemented only on macOS.

* * *

[String](class_string.md#class-string) **ime\_get\_text**() const [🔗](#class-displayserver-method-ime-get-text)

Returns the composition string contained within the [Input Method Editor](https://en.wikipedia.org/wiki/Input_method) window.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **is\_dark\_mode**() const [🔗](#class-displayserver-method-is-dark-mode)

Returns `true` if OS is using dark mode.

**Note:** This method is implemented on Android, iOS, macOS, Windows, and Linux (X11/Wayland).

* * *

[bool](class_bool.md#class-bool) **is\_dark\_mode\_supported**() const [🔗](#class-displayserver-method-is-dark-mode-supported)

Returns `true` if OS supports dark mode.

**Note:** This method is implemented on Android, iOS, macOS, Windows, and Linux (X11/Wayland).

* * *

[bool](class_bool.md#class-bool) **is\_touchscreen\_available**() const [🔗](#class-displayserver-method-is-touchscreen-available)

Returns `true` if touch events are available (Android or iOS), the capability is detected on the Web platform or if [ProjectSettings.input\_devices/pointing/emulate\_touch\_from\_mouse](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-emulate-touch-from-mouse) is `true`.

* * *

[bool](class_bool.md#class-bool) **is\_window\_transparency\_available**() const [🔗](#class-displayserver-method-is-window-transparency-available)

Returns `true` if the window background can be made transparent. This method returns `false` if [ProjectSettings.display/window/per\_pixel\_transparency/allowed](class_projectsettings.md#class-projectsettings-property-display-window-per-pixel-transparency-allowed) is set to `false`, or if transparency is not supported by the renderer or OS compositor.

* * *

[int](class_int.md#class-int) **keyboard\_get\_current\_layout**() const [🔗](#class-displayserver-method-keyboard-get-current-layout)

Returns active keyboard layout index.

**Note:** This method is implemented on Linux (X11/Wayland), macOS, and Windows.

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **keyboard\_get\_keycode\_from\_physical**(keycode: [Key](class_@globalscope.md#enum-globalscope-key)) const [🔗](#class-displayserver-method-keyboard-get-keycode-from-physical)

Converts a physical (US QWERTY) `keycode` to one in the active keyboard layout.

**Note:** This method is implemented on Linux (X11/Wayland), macOS and Windows.

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **keyboard\_get\_label\_from\_physical**(keycode: [Key](class_@globalscope.md#enum-globalscope-key)) const [🔗](#class-displayserver-method-keyboard-get-label-from-physical)

Converts a physical (US QWERTY) `keycode` to localized label printed on the key in the active keyboard layout.

**Note:** This method is implemented on Linux (X11/Wayland), macOS and Windows.

* * *

[int](class_int.md#class-int) **keyboard\_get\_layout\_count**() const [🔗](#class-displayserver-method-keyboard-get-layout-count)

Returns the number of keyboard layouts.

**Note:** This method is implemented on Linux (X11/Wayland), macOS and Windows.

* * *

[String](class_string.md#class-string) **keyboard\_get\_layout\_language**(index: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-keyboard-get-layout-language)

Returns the ISO-639/BCP-47 language code of the keyboard layout at position `index`.

**Note:** This method is implemented on Linux (X11/Wayland), macOS and Windows.

* * *

[String](class_string.md#class-string) **keyboard\_get\_layout\_name**(index: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-keyboard-get-layout-name)

Returns the localized name of the keyboard layout at position `index`.

**Note:** This method is implemented on Linux (X11/Wayland), macOS and Windows.

* * *

void **keyboard\_set\_current\_layout**(index: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-keyboard-set-current-layout)

Sets the active keyboard layout.

**Note:** This method is implemented on Linux (X11/Wayland), macOS and Windows.

* * *

BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\] **mouse\_get\_button\_state**() const [🔗](#class-displayserver-method-mouse-get-button-state)

Returns the current state of mouse buttons (whether each button is pressed) as a bitmask. If multiple mouse buttons are pressed at the same time, the bits are added together. Equivalent to [Input.get\_mouse\_button\_mask()](class_input.md#class-input-method-get-mouse-button-mask).

* * *

[MouseMode](#enum-displayserver-mousemode) **mouse\_get\_mode**() const [🔗](#class-displayserver-method-mouse-get-mode)

Returns the current mouse mode. See also [mouse\_set\_mode()](#class-displayserver-method-mouse-set-mode).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **mouse\_get\_position**() const [🔗](#class-displayserver-method-mouse-get-position)

Returns the mouse cursor's current position in screen coordinates.

* * *

void **mouse\_set\_mode**(mouse\_mode: [MouseMode](#enum-displayserver-mousemode)) [🔗](#class-displayserver-method-mouse-set-mode)

Sets the current mouse mode. See also [mouse\_get\_mode()](#class-displayserver-method-mouse-get-mode).

* * *

void **process\_events**() [🔗](#class-displayserver-method-process-events)

Perform window manager processing, including input flushing. See also [force\_process\_and\_drop\_events()](#class-displayserver-method-force-process-and-drop-events), [Input.flush\_buffered\_events()](class_input.md#class-input-method-flush-buffered-events) and [Input.use\_accumulated\_input](class_input.md#class-input-property-use-accumulated-input).

* * *

void **register\_additional\_output**(object: [Object](class_object.md#class-object)) [🔗](#class-displayserver-method-register-additional-output)

Registers an [Object](class_object.md#class-object) which represents an additional output that will be rendered too, beyond normal windows. The [Object](class_object.md#class-object) is only used as an identifier, which can be later passed to [unregister\_additional\_output()](#class-displayserver-method-unregister-additional-output).

This can be used to prevent Godot from skipping rendering when no normal windows are visible.

* * *

[int](class_int.md#class-int) **screen\_get\_dpi**(screen: [int](class_int.md#class-int) = -1) const [🔗](#class-displayserver-method-screen-get-dpi)

Returns the dots per inch density of the specified screen. Returns platform specific default value if `screen` is invalid.

**Note:** One of the following constants can be used as `screen`: [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window), [SCREEN\_PRIMARY](#class-displayserver-constant-screen-primary), [SCREEN\_WITH\_MOUSE\_FOCUS](#class-displayserver-constant-screen-with-mouse-focus), or [SCREEN\_WITH\_KEYBOARD\_FOCUS](#class-displayserver-constant-screen-with-keyboard-focus).

**Note:** On macOS, returned value is inaccurate if fractional display scaling mode is used.

**Note:** On Android devices, the actual screen densities are grouped into six generalized densities:

```
   ldpi - 120 dpi
   mdpi - 160 dpi
   hdpi - 240 dpi
  xhdpi - 320 dpi
 xxhdpi - 480 dpi
xxxhdpi - 640 dpi

```

**Note:** This method is implemented on Android, iOS, Linux (X11/Wayland), macOS, Web, and Windows. On other platforms, this method always returns `72`.

* * *

[Image](class_image.md#class-image) **screen\_get\_image**(screen: [int](class_int.md#class-int) = -1) const [🔗](#class-displayserver-method-screen-get-image)

Returns a screenshot of the `screen`. Returns `null` if `screen` is invalid or the **DisplayServer** fails to capture screenshot.

**Note:** One of the following constants can be used as `screen`: [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window), [SCREEN\_PRIMARY](#class-displayserver-constant-screen-primary), [SCREEN\_WITH\_MOUSE\_FOCUS](#class-displayserver-constant-screen-with-mouse-focus), or [SCREEN\_WITH\_KEYBOARD\_FOCUS](#class-displayserver-constant-screen-with-keyboard-focus).

**Note:** This method is implemented on Linux (X11, excluding XWayland), macOS, and Windows. On other platforms, this method always returns `null`.

**Note:** On macOS, this method requires the "Screen Recording" permission. If permission is not granted, this method returns a screenshot that will not include other application windows or OS elements not related to the application.

* * *

[Image](class_image.md#class-image) **screen\_get\_image\_rect**(rect: [Rect2i](class_rect2i.md#class-rect2i)) const [🔗](#class-displayserver-method-screen-get-image-rect)

Returns a screenshot of the screen region defined by `rect`. Returns `null` if `rect` is outside screen bounds or the **DisplayServer** fails to capture screenshot.

**Note:** This method is implemented on macOS and Windows. On other platforms, this method always returns `null`.

**Note:** On macOS, this method requires the "Screen Recording" permission. If permission is not granted, this method returns a screenshot that will not include other application windows or OS elements not related to the application.

* * *

[float](class_float.md#class-float) **screen\_get\_max\_scale**() const [🔗](#class-displayserver-method-screen-get-max-scale)

Returns the greatest scale factor of all screens.

**Note:** On macOS returned value is `2.0` if there is at least one hiDPI (Retina) screen in the system, and `1.0` in all other cases.

**Note:** This method is implemented only on macOS.

* * *

[ScreenOrientation](#enum-displayserver-screenorientation) **screen\_get\_orientation**(screen: [int](class_int.md#class-int) = -1) const [🔗](#class-displayserver-method-screen-get-orientation)

Returns the `screen`'s current orientation. See also [screen\_set\_orientation()](#class-displayserver-method-screen-set-orientation). Returns [SCREEN\_LANDSCAPE](#class-displayserver-constant-screen-landscape) if `screen` is invalid.

**Note:** One of the following constants can be used as `screen`: [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window), [SCREEN\_PRIMARY](#class-displayserver-constant-screen-primary), [SCREEN\_WITH\_MOUSE\_FOCUS](#class-displayserver-constant-screen-with-mouse-focus), or [SCREEN\_WITH\_KEYBOARD\_FOCUS](#class-displayserver-constant-screen-with-keyboard-focus).

**Note:** This method is implemented on Android and iOS. On other platforms, this method always returns [SCREEN\_LANDSCAPE](#class-displayserver-constant-screen-landscape).

* * *

[Color](class_color.md#class-color) **screen\_get\_pixel**(position: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-displayserver-method-screen-get-pixel)

Returns color of the display pixel at the `position`.

**Note:** This method is implemented on Linux (X11, excluding XWayland), macOS, and Windows. On other platforms, this method always returns [Color](class_color.md#class-color).

**Note:** On macOS, this method requires the "Screen Recording" permission. If permission is not granted, this method returns a screenshot that will only contain the desktop wallpaper, the current application's window, and other related UI elements.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **screen\_get\_position**(screen: [int](class_int.md#class-int) = -1) const [🔗](#class-displayserver-method-screen-get-position)

Returns the screen's top-left corner position in pixels. Returns [Vector2i.ZERO](class_vector2i.md#class-vector2i-constant-zero) if `screen` is invalid. On multi-monitor setups, the screen position is relative to the virtual desktop area. On multi-monitor setups with different screen resolutions or orientations, the origin might be located outside any display like this:

```
* (0, 0)        +-------+
                |       |
+-------------+ |       |
|             | |       |
|             | |       |
+-------------+ +-------+

```

See also [screen\_get\_size()](#class-displayserver-method-screen-get-size).

**Note:** One of the following constants can be used as `screen`: [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window), [SCREEN\_PRIMARY](#class-displayserver-constant-screen-primary), [SCREEN\_WITH\_MOUSE\_FOCUS](#class-displayserver-constant-screen-with-mouse-focus), or [SCREEN\_WITH\_KEYBOARD\_FOCUS](#class-displayserver-constant-screen-with-keyboard-focus).

* * *

[float](class_float.md#class-float) **screen\_get\_refresh\_rate**(screen: [int](class_int.md#class-int) = -1) const [🔗](#class-displayserver-method-screen-get-refresh-rate)

Returns the current refresh rate of the specified screen. Returns `-1.0` if `screen` is invalid or the **DisplayServer** fails to find the refresh rate for the specified screen.

To fallback to a default refresh rate if the method fails, try:

```
var refresh_rate = DisplayServer.screen_get_refresh_rate()
if refresh_rate < 0:
    refresh_rate = 60.0

```

**Note:** One of the following constants can be used as `screen`: [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window), [SCREEN\_PRIMARY](#class-displayserver-constant-screen-primary), [SCREEN\_WITH\_MOUSE\_FOCUS](#class-displayserver-constant-screen-with-mouse-focus), or [SCREEN\_WITH\_KEYBOARD\_FOCUS](#class-displayserver-constant-screen-with-keyboard-focus).

**Note:** This method is implemented on Android, iOS, macOS, Linux (X11 and Wayland), and Windows. On other platforms, this method always returns `-1.0`.

* * *

[float](class_float.md#class-float) **screen\_get\_scale**(screen: [int](class_int.md#class-int) = -1) const [🔗](#class-displayserver-method-screen-get-scale)

Returns the scale factor of the specified screen by index. Returns `1.0` if `screen` is invalid.

**Note:** One of the following constants can be used as `screen`: [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window), [SCREEN\_PRIMARY](#class-displayserver-constant-screen-primary), [SCREEN\_WITH\_MOUSE\_FOCUS](#class-displayserver-constant-screen-with-mouse-focus), or [SCREEN\_WITH\_KEYBOARD\_FOCUS](#class-displayserver-constant-screen-with-keyboard-focus).

**Note:** On macOS, the returned value is `2.0` for hiDPI (Retina) screens, and `1.0` for all other cases.

**Note:** On Linux (Wayland), the returned value is accurate only when `screen` is [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window). Due to API limitations, passing a direct index will return a rounded-up integer, if the screen has a fractional scale (e.g. `1.25` would get rounded up to `2.0`).

**Note:** This method is implemented on Android, iOS, Web, macOS, and Linux (Wayland). On other platforms, this method always returns `1.0`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **screen\_get\_size**(screen: [int](class_int.md#class-int) = -1) const [🔗](#class-displayserver-method-screen-get-size)

Returns the screen's size in pixels. See also [screen\_get\_position()](#class-displayserver-method-screen-get-position) and [screen\_get\_usable\_rect()](#class-displayserver-method-screen-get-usable-rect). Returns [Vector2i.ZERO](class_vector2i.md#class-vector2i-constant-zero) if `screen` is invalid.

**Note:** One of the following constants can be used as `screen`: [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window), [SCREEN\_PRIMARY](#class-displayserver-constant-screen-primary), [SCREEN\_WITH\_MOUSE\_FOCUS](#class-displayserver-constant-screen-with-mouse-focus), or [SCREEN\_WITH\_KEYBOARD\_FOCUS](#class-displayserver-constant-screen-with-keyboard-focus).

* * *

[Rect2i](class_rect2i.md#class-rect2i) **screen\_get\_usable\_rect**(screen: [int](class_int.md#class-int) = -1) const [🔗](#class-displayserver-method-screen-get-usable-rect)

Returns the portion of the screen that is not obstructed by a status bar in pixels. See also [screen\_get\_size()](#class-displayserver-method-screen-get-size).

**Note:** One of the following constants can be used as `screen`: [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window), [SCREEN\_PRIMARY](#class-displayserver-constant-screen-primary), [SCREEN\_WITH\_MOUSE\_FOCUS](#class-displayserver-constant-screen-with-mouse-focus), or [SCREEN\_WITH\_KEYBOARD\_FOCUS](#class-displayserver-constant-screen-with-keyboard-focus).

**Note:** This method is implemented on Linux/X11, macOS, and Windows. On other platforms, this method always returns `Rect2i(screen_get_position(screen), screen_get_size(screen))`.

* * *

[bool](class_bool.md#class-bool) **screen\_is\_kept\_on**() const [🔗](#class-displayserver-method-screen-is-kept-on)

Returns `true` if the screen should never be turned off by the operating system's power-saving measures. See also [screen\_set\_keep\_on()](#class-displayserver-method-screen-set-keep-on).

* * *

void **screen\_set\_keep\_on**(enable: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-screen-set-keep-on)

Sets whether the screen should never be turned off by the operating system's power-saving measures. See also [screen\_is\_kept\_on()](#class-displayserver-method-screen-is-kept-on).

* * *

void **screen\_set\_orientation**(orientation: [ScreenOrientation](#enum-displayserver-screenorientation), screen: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-screen-set-orientation)

Sets the `screen`'s `orientation`. See also [screen\_get\_orientation()](#class-displayserver-method-screen-get-orientation).

**Note:** One of the following constants can be used as `screen`: [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window), [SCREEN\_PRIMARY](#class-displayserver-constant-screen-primary), [SCREEN\_WITH\_MOUSE\_FOCUS](#class-displayserver-constant-screen-with-mouse-focus), or [SCREEN\_WITH\_KEYBOARD\_FOCUS](#class-displayserver-constant-screen-with-keyboard-focus).

**Note:** This method is implemented on Android and iOS.

**Note:** On iOS, this method has no effect if [ProjectSettings.display/window/handheld/orientation](class_projectsettings.md#class-projectsettings-property-display-window-handheld-orientation) is not set to [SCREEN\_SENSOR](#class-displayserver-constant-screen-sensor).

* * *

void **set\_hardware\_keyboard\_connection\_change\_callback**(callable: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-set-hardware-keyboard-connection-change-callback)

Sets the `callable` that should be called when hardware keyboard is connected/disconnected. `callable` should accept a single [bool](class_bool.md#class-bool) parameter indicating whether the keyboard is connected (true) or disconnected (false).

**Note:** This method is only implemented on Android.

* * *

void **set\_icon**(image: [Image](class_image.md#class-image)) [🔗](#class-displayserver-method-set-icon)

Sets the window icon (usually displayed in the top-left corner) with an [Image](class_image.md#class-image). To use icons in the operating system's native format, use [set\_native\_icon()](#class-displayserver-method-set-native-icon) instead.

**Note:** Requires support for [FEATURE\_ICON](#class-displayserver-constant-feature-icon).

* * *

void **set\_native\_icon**(filename: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-set-native-icon)

Sets the window icon (usually displayed in the top-left corner) in the operating system's _native_ format. The file at `filename` must be in `.ico` format on Windows or `.icns` on macOS. By using specially crafted `.ico` or `.icns` icons, [set\_native\_icon()](#class-displayserver-method-set-native-icon) allows specifying different icons depending on the size the icon is displayed at. This size is determined by the operating system and user preferences (including the display scale factor). To use icons in other formats, use [set\_icon()](#class-displayserver-method-set-icon) instead.

**Note:** Requires support for [FEATURE\_NATIVE\_ICON](#class-displayserver-constant-feature-native-icon).

* * *

void **set\_system\_theme\_change\_callback**(callable: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-set-system-theme-change-callback)

Sets the `callable` that should be called when system theme settings are changed. Callback method should have zero arguments.

**Note:** This method is implemented on Android, iOS, macOS, Windows, and Linux (X11/Wayland).

* * *

void **show\_emoji\_and\_symbol\_picker**() const [🔗](#class-displayserver-method-show-emoji-and-symbol-picker)

Opens system emoji and symbol picker.

**Note:** This method is implemented on macOS and Windows.

* * *

[Rect2](class_rect2.md#class-rect2) **status\_indicator\_get\_rect**(id: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-status-indicator-get-rect)

Returns the rectangle for the given status indicator `id` in screen coordinates. If the status indicator is not visible, returns an empty [Rect2](class_rect2.md#class-rect2).

**Note:** This method is implemented on macOS and Windows.

* * *

void **status\_indicator\_set\_callback**(id: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-status-indicator-set-callback)

Sets the application status indicator activation callback. `callback` should take two arguments: [int](class_int.md#class-int) mouse button index (one of [MouseButton](class_@globalscope.md#enum-globalscope-mousebutton) values) and [Vector2i](class_vector2i.md#class-vector2i) click position in screen coordinates.

**Note:** This method is implemented on macOS and Windows.

* * *

void **status\_indicator\_set\_icon**(id: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-displayserver-method-status-indicator-set-icon)

Sets the application status indicator icon.

**Note:** This method is implemented on macOS and Windows.

* * *

void **status\_indicator\_set\_menu**(id: [int](class_int.md#class-int), menu\_rid: [RID](class_rid.md#class-rid)) [🔗](#class-displayserver-method-status-indicator-set-menu)

Sets the application status indicator native popup menu.

**Note:** On macOS, the menu is activated by any mouse button. Its activation callback is _not_ triggered.

**Note:** On Windows, the menu is activated by the right mouse button, selecting the status icon and pressing `Shift + F10`, or the applications key. The menu's activation callback for the other mouse buttons is still triggered.

**Note:** Native popup is only supported if [NativeMenu](class_nativemenu.md#class-nativemenu) supports the [NativeMenu.FEATURE\_POPUP\_MENU](class_nativemenu.md#class-nativemenu-constant-feature-popup-menu) feature.

* * *

void **status\_indicator\_set\_tooltip**(id: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-status-indicator-set-tooltip)

Sets the application status indicator tooltip.

**Note:** This method is implemented on macOS and Windows.

* * *

[String](class_string.md#class-string) **tablet\_get\_current\_driver**() const [🔗](#class-displayserver-method-tablet-get-current-driver)

Returns current active tablet driver name.

**Note:** This method is implemented only on Windows.

* * *

[int](class_int.md#class-int) **tablet\_get\_driver\_count**() const [🔗](#class-displayserver-method-tablet-get-driver-count)

Returns the total number of available tablet drivers.

**Note:** This method is implemented only on Windows.

* * *

[String](class_string.md#class-string) **tablet\_get\_driver\_name**(idx: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-tablet-get-driver-name)

Returns the tablet driver name for the given index.

**Note:** This method is implemented only on Windows.

* * *

void **tablet\_set\_current\_driver**(name: [String](class_string.md#class-string)) [🔗](#class-displayserver-method-tablet-set-current-driver)

Set active tablet driver name.

Supported drivers:

- `winink`: Windows Ink API, default.

- `wintab`: Wacom Wintab API (compatible device driver required).

- `dummy`: Dummy driver, tablet input is disabled.


**Note:** This method is implemented only on Windows.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **tts\_get\_voices**() const [🔗](#class-displayserver-method-tts-get-voices)

Returns an [Array](class_array.md#class-array) of voice information dictionaries.

Each [Dictionary](class_dictionary.md#class-dictionary) contains two [String](class_string.md#class-string) entries:

- `name` is voice name.

- `id` is voice identifier.

- `language` is language code in `lang_Variant` format. The `lang` part is a 2 or 3-letter code based on the ISO-639 standard, in lowercase. The `Variant` part is an engine-dependent string describing country, region or/and dialect.


Note that Godot depends on system libraries for text-to-speech functionality. These libraries are installed by default on Windows and macOS, but not on all Linux distributions. If they are not present, this method will return an empty list. This applies to both Godot users on Linux, as well as end-users on Linux running Godot games that use text-to-speech.

**Note:** This method is implemented on Android, iOS, Web, Linux (X11/Wayland), macOS, and Windows.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **tts\_get\_voices\_for\_language**(language: [String](class_string.md#class-string)) const [🔗](#class-displayserver-method-tts-get-voices-for-language)

Returns a [PackedStringArray](class_packedstringarray.md#class-packedstringarray) of voice identifiers for the `language`.

**Note:** This method is implemented on Android, iOS, Web, Linux (X11/Wayland), macOS, and Windows.

* * *

[bool](class_bool.md#class-bool) **tts\_is\_paused**() const [🔗](#class-displayserver-method-tts-is-paused)

Returns `true` if the synthesizer is in a paused state.

**Note:** This method is implemented on Android, iOS, Web, Linux (X11/Wayland), macOS, and Windows.

* * *

[bool](class_bool.md#class-bool) **tts\_is\_speaking**() const [🔗](#class-displayserver-method-tts-is-speaking)

Returns `true` if the synthesizer is generating speech, or have utterance waiting in the queue.

**Note:** This method is implemented on Android, iOS, Web, Linux (X11/Wayland), macOS, and Windows.

* * *

void **tts\_pause**() [🔗](#class-displayserver-method-tts-pause)

Puts the synthesizer into a paused state.

**Note:** This method is implemented on Android, iOS, Web, Linux (X11/Wayland), macOS, and Windows.

* * *

void **tts\_resume**() [🔗](#class-displayserver-method-tts-resume)

Resumes the synthesizer if it was paused.

**Note:** This method is implemented on Android, iOS, Web, Linux (X11/Wayland), macOS, and Windows.

* * *

void **tts\_set\_utterance\_callback**(event: [TTSUtteranceEvent](#enum-displayserver-ttsutteranceevent), callable: [Callable](class_callable.md#class-callable)) [🔗](#class-displayserver-method-tts-set-utterance-callback)

Adds a callback, which is called when the utterance has started, finished, canceled or reached a text boundary.

- [TTS\_UTTERANCE\_STARTED](#class-displayserver-constant-tts-utterance-started), [TTS\_UTTERANCE\_ENDED](#class-displayserver-constant-tts-utterance-ended), and [TTS\_UTTERANCE\_CANCELED](#class-displayserver-constant-tts-utterance-canceled) callable's method should take one [int](class_int.md#class-int) parameter, the utterance ID.

- [TTS\_UTTERANCE\_BOUNDARY](#class-displayserver-constant-tts-utterance-boundary) callable's method should take two [int](class_int.md#class-int) parameters, the index of the character and the utterance ID.


**Note:** The granularity of the boundary callbacks is engine dependent.

**Note:** This method is implemented on Android, iOS, Web, Linux (X11/Wayland), macOS, and Windows.

* * *

void **tts\_speak**(text: [String](class_string.md#class-string), voice: [String](class_string.md#class-string), volume: [int](class_int.md#class-int) = 50, pitch: [float](class_float.md#class-float) = 1.0, rate: [float](class_float.md#class-float) = 1.0, utterance\_id: [int](class_int.md#class-int) = 0, interrupt: [bool](class_bool.md#class-bool) = false) [🔗](#class-displayserver-method-tts-speak)

Adds an utterance to the queue. If `interrupt` is `true`, the queue is cleared first.

- `voice` identifier is one of the `"id"` values returned by [tts\_get\_voices()](#class-displayserver-method-tts-get-voices) or one of the values returned by [tts\_get\_voices\_for\_language()](#class-displayserver-method-tts-get-voices-for-language).

- `volume` ranges from `0` (lowest) to `100` (highest).

- `pitch` ranges from `0.0` (lowest) to `2.0` (highest), `1.0` is default pitch for the current voice.

- `rate` ranges from `0.1` (lowest) to `10.0` (highest), `1.0` is a normal speaking rate. Other values act as a percentage relative.

- `utterance_id` is passed as a parameter to the callback functions.


**Note:** On Windows and Linux (X11/Wayland), utterance `text` can use SSML markup. SSML support is engine and voice dependent. If the engine does not support SSML, you should strip out all XML markup before calling [tts\_speak()](#class-displayserver-method-tts-speak).

**Note:** The granularity of pitch, rate, and volume is engine and voice dependent. Values may be truncated.

**Note:** This method is implemented on Android, iOS, Web, Linux (X11/Wayland), macOS, and Windows.

* * *

void **tts\_stop**() [🔗](#class-displayserver-method-tts-stop)

Stops synthesis in progress and removes all utterances from the queue.

**Note:** This method is implemented on Android, iOS, Web, Linux (X11/Wayland), macOS, and Windows.

* * *

void **unregister\_additional\_output**(object: [Object](class_object.md#class-object)) [🔗](#class-displayserver-method-unregister-additional-output)

Unregisters an [Object](class_object.md#class-object) representing an additional output, that was registered via [register\_additional\_output()](#class-displayserver-method-register-additional-output).

* * *

[int](class_int.md#class-int) **virtual\_keyboard\_get\_height**() const [🔗](#class-displayserver-method-virtual-keyboard-get-height)

Returns the on-screen keyboard's height in pixels. Returns 0 if there is no keyboard or if it is currently hidden.

**Note:** On Android 7 and 8, the keyboard height may return 0 the first time the keyboard is opened in non-immersive mode. This behavior does not occur in immersive mode.

* * *

void **virtual\_keyboard\_hide**() [🔗](#class-displayserver-method-virtual-keyboard-hide)

Hides the virtual keyboard if it is shown, does nothing otherwise.

* * *

void **virtual\_keyboard\_show**(existing\_text: [String](class_string.md#class-string), position: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), type: [VirtualKeyboardType](#enum-displayserver-virtualkeyboardtype) = 0, max\_length: [int](class_int.md#class-int) = -1, cursor\_start: [int](class_int.md#class-int) = -1, cursor\_end: [int](class_int.md#class-int) = -1) [🔗](#class-displayserver-method-virtual-keyboard-show)

Shows the virtual keyboard if the platform has one.

`existing_text` parameter is useful for implementing your own [LineEdit](class_lineedit.md#class-lineedit) or [TextEdit](class_textedit.md#class-textedit), as it tells the virtual keyboard what text has already been typed (the virtual keyboard uses it for auto-correct and predictions).

`position` parameter is the screen space [Rect2](class_rect2.md#class-rect2) of the edited text.

`type` parameter allows configuring which type of virtual keyboard to show.

`max_length` limits the number of characters that can be entered if different from `-1`.

`cursor_start` can optionally define the current text cursor position if `cursor_end` is not set.

`cursor_start` and `cursor_end` can optionally define the current text selection.

**Note:** This method is implemented on Android, iOS and Web.

* * *

void **warp\_mouse**(position: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-displayserver-method-warp-mouse)

Sets the mouse cursor position to the given `position` relative to an origin at the upper left corner of the currently focused game Window Manager window.

**Note:** [warp\_mouse()](#class-displayserver-method-warp-mouse) is only supported on Windows, macOS, and Linux (X11/Wayland). It has no effect on Android, iOS, and Web.

* * *

[bool](class_bool.md#class-bool) **window\_can\_draw**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-can-draw)

Returns `true` if anything can be drawn in the window specified by `window_id`, `false` otherwise. Using the `--disable-render-loop` command line argument or a headless build will return `false`.

* * *

[int](class_int.md#class-int) **window\_get\_active\_popup**() const [🔗](#class-displayserver-method-window-get-active-popup)

Returns ID of the active popup window, or [INVALID\_WINDOW\_ID](#class-displayserver-constant-invalid-window-id) if there is none.

* * *

[int](class_int.md#class-int) **window\_get\_attached\_instance\_id**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-attached-instance-id)

Returns the [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id) of the [Window](class_window.md#class-window) the `window_id` is attached to.

* * *

[int](class_int.md#class-int) **window\_get\_current\_screen**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-current-screen)

Returns the screen the window specified by `window_id` is currently positioned on. If the screen overlaps multiple displays, the screen where the window's center is located is returned. See also [window\_set\_current\_screen()](#class-displayserver-method-window-set-current-screen). Returns [INVALID\_SCREEN](#class-displayserver-constant-invalid-screen) if `window_id` is invalid.

**Note:** This method is implemented on Linux/X11, macOS, and Windows. On other platforms, this method always returns `0`.

* * *

[bool](class_bool.md#class-bool) **window\_get\_flag**(flag: [WindowFlags](#enum-displayserver-windowflags), window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-flag)

Returns the current value of the given window's `flag`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **window\_get\_max\_size**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-max-size)

Returns the window's maximum size (in pixels). See also [window\_set\_max\_size()](#class-displayserver-method-window-set-max-size).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **window\_get\_min\_size**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-min-size)

Returns the window's minimum size (in pixels). See also [window\_set\_min\_size()](#class-displayserver-method-window-set-min-size).

* * *

[WindowMode](#enum-displayserver-windowmode) **window\_get\_mode**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-mode)

Returns the mode of the given window.

* * *

[int](class_int.md#class-int) **window\_get\_native\_handle**(handle\_type: [HandleType](#enum-displayserver-handletype), window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-native-handle)

Returns internal structure pointers for use in plugins.

**Note:** This method is implemented on Android, Linux (X11/Wayland), macOS, and Windows.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **window\_get\_popup\_safe\_rect**(window: [int](class_int.md#class-int)) const [🔗](#class-displayserver-method-window-get-popup-safe-rect)

Returns the bounding box of control, or menu item that was used to open the popup window, in the screen coordinate system.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **window\_get\_position**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-position)

Returns the position of the client area of the given window on the screen.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **window\_get\_position\_with\_decorations**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-position-with-decorations)

Returns the position of the given window on the screen including the borders drawn by the operating system. See also [window\_get\_position()](#class-displayserver-method-window-get-position).

* * *

[Vector3i](class_vector3i.md#class-vector3i) **window\_get\_safe\_title\_margins**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-safe-title-margins)

Returns left margins ( `x`), right margins ( `y`) and height ( `z`) of the title that are safe to use (contains no buttons or other elements) when [WINDOW\_FLAG\_EXTEND\_TO\_TITLE](#class-displayserver-constant-window-flag-extend-to-title) flag is set.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **window\_get\_size**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-size)

Returns the size of the window specified by `window_id` (in pixels), excluding the borders drawn by the operating system. This is also called the "client area". See also [window\_get\_size\_with\_decorations()](#class-displayserver-method-window-get-size-with-decorations), [window\_set\_size()](#class-displayserver-method-window-set-size) and [window\_get\_position()](#class-displayserver-method-window-get-position).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **window\_get\_size\_with\_decorations**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-size-with-decorations)

Returns the size of the window specified by `window_id` (in pixels), including the borders drawn by the operating system. See also [window\_get\_size()](#class-displayserver-method-window-get-size).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **window\_get\_title\_size**(title: [String](class_string.md#class-string), window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-title-size)

Returns the estimated window title bar size (including text and window buttons) for the window specified by `window_id` (in pixels). This method does not change the window title.

**Note:** This method is implemented on macOS and Windows.

* * *

[VSyncMode](#enum-displayserver-vsyncmode) **window\_get\_vsync\_mode**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-get-vsync-mode)

Returns the V-Sync mode of the given window.

* * *

[bool](class_bool.md#class-bool) **window\_is\_focused**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-is-focused)

Returns `true` if the window specified by `window_id` is focused.

* * *

[bool](class_bool.md#class-bool) **window\_is\_maximize\_allowed**(window\_id: [int](class_int.md#class-int) = 0) const [🔗](#class-displayserver-method-window-is-maximize-allowed)

Returns `true` if the given window can be maximized (the maximize button is enabled).

* * *

[bool](class_bool.md#class-bool) **window\_maximize\_on\_title\_dbl\_click**() const [🔗](#class-displayserver-method-window-maximize-on-title-dbl-click)

Returns `true`, if double-click on a window title should maximize it.

**Note:** This method is implemented only on macOS.

* * *

[bool](class_bool.md#class-bool) **window\_minimize\_on\_title\_dbl\_click**() const [🔗](#class-displayserver-method-window-minimize-on-title-dbl-click)

Returns `true`, if double-click on a window title should minimize it.

**Note:** This method is implemented only on macOS.

* * *

void **window\_move\_to\_foreground**(window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-move-to-foreground)

Moves the window specified by `window_id` to the foreground, so that it is visible over other windows.

* * *

void **window\_request\_attention**(window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-request-attention)

Makes the window specified by `window_id` request attention, which is materialized by the window title and taskbar entry blinking until the window is focused. This usually has no visible effect if the window is currently focused. The exact behavior varies depending on the operating system.

* * *

void **window\_set\_current\_screen**(screen: [int](class_int.md#class-int), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-current-screen)

Moves the window specified by `window_id` to the specified `screen`. See also [window\_get\_current\_screen()](#class-displayserver-method-window-get-current-screen).

**Note:** One of the following constants can be used as `screen`: [SCREEN\_OF\_MAIN\_WINDOW](#class-displayserver-constant-screen-of-main-window), [SCREEN\_PRIMARY](#class-displayserver-constant-screen-primary), [SCREEN\_WITH\_MOUSE\_FOCUS](#class-displayserver-constant-screen-with-mouse-focus), or [SCREEN\_WITH\_KEYBOARD\_FOCUS](#class-displayserver-constant-screen-with-keyboard-focus).

**Note:** This method is implemented on Linux/X11, macOS, and Windows.

* * *

void **window\_set\_drop\_files\_callback**(callback: [Callable](class_callable.md#class-callable), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-drop-files-callback)

Sets the `callback` that should be called when files are dropped from the operating system's file manager to the window specified by `window_id`. `callback` should take one [PackedStringArray](class_packedstringarray.md#class-packedstringarray) argument, which is the list of dropped files.

**Warning:** Advanced users only! Adding such a callback to a [Window](class_window.md#class-window) node will override its default implementation, which can introduce bugs.

**Note:** This method is implemented on Windows, macOS, Linux (X11/Wayland), and Web.

* * *

void **window\_set\_exclusive**(window\_id: [int](class_int.md#class-int), exclusive: [bool](class_bool.md#class-bool)) [🔗](#class-displayserver-method-window-set-exclusive)

If set to `true`, this window will always stay on top of its parent window, parent window will ignore input while this window is opened.

**Note:** On macOS, exclusive windows are confined to the same space (virtual desktop or screen) as the parent window.

**Note:** This method is implemented on macOS and Windows.

* * *

void **window\_set\_flag**(flag: [WindowFlags](#enum-displayserver-windowflags), enabled: [bool](class_bool.md#class-bool), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-flag)

Enables or disables the given window's given `flag`.

* * *

void **window\_set\_ime\_active**(active: [bool](class_bool.md#class-bool), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-ime-active)

Sets whether [Input Method Editor](https://en.wikipedia.org/wiki/Input_method) should be enabled for the window specified by `window_id`. See also [window\_set\_ime\_position()](#class-displayserver-method-window-set-ime-position).

* * *

void **window\_set\_ime\_position**(position: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-ime-position)

Sets the position of the [Input Method Editor](https://en.wikipedia.org/wiki/Input_method) popup for the specified `window_id`. Only effective if [window\_set\_ime\_active()](#class-displayserver-method-window-set-ime-active) was set to `true` for the specified `window_id`.

* * *

void **window\_set\_input\_event\_callback**(callback: [Callable](class_callable.md#class-callable), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-input-event-callback)

Sets the `callback` that should be called when any [InputEvent](class_inputevent.md#class-inputevent) is sent to the window specified by `window_id`.

**Warning:** Advanced users only! Adding such a callback to a [Window](class_window.md#class-window) node will override its default implementation, which can introduce bugs.

* * *

void **window\_set\_input\_text\_callback**(callback: [Callable](class_callable.md#class-callable), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-input-text-callback)

Sets the `callback` that should be called when text is entered using the virtual keyboard to the window specified by `window_id`.

**Warning:** Advanced users only! Adding such a callback to a [Window](class_window.md#class-window) node will override its default implementation, which can introduce bugs.

* * *

void **window\_set\_max\_size**(max\_size: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-max-size)

Sets the maximum size of the window specified by `window_id` in pixels. Normally, the user will not be able to drag the window to make it larger than the specified size. See also [window\_get\_max\_size()](#class-displayserver-method-window-get-max-size).

**Note:** It's recommended to change this value using [Window.max\_size](class_window.md#class-window-property-max-size) instead.

**Note:** Using third-party tools, it is possible for users to disable window geometry restrictions and therefore bypass this limit.

* * *

void **window\_set\_min\_size**(min\_size: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-min-size)

Sets the minimum size for the given window to `min_size` in pixels. Normally, the user will not be able to drag the window to make it smaller than the specified size. See also [window\_get\_min\_size()](#class-displayserver-method-window-get-min-size).

**Note:** It's recommended to change this value using [Window.min\_size](class_window.md#class-window-property-min-size) instead.

**Note:** By default, the main window has a minimum size of `Vector2i(64, 64)`. This prevents issues that can arise when the window is resized to a near-zero size.

**Note:** Using third-party tools, it is possible for users to disable window geometry restrictions and therefore bypass this limit.

* * *

void **window\_set\_mode**(mode: [WindowMode](#enum-displayserver-windowmode), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-mode)

Sets window mode for the given window to `mode`.

**Note:** On Android, setting it to [WINDOW\_MODE\_FULLSCREEN](#class-displayserver-constant-window-mode-fullscreen) or [WINDOW\_MODE\_EXCLUSIVE\_FULLSCREEN](#class-displayserver-constant-window-mode-exclusive-fullscreen) will enable immersive mode.

**Note:** Setting the window to full screen forcibly sets the borderless flag to `true`, so make sure to set it back to `false` when not wanted.

* * *

void **window\_set\_mouse\_passthrough**(region: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-mouse-passthrough)

Sets a polygonal region of the window which accepts mouse events. Mouse events outside the region will be passed through.

Passing an empty array will disable passthrough support (all mouse events will be intercepted by the window, which is the default behavior).

GDScriptC#

```
# Set region, using Path2D node.
DisplayServer.window_set_mouse_passthrough($Path2D.curve.get_baked_points())

# Set region, using Polygon2D node.
DisplayServer.window_set_mouse_passthrough($Polygon2D.polygon)

# Reset region to default.
DisplayServer.window_set_mouse_passthrough([])

```

```
// Set region, using Path2D node.
DisplayServer.WindowSetMousePassthrough(GetNode<Path2D>("Path2D").Curve.GetBakedPoints());

// Set region, using Polygon2D node.
DisplayServer.WindowSetMousePassthrough(GetNode<Polygon2D>("Polygon2D").Polygon);

// Reset region to default.
DisplayServer.WindowSetMousePassthrough([]);

```

**Note:** On Windows, the portion of a window that lies outside the region is not drawn, while on Linux (X11) and macOS it is.

**Note:** This method is implemented on Linux (X11), macOS and Windows.

* * *

void **window\_set\_popup\_safe\_rect**(window: [int](class_int.md#class-int), rect: [Rect2i](class_rect2i.md#class-rect2i)) [🔗](#class-displayserver-method-window-set-popup-safe-rect)

Sets the bounding box of control, or menu item that was used to open the popup window, in the screen coordinate system. Clicking this area will not auto-close this popup.

* * *

void **window\_set\_position**(position: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-position)

Sets the position of the given window to `position`. On multi-monitor setups, the screen position is relative to the virtual desktop area. On multi-monitor setups with different screen resolutions or orientations, the origin may be located outside any display like this:

```
* (0, 0)        +-------+
                |       |
+-------------+ |       |
|             | |       |
|             | |       |
+-------------+ +-------+

```

See also [window\_get\_position()](#class-displayserver-method-window-get-position) and [window\_set\_size()](#class-displayserver-method-window-set-size).

**Note:** It's recommended to change this value using [Window.position](class_window.md#class-window-property-position) instead.

**Note:** On Linux (Wayland): this method is a no-op.

* * *

void **window\_set\_rect\_changed\_callback**(callback: [Callable](class_callable.md#class-callable), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-rect-changed-callback)

Sets the `callback` that will be called when the window specified by `window_id` is moved or resized.

**Warning:** Advanced users only! Adding such a callback to a [Window](class_window.md#class-window) node will override its default implementation, which can introduce bugs.

* * *

void **window\_set\_size**(size: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-size)

Sets the size of the given window to `size` (in pixels). See also [window\_get\_size()](#class-displayserver-method-window-get-size) and [window\_get\_position()](#class-displayserver-method-window-get-position).

**Note:** It's recommended to change this value using [Window.size](class_window.md#class-window-property-size) instead.

* * *

void **window\_set\_title**(title: [String](class_string.md#class-string), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-title)

Sets the title of the given window to `title`.

**Note:** It's recommended to change this value using [Window.title](class_window.md#class-window-property-title) instead.

**Note:** Avoid changing the window title every frame, as this can cause performance issues on certain window managers. Try to change the window title only a few times per second at most.

* * *

void **window\_set\_transient**(window\_id: [int](class_int.md#class-int), parent\_window\_id: [int](class_int.md#class-int)) [🔗](#class-displayserver-method-window-set-transient)

Sets window transient parent. Transient window will be destroyed with its transient parent and will return focus to their parent when closed. The transient window is displayed on top of a non-exclusive full-screen parent window. Transient windows can't enter full-screen mode.

**Note:** It's recommended to change this value using [Window.transient](class_window.md#class-window-property-transient) instead.

**Note:** The behavior might be different depending on the platform.

* * *

void **window\_set\_vsync\_mode**(vsync\_mode: [VSyncMode](#enum-displayserver-vsyncmode), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-vsync-mode)

Sets the V-Sync mode of the given window. See also [ProjectSettings.display/window/vsync/vsync\_mode](class_projectsettings.md#class-projectsettings-property-display-window-vsync-vsync-mode).

Depending on the platform and used renderer, the engine will fall back to [VSYNC\_ENABLED](#class-displayserver-constant-vsync-enabled) if the desired mode is not supported.

**Note:** V-Sync modes other than [VSYNC\_ENABLED](#class-displayserver-constant-vsync-enabled) are only supported in the Forward+ and Mobile rendering methods, not Compatibility.

* * *

void **window\_set\_window\_buttons\_offset**(offset: [Vector2i](class_vector2i.md#class-vector2i), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-window-buttons-offset)

When [WINDOW\_FLAG\_EXTEND\_TO\_TITLE](#class-displayserver-constant-window-flag-extend-to-title) flag is set, set offset to the center of the first titlebar button.

**Note:** This flag is implemented only on macOS.

* * *

void **window\_set\_window\_event\_callback**(callback: [Callable](class_callable.md#class-callable), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-set-window-event-callback)

Sets the `callback` that will be called when an event occurs in the window specified by `window_id`.

**Warning:** Advanced users only! Adding such a callback to a [Window](class_window.md#class-window) node will override its default implementation, which can introduce bugs.

* * *

void **window\_start\_drag**(window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-start-drag)

Starts an interactive drag operation on the window with the given `window_id`, using the current mouse position. Call this method when handling a mouse button being pressed to simulate a pressed event on the window's title bar. Using this method allows the window to participate in space switching, tiling, and other system features.

**Note:** This method is implemented on Linux (X11/Wayland), macOS, and Windows.

* * *

void **window\_start\_resize**(edge: [WindowResizeEdge](#enum-displayserver-windowresizeedge), window\_id: [int](class_int.md#class-int) = 0) [🔗](#class-displayserver-method-window-start-resize)

Starts an interactive resize operation on the window with the given `window_id`, using the current mouse position. Call this method when handling a mouse button being pressed to simulate a pressed event on the window's edge.

**Note:** This method is implemented on Linux (X11/Wayland), macOS, and Windows.

[Previous](class_diraccess.md "DirAccess") [Next](class_dtlsserver.md "DTLSServer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_diraccess.md "DirAccess") [Next](class_dtlsserver.md "DTLSServer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).