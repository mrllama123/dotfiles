---
title: TextEdit — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_textedit.html
crawled_at: "2026-08-13T10:24:49+12:00"
content_hash: 24bc72ff892dba3546e4a8ee76c0b732bfc81abc4708416b391f2cddf3d96dff
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextEdit

* * *

# TextEdit

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [CodeEdit](class_codeedit.md#class-codeedit)

A multiline text editor.

## Description

A multiline text editor. It also has limited facilities for editing code, such as syntax highlighting support. For more advanced facilities for editing code, see [CodeEdit](class_codeedit.md#class-codeedit).

While entering text, it is possible to insert special characters using Unicode, OEM or Windows alt codes:

- To enter Unicode codepoints, hold `Alt` and type the codepoint on the numpad. For example, to enter the character `á` (U+00E1), hold `Alt` and type `+E1` on the numpad (the leading zeroes can be omitted).

- To enter OEM codepoints, hold `Alt` and type the code on the numpad. For example, to enter the character `á` (OEM 160), hold `Alt` and type `160` on the numpad.

- To enter Windows codepoints, hold `Alt` and type the code on the numpad. For example, to enter the character `á` (Windows 0225), hold `Alt` and type `0`, `2`, `2`, `5` on the numpad. The leading zero here must **not** be omitted, as this is how Windows codepoints are distinguished from OEM codepoints.


**Note:** Most viewport, caret, and edit methods contain a `caret_index` argument for [caret\_multiple](#class-textedit-property-caret-multiple) support. The argument should be one of the following: `-1` for all carets, `0` for the main caret, or greater than `0` for secondary carets in the order they were created.

**Note:** When holding down `Alt`, the vertical scroll wheel will scroll 5 times as fast as it would normally do. This also works in the Godot script editor.

## Properties

|     |     |     |
| --- | --- | --- |
| [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) | [autowrap\_mode](#class-textedit-property-autowrap-mode) | `3` |
| [bool](class_bool.md#class-bool) | [backspace\_deletes\_composite\_character\_enabled](#class-textedit-property-backspace-deletes-composite-character-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [caret\_blink](#class-textedit-property-caret-blink) | `false` |
| [float](class_float.md#class-float) | [caret\_blink\_interval](#class-textedit-property-caret-blink-interval) | `0.65` |
| [bool](class_bool.md#class-bool) | [caret\_draw\_when\_editable\_disabled](#class-textedit-property-caret-draw-when-editable-disabled) | `false` |
| [bool](class_bool.md#class-bool) | [caret\_mid\_grapheme](#class-textedit-property-caret-mid-grapheme) | `false` |
| [bool](class_bool.md#class-bool) | [caret\_move\_on\_right\_click](#class-textedit-property-caret-move-on-right-click) | `true` |
| [bool](class_bool.md#class-bool) | [caret\_multiple](#class-textedit-property-caret-multiple) | `true` |
| [CaretType](#enum-textedit-carettype) | [caret\_type](#class-textedit-property-caret-type) | `0` |
| [bool](class_bool.md#class-bool) | clip\_contents | `true` (overrides [Control](class_control.md#class-control-property-clip-contents)) |
| [bool](class_bool.md#class-bool) | [context\_menu\_enabled](#class-textedit-property-context-menu-enabled) | `true` |
| [String](class_string.md#class-string) | [custom\_word\_separators](#class-textedit-property-custom-word-separators) | `""` |
| [bool](class_bool.md#class-bool) | [deselect\_on\_focus\_loss\_enabled](#class-textedit-property-deselect-on-focus-loss-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [drag\_and\_drop\_selection\_enabled](#class-textedit-property-drag-and-drop-selection-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [draw\_control\_chars](#class-textedit-property-draw-control-chars) | `false` |
| [bool](class_bool.md#class-bool) | [draw\_spaces](#class-textedit-property-draw-spaces) | `false` |
| [bool](class_bool.md#class-bool) | [draw\_tabs](#class-textedit-property-draw-tabs) | `false` |
| [bool](class_bool.md#class-bool) | [editable](#class-textedit-property-editable) | `true` |
| [bool](class_bool.md#class-bool) | [emoji\_menu\_enabled](#class-textedit-property-emoji-menu-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [empty\_selection\_clipboard\_enabled](#class-textedit-property-empty-selection-clipboard-enabled) | `true` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `2` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [bool](class_bool.md#class-bool) | [highlight\_all\_occurrences](#class-textedit-property-highlight-all-occurrences) | `false` |
| [bool](class_bool.md#class-bool) | [highlight\_current\_line](#class-textedit-property-highlight-current-line) | `false` |
| [bool](class_bool.md#class-bool) | [indent\_wrapped\_lines](#class-textedit-property-indent-wrapped-lines) | `false` |
| [String](class_string.md#class-string) | [language](#class-textedit-property-language) | `""` |
| [bool](class_bool.md#class-bool) | [middle\_mouse\_paste\_enabled](#class-textedit-property-middle-mouse-paste-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [minimap\_draw](#class-textedit-property-minimap-draw) | `false` |
| [int](class_int.md#class-int) | [minimap\_width](#class-textedit-property-minimap-width) | `80` |
| [CursorShape](class_control.md#enum-control-cursorshape) | mouse\_default\_cursor\_shape | `1` (overrides [Control](class_control.md#class-control-property-mouse-default-cursor-shape)) |
| [String](class_string.md#class-string) | [placeholder\_text](#class-textedit-property-placeholder-text) | `""` |
| [bool](class_bool.md#class-bool) | [scroll\_fit\_content\_height](#class-textedit-property-scroll-fit-content-height) | `false` |
| [bool](class_bool.md#class-bool) | [scroll\_fit\_content\_width](#class-textedit-property-scroll-fit-content-width) | `false` |
| [int](class_int.md#class-int) | [scroll\_horizontal](#class-textedit-property-scroll-horizontal) | `0` |
| [bool](class_bool.md#class-bool) | [scroll\_past\_end\_of\_file](#class-textedit-property-scroll-past-end-of-file) | `false` |
| [bool](class_bool.md#class-bool) | [scroll\_smooth](#class-textedit-property-scroll-smooth) | `false` |
| [float](class_float.md#class-float) | [scroll\_v\_scroll\_speed](#class-textedit-property-scroll-v-scroll-speed) | `80.0` |
| [float](class_float.md#class-float) | [scroll\_vertical](#class-textedit-property-scroll-vertical) | `0.0` |
| [bool](class_bool.md#class-bool) | [selecting\_enabled](#class-textedit-property-selecting-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [shortcut\_keys\_enabled](#class-textedit-property-shortcut-keys-enabled) | `true` |
| [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) | [structured\_text\_bidi\_override](#class-textedit-property-structured-text-bidi-override) | `0` |
| [Array](class_array.md#class-array) | [structured\_text\_bidi\_override\_options](#class-textedit-property-structured-text-bidi-override-options) | `[]` |
| [SyntaxHighlighter](class_syntaxhighlighter.md#class-syntaxhighlighter) | [syntax\_highlighter](#class-textedit-property-syntax-highlighter) |  |
| [bool](class_bool.md#class-bool) | [tab\_input\_mode](#class-textedit-property-tab-input-mode) | `true` |
| [String](class_string.md#class-string) | [text](#class-textedit-property-text) | `""` |
| [TextDirection](class_control.md#enum-control-textdirection) | [text\_direction](#class-textedit-property-text-direction) | `0` |
| [bool](class_bool.md#class-bool) | [use\_custom\_word\_separators](#class-textedit-property-use-custom-word-separators) | `false` |
| [bool](class_bool.md#class-bool) | [use\_default\_word\_separators](#class-textedit-property-use-default-word-separators) | `true` |
| [bool](class_bool.md#class-bool) | [virtual\_keyboard\_enabled](#class-textedit-property-virtual-keyboard-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [virtual\_keyboard\_show\_on\_focus](#class-textedit-property-virtual-keyboard-show-on-focus) | `true` |
| [LineWrappingMode](#enum-textedit-linewrappingmode) | [wrap\_mode](#class-textedit-property-wrap-mode) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [\_backspace](#class-textedit-private-method-backspace)(caret\_index: [int](class_int.md#class-int)) virtual |
| void | [\_copy](#class-textedit-private-method-copy)(caret\_index: [int](class_int.md#class-int)) virtual |
| void | [\_cut](#class-textedit-private-method-cut)(caret\_index: [int](class_int.md#class-int)) virtual |
| void | [\_handle\_unicode\_input](#class-textedit-private-method-handle-unicode-input)(unicode\_char: [int](class_int.md#class-int), caret\_index: [int](class_int.md#class-int)) virtual |
| void | [\_paste](#class-textedit-private-method-paste)(caret\_index: [int](class_int.md#class-int)) virtual |
| void | [\_paste\_primary\_clipboard](#class-textedit-private-method-paste-primary-clipboard)(caret\_index: [int](class_int.md#class-int)) virtual |
| [int](class_int.md#class-int) | [add\_caret](#class-textedit-method-add-caret)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) |
| void | [add\_caret\_at\_carets](#class-textedit-method-add-caret-at-carets)(below: [bool](class_bool.md#class-bool)) |
| void | [add\_gutter](#class-textedit-method-add-gutter)(at: [int](class_int.md#class-int) = -1) |
| void | [add\_selection\_for\_next\_occurrence](#class-textedit-method-add-selection-for-next-occurrence)() |
| void | [adjust\_carets\_after\_edit](#class-textedit-method-adjust-carets-after-edit)(caret: [int](class_int.md#class-int), from\_line: [int](class_int.md#class-int), from\_col: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int), to\_col: [int](class_int.md#class-int)) |
| void | [adjust\_viewport\_to\_caret](#class-textedit-method-adjust-viewport-to-caret)(caret\_index: [int](class_int.md#class-int) = 0) |
| void | [apply\_ime](#class-textedit-method-apply-ime)() |
| void | [backspace](#class-textedit-method-backspace)(caret\_index: [int](class_int.md#class-int) = -1) |
| void | [begin\_complex\_operation](#class-textedit-method-begin-complex-operation)() |
| void | [begin\_multicaret\_edit](#class-textedit-method-begin-multicaret-edit)() |
| void | [cancel\_ime](#class-textedit-method-cancel-ime)() |
| void | [center\_viewport\_to\_caret](#class-textedit-method-center-viewport-to-caret)(caret\_index: [int](class_int.md#class-int) = 0) |
| void | [clear](#class-textedit-method-clear)() |
| void | [clear\_undo\_history](#class-textedit-method-clear-undo-history)() |
| void | [collapse\_carets](#class-textedit-method-collapse-carets)(from\_line: [int](class_int.md#class-int), from\_column: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int), to\_column: [int](class_int.md#class-int), inclusive: [bool](class_bool.md#class-bool) = false) |
| void | [copy](#class-textedit-method-copy)(caret\_index: [int](class_int.md#class-int) = -1) |
| void | [cut](#class-textedit-method-cut)(caret\_index: [int](class_int.md#class-int) = -1) |
| void | [delete\_selection](#class-textedit-method-delete-selection)(caret\_index: [int](class_int.md#class-int) = -1) |
| void | [deselect](#class-textedit-method-deselect)(caret\_index: [int](class_int.md#class-int) = -1) |
| void | [end\_action](#class-textedit-method-end-action)() |
| void | [end\_complex\_operation](#class-textedit-method-end-complex-operation)() |
| void | [end\_multicaret\_edit](#class-textedit-method-end-multicaret-edit)() |
| [int](class_int.md#class-int) | [get\_caret\_column](#class-textedit-method-get-caret-column)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_caret\_count](#class-textedit-method-get-caret-count)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_caret\_draw\_pos](#class-textedit-method-get-caret-draw-pos)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_caret\_index\_edit\_order](#class-textedit-method-get-caret-index-edit-order)() |
| [int](class_int.md#class-int) | [get\_caret\_line](#class-textedit-method-get-caret-line)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_caret\_wrap\_index](#class-textedit-method-get-caret-wrap-index)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_first\_non\_whitespace\_column](#class-textedit-method-get-first-non-whitespace-column)(line: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_first\_visible\_line](#class-textedit-method-get-first-visible-line)() const |
| [int](class_int.md#class-int) | [get\_gutter\_count](#class-textedit-method-get-gutter-count)() const |
| [String](class_string.md#class-string) | [get\_gutter\_name](#class-textedit-method-get-gutter-name)(gutter: [int](class_int.md#class-int)) const |
| [GutterType](#enum-textedit-guttertype) | [get\_gutter\_type](#class-textedit-method-get-gutter-type)(gutter: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_gutter\_width](#class-textedit-method-get-gutter-width)(gutter: [int](class_int.md#class-int)) const |
| [HScrollBar](class_hscrollbar.md#class-hscrollbar) | [get\_h\_scroll\_bar](#class-textedit-method-get-h-scroll-bar)() const |
| [int](class_int.md#class-int) | [get\_indent\_level](#class-textedit-method-get-indent-level)(line: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_last\_full\_visible\_line](#class-textedit-method-get-last-full-visible-line)() const |
| [int](class_int.md#class-int) | [get\_last\_full\_visible\_line\_wrap\_index](#class-textedit-method-get-last-full-visible-line-wrap-index)() const |
| [int](class_int.md#class-int) | [get\_last\_unhidden\_line](#class-textedit-method-get-last-unhidden-line)() const |
| [String](class_string.md#class-string) | [get\_line](#class-textedit-method-get-line)(line: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_line\_background\_color](#class-textedit-method-get-line-background-color)(line: [int](class_int.md#class-int)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_line\_column\_at\_pos](#class-textedit-method-get-line-column-at-pos)(position: [Vector2i](class_vector2i.md#class-vector2i), clamp\_line: [bool](class_bool.md#class-bool) = true, clamp\_column: [bool](class_bool.md#class-bool) = true) const |
| [int](class_int.md#class-int) | [get\_line\_count](#class-textedit-method-get-line-count)() const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_line\_gutter\_icon](#class-textedit-method-get-line-gutter-icon)(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_line\_gutter\_item\_color](#class-textedit-method-get-line-gutter-item-color)(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_line\_gutter\_metadata](#class-textedit-method-get-line-gutter-metadata)(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_line\_gutter\_text](#class-textedit-method-get-line-gutter-text)(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_line\_height](#class-textedit-method-get-line-height)() const |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_line\_ranges\_from\_carets](#class-textedit-method-get-line-ranges-from-carets)(only\_selections: [bool](class_bool.md#class-bool) = false, merge\_adjacent: [bool](class_bool.md#class-bool) = true) const |
| [int](class_int.md#class-int) | [get\_line\_width](#class-textedit-method-get-line-width)(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int) = -1) const |
| [String](class_string.md#class-string) | [get\_line\_with\_ime](#class-textedit-method-get-line-with-ime)(line: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_line\_wrap\_count](#class-textedit-method-get-line-wrap-count)(line: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_line\_wrap\_index\_at\_column](#class-textedit-method-get-line-wrap-index-at-column)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_line\_wrapped\_text](#class-textedit-method-get-line-wrapped-text)(line: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_local\_mouse\_pos](#class-textedit-method-get-local-mouse-pos)() const |
| [PopupMenu](class_popupmenu.md#class-popupmenu) | [get\_menu](#class-textedit-method-get-menu)() const |
| [int](class_int.md#class-int) | [get\_minimap\_line\_at\_pos](#class-textedit-method-get-minimap-line-at-pos)(position: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [int](class_int.md#class-int) | [get\_minimap\_visible\_lines](#class-textedit-method-get-minimap-visible-lines)() const |
| [int](class_int.md#class-int) | [get\_next\_composite\_character\_column](#class-textedit-method-get-next-composite-character-column)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_next\_visible\_line\_index\_offset\_from](#class-textedit-method-get-next-visible-line-index-offset-from)(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int), visible\_amount: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_next\_visible\_line\_offset\_from](#class-textedit-method-get-next-visible-line-offset-from)(line: [int](class_int.md#class-int), visible\_amount: [int](class_int.md#class-int)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_pos\_at\_line\_column](#class-textedit-method-get-pos-at-line-column)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_previous\_composite\_character\_column](#class-textedit-method-get-previous-composite-character-column)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const |
| [Rect2i](class_rect2i.md#class-rect2i) | [get\_rect\_at\_line\_column](#class-textedit-method-get-rect-at-line-column)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_saved\_version](#class-textedit-method-get-saved-version)() const |
| [float](class_float.md#class-float) | [get\_scroll\_pos\_for\_line](#class-textedit-method-get-scroll-pos-for-line)(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int) = 0) const |
| [String](class_string.md#class-string) | [get\_selected\_text](#class-textedit-method-get-selected-text)(caret\_index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [get\_selection\_at\_line\_column](#class-textedit-method-get-selection-at-line-column)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int), include\_edges: [bool](class_bool.md#class-bool) = true, only\_selections: [bool](class_bool.md#class-bool) = true) const |
| [int](class_int.md#class-int) | [get\_selection\_column](#class-textedit-method-get-selection-column)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_selection\_from\_column](#class-textedit-method-get-selection-from-column)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_selection\_from\_line](#class-textedit-method-get-selection-from-line)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_selection\_line](#class-textedit-method-get-selection-line)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [SelectionMode](#enum-textedit-selectionmode) | [get\_selection\_mode](#class-textedit-method-get-selection-mode)() const |
| [int](class_int.md#class-int) | [get\_selection\_origin\_column](#class-textedit-method-get-selection-origin-column)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_selection\_origin\_line](#class-textedit-method-get-selection-origin-line)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_selection\_to\_column](#class-textedit-method-get-selection-to-column)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get\_selection\_to\_line](#class-textedit-method-get-selection-to-line)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_sorted\_carets](#class-textedit-method-get-sorted-carets)(include\_ignored\_carets: [bool](class_bool.md#class-bool) = false) const |
| [int](class_int.md#class-int) | [get\_tab\_size](#class-textedit-method-get-tab-size)() const |
| [int](class_int.md#class-int) | [get\_total\_gutter\_width](#class-textedit-method-get-total-gutter-width)() const |
| [int](class_int.md#class-int) | [get\_total\_visible\_line\_count](#class-textedit-method-get-total-visible-line-count)() const |
| [VScrollBar](class_vscrollbar.md#class-vscrollbar) | [get\_v\_scroll\_bar](#class-textedit-method-get-v-scroll-bar)() const |
| [int](class_int.md#class-int) | [get\_version](#class-textedit-method-get-version)() const |
| [int](class_int.md#class-int) | [get\_visible\_line\_count](#class-textedit-method-get-visible-line-count)() const |
| [int](class_int.md#class-int) | [get\_visible\_line\_count\_in\_range](#class-textedit-method-get-visible-line-count-in-range)(from\_line: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_word\_at\_pos](#class-textedit-method-get-word-at-pos)(position: [Vector2](class_vector2.md#class-vector2)) const |
| [String](class_string.md#class-string) | [get\_word\_under\_caret](#class-textedit-method-get-word-under-caret)(caret\_index: [int](class_int.md#class-int) = -1) const |
| [bool](class_bool.md#class-bool) | [has\_ime\_text](#class-textedit-method-has-ime-text)() const |
| [bool](class_bool.md#class-bool) | [has\_redo](#class-textedit-method-has-redo)() const |
| [bool](class_bool.md#class-bool) | [has\_selection](#class-textedit-method-has-selection)(caret\_index: [int](class_int.md#class-int) = -1) const |
| [bool](class_bool.md#class-bool) | [has\_undo](#class-textedit-method-has-undo)() const |
| void | [insert\_line\_at](#class-textedit-method-insert-line-at)(line: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) |
| void | [insert\_text](#class-textedit-method-insert-text)(text: [String](class_string.md#class-string), line: [int](class_int.md#class-int), column: [int](class_int.md#class-int), before\_selection\_begin: [bool](class_bool.md#class-bool) = true, before\_selection\_end: [bool](class_bool.md#class-bool) = false) |
| void | [insert\_text\_at\_caret](#class-textedit-method-insert-text-at-caret)(text: [String](class_string.md#class-string), caret\_index: [int](class_int.md#class-int) = -1) |
| [bool](class_bool.md#class-bool) | [is\_caret\_after\_selection\_origin](#class-textedit-method-is-caret-after-selection-origin)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [bool](class_bool.md#class-bool) | [is\_caret\_visible](#class-textedit-method-is-caret-visible)(caret\_index: [int](class_int.md#class-int) = 0) const |
| [bool](class_bool.md#class-bool) | [is\_dragging\_cursor](#class-textedit-method-is-dragging-cursor)() const |
| [bool](class_bool.md#class-bool) | [is\_gutter\_clickable](#class-textedit-method-is-gutter-clickable)(gutter: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_gutter\_drawn](#class-textedit-method-is-gutter-drawn)(gutter: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_gutter\_overwritable](#class-textedit-method-is-gutter-overwritable)(gutter: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_in\_mulitcaret\_edit](#class-textedit-method-is-in-mulitcaret-edit)() const |
| [bool](class_bool.md#class-bool) | [is\_line\_gutter\_clickable](#class-textedit-method-is-line-gutter-clickable)(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_line\_wrapped](#class-textedit-method-is-line-wrapped)(line: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_menu\_visible](#class-textedit-method-is-menu-visible)() const |
| [bool](class_bool.md#class-bool) | [is\_mouse\_over\_selection](#class-textedit-method-is-mouse-over-selection)(edges: [bool](class_bool.md#class-bool), caret\_index: [int](class_int.md#class-int) = -1) const |
| [bool](class_bool.md#class-bool) | [is\_overtype\_mode\_enabled](#class-textedit-method-is-overtype-mode-enabled)() const |
| void | [menu\_option](#class-textedit-method-menu-option)(option: [int](class_int.md#class-int)) |
| void | [merge\_gutters](#class-textedit-method-merge-gutters)(from\_line: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int)) |
| void | [merge\_overlapping\_carets](#class-textedit-method-merge-overlapping-carets)() |
| [bool](class_bool.md#class-bool) | [multicaret\_edit\_ignore\_caret](#class-textedit-method-multicaret-edit-ignore-caret)(caret\_index: [int](class_int.md#class-int)) const |
| void | [paste](#class-textedit-method-paste)(caret\_index: [int](class_int.md#class-int) = -1) |
| void | [paste\_primary\_clipboard](#class-textedit-method-paste-primary-clipboard)(caret\_index: [int](class_int.md#class-int) = -1) |
| void | [redo](#class-textedit-method-redo)() |
| void | [remove\_caret](#class-textedit-method-remove-caret)(caret: [int](class_int.md#class-int)) |
| void | [remove\_gutter](#class-textedit-method-remove-gutter)(gutter: [int](class_int.md#class-int)) |
| void | [remove\_line\_at](#class-textedit-method-remove-line-at)(line: [int](class_int.md#class-int), move\_carets\_down: [bool](class_bool.md#class-bool) = true) |
| void | [remove\_secondary\_carets](#class-textedit-method-remove-secondary-carets)() |
| void | [remove\_text](#class-textedit-method-remove-text)(from\_line: [int](class_int.md#class-int), from\_column: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int), to\_column: [int](class_int.md#class-int)) |
| [Vector2i](class_vector2i.md#class-vector2i) | [search](#class-textedit-method-search)(text: [String](class_string.md#class-string), flags: [int](class_int.md#class-int), from\_line: [int](class_int.md#class-int), from\_column: [int](class_int.md#class-int)) const |
| void | [select](#class-textedit-method-select)(origin\_line: [int](class_int.md#class-int), origin\_column: [int](class_int.md#class-int), caret\_line: [int](class_int.md#class-int), caret\_column: [int](class_int.md#class-int), caret\_index: [int](class_int.md#class-int) = 0) |
| void | [select\_all](#class-textedit-method-select-all)() |
| void | [select\_word\_under\_caret](#class-textedit-method-select-word-under-caret)(caret\_index: [int](class_int.md#class-int) = -1) |
| void | [set\_caret\_column](#class-textedit-method-set-caret-column)(column: [int](class_int.md#class-int), adjust\_viewport: [bool](class_bool.md#class-bool) = true, caret\_index: [int](class_int.md#class-int) = 0) |
| void | [set\_caret\_line](#class-textedit-method-set-caret-line)(line: [int](class_int.md#class-int), adjust\_viewport: [bool](class_bool.md#class-bool) = true, can\_be\_hidden: [bool](class_bool.md#class-bool) = true, wrap\_index: [int](class_int.md#class-int) = 0, caret\_index: [int](class_int.md#class-int) = 0) |
| void | [set\_gutter\_clickable](#class-textedit-method-set-gutter-clickable)(gutter: [int](class_int.md#class-int), clickable: [bool](class_bool.md#class-bool)) |
| void | [set\_gutter\_custom\_draw](#class-textedit-method-set-gutter-custom-draw)(column: [int](class_int.md#class-int), draw\_callback: [Callable](class_callable.md#class-callable)) |
| void | [set\_gutter\_draw](#class-textedit-method-set-gutter-draw)(gutter: [int](class_int.md#class-int), draw: [bool](class_bool.md#class-bool)) |
| void | [set\_gutter\_name](#class-textedit-method-set-gutter-name)(gutter: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_gutter\_overwritable](#class-textedit-method-set-gutter-overwritable)(gutter: [int](class_int.md#class-int), overwritable: [bool](class_bool.md#class-bool)) |
| void | [set\_gutter\_type](#class-textedit-method-set-gutter-type)(gutter: [int](class_int.md#class-int), type: [GutterType](#enum-textedit-guttertype)) |
| void | [set\_gutter\_width](#class-textedit-method-set-gutter-width)(gutter: [int](class_int.md#class-int), width: [int](class_int.md#class-int)) |
| void | [set\_line](#class-textedit-method-set-line)(line: [int](class_int.md#class-int), new\_text: [String](class_string.md#class-string)) |
| void | [set\_line\_as\_center\_visible](#class-textedit-method-set-line-as-center-visible)(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int) = 0) |
| void | [set\_line\_as\_first\_visible](#class-textedit-method-set-line-as-first-visible)(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int) = 0) |
| void | [set\_line\_as\_last\_visible](#class-textedit-method-set-line-as-last-visible)(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int) = 0) |
| void | [set\_line\_background\_color](#class-textedit-method-set-line-background-color)(line: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_line\_gutter\_clickable](#class-textedit-method-set-line-gutter-clickable)(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int), clickable: [bool](class_bool.md#class-bool)) |
| void | [set\_line\_gutter\_icon](#class-textedit-method-set-line-gutter-icon)(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_line\_gutter\_item\_color](#class-textedit-method-set-line-gutter-item-color)(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_line\_gutter\_metadata](#class-textedit-method-set-line-gutter-metadata)(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) |
| void | [set\_line\_gutter\_text](#class-textedit-method-set-line-gutter-text)(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) |
| void | [set\_overtype\_mode\_enabled](#class-textedit-method-set-overtype-mode-enabled)(enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_search\_flags](#class-textedit-method-set-search-flags)(flags: [int](class_int.md#class-int)) |
| void | [set\_search\_text](#class-textedit-method-set-search-text)(search\_text: [String](class_string.md#class-string)) |
| void | [set\_selection\_mode](#class-textedit-method-set-selection-mode)(mode: [SelectionMode](#enum-textedit-selectionmode)) |
| void | [set\_selection\_origin\_column](#class-textedit-method-set-selection-origin-column)(column: [int](class_int.md#class-int), caret\_index: [int](class_int.md#class-int) = 0) |
| void | [set\_selection\_origin\_line](#class-textedit-method-set-selection-origin-line)(line: [int](class_int.md#class-int), can\_be\_hidden: [bool](class_bool.md#class-bool) = true, wrap\_index: [int](class_int.md#class-int) = -1, caret\_index: [int](class_int.md#class-int) = 0) |
| void | [set\_tab\_size](#class-textedit-method-set-tab-size)(size: [int](class_int.md#class-int)) |
| void | [set\_tooltip\_request\_func](#class-textedit-method-set-tooltip-request-func)(callback: [Callable](class_callable.md#class-callable)) |
| void | [skip\_selection\_for\_next\_occurrence](#class-textedit-method-skip-selection-for-next-occurrence)() |
| void | [start\_action](#class-textedit-method-start-action)(action: [EditAction](#enum-textedit-editaction)) |
| void | [swap\_lines](#class-textedit-method-swap-lines)(from\_line: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int)) |
| void | [tag\_saved\_version](#class-textedit-method-tag-saved-version)() |
| void | [undo](#class-textedit-method-undo)() |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [background\_color](#class-textedit-theme-color-background-color) | `Color(0, 0, 0, 0)` |
| [Color](class_color.md#class-color) | [caret\_background\_color](#class-textedit-theme-color-caret-background-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [caret\_color](#class-textedit-theme-color-caret-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [current\_line\_color](#class-textedit-theme-color-current-line-color) | `Color(0.25, 0.25, 0.26, 0.8)` |
| [Color](class_color.md#class-color) | [font\_color](#class-textedit-theme-color-font-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-textedit-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_placeholder\_color](#class-textedit-theme-color-font-placeholder-color) | `Color(0.875, 0.875, 0.875, 0.6)` |
| [Color](class_color.md#class-color) | [font\_readonly\_color](#class-textedit-theme-color-font-readonly-color) | `Color(0.875, 0.875, 0.875, 0.5)` |
| [Color](class_color.md#class-color) | [font\_selected\_color](#class-textedit-theme-color-font-selected-color) | `Color(0, 0, 0, 0)` |
| [Color](class_color.md#class-color) | [search\_result\_border\_color](#class-textedit-theme-color-search-result-border-color) | `Color(0.3, 0.3, 0.3, 0.4)` |
| [Color](class_color.md#class-color) | [search\_result\_color](#class-textedit-theme-color-search-result-color) | `Color(0.3, 0.3, 0.3, 1)` |
| [Color](class_color.md#class-color) | [selection\_color](#class-textedit-theme-color-selection-color) | `Color(0.5, 0.5, 0.5, 1)` |
| [Color](class_color.md#class-color) | [word\_highlighted\_color](#class-textedit-theme-color-word-highlighted-color) | `Color(0.5, 0.5, 0.5, 0.25)` |
| [int](class_int.md#class-int) | [caret\_width](#class-textedit-theme-constant-caret-width) | `1` |
| [int](class_int.md#class-int) | [line\_spacing](#class-textedit-theme-constant-line-spacing) | `4` |
| [int](class_int.md#class-int) | [outline\_size](#class-textedit-theme-constant-outline-size) | `0` |
| [Font](class_font.md#class-font) | [font](#class-textedit-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-textedit-theme-font-size-font-size) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [space](#class-textedit-theme-icon-space) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [tab](#class-textedit-theme-icon-tab) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [focus](#class-textedit-theme-style-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [normal](#class-textedit-theme-style-normal) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [read\_only](#class-textedit-theme-style-read-only) |  |

* * *

## Signals

**caret\_changed**() [🔗](#class-textedit-signal-caret-changed)

Emitted when any caret changes position.

* * *

**gutter\_added**() [🔗](#class-textedit-signal-gutter-added)

Emitted when a gutter is added.

* * *

**gutter\_clicked**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) [🔗](#class-textedit-signal-gutter-clicked)

Emitted when a gutter is clicked.

* * *

**gutter\_removed**() [🔗](#class-textedit-signal-gutter-removed)

Emitted when a gutter is removed.

* * *

**lines\_edited\_from**(from\_line: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int)) [🔗](#class-textedit-signal-lines-edited-from)

Emitted immediately when the text changes.

When text is added `from_line` will be less than `to_line`. On a remove `to_line` will be less than `from_line`.

* * *

**text\_changed**() [🔗](#class-textedit-signal-text-changed)

Emitted when the text changes.

* * *

**text\_set**() [🔗](#class-textedit-signal-text-set)

Emitted when [clear()](#class-textedit-method-clear) is called or [text](#class-textedit-property-text) is set.

* * *

## Enumerations

enum **MenuItems**: [🔗](#enum-textedit-menuitems)

[MenuItems](#enum-textedit-menuitems) **MENU\_CUT** = `0`

Cuts (copies and clears) the selected text.

[MenuItems](#enum-textedit-menuitems) **MENU\_COPY** = `1`

Copies the selected text.

[MenuItems](#enum-textedit-menuitems) **MENU\_PASTE** = `2`

Pastes the clipboard text over the selected text (or at the cursor's position).

[MenuItems](#enum-textedit-menuitems) **MENU\_CLEAR** = `3`

Erases the whole **TextEdit** text.

[MenuItems](#enum-textedit-menuitems) **MENU\_SELECT\_ALL** = `4`

Selects the whole **TextEdit** text.

[MenuItems](#enum-textedit-menuitems) **MENU\_UNDO** = `5`

Undoes the previous action.

[MenuItems](#enum-textedit-menuitems) **MENU\_REDO** = `6`

Redoes the previous action.

[MenuItems](#enum-textedit-menuitems) **MENU\_SUBMENU\_TEXT\_DIR** = `7`

ID of "Text Writing Direction" submenu.

[MenuItems](#enum-textedit-menuitems) **MENU\_DIR\_INHERITED** = `8`

Sets text direction to inherited.

[MenuItems](#enum-textedit-menuitems) **MENU\_DIR\_AUTO** = `9`

Sets text direction to automatic.

[MenuItems](#enum-textedit-menuitems) **MENU\_DIR\_LTR** = `10`

Sets text direction to left-to-right.

[MenuItems](#enum-textedit-menuitems) **MENU\_DIR\_RTL** = `11`

Sets text direction to right-to-left.

[MenuItems](#enum-textedit-menuitems) **MENU\_DISPLAY\_UCC** = `12`

Toggles control character display.

[MenuItems](#enum-textedit-menuitems) **MENU\_SUBMENU\_INSERT\_UCC** = `13`

ID of "Insert Control Character" submenu.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_LRM** = `14`

Inserts left-to-right mark (LRM) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_RLM** = `15`

Inserts right-to-left mark (RLM) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_LRE** = `16`

Inserts start of left-to-right embedding (LRE) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_RLE** = `17`

Inserts start of right-to-left embedding (RLE) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_LRO** = `18`

Inserts start of left-to-right override (LRO) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_RLO** = `19`

Inserts start of right-to-left override (RLO) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_PDF** = `20`

Inserts pop direction formatting (PDF) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_ALM** = `21`

Inserts Arabic letter mark (ALM) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_LRI** = `22`

Inserts left-to-right isolate (LRI) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_RLI** = `23`

Inserts right-to-left isolate (RLI) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_FSI** = `24`

Inserts first strong isolate (FSI) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_PDI** = `25`

Inserts pop direction isolate (PDI) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_ZWJ** = `26`

Inserts zero width joiner (ZWJ) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_ZWNJ** = `27`

Inserts zero width non-joiner (ZWNJ) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_WJ** = `28`

Inserts word joiner (WJ) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_INSERT\_SHY** = `29`

Inserts soft hyphen (SHY) character.

[MenuItems](#enum-textedit-menuitems) **MENU\_EMOJI\_AND\_SYMBOL** = `30`

Opens system emoji and symbol picker.

[MenuItems](#enum-textedit-menuitems) **MENU\_MAX** = `31`

Represents the size of the [MenuItems](#enum-textedit-menuitems) enum.

* * *

enum **EditAction**: [🔗](#enum-textedit-editaction)

[EditAction](#enum-textedit-editaction) **ACTION\_NONE** = `0`

No current action.

[EditAction](#enum-textedit-editaction) **ACTION\_TYPING** = `1`

A typing action.

[EditAction](#enum-textedit-editaction) **ACTION\_BACKSPACE** = `2`

A backwards delete action.

[EditAction](#enum-textedit-editaction) **ACTION\_DELETE** = `3`

A forward delete action.

* * *

enum **SearchFlags**: [🔗](#enum-textedit-searchflags)

[SearchFlags](#enum-textedit-searchflags) **SEARCH\_MATCH\_CASE** = `1`

Match case when searching.

[SearchFlags](#enum-textedit-searchflags) **SEARCH\_WHOLE\_WORDS** = `2`

Match whole words when searching.

[SearchFlags](#enum-textedit-searchflags) **SEARCH\_BACKWARDS** = `4`

Search from end to beginning.

* * *

enum **CaretType**: [🔗](#enum-textedit-carettype)

[CaretType](#enum-textedit-carettype) **CARET\_TYPE\_LINE** = `0`

Vertical line caret.

[CaretType](#enum-textedit-carettype) **CARET\_TYPE\_BLOCK** = `1`

Block caret.

* * *

enum **SelectionMode**: [🔗](#enum-textedit-selectionmode)

[SelectionMode](#enum-textedit-selectionmode) **SELECTION\_MODE\_NONE** = `0`

Not selecting.

[SelectionMode](#enum-textedit-selectionmode) **SELECTION\_MODE\_SHIFT** = `1`

Select as if `shift` is pressed.

[SelectionMode](#enum-textedit-selectionmode) **SELECTION\_MODE\_POINTER** = `2`

Select single characters as if the user single clicked.

[SelectionMode](#enum-textedit-selectionmode) **SELECTION\_MODE\_WORD** = `3`

Select whole words as if the user double clicked.

[SelectionMode](#enum-textedit-selectionmode) **SELECTION\_MODE\_LINE** = `4`

Select whole lines as if the user triple clicked.

* * *

enum **LineWrappingMode**: [🔗](#enum-textedit-linewrappingmode)

[LineWrappingMode](#enum-textedit-linewrappingmode) **LINE\_WRAPPING\_NONE** = `0`

Line wrapping is disabled.

[LineWrappingMode](#enum-textedit-linewrappingmode) **LINE\_WRAPPING\_BOUNDARY** = `1`

Line wrapping occurs at the control boundary, beyond what would normally be visible.

* * *

enum **GutterType**: [🔗](#enum-textedit-guttertype)

[GutterType](#enum-textedit-guttertype) **GUTTER\_TYPE\_STRING** = `0`

When a gutter is set to string using [set\_gutter\_type()](#class-textedit-method-set-gutter-type), it is used to contain text set via the [set\_line\_gutter\_text()](#class-textedit-method-set-line-gutter-text) method.

[GutterType](#enum-textedit-guttertype) **GUTTER\_TYPE\_ICON** = `1`

When a gutter is set to icon using [set\_gutter\_type()](#class-textedit-method-set-gutter-type), it is used to contain an icon set via the [set\_line\_gutter\_icon()](#class-textedit-method-set-line-gutter-icon) method.

[GutterType](#enum-textedit-guttertype) **GUTTER\_TYPE\_CUSTOM** = `2`

When a gutter is set to custom using [set\_gutter\_type()](#class-textedit-method-set-gutter-type), it is used to contain custom visuals controlled by a callback method set via the [set\_gutter\_custom\_draw()](#class-textedit-method-set-gutter-custom-draw) method.

* * *

## Property Descriptions

[AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **autowrap\_mode** = `3` [🔗](#class-textedit-property-autowrap-mode)

- void **set\_autowrap\_mode**(value: [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode))

- [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **get\_autowrap\_mode**()


If [wrap\_mode](#class-textedit-property-wrap-mode) is set to [LINE\_WRAPPING\_BOUNDARY](#class-textedit-constant-line-wrapping-boundary), sets text wrapping mode.

* * *

[bool](class_bool.md#class-bool) **backspace\_deletes\_composite\_character\_enabled** = `false` [🔗](#class-textedit-property-backspace-deletes-composite-character-enabled)

- void **set\_backspace\_deletes\_composite\_character\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_backspace\_deletes\_composite\_character\_enabled**()


If `true` and [caret\_mid\_grapheme](#class-textedit-property-caret-mid-grapheme) is `false`, backspace deletes an entire composite character such as ❤️‍🩹, instead of deleting part of the composite character.

* * *

[bool](class_bool.md#class-bool) **caret\_blink** = `false` [🔗](#class-textedit-property-caret-blink)

- void **set\_caret\_blink\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_caret\_blink\_enabled**()


If `true`, makes the caret blink.

* * *

[float](class_float.md#class-float) **caret\_blink\_interval** = `0.65` [🔗](#class-textedit-property-caret-blink-interval)

- void **set\_caret\_blink\_interval**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_caret\_blink\_interval**()


The interval at which the caret blinks (in seconds).

* * *

[bool](class_bool.md#class-bool) **caret\_draw\_when\_editable\_disabled** = `false` [🔗](#class-textedit-property-caret-draw-when-editable-disabled)

- void **set\_draw\_caret\_when\_editable\_disabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drawing\_caret\_when\_editable\_disabled**()


If `true`, caret will be visible when [editable](#class-textedit-property-editable) is disabled.

* * *

[bool](class_bool.md#class-bool) **caret\_mid\_grapheme** = `false` [🔗](#class-textedit-property-caret-mid-grapheme)

- void **set\_caret\_mid\_grapheme\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_caret\_mid\_grapheme\_enabled**()


Allow moving caret, selecting and removing the individual composite character components.

**Note:**  `Backspace` is always removing individual composite character components.

* * *

[bool](class_bool.md#class-bool) **caret\_move\_on\_right\_click** = `true` [🔗](#class-textedit-property-caret-move-on-right-click)

- void **set\_move\_caret\_on\_right\_click\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_move\_caret\_on\_right\_click\_enabled**()


If `true`, a right-click moves the caret at the mouse position before displaying the context menu.

If `false`, the context menu ignores mouse location.

* * *

[bool](class_bool.md#class-bool) **caret\_multiple** = `true` [🔗](#class-textedit-property-caret-multiple)

- void **set\_multiple\_carets\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_multiple\_carets\_enabled**()


If `true`, multiple carets are allowed. Left-clicking with `Alt` adds a new caret. See [add\_caret()](#class-textedit-method-add-caret) and [get\_caret\_count()](#class-textedit-method-get-caret-count).

* * *

[CaretType](#enum-textedit-carettype) **caret\_type** = `0` [🔗](#class-textedit-property-caret-type)

- void **set\_caret\_type**(value: [CaretType](#enum-textedit-carettype))

- [CaretType](#enum-textedit-carettype) **get\_caret\_type**()


Set the type of caret to draw.

* * *

[bool](class_bool.md#class-bool) **context\_menu\_enabled** = `true` [🔗](#class-textedit-property-context-menu-enabled)

- void **set\_context\_menu\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_context\_menu\_enabled**()


If `true`, a right-click displays the context menu.

* * *

[String](class_string.md#class-string) **custom\_word\_separators** = `""` [🔗](#class-textedit-property-custom-word-separators)

- void **set\_custom\_word\_separators**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_custom\_word\_separators**()


The characters to consider as word delimiters if [use\_custom\_word\_separators](#class-textedit-property-use-custom-word-separators) is `true`. The characters should be defined without separation, for example `#_!`.

* * *

[bool](class_bool.md#class-bool) **deselect\_on\_focus\_loss\_enabled** = `true` [🔗](#class-textedit-property-deselect-on-focus-loss-enabled)

- void **set\_deselect\_on\_focus\_loss\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_deselect\_on\_focus\_loss\_enabled**()


If `true`, the selected text will be deselected when focus is lost.

* * *

[bool](class_bool.md#class-bool) **drag\_and\_drop\_selection\_enabled** = `true` [🔗](#class-textedit-property-drag-and-drop-selection-enabled)

- void **set\_drag\_and\_drop\_selection\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drag\_and\_drop\_selection\_enabled**()


If `true`, allow drag and drop of selected text. Text can still be dropped from other sources.

* * *

[bool](class_bool.md#class-bool) **draw\_control\_chars** = `false` [🔗](#class-textedit-property-draw-control-chars)

- void **set\_draw\_control\_chars**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_control\_chars**()


If `true`, control characters are displayed.

* * *

[bool](class_bool.md#class-bool) **draw\_spaces** = `false` [🔗](#class-textedit-property-draw-spaces)

- void **set\_draw\_spaces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drawing\_spaces**()


If `true`, the "space" character will have a visible representation.

* * *

[bool](class_bool.md#class-bool) **draw\_tabs** = `false` [🔗](#class-textedit-property-draw-tabs)

- void **set\_draw\_tabs**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drawing\_tabs**()


If `true`, the "tab" character will have a visible representation.

* * *

[bool](class_bool.md#class-bool) **editable** = `true` [🔗](#class-textedit-property-editable)

- void **set\_editable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editable**()


If `false`, existing text cannot be modified and new text cannot be added.

* * *

[bool](class_bool.md#class-bool) **emoji\_menu\_enabled** = `true` [🔗](#class-textedit-property-emoji-menu-enabled)

- void **set\_emoji\_menu\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_emoji\_menu\_enabled**()


If `true`, "Emoji and Symbols" menu is enabled.

* * *

[bool](class_bool.md#class-bool) **empty\_selection\_clipboard\_enabled** = `true` [🔗](#class-textedit-property-empty-selection-clipboard-enabled)

- void **set\_empty\_selection\_clipboard\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_empty\_selection\_clipboard\_enabled**()


If `true`, copying or cutting without a selection is performed on all lines with a caret. Otherwise, copy and cut require a selection.

* * *

[bool](class_bool.md#class-bool) **highlight\_all\_occurrences** = `false` [🔗](#class-textedit-property-highlight-all-occurrences)

- void **set\_highlight\_all\_occurrences**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_highlight\_all\_occurrences\_enabled**()


If `true`, all occurrences of the selected text will be highlighted.

* * *

[bool](class_bool.md#class-bool) **highlight\_current\_line** = `false` [🔗](#class-textedit-property-highlight-current-line)

- void **set\_highlight\_current\_line**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_highlight\_current\_line\_enabled**()


If `true`, the line containing the cursor is highlighted.

* * *

[bool](class_bool.md#class-bool) **indent\_wrapped\_lines** = `false` [🔗](#class-textedit-property-indent-wrapped-lines)

- void **set\_indent\_wrapped\_lines**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_indent\_wrapped\_lines**()


If `true`, all wrapped lines are indented to the same amount as the unwrapped line.

* * *

[String](class_string.md#class-string) **language** = `""` [🔗](#class-textedit-property-language)

- void **set\_language**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_language**()


Language code used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

[bool](class_bool.md#class-bool) **middle\_mouse\_paste\_enabled** = `true` [🔗](#class-textedit-property-middle-mouse-paste-enabled)

- void **set\_middle\_mouse\_paste\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_middle\_mouse\_paste\_enabled**()


If `false`, using middle mouse button to paste clipboard will be disabled.

**Note:** This method is only implemented on Linux.

* * *

[bool](class_bool.md#class-bool) **minimap\_draw** = `false` [🔗](#class-textedit-property-minimap-draw)

- void **set\_draw\_minimap**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drawing\_minimap**()


If `true`, a minimap is shown, providing an outline of your source code. The minimap uses a fixed-width text size.

* * *

[int](class_int.md#class-int) **minimap\_width** = `80` [🔗](#class-textedit-property-minimap-width)

- void **set\_minimap\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_minimap\_width**()


The width, in pixels, of the minimap.

* * *

[String](class_string.md#class-string) **placeholder\_text** = `""` [🔗](#class-textedit-property-placeholder-text)

- void **set\_placeholder**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_placeholder**()


Text shown when the **TextEdit** is empty. It is **not** the **TextEdit**'s default value (see [text](#class-textedit-property-text)).

* * *

[bool](class_bool.md#class-bool) **scroll\_fit\_content\_height** = `false` [🔗](#class-textedit-property-scroll-fit-content-height)

- void **set\_fit\_content\_height\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_fit\_content\_height\_enabled**()


If `true`, **TextEdit** will disable vertical scroll and fit minimum height to the number of visible lines. When both this property and [scroll\_fit\_content\_width](#class-textedit-property-scroll-fit-content-width) are `true`, no scrollbars will be displayed.

* * *

[bool](class_bool.md#class-bool) **scroll\_fit\_content\_width** = `false` [🔗](#class-textedit-property-scroll-fit-content-width)

- void **set\_fit\_content\_width\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_fit\_content\_width\_enabled**()


If `true`, **TextEdit** will disable horizontal scroll and fit minimum width to the widest line in the text. When both this property and [scroll\_fit\_content\_height](#class-textedit-property-scroll-fit-content-height) are `true`, no scrollbars will be displayed.

* * *

[int](class_int.md#class-int) **scroll\_horizontal** = `0` [🔗](#class-textedit-property-scroll-horizontal)

- void **set\_h\_scroll**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_h\_scroll**()


If there is a horizontal scrollbar, this determines the current horizontal scroll value in pixels.

* * *

[bool](class_bool.md#class-bool) **scroll\_past\_end\_of\_file** = `false` [🔗](#class-textedit-property-scroll-past-end-of-file)

- void **set\_scroll\_past\_end\_of\_file\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_scroll\_past\_end\_of\_file\_enabled**()


Allow scrolling past the last line into "virtual" space.

* * *

[bool](class_bool.md#class-bool) **scroll\_smooth** = `false` [🔗](#class-textedit-property-scroll-smooth)

- void **set\_smooth\_scroll\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_smooth\_scroll\_enabled**()


Scroll smoothly over the text rather than jumping to the next location.

* * *

[float](class_float.md#class-float) **scroll\_v\_scroll\_speed** = `80.0` [🔗](#class-textedit-property-scroll-v-scroll-speed)

- void **set\_v\_scroll\_speed**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_v\_scroll\_speed**()


Sets the scroll speed with the minimap or when [scroll\_smooth](#class-textedit-property-scroll-smooth) is enabled.

* * *

[float](class_float.md#class-float) **scroll\_vertical** = `0.0` [🔗](#class-textedit-property-scroll-vertical)

- void **set\_v\_scroll**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_v\_scroll**()


If there is a vertical scrollbar, this determines the current vertical scroll value in line numbers, starting at 0 for the top line.

* * *

[bool](class_bool.md#class-bool) **selecting\_enabled** = `true` [🔗](#class-textedit-property-selecting-enabled)

- void **set\_selecting\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_selecting\_enabled**()


If `true`, text can be selected.

If `false`, text can not be selected by the user or by the [select()](#class-textedit-method-select) or [select\_all()](#class-textedit-method-select-all) methods.

* * *

[bool](class_bool.md#class-bool) **shortcut\_keys\_enabled** = `true` [🔗](#class-textedit-property-shortcut-keys-enabled)

- void **set\_shortcut\_keys\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_shortcut\_keys\_enabled**()


If `true`, shortcut keys for context menu items are enabled, even if the context menu is disabled.

* * *

[StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **structured\_text\_bidi\_override** = `0` [🔗](#class-textedit-property-structured-text-bidi-override)

- void **set\_structured\_text\_bidi\_override**(value: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser))

- [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **get\_structured\_text\_bidi\_override**()


Set BiDi algorithm override for the structured text.

* * *

[Array](class_array.md#class-array) **structured\_text\_bidi\_override\_options** = `[]` [🔗](#class-textedit-property-structured-text-bidi-override-options)

- void **set\_structured\_text\_bidi\_override\_options**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_structured\_text\_bidi\_override\_options**()


Set additional options for BiDi override.

* * *

[SyntaxHighlighter](class_syntaxhighlighter.md#class-syntaxhighlighter) **syntax\_highlighter** [🔗](#class-textedit-property-syntax-highlighter)

- void **set\_syntax\_highlighter**(value: [SyntaxHighlighter](class_syntaxhighlighter.md#class-syntaxhighlighter))

- [SyntaxHighlighter](class_syntaxhighlighter.md#class-syntaxhighlighter) **get\_syntax\_highlighter**()


The syntax highlighter to use.

**Note:** A [SyntaxHighlighter](class_syntaxhighlighter.md#class-syntaxhighlighter) instance should not be used across multiple **TextEdit** nodes.

* * *

[bool](class_bool.md#class-bool) **tab\_input\_mode** = `true` [🔗](#class-textedit-property-tab-input-mode)

- void **set\_tab\_input\_mode**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_tab\_input\_mode**()


If `true`, [ProjectSettings.input/ui\_text\_indent](class_projectsettings.md#class-projectsettings-property-input-ui-text-indent) input `Tab` character, otherwise it moves keyboard focus to the next [Control](class_control.md#class-control) in the scene.

* * *

[String](class_string.md#class-string) **text** = `""` [🔗](#class-textedit-property-text)

- void **set\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_text**()


String value of the **TextEdit**.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **text\_direction** = `0` [🔗](#class-textedit-property-text-direction)

- void **set\_text\_direction**(value: [TextDirection](class_control.md#enum-control-textdirection))

- [TextDirection](class_control.md#enum-control-textdirection) **get\_text\_direction**()


Base text writing direction.

* * *

[bool](class_bool.md#class-bool) **use\_custom\_word\_separators** = `false` [🔗](#class-textedit-property-use-custom-word-separators)

- void **set\_use\_custom\_word\_separators**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_custom\_word\_separators\_enabled**()


If `false`, using `Ctrl + Left` or `Ctrl + Right` ( `Cmd + Left` or `Cmd + Right` on macOS) bindings will use the behavior of [use\_default\_word\_separators](#class-textedit-property-use-default-word-separators). If `true`, it will also stop the caret if a character within [custom\_word\_separators](#class-textedit-property-custom-word-separators) is detected. Useful for subword moving. This behavior also will be applied to the behavior of text selection.

* * *

[bool](class_bool.md#class-bool) **use\_default\_word\_separators** = `true` [🔗](#class-textedit-property-use-default-word-separators)

- void **set\_use\_default\_word\_separators**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_default\_word\_separators\_enabled**()


If `false`, using `Ctrl + Left` or `Ctrl + Right` ( `Cmd + Left` or `Cmd + Right` on macOS) bindings will stop moving caret only if a space or punctuation is detected. If `true`, it will also stop the caret if a character is part of ``!"#$%&'()*+,-./:;<=>?@[\]^`{|}~``, the Unicode General Punctuation table, or the Unicode CJK Punctuation table. Useful for subword moving. This behavior also will be applied to the behavior of text selection.

* * *

[bool](class_bool.md#class-bool) **virtual\_keyboard\_enabled** = `true` [🔗](#class-textedit-property-virtual-keyboard-enabled)

- void **set\_virtual\_keyboard\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_virtual\_keyboard\_enabled**()


If `true`, the native virtual keyboard is enabled on platforms that support it.

* * *

[bool](class_bool.md#class-bool) **virtual\_keyboard\_show\_on\_focus** = `true` [🔗](#class-textedit-property-virtual-keyboard-show-on-focus)

- void **set\_virtual\_keyboard\_show\_on\_focus**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_virtual\_keyboard\_show\_on\_focus**()


If `true`, the native virtual keyboard is shown on focus events on platforms that support it.

* * *

[LineWrappingMode](#enum-textedit-linewrappingmode) **wrap\_mode** = `0` [🔗](#class-textedit-property-wrap-mode)

- void **set\_line\_wrapping\_mode**(value: [LineWrappingMode](#enum-textedit-linewrappingmode))

- [LineWrappingMode](#enum-textedit-linewrappingmode) **get\_line\_wrapping\_mode**()


Sets the line wrapping mode to use.

* * *

## Method Descriptions

void **\_backspace**(caret\_index: [int](class_int.md#class-int)) virtual [🔗](#class-textedit-private-method-backspace)

Override this method to define what happens when the user presses the backspace key.

* * *

void **\_copy**(caret\_index: [int](class_int.md#class-int)) virtual [🔗](#class-textedit-private-method-copy)

Override this method to define what happens when the user performs a copy operation.

* * *

void **\_cut**(caret\_index: [int](class_int.md#class-int)) virtual [🔗](#class-textedit-private-method-cut)

Override this method to define what happens when the user performs a cut operation.

* * *

void **\_handle\_unicode\_input**(unicode\_char: [int](class_int.md#class-int), caret\_index: [int](class_int.md#class-int)) virtual [🔗](#class-textedit-private-method-handle-unicode-input)

Override this method to define what happens when the user types in the provided key `unicode_char`.

* * *

void **\_paste**(caret\_index: [int](class_int.md#class-int)) virtual [🔗](#class-textedit-private-method-paste)

Override this method to define what happens when the user performs a paste operation.

* * *

void **\_paste\_primary\_clipboard**(caret\_index: [int](class_int.md#class-int)) virtual [🔗](#class-textedit-private-method-paste-primary-clipboard)

Override this method to define what happens when the user performs a paste operation with middle mouse button.

**Note:** This method is only implemented on Linux.

* * *

[int](class_int.md#class-int) **add\_caret**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) [🔗](#class-textedit-method-add-caret)

Adds a new caret at the given location. Returns the index of the new caret, or `-1` if the location is invalid.

* * *

void **add\_caret\_at\_carets**(below: [bool](class_bool.md#class-bool)) [🔗](#class-textedit-method-add-caret-at-carets)

Adds an additional caret above or below every caret. If `below` is `true` the new caret will be added below and above otherwise.

* * *

void **add\_gutter**(at: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-add-gutter)

Register a new gutter to this **TextEdit**. Use `at` to have a specific gutter order. A value of `-1` appends the gutter to the right.

* * *

void **add\_selection\_for\_next\_occurrence**() [🔗](#class-textedit-method-add-selection-for-next-occurrence)

Adds a selection and a caret for the next occurrence of the current selection. If there is no active selection, selects word under caret.

* * *

void **adjust\_carets\_after\_edit**(caret: [int](class_int.md#class-int), from\_line: [int](class_int.md#class-int), from\_col: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int), to\_col: [int](class_int.md#class-int)) [🔗](#class-textedit-method-adjust-carets-after-edit)

**Deprecated:** No longer necessary since methods now adjust carets themselves.

This method does nothing.

* * *

void **adjust\_viewport\_to\_caret**(caret\_index: [int](class_int.md#class-int) = 0) [🔗](#class-textedit-method-adjust-viewport-to-caret)

Adjust the viewport so the caret is visible.

* * *

void **apply\_ime**() [🔗](#class-textedit-method-apply-ime)

Applies text from the [Input Method Editor](https://en.wikipedia.org/wiki/Input_method) (IME) to each caret and closes the IME if it is open.

* * *

void **backspace**(caret\_index: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-backspace)

Called when the user presses the backspace key. Can be overridden with [\_backspace()](#class-textedit-private-method-backspace).

* * *

void **begin\_complex\_operation**() [🔗](#class-textedit-method-begin-complex-operation)

Starts a multipart edit. All edits will be treated as one action until [end\_complex\_operation()](#class-textedit-method-end-complex-operation) is called.

* * *

void **begin\_multicaret\_edit**() [🔗](#class-textedit-method-begin-multicaret-edit)

Starts an edit for multiple carets. The edit must be ended with [end\_multicaret\_edit()](#class-textedit-method-end-multicaret-edit). Multicaret edits can be used to edit text at multiple carets and delay merging the carets until the end, so the caret indexes aren't affected immediately. [begin\_multicaret\_edit()](#class-textedit-method-begin-multicaret-edit) and [end\_multicaret\_edit()](#class-textedit-method-end-multicaret-edit) can be nested, and the merge will happen at the last [end\_multicaret\_edit()](#class-textedit-method-end-multicaret-edit).

```
begin_complex_operation()
begin_multicaret_edit()
for i in range(get_caret_count()):
    if multicaret_edit_ignore_caret(i):
        continue
    # Logic here.
end_multicaret_edit()
end_complex_operation()

```

* * *

void **cancel\_ime**() [🔗](#class-textedit-method-cancel-ime)

Closes the [Input Method Editor](https://en.wikipedia.org/wiki/Input_method) (IME) if it is open. Any text in the IME will be lost.

* * *

void **center\_viewport\_to\_caret**(caret\_index: [int](class_int.md#class-int) = 0) [🔗](#class-textedit-method-center-viewport-to-caret)

Centers the viewport on the line the editing caret is at. This also resets the [scroll\_horizontal](#class-textedit-property-scroll-horizontal) value to `0`.

* * *

void **clear**() [🔗](#class-textedit-method-clear)

Performs a full reset of **TextEdit**, including undo history.

* * *

void **clear\_undo\_history**() [🔗](#class-textedit-method-clear-undo-history)

Clears the undo history.

* * *

void **collapse\_carets**(from\_line: [int](class_int.md#class-int), from\_column: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int), to\_column: [int](class_int.md#class-int), inclusive: [bool](class_bool.md#class-bool) = false) [🔗](#class-textedit-method-collapse-carets)

Collapse all carets in the given range to the `from_line` and `from_column` position.

`inclusive` applies to both ends.

If [is\_in\_mulitcaret\_edit()](#class-textedit-method-is-in-mulitcaret-edit) is `true`, carets that are collapsed will be `true` for [multicaret\_edit\_ignore\_caret()](#class-textedit-method-multicaret-edit-ignore-caret).

[merge\_overlapping\_carets()](#class-textedit-method-merge-overlapping-carets) will be called if any carets were collapsed.

* * *

void **copy**(caret\_index: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-copy)

Copies the current text selection. Can be overridden with [\_copy()](#class-textedit-private-method-copy).

* * *

void **cut**(caret\_index: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-cut)

Cut's the current selection. Can be overridden with [\_cut()](#class-textedit-private-method-cut).

* * *

void **delete\_selection**(caret\_index: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-delete-selection)

Deletes the selected text.

* * *

void **deselect**(caret\_index: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-deselect)

Deselects the current selection.

* * *

void **end\_action**() [🔗](#class-textedit-method-end-action)

Marks the end of steps in the current action started with [start\_action()](#class-textedit-method-start-action).

* * *

void **end\_complex\_operation**() [🔗](#class-textedit-method-end-complex-operation)

Ends a multipart edit, started with [begin\_complex\_operation()](#class-textedit-method-begin-complex-operation). If called outside a complex operation, the current operation is pushed onto the undo/redo stack.

* * *

void **end\_multicaret\_edit**() [🔗](#class-textedit-method-end-multicaret-edit)

Ends an edit for multiple carets, that was started with [begin\_multicaret\_edit()](#class-textedit-method-begin-multicaret-edit). If this was the last [end\_multicaret\_edit()](#class-textedit-method-end-multicaret-edit) and [merge\_overlapping\_carets()](#class-textedit-method-merge-overlapping-carets) was called, carets will be merged.

* * *

[int](class_int.md#class-int) **get\_caret\_column**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-caret-column)

Returns the column the editing caret is at.

* * *

[int](class_int.md#class-int) **get\_caret\_count**() const [🔗](#class-textedit-method-get-caret-count)

Returns the number of carets in this **TextEdit**.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_caret\_draw\_pos**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-caret-draw-pos)

Returns the caret pixel draw position.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_caret\_index\_edit\_order**() [🔗](#class-textedit-method-get-caret-index-edit-order)

**Deprecated:** Carets no longer need to be edited in any specific order. If the carets need to be sorted, use [get\_sorted\_carets()](#class-textedit-method-get-sorted-carets) instead.

Returns a list of caret indexes in their edit order, this done from bottom to top. Edit order refers to the way actions such as [insert\_text\_at\_caret()](#class-textedit-method-insert-text-at-caret) are applied.

* * *

[int](class_int.md#class-int) **get\_caret\_line**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-caret-line)

Returns the line the editing caret is on.

* * *

[int](class_int.md#class-int) **get\_caret\_wrap\_index**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-caret-wrap-index)

Returns the wrap index the editing caret is on.

* * *

[int](class_int.md#class-int) **get\_first\_non\_whitespace\_column**(line: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-first-non-whitespace-column)

Returns the first column containing a non-whitespace character on the given line. If there is only whitespace, returns the number of characters.

* * *

[int](class_int.md#class-int) **get\_first\_visible\_line**() const [🔗](#class-textedit-method-get-first-visible-line)

Returns the first visible line.

* * *

[int](class_int.md#class-int) **get\_gutter\_count**() const [🔗](#class-textedit-method-get-gutter-count)

Returns the number of gutters registered.

* * *

[String](class_string.md#class-string) **get\_gutter\_name**(gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-gutter-name)

Returns the name of the gutter at the given index.

* * *

[GutterType](#enum-textedit-guttertype) **get\_gutter\_type**(gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-gutter-type)

Returns the type of the gutter at the given index. Gutters can contain icons, text, or custom visuals.

* * *

[int](class_int.md#class-int) **get\_gutter\_width**(gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-gutter-width)

Returns the width of the gutter at the given index.

* * *

[HScrollBar](class_hscrollbar.md#class-hscrollbar) **get\_h\_scroll\_bar**() const [🔗](#class-textedit-method-get-h-scroll-bar)

Returns the [HScrollBar](class_hscrollbar.md#class-hscrollbar) used by **TextEdit**.

* * *

[int](class_int.md#class-int) **get\_indent\_level**(line: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-indent-level)

Returns the indent level of the given line. This is the number of spaces and tabs at the beginning of the line, with the tabs taking the tab size into account (see [get\_tab\_size()](#class-textedit-method-get-tab-size)).

* * *

[int](class_int.md#class-int) **get\_last\_full\_visible\_line**() const [🔗](#class-textedit-method-get-last-full-visible-line)

Returns the last visible line. Use [get\_last\_full\_visible\_line\_wrap\_index()](#class-textedit-method-get-last-full-visible-line-wrap-index) for the wrap index.

* * *

[int](class_int.md#class-int) **get\_last\_full\_visible\_line\_wrap\_index**() const [🔗](#class-textedit-method-get-last-full-visible-line-wrap-index)

Returns the last visible wrap index of the last visible line.

* * *

[int](class_int.md#class-int) **get\_last\_unhidden\_line**() const [🔗](#class-textedit-method-get-last-unhidden-line)

Returns the last unhidden line in the entire **TextEdit**.

* * *

[String](class_string.md#class-string) **get\_line**(line: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-line)

Returns the text of a specific line.

* * *

[Color](class_color.md#class-color) **get\_line\_background\_color**(line: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-line-background-color)

Returns the custom background color of the given line. If no color is set, returns `Color(0, 0, 0, 0)`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_line\_column\_at\_pos**(position: [Vector2i](class_vector2i.md#class-vector2i), clamp\_line: [bool](class_bool.md#class-bool) = true, clamp\_column: [bool](class_bool.md#class-bool) = true) const [🔗](#class-textedit-method-get-line-column-at-pos)

Returns the line and column at the given position. In the returned vector, `x` is the column and `y` is the line.

If `clamp_line` is `false` and `position` is below the last line, `Vector2i(-1, -1)` is returned.

If `clamp_column` is `false` and `position` is outside the column range of the line, `Vector2i(-1, -1)` is returned.

* * *

[int](class_int.md#class-int) **get\_line\_count**() const [🔗](#class-textedit-method-get-line-count)

Returns the number of lines in the text.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_line\_gutter\_icon**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-line-gutter-icon)

Returns the icon currently in `gutter` at `line`. This only works when the gutter type is [GUTTER\_TYPE\_ICON](#class-textedit-constant-gutter-type-icon) (see [set\_gutter\_type()](#class-textedit-method-set-gutter-type)).

* * *

[Color](class_color.md#class-color) **get\_line\_gutter\_item\_color**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-line-gutter-item-color)

Returns the color currently in `gutter` at `line`.

* * *

[Variant](class_variant.md#class-variant) **get\_line\_gutter\_metadata**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-line-gutter-metadata)

Returns the metadata currently in `gutter` at `line`.

* * *

[String](class_string.md#class-string) **get\_line\_gutter\_text**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-line-gutter-text)

Returns the text currently in `gutter` at `line`. This only works when the gutter type is [GUTTER\_TYPE\_STRING](#class-textedit-constant-gutter-type-string) (see [set\_gutter\_type()](#class-textedit-method-set-gutter-type)).

* * *

[int](class_int.md#class-int) **get\_line\_height**() const [🔗](#class-textedit-method-get-line-height)

Returns the maximum value of the line height among all lines.

**Note:** The return value is influenced by [line\_spacing](#class-textedit-theme-constant-line-spacing) and [font\_size](#class-textedit-theme-font-size-font-size). And it will not be less than `1`.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_line\_ranges\_from\_carets**(only\_selections: [bool](class_bool.md#class-bool) = false, merge\_adjacent: [bool](class_bool.md#class-bool) = true) const [🔗](#class-textedit-method-get-line-ranges-from-carets)

Returns an [Array](class_array.md#class-array) of line ranges where `x` is the first line and `y` is the last line. All lines within these ranges will have a caret on them or be part of a selection. Each line will only be part of one line range, even if it has multiple carets on it.

If a selection's end column ( [get\_selection\_to\_column()](#class-textedit-method-get-selection-to-column)) is at column `0`, that line will not be included. If a selection begins on the line after another selection ends and `merge_adjacent` is `true`, or they begin and end on the same line, one line range will include both selections.

* * *

[int](class_int.md#class-int) **get\_line\_width**(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int) = -1) const [🔗](#class-textedit-method-get-line-width)

Returns the width in pixels of the `wrap_index` on `line`.

* * *

[String](class_string.md#class-string) **get\_line\_with\_ime**(line: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-line-with-ime)

Returns line text as it is currently displayed, including IME composition string.

* * *

[int](class_int.md#class-int) **get\_line\_wrap\_count**(line: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-line-wrap-count)

Returns the number of times the given line is wrapped.

* * *

[int](class_int.md#class-int) **get\_line\_wrap\_index\_at\_column**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-line-wrap-index-at-column)

Returns the wrap index of the given column on the given line. This ranges from `0` to [get\_line\_wrap\_count()](#class-textedit-method-get-line-wrap-count).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_line\_wrapped\_text**(line: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-line-wrapped-text)

Returns an array of [String](class_string.md#class-string) s representing each wrapped index.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_local\_mouse\_pos**() const [🔗](#class-textedit-method-get-local-mouse-pos)

Returns the local mouse position adjusted for the text direction.

* * *

[PopupMenu](class_popupmenu.md#class-popupmenu) **get\_menu**() const [🔗](#class-textedit-method-get-menu)

Returns the [PopupMenu](class_popupmenu.md#class-popupmenu) of this **TextEdit**. By default, this menu is displayed when right-clicking on the **TextEdit**.

You can add custom menu items or remove standard ones. Make sure your IDs don't conflict with the standard ones (see [MenuItems](#enum-textedit-menuitems)). For example:

GDScriptC#

```
func _ready():
    var menu = get_menu()
    # Remove all items after "Redo".
    menu.item_count = menu.get_item_index(MENU_REDO) + 1
    # Add custom items.
    menu.add_separator()
    menu.add_item("Insert Date", MENU_MAX + 1)
    # Connect callback.
    menu.id_pressed.connect(_on_item_pressed)

func _on_item_pressed(id):
    if id == MENU_MAX + 1:
        insert_text_at_caret(Time.get_date_string_from_system())

```

```
public override void _Ready()
{
    var menu = GetMenu();
    // Remove all items after "Redo".
    menu.ItemCount = menu.GetItemIndex(TextEdit.MenuItems.Redo) + 1;
    // Add custom items.
    menu.AddSeparator();
    menu.AddItem("Insert Date", TextEdit.MenuItems.Max + 1);
    // Add event handler.
    menu.IdPressed += OnItemPressed;
}

public void OnItemPressed(int id)
{
    if (id == TextEdit.MenuItems.Max + 1)
    {
        InsertTextAtCaret(Time.GetDateStringFromSystem());
    }
}

```

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [Window.visible](class_window.md#class-window-property-visible) property.

* * *

[int](class_int.md#class-int) **get\_minimap\_line\_at\_pos**(position: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-textedit-method-get-minimap-line-at-pos)

Returns the equivalent minimap line at `position`.

* * *

[int](class_int.md#class-int) **get\_minimap\_visible\_lines**() const [🔗](#class-textedit-method-get-minimap-visible-lines)

Returns the number of lines that may be drawn on the minimap.

* * *

[int](class_int.md#class-int) **get\_next\_composite\_character\_column**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-next-composite-character-column)

Returns the correct column at the end of a composite character like ❤️‍🩹 (mending heart; Unicode: `U+2764 U+FE0F U+200D U+1FA79`) which is comprised of more than one Unicode code point, if the caret is at the start of the composite character. Also returns the correct column with the caret at mid grapheme and for non-composite characters.

**Note:** To check at caret location use `get_next_composite_character_column(get_caret_line(), get_caret_column())`

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_next\_visible\_line\_index\_offset\_from**(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int), visible\_amount: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-next-visible-line-index-offset-from)

Similar to [get\_next\_visible\_line\_offset\_from()](#class-textedit-method-get-next-visible-line-offset-from), but takes into account the line wrap indexes. In the returned vector, `x` is the line, `y` is the wrap index.

* * *

[int](class_int.md#class-int) **get\_next\_visible\_line\_offset\_from**(line: [int](class_int.md#class-int), visible\_amount: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-next-visible-line-offset-from)

Returns the count to the next visible line from `line` to `line + visible_amount`. Can also count backwards. For example if a **TextEdit** has 5 lines with lines 2 and 3 hidden, calling this with `line = 1, visible_amount = 1` would return 3.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_pos\_at\_line\_column**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-pos-at-line-column)

Returns the local position for the given `line` and `column`. If `x` or `y` of the returned vector equal `-1`, the position is outside of the viewable area of the control.

**Note:** The Y position corresponds to the bottom side of the line. Use [get\_rect\_at\_line\_column()](#class-textedit-method-get-rect-at-line-column) to get the top side position.

* * *

[int](class_int.md#class-int) **get\_previous\_composite\_character\_column**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-previous-composite-character-column)

Returns the correct column at the start of a composite character like ❤️‍🩹 (mending heart; Unicode: `U+2764 U+FE0F U+200D U+1FA79`) which is comprised of more than one Unicode code point, if the caret is at the end of the composite character. Also returns the correct column with the caret at mid grapheme and for non-composite characters.

**Note:** To check at caret location use `get_previous_composite_character_column(get_caret_line(), get_caret_column())`

* * *

[Rect2i](class_rect2i.md#class-rect2i) **get\_rect\_at\_line\_column**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-rect-at-line-column)

Returns the local position and size for the grapheme at the given `line` and `column`. If `x` or `y` position of the returned rect equal `-1`, the position is outside of the viewable area of the control.

**Note:** The Y position of the returned rect corresponds to the top side of the line, unlike [get\_pos\_at\_line\_column()](#class-textedit-method-get-pos-at-line-column) which returns the bottom side.

* * *

[int](class_int.md#class-int) **get\_saved\_version**() const [🔗](#class-textedit-method-get-saved-version)

Returns the last tagged saved version from [tag\_saved\_version()](#class-textedit-method-tag-saved-version).

* * *

[float](class_float.md#class-float) **get\_scroll\_pos\_for\_line**(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-scroll-pos-for-line)

Returns the scroll position for `wrap_index` of `line`.

* * *

[String](class_string.md#class-string) **get\_selected\_text**(caret\_index: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-get-selected-text)

Returns the text inside the selection of a caret, or all the carets if `caret_index` is its default value `-1`.

* * *

[int](class_int.md#class-int) **get\_selection\_at\_line\_column**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int), include\_edges: [bool](class_bool.md#class-bool) = true, only\_selections: [bool](class_bool.md#class-bool) = true) const [🔗](#class-textedit-method-get-selection-at-line-column)

Returns the caret index of the selection at the given `line` and `column`, or `-1` if there is none.

If `include_edges` is `false`, the position must be inside the selection and not at either end. If `only_selections` is `false`, carets without a selection will also be considered.

* * *

[int](class_int.md#class-int) **get\_selection\_column**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-selection-column)

**Deprecated:** Use [get\_selection\_origin\_column()](#class-textedit-method-get-selection-origin-column) instead.

Returns the original start column of the selection.

* * *

[int](class_int.md#class-int) **get\_selection\_from\_column**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-selection-from-column)

Returns the selection begin column. Returns the caret column if there is no selection.

* * *

[int](class_int.md#class-int) **get\_selection\_from\_line**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-selection-from-line)

Returns the selection begin line. Returns the caret line if there is no selection.

* * *

[int](class_int.md#class-int) **get\_selection\_line**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-selection-line)

**Deprecated:** Use [get\_selection\_origin\_line()](#class-textedit-method-get-selection-origin-line) instead.

Returns the original start line of the selection.

* * *

[SelectionMode](#enum-textedit-selectionmode) **get\_selection\_mode**() const [🔗](#class-textedit-method-get-selection-mode)

Returns the current selection mode.

* * *

[int](class_int.md#class-int) **get\_selection\_origin\_column**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-selection-origin-column)

Returns the origin column of the selection. This is the opposite end from the caret.

* * *

[int](class_int.md#class-int) **get\_selection\_origin\_line**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-selection-origin-line)

Returns the origin line of the selection. This is the opposite end from the caret.

* * *

[int](class_int.md#class-int) **get\_selection\_to\_column**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-selection-to-column)

Returns the selection end column. Returns the caret column if there is no selection.

* * *

[int](class_int.md#class-int) **get\_selection\_to\_line**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-get-selection-to-line)

Returns the selection end line. Returns the caret line if there is no selection.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_sorted\_carets**(include\_ignored\_carets: [bool](class_bool.md#class-bool) = false) const [🔗](#class-textedit-method-get-sorted-carets)

Returns the carets sorted by selection beginning from lowest line and column to highest (from top to bottom of text).

If `include_ignored_carets` is `false`, carets from [multicaret\_edit\_ignore\_caret()](#class-textedit-method-multicaret-edit-ignore-caret) will be ignored.

* * *

[int](class_int.md#class-int) **get\_tab\_size**() const [🔗](#class-textedit-method-get-tab-size)

Returns the **TextEdit**'s' tab size.

* * *

[int](class_int.md#class-int) **get\_total\_gutter\_width**() const [🔗](#class-textedit-method-get-total-gutter-width)

Returns the total width of all gutters and internal padding.

* * *

[int](class_int.md#class-int) **get\_total\_visible\_line\_count**() const [🔗](#class-textedit-method-get-total-visible-line-count)

Returns the total number of lines in the text. This includes wrapped lines and excludes folded lines. If [wrap\_mode](#class-textedit-property-wrap-mode) is set to [LINE\_WRAPPING\_NONE](#class-textedit-constant-line-wrapping-none) and no lines are folded (see [CodeEdit.is\_line\_folded()](class_codeedit.md#class-codeedit-method-is-line-folded)) then this is equivalent to [get\_line\_count()](#class-textedit-method-get-line-count). See [get\_visible\_line\_count\_in\_range()](#class-textedit-method-get-visible-line-count-in-range) for a limited range of lines.

* * *

[VScrollBar](class_vscrollbar.md#class-vscrollbar) **get\_v\_scroll\_bar**() const [🔗](#class-textedit-method-get-v-scroll-bar)

Returns the [VScrollBar](class_vscrollbar.md#class-vscrollbar) of the **TextEdit**.

* * *

[int](class_int.md#class-int) **get\_version**() const [🔗](#class-textedit-method-get-version)

Returns the current version of the **TextEdit**. The version is a count of recorded operations by the undo/redo history.

* * *

[int](class_int.md#class-int) **get\_visible\_line\_count**() const [🔗](#class-textedit-method-get-visible-line-count)

Returns the number of lines that can visually fit, rounded down, based on this control's height.

* * *

[int](class_int.md#class-int) **get\_visible\_line\_count\_in\_range**(from\_line: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-get-visible-line-count-in-range)

Returns the total number of lines between `from_line` and `to_line` (inclusive) in the text. This includes wrapped lines and excludes folded lines. If the range covers all lines it is equivalent to [get\_total\_visible\_line\_count()](#class-textedit-method-get-total-visible-line-count).

* * *

[String](class_string.md#class-string) **get\_word\_at\_pos**(position: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-textedit-method-get-word-at-pos)

Returns the word at `position`.

* * *

[String](class_string.md#class-string) **get\_word\_under\_caret**(caret\_index: [int](class_int.md#class-int) = -1) const [🔗](#class-textedit-method-get-word-under-caret)

Returns a [String](class_string.md#class-string) text with the word under the caret's location.

* * *

[bool](class_bool.md#class-bool) **has\_ime\_text**() const [🔗](#class-textedit-method-has-ime-text)

Returns `true` if the user has text in the [Input Method Editor](https://en.wikipedia.org/wiki/Input_method) (IME).

* * *

[bool](class_bool.md#class-bool) **has\_redo**() const [🔗](#class-textedit-method-has-redo)

Returns `true` if a "redo" action is available.

* * *

[bool](class_bool.md#class-bool) **has\_selection**(caret\_index: [int](class_int.md#class-int) = -1) const [🔗](#class-textedit-method-has-selection)

Returns `true` if the user has selected text.

* * *

[bool](class_bool.md#class-bool) **has\_undo**() const [🔗](#class-textedit-method-has-undo)

Returns `true` if an "undo" action is available.

* * *

void **insert\_line\_at**(line: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) [🔗](#class-textedit-method-insert-line-at)

Inserts a new line with `text` at `line`.

* * *

void **insert\_text**(text: [String](class_string.md#class-string), line: [int](class_int.md#class-int), column: [int](class_int.md#class-int), before\_selection\_begin: [bool](class_bool.md#class-bool) = true, before\_selection\_end: [bool](class_bool.md#class-bool) = false) [🔗](#class-textedit-method-insert-text)

Inserts the `text` at `line` and `column`.

If `before_selection_begin` is `true`, carets and selections that begin at `line` and `column` will moved to the end of the inserted text, along with all carets after it.

If `before_selection_end` is `true`, selections that end at `line` and `column` will be extended to the end of the inserted text. These parameters can be used to insert text inside of or outside of selections.

* * *

void **insert\_text\_at\_caret**(text: [String](class_string.md#class-string), caret\_index: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-insert-text-at-caret)

Insert the specified text at the caret position.

* * *

[bool](class_bool.md#class-bool) **is\_caret\_after\_selection\_origin**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-is-caret-after-selection-origin)

Returns `true` if the caret of the selection is after the selection origin. This can be used to determine the direction of the selection.

* * *

[bool](class_bool.md#class-bool) **is\_caret\_visible**(caret\_index: [int](class_int.md#class-int) = 0) const [🔗](#class-textedit-method-is-caret-visible)

Returns `true` if the caret is visible, `false` otherwise. A caret will be considered hidden if it is outside the scrollable area when scrolling is enabled.

**Note:** [is\_caret\_visible()](#class-textedit-method-is-caret-visible) does not account for a caret being off-screen if it is still within the scrollable area. It will return `true` even if the caret is off-screen as long as it meets **TextEdit**'s own conditions for being visible. This includes uses of [scroll\_fit\_content\_width](#class-textedit-property-scroll-fit-content-width) and [scroll\_fit\_content\_height](#class-textedit-property-scroll-fit-content-height) that cause the **TextEdit** to expand beyond the viewport's bounds.

* * *

[bool](class_bool.md#class-bool) **is\_dragging\_cursor**() const [🔗](#class-textedit-method-is-dragging-cursor)

Returns `true` if the user is dragging their mouse for scrolling, selecting, or text dragging.

* * *

[bool](class_bool.md#class-bool) **is\_gutter\_clickable**(gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-is-gutter-clickable)

Returns `true` if the gutter at the given index is clickable. See [set\_gutter\_clickable()](#class-textedit-method-set-gutter-clickable).

* * *

[bool](class_bool.md#class-bool) **is\_gutter\_drawn**(gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-is-gutter-drawn)

Returns `true` if the gutter at the given index is currently drawn. See [set\_gutter\_draw()](#class-textedit-method-set-gutter-draw).

* * *

[bool](class_bool.md#class-bool) **is\_gutter\_overwritable**(gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-is-gutter-overwritable)

Returns `true` if the gutter at the given index is overwritable. See [set\_gutter\_overwritable()](#class-textedit-method-set-gutter-overwritable).

* * *

[bool](class_bool.md#class-bool) **is\_in\_mulitcaret\_edit**() const [🔗](#class-textedit-method-is-in-mulitcaret-edit)

Returns `true` if a [begin\_multicaret\_edit()](#class-textedit-method-begin-multicaret-edit) has been called and [end\_multicaret\_edit()](#class-textedit-method-end-multicaret-edit) has not yet been called.

* * *

[bool](class_bool.md#class-bool) **is\_line\_gutter\_clickable**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-is-line-gutter-clickable)

Returns `true` if the gutter at the given index on the given line is clickable. See [set\_line\_gutter\_clickable()](#class-textedit-method-set-line-gutter-clickable).

* * *

[bool](class_bool.md#class-bool) **is\_line\_wrapped**(line: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-is-line-wrapped)

Returns if the given line is wrapped.

* * *

[bool](class_bool.md#class-bool) **is\_menu\_visible**() const [🔗](#class-textedit-method-is-menu-visible)

Returns `true` if the menu is visible. Use this instead of `get_menu().visible` to improve performance (so the creation of the menu is avoided). See [get\_menu()](#class-textedit-method-get-menu).

* * *

[bool](class_bool.md#class-bool) **is\_mouse\_over\_selection**(edges: [bool](class_bool.md#class-bool), caret\_index: [int](class_int.md#class-int) = -1) const [🔗](#class-textedit-method-is-mouse-over-selection)

Returns `true` if the mouse is over a selection. If `edges` is `true`, the edges are considered part of the selection.

* * *

[bool](class_bool.md#class-bool) **is\_overtype\_mode\_enabled**() const [🔗](#class-textedit-method-is-overtype-mode-enabled)

Returns `true` if overtype mode is enabled. See [set\_overtype\_mode\_enabled()](#class-textedit-method-set-overtype-mode-enabled).

* * *

void **menu\_option**(option: [int](class_int.md#class-int)) [🔗](#class-textedit-method-menu-option)

Executes a given action as defined in the [MenuItems](#enum-textedit-menuitems) enum.

* * *

void **merge\_gutters**(from\_line: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int)) [🔗](#class-textedit-method-merge-gutters)

Merge the gutters from `from_line` into `to_line`. Only overwritable gutters will be copied. See [set\_gutter\_overwritable()](#class-textedit-method-set-gutter-overwritable).

* * *

void **merge\_overlapping\_carets**() [🔗](#class-textedit-method-merge-overlapping-carets)

Merges any overlapping carets. Will favor the newest caret, or the caret with a selection.

If [is\_in\_mulitcaret\_edit()](#class-textedit-method-is-in-mulitcaret-edit) is `true`, the merge will be queued to happen at the end of the multicaret edit. See [begin\_multicaret\_edit()](#class-textedit-method-begin-multicaret-edit) and [end\_multicaret\_edit()](#class-textedit-method-end-multicaret-edit).

**Note:** This is not called when a caret changes position but after certain actions, so it is possible to get into a state where carets overlap.

* * *

[bool](class_bool.md#class-bool) **multicaret\_edit\_ignore\_caret**(caret\_index: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-multicaret-edit-ignore-caret)

Returns `true` if the given `caret_index` should be ignored as part of a multicaret edit. See [begin\_multicaret\_edit()](#class-textedit-method-begin-multicaret-edit) and [end\_multicaret\_edit()](#class-textedit-method-end-multicaret-edit). Carets that should be ignored are ones that were part of removed text and will likely be merged at the end of the edit, or carets that were added during the edit.

It is recommended to `continue` within a loop iterating on multiple carets if a caret should be ignored.

* * *

void **paste**(caret\_index: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-paste)

Paste at the current location. Can be overridden with [\_paste()](#class-textedit-private-method-paste).

* * *

void **paste\_primary\_clipboard**(caret\_index: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-paste-primary-clipboard)

Pastes the primary clipboard.

* * *

void **redo**() [🔗](#class-textedit-method-redo)

Perform redo operation.

* * *

void **remove\_caret**(caret: [int](class_int.md#class-int)) [🔗](#class-textedit-method-remove-caret)

Removes the given caret index.

**Note:** This can result in adjustment of all other caret indices.

* * *

void **remove\_gutter**(gutter: [int](class_int.md#class-int)) [🔗](#class-textedit-method-remove-gutter)

Removes the gutter at the given index.

* * *

void **remove\_line\_at**(line: [int](class_int.md#class-int), move\_carets\_down: [bool](class_bool.md#class-bool) = true) [🔗](#class-textedit-method-remove-line-at)

Removes the line of text at `line`. Carets on this line will attempt to match their previous visual x position.

If `move_carets_down` is `true` carets will move to the next line down, otherwise carets will move up.

* * *

void **remove\_secondary\_carets**() [🔗](#class-textedit-method-remove-secondary-carets)

Removes all additional carets.

* * *

void **remove\_text**(from\_line: [int](class_int.md#class-int), from\_column: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int), to\_column: [int](class_int.md#class-int)) [🔗](#class-textedit-method-remove-text)

Removes text between the given positions.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **search**(text: [String](class_string.md#class-string), flags: [int](class_int.md#class-int), from\_line: [int](class_int.md#class-int), from\_column: [int](class_int.md#class-int)) const [🔗](#class-textedit-method-search)

Perform a search inside the text. Search flags can be specified in the [SearchFlags](#enum-textedit-searchflags) enum.

In the returned vector, `x` is the column, `y` is the line. If no results are found, both are equal to `-1`.

GDScriptC#

```
var result = search("print", SEARCH_WHOLE_WORDS, 0, 0)
if result.x != -1:
    # Result found.
    var line_number = result.y
    var column_number = result.x

```

```
Vector2I result = Search("print", (uint)TextEdit.SearchFlags.WholeWords, 0, 0);
if (result.X != -1)
{
    // Result found.
    int lineNumber = result.Y;
    int columnNumber = result.X;
}

```

* * *

void **select**(origin\_line: [int](class_int.md#class-int), origin\_column: [int](class_int.md#class-int), caret\_line: [int](class_int.md#class-int), caret\_column: [int](class_int.md#class-int), caret\_index: [int](class_int.md#class-int) = 0) [🔗](#class-textedit-method-select)

Selects text from `origin_line` and `origin_column` to `caret_line` and `caret_column` for the given `caret_index`. This moves the selection origin and the caret. If the positions are the same, the selection will be deselected.

If [selecting\_enabled](#class-textedit-property-selecting-enabled) is `false`, no selection will occur.

**Note:** If supporting multiple carets this will not check for any overlap. See [merge\_overlapping\_carets()](#class-textedit-method-merge-overlapping-carets).

* * *

void **select\_all**() [🔗](#class-textedit-method-select-all)

Select all the text.

If [selecting\_enabled](#class-textedit-property-selecting-enabled) is `false`, no selection will occur.

* * *

void **select\_word\_under\_caret**(caret\_index: [int](class_int.md#class-int) = -1) [🔗](#class-textedit-method-select-word-under-caret)

Selects the word under the caret.

* * *

void **set\_caret\_column**(column: [int](class_int.md#class-int), adjust\_viewport: [bool](class_bool.md#class-bool) = true, caret\_index: [int](class_int.md#class-int) = 0) [🔗](#class-textedit-method-set-caret-column)

Moves the caret to the specified `column` index.

If `adjust_viewport` is `true`, the viewport will center at the caret position after the move occurs.

**Note:** If supporting multiple carets this will not check for any overlap. See [merge\_overlapping\_carets()](#class-textedit-method-merge-overlapping-carets).

* * *

void **set\_caret\_line**(line: [int](class_int.md#class-int), adjust\_viewport: [bool](class_bool.md#class-bool) = true, can\_be\_hidden: [bool](class_bool.md#class-bool) = true, wrap\_index: [int](class_int.md#class-int) = 0, caret\_index: [int](class_int.md#class-int) = 0) [🔗](#class-textedit-method-set-caret-line)

Moves the caret to the specified `line` index. The caret column will be moved to the same visual position it was at the last time [set\_caret\_column()](#class-textedit-method-set-caret-column) was called, or clamped to the end of the line.

If `adjust_viewport` is `true`, the viewport will center at the caret position after the move occurs.

If `can_be_hidden` is `true`, the specified `line` can be hidden.

If `wrap_index` is `-1`, the caret column will be clamped to the `line`'s length. If `wrap_index` is greater than `-1`, the column will be moved to attempt to match the visual x position on the line's `wrap_index` to the position from the last time [set\_caret\_column()](#class-textedit-method-set-caret-column) was called.

**Note:** If supporting multiple carets this will not check for any overlap. See [merge\_overlapping\_carets()](#class-textedit-method-merge-overlapping-carets).

* * *

void **set\_gutter\_clickable**(gutter: [int](class_int.md#class-int), clickable: [bool](class_bool.md#class-bool)) [🔗](#class-textedit-method-set-gutter-clickable)

If `true`, the mouse cursor will change to a pointing hand ( [Control.CURSOR\_POINTING\_HAND](class_control.md#class-control-constant-cursor-pointing-hand)) when hovering over the gutter at the given index. See [is\_gutter\_clickable()](#class-textedit-method-is-gutter-clickable) and [set\_line\_gutter\_clickable()](#class-textedit-method-set-line-gutter-clickable).

* * *

void **set\_gutter\_custom\_draw**(column: [int](class_int.md#class-int), draw\_callback: [Callable](class_callable.md#class-callable)) [🔗](#class-textedit-method-set-gutter-custom-draw)

Set a custom draw callback for the gutter at the given index. `draw_callback` must take the following arguments: A line index [int](class_int.md#class-int), a gutter index [int](class_int.md#class-int), and an area [Rect2](class_rect2.md#class-rect2). This callback only works when the gutter type is [GUTTER\_TYPE\_CUSTOM](#class-textedit-constant-gutter-type-custom) (see [set\_gutter\_type()](#class-textedit-method-set-gutter-type)).

* * *

void **set\_gutter\_draw**(gutter: [int](class_int.md#class-int), draw: [bool](class_bool.md#class-bool)) [🔗](#class-textedit-method-set-gutter-draw)

If `true`, the gutter at the given index is drawn. The gutter type ( [set\_gutter\_type()](#class-textedit-method-set-gutter-type)) determines how it is drawn. See [is\_gutter\_drawn()](#class-textedit-method-is-gutter-drawn).

* * *

void **set\_gutter\_name**(gutter: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-textedit-method-set-gutter-name)

Sets the name of the gutter at the given index.

* * *

void **set\_gutter\_overwritable**(gutter: [int](class_int.md#class-int), overwritable: [bool](class_bool.md#class-bool)) [🔗](#class-textedit-method-set-gutter-overwritable)

If `true`, the line data of the gutter at the given index can be overridden when using [merge\_gutters()](#class-textedit-method-merge-gutters). See [is\_gutter\_overwritable()](#class-textedit-method-is-gutter-overwritable).

* * *

void **set\_gutter\_type**(gutter: [int](class_int.md#class-int), type: [GutterType](#enum-textedit-guttertype)) [🔗](#class-textedit-method-set-gutter-type)

Sets the type of gutter at the given index. Gutters can contain icons, text, or custom visuals.

* * *

void **set\_gutter\_width**(gutter: [int](class_int.md#class-int), width: [int](class_int.md#class-int)) [🔗](#class-textedit-method-set-gutter-width)

Set the width of the gutter at the given index.

* * *

void **set\_line**(line: [int](class_int.md#class-int), new\_text: [String](class_string.md#class-string)) [🔗](#class-textedit-method-set-line)

Sets the text for a specific `line`.

Carets on the line will attempt to keep their visual x position.

* * *

void **set\_line\_as\_center\_visible**(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int) = 0) [🔗](#class-textedit-method-set-line-as-center-visible)

Positions the `wrap_index` of `line` at the center of the viewport.

* * *

void **set\_line\_as\_first\_visible**(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int) = 0) [🔗](#class-textedit-method-set-line-as-first-visible)

Positions the `wrap_index` of `line` at the top of the viewport.

* * *

void **set\_line\_as\_last\_visible**(line: [int](class_int.md#class-int), wrap\_index: [int](class_int.md#class-int) = 0) [🔗](#class-textedit-method-set-line-as-last-visible)

Positions the `wrap_index` of `line` at the bottom of the viewport.

* * *

void **set\_line\_background\_color**(line: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-textedit-method-set-line-background-color)

Sets the custom background color of the given line. If transparent, this color is applied on top of the default background color (See [background\_color](#class-textedit-theme-color-background-color)). If set to `Color(0, 0, 0, 0)`, no additional color is applied.

* * *

void **set\_line\_gutter\_clickable**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int), clickable: [bool](class_bool.md#class-bool)) [🔗](#class-textedit-method-set-line-gutter-clickable)

If `clickable` is `true`, makes the `gutter` on the given `line` clickable. This is like [set\_gutter\_clickable()](#class-textedit-method-set-gutter-clickable), but for a single line. If [is\_gutter\_clickable()](#class-textedit-method-is-gutter-clickable) is `true`, this will not have any effect. See [is\_line\_gutter\_clickable()](#class-textedit-method-is-line-gutter-clickable) and [gutter\_clicked](#class-textedit-signal-gutter-clicked).

* * *

void **set\_line\_gutter\_icon**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-textedit-method-set-line-gutter-icon)

Sets the icon for `gutter` on `line` to `icon`. This only works when the gutter type is [GUTTER\_TYPE\_ICON](#class-textedit-constant-gutter-type-icon) (see [set\_gutter\_type()](#class-textedit-method-set-gutter-type)).

* * *

void **set\_line\_gutter\_item\_color**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-textedit-method-set-line-gutter-item-color)

Sets the color for `gutter` on `line` to `color`.

* * *

void **set\_line\_gutter\_metadata**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) [🔗](#class-textedit-method-set-line-gutter-metadata)

Sets the metadata for `gutter` on `line` to `metadata`.

* * *

void **set\_line\_gutter\_text**(line: [int](class_int.md#class-int), gutter: [int](class_int.md#class-int), text: [String](class_string.md#class-string)) [🔗](#class-textedit-method-set-line-gutter-text)

Sets the text for `gutter` on `line` to `text`. This only works when the gutter type is [GUTTER\_TYPE\_STRING](#class-textedit-constant-gutter-type-string) (see [set\_gutter\_type()](#class-textedit-method-set-gutter-type)).

* * *

void **set\_overtype\_mode\_enabled**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-textedit-method-set-overtype-mode-enabled)

If `true`, enables overtype mode. In this mode, typing overrides existing text instead of inserting text. The [ProjectSettings.input/ui\_text\_toggle\_insert\_mode](class_projectsettings.md#class-projectsettings-property-input-ui-text-toggle-insert-mode) action toggles overtype mode. See [is\_overtype\_mode\_enabled()](#class-textedit-method-is-overtype-mode-enabled).

* * *

void **set\_search\_flags**(flags: [int](class_int.md#class-int)) [🔗](#class-textedit-method-set-search-flags)

Sets the search `flags`. This is used with [set\_search\_text()](#class-textedit-method-set-search-text) to highlight occurrences of the searched text. Search flags can be specified from the [SearchFlags](#enum-textedit-searchflags) enum.

* * *

void **set\_search\_text**(search\_text: [String](class_string.md#class-string)) [🔗](#class-textedit-method-set-search-text)

Sets the search text. See [set\_search\_flags()](#class-textedit-method-set-search-flags).

* * *

void **set\_selection\_mode**(mode: [SelectionMode](#enum-textedit-selectionmode)) [🔗](#class-textedit-method-set-selection-mode)

Sets the current selection mode.

* * *

void **set\_selection\_origin\_column**(column: [int](class_int.md#class-int), caret\_index: [int](class_int.md#class-int) = 0) [🔗](#class-textedit-method-set-selection-origin-column)

Sets the selection origin column to the `column` for the given `caret_index`. If the selection origin is moved to the caret position, the selection will deselect.

* * *

void **set\_selection\_origin\_line**(line: [int](class_int.md#class-int), can\_be\_hidden: [bool](class_bool.md#class-bool) = true, wrap\_index: [int](class_int.md#class-int) = -1, caret\_index: [int](class_int.md#class-int) = 0) [🔗](#class-textedit-method-set-selection-origin-line)

Sets the selection origin line to the `line` for the given `caret_index`. If the selection origin is moved to the caret position, the selection will deselect.

If `can_be_hidden` is `false`, The line will be set to the nearest unhidden line below or above.

If `wrap_index` is `-1`, the selection origin column will be clamped to the `line`'s length. If `wrap_index` is greater than `-1`, the column will be moved to attempt to match the visual x position on the line's `wrap_index` to the position from the last time [set\_selection\_origin\_column()](#class-textedit-method-set-selection-origin-column) or [select()](#class-textedit-method-select) was called.

* * *

void **set\_tab\_size**(size: [int](class_int.md#class-int)) [🔗](#class-textedit-method-set-tab-size)

Sets the tab size for the **TextEdit** to use.

* * *

void **set\_tooltip\_request\_func**(callback: [Callable](class_callable.md#class-callable)) [🔗](#class-textedit-method-set-tooltip-request-func)

Provide custom tooltip text. The callback method must take the following args: `hovered_word: String`.

* * *

void **skip\_selection\_for\_next\_occurrence**() [🔗](#class-textedit-method-skip-selection-for-next-occurrence)

Moves a selection and a caret for the next occurrence of the current selection. If there is no active selection, moves to the next occurrence of the word under caret.

* * *

void **start\_action**(action: [EditAction](#enum-textedit-editaction)) [🔗](#class-textedit-method-start-action)

Starts an action, will end the current action if `action` is different.

An action will also end after a call to [end\_action()](#class-textedit-method-end-action), after [ProjectSettings.gui/timers/text\_edit\_idle\_detect\_sec](class_projectsettings.md#class-projectsettings-property-gui-timers-text-edit-idle-detect-sec) is triggered or a new undoable step outside the [start\_action()](#class-textedit-method-start-action) and [end\_action()](#class-textedit-method-end-action) calls.

* * *

void **swap\_lines**(from\_line: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int)) [🔗](#class-textedit-method-swap-lines)

Swaps the two lines. Carets will be swapped with the lines.

* * *

void **tag\_saved\_version**() [🔗](#class-textedit-method-tag-saved-version)

Tag the current version as saved.

* * *

void **undo**() [🔗](#class-textedit-method-undo)

Perform undo operation.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **background\_color** = `Color(0, 0, 0, 0)` [🔗](#class-textedit-theme-color-background-color)

Sets the background [Color](class_color.md#class-color) of this **TextEdit**.

* * *

[Color](class_color.md#class-color) **caret\_background\_color** = `Color(0, 0, 0, 1)` [🔗](#class-textedit-theme-color-caret-background-color)

[Color](class_color.md#class-color) of the text behind the caret when using a block caret.

* * *

[Color](class_color.md#class-color) **caret\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-textedit-theme-color-caret-color)

[Color](class_color.md#class-color) of the caret. This can be set to a fully transparent color to hide the caret entirely.

* * *

[Color](class_color.md#class-color) **current\_line\_color** = `Color(0.25, 0.25, 0.26, 0.8)` [🔗](#class-textedit-theme-color-current-line-color)

Background [Color](class_color.md#class-color) of the line containing the caret.

* * *

[Color](class_color.md#class-color) **font\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-textedit-theme-color-font-color)

Sets the font [Color](class_color.md#class-color).

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-textedit-theme-color-font-outline-color)

The tint of text outline of the **TextEdit**.

* * *

[Color](class_color.md#class-color) **font\_placeholder\_color** = `Color(0.875, 0.875, 0.875, 0.6)` [🔗](#class-textedit-theme-color-font-placeholder-color)

Font color for [placeholder\_text](#class-textedit-property-placeholder-text).

* * *

[Color](class_color.md#class-color) **font\_readonly\_color** = `Color(0.875, 0.875, 0.875, 0.5)` [🔗](#class-textedit-theme-color-font-readonly-color)

Sets the font [Color](class_color.md#class-color) when [editable](#class-textedit-property-editable) is disabled.

* * *

[Color](class_color.md#class-color) **font\_selected\_color** = `Color(0, 0, 0, 0)` [🔗](#class-textedit-theme-color-font-selected-color)

Sets the [Color](class_color.md#class-color) of the selected text. If equal to `Color(0, 0, 0, 0)`, it will be ignored.

* * *

[Color](class_color.md#class-color) **search\_result\_border\_color** = `Color(0.3, 0.3, 0.3, 0.4)` [🔗](#class-textedit-theme-color-search-result-border-color)

[Color](class_color.md#class-color) of the border around text that matches the search query.

* * *

[Color](class_color.md#class-color) **search\_result\_color** = `Color(0.3, 0.3, 0.3, 1)` [🔗](#class-textedit-theme-color-search-result-color)

[Color](class_color.md#class-color) behind the text that matches the search query.

* * *

[Color](class_color.md#class-color) **selection\_color** = `Color(0.5, 0.5, 0.5, 1)` [🔗](#class-textedit-theme-color-selection-color)

Sets the highlight [Color](class_color.md#class-color) of text selections.

* * *

[Color](class_color.md#class-color) **word\_highlighted\_color** = `Color(0.5, 0.5, 0.5, 0.25)` [🔗](#class-textedit-theme-color-word-highlighted-color)

Sets the highlight [Color](class_color.md#class-color) of multiple occurrences. [highlight\_all\_occurrences](#class-textedit-property-highlight-all-occurrences) has to be enabled.

* * *

[int](class_int.md#class-int) **caret\_width** = `1` [🔗](#class-textedit-theme-constant-caret-width)

The caret's width in pixels. Greater values can be used to improve accessibility by ensuring the caret is easily visible, or to ensure consistency with a large font size. If set to `0` or lower, the caret width is automatically set to 1 pixel and multiplied by the display scaling factor.

* * *

[int](class_int.md#class-int) **line\_spacing** = `4` [🔗](#class-textedit-theme-constant-line-spacing)

Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-textedit-theme-constant-outline-size)

The size of the text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-textedit-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-textedit-theme-font-font)

Sets the default [Font](class_font.md#class-font).

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-textedit-theme-font-size-font-size)

Sets default font size.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **space** [🔗](#class-textedit-theme-icon-space)

Sets a custom [Texture2D](class_texture2d.md#class-texture2d) for space text characters.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **tab** [🔗](#class-textedit-theme-icon-tab)

Sets a custom [Texture2D](class_texture2d.md#class-texture2d) for tab text characters.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **focus** [🔗](#class-textedit-theme-style-focus)

Sets the [StyleBox](class_stylebox.md#class-stylebox) when in focus. The [focus](#class-textedit-theme-style-focus) [StyleBox](class_stylebox.md#class-stylebox) is displayed _over_ the base [StyleBox](class_stylebox.md#class-stylebox), so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the base [StyleBox](class_stylebox.md#class-stylebox) remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **normal** [🔗](#class-textedit-theme-style-normal)

Sets the [StyleBox](class_stylebox.md#class-stylebox) of this **TextEdit**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **read\_only** [🔗](#class-textedit-theme-style-read-only)

Sets the [StyleBox](class_stylebox.md#class-stylebox) of this **TextEdit** when [editable](#class-textedit-property-editable) is disabled.

[Previous](class_tabcontainer.md "TabContainer") [Next](class_texturebutton.md "TextureButton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tabcontainer.md "TabContainer") [Next](class_texturebutton.md "TextureButton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).