---
title: Font — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_font.html
crawled_at: "2026-08-13T10:22:00+12:00"
content_hash: 436486e8302779515bbc5727a15ff1df0426e26844d5452bb2e39bcb676122bb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Font

* * *

# Font

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [FontFile](class_fontfile.md#class-fontfile), [FontVariation](class_fontvariation.md#class-fontvariation), [SystemFont](class_systemfont.md#class-systemfont)

Abstract base class for fonts and font variations.

## Description

Abstract base class for different font types. It has methods for drawing text and font character introspection.

## Properties

|     |     |     |
| --- | --- | --- |
| [Array](class_array.md#class-array)\[ [Font](#class-font)\] | [fallbacks](#class-font-property-fallbacks) | `[]` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [draw\_char](#class-font-method-draw-char)(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), char: [int](class_int.md#class-int), font\_size: [int](class_int.md#class-int), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| [float](class_float.md#class-float) | [draw\_char\_outline](#class-font-method-draw-char-outline)(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), char: [int](class_int.md#class-int), font\_size: [int](class_int.md#class-int), size: [int](class_int.md#class-int) = -1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_multiline\_string](#class-font-method-draw-multiline-string)(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, max\_lines: [int](class_int.md#class-int) = -1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), brk\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] = 3, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_multiline\_string\_outline](#class-font-method-draw-multiline-string-outline)(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, max\_lines: [int](class_int.md#class-int) = -1, size: [int](class_int.md#class-int) = 1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), brk\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] = 3, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_string](#class-font-method-draw-string)(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_string\_outline](#class-font-method-draw-string-outline)(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, size: [int](class_int.md#class-int) = 1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const |
| [RID](class_rid.md#class-rid) | [find\_variation](#class-font-method-find-variation)(variation\_coordinates: [Dictionary](class_dictionary.md#class-dictionary), face\_index: [int](class_int.md#class-int) = 0, strength: [float](class_float.md#class-float) = 0.0, transform: [Transform2D](class_transform2d.md#class-transform2d) = Transform2D(1, 0, 0, 1, 0, 0), spacing\_top: [int](class_int.md#class-int) = 0, spacing\_bottom: [int](class_int.md#class-int) = 0, spacing\_space: [int](class_int.md#class-int) = 0, spacing\_glyph: [int](class_int.md#class-int) = 0, baseline\_offset: [float](class_float.md#class-float) = 0.0) const |
| [float](class_float.md#class-float) | [get\_ascent](#class-font-method-get-ascent)(font\_size: [int](class_int.md#class-int) = 16) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_char\_size](#class-font-method-get-char-size)(char: [int](class_int.md#class-int), font\_size: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_descent](#class-font-method-get-descent)(font\_size: [int](class_int.md#class-int) = 16) const |
| [int](class_int.md#class-int) | [get\_face\_count](#class-font-method-get-face-count)() const |
| [String](class_string.md#class-string) | [get\_font\_name](#class-font-method-get-font-name)() const |
| [int](class_int.md#class-int) | [get\_font\_stretch](#class-font-method-get-font-stretch)() const |
| BitField\[ [FontStyle](class_textserver.md#enum-textserver-fontstyle)\] | [get\_font\_style](#class-font-method-get-font-style)() const |
| [String](class_string.md#class-string) | [get\_font\_style\_name](#class-font-method-get-font-style-name)() const |
| [int](class_int.md#class-int) | [get\_font\_weight](#class-font-method-get-font-weight)() const |
| [float](class_float.md#class-float) | [get\_height](#class-font-method-get-height)(font\_size: [int](class_int.md#class-int) = 16) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_multiline\_string\_size](#class-font-method-get-multiline-string-size)(text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, max\_lines: [int](class_int.md#class-int) = -1, brk\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] = 3, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_opentype\_features](#class-font-method-get-opentype-features)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_ot\_name\_strings](#class-font-method-get-ot-name-strings)() const |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [get\_rids](#class-font-method-get-rids)() const |
| [int](class_int.md#class-int) | [get\_spacing](#class-font-method-get-spacing)(spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_string\_size](#class-font-method-get-string-size)(text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0) const |
| [String](class_string.md#class-string) | [get\_supported\_chars](#class-font-method-get-supported-chars)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_supported\_feature\_list](#class-font-method-get-supported-feature-list)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_supported\_variation\_list](#class-font-method-get-supported-variation-list)() const |
| [float](class_float.md#class-float) | [get\_underline\_position](#class-font-method-get-underline-position)(font\_size: [int](class_int.md#class-int) = 16) const |
| [float](class_float.md#class-float) | [get\_underline\_thickness](#class-font-method-get-underline-thickness)(font\_size: [int](class_int.md#class-int) = 16) const |
| [bool](class_bool.md#class-bool) | [has\_char](#class-font-method-has-char)(char: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_language\_supported](#class-font-method-is-language-supported)(language: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_script\_supported](#class-font-method-is-script-supported)(script: [String](class_string.md#class-string)) const |
| void | [set\_cache\_capacity](#class-font-method-set-cache-capacity)(single\_line: [int](class_int.md#class-int), multi\_line: [int](class_int.md#class-int)) |

* * *

## Property Descriptions

[Array](class_array.md#class-array)\[ [Font](#class-font)\] **fallbacks** = `[]` [🔗](#class-font-property-fallbacks)

- void **set\_fallbacks**(value: [Array](class_array.md#class-array)\[ [Font](#class-font)\])

- [Array](class_array.md#class-array)\[ [Font](#class-font)\] **get\_fallbacks**()


Array of fallback **Font** s to use as a substitute if a glyph is not found in this current **Font**.

If this array is empty in a [FontVariation](class_fontvariation.md#class-fontvariation), the [FontVariation.base\_font](class_fontvariation.md#class-fontvariation-property-base-font)'s fallbacks are used instead.

* * *

## Method Descriptions

[float](class_float.md#class-float) **draw\_char**(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), char: [int](class_int.md#class-int), font\_size: [int](class_int.md#class-int), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-font-method-draw-char)

Draw a single Unicode character `char` into a canvas item using the font, at a given position, with `modulate` color. `pos` specifies the baseline, not the top. To draw from the top, _ascent_ must be added to the Y axis. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

**Note:** Do not use this function to draw strings character by character, use [draw\_string()](#class-font-method-draw-string) or [TextLine](class_textline.md#class-textline) instead.

* * *

[float](class_float.md#class-float) **draw\_char\_outline**(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), char: [int](class_int.md#class-int), font\_size: [int](class_int.md#class-int), size: [int](class_int.md#class-int) = -1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-font-method-draw-char-outline)

Draw a single Unicode character `char` outline into a canvas item using the font, at a given position, with `modulate` color and `size` outline size. `pos` specifies the baseline, not the top. To draw from the top, _ascent_ must be added to the Y axis. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

**Note:** Do not use this function to draw strings character by character, use [draw\_string()](#class-font-method-draw-string) or [TextLine](class_textline.md#class-textline) instead.

* * *

void **draw\_multiline\_string**(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, max\_lines: [int](class_int.md#class-int) = -1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), brk\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] = 3, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-font-method-draw-multiline-string)

Breaks `text` into lines using rules specified by `brk_flags` and draws it into a canvas item using the font, at a given position, with `modulate` color, optionally clipping the width and aligning horizontally. `pos` specifies the baseline of the first line, not the top. To draw from the top, _ascent_ must be added to the Y axis. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

See also [CanvasItem.draw\_multiline\_string()](class_canvasitem.md#class-canvasitem-method-draw-multiline-string).

* * *

void **draw\_multiline\_string\_outline**(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, max\_lines: [int](class_int.md#class-int) = -1, size: [int](class_int.md#class-int) = 1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), brk\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] = 3, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-font-method-draw-multiline-string-outline)

Breaks `text` to the lines using rules specified by `brk_flags` and draws text outline into a canvas item using the font, at a given position, with `modulate` color and `size` outline size, optionally clipping the width and aligning horizontally. `pos` specifies the baseline of the first line, not the top. To draw from the top, _ascent_ must be added to the Y axis. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

See also [CanvasItem.draw\_multiline\_string\_outline()](class_canvasitem.md#class-canvasitem-method-draw-multiline-string-outline).

* * *

void **draw\_string**(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-font-method-draw-string)

Draw `text` into a canvas item using the font, at a given position, with `modulate` color, optionally clipping the width and aligning horizontally. `pos` specifies the baseline, not the top. To draw from the top, _ascent_ must be added to the Y axis. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

See also [CanvasItem.draw\_string()](class_canvasitem.md#class-canvasitem-method-draw-string).

* * *

void **draw\_string\_outline**(canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, size: [int](class_int.md#class-int) = 1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-font-method-draw-string-outline)

Draw `text` outline into a canvas item using the font, at a given position, with `modulate` color and `size` outline size, optionally clipping the width and aligning horizontally. `pos` specifies the baseline, not the top. To draw from the top, _ascent_ must be added to the Y axis. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

See also [CanvasItem.draw\_string\_outline()](class_canvasitem.md#class-canvasitem-method-draw-string-outline).

* * *

[RID](class_rid.md#class-rid) **find\_variation**(variation\_coordinates: [Dictionary](class_dictionary.md#class-dictionary), face\_index: [int](class_int.md#class-int) = 0, strength: [float](class_float.md#class-float) = 0.0, transform: [Transform2D](class_transform2d.md#class-transform2d) = Transform2D(1, 0, 0, 1, 0, 0), spacing\_top: [int](class_int.md#class-int) = 0, spacing\_bottom: [int](class_int.md#class-int) = 0, spacing\_space: [int](class_int.md#class-int) = 0, spacing\_glyph: [int](class_int.md#class-int) = 0, baseline\_offset: [float](class_float.md#class-float) = 0.0) const [🔗](#class-font-method-find-variation)

Returns [TextServer](class_textserver.md#class-textserver) RID of the font cache for specific variation.

* * *

[float](class_float.md#class-float) **get\_ascent**(font\_size: [int](class_int.md#class-int) = 16) const [🔗](#class-font-method-get-ascent)

Returns the average font ascent (number of pixels above the baseline).

**Note:** Real ascent of the string is context-dependent and can be significantly different from the value returned by this function. Use it only as rough estimate (e.g. as the ascent of empty line).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_char\_size**(char: [int](class_int.md#class-int), font\_size: [int](class_int.md#class-int)) const [🔗](#class-font-method-get-char-size)

Returns the size of a character. Does not take kerning into account.

**Note:** Do not use this function to calculate width of the string character by character, use [get\_string\_size()](#class-font-method-get-string-size) or [TextLine](class_textline.md#class-textline) instead. The height returned is the font height (see also [get\_height()](#class-font-method-get-height)) and has no relation to the glyph height.

* * *

[float](class_float.md#class-float) **get\_descent**(font\_size: [int](class_int.md#class-int) = 16) const [🔗](#class-font-method-get-descent)

Returns the average font descent (number of pixels below the baseline).

**Note:** Real descent of the string is context-dependent and can be significantly different from the value returned by this function. Use it only as rough estimate (e.g. as the descent of empty line).

* * *

[int](class_int.md#class-int) **get\_face\_count**() const [🔗](#class-font-method-get-face-count)

Returns number of faces in the TrueType / OpenType collection.

* * *

[String](class_string.md#class-string) **get\_font\_name**() const [🔗](#class-font-method-get-font-name)

Returns font family name.

* * *

[int](class_int.md#class-int) **get\_font\_stretch**() const [🔗](#class-font-method-get-font-stretch)

Returns font stretch amount, compared to a normal width. A percentage value between `50%` and `200%`.

* * *

BitField\[ [FontStyle](class_textserver.md#enum-textserver-fontstyle)\] **get\_font\_style**() const [🔗](#class-font-method-get-font-style)

Returns font style flags.

* * *

[String](class_string.md#class-string) **get\_font\_style\_name**() const [🔗](#class-font-method-get-font-style-name)

Returns font style name.

* * *

[int](class_int.md#class-int) **get\_font\_weight**() const [🔗](#class-font-method-get-font-weight)

Returns weight (boldness) of the font. A value in the `100...999` range, normal font weight is `400`, bold font weight is `700`.

* * *

[float](class_float.md#class-float) **get\_height**(font\_size: [int](class_int.md#class-int) = 16) const [🔗](#class-font-method-get-height)

Returns the total average font height (ascent plus descent) in pixels.

**Note:** Real height of the string is context-dependent and can be significantly different from the value returned by this function. Use it only as rough estimate (e.g. as the height of empty line).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_multiline\_string\_size**(text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, max\_lines: [int](class_int.md#class-int) = -1, brk\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] = 3, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0) const [🔗](#class-font-method-get-multiline-string-size)

Returns the size of a bounding box of a string broken into the lines, taking kerning and advance into account.

See also [draw\_multiline\_string()](#class-font-method-draw-multiline-string).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_opentype\_features**() const [🔗](#class-font-method-get-opentype-features)

Returns a set of OpenType feature tags. More info: [OpenType feature tags](https://docs.microsoft.com/en-us/typography/opentype/spec/featuretags).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_ot\_name\_strings**() const [🔗](#class-font-method-get-ot-name-strings)

Returns [Dictionary](class_dictionary.md#class-dictionary) with OpenType font name strings (localized font names, version, description, license information, sample text, etc.).

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_rids**() const [🔗](#class-font-method-get-rids)

Returns [Array](class_array.md#class-array) of valid **Font** [RID](class_rid.md#class-rid) s, which can be passed to the [TextServer](class_textserver.md#class-textserver) methods.

* * *

[int](class_int.md#class-int) **get\_spacing**(spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype)) const [🔗](#class-font-method-get-spacing)

Returns the amount of spacing for the given `spacing` type.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_string\_size**(text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0) const [🔗](#class-font-method-get-string-size)

Returns the size of a bounding box of a single-line string, taking kerning, advance and subpixel positioning into account. See also [get\_multiline\_string\_size()](#class-font-method-get-multiline-string-size) and [draw\_string()](#class-font-method-draw-string).

For example, to get the string size as displayed by a single-line Label, use:

GDScriptC#

```
var string_size = $Label.get_theme_font("font").get_string_size($Label.text, HORIZONTAL_ALIGNMENT_LEFT, -1, $Label.get_theme_font_size("font_size"))

```

```
Label label = GetNode<Label>("Label");
Vector2 stringSize = label.GetThemeFont("font").GetStringSize(label.Text, HorizontalAlignment.Left, -1, label.GetThemeFontSize("font_size"));

```

**Note:** Since kerning, advance and subpixel positioning are taken into account by [get\_string\_size()](#class-font-method-get-string-size), using separate [get\_string\_size()](#class-font-method-get-string-size) calls on substrings of a string then adding the results together will return a different result compared to using a single [get\_string\_size()](#class-font-method-get-string-size) call on the full string.

**Note:** Real height of the string is context-dependent and can be significantly different from the value returned by [get\_height()](#class-font-method-get-height).

* * *

[String](class_string.md#class-string) **get\_supported\_chars**() const [🔗](#class-font-method-get-supported-chars)

Returns a string containing all the characters available in the font.

If a given character is included in more than one font data source, it appears only once in the returned string.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_supported\_feature\_list**() const [🔗](#class-font-method-get-supported-feature-list)

Returns list of OpenType features supported by font.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_supported\_variation\_list**() const [🔗](#class-font-method-get-supported-variation-list)

Returns list of supported [variation coordinates](https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg), each coordinate is returned as `tag: Vector3i(min_value,max_value,default_value)`.

Font variations allow for continuous change of glyph characteristics along some given design axis, such as weight, width or slant.

To print available variation axes of a variable font:

```
var fv = FontVariation.new()
fv.base_font = load("res://RobotoFlex.ttf")
var variation_list = fv.get_supported_variation_list()
for tag in variation_list:
    var name = TextServerManager.get_primary_interface().tag_to_name(tag)
    var values = variation_list[tag]
    print("variation axis: %s (%d)\n\tmin, max, default: %s" % [name, tag, values])

```

**Note:** To set and get variation coordinates of a [FontVariation](class_fontvariation.md#class-fontvariation), use [FontVariation.variation\_opentype](class_fontvariation.md#class-fontvariation-property-variation-opentype).

* * *

[float](class_float.md#class-float) **get\_underline\_position**(font\_size: [int](class_int.md#class-int) = 16) const [🔗](#class-font-method-get-underline-position)

Returns average pixel offset of the underline below the baseline.

**Note:** Real underline position of the string is context-dependent and can be significantly different from the value returned by this function. Use it only as rough estimate.

* * *

[float](class_float.md#class-float) **get\_underline\_thickness**(font\_size: [int](class_int.md#class-int) = 16) const [🔗](#class-font-method-get-underline-thickness)

Returns average thickness of the underline.

**Note:** Real underline thickness of the string is context-dependent and can be significantly different from the value returned by this function. Use it only as rough estimate.

* * *

[bool](class_bool.md#class-bool) **has\_char**(char: [int](class_int.md#class-int)) const [🔗](#class-font-method-has-char)

Returns `true` if a Unicode `char` is available in the font.

* * *

[bool](class_bool.md#class-bool) **is\_language\_supported**(language: [String](class_string.md#class-string)) const [🔗](#class-font-method-is-language-supported)

Returns `true`, if font supports given language ( [ISO 639](https://en.wikipedia.org/wiki/ISO_639-1) code).

* * *

[bool](class_bool.md#class-bool) **is\_script\_supported**(script: [String](class_string.md#class-string)) const [🔗](#class-font-method-is-script-supported)

Returns `true`, if font supports given script ( [ISO 15924](https://en.wikipedia.org/wiki/ISO_15924) code).

* * *

void **set\_cache\_capacity**(single\_line: [int](class_int.md#class-int), multi\_line: [int](class_int.md#class-int)) [🔗](#class-font-method-set-cache-capacity)

Sets LRU cache capacity for `draw_*` methods.

[Previous](class_foldablegroup.md "FoldableGroup") [Next](class_fontfile.md "FontFile")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_foldablegroup.md "FoldableGroup") [Next](class_fontfile.md "FontFile")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).