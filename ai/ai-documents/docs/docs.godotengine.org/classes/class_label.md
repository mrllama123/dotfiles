---
title: Label — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_label.html
crawled_at: "2026-08-13T10:29:21+12:00"
content_hash: 400b6eb89dd69ab97b8807763d0aa987b58988a2447a90f6e58999ffccd1d8f2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Label

* * *

# Label

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A control for displaying plain text.

## Description

A control for displaying plain text. It gives you control over the horizontal and vertical alignment and can wrap the text inside the node's bounding rectangle. It doesn't support bold, italics, or other rich text formatting. For that, use [RichTextLabel](class_richtextlabel.md#class-richtextlabel) instead.

## Tutorials

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)


## Properties

|     |     |     |
| --- | --- | --- |
| [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) | [autowrap\_mode](#class-label-property-autowrap-mode) | `0` |
| BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] | [autowrap\_trim\_flags](#class-label-property-autowrap-trim-flags) | `192` |
| [bool](class_bool.md#class-bool) | [clip\_text](#class-label-property-clip-text) | `false` |
| [String](class_string.md#class-string) | [ellipsis\_char](#class-label-property-ellipsis-char) | `"…"` |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [horizontal\_alignment](#class-label-property-horizontal-alignment) | `0` |
| BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] | [justification\_flags](#class-label-property-justification-flags) | `163` |
| [LabelSettings](class_labelsettings.md#class-labelsettings) | [label\_settings](#class-label-property-label-settings) |  |
| [String](class_string.md#class-string) | [language](#class-label-property-language) | `""` |
| [int](class_int.md#class-int) | [lines\_skipped](#class-label-property-lines-skipped) | `0` |
| [int](class_int.md#class-int) | [max\_lines\_visible](#class-label-property-max-lines-visible) | `-1` |
| [MouseFilter](class_control.md#enum-control-mousefilter) | mouse\_filter | `2` (overrides [Control](class_control.md#class-control-property-mouse-filter)) |
| [String](class_string.md#class-string) | [paragraph\_separator](#class-label-property-paragraph-separator) | `"\\n"` |
| BitField\[ [SizeFlags](class_control.md#enum-control-sizeflags)\] | size\_flags\_vertical | `4` (overrides [Control](class_control.md#class-control-property-size-flags-vertical)) |
| [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) | [structured\_text\_bidi\_override](#class-label-property-structured-text-bidi-override) | `0` |
| [Array](class_array.md#class-array) | [structured\_text\_bidi\_override\_options](#class-label-property-structured-text-bidi-override-options) | `[]` |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [tab\_stops](#class-label-property-tab-stops) | `PackedFloat32Array()` |
| [String](class_string.md#class-string) | [text](#class-label-property-text) | `""` |
| [TextDirection](class_control.md#enum-control-textdirection) | [text\_direction](#class-label-property-text-direction) | `0` |
| [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) | [text\_overrun\_behavior](#class-label-property-text-overrun-behavior) | `0` |
| [bool](class_bool.md#class-bool) | [uppercase](#class-label-property-uppercase) | `false` |
| [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) | [vertical\_alignment](#class-label-property-vertical-alignment) | `0` |
| [int](class_int.md#class-int) | [visible\_characters](#class-label-property-visible-characters) | `-1` |
| [VisibleCharactersBehavior](class_textserver.md#enum-textserver-visiblecharactersbehavior) | [visible\_characters\_behavior](#class-label-property-visible-characters-behavior) | `0` |
| [float](class_float.md#class-float) | [visible\_ratio](#class-label-property-visible-ratio) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [Rect2](class_rect2.md#class-rect2) | [get\_character\_bounds](#class-label-method-get-character-bounds)(pos: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_line\_count](#class-label-method-get-line-count)() const |
| [int](class_int.md#class-int) | [get\_line\_height](#class-label-method-get-line-height)(line: [int](class_int.md#class-int) = -1) const |
| [int](class_int.md#class-int) | [get\_total\_character\_count](#class-label-method-get-total-character-count)() const |
| [int](class_int.md#class-int) | [get\_visible\_line\_count](#class-label-method-get-visible-line-count)() const |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [font\_color](#class-label-theme-color-font-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-label-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_shadow\_color](#class-label-theme-color-font-shadow-color) | `Color(0, 0, 0, 0)` |
| [int](class_int.md#class-int) | [line\_spacing](#class-label-theme-constant-line-spacing) | `3` |
| [int](class_int.md#class-int) | [outline\_size](#class-label-theme-constant-outline-size) | `0` |
| [int](class_int.md#class-int) | [paragraph\_spacing](#class-label-theme-constant-paragraph-spacing) | `0` |
| [int](class_int.md#class-int) | [shadow\_offset\_x](#class-label-theme-constant-shadow-offset-x) | `1` |
| [int](class_int.md#class-int) | [shadow\_offset\_y](#class-label-theme-constant-shadow-offset-y) | `1` |
| [int](class_int.md#class-int) | [shadow\_outline\_size](#class-label-theme-constant-shadow-outline-size) | `1` |
| [Font](class_font.md#class-font) | [font](#class-label-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-label-theme-font-size-font-size) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [focus](#class-label-theme-style-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [normal](#class-label-theme-style-normal) |  |

* * *

## Property Descriptions

[AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **autowrap\_mode** = `0` [🔗](#class-label-property-autowrap-mode)

- void **set\_autowrap\_mode**(value: [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode))

- [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **get\_autowrap\_mode**()


If set to something other than [TextServer.AUTOWRAP\_OFF](class_textserver.md#class-textserver-constant-autowrap-off), the text gets wrapped inside the node's bounding rectangle. If you resize the node, it will change its height automatically to show all the text.

* * *

BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] **autowrap\_trim\_flags** = `192` [🔗](#class-label-property-autowrap-trim-flags)

- void **set\_autowrap\_trim\_flags**(value: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\])

- BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] **get\_autowrap\_trim\_flags**()


Autowrap space trimming flags. See [TextServer.BREAK\_TRIM\_START\_EDGE\_SPACES](class_textserver.md#class-textserver-constant-break-trim-start-edge-spaces) and [TextServer.BREAK\_TRIM\_END\_EDGE\_SPACES](class_textserver.md#class-textserver-constant-break-trim-end-edge-spaces) for more info.

* * *

[bool](class_bool.md#class-bool) **clip\_text** = `false` [🔗](#class-label-property-clip-text)

- void **set\_clip\_text**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_clipping\_text**()


If `true`, the Label only shows the text that fits inside its bounding rectangle and will clip text horizontally.

* * *

[String](class_string.md#class-string) **ellipsis\_char** = `"…"` [🔗](#class-label-property-ellipsis-char)

- void **set\_ellipsis\_char**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_ellipsis\_char**()


Ellipsis character used for text clipping.

* * *

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **horizontal\_alignment** = `0` [🔗](#class-label-property-horizontal-alignment)

- void **set\_horizontal\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_horizontal\_alignment**()


Controls the text's horizontal alignment. Supports left, center, right, and fill (also known as justify).

* * *

BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **justification\_flags** = `163` [🔗](#class-label-property-justification-flags)

- void **set\_justification\_flags**(value: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\])

- BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **get\_justification\_flags**()


Line fill alignment rules.

* * *

[LabelSettings](class_labelsettings.md#class-labelsettings) **label\_settings** [🔗](#class-label-property-label-settings)

- void **set\_label\_settings**(value: [LabelSettings](class_labelsettings.md#class-labelsettings))

- [LabelSettings](class_labelsettings.md#class-labelsettings) **get\_label\_settings**()


A [LabelSettings](class_labelsettings.md#class-labelsettings) resource that can be shared between multiple **Label** nodes. Takes priority over theme properties.

* * *

[String](class_string.md#class-string) **language** = `""` [🔗](#class-label-property-language)

- void **set\_language**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_language**()


Language code used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

[int](class_int.md#class-int) **lines\_skipped** = `0` [🔗](#class-label-property-lines-skipped)

- void **set\_lines\_skipped**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_lines\_skipped**()


The number of the lines ignored and not displayed from the start of the [text](#class-label-property-text) value.

* * *

[int](class_int.md#class-int) **max\_lines\_visible** = `-1` [🔗](#class-label-property-max-lines-visible)

- void **set\_max\_lines\_visible**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_lines\_visible**()


Limits the lines of text the node shows on screen.

* * *

[String](class_string.md#class-string) **paragraph\_separator** = `"\\n"` [🔗](#class-label-property-paragraph-separator)

- void **set\_paragraph\_separator**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_paragraph\_separator**()


String used as a paragraph separator. Each paragraph is processed independently, in its own BiDi context.

* * *

[StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **structured\_text\_bidi\_override** = `0` [🔗](#class-label-property-structured-text-bidi-override)

- void **set\_structured\_text\_bidi\_override**(value: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser))

- [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **get\_structured\_text\_bidi\_override**()


Set BiDi algorithm override for the structured text.

* * *

[Array](class_array.md#class-array) **structured\_text\_bidi\_override\_options** = `[]` [🔗](#class-label-property-structured-text-bidi-override-options)

- void **set\_structured\_text\_bidi\_override\_options**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_structured\_text\_bidi\_override\_options**()


Set additional options for BiDi override.

* * *

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **tab\_stops** = `PackedFloat32Array()` [🔗](#class-label-property-tab-stops)

- void **set\_tab\_stops**(value: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array))

- [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_tab\_stops**()


Aligns text to the given tab-stops.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) for more details.

* * *

[String](class_string.md#class-string) **text** = `""` [🔗](#class-label-property-text)

- void **set\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_text**()


The text to display on screen.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **text\_direction** = `0` [🔗](#class-label-property-text-direction)

- void **set\_text\_direction**(value: [TextDirection](class_control.md#enum-control-textdirection))

- [TextDirection](class_control.md#enum-control-textdirection) **get\_text\_direction**()


Base text writing direction.

* * *

[OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **text\_overrun\_behavior** = `0` [🔗](#class-label-property-text-overrun-behavior)

- void **set\_text\_overrun\_behavior**(value: [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior))

- [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **get\_text\_overrun\_behavior**()


The clipping behavior when the text exceeds the node's bounding rectangle.

* * *

[bool](class_bool.md#class-bool) **uppercase** = `false` [🔗](#class-label-property-uppercase)

- void **set\_uppercase**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_uppercase**()


If `true`, all the text displays as UPPERCASE.

* * *

[VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) **vertical\_alignment** = `0` [🔗](#class-label-property-vertical-alignment)

- void **set\_vertical\_alignment**(value: [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment))

- [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) **get\_vertical\_alignment**()


Controls the text's vertical alignment. Supports top, center, bottom, and fill.

* * *

[int](class_int.md#class-int) **visible\_characters** = `-1` [🔗](#class-label-property-visible-characters)

- void **set\_visible\_characters**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_visible\_characters**()


The number of characters to display. If set to `-1`, all characters are displayed. This can be useful when animating the text appearing in a dialog box.

**Note:** Setting this property updates [visible\_ratio](#class-label-property-visible-ratio) accordingly.

**Note:** Characters are counted as Unicode codepoints. A single visible grapheme may contain multiple codepoints (e.g. certain emoji use three codepoints). A single codepoint may contain two UTF-16 characters, which are used in C# strings.

* * *

[VisibleCharactersBehavior](class_textserver.md#enum-textserver-visiblecharactersbehavior) **visible\_characters\_behavior** = `0` [🔗](#class-label-property-visible-characters-behavior)

- void **set\_visible\_characters\_behavior**(value: [VisibleCharactersBehavior](class_textserver.md#enum-textserver-visiblecharactersbehavior))

- [VisibleCharactersBehavior](class_textserver.md#enum-textserver-visiblecharactersbehavior) **get\_visible\_characters\_behavior**()


The clipping behavior when [visible\_characters](#class-label-property-visible-characters) or [visible\_ratio](#class-label-property-visible-ratio) is set.

* * *

[float](class_float.md#class-float) **visible\_ratio** = `1.0` [🔗](#class-label-property-visible-ratio)

- void **set\_visible\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_visible\_ratio**()


The fraction of characters to display, relative to the total number of characters (see [get\_total\_character\_count()](#class-label-method-get-total-character-count)). If set to `1.0`, all characters are displayed. If set to `0.5`, only half of the characters will be displayed. This can be useful when animating the text appearing in a dialog box.

**Note:** Setting this property updates [visible\_characters](#class-label-property-visible-characters) accordingly.

* * *

## Method Descriptions

[Rect2](class_rect2.md#class-rect2) **get\_character\_bounds**(pos: [int](class_int.md#class-int)) const [🔗](#class-label-method-get-character-bounds)

Returns the bounding rectangle of the character at position `pos` in the label's local coordinate system. If the character is a non-visual character or `pos` is outside the valid range, an empty [Rect2](class_rect2.md#class-rect2) is returned. If the character is a part of a composite grapheme, the bounding rectangle of the whole grapheme is returned.

* * *

[int](class_int.md#class-int) **get\_line\_count**() const [🔗](#class-label-method-get-line-count)

Returns the number of lines of text the Label has.

* * *

[int](class_int.md#class-int) **get\_line\_height**(line: [int](class_int.md#class-int) = -1) const [🔗](#class-label-method-get-line-height)

Returns the height of the line `line`.

If `line` is set to `-1`, returns the biggest line height.

If there are no lines, returns font size in pixels.

* * *

[int](class_int.md#class-int) **get\_total\_character\_count**() const [🔗](#class-label-method-get-total-character-count)

Returns the total number of printable characters in the text (excluding spaces and newlines).

* * *

[int](class_int.md#class-int) **get\_visible\_line\_count**() const [🔗](#class-label-method-get-visible-line-count)

Returns the number of lines shown. Useful if the **Label**'s height cannot currently display all lines.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **font\_color** = `Color(1, 1, 1, 1)` [🔗](#class-label-theme-color-font-color)

Default text [Color](class_color.md#class-color) of the **Label**.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-label-theme-color-font-outline-color)

The color of text outline.

* * *

[Color](class_color.md#class-color) **font\_shadow\_color** = `Color(0, 0, 0, 0)` [🔗](#class-label-theme-color-font-shadow-color)

[Color](class_color.md#class-color) of the text's shadow effect.

* * *

[int](class_int.md#class-int) **line\_spacing** = `3` [🔗](#class-label-theme-constant-line-spacing)

Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-label-theme-constant-outline-size)

Text outline size.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-label-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

**Note:** Using a value that is larger than half the font size is not recommended, as the font outline may fail to be fully closed in this case.

* * *

[int](class_int.md#class-int) **paragraph\_spacing** = `0` [🔗](#class-label-theme-constant-paragraph-spacing)

Vertical space between paragraphs. Added on top of [line\_spacing](#class-label-theme-constant-line-spacing).

* * *

[int](class_int.md#class-int) **shadow\_offset\_x** = `1` [🔗](#class-label-theme-constant-shadow-offset-x)

The horizontal offset of the text's shadow.

* * *

[int](class_int.md#class-int) **shadow\_offset\_y** = `1` [🔗](#class-label-theme-constant-shadow-offset-y)

The vertical offset of the text's shadow.

* * *

[int](class_int.md#class-int) **shadow\_outline\_size** = `1` [🔗](#class-label-theme-constant-shadow-outline-size)

The size of the shadow outline.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-label-theme-font-font)

[Font](class_font.md#class-font) used for the **Label**'s text.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-label-theme-font-size-font-size)

Font size of the **Label**'s text.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **focus** [🔗](#class-label-theme-style-focus)

[StyleBox](class_stylebox.md#class-stylebox) used when the **Label** is focused (when used with assistive apps).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **normal** [🔗](#class-label-theme-style-normal)

Background [StyleBox](class_stylebox.md#class-stylebox) for the **Label**.

[Previous](class_joint3d.md "Joint3D") [Next](class_label3d.md "Label3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_joint3d.md "Joint3D") [Next](class_label3d.md "Label3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).