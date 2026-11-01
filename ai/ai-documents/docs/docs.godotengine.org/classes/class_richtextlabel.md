---
title: RichTextLabel — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_richtextlabel.html
crawled_at: "2026-08-13T10:24:34+12:00"
content_hash: 26b85e27b55bfd33afe49697ea2f18b356746b14028f39ad1f5767cae202465a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RichTextLabel

* * *

# RichTextLabel

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A control for displaying text that can contain different font styles, images, and basic formatting.

## Description

A control for displaying text that can contain custom fonts, images, and basic formatting. **RichTextLabel** manages these as an internal tag stack. It also adapts itself to given width/heights.

**Note:** [newline()](#class-richtextlabel-method-newline), [push\_paragraph()](#class-richtextlabel-method-push-paragraph), `"\n"`, `"\r\n"`, `p` tag, and alignment tags start a new paragraph. Each paragraph is processed independently, in its own BiDi context. If you want to force line wrapping within paragraph, any other line breaking character can be used, for example, Form Feed (U+000C), Next Line (U+0085), Line Separator (U+2028).

**Note:** Assignments to [text](#class-richtextlabel-property-text) clear the tag stack and reconstruct it from the property's contents. Any edits made to [text](#class-richtextlabel-property-text) will erase previous edits made from other manual sources such as [append\_text()](#class-richtextlabel-method-append-text) and the `push_*` / [pop()](#class-richtextlabel-method-pop) methods.

**Note:** RichTextLabel doesn't support entangled BBCode tags. For example, instead of using `[b]bold[i]bold italic[/b]italic[/i]`, use `[b]bold[i]bold italic[/i][/b][i]italic[/i]`.

**Note:** `push_*/pop_*` functions won't affect BBCode.

**Note:** While [bbcode\_enabled](#class-richtextlabel-property-bbcode-enabled) is enabled, alignment tags such as `[center]` will take priority over the [horizontal\_alignment](#class-richtextlabel-property-horizontal-alignment) setting which determines the default text alignment.

## Tutorials

- [BBCode in RichTextLabel](../tutorials/ui/bbcode_in_richtextlabel.md)

- [Rich Text Label with BBCode Demo](https://godotengine.org/asset-library/asset/2774)

- [Operating System Testing Demo](https://godotengine.org/asset-library/asset/2789)


## Properties

|     |     |     |
| --- | --- | --- |
| [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) | [autowrap\_mode](#class-richtextlabel-property-autowrap-mode) | `3` |
| BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] | [autowrap\_trim\_flags](#class-richtextlabel-property-autowrap-trim-flags) | `192` |
| [bool](class_bool.md#class-bool) | [bbcode\_enabled](#class-richtextlabel-property-bbcode-enabled) | `false` |
| [bool](class_bool.md#class-bool) | clip\_contents | `true` (overrides [Control](class_control.md#class-control-property-clip-contents)) |
| [bool](class_bool.md#class-bool) | [context\_menu\_enabled](#class-richtextlabel-property-context-menu-enabled) | `false` |
| [Array](class_array.md#class-array) | [custom\_effects](#class-richtextlabel-property-custom-effects) | `[]` |
| [bool](class_bool.md#class-bool) | [deselect\_on\_focus\_loss\_enabled](#class-richtextlabel-property-deselect-on-focus-loss-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [drag\_and\_drop\_selection\_enabled](#class-richtextlabel-property-drag-and-drop-selection-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [fit\_content](#class-richtextlabel-property-fit-content) | `false` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `3` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [bool](class_bool.md#class-bool) | [hint\_underlined](#class-richtextlabel-property-hint-underlined) | `true` |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [horizontal\_alignment](#class-richtextlabel-property-horizontal-alignment) | `0` |
| BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] | [justification\_flags](#class-richtextlabel-property-justification-flags) | `163` |
| [String](class_string.md#class-string) | [language](#class-richtextlabel-property-language) | `""` |
| [bool](class_bool.md#class-bool) | [meta\_underlined](#class-richtextlabel-property-meta-underlined) | `true` |
| [int](class_int.md#class-int) | [progress\_bar\_delay](#class-richtextlabel-property-progress-bar-delay) | `1000` |
| [bool](class_bool.md#class-bool) | [scroll\_active](#class-richtextlabel-property-scroll-active) | `true` |
| [bool](class_bool.md#class-bool) | [scroll\_following](#class-richtextlabel-property-scroll-following) | `false` |
| [bool](class_bool.md#class-bool) | [scroll\_following\_visible\_characters](#class-richtextlabel-property-scroll-following-visible-characters) | `false` |
| [bool](class_bool.md#class-bool) | [selection\_enabled](#class-richtextlabel-property-selection-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [shortcut\_keys\_enabled](#class-richtextlabel-property-shortcut-keys-enabled) | `true` |
| [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) | [structured\_text\_bidi\_override](#class-richtextlabel-property-structured-text-bidi-override) | `0` |
| [Array](class_array.md#class-array) | [structured\_text\_bidi\_override\_options](#class-richtextlabel-property-structured-text-bidi-override-options) | `[]` |
| [int](class_int.md#class-int) | [tab\_size](#class-richtextlabel-property-tab-size) | `4` |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [tab\_stops](#class-richtextlabel-property-tab-stops) | `PackedFloat32Array()` |
| [String](class_string.md#class-string) | [text](#class-richtextlabel-property-text) | `""` |
| [TextDirection](class_control.md#enum-control-textdirection) | [text\_direction](#class-richtextlabel-property-text-direction) | `0` |
| [bool](class_bool.md#class-bool) | [threaded](#class-richtextlabel-property-threaded) | `false` |
| [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) | [vertical\_alignment](#class-richtextlabel-property-vertical-alignment) | `0` |
| [int](class_int.md#class-int) | [visible\_characters](#class-richtextlabel-property-visible-characters) | `-1` |
| [VisibleCharactersBehavior](class_textserver.md#enum-textserver-visiblecharactersbehavior) | [visible\_characters\_behavior](#class-richtextlabel-property-visible-characters-behavior) | `0` |
| [float](class_float.md#class-float) | [visible\_ratio](#class-richtextlabel-property-visible-ratio) | `1.0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_hr](#class-richtextlabel-method-add-hr)(width: [int](class_int.md#class-int) = 90, height: [int](class_int.md#class-int) = 2, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 1, width\_in\_percent: [bool](class_bool.md#class-bool) = true, height\_in\_percent: [bool](class_bool.md#class-bool) = false) |
| void | [add\_image](#class-richtextlabel-method-add-image)(image: [Texture2D](class_texture2d.md#class-texture2d), width: [int](class_int.md#class-int) = 0, height: [int](class_int.md#class-int) = 0, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, region: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), key: [Variant](class_variant.md#class-variant) = null, pad: [bool](class_bool.md#class-bool) = false, tooltip: [String](class_string.md#class-string) = "", width\_in\_percent: [bool](class_bool.md#class-bool) = false, height\_in\_percent: [bool](class_bool.md#class-bool) = false, alt\_text: [String](class_string.md#class-string) = "") |
| void | [add\_text](#class-richtextlabel-method-add-text)(text: [String](class_string.md#class-string)) |
| void | [append\_text](#class-richtextlabel-method-append-text)(bbcode: [String](class_string.md#class-string)) |
| void | [clear](#class-richtextlabel-method-clear)() |
| void | [deselect](#class-richtextlabel-method-deselect)() |
| [int](class_int.md#class-int) | [get\_character\_line](#class-richtextlabel-method-get-character-line)(character: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_character\_paragraph](#class-richtextlabel-method-get-character-paragraph)(character: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_content\_height](#class-richtextlabel-method-get-content-height)() const |
| [int](class_int.md#class-int) | [get\_content\_width](#class-richtextlabel-method-get-content-width)() const |
| [int](class_int.md#class-int) | [get\_line\_count](#class-richtextlabel-method-get-line-count)() const |
| [int](class_int.md#class-int) | [get\_line\_height](#class-richtextlabel-method-get-line-height)(line: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_line\_offset](#class-richtextlabel-method-get-line-offset)(line: [int](class_int.md#class-int)) |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_line\_range](#class-richtextlabel-method-get-line-range)(line: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_line\_width](#class-richtextlabel-method-get-line-width)(line: [int](class_int.md#class-int)) const |
| [PopupMenu](class_popupmenu.md#class-popupmenu) | [get\_menu](#class-richtextlabel-method-get-menu)() const |
| [int](class_int.md#class-int) | [get\_paragraph\_count](#class-richtextlabel-method-get-paragraph-count)() const |
| [float](class_float.md#class-float) | [get\_paragraph\_offset](#class-richtextlabel-method-get-paragraph-offset)(paragraph: [int](class_int.md#class-int)) |
| [String](class_string.md#class-string) | [get\_parsed\_text](#class-richtextlabel-method-get-parsed-text)() const |
| [String](class_string.md#class-string) | [get\_selected\_text](#class-richtextlabel-method-get-selected-text)() const |
| [int](class_int.md#class-int) | [get\_selection\_from](#class-richtextlabel-method-get-selection-from)() const |
| [float](class_float.md#class-float) | [get\_selection\_line\_offset](#class-richtextlabel-method-get-selection-line-offset)() const |
| [int](class_int.md#class-int) | [get\_selection\_to](#class-richtextlabel-method-get-selection-to)() const |
| [int](class_int.md#class-int) | [get\_total\_character\_count](#class-richtextlabel-method-get-total-character-count)() const |
| [VScrollBar](class_vscrollbar.md#class-vscrollbar) | [get\_v\_scroll\_bar](#class-richtextlabel-method-get-v-scroll-bar)() |
| [Rect2i](class_rect2i.md#class-rect2i) | [get\_visible\_content\_rect](#class-richtextlabel-method-get-visible-content-rect)() const |
| [int](class_int.md#class-int) | [get\_visible\_line\_count](#class-richtextlabel-method-get-visible-line-count)() const |
| [int](class_int.md#class-int) | [get\_visible\_paragraph\_count](#class-richtextlabel-method-get-visible-paragraph-count)() const |
| void | [install\_effect](#class-richtextlabel-method-install-effect)(effect: [Variant](class_variant.md#class-variant)) |
| [bool](class_bool.md#class-bool) | [invalidate\_paragraph](#class-richtextlabel-method-invalidate-paragraph)(paragraph: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [is\_finished](#class-richtextlabel-method-is-finished)() const |
| [bool](class_bool.md#class-bool) | [is\_menu\_visible](#class-richtextlabel-method-is-menu-visible)() const |
| [bool](class_bool.md#class-bool) | [is\_ready](#class-richtextlabel-method-is-ready)() const |
| void | [menu\_option](#class-richtextlabel-method-menu-option)(option: [int](class_int.md#class-int)) |
| void | [newline](#class-richtextlabel-method-newline)() |
| void | [parse\_bbcode](#class-richtextlabel-method-parse-bbcode)(bbcode: [String](class_string.md#class-string)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [parse\_expressions\_for\_values](#class-richtextlabel-method-parse-expressions-for-values)(expressions: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) |
| void | [pop](#class-richtextlabel-method-pop)() |
| void | [pop\_all](#class-richtextlabel-method-pop-all)() |
| void | [pop\_context](#class-richtextlabel-method-pop-context)() |
| void | [push\_bgcolor](#class-richtextlabel-method-push-bgcolor)(bgcolor: [Color](class_color.md#class-color)) |
| void | [push\_bold](#class-richtextlabel-method-push-bold)() |
| void | [push\_bold\_italics](#class-richtextlabel-method-push-bold-italics)() |
| void | [push\_cell](#class-richtextlabel-method-push-cell)() |
| void | [push\_color](#class-richtextlabel-method-push-color)(color: [Color](class_color.md#class-color)) |
| void | [push\_context](#class-richtextlabel-method-push-context)() |
| void | [push\_customfx](#class-richtextlabel-method-push-customfx)(effect: [RichTextEffect](class_richtexteffect.md#class-richtexteffect), env: [Dictionary](class_dictionary.md#class-dictionary)) |
| void | [push\_dropcap](#class-richtextlabel-method-push-dropcap)(string: [String](class_string.md#class-string), font: [Font](class_font.md#class-font), size: [int](class_int.md#class-int), dropcap\_margins: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), outline\_size: [int](class_int.md#class-int) = 0, outline\_color: [Color](class_color.md#class-color) = Color(0, 0, 0, 0)) |
| void | [push\_fgcolor](#class-richtextlabel-method-push-fgcolor)(fgcolor: [Color](class_color.md#class-color)) |
| void | [push\_font](#class-richtextlabel-method-push-font)(font: [Font](class_font.md#class-font), font\_size: [int](class_int.md#class-int) = 0) |
| void | [push\_font\_size](#class-richtextlabel-method-push-font-size)(font\_size: [int](class_int.md#class-int)) |
| void | [push\_hint](#class-richtextlabel-method-push-hint)(description: [String](class_string.md#class-string)) |
| void | [push\_indent](#class-richtextlabel-method-push-indent)(level: [int](class_int.md#class-int)) |
| void | [push\_italics](#class-richtextlabel-method-push-italics)() |
| void | [push\_language](#class-richtextlabel-method-push-language)(language: [String](class_string.md#class-string)) |
| void | [push\_list](#class-richtextlabel-method-push-list)(level: [int](class_int.md#class-int), type: [ListType](#enum-richtextlabel-listtype), capitalize: [bool](class_bool.md#class-bool), bullet: [String](class_string.md#class-string) = "•") |
| void | [push\_meta](#class-richtextlabel-method-push-meta)(data: [Variant](class_variant.md#class-variant), underline\_mode: [MetaUnderline](#enum-richtextlabel-metaunderline) = 1, tooltip: [String](class_string.md#class-string) = "") |
| void | [push\_mono](#class-richtextlabel-method-push-mono)() |
| void | [push\_normal](#class-richtextlabel-method-push-normal)() |
| void | [push\_outline\_color](#class-richtextlabel-method-push-outline-color)(color: [Color](class_color.md#class-color)) |
| void | [push\_outline\_size](#class-richtextlabel-method-push-outline-size)(outline\_size: [int](class_int.md#class-int)) |
| void | [push\_paragraph](#class-richtextlabel-method-push-paragraph)(alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment), base\_direction: [TextDirection](class_control.md#enum-control-textdirection) = 0, language: [String](class_string.md#class-string) = "", st\_parser: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) = 0, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 163, tab\_stops: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) = PackedFloat32Array()) |
| void | [push\_strikethrough](#class-richtextlabel-method-push-strikethrough)(color: [Color](class_color.md#class-color) = Color(0, 0, 0, 0)) |
| void | [push\_table](#class-richtextlabel-method-push-table)(columns: [int](class_int.md#class-int), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 0, align\_to\_row: [int](class_int.md#class-int) = -1, name: [String](class_string.md#class-string) = "") |
| void | [push\_underline](#class-richtextlabel-method-push-underline)(color: [Color](class_color.md#class-color) = Color(0, 0, 0, 0)) |
| void | [reload\_effects](#class-richtextlabel-method-reload-effects)() |
| [bool](class_bool.md#class-bool) | [remove\_paragraph](#class-richtextlabel-method-remove-paragraph)(paragraph: [int](class_int.md#class-int), no\_invalidate: [bool](class_bool.md#class-bool) = false) |
| void | [scroll\_to\_line](#class-richtextlabel-method-scroll-to-line)(line: [int](class_int.md#class-int)) |
| void | [scroll\_to\_paragraph](#class-richtextlabel-method-scroll-to-paragraph)(paragraph: [int](class_int.md#class-int)) |
| void | [scroll\_to\_selection](#class-richtextlabel-method-scroll-to-selection)() |
| void | [select\_all](#class-richtextlabel-method-select-all)() |
| void | [set\_cell\_border\_color](#class-richtextlabel-method-set-cell-border-color)(color: [Color](class_color.md#class-color)) |
| void | [set\_cell\_padding](#class-richtextlabel-method-set-cell-padding)(padding: [Rect2](class_rect2.md#class-rect2)) |
| void | [set\_cell\_row\_background\_color](#class-richtextlabel-method-set-cell-row-background-color)(odd\_row\_bg: [Color](class_color.md#class-color), even\_row\_bg: [Color](class_color.md#class-color)) |
| void | [set\_cell\_size\_override](#class-richtextlabel-method-set-cell-size-override)(min\_size: [Vector2](class_vector2.md#class-vector2), max\_size: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_table\_column\_expand](#class-richtextlabel-method-set-table-column-expand)(column: [int](class_int.md#class-int), expand: [bool](class_bool.md#class-bool), ratio: [int](class_int.md#class-int) = 1, shrink: [bool](class_bool.md#class-bool) = true) |
| void | [set\_table\_column\_name](#class-richtextlabel-method-set-table-column-name)(column: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [update\_image](#class-richtextlabel-method-update-image)(key: [Variant](class_variant.md#class-variant), mask: BitField\[ [ImageUpdateMask](#enum-richtextlabel-imageupdatemask)\], image: [Texture2D](class_texture2d.md#class-texture2d), width: [int](class_int.md#class-int) = 0, height: [int](class_int.md#class-int) = 0, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, region: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), pad: [bool](class_bool.md#class-bool) = false, tooltip: [String](class_string.md#class-string) = "", width\_in\_percent: [bool](class_bool.md#class-bool) = false, height\_in\_percent: [bool](class_bool.md#class-bool) = false) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [default\_color](#class-richtextlabel-theme-color-default-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-richtextlabel-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_selected\_color](#class-richtextlabel-theme-color-font-selected-color) | `Color(0, 0, 0, 0)` |
| [Color](class_color.md#class-color) | [font\_shadow\_color](#class-richtextlabel-theme-color-font-shadow-color) | `Color(0, 0, 0, 0)` |
| [Color](class_color.md#class-color) | [selection\_color](#class-richtextlabel-theme-color-selection-color) | `Color(0.1, 0.1, 1, 0.8)` |
| [Color](class_color.md#class-color) | [table\_border](#class-richtextlabel-theme-color-table-border) | `Color(0, 0, 0, 0)` |
| [Color](class_color.md#class-color) | [table\_even\_row\_bg](#class-richtextlabel-theme-color-table-even-row-bg) | `Color(0, 0, 0, 0)` |
| [Color](class_color.md#class-color) | [table\_odd\_row\_bg](#class-richtextlabel-theme-color-table-odd-row-bg) | `Color(0, 0, 0, 0)` |
| [int](class_int.md#class-int) | [line\_separation](#class-richtextlabel-theme-constant-line-separation) | `0` |
| [int](class_int.md#class-int) | [outline\_size](#class-richtextlabel-theme-constant-outline-size) | `0` |
| [int](class_int.md#class-int) | [paragraph\_separation](#class-richtextlabel-theme-constant-paragraph-separation) | `0` |
| [int](class_int.md#class-int) | [shadow\_offset\_x](#class-richtextlabel-theme-constant-shadow-offset-x) | `1` |
| [int](class_int.md#class-int) | [shadow\_offset\_y](#class-richtextlabel-theme-constant-shadow-offset-y) | `1` |
| [int](class_int.md#class-int) | [shadow\_outline\_size](#class-richtextlabel-theme-constant-shadow-outline-size) | `1` |
| [int](class_int.md#class-int) | [strikethrough\_alpha](#class-richtextlabel-theme-constant-strikethrough-alpha) | `50` |
| [int](class_int.md#class-int) | [table\_h\_separation](#class-richtextlabel-theme-constant-table-h-separation) | `3` |
| [int](class_int.md#class-int) | [table\_v\_separation](#class-richtextlabel-theme-constant-table-v-separation) | `3` |
| [int](class_int.md#class-int) | [text\_highlight\_h\_padding](#class-richtextlabel-theme-constant-text-highlight-h-padding) | `3` |
| [int](class_int.md#class-int) | [text\_highlight\_v\_padding](#class-richtextlabel-theme-constant-text-highlight-v-padding) | `3` |
| [int](class_int.md#class-int) | [underline\_alpha](#class-richtextlabel-theme-constant-underline-alpha) | `50` |
| [Font](class_font.md#class-font) | [bold\_font](#class-richtextlabel-theme-font-bold-font) |  |
| [Font](class_font.md#class-font) | [bold\_italics\_font](#class-richtextlabel-theme-font-bold-italics-font) |  |
| [Font](class_font.md#class-font) | [italics\_font](#class-richtextlabel-theme-font-italics-font) |  |
| [Font](class_font.md#class-font) | [mono\_font](#class-richtextlabel-theme-font-mono-font) |  |
| [Font](class_font.md#class-font) | [normal\_font](#class-richtextlabel-theme-font-normal-font) |  |
| [int](class_int.md#class-int) | [bold\_font\_size](#class-richtextlabel-theme-font-size-bold-font-size) |  |
| [int](class_int.md#class-int) | [bold\_italics\_font\_size](#class-richtextlabel-theme-font-size-bold-italics-font-size) |  |
| [int](class_int.md#class-int) | [italics\_font\_size](#class-richtextlabel-theme-font-size-italics-font-size) |  |
| [int](class_int.md#class-int) | [mono\_font\_size](#class-richtextlabel-theme-font-size-mono-font-size) |  |
| [int](class_int.md#class-int) | [normal\_font\_size](#class-richtextlabel-theme-font-size-normal-font-size) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [horizontal\_rule](#class-richtextlabel-theme-icon-horizontal-rule) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [focus](#class-richtextlabel-theme-style-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [normal](#class-richtextlabel-theme-style-normal) |  |

* * *

## Signals

**finished**() [🔗](#class-richtextlabel-signal-finished)

Triggered when the document is fully loaded.

**Note:** This can happen before the text is processed for drawing. Scrolling values may not be valid until the document is drawn for the first time after this signal.

* * *

**meta\_clicked**(meta: [Variant](class_variant.md#class-variant)) [🔗](#class-richtextlabel-signal-meta-clicked)

Triggered when the user clicks on content between meta (URL) tags. If the meta is defined in BBCode, e.g. `[url={"key": "value"}]Text[/url]`, then the parameter for this signal will always be a [String](class_string.md#class-string) type. If a particular type or an object is desired, the [push\_meta()](#class-richtextlabel-method-push-meta) method must be used to manually insert the data into the tag stack. Alternatively, you can convert the [String](class_string.md#class-string) input to the desired type based on its contents (such as calling [JSON.parse()](class_json.md#class-json-method-parse) on it).

For example, the following method can be connected to [meta\_clicked](#class-richtextlabel-signal-meta-clicked) to open clicked URLs using the user's default web browser:

GDScript

```
# This assumes RichTextLabel's `meta_clicked` signal was connected to
# the function below using the signal connection dialog.
func _richtextlabel_on_meta_clicked(meta):
    # `meta` is of Variant type, so convert it to a String to avoid script errors at run-time.
    OS.shell_open(str(meta))

```

* * *

**meta\_hover\_ended**(meta: [Variant](class_variant.md#class-variant)) [🔗](#class-richtextlabel-signal-meta-hover-ended)

Triggers when the mouse exits a meta tag.

* * *

**meta\_hover\_started**(meta: [Variant](class_variant.md#class-variant)) [🔗](#class-richtextlabel-signal-meta-hover-started)

Triggers when the mouse enters a meta tag.

* * *

## Enumerations

enum **ListType**: [🔗](#enum-richtextlabel-listtype)

[ListType](#enum-richtextlabel-listtype) **LIST\_NUMBERS** = `0`

Each list item has a number marker.

[ListType](#enum-richtextlabel-listtype) **LIST\_LETTERS** = `1`

Each list item has a letter marker.

[ListType](#enum-richtextlabel-listtype) **LIST\_ROMAN** = `2`

Each list item has a roman number marker.

[ListType](#enum-richtextlabel-listtype) **LIST\_DOTS** = `3`

Each list item has a filled circle marker.

* * *

enum **MenuItems**: [🔗](#enum-richtextlabel-menuitems)

[MenuItems](#enum-richtextlabel-menuitems) **MENU\_COPY** = `0`

Copies the selected text.

[MenuItems](#enum-richtextlabel-menuitems) **MENU\_SELECT\_ALL** = `1`

Selects the whole **RichTextLabel** text.

[MenuItems](#enum-richtextlabel-menuitems) **MENU\_MAX** = `2`

Represents the size of the [MenuItems](#enum-richtextlabel-menuitems) enum.

* * *

enum **MetaUnderline**: [🔗](#enum-richtextlabel-metaunderline)

[MetaUnderline](#enum-richtextlabel-metaunderline) **META\_UNDERLINE\_NEVER** = `0`

Meta tag does not display an underline, even if [meta\_underlined](#class-richtextlabel-property-meta-underlined) is `true`.

[MetaUnderline](#enum-richtextlabel-metaunderline) **META\_UNDERLINE\_ALWAYS** = `1`

If [meta\_underlined](#class-richtextlabel-property-meta-underlined) is `true`, meta tag always display an underline.

[MetaUnderline](#enum-richtextlabel-metaunderline) **META\_UNDERLINE\_ON\_HOVER** = `2`

If [meta\_underlined](#class-richtextlabel-property-meta-underlined) is `true`, meta tag display an underline when the mouse cursor is over it.

* * *

flags **ImageUpdateMask**: [🔗](#enum-richtextlabel-imageupdatemask)

[ImageUpdateMask](#enum-richtextlabel-imageupdatemask) **UPDATE\_TEXTURE** = `1`

If this bit is set, [update\_image()](#class-richtextlabel-method-update-image) changes image texture.

[ImageUpdateMask](#enum-richtextlabel-imageupdatemask) **UPDATE\_SIZE** = `2`

If this bit is set, [update\_image()](#class-richtextlabel-method-update-image) changes image size.

[ImageUpdateMask](#enum-richtextlabel-imageupdatemask) **UPDATE\_COLOR** = `4`

If this bit is set, [update\_image()](#class-richtextlabel-method-update-image) changes image color.

[ImageUpdateMask](#enum-richtextlabel-imageupdatemask) **UPDATE\_ALIGNMENT** = `8`

If this bit is set, [update\_image()](#class-richtextlabel-method-update-image) changes image inline alignment.

[ImageUpdateMask](#enum-richtextlabel-imageupdatemask) **UPDATE\_REGION** = `16`

If this bit is set, [update\_image()](#class-richtextlabel-method-update-image) changes image texture region.

[ImageUpdateMask](#enum-richtextlabel-imageupdatemask) **UPDATE\_PAD** = `32`

If this bit is set, [update\_image()](#class-richtextlabel-method-update-image) changes image padding.

[ImageUpdateMask](#enum-richtextlabel-imageupdatemask) **UPDATE\_TOOLTIP** = `64`

If this bit is set, [update\_image()](#class-richtextlabel-method-update-image) changes image tooltip.

[ImageUpdateMask](#enum-richtextlabel-imageupdatemask) **UPDATE\_WIDTH\_IN\_PERCENT** = `128`

If this bit is set, [update\_image()](#class-richtextlabel-method-update-image) changes image width from/to percents.

* * *

## Property Descriptions

[AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **autowrap\_mode** = `3` [🔗](#class-richtextlabel-property-autowrap-mode)

- void **set\_autowrap\_mode**(value: [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode))

- [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **get\_autowrap\_mode**()


If set to something other than [TextServer.AUTOWRAP\_OFF](class_textserver.md#class-textserver-constant-autowrap-off), the text gets wrapped inside the node's bounding rectangle.

* * *

BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] **autowrap\_trim\_flags** = `192` [🔗](#class-richtextlabel-property-autowrap-trim-flags)

- void **set\_autowrap\_trim\_flags**(value: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\])

- BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] **get\_autowrap\_trim\_flags**()


Autowrap space trimming flags. See [TextServer.BREAK\_TRIM\_START\_EDGE\_SPACES](class_textserver.md#class-textserver-constant-break-trim-start-edge-spaces) and [TextServer.BREAK\_TRIM\_END\_EDGE\_SPACES](class_textserver.md#class-textserver-constant-break-trim-end-edge-spaces) for more info.

* * *

[bool](class_bool.md#class-bool) **bbcode\_enabled** = `false` [🔗](#class-richtextlabel-property-bbcode-enabled)

- void **set\_use\_bbcode**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_bbcode**()


If `true`, the label uses BBCode formatting.

**Note:** This only affects the contents of [text](#class-richtextlabel-property-text), not the tag stack.

* * *

[bool](class_bool.md#class-bool) **context\_menu\_enabled** = `false` [🔗](#class-richtextlabel-property-context-menu-enabled)

- void **set\_context\_menu\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_context\_menu\_enabled**()


If `true`, a right-click displays the context menu.

* * *

[Array](class_array.md#class-array) **custom\_effects** = `[]` [🔗](#class-richtextlabel-property-custom-effects)

- void **set\_effects**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_effects**()


The currently installed custom effects. This is an array of [RichTextEffect](class_richtexteffect.md#class-richtexteffect) s.

To add a custom effect, it's more convenient to use [install\_effect()](#class-richtextlabel-method-install-effect).

* * *

[bool](class_bool.md#class-bool) **deselect\_on\_focus\_loss\_enabled** = `true` [🔗](#class-richtextlabel-property-deselect-on-focus-loss-enabled)

- void **set\_deselect\_on\_focus\_loss\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_deselect\_on\_focus\_loss\_enabled**()


If `true`, the selected text will be deselected when focus is lost.

* * *

[bool](class_bool.md#class-bool) **drag\_and\_drop\_selection\_enabled** = `true` [🔗](#class-richtextlabel-property-drag-and-drop-selection-enabled)

- void **set\_drag\_and\_drop\_selection\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drag\_and\_drop\_selection\_enabled**()


If `true`, allow drag and drop of selected text.

* * *

[bool](class_bool.md#class-bool) **fit\_content** = `false` [🔗](#class-richtextlabel-property-fit-content)

- void **set\_fit\_content**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_fit\_content\_enabled**()


If `true`, the label's minimum size will be automatically updated to fit its content, matching the behavior of [Label](class_label.md#class-label).

* * *

[bool](class_bool.md#class-bool) **hint\_underlined** = `true` [🔗](#class-richtextlabel-property-hint-underlined)

- void **set\_hint\_underline**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_hint\_underlined**()


If `true`, the label underlines hint tags such as `[hint=description]{text}[/hint]`.

* * *

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **horizontal\_alignment** = `0` [🔗](#class-richtextlabel-property-horizontal-alignment)

- void **set\_horizontal\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_horizontal\_alignment**()


Controls the text's horizontal alignment. Supports left, center, right, and fill, or justify.

* * *

BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **justification\_flags** = `163` [🔗](#class-richtextlabel-property-justification-flags)

- void **set\_justification\_flags**(value: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\])

- BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **get\_justification\_flags**()


Line fill alignment rules.

* * *

[String](class_string.md#class-string) **language** = `""` [🔗](#class-richtextlabel-property-language)

- void **set\_language**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_language**()


Language code used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

[bool](class_bool.md#class-bool) **meta\_underlined** = `true` [🔗](#class-richtextlabel-property-meta-underlined)

- void **set\_meta\_underline**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_meta\_underlined**()


If `true`, the label underlines meta tags such as `[url]{text}[/url]`. These tags can call a function when clicked if [meta\_clicked](#class-richtextlabel-signal-meta-clicked) is connected to a function.

* * *

[int](class_int.md#class-int) **progress\_bar\_delay** = `1000` [🔗](#class-richtextlabel-property-progress-bar-delay)

- void **set\_progress\_bar\_delay**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_progress\_bar\_delay**()


The delay after which the loading progress bar is displayed, in milliseconds. Set to `-1` to disable progress bar entirely.

**Note:** Progress bar is displayed only if [threaded](#class-richtextlabel-property-threaded) is enabled.

* * *

[bool](class_bool.md#class-bool) **scroll\_active** = `true` [🔗](#class-richtextlabel-property-scroll-active)

- void **set\_scroll\_active**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_scroll\_active**()


If `true`, the scrollbar is visible. Setting this to `false` does not block scrolling completely. See [scroll\_to\_line()](#class-richtextlabel-method-scroll-to-line).

* * *

[bool](class_bool.md#class-bool) **scroll\_following** = `false` [🔗](#class-richtextlabel-property-scroll-following)

- void **set\_scroll\_follow**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_scroll\_following**()


If `true`, the window scrolls down to display new content automatically.

* * *

[bool](class_bool.md#class-bool) **scroll\_following\_visible\_characters** = `false` [🔗](#class-richtextlabel-property-scroll-following-visible-characters)

- void **set\_scroll\_follow\_visible\_characters**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_scroll\_following\_visible\_characters**()


If `true`, the window scrolls to display the last visible line when [visible\_characters](#class-richtextlabel-property-visible-characters) or [visible\_ratio](#class-richtextlabel-property-visible-ratio) is changed.

* * *

[bool](class_bool.md#class-bool) **selection\_enabled** = `false` [🔗](#class-richtextlabel-property-selection-enabled)

- void **set\_selection\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_selection\_enabled**()


If `true`, the label allows text selection.

* * *

[bool](class_bool.md#class-bool) **shortcut\_keys\_enabled** = `true` [🔗](#class-richtextlabel-property-shortcut-keys-enabled)

- void **set\_shortcut\_keys\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_shortcut\_keys\_enabled**()


If `true`, shortcut keys for context menu items are enabled, even if the context menu is disabled.

* * *

[StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **structured\_text\_bidi\_override** = `0` [🔗](#class-richtextlabel-property-structured-text-bidi-override)

- void **set\_structured\_text\_bidi\_override**(value: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser))

- [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **get\_structured\_text\_bidi\_override**()


Set BiDi algorithm override for the structured text.

* * *

[Array](class_array.md#class-array) **structured\_text\_bidi\_override\_options** = `[]` [🔗](#class-richtextlabel-property-structured-text-bidi-override-options)

- void **set\_structured\_text\_bidi\_override\_options**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_structured\_text\_bidi\_override\_options**()


Set additional options for BiDi override.

* * *

[int](class_int.md#class-int) **tab\_size** = `4` [🔗](#class-richtextlabel-property-tab-size)

- void **set\_tab\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_tab\_size**()


The number of spaces associated with a single tab length. Does not affect `\t` in text tags, only indent tags.

* * *

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **tab\_stops** = `PackedFloat32Array()` [🔗](#class-richtextlabel-property-tab-stops)

- void **set\_tab\_stops**(value: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array))

- [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_tab\_stops**()


Aligns text to the given tab-stops.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) for more details.

* * *

[String](class_string.md#class-string) **text** = `""` [🔗](#class-richtextlabel-property-text)

- void **set\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_text**()


The label's text in BBCode format. Is not representative of manual modifications to the internal tag stack. Erases changes made by other methods when edited.

**Note:** If [bbcode\_enabled](#class-richtextlabel-property-bbcode-enabled) is `true`, it is unadvised to use the `+=` operator with [text](#class-richtextlabel-property-text) (e.g. `text += "some string"`) as it replaces the whole text and can cause slowdowns. It will also erase all BBCode that was added to stack using `push_*` methods. Use [append\_text()](#class-richtextlabel-method-append-text) for adding text instead, unless you absolutely need to close a tag that was opened in an earlier method call.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **text\_direction** = `0` [🔗](#class-richtextlabel-property-text-direction)

- void **set\_text\_direction**(value: [TextDirection](class_control.md#enum-control-textdirection))

- [TextDirection](class_control.md#enum-control-textdirection) **get\_text\_direction**()


Base text writing direction.

* * *

[bool](class_bool.md#class-bool) **threaded** = `false` [🔗](#class-richtextlabel-property-threaded)

- void **set\_threaded**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_threaded**()


If `true`, text processing is done in a background thread.

* * *

[VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) **vertical\_alignment** = `0` [🔗](#class-richtextlabel-property-vertical-alignment)

- void **set\_vertical\_alignment**(value: [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment))

- [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) **get\_vertical\_alignment**()


Controls the text's vertical alignment. Supports top, center, bottom, and fill.

* * *

[int](class_int.md#class-int) **visible\_characters** = `-1` [🔗](#class-richtextlabel-property-visible-characters)

- void **set\_visible\_characters**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_visible\_characters**()


The number of characters to display. If set to `-1`, all characters are displayed. This can be useful when animating the text appearing in a dialog box.

**Note:** Setting this property updates [visible\_ratio](#class-richtextlabel-property-visible-ratio) accordingly.

**Note:** Characters are counted as Unicode codepoints. A single visible grapheme may contain multiple codepoints (e.g. certain emoji use three codepoints). A single codepoint may contain two UTF-16 characters, which are used in C# strings.

* * *

[VisibleCharactersBehavior](class_textserver.md#enum-textserver-visiblecharactersbehavior) **visible\_characters\_behavior** = `0` [🔗](#class-richtextlabel-property-visible-characters-behavior)

- void **set\_visible\_characters\_behavior**(value: [VisibleCharactersBehavior](class_textserver.md#enum-textserver-visiblecharactersbehavior))

- [VisibleCharactersBehavior](class_textserver.md#enum-textserver-visiblecharactersbehavior) **get\_visible\_characters\_behavior**()


The clipping behavior when [visible\_characters](#class-richtextlabel-property-visible-characters) or [visible\_ratio](#class-richtextlabel-property-visible-ratio) is set.

* * *

[float](class_float.md#class-float) **visible\_ratio** = `1.0` [🔗](#class-richtextlabel-property-visible-ratio)

- void **set\_visible\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_visible\_ratio**()


The fraction of characters to display, relative to the total number of characters (see [get\_total\_character\_count()](#class-richtextlabel-method-get-total-character-count)). If set to `1.0`, all characters are displayed. If set to `0.5`, only half of the characters will be displayed. This can be useful when animating the text appearing in a dialog box.

**Note:** Setting this property updates [visible\_characters](#class-richtextlabel-property-visible-characters) accordingly.

* * *

## Method Descriptions

void **add\_hr**(width: [int](class_int.md#class-int) = 90, height: [int](class_int.md#class-int) = 2, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 1, width\_in\_percent: [bool](class_bool.md#class-bool) = true, height\_in\_percent: [bool](class_bool.md#class-bool) = false) [🔗](#class-richtextlabel-method-add-hr)

Adds a horizontal rule that can be used to separate content.

If `width_in_percent` is set, `width` values are percentages of the control width instead of pixels.

If `height_in_percent` is set, `height` values are percentages of the control width instead of pixels.

* * *

void **add\_image**(image: [Texture2D](class_texture2d.md#class-texture2d), width: [int](class_int.md#class-int) = 0, height: [int](class_int.md#class-int) = 0, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, region: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), key: [Variant](class_variant.md#class-variant) = null, pad: [bool](class_bool.md#class-bool) = false, tooltip: [String](class_string.md#class-string) = "", width\_in\_percent: [bool](class_bool.md#class-bool) = false, height\_in\_percent: [bool](class_bool.md#class-bool) = false, alt\_text: [String](class_string.md#class-string) = "") [🔗](#class-richtextlabel-method-add-image)

Adds an image's opening and closing tags to the tag stack, optionally providing a `width` and `height` to resize the image, a `color` to tint the image and a `region` to only use parts of the image.

If `width` or `height` is set to 0, the image size will be adjusted in order to keep the original aspect ratio.

If `width` and `height` are not set, but `region` is, the region's rect will be used.

`key` is an optional identifier, that can be used to modify the image via [update\_image()](#class-richtextlabel-method-update-image).

If `pad` is set, and the image is smaller than the size specified by `width` and `height`, the image padding is added to match the size instead of upscaling.

If `width_in_percent` is set, `width` values are percentages of the control width instead of pixels.

If `height_in_percent` is set, `height` values are percentages of the control width instead of pixels.

`alt_text` is used as the image description for assistive apps.

* * *

void **add\_text**(text: [String](class_string.md#class-string)) [🔗](#class-richtextlabel-method-add-text)

Adds raw non-BBCode-parsed text to the tag stack.

* * *

void **append\_text**(bbcode: [String](class_string.md#class-string)) [🔗](#class-richtextlabel-method-append-text)

Parses `bbcode` and adds tags to the tag stack as needed.

**Note:** Using this method, you can't close a tag that was opened in a previous [append\_text()](#class-richtextlabel-method-append-text) call. This is done to improve performance, especially when updating large RichTextLabels since rebuilding the whole BBCode every time would be slower. If you absolutely need to close a tag in a future method call, append the [text](#class-richtextlabel-property-text) instead of using [append\_text()](#class-richtextlabel-method-append-text).

* * *

void **clear**() [🔗](#class-richtextlabel-method-clear)

Clears the tag stack, causing the label to display nothing.

**Note:** This method does not affect [text](#class-richtextlabel-property-text), and its contents will show again if the label is redrawn. However, setting [text](#class-richtextlabel-property-text) to an empty [String](class_string.md#class-string) also clears the stack.

* * *

void **deselect**() [🔗](#class-richtextlabel-method-deselect)

Clears the current selection.

* * *

[int](class_int.md#class-int) **get\_character\_line**(character: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-get-character-line)

Returns the line number of the character position provided. Line and character numbers are both zero-indexed.

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether document is fully loaded.

* * *

[int](class_int.md#class-int) **get\_character\_paragraph**(character: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-get-character-paragraph)

Returns the paragraph number of the character position provided. Paragraph and character numbers are both zero-indexed.

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether document is fully loaded.

* * *

[int](class_int.md#class-int) **get\_content\_height**() const [🔗](#class-richtextlabel-method-get-content-height)

Returns the height of the content.

**Note:** This method always returns the full content size, and is not affected by [visible\_ratio](#class-richtextlabel-property-visible-ratio) and [visible\_characters](#class-richtextlabel-property-visible-characters). To get the visible content size, use [get\_visible\_content\_rect()](#class-richtextlabel-method-get-visible-content-rect).

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether document is fully loaded.

* * *

[int](class_int.md#class-int) **get\_content\_width**() const [🔗](#class-richtextlabel-method-get-content-width)

Returns the width of the content.

**Note:** This method always returns the full content size, and is not affected by [visible\_ratio](#class-richtextlabel-property-visible-ratio) and [visible\_characters](#class-richtextlabel-property-visible-characters). To get the visible content size, use [get\_visible\_content\_rect()](#class-richtextlabel-method-get-visible-content-rect).

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether document is fully loaded.

* * *

[int](class_int.md#class-int) **get\_line\_count**() const [🔗](#class-richtextlabel-method-get-line-count)

Returns the total number of lines in the text. Wrapped text is counted as multiple lines.

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether document is fully loaded.

* * *

[int](class_int.md#class-int) **get\_line\_height**(line: [int](class_int.md#class-int)) const [🔗](#class-richtextlabel-method-get-line-height)

Returns the height of the line found at the provided index.

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether the document is fully loaded.

* * *

[float](class_float.md#class-float) **get\_line\_offset**(line: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-get-line-offset)

Returns the vertical offset of the line found at the provided index.

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether document is fully loaded.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_line\_range**(line: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-get-line-range)

Returns the indexes of the first and last visible characters for the given `line`, as a [Vector2i](class_vector2i.md#class-vector2i).

**Note:** If [visible\_characters\_behavior](#class-richtextlabel-property-visible-characters-behavior) is set to [TextServer.VC\_CHARS\_BEFORE\_SHAPING](class_textserver.md#class-textserver-constant-vc-chars-before-shaping) only visible wrapped lines are counted.

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether document is fully loaded.

* * *

[int](class_int.md#class-int) **get\_line\_width**(line: [int](class_int.md#class-int)) const [🔗](#class-richtextlabel-method-get-line-width)

Returns the width of the line found at the provided index.

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether the document is fully loaded.

* * *

[PopupMenu](class_popupmenu.md#class-popupmenu) **get\_menu**() const [🔗](#class-richtextlabel-method-get-menu)

Returns the [PopupMenu](class_popupmenu.md#class-popupmenu) of this **RichTextLabel**. By default, this menu is displayed when right-clicking on the **RichTextLabel**.

You can add custom menu items or remove standard ones. Make sure your IDs don't conflict with the standard ones (see [MenuItems](#enum-richtextlabel-menuitems)). For example:

GDScriptC#

```
func _ready():
    var menu = get_menu()
    # Remove "Select All" item.
    menu.remove_item(MENU_SELECT_ALL)
    # Add custom items.
    menu.add_separator()
    menu.add_item("Duplicate Text", MENU_MAX + 1)
    # Connect callback.
    menu.id_pressed.connect(_on_item_pressed)

func _on_item_pressed(id):
    if id == MENU_MAX + 1:
        add_text("\n" + get_parsed_text())

```

```
public override void _Ready()
{
    var menu = GetMenu();
    // Remove "Select All" item.
    menu.RemoveItem(RichTextLabel.MenuItems.SelectAll);
    // Add custom items.
    menu.AddSeparator();
    menu.AddItem("Duplicate Text", RichTextLabel.MenuItems.Max + 1);
    // Add event handler.
    menu.IdPressed += OnItemPressed;
}

public void OnItemPressed(int id)
{
    if (id == TextEdit.MenuItems.Max + 1)
    {
        AddText("\n" + GetParsedText());
    }
}

```

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [Window.visible](class_window.md#class-window-property-visible) property.

* * *

[int](class_int.md#class-int) **get\_paragraph\_count**() const [🔗](#class-richtextlabel-method-get-paragraph-count)

Returns the total number of paragraphs (newlines or `p` tags in the tag stack's text tags). Considers wrapped text as one paragraph.

* * *

[float](class_float.md#class-float) **get\_paragraph\_offset**(paragraph: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-get-paragraph-offset)

Returns the vertical offset of the paragraph found at the provided index.

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether document is fully loaded.

* * *

[String](class_string.md#class-string) **get\_parsed\_text**() const [🔗](#class-richtextlabel-method-get-parsed-text)

Returns the text without BBCode mark-up.

* * *

[String](class_string.md#class-string) **get\_selected\_text**() const [🔗](#class-richtextlabel-method-get-selected-text)

Returns the current selection text. Does not include BBCodes.

* * *

[int](class_int.md#class-int) **get\_selection\_from**() const [🔗](#class-richtextlabel-method-get-selection-from)

Returns the current selection first character index if a selection is active, `-1` otherwise. Does not include BBCodes.

* * *

[float](class_float.md#class-float) **get\_selection\_line\_offset**() const [🔗](#class-richtextlabel-method-get-selection-line-offset)

Returns the current selection vertical line offset if a selection is active, `-1.0` otherwise.

* * *

[int](class_int.md#class-int) **get\_selection\_to**() const [🔗](#class-richtextlabel-method-get-selection-to)

Returns the current selection last character index if a selection is active, `-1` otherwise. Does not include BBCodes.

* * *

[int](class_int.md#class-int) **get\_total\_character\_count**() const [🔗](#class-richtextlabel-method-get-total-character-count)

Returns the total number of characters from text tags. Does not include BBCodes.

* * *

[VScrollBar](class_vscrollbar.md#class-vscrollbar) **get\_v\_scroll\_bar**() [🔗](#class-richtextlabel-method-get-v-scroll-bar)

Returns the vertical scrollbar.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **get\_visible\_content\_rect**() const [🔗](#class-richtextlabel-method-get-visible-content-rect)

Returns the bounding rectangle of the visible content.

**Note:** This method returns a correct value only after the label has been drawn.

GDScriptC#

```
extends RichTextLabel

@export var background_panel: Panel

func _ready():
    await draw
    background_panel.position = get_visible_content_rect().position
    background_panel.size = get_visible_content_rect().size

```

```
public partial class TestLabel : RichTextLabel
{
    [Export]
    public Panel BackgroundPanel { get; set; }

    public override async void _Ready()
    {
        await ToSignal(this, Control.SignalName.Draw);
        BackgroundGPanel.Position = GetVisibleContentRect().Position;
        BackgroundPanel.Size = GetVisibleContentRect().Size;
    }
}

```

* * *

[int](class_int.md#class-int) **get\_visible\_line\_count**() const [🔗](#class-richtextlabel-method-get-visible-line-count)

Returns the number of visible lines.

**Note:** This method returns a correct value only after the label has been drawn.

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether document is fully loaded.

* * *

[int](class_int.md#class-int) **get\_visible\_paragraph\_count**() const [🔗](#class-richtextlabel-method-get-visible-paragraph-count)

Returns the number of visible paragraphs. A paragraph is considered visible if at least one of its lines is visible.

**Note:** This method returns a correct value only after the label has been drawn.

**Note:** If [threaded](#class-richtextlabel-property-threaded) is enabled, this method returns a value for the loaded part of the document. Use [is\_finished()](#class-richtextlabel-method-is-finished) or [finished](#class-richtextlabel-signal-finished) to determine whether document is fully loaded.

* * *

void **install\_effect**(effect: [Variant](class_variant.md#class-variant)) [🔗](#class-richtextlabel-method-install-effect)

Installs a custom effect. This can also be done in the Inspector through the [custom\_effects](#class-richtextlabel-property-custom-effects) property. `effect` should be a valid [RichTextEffect](class_richtexteffect.md#class-richtexteffect).

**Example:** With the following script extending from [RichTextEffect](class_richtexteffect.md#class-richtexteffect):

```
# effect.gd
class_name MyCustomEffect
extends RichTextEffect

var bbcode = "my_custom_effect"

# ...

```

The above effect can be installed in **RichTextLabel** from a script:

```
# rich_text_label.gd
extends RichTextLabel

func _ready():
    install_effect(MyCustomEffect.new())

    # Alternatively, if not using `class_name` in the script that extends RichTextEffect:
    install_effect(preload("res://effect.gd").new())

```

* * *

[bool](class_bool.md#class-bool) **invalidate\_paragraph**(paragraph: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-invalidate-paragraph)

Invalidates `paragraph` and all subsequent paragraphs cache.

* * *

[bool](class_bool.md#class-bool) **is\_finished**() const [🔗](#class-richtextlabel-method-is-finished)

If [threaded](#class-richtextlabel-property-threaded) is enabled, returns `true` if the background thread has finished text processing, otherwise always return `true`.

* * *

[bool](class_bool.md#class-bool) **is\_menu\_visible**() const [🔗](#class-richtextlabel-method-is-menu-visible)

Returns whether the menu is visible. Use this instead of `get_menu().visible` to improve performance (so the creation of the menu is avoided).

* * *

[bool](class_bool.md#class-bool) **is\_ready**() const [🔗](#class-richtextlabel-method-is-ready)

**Deprecated:** Use [is\_finished()](#class-richtextlabel-method-is-finished) instead.

If [threaded](#class-richtextlabel-property-threaded) is enabled, returns `true` if the background thread has finished text processing, otherwise always return `true`.

* * *

void **menu\_option**(option: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-menu-option)

Executes a given action as defined in the [MenuItems](#enum-richtextlabel-menuitems) enum.

* * *

void **newline**() [🔗](#class-richtextlabel-method-newline)

Adds a newline tag to the tag stack.

* * *

void **parse\_bbcode**(bbcode: [String](class_string.md#class-string)) [🔗](#class-richtextlabel-method-parse-bbcode)

The assignment version of [append\_text()](#class-richtextlabel-method-append-text). Clears the tag stack and inserts the new content.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **parse\_expressions\_for\_values**(expressions: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-richtextlabel-method-parse-expressions-for-values)

Parses BBCode parameter `expressions` into a dictionary.

* * *

void **pop**() [🔗](#class-richtextlabel-method-pop)

Terminates the current tag. Use after `push_*` methods to close BBCodes manually. Does not need to follow `add_*` methods.

* * *

void **pop\_all**() [🔗](#class-richtextlabel-method-pop-all)

Terminates all tags opened by `push_*` methods.

* * *

void **pop\_context**() [🔗](#class-richtextlabel-method-pop-context)

Terminates tags opened after the last [push\_context()](#class-richtextlabel-method-push-context) call (including context marker), or all tags if there's no context marker on the stack.

* * *

void **push\_bgcolor**(bgcolor: [Color](class_color.md#class-color)) [🔗](#class-richtextlabel-method-push-bgcolor)

Adds a `[bgcolor]` tag to the tag stack.

**Note:** The background color has padding applied by default, which is controlled using [text\_highlight\_h\_padding](#class-richtextlabel-theme-constant-text-highlight-h-padding) and [text\_highlight\_v\_padding](#class-richtextlabel-theme-constant-text-highlight-v-padding). This can lead to overlapping highlights if background colors are placed on neighboring lines/columns, so consider setting those theme items to `0` if you want to avoid this.

* * *

void **push\_bold**() [🔗](#class-richtextlabel-method-push-bold)

Adds a `[font]` tag with a bold font to the tag stack. This is the same as adding a `[b]` tag if not currently in a `[i]` tag.

* * *

void **push\_bold\_italics**() [🔗](#class-richtextlabel-method-push-bold-italics)

Adds a `[font]` tag with a bold italics font to the tag stack.

* * *

void **push\_cell**() [🔗](#class-richtextlabel-method-push-cell)

Adds a `[cell]` tag to the tag stack. Must be inside a `[table]` tag. See [push\_table()](#class-richtextlabel-method-push-table) for details. Use [set\_table\_column\_expand()](#class-richtextlabel-method-set-table-column-expand) to set column expansion ratio, [set\_cell\_border\_color()](#class-richtextlabel-method-set-cell-border-color) to set cell border, [set\_cell\_row\_background\_color()](#class-richtextlabel-method-set-cell-row-background-color) to set cell background, [set\_cell\_size\_override()](#class-richtextlabel-method-set-cell-size-override) to override cell size, and [set\_cell\_padding()](#class-richtextlabel-method-set-cell-padding) to set padding.

* * *

void **push\_color**(color: [Color](class_color.md#class-color)) [🔗](#class-richtextlabel-method-push-color)

Adds a `[color]` tag to the tag stack.

* * *

void **push\_context**() [🔗](#class-richtextlabel-method-push-context)

Adds a context marker to the tag stack. See [pop\_context()](#class-richtextlabel-method-pop-context).

* * *

void **push\_customfx**(effect: [RichTextEffect](class_richtexteffect.md#class-richtexteffect), env: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-richtextlabel-method-push-customfx)

Adds a custom effect tag to the tag stack. The effect does not need to be in [custom\_effects](#class-richtextlabel-property-custom-effects). The environment is directly passed to the effect.

* * *

void **push\_dropcap**(string: [String](class_string.md#class-string), font: [Font](class_font.md#class-font), size: [int](class_int.md#class-int), dropcap\_margins: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), outline\_size: [int](class_int.md#class-int) = 0, outline\_color: [Color](class_color.md#class-color) = Color(0, 0, 0, 0)) [🔗](#class-richtextlabel-method-push-dropcap)

Adds a `[dropcap]` tag to the tag stack. Drop cap (dropped capital) is a decorative element at the beginning of a paragraph that is larger than the rest of the text.

* * *

void **push\_fgcolor**(fgcolor: [Color](class_color.md#class-color)) [🔗](#class-richtextlabel-method-push-fgcolor)

Adds a `[fgcolor]` tag to the tag stack.

**Note:** The foreground color has padding applied by default, which is controlled using [text\_highlight\_h\_padding](#class-richtextlabel-theme-constant-text-highlight-h-padding) and [text\_highlight\_v\_padding](#class-richtextlabel-theme-constant-text-highlight-v-padding). This can lead to overlapping highlights if foreground colors are placed on neighboring lines/columns, so consider setting those theme items to `0` if you want to avoid this.

* * *

void **push\_font**(font: [Font](class_font.md#class-font), font\_size: [int](class_int.md#class-int) = 0) [🔗](#class-richtextlabel-method-push-font)

Adds a `[font]` tag to the tag stack. Overrides default fonts for its duration.

Passing `0` to `font_size` will use the existing default font size.

* * *

void **push\_font\_size**(font\_size: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-push-font-size)

Adds a `[font_size]` tag to the tag stack. Overrides default font size for its duration.

* * *

void **push\_hint**(description: [String](class_string.md#class-string)) [🔗](#class-richtextlabel-method-push-hint)

Adds a `[hint]` tag to the tag stack. Same as BBCode `[hint=something]{text}[/hint]`.

* * *

void **push\_indent**(level: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-push-indent)

Adds an `[indent]` tag to the tag stack. Multiplies `level` by current [tab\_size](#class-richtextlabel-property-tab-size) to determine new margin length.

* * *

void **push\_italics**() [🔗](#class-richtextlabel-method-push-italics)

Adds a `[font]` tag with an italics font to the tag stack. This is the same as adding an `[i]` tag if not currently in a `[b]` tag.

* * *

void **push\_language**(language: [String](class_string.md#class-string)) [🔗](#class-richtextlabel-method-push-language)

Adds language code used for text shaping algorithm and Open-Type font features.

* * *

void **push\_list**(level: [int](class_int.md#class-int), type: [ListType](#enum-richtextlabel-listtype), capitalize: [bool](class_bool.md#class-bool), bullet: [String](class_string.md#class-string) = "•") [🔗](#class-richtextlabel-method-push-list)

Adds `[ol]` or `[ul]` tag to the tag stack. Multiplies `level` by current [tab\_size](#class-richtextlabel-property-tab-size) to determine new margin length.

* * *

void **push\_meta**(data: [Variant](class_variant.md#class-variant), underline\_mode: [MetaUnderline](#enum-richtextlabel-metaunderline) = 1, tooltip: [String](class_string.md#class-string) = "") [🔗](#class-richtextlabel-method-push-meta)

Adds a meta tag to the tag stack. Similar to the BBCode `[url=something]{text}[/url]`, but supports non- [String](class_string.md#class-string) metadata types.

If [meta\_underlined](#class-richtextlabel-property-meta-underlined) is `true`, meta tags display an underline. This behavior can be customized with `underline_mode`.

**Note:** Meta tags do nothing by default when clicked. To assign behavior when clicked, connect [meta\_clicked](#class-richtextlabel-signal-meta-clicked) to a function that is called when the meta tag is clicked.

* * *

void **push\_mono**() [🔗](#class-richtextlabel-method-push-mono)

Adds a `[font]` tag with a monospace font to the tag stack.

* * *

void **push\_normal**() [🔗](#class-richtextlabel-method-push-normal)

Adds a `[font]` tag with a normal font to the tag stack.

* * *

void **push\_outline\_color**(color: [Color](class_color.md#class-color)) [🔗](#class-richtextlabel-method-push-outline-color)

Adds a `[outline_color]` tag to the tag stack. Adds text outline for its duration.

* * *

void **push\_outline\_size**(outline\_size: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-push-outline-size)

Adds a `[outline_size]` tag to the tag stack. Overrides default text outline size for its duration.

* * *

void **push\_paragraph**(alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment), base\_direction: [TextDirection](class_control.md#enum-control-textdirection) = 0, language: [String](class_string.md#class-string) = "", st\_parser: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) = 0, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 163, tab\_stops: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) = PackedFloat32Array()) [🔗](#class-richtextlabel-method-push-paragraph)

Adds a `[p]` tag to the tag stack.

* * *

void **push\_strikethrough**(color: [Color](class_color.md#class-color) = Color(0, 0, 0, 0)) [🔗](#class-richtextlabel-method-push-strikethrough)

Adds a `[s]` tag to the tag stack. If `color` alpha value is zero, current font color with alpha multiplied by [strikethrough\_alpha](#class-richtextlabel-theme-constant-strikethrough-alpha) is used.

* * *

void **push\_table**(columns: [int](class_int.md#class-int), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 0, align\_to\_row: [int](class_int.md#class-int) = -1, name: [String](class_string.md#class-string) = "") [🔗](#class-richtextlabel-method-push-table)

Adds a `[table=columns,inline_align]` tag to the tag stack. Use [set\_table\_column\_expand()](#class-richtextlabel-method-set-table-column-expand) to set column expansion ratio. Use [push\_cell()](#class-richtextlabel-method-push-cell) to add cells. `name` is used as the table name for assistive apps.

* * *

void **push\_underline**(color: [Color](class_color.md#class-color) = Color(0, 0, 0, 0)) [🔗](#class-richtextlabel-method-push-underline)

Adds a `[u]` tag to the tag stack. If `color` alpha value is zero, current font color with alpha multiplied by [underline\_alpha](#class-richtextlabel-theme-constant-underline-alpha) is used.

* * *

void **reload\_effects**() [🔗](#class-richtextlabel-method-reload-effects)

Reloads custom effects. Useful when [custom\_effects](#class-richtextlabel-property-custom-effects) is modified manually.

* * *

[bool](class_bool.md#class-bool) **remove\_paragraph**(paragraph: [int](class_int.md#class-int), no\_invalidate: [bool](class_bool.md#class-bool) = false) [🔗](#class-richtextlabel-method-remove-paragraph)

Removes a paragraph of content from the label. Returns `true` if the paragraph exists.

The `paragraph` argument is the index of the paragraph to remove, it can take values in the interval `[0, get_paragraph_count() - 1]`.

If `no_invalidate` is set to `true`, cache for the subsequent paragraphs is not invalidated. Use it for faster updates if deleted paragraph is fully self-contained (have no unclosed tags), or this call is part of the complex edit operation and [invalidate\_paragraph()](#class-richtextlabel-method-invalidate-paragraph) will be called at the end of operation.

* * *

void **scroll\_to\_line**(line: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-scroll-to-line)

Scrolls the window's top line to match `line`.

* * *

void **scroll\_to\_paragraph**(paragraph: [int](class_int.md#class-int)) [🔗](#class-richtextlabel-method-scroll-to-paragraph)

Scrolls the window's top line to match first line of the `paragraph`.

* * *

void **scroll\_to\_selection**() [🔗](#class-richtextlabel-method-scroll-to-selection)

Scrolls to the beginning of the current selection.

* * *

void **select\_all**() [🔗](#class-richtextlabel-method-select-all)

Select all the text.

If [selection\_enabled](#class-richtextlabel-property-selection-enabled) is `false`, no selection will occur.

* * *

void **set\_cell\_border\_color**(color: [Color](class_color.md#class-color)) [🔗](#class-richtextlabel-method-set-cell-border-color)

Sets color of a table cell border.

* * *

void **set\_cell\_padding**(padding: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-richtextlabel-method-set-cell-padding)

Sets inner padding of a table cell.

* * *

void **set\_cell\_row\_background\_color**(odd\_row\_bg: [Color](class_color.md#class-color), even\_row\_bg: [Color](class_color.md#class-color)) [🔗](#class-richtextlabel-method-set-cell-row-background-color)

Sets color of a table cell. Separate colors for alternating rows can be specified.

* * *

void **set\_cell\_size\_override**(min\_size: [Vector2](class_vector2.md#class-vector2), max\_size: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-richtextlabel-method-set-cell-size-override)

Sets minimum and maximum size overrides for a table cell.

* * *

void **set\_table\_column\_expand**(column: [int](class_int.md#class-int), expand: [bool](class_bool.md#class-bool), ratio: [int](class_int.md#class-int) = 1, shrink: [bool](class_bool.md#class-bool) = true) [🔗](#class-richtextlabel-method-set-table-column-expand)

Edits the selected column's expansion options. If `expand` is `true`, the column expands in proportion to its expansion ratio versus the other columns' ratios.

For example, 2 columns with ratios 3 and 4 plus 70 pixels in available width would expand 30 and 40 pixels, respectively.

If `expand` is `false`, the column will not contribute to the total ratio.

* * *

void **set\_table\_column\_name**(column: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-richtextlabel-method-set-table-column-name)

Sets table column name for assistive apps.

* * *

void **update\_image**(key: [Variant](class_variant.md#class-variant), mask: BitField\[ [ImageUpdateMask](#enum-richtextlabel-imageupdatemask)\], image: [Texture2D](class_texture2d.md#class-texture2d), width: [int](class_int.md#class-int) = 0, height: [int](class_int.md#class-int) = 0, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, region: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), pad: [bool](class_bool.md#class-bool) = false, tooltip: [String](class_string.md#class-string) = "", width\_in\_percent: [bool](class_bool.md#class-bool) = false, height\_in\_percent: [bool](class_bool.md#class-bool) = false) [🔗](#class-richtextlabel-method-update-image)

Updates the existing images with the key `key`. Only properties specified by `mask` bits are updated. See [add\_image()](#class-richtextlabel-method-add-image).

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **default\_color** = `Color(1, 1, 1, 1)` [🔗](#class-richtextlabel-theme-color-default-color)

The default text color.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-richtextlabel-theme-color-font-outline-color)

The default tint of text outline.

* * *

[Color](class_color.md#class-color) **font\_selected\_color** = `Color(0, 0, 0, 0)` [🔗](#class-richtextlabel-theme-color-font-selected-color)

The color of selected text, used when [selection\_enabled](#class-richtextlabel-property-selection-enabled) is `true`. If equal to `Color(0, 0, 0, 0)`, it will be ignored.

* * *

[Color](class_color.md#class-color) **font\_shadow\_color** = `Color(0, 0, 0, 0)` [🔗](#class-richtextlabel-theme-color-font-shadow-color)

The color of the font's shadow.

* * *

[Color](class_color.md#class-color) **selection\_color** = `Color(0.1, 0.1, 1, 0.8)` [🔗](#class-richtextlabel-theme-color-selection-color)

The color of the selection box.

* * *

[Color](class_color.md#class-color) **table\_border** = `Color(0, 0, 0, 0)` [🔗](#class-richtextlabel-theme-color-table-border)

The default cell border color.

* * *

[Color](class_color.md#class-color) **table\_even\_row\_bg** = `Color(0, 0, 0, 0)` [🔗](#class-richtextlabel-theme-color-table-even-row-bg)

The default background color for even rows.

* * *

[Color](class_color.md#class-color) **table\_odd\_row\_bg** = `Color(0, 0, 0, 0)` [🔗](#class-richtextlabel-theme-color-table-odd-row-bg)

The default background color for odd rows.

* * *

[int](class_int.md#class-int) **line\_separation** = `0` [🔗](#class-richtextlabel-theme-constant-line-separation)

Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-richtextlabel-theme-constant-outline-size)

The size of the text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-richtextlabel-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[int](class_int.md#class-int) **paragraph\_separation** = `0` [🔗](#class-richtextlabel-theme-constant-paragraph-separation)

Additional vertical spacing between paragraphs (in pixels). Spacing is added after the last line. This value can be negative.

* * *

[int](class_int.md#class-int) **shadow\_offset\_x** = `1` [🔗](#class-richtextlabel-theme-constant-shadow-offset-x)

The horizontal offset of the font's shadow.

* * *

[int](class_int.md#class-int) **shadow\_offset\_y** = `1` [🔗](#class-richtextlabel-theme-constant-shadow-offset-y)

The vertical offset of the font's shadow.

* * *

[int](class_int.md#class-int) **shadow\_outline\_size** = `1` [🔗](#class-richtextlabel-theme-constant-shadow-outline-size)

The size of the shadow outline.

* * *

[int](class_int.md#class-int) **strikethrough\_alpha** = `50` [🔗](#class-richtextlabel-theme-constant-strikethrough-alpha)

The default strikethrough color transparency (percent). For strikethroughs with a custom color, this theme item is only used if the custom color's alpha is `0.0` (fully transparent).

* * *

[int](class_int.md#class-int) **table\_h\_separation** = `3` [🔗](#class-richtextlabel-theme-constant-table-h-separation)

The horizontal separation of elements in a table.

* * *

[int](class_int.md#class-int) **table\_v\_separation** = `3` [🔗](#class-richtextlabel-theme-constant-table-v-separation)

The vertical separation of elements in a table.

* * *

[int](class_int.md#class-int) **text\_highlight\_h\_padding** = `3` [🔗](#class-richtextlabel-theme-constant-text-highlight-h-padding)

The horizontal padding around boxes drawn by the `[fgcolor]` and `[bgcolor]` tags. This does not affect the appearance of text selection. To avoid any risk of neighboring highlights overlapping each other, set this to `0` to disable padding.

* * *

[int](class_int.md#class-int) **text\_highlight\_v\_padding** = `3` [🔗](#class-richtextlabel-theme-constant-text-highlight-v-padding)

The vertical padding around boxes drawn by the `[fgcolor]` and `[bgcolor]` tags. This does not affect the appearance of text selection. To avoid any risk of neighboring highlights overlapping each other, set this to `0` to disable padding.

* * *

[int](class_int.md#class-int) **underline\_alpha** = `50` [🔗](#class-richtextlabel-theme-constant-underline-alpha)

The default underline color transparency (percent). For underlines with a custom color, this theme item is only used if the custom color's alpha is `0.0` (fully transparent).

* * *

[Font](class_font.md#class-font) **bold\_font** [🔗](#class-richtextlabel-theme-font-bold-font)

The font used for bold text.

* * *

[Font](class_font.md#class-font) **bold\_italics\_font** [🔗](#class-richtextlabel-theme-font-bold-italics-font)

The font used for bold italics text.

* * *

[Font](class_font.md#class-font) **italics\_font** [🔗](#class-richtextlabel-theme-font-italics-font)

The font used for italics text.

* * *

[Font](class_font.md#class-font) **mono\_font** [🔗](#class-richtextlabel-theme-font-mono-font)

The font used for monospace text.

* * *

[Font](class_font.md#class-font) **normal\_font** [🔗](#class-richtextlabel-theme-font-normal-font)

The default text font.

* * *

[int](class_int.md#class-int) **bold\_font\_size** [🔗](#class-richtextlabel-theme-font-size-bold-font-size)

The font size used for bold text.

* * *

[int](class_int.md#class-int) **bold\_italics\_font\_size** [🔗](#class-richtextlabel-theme-font-size-bold-italics-font-size)

The font size used for bold italics text.

* * *

[int](class_int.md#class-int) **italics\_font\_size** [🔗](#class-richtextlabel-theme-font-size-italics-font-size)

The font size used for italics text.

* * *

[int](class_int.md#class-int) **mono\_font\_size** [🔗](#class-richtextlabel-theme-font-size-mono-font-size)

The font size used for monospace text.

* * *

[int](class_int.md#class-int) **normal\_font\_size** [🔗](#class-richtextlabel-theme-font-size-normal-font-size)

The default text font size.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **horizontal\_rule** [🔗](#class-richtextlabel-theme-icon-horizontal-rule)

The horizontal rule texture.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **focus** [🔗](#class-richtextlabel-theme-style-focus)

The background used when the **RichTextLabel** is focused. The [focus](#class-richtextlabel-theme-style-focus) [StyleBox](class_stylebox.md#class-stylebox) is displayed _over_ the base [StyleBox](class_stylebox.md#class-stylebox), so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the base [StyleBox](class_stylebox.md#class-stylebox) remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **normal** [🔗](#class-richtextlabel-theme-style-normal)

The normal background for the **RichTextLabel**.

[Previous](class_retargetmodifier3d.md "RetargetModifier3D") [Next](class_rigidbody2d.md "RigidBody2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_retargetmodifier3d.md "RetargetModifier3D") [Next](class_rigidbody2d.md "RigidBody2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).