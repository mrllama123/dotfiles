---
title: TextParagraph — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_textparagraph.html
crawled_at: "2026-08-13T10:23:23+12:00"
content_hash: fcbfae5d30d14aaec195c8897f29aa47b5b65853816ca5a3f5752a07197f85e5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextParagraph

* * *

# TextParagraph

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds a paragraph of text.

## Description

Abstraction over [TextServer](class_textserver.md#class-textserver) for handling a single paragraph of text.

## Properties

|     |     |     |
| --- | --- | --- |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [alignment](#class-textparagraph-property-alignment) | `0` |
| BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] | [break\_flags](#class-textparagraph-property-break-flags) | `3` |
| [String](class_string.md#class-string) | [custom\_punctuation](#class-textparagraph-property-custom-punctuation) | `""` |
| [Direction](class_textserver.md#enum-textserver-direction) | [direction](#class-textparagraph-property-direction) | `0` |
| [String](class_string.md#class-string) | [ellipsis\_char](#class-textparagraph-property-ellipsis-char) | `"…"` |
| BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] | [justification\_flags](#class-textparagraph-property-justification-flags) | `163` |
| [float](class_float.md#class-float) | [line\_spacing](#class-textparagraph-property-line-spacing) | `0.0` |
| [int](class_int.md#class-int) | [max\_lines\_visible](#class-textparagraph-property-max-lines-visible) | `-1` |
| [Orientation](class_textserver.md#enum-textserver-orientation) | [orientation](#class-textparagraph-property-orientation) | `0` |
| [bool](class_bool.md#class-bool) | [preserve\_control](#class-textparagraph-property-preserve-control) | `false` |
| [bool](class_bool.md#class-bool) | [preserve\_invalid](#class-textparagraph-property-preserve-invalid) | `true` |
| [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) | [text\_overrun\_behavior](#class-textparagraph-property-text-overrun-behavior) | `0` |
| [float](class_float.md#class-float) | [width](#class-textparagraph-property-width) | `-1.0` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [add\_object](#class-textparagraph-method-add-object)(key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, length: [int](class_int.md#class-int) = 1, baseline: [float](class_float.md#class-float) = 0.0) |
| [bool](class_bool.md#class-bool) | [add\_string](#class-textparagraph-method-add-string)(text: [String](class_string.md#class-string), font: [Font](class_font.md#class-font), font\_size: [int](class_int.md#class-int), language: [String](class_string.md#class-string) = "", meta: [Variant](class_variant.md#class-variant) = null) |
| void | [clear](#class-textparagraph-method-clear)() |
| void | [clear\_dropcap](#class-textparagraph-method-clear-dropcap)() |
| void | [draw](#class-textparagraph-method-draw)(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), dc\_color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_dropcap](#class-textparagraph-method-draw-dropcap)(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_dropcap\_outline](#class-textparagraph-method-draw-dropcap-outline)(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), outline\_size: [int](class_int.md#class-int) = 1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_line](#class-textparagraph-method-draw-line)(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), line: [int](class_int.md#class-int), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_line\_outline](#class-textparagraph-method-draw-line-outline)(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), line: [int](class_int.md#class-int), outline\_size: [int](class_int.md#class-int) = 1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_outline](#class-textparagraph-method-draw-outline)(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), outline\_size: [int](class_int.md#class-int) = 1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), dc\_color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| [int](class_int.md#class-int) | [get\_dropcap\_lines](#class-textparagraph-method-get-dropcap-lines)() const |
| [RID](class_rid.md#class-rid) | [get\_dropcap\_rid](#class-textparagraph-method-get-dropcap-rid)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_dropcap\_size](#class-textparagraph-method-get-dropcap-size)() const |
| [Direction](class_textserver.md#enum-textserver-direction) | [get\_inferred\_direction](#class-textparagraph-method-get-inferred-direction)() const |
| [float](class_float.md#class-float) | [get\_line\_ascent](#class-textparagraph-method-get-line-ascent)(line: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_line\_count](#class-textparagraph-method-get-line-count)() const |
| [float](class_float.md#class-float) | [get\_line\_descent](#class-textparagraph-method-get-line-descent)(line: [int](class_int.md#class-int)) const |
| [Rect2](class_rect2.md#class-rect2) | [get\_line\_object\_rect](#class-textparagraph-method-get-line-object-rect)(line: [int](class_int.md#class-int), key: [Variant](class_variant.md#class-variant)) const |
| [Array](class_array.md#class-array) | [get\_line\_objects](#class-textparagraph-method-get-line-objects)(line: [int](class_int.md#class-int)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_line\_range](#class-textparagraph-method-get-line-range)(line: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_line\_rid](#class-textparagraph-method-get-line-rid)(line: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_line\_size](#class-textparagraph-method-get-line-size)(line: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_line\_underline\_position](#class-textparagraph-method-get-line-underline-position)(line: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_line\_underline\_thickness](#class-textparagraph-method-get-line-underline-thickness)(line: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_line\_width](#class-textparagraph-method-get-line-width)(line: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_non\_wrapped\_size](#class-textparagraph-method-get-non-wrapped-size)() const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_range](#class-textparagraph-method-get-range)() const |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-textparagraph-method-get-rid)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_size](#class-textparagraph-method-get-size)() const |
| [int](class_int.md#class-int) | [hit\_test](#class-textparagraph-method-hit-test)(coords: [Vector2](class_vector2.md#class-vector2)) const |
| [bool](class_bool.md#class-bool) | [resize\_object](#class-textparagraph-method-resize-object)(key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, baseline: [float](class_float.md#class-float) = 0.0) |
| void | [set\_bidi\_override](#class-textparagraph-method-set-bidi-override)(override: [Array](class_array.md#class-array)) |
| [bool](class_bool.md#class-bool) | [set\_dropcap](#class-textparagraph-method-set-dropcap)(text: [String](class_string.md#class-string), font: [Font](class_font.md#class-font), font\_size: [int](class_int.md#class-int), dropcap\_margins: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), language: [String](class_string.md#class-string) = "") |
| void | [tab\_align](#class-textparagraph-method-tab-align)(tab\_stops: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |

* * *

## Property Descriptions

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **alignment** = `0` [🔗](#class-textparagraph-property-alignment)

- void **set\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_alignment**()


Paragraph horizontal alignment.

* * *

BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] **break\_flags** = `3` [🔗](#class-textparagraph-property-break-flags)

- void **set\_break\_flags**(value: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\])

- BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] **get\_break\_flags**()


Line breaking rules. For more info see [TextServer](class_textserver.md#class-textserver).

* * *

[String](class_string.md#class-string) **custom\_punctuation** = `""` [🔗](#class-textparagraph-property-custom-punctuation)

- void **set\_custom\_punctuation**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_custom\_punctuation**()


Custom punctuation character list, used for word breaking. If set to empty string, server defaults are used.

* * *

[Direction](class_textserver.md#enum-textserver-direction) **direction** = `0` [🔗](#class-textparagraph-property-direction)

- void **set\_direction**(value: [Direction](class_textserver.md#enum-textserver-direction))

- [Direction](class_textserver.md#enum-textserver-direction) **get\_direction**()


Text writing direction.

* * *

[String](class_string.md#class-string) **ellipsis\_char** = `"…"` [🔗](#class-textparagraph-property-ellipsis-char)

- void **set\_ellipsis\_char**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_ellipsis\_char**()


Ellipsis character used for text clipping.

* * *

BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **justification\_flags** = `163` [🔗](#class-textparagraph-property-justification-flags)

- void **set\_justification\_flags**(value: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\])

- BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **get\_justification\_flags**()


Line fill alignment rules.

* * *

[float](class_float.md#class-float) **line\_spacing** = `0.0` [🔗](#class-textparagraph-property-line-spacing)

- void **set\_line\_spacing**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_line\_spacing**()


Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

* * *

[int](class_int.md#class-int) **max\_lines\_visible** = `-1` [🔗](#class-textparagraph-property-max-lines-visible)

- void **set\_max\_lines\_visible**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_lines\_visible**()


Limits the lines of text shown.

* * *

[Orientation](class_textserver.md#enum-textserver-orientation) **orientation** = `0` [🔗](#class-textparagraph-property-orientation)

- void **set\_orientation**(value: [Orientation](class_textserver.md#enum-textserver-orientation))

- [Orientation](class_textserver.md#enum-textserver-orientation) **get\_orientation**()


Text orientation.

* * *

[bool](class_bool.md#class-bool) **preserve\_control** = `false` [🔗](#class-textparagraph-property-preserve-control)

- void **set\_preserve\_control**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_preserve\_control**()


If set to `true` text will display control characters.

* * *

[bool](class_bool.md#class-bool) **preserve\_invalid** = `true` [🔗](#class-textparagraph-property-preserve-invalid)

- void **set\_preserve\_invalid**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_preserve\_invalid**()


If set to `true` text will display invalid characters.

* * *

[OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **text\_overrun\_behavior** = `0` [🔗](#class-textparagraph-property-text-overrun-behavior)

- void **set\_text\_overrun\_behavior**(value: [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior))

- [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **get\_text\_overrun\_behavior**()


The clipping behavior when the text exceeds the paragraph's set width.

* * *

[float](class_float.md#class-float) **width** = `-1.0` [🔗](#class-textparagraph-property-width)

- void **set\_width**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_width**()


Paragraph width.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **add\_object**(key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, length: [int](class_int.md#class-int) = 1, baseline: [float](class_float.md#class-float) = 0.0) [🔗](#class-textparagraph-method-add-object)

Adds inline object to the text buffer, `key` must be unique. In the text, object is represented as `length` object replacement characters.

* * *

[bool](class_bool.md#class-bool) **add\_string**(text: [String](class_string.md#class-string), font: [Font](class_font.md#class-font), font\_size: [int](class_int.md#class-int), language: [String](class_string.md#class-string) = "", meta: [Variant](class_variant.md#class-variant) = null) [🔗](#class-textparagraph-method-add-string)

Adds text span and font to draw it.

* * *

void **clear**() [🔗](#class-textparagraph-method-clear)

Clears text paragraph (removes text and inline objects).

* * *

void **clear\_dropcap**() [🔗](#class-textparagraph-method-clear-dropcap)

Removes dropcap.

* * *

void **draw**(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), dc\_color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textparagraph-method-draw)

Draw all lines of the text and drop cap into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **draw\_dropcap**(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textparagraph-method-draw-dropcap)

Draw drop cap into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **draw\_dropcap\_outline**(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), outline\_size: [int](class_int.md#class-int) = 1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textparagraph-method-draw-dropcap-outline)

Draw drop cap outline into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **draw\_line**(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), line: [int](class_int.md#class-int), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textparagraph-method-draw-line)

Draw single line of text into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **draw\_line\_outline**(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), line: [int](class_int.md#class-int), outline\_size: [int](class_int.md#class-int) = 1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textparagraph-method-draw-line-outline)

Draw outline of the single line of text into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **draw\_outline**(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), outline\_size: [int](class_int.md#class-int) = 1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), dc\_color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textparagraph-method-draw-outline)

Draw outlines of all lines of the text and drop cap into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

[int](class_int.md#class-int) **get\_dropcap\_lines**() const [🔗](#class-textparagraph-method-get-dropcap-lines)

Returns number of lines used by dropcap.

* * *

[RID](class_rid.md#class-rid) **get\_dropcap\_rid**() const [🔗](#class-textparagraph-method-get-dropcap-rid)

Returns drop cap text buffer RID.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_dropcap\_size**() const [🔗](#class-textparagraph-method-get-dropcap-size)

Returns drop cap bounding box size.

* * *

[Direction](class_textserver.md#enum-textserver-direction) **get\_inferred\_direction**() const [🔗](#class-textparagraph-method-get-inferred-direction)

Returns the text writing direction inferred by the BiDi algorithm.

* * *

[float](class_float.md#class-float) **get\_line\_ascent**(line: [int](class_int.md#class-int)) const [🔗](#class-textparagraph-method-get-line-ascent)

Returns the text line ascent (number of pixels above the baseline for horizontal layout or to the left of baseline for vertical).

* * *

[int](class_int.md#class-int) **get\_line\_count**() const [🔗](#class-textparagraph-method-get-line-count)

Returns number of lines in the paragraph.

* * *

[float](class_float.md#class-float) **get\_line\_descent**(line: [int](class_int.md#class-int)) const [🔗](#class-textparagraph-method-get-line-descent)

Returns the text line descent (number of pixels below the baseline for horizontal layout or to the right of baseline for vertical).

* * *

[Rect2](class_rect2.md#class-rect2) **get\_line\_object\_rect**(line: [int](class_int.md#class-int), key: [Variant](class_variant.md#class-variant)) const [🔗](#class-textparagraph-method-get-line-object-rect)

Returns bounding rectangle of the inline object.

* * *

[Array](class_array.md#class-array) **get\_line\_objects**(line: [int](class_int.md#class-int)) const [🔗](#class-textparagraph-method-get-line-objects)

Returns array of inline objects in the line.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_line\_range**(line: [int](class_int.md#class-int)) const [🔗](#class-textparagraph-method-get-line-range)

Returns character range of the line.

* * *

[RID](class_rid.md#class-rid) **get\_line\_rid**(line: [int](class_int.md#class-int)) const [🔗](#class-textparagraph-method-get-line-rid)

Returns TextServer line buffer RID.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_line\_size**(line: [int](class_int.md#class-int)) const [🔗](#class-textparagraph-method-get-line-size)

Returns size of the bounding box of the line of text. Returned size is rounded up.

* * *

[float](class_float.md#class-float) **get\_line\_underline\_position**(line: [int](class_int.md#class-int)) const [🔗](#class-textparagraph-method-get-line-underline-position)

Returns pixel offset of the underline below the baseline.

* * *

[float](class_float.md#class-float) **get\_line\_underline\_thickness**(line: [int](class_int.md#class-int)) const [🔗](#class-textparagraph-method-get-line-underline-thickness)

Returns thickness of the underline.

* * *

[float](class_float.md#class-float) **get\_line\_width**(line: [int](class_int.md#class-int)) const [🔗](#class-textparagraph-method-get-line-width)

Returns width (for horizontal layout) or height (for vertical) of the line of text.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_non\_wrapped\_size**() const [🔗](#class-textparagraph-method-get-non-wrapped-size)

Returns the size of the bounding box of the paragraph, without line breaks.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_range**() const [🔗](#class-textparagraph-method-get-range)

Returns the character range of the paragraph.

* * *

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-textparagraph-method-get-rid)

Returns TextServer full string buffer RID.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_size**() const [🔗](#class-textparagraph-method-get-size)

Returns the size of the bounding box of the paragraph.

* * *

[int](class_int.md#class-int) **hit\_test**(coords: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-textparagraph-method-hit-test)

Returns caret character offset at the specified coordinates. This function always returns a valid position.

* * *

[bool](class_bool.md#class-bool) **resize\_object**(key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, baseline: [float](class_float.md#class-float) = 0.0) [🔗](#class-textparagraph-method-resize-object)

Sets new size and alignment of embedded object.

* * *

void **set\_bidi\_override**(override: [Array](class_array.md#class-array)) [🔗](#class-textparagraph-method-set-bidi-override)

Overrides BiDi for the structured text.

Override ranges should cover full source text without overlaps. BiDi algorithm will be used on each range separately.

* * *

[bool](class_bool.md#class-bool) **set\_dropcap**(text: [String](class_string.md#class-string), font: [Font](class_font.md#class-font), font\_size: [int](class_int.md#class-int), dropcap\_margins: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), language: [String](class_string.md#class-string) = "") [🔗](#class-textparagraph-method-set-dropcap)

Sets drop cap, overrides previously set drop cap. Drop cap (dropped capital) is a decorative element at the beginning of a paragraph that is larger than the rest of the text.

* * *

void **tab\_align**(tab\_stops: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-textparagraph-method-tab-align)

Aligns paragraph to the given tab-stops.

[Previous](class_textline.md "TextLine") [Next](class_textserver.md "TextServer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_textline.md "TextLine") [Next](class_textserver.md "TextServer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).