---
title: TextLine — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_textline.html
crawled_at: "2026-08-13T10:25:22+12:00"
content_hash: a91316b59dadce55e7600d38d00b0c4ab75cd689a78cc588c2a1bc8ed7c1e258
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextLine

* * *

# TextLine

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds a line of text.

## Description

Abstraction over [TextServer](class_textserver.md#class-textserver) for handling a single line of text.

## Properties

|     |     |     |
| --- | --- | --- |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [alignment](#class-textline-property-alignment) | `0` |
| [Direction](class_textserver.md#enum-textserver-direction) | [direction](#class-textline-property-direction) | `0` |
| [String](class_string.md#class-string) | [ellipsis\_char](#class-textline-property-ellipsis-char) | `"…"` |
| BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] | [flags](#class-textline-property-flags) | `3` |
| [Orientation](class_textserver.md#enum-textserver-orientation) | [orientation](#class-textline-property-orientation) | `0` |
| [bool](class_bool.md#class-bool) | [preserve\_control](#class-textline-property-preserve-control) | `false` |
| [bool](class_bool.md#class-bool) | [preserve\_invalid](#class-textline-property-preserve-invalid) | `true` |
| [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) | [text\_overrun\_behavior](#class-textline-property-text-overrun-behavior) | `3` |
| [float](class_float.md#class-float) | [width](#class-textline-property-width) | `-1.0` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [add\_object](#class-textline-method-add-object)(key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, length: [int](class_int.md#class-int) = 1, baseline: [float](class_float.md#class-float) = 0.0) |
| [bool](class_bool.md#class-bool) | [add\_string](#class-textline-method-add-string)(text: [String](class_string.md#class-string), font: [Font](class_font.md#class-font), font\_size: [int](class_int.md#class-int), language: [String](class_string.md#class-string) = "", meta: [Variant](class_variant.md#class-variant) = null) |
| void | [clear](#class-textline-method-clear)() |
| void | [draw](#class-textline-method-draw)(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_outline](#class-textline-method-draw-outline)(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), outline\_size: [int](class_int.md#class-int) = 1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| [Direction](class_textserver.md#enum-textserver-direction) | [get\_inferred\_direction](#class-textline-method-get-inferred-direction)() const |
| [float](class_float.md#class-float) | [get\_line\_ascent](#class-textline-method-get-line-ascent)() const |
| [float](class_float.md#class-float) | [get\_line\_descent](#class-textline-method-get-line-descent)() const |
| [float](class_float.md#class-float) | [get\_line\_underline\_position](#class-textline-method-get-line-underline-position)() const |
| [float](class_float.md#class-float) | [get\_line\_underline\_thickness](#class-textline-method-get-line-underline-thickness)() const |
| [float](class_float.md#class-float) | [get\_line\_width](#class-textline-method-get-line-width)() const |
| [Rect2](class_rect2.md#class-rect2) | [get\_object\_rect](#class-textline-method-get-object-rect)(key: [Variant](class_variant.md#class-variant)) const |
| [Array](class_array.md#class-array) | [get\_objects](#class-textline-method-get-objects)() const |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-textline-method-get-rid)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_size](#class-textline-method-get-size)() const |
| [int](class_int.md#class-int) | [hit\_test](#class-textline-method-hit-test)(coords: [float](class_float.md#class-float)) const |
| [bool](class_bool.md#class-bool) | [resize\_object](#class-textline-method-resize-object)(key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, baseline: [float](class_float.md#class-float) = 0.0) |
| void | [set\_bidi\_override](#class-textline-method-set-bidi-override)(override: [Array](class_array.md#class-array)) |
| void | [tab\_align](#class-textline-method-tab-align)(tab\_stops: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |

* * *

## Property Descriptions

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **alignment** = `0` [🔗](#class-textline-property-alignment)

- void **set\_horizontal\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_horizontal\_alignment**()


Sets text alignment within the line as if the line was horizontal.

* * *

[Direction](class_textserver.md#enum-textserver-direction) **direction** = `0` [🔗](#class-textline-property-direction)

- void **set\_direction**(value: [Direction](class_textserver.md#enum-textserver-direction))

- [Direction](class_textserver.md#enum-textserver-direction) **get\_direction**()


Text writing direction.

* * *

[String](class_string.md#class-string) **ellipsis\_char** = `"…"` [🔗](#class-textline-property-ellipsis-char)

- void **set\_ellipsis\_char**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_ellipsis\_char**()


Ellipsis character used for text clipping.

* * *

BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **flags** = `3` [🔗](#class-textline-property-flags)

- void **set\_flags**(value: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\])

- BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **get\_flags**()


Line alignment rules. For more info see [TextServer](class_textserver.md#class-textserver).

* * *

[Orientation](class_textserver.md#enum-textserver-orientation) **orientation** = `0` [🔗](#class-textline-property-orientation)

- void **set\_orientation**(value: [Orientation](class_textserver.md#enum-textserver-orientation))

- [Orientation](class_textserver.md#enum-textserver-orientation) **get\_orientation**()


Text orientation.

* * *

[bool](class_bool.md#class-bool) **preserve\_control** = `false` [🔗](#class-textline-property-preserve-control)

- void **set\_preserve\_control**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_preserve\_control**()


If set to `true` text will display control characters.

* * *

[bool](class_bool.md#class-bool) **preserve\_invalid** = `true` [🔗](#class-textline-property-preserve-invalid)

- void **set\_preserve\_invalid**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_preserve\_invalid**()


If set to `true` text will display invalid characters.

* * *

[OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **text\_overrun\_behavior** = `3` [🔗](#class-textline-property-text-overrun-behavior)

- void **set\_text\_overrun\_behavior**(value: [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior))

- [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **get\_text\_overrun\_behavior**()


The clipping behavior when the text exceeds the text line's set width.

* * *

[float](class_float.md#class-float) **width** = `-1.0` [🔗](#class-textline-property-width)

- void **set\_width**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_width**()


Text line width.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **add\_object**(key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, length: [int](class_int.md#class-int) = 1, baseline: [float](class_float.md#class-float) = 0.0) [🔗](#class-textline-method-add-object)

Adds inline object to the text buffer, `key` must be unique. In the text, object is represented as `length` object replacement characters.

* * *

[bool](class_bool.md#class-bool) **add\_string**(text: [String](class_string.md#class-string), font: [Font](class_font.md#class-font), font\_size: [int](class_int.md#class-int), language: [String](class_string.md#class-string) = "", meta: [Variant](class_variant.md#class-variant) = null) [🔗](#class-textline-method-add-string)

Adds text span and font to draw it.

* * *

void **clear**() [🔗](#class-textline-method-clear)

Clears text line (removes text and inline objects).

* * *

void **draw**(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textline-method-draw)

Draw text into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **draw\_outline**(canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), outline\_size: [int](class_int.md#class-int) = 1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textline-method-draw-outline)

Draw text into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

[Direction](class_textserver.md#enum-textserver-direction) **get\_inferred\_direction**() const [🔗](#class-textline-method-get-inferred-direction)

Returns the text writing direction inferred by the BiDi algorithm.

* * *

[float](class_float.md#class-float) **get\_line\_ascent**() const [🔗](#class-textline-method-get-line-ascent)

Returns the text ascent (number of pixels above the baseline for horizontal layout or to the left of baseline for vertical).

* * *

[float](class_float.md#class-float) **get\_line\_descent**() const [🔗](#class-textline-method-get-line-descent)

Returns the text descent (number of pixels below the baseline for horizontal layout or to the right of baseline for vertical).

* * *

[float](class_float.md#class-float) **get\_line\_underline\_position**() const [🔗](#class-textline-method-get-line-underline-position)

Returns pixel offset of the underline below the baseline.

* * *

[float](class_float.md#class-float) **get\_line\_underline\_thickness**() const [🔗](#class-textline-method-get-line-underline-thickness)

Returns thickness of the underline.

* * *

[float](class_float.md#class-float) **get\_line\_width**() const [🔗](#class-textline-method-get-line-width)

Returns width (for horizontal layout) or height (for vertical) of the text.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_object\_rect**(key: [Variant](class_variant.md#class-variant)) const [🔗](#class-textline-method-get-object-rect)

Returns bounding rectangle of the inline object.

* * *

[Array](class_array.md#class-array) **get\_objects**() const [🔗](#class-textline-method-get-objects)

Returns array of inline objects.

* * *

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-textline-method-get-rid)

Returns TextServer buffer RID.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_size**() const [🔗](#class-textline-method-get-size)

Returns size of the bounding box of the text.

* * *

[int](class_int.md#class-int) **hit\_test**(coords: [float](class_float.md#class-float)) const [🔗](#class-textline-method-hit-test)

Returns caret character offset at the specified pixel offset at the baseline. This function always returns a valid position.

* * *

[bool](class_bool.md#class-bool) **resize\_object**(key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, baseline: [float](class_float.md#class-float) = 0.0) [🔗](#class-textline-method-resize-object)

Sets new size and alignment of embedded object.

* * *

void **set\_bidi\_override**(override: [Array](class_array.md#class-array)) [🔗](#class-textline-method-set-bidi-override)

Overrides BiDi for the structured text.

Override ranges should cover full source text without overlaps. BiDi algorithm will be used on each range separately.

* * *

void **tab\_align**(tab\_stops: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-textline-method-tab-align)

Aligns text to the given tab-stops.

[Previous](class_tcpserver.md "TCPServer") [Next](class_textparagraph.md "TextParagraph")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tcpserver.md "TCPServer") [Next](class_textparagraph.md "TextParagraph")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).