---
title: TextServer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_textserver.html
crawled_at: "2026-08-13T10:40:59+12:00"
content_hash: bc44e0b5e54797ab30af5d81c684041bccfb7f1425dc72b5a13846d06ccd17d5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextServer

* * *

# TextServer

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [TextServerExtension](class_textserverextension.md#class-textserverextension)

A server interface for font management and text rendering.

## Description

**TextServer** is the API backend for managing fonts and rendering text.

**Note:** This is a low-level API, consider using [TextLine](class_textline.md#class-textline), [TextParagraph](class_textparagraph.md#class-textparagraph), and [Font](class_font.md#class-font) classes instead.

This is an abstract class, so to get the currently active **TextServer** instance, use the following code:

GDScriptC#

```
var ts = TextServerManager.get_primary_interface()

```

```
var ts = TextServerManager.GetPrimaryInterface();

```

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [create\_font](#class-textserver-method-create-font)() |
| [RID](class_rid.md#class-rid) | [create\_font\_linked\_variation](#class-textserver-method-create-font-linked-variation)(font\_rid: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [create\_shaped\_text](#class-textserver-method-create-shaped-text)(direction: [Direction](#enum-textserver-direction) = 0, orientation: [Orientation](#enum-textserver-orientation) = 0) |
| void | [draw\_hex\_code\_box](#class-textserver-method-draw-hex-code-box)(canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) const |
| void | [font\_clear\_glyphs](#class-textserver-method-font-clear-glyphs)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [font\_clear\_kerning\_map](#class-textserver-method-font-clear-kerning-map)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) |
| void | [font\_clear\_size\_cache](#class-textserver-method-font-clear-size-cache)(font\_rid: [RID](class_rid.md#class-rid)) |
| void | [font\_clear\_system\_fallback\_cache](#class-textserver-method-font-clear-system-fallback-cache)() |
| void | [font\_clear\_textures](#class-textserver-method-font-clear-textures)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [font\_draw\_glyph](#class-textserver-method-font-draw-glyph)(font\_rid: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [font\_draw\_glyph\_outline](#class-textserver-method-font-draw-glyph-outline)(font\_rid: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), outline\_size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| [FontAntialiasing](#enum-textserver-fontantialiasing) | [font\_get\_antialiasing](#class-textserver-method-font-get-antialiasing)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [font\_get\_ascent](#class-textserver-method-font-get-ascent)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [font\_get\_baseline\_offset](#class-textserver-method-font-get-baseline-offset)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [font\_get\_char\_from\_glyph\_index](#class-textserver-method-font-get-char-from-glyph-index)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [font\_get\_descent](#class-textserver-method-font-get-descent)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [font\_get\_disable\_embedded\_bitmaps](#class-textserver-method-font-get-disable-embedded-bitmaps)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [font\_get\_embolden](#class-textserver-method-font-get-embolden)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [font\_get\_face\_count](#class-textserver-method-font-get-face-count)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [font\_get\_face\_index](#class-textserver-method-font-get-face-index)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [font\_get\_fixed\_size](#class-textserver-method-font-get-fixed-size)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [FixedSizeScaleMode](#enum-textserver-fixedsizescalemode) | [font\_get\_fixed\_size\_scale\_mode](#class-textserver-method-font-get-fixed-size-scale-mode)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [font\_get\_generate\_mipmaps](#class-textserver-method-font-get-generate-mipmaps)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [font\_get\_global\_oversampling](#class-textserver-method-font-get-global-oversampling)() const |
| [Vector2](class_vector2.md#class-vector2) | [font\_get\_glyph\_advance](#class-textserver-method-font-get-glyph-advance)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [font\_get\_glyph\_contours](#class-textserver-method-font-get-glyph-contours)(font: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [font\_get\_glyph\_index](#class-textserver-method-font-get-glyph-index)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), char: [int](class_int.md#class-int), variation\_selector: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [font\_get\_glyph\_list](#class-textserver-method-font-get-glyph-list)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2](class_vector2.md#class-vector2) | [font\_get\_glyph\_offset](#class-textserver-method-font-get-glyph-offset)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [font\_get\_glyph\_size](#class-textserver-method-font-get-glyph-size)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [font\_get\_glyph\_texture\_idx](#class-textserver-method-font-get-glyph-texture-idx)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [font\_get\_glyph\_texture\_rid](#class-textserver-method-font-get-glyph-texture-rid)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [font\_get\_glyph\_texture\_size](#class-textserver-method-font-get-glyph-texture-size)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const |
| [Rect2](class_rect2.md#class-rect2) | [font\_get\_glyph\_uv\_rect](#class-textserver-method-font-get-glyph-uv-rect)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const |
| [Hinting](#enum-textserver-hinting) | [font\_get\_hinting](#class-textserver-method-font-get-hinting)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [font\_get\_keep\_rounding\_remainders](#class-textserver-method-font-get-keep-rounding-remainders)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [font\_get\_kerning](#class-textserver-method-font-get-kerning)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [font\_get\_kerning\_list](#class-textserver-method-font-get-kerning-list)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [font\_get\_language\_support\_override](#class-textserver-method-font-get-language-support-override)(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [font\_get\_language\_support\_overrides](#class-textserver-method-font-get-language-support-overrides)(font\_rid: [RID](class_rid.md#class-rid)) |
| [int](class_int.md#class-int) | [font\_get\_msdf\_pixel\_range](#class-textserver-method-font-get-msdf-pixel-range)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [font\_get\_msdf\_size](#class-textserver-method-font-get-msdf-size)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [String](class_string.md#class-string) | [font\_get\_name](#class-textserver-method-font-get-name)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [font\_get\_opentype\_feature\_overrides](#class-textserver-method-font-get-opentype-feature-overrides)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [font\_get\_ot\_name\_strings](#class-textserver-method-font-get-ot-name-strings)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [font\_get\_oversampling](#class-textserver-method-font-get-oversampling)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [font\_get\_scale](#class-textserver-method-font-get-scale)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [font\_get\_script\_support\_override](#class-textserver-method-font-get-script-support-override)(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [font\_get\_script\_support\_overrides](#class-textserver-method-font-get-script-support-overrides)(font\_rid: [RID](class_rid.md#class-rid)) |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [font\_get\_size\_cache\_info](#class-textserver-method-font-get-size-cache-info)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [font\_get\_size\_cache\_list](#class-textserver-method-font-get-size-cache-list)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [font\_get\_spacing](#class-textserver-method-font-get-spacing)(font\_rid: [RID](class_rid.md#class-rid), spacing: [SpacingType](#enum-textserver-spacingtype)) const |
| [int](class_int.md#class-int) | [font\_get\_stretch](#class-textserver-method-font-get-stretch)(font\_rid: [RID](class_rid.md#class-rid)) const |
| BitField\[ [FontStyle](#enum-textserver-fontstyle)\] | [font\_get\_style](#class-textserver-method-font-get-style)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [String](class_string.md#class-string) | [font\_get\_style\_name](#class-textserver-method-font-get-style-name)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [SubpixelPositioning](#enum-textserver-subpixelpositioning) | [font\_get\_subpixel\_positioning](#class-textserver-method-font-get-subpixel-positioning)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [String](class_string.md#class-string) | [font\_get\_supported\_chars](#class-textserver-method-font-get-supported-chars)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [font\_get\_supported\_glyphs](#class-textserver-method-font-get-supported-glyphs)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [font\_get\_texture\_count](#class-textserver-method-font-get-texture-count)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Image](class_image.md#class-image) | [font\_get\_texture\_image](#class-textserver-method-font-get-texture-image)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [font\_get\_texture\_offsets](#class-textserver-method-font-get-texture-offsets)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [font\_get\_transform](#class-textserver-method-font-get-transform)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [font\_get\_underline\_position](#class-textserver-method-font-get-underline-position)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [font\_get\_underline\_thickness](#class-textserver-method-font-get-underline-thickness)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [font\_get\_variation\_coordinates](#class-textserver-method-font-get-variation-coordinates)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [font\_get\_weight](#class-textserver-method-font-get-weight)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [font\_has\_char](#class-textserver-method-font-has-char)(font\_rid: [RID](class_rid.md#class-rid), char: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [font\_is\_allow\_system\_fallback](#class-textserver-method-font-is-allow-system-fallback)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [font\_is\_force\_autohinter](#class-textserver-method-font-is-force-autohinter)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [font\_is\_language\_supported](#class-textserver-method-font-is-language-supported)(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [font\_is\_modulate\_color\_glyphs](#class-textserver-method-font-is-modulate-color-glyphs)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [font\_is\_multichannel\_signed\_distance\_field](#class-textserver-method-font-is-multichannel-signed-distance-field)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [font\_is\_script\_supported](#class-textserver-method-font-is-script-supported)(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) const |
| void | [font\_remove\_glyph](#class-textserver-method-font-remove-glyph)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) |
| void | [font\_remove\_kerning](#class-textserver-method-font-remove-kerning)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [font\_remove\_language\_support\_override](#class-textserver-method-font-remove-language-support-override)(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) |
| void | [font\_remove\_script\_support\_override](#class-textserver-method-font-remove-script-support-override)(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) |
| void | [font\_remove\_size\_cache](#class-textserver-method-font-remove-size-cache)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [font\_remove\_texture](#class-textserver-method-font-remove-texture)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) |
| void | [font\_render\_glyph](#class-textserver-method-font-render-glyph)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), index: [int](class_int.md#class-int)) |
| void | [font\_render\_range](#class-textserver-method-font-render-range)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) |
| void | [font\_set\_allow\_system\_fallback](#class-textserver-method-font-set-allow-system-fallback)(font\_rid: [RID](class_rid.md#class-rid), allow\_system\_fallback: [bool](class_bool.md#class-bool)) |
| void | [font\_set\_antialiasing](#class-textserver-method-font-set-antialiasing)(font\_rid: [RID](class_rid.md#class-rid), antialiasing: [FontAntialiasing](#enum-textserver-fontantialiasing)) |
| void | [font\_set\_ascent](#class-textserver-method-font-set-ascent)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), ascent: [float](class_float.md#class-float)) |
| void | [font\_set\_baseline\_offset](#class-textserver-method-font-set-baseline-offset)(font\_rid: [RID](class_rid.md#class-rid), baseline\_offset: [float](class_float.md#class-float)) |
| void | [font\_set\_data](#class-textserver-method-font-set-data)(font\_rid: [RID](class_rid.md#class-rid), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [font\_set\_descent](#class-textserver-method-font-set-descent)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), descent: [float](class_float.md#class-float)) |
| void | [font\_set\_disable\_embedded\_bitmaps](#class-textserver-method-font-set-disable-embedded-bitmaps)(font\_rid: [RID](class_rid.md#class-rid), disable\_embedded\_bitmaps: [bool](class_bool.md#class-bool)) |
| void | [font\_set\_embolden](#class-textserver-method-font-set-embolden)(font\_rid: [RID](class_rid.md#class-rid), strength: [float](class_float.md#class-float)) |
| void | [font\_set\_face\_index](#class-textserver-method-font-set-face-index)(font\_rid: [RID](class_rid.md#class-rid), face\_index: [int](class_int.md#class-int)) |
| void | [font\_set\_fixed\_size](#class-textserver-method-font-set-fixed-size)(font\_rid: [RID](class_rid.md#class-rid), fixed\_size: [int](class_int.md#class-int)) |
| void | [font\_set\_fixed\_size\_scale\_mode](#class-textserver-method-font-set-fixed-size-scale-mode)(font\_rid: [RID](class_rid.md#class-rid), fixed\_size\_scale\_mode: [FixedSizeScaleMode](#enum-textserver-fixedsizescalemode)) |
| void | [font\_set\_force\_autohinter](#class-textserver-method-font-set-force-autohinter)(font\_rid: [RID](class_rid.md#class-rid), force\_autohinter: [bool](class_bool.md#class-bool)) |
| void | [font\_set\_generate\_mipmaps](#class-textserver-method-font-set-generate-mipmaps)(font\_rid: [RID](class_rid.md#class-rid), generate\_mipmaps: [bool](class_bool.md#class-bool)) |
| void | [font\_set\_global\_oversampling](#class-textserver-method-font-set-global-oversampling)(oversampling: [float](class_float.md#class-float)) |
| void | [font\_set\_glyph\_advance](#class-textserver-method-font-set-glyph-advance)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int), advance: [Vector2](class_vector2.md#class-vector2)) |
| void | [font\_set\_glyph\_offset](#class-textserver-method-font-set-glyph-offset)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), offset: [Vector2](class_vector2.md#class-vector2)) |
| void | [font\_set\_glyph\_size](#class-textserver-method-font-set-glyph-size)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), gl\_size: [Vector2](class_vector2.md#class-vector2)) |
| void | [font\_set\_glyph\_texture\_idx](#class-textserver-method-font-set-glyph-texture-idx)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), texture\_idx: [int](class_int.md#class-int)) |
| void | [font\_set\_glyph\_uv\_rect](#class-textserver-method-font-set-glyph-uv-rect)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), uv\_rect: [Rect2](class_rect2.md#class-rect2)) |
| void | [font\_set\_hinting](#class-textserver-method-font-set-hinting)(font\_rid: [RID](class_rid.md#class-rid), hinting: [Hinting](#enum-textserver-hinting)) |
| void | [font\_set\_keep\_rounding\_remainders](#class-textserver-method-font-set-keep-rounding-remainders)(font\_rid: [RID](class_rid.md#class-rid), keep\_rounding\_remainders: [bool](class_bool.md#class-bool)) |
| void | [font\_set\_kerning](#class-textserver-method-font-set-kerning)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i), kerning: [Vector2](class_vector2.md#class-vector2)) |
| void | [font\_set\_language\_support\_override](#class-textserver-method-font-set-language-support-override)(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) |
| void | [font\_set\_modulate\_color\_glyphs](#class-textserver-method-font-set-modulate-color-glyphs)(font\_rid: [RID](class_rid.md#class-rid), force\_autohinter: [bool](class_bool.md#class-bool)) |
| void | [font\_set\_msdf\_pixel\_range](#class-textserver-method-font-set-msdf-pixel-range)(font\_rid: [RID](class_rid.md#class-rid), msdf\_pixel\_range: [int](class_int.md#class-int)) |
| void | [font\_set\_msdf\_size](#class-textserver-method-font-set-msdf-size)(font\_rid: [RID](class_rid.md#class-rid), msdf\_size: [int](class_int.md#class-int)) |
| void | [font\_set\_multichannel\_signed\_distance\_field](#class-textserver-method-font-set-multichannel-signed-distance-field)(font\_rid: [RID](class_rid.md#class-rid), msdf: [bool](class_bool.md#class-bool)) |
| void | [font\_set\_name](#class-textserver-method-font-set-name)(font\_rid: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) |
| void | [font\_set\_opentype\_feature\_overrides](#class-textserver-method-font-set-opentype-feature-overrides)(font\_rid: [RID](class_rid.md#class-rid), overrides: [Dictionary](class_dictionary.md#class-dictionary)) |
| void | [font\_set\_oversampling](#class-textserver-method-font-set-oversampling)(font\_rid: [RID](class_rid.md#class-rid), oversampling: [float](class_float.md#class-float)) |
| void | [font\_set\_scale](#class-textserver-method-font-set-scale)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), scale: [float](class_float.md#class-float)) |
| void | [font\_set\_script\_support\_override](#class-textserver-method-font-set-script-support-override)(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) |
| void | [font\_set\_spacing](#class-textserver-method-font-set-spacing)(font\_rid: [RID](class_rid.md#class-rid), spacing: [SpacingType](#enum-textserver-spacingtype), value: [int](class_int.md#class-int)) |
| void | [font\_set\_stretch](#class-textserver-method-font-set-stretch)(font\_rid: [RID](class_rid.md#class-rid), weight: [int](class_int.md#class-int)) |
| void | [font\_set\_style](#class-textserver-method-font-set-style)(font\_rid: [RID](class_rid.md#class-rid), style: BitField\[ [FontStyle](#enum-textserver-fontstyle)\]) |
| void | [font\_set\_style\_name](#class-textserver-method-font-set-style-name)(font\_rid: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) |
| void | [font\_set\_subpixel\_positioning](#class-textserver-method-font-set-subpixel-positioning)(font\_rid: [RID](class_rid.md#class-rid), subpixel\_positioning: [SubpixelPositioning](#enum-textserver-subpixelpositioning)) |
| void | [font\_set\_texture\_image](#class-textserver-method-font-set-texture-image)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), image: [Image](class_image.md#class-image)) |
| void | [font\_set\_texture\_offsets](#class-textserver-method-font-set-texture-offsets)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), offset: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| void | [font\_set\_transform](#class-textserver-method-font-set-transform)(font\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [font\_set\_underline\_position](#class-textserver-method-font-set-underline-position)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), underline\_position: [float](class_float.md#class-float)) |
| void | [font\_set\_underline\_thickness](#class-textserver-method-font-set-underline-thickness)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), underline\_thickness: [float](class_float.md#class-float)) |
| void | [font\_set\_variation\_coordinates](#class-textserver-method-font-set-variation-coordinates)(font\_rid: [RID](class_rid.md#class-rid), variation\_coordinates: [Dictionary](class_dictionary.md#class-dictionary)) |
| void | [font\_set\_weight](#class-textserver-method-font-set-weight)(font\_rid: [RID](class_rid.md#class-rid), weight: [int](class_int.md#class-int)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [font\_supported\_feature\_list](#class-textserver-method-font-supported-feature-list)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [font\_supported\_variation\_list](#class-textserver-method-font-supported-variation-list)(font\_rid: [RID](class_rid.md#class-rid)) const |
| [String](class_string.md#class-string) | [format\_number](#class-textserver-method-format-number)(number: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const |
| void | [free\_rid](#class-textserver-method-free-rid)(rid: [RID](class_rid.md#class-rid)) |
| [int](class_int.md#class-int) | [get\_features](#class-textserver-method-get-features)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_hex\_code\_box\_size](#class-textserver-method-get-hex-code-box-size)(size: [int](class_int.md#class-int), index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_name](#class-textserver-method-get-name)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [get\_support\_data](#class-textserver-method-get-support-data)() const |
| [String](class_string.md#class-string) | [get\_support\_data\_filename](#class-textserver-method-get-support-data-filename)() const |
| [String](class_string.md#class-string) | [get\_support\_data\_info](#class-textserver-method-get-support-data-info)() const |
| [bool](class_bool.md#class-bool) | [has](#class-textserver-method-has)(rid: [RID](class_rid.md#class-rid)) |
| [bool](class_bool.md#class-bool) | [has\_feature](#class-textserver-method-has-feature)(feature: [Feature](#enum-textserver-feature)) const |
| [int](class_int.md#class-int) | [is\_confusable](#class-textserver-method-is-confusable)(string: [String](class_string.md#class-string), dict: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) const |
| [bool](class_bool.md#class-bool) | [is\_locale\_right\_to\_left](#class-textserver-method-is-locale-right-to-left)(locale: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_valid\_identifier](#class-textserver-method-is-valid-identifier)(string: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_valid\_letter](#class-textserver-method-is-valid-letter)(unicode: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [load\_support\_data](#class-textserver-method-load-support-data)(filename: [String](class_string.md#class-string)) |
| [int](class_int.md#class-int) | [name\_to\_tag](#class-textserver-method-name-to-tag)(name: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [parse\_number](#class-textserver-method-parse-number)(number: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const |
| [Array](class_array.md#class-array)\[ [Vector3i](class_vector3i.md#class-vector3i)\] | [parse\_structured\_text](#class-textserver-method-parse-structured-text)(parser\_type: [StructuredTextParser](#enum-textserver-structuredtextparser), args: [Array](class_array.md#class-array), text: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [percent\_sign](#class-textserver-method-percent-sign)(language: [String](class_string.md#class-string) = "") const |
| [bool](class_bool.md#class-bool) | [save\_support\_data](#class-textserver-method-save-support-data)(filename: [String](class_string.md#class-string)) const |
| [int](class_int.md#class-int) | [shaped\_get\_run\_count](#class-textserver-method-shaped-get-run-count)(shaped: [RID](class_rid.md#class-rid)) const |
| [Direction](#enum-textserver-direction) | [shaped\_get\_run\_direction](#class-textserver-method-shaped-get-run-direction)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [shaped\_get\_run\_font\_rid](#class-textserver-method-shaped-get-run-font-rid)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [shaped\_get\_run\_font\_size](#class-textserver-method-shaped-get-run-font-size)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [shaped\_get\_run\_language](#class-textserver-method-shaped-get-run-language)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [shaped\_get\_run\_object](#class-textserver-method-shaped-get-run-object)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [shaped\_get\_run\_range](#class-textserver-method-shaped-get-run-range)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [shaped\_get\_run\_text](#class-textserver-method-shaped-get-run-text)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [shaped\_get\_span\_count](#class-textserver-method-shaped-get-span-count)(shaped: [RID](class_rid.md#class-rid)) const |
| [Variant](class_variant.md#class-variant) | [shaped\_get\_span\_embedded\_object](#class-textserver-method-shaped-get-span-embedded-object)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [shaped\_get\_span\_meta](#class-textserver-method-shaped-get-span-meta)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [shaped\_get\_span\_object](#class-textserver-method-shaped-get-span-object)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [shaped\_get\_span\_text](#class-textserver-method-shaped-get-span-text)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [shaped\_get\_text](#class-textserver-method-shaped-get-text)(shaped: [RID](class_rid.md#class-rid)) const |
| void | [shaped\_set\_span\_update\_font](#class-textserver-method-shaped-set-span-update-font)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), fonts: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], size: [int](class_int.md#class-int), opentype\_features: [Dictionary](class_dictionary.md#class-dictionary) = {}) |
| [bool](class_bool.md#class-bool) | [shaped\_text\_add\_object](#class-textserver-method-shaped-text-add-object)(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, length: [int](class_int.md#class-int) = 1, baseline: [float](class_float.md#class-float) = 0.0) |
| [bool](class_bool.md#class-bool) | [shaped\_text\_add\_string](#class-textserver-method-shaped-text-add-string)(shaped: [RID](class_rid.md#class-rid), text: [String](class_string.md#class-string), fonts: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], size: [int](class_int.md#class-int), opentype\_features: [Dictionary](class_dictionary.md#class-dictionary) = {}, language: [String](class_string.md#class-string) = "", meta: [Variant](class_variant.md#class-variant) = null) |
| void | [shaped\_text\_clear](#class-textserver-method-shaped-text-clear)(rid: [RID](class_rid.md#class-rid)) |
| [int](class_int.md#class-int) | [shaped\_text\_closest\_character\_pos](#class-textserver-method-shaped-text-closest-character-pos)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const |
| void | [shaped\_text\_draw](#class-textserver-method-shaped-text-draw)(shaped: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), clip\_l: [float](class_float.md#class-float) = -1, clip\_r: [float](class_float.md#class-float) = -1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [shaped\_text\_draw\_outline](#class-textserver-method-shaped-text-draw-outline)(shaped: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), clip\_l: [float](class_float.md#class-float) = -1, clip\_r: [float](class_float.md#class-float) = -1, outline\_size: [int](class_int.md#class-int) = 1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| [float](class_float.md#class-float) | [shaped\_text\_fit\_to\_width](#class-textserver-method-shaped-text-fit-to-width)(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float), justification\_flags: BitField\[ [JustificationFlag](#enum-textserver-justificationflag)\] = 3) |
| [float](class_float.md#class-float) | [shaped\_text\_get\_ascent](#class-textserver-method-shaped-text-get-ascent)(shaped: [RID](class_rid.md#class-rid)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [shaped\_text\_get\_carets](#class-textserver-method-shaped-text-get-carets)(shaped: [RID](class_rid.md#class-rid), position: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [shaped\_text\_get\_character\_breaks](#class-textserver-method-shaped-text-get-character-breaks)(shaped: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [shaped\_text\_get\_custom\_ellipsis](#class-textserver-method-shaped-text-get-custom-ellipsis)(shaped: [RID](class_rid.md#class-rid)) const |
| [String](class_string.md#class-string) | [shaped\_text\_get\_custom\_punctuation](#class-textserver-method-shaped-text-get-custom-punctuation)(shaped: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [shaped\_text\_get\_descent](#class-textserver-method-shaped-text-get-descent)(shaped: [RID](class_rid.md#class-rid)) const |
| [Direction](#enum-textserver-direction) | [shaped\_text\_get\_direction](#class-textserver-method-shaped-text-get-direction)(shaped: [RID](class_rid.md#class-rid)) const |
| [Direction](#enum-textserver-direction) | [shaped\_text\_get\_dominant\_direction\_in\_range](#class-textserver-method-shaped-text-get-dominant-direction-in-range)(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [shaped\_text\_get\_ellipsis\_glyph\_count](#class-textserver-method-shaped-text-get-ellipsis-glyph-count)(shaped: [RID](class_rid.md#class-rid)) const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [shaped\_text\_get\_ellipsis\_glyphs](#class-textserver-method-shaped-text-get-ellipsis-glyphs)(shaped: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [shaped\_text\_get\_ellipsis\_pos](#class-textserver-method-shaped-text-get-ellipsis-pos)(shaped: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [shaped\_text\_get\_glyph\_count](#class-textserver-method-shaped-text-get-glyph-count)(shaped: [RID](class_rid.md#class-rid)) const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [shaped\_text\_get\_glyphs](#class-textserver-method-shaped-text-get-glyphs)(shaped: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [shaped\_text\_get\_grapheme\_bounds](#class-textserver-method-shaped-text-get-grapheme-bounds)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const |
| [Direction](#enum-textserver-direction) | [shaped\_text\_get\_inferred\_direction](#class-textserver-method-shaped-text-get-inferred-direction)(shaped: [RID](class_rid.md#class-rid)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [shaped\_text\_get\_line\_breaks](#class-textserver-method-shaped-text-get-line-breaks)(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float), start: [int](class_int.md#class-int) = 0, break\_flags: BitField\[ [LineBreakFlag](#enum-textserver-linebreakflag)\] = 3) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [shaped\_text\_get\_line\_breaks\_adv](#class-textserver-method-shaped-text-get-line-breaks-adv)(shaped: [RID](class_rid.md#class-rid), width: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), start: [int](class_int.md#class-int) = 0, once: [bool](class_bool.md#class-bool) = true, break\_flags: BitField\[ [LineBreakFlag](#enum-textserver-linebreakflag)\] = 3) const |
| [int](class_int.md#class-int) | [shaped\_text\_get\_object\_glyph](#class-textserver-method-shaped-text-get-object-glyph)(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [shaped\_text\_get\_object\_range](#class-textserver-method-shaped-text-get-object-range)(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) const |
| [Rect2](class_rect2.md#class-rect2) | [shaped\_text\_get\_object\_rect](#class-textserver-method-shaped-text-get-object-rect)(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) const |
| [Array](class_array.md#class-array) | [shaped\_text\_get\_objects](#class-textserver-method-shaped-text-get-objects)(shaped: [RID](class_rid.md#class-rid)) const |
| [Orientation](#enum-textserver-orientation) | [shaped\_text\_get\_orientation](#class-textserver-method-shaped-text-get-orientation)(shaped: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [shaped\_text\_get\_parent](#class-textserver-method-shaped-text-get-parent)(shaped: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [shaped\_text\_get\_preserve\_control](#class-textserver-method-shaped-text-get-preserve-control)(shaped: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [shaped\_text\_get\_preserve\_invalid](#class-textserver-method-shaped-text-get-preserve-invalid)(shaped: [RID](class_rid.md#class-rid)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [shaped\_text\_get\_range](#class-textserver-method-shaped-text-get-range)(shaped: [RID](class_rid.md#class-rid)) const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [shaped\_text\_get\_selection](#class-textserver-method-shaped-text-get-selection)(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [shaped\_text\_get\_size](#class-textserver-method-shaped-text-get-size)(shaped: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [shaped\_text\_get\_spacing](#class-textserver-method-shaped-text-get-spacing)(shaped: [RID](class_rid.md#class-rid), spacing: [SpacingType](#enum-textserver-spacingtype)) const |
| [int](class_int.md#class-int) | [shaped\_text\_get\_trim\_pos](#class-textserver-method-shaped-text-get-trim-pos)(shaped: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [shaped\_text\_get\_underline\_position](#class-textserver-method-shaped-text-get-underline-position)(shaped: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [shaped\_text\_get\_underline\_thickness](#class-textserver-method-shaped-text-get-underline-thickness)(shaped: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [shaped\_text\_get\_width](#class-textserver-method-shaped-text-get-width)(shaped: [RID](class_rid.md#class-rid)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [shaped\_text\_get\_word\_breaks](#class-textserver-method-shaped-text-get-word-breaks)(shaped: [RID](class_rid.md#class-rid), grapheme\_flags: BitField\[ [GraphemeFlag](#enum-textserver-graphemeflag)\] = 264, skip\_grapheme\_flags: BitField\[ [GraphemeFlag](#enum-textserver-graphemeflag)\] = 4) const |
| [bool](class_bool.md#class-bool) | [shaped\_text\_has\_visible\_chars](#class-textserver-method-shaped-text-has-visible-chars)(shaped: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [shaped\_text\_hit\_test\_grapheme](#class-textserver-method-shaped-text-hit-test-grapheme)(shaped: [RID](class_rid.md#class-rid), coords: [float](class_float.md#class-float)) const |
| [int](class_int.md#class-int) | [shaped\_text\_hit\_test\_position](#class-textserver-method-shaped-text-hit-test-position)(shaped: [RID](class_rid.md#class-rid), coords: [float](class_float.md#class-float)) const |
| [bool](class_bool.md#class-bool) | [shaped\_text\_is\_ready](#class-textserver-method-shaped-text-is-ready)(shaped: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [shaped\_text\_next\_character\_pos](#class-textserver-method-shaped-text-next-character-pos)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [shaped\_text\_next\_grapheme\_pos](#class-textserver-method-shaped-text-next-grapheme-pos)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const |
| void | [shaped\_text\_overrun\_trim\_to\_width](#class-textserver-method-shaped-text-overrun-trim-to-width)(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float) = 0, overrun\_trim\_flags: BitField\[ [TextOverrunFlag](#enum-textserver-textoverrunflag)\] = 0) |
| [int](class_int.md#class-int) | [shaped\_text\_prev\_character\_pos](#class-textserver-method-shaped-text-prev-character-pos)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [shaped\_text\_prev\_grapheme\_pos](#class-textserver-method-shaped-text-prev-grapheme-pos)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [shaped\_text\_resize\_object](#class-textserver-method-shaped-text-resize-object)(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, baseline: [float](class_float.md#class-float) = 0.0) |
| void | [shaped\_text\_set\_bidi\_override](#class-textserver-method-shaped-text-set-bidi-override)(shaped: [RID](class_rid.md#class-rid), override: [Array](class_array.md#class-array)) |
| void | [shaped\_text\_set\_custom\_ellipsis](#class-textserver-method-shaped-text-set-custom-ellipsis)(shaped: [RID](class_rid.md#class-rid), char: [int](class_int.md#class-int)) |
| void | [shaped\_text\_set\_custom\_punctuation](#class-textserver-method-shaped-text-set-custom-punctuation)(shaped: [RID](class_rid.md#class-rid), punct: [String](class_string.md#class-string)) |
| void | [shaped\_text\_set\_direction](#class-textserver-method-shaped-text-set-direction)(shaped: [RID](class_rid.md#class-rid), direction: [Direction](#enum-textserver-direction) = 0) |
| void | [shaped\_text\_set\_orientation](#class-textserver-method-shaped-text-set-orientation)(shaped: [RID](class_rid.md#class-rid), orientation: [Orientation](#enum-textserver-orientation) = 0) |
| void | [shaped\_text\_set\_preserve\_control](#class-textserver-method-shaped-text-set-preserve-control)(shaped: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [shaped\_text\_set\_preserve\_invalid](#class-textserver-method-shaped-text-set-preserve-invalid)(shaped: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [shaped\_text\_set\_spacing](#class-textserver-method-shaped-text-set-spacing)(shaped: [RID](class_rid.md#class-rid), spacing: [SpacingType](#enum-textserver-spacingtype), value: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [shaped\_text\_shape](#class-textserver-method-shaped-text-shape)(shaped: [RID](class_rid.md#class-rid)) |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [shaped\_text\_sort\_logical](#class-textserver-method-shaped-text-sort-logical)(shaped: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [shaped\_text\_substr](#class-textserver-method-shaped-text-substr)(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), length: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [shaped\_text\_tab\_align](#class-textserver-method-shaped-text-tab-align)(shaped: [RID](class_rid.md#class-rid), tab\_stops: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |
| [bool](class_bool.md#class-bool) | [spoof\_check](#class-textserver-method-spoof-check)(string: [String](class_string.md#class-string)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [string\_get\_character\_breaks](#class-textserver-method-string-get-character-breaks)(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [string\_get\_word\_breaks](#class-textserver-method-string-get-word-breaks)(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "", chars\_per\_line: [int](class_int.md#class-int) = 0) const |
| [String](class_string.md#class-string) | [string\_to\_lower](#class-textserver-method-string-to-lower)(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const |
| [String](class_string.md#class-string) | [string\_to\_title](#class-textserver-method-string-to-title)(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const |
| [String](class_string.md#class-string) | [string\_to\_upper](#class-textserver-method-string-to-upper)(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const |
| [String](class_string.md#class-string) | [strip\_diacritics](#class-textserver-method-strip-diacritics)(string: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [tag\_to\_name](#class-textserver-method-tag-to-name)(tag: [int](class_int.md#class-int)) const |

* * *

## Enumerations

enum **FontAntialiasing**: [🔗](#enum-textserver-fontantialiasing)

[FontAntialiasing](#enum-textserver-fontantialiasing) **FONT\_ANTIALIASING\_NONE** = `0`

Font glyphs are rasterized as 1-bit bitmaps.

[FontAntialiasing](#enum-textserver-fontantialiasing) **FONT\_ANTIALIASING\_GRAY** = `1`

Font glyphs are rasterized as 8-bit grayscale anti-aliased bitmaps.

[FontAntialiasing](#enum-textserver-fontantialiasing) **FONT\_ANTIALIASING\_LCD** = `2`

Font glyphs are rasterized for LCD screens.

LCD subpixel layout is determined by the value of the [ProjectSettings.gui/theme/lcd\_subpixel\_layout](class_projectsettings.md#class-projectsettings-property-gui-theme-lcd-subpixel-layout) setting.

LCD subpixel anti-aliasing mode is suitable only for rendering horizontal, unscaled text in 2D.

* * *

enum **FontLCDSubpixelLayout**: [🔗](#enum-textserver-fontlcdsubpixellayout)

[FontLCDSubpixelLayout](#enum-textserver-fontlcdsubpixellayout) **FONT\_LCD\_SUBPIXEL\_LAYOUT\_NONE** = `0`

Unknown or unsupported subpixel layout, LCD subpixel antialiasing is disabled.

[FontLCDSubpixelLayout](#enum-textserver-fontlcdsubpixellayout) **FONT\_LCD\_SUBPIXEL\_LAYOUT\_HRGB** = `1`

Horizontal RGB subpixel layout.

[FontLCDSubpixelLayout](#enum-textserver-fontlcdsubpixellayout) **FONT\_LCD\_SUBPIXEL\_LAYOUT\_HBGR** = `2`

Horizontal BGR subpixel layout.

[FontLCDSubpixelLayout](#enum-textserver-fontlcdsubpixellayout) **FONT\_LCD\_SUBPIXEL\_LAYOUT\_VRGB** = `3`

Vertical RGB subpixel layout.

[FontLCDSubpixelLayout](#enum-textserver-fontlcdsubpixellayout) **FONT\_LCD\_SUBPIXEL\_LAYOUT\_VBGR** = `4`

Vertical BGR subpixel layout.

[FontLCDSubpixelLayout](#enum-textserver-fontlcdsubpixellayout) **FONT\_LCD\_SUBPIXEL\_LAYOUT\_MAX** = `5`

Represents the size of the [FontLCDSubpixelLayout](#enum-textserver-fontlcdsubpixellayout) enum.

* * *

enum **Direction**: [🔗](#enum-textserver-direction)

[Direction](#enum-textserver-direction) **DIRECTION\_AUTO** = `0`

Text direction is determined based on contents and current locale.

[Direction](#enum-textserver-direction) **DIRECTION\_LTR** = `1`

Text is written from left to right.

[Direction](#enum-textserver-direction) **DIRECTION\_RTL** = `2`

Text is written from right to left.

[Direction](#enum-textserver-direction) **DIRECTION\_INHERITED** = `3`

Text writing direction is the same as base string writing direction. Used for BiDi override only.

* * *

enum **Orientation**: [🔗](#enum-textserver-orientation)

[Orientation](#enum-textserver-orientation) **ORIENTATION\_HORIZONTAL** = `0`

Text is written horizontally.

[Orientation](#enum-textserver-orientation) **ORIENTATION\_VERTICAL** = `1`

Left to right text is written vertically from top to bottom.

Right to left text is written vertically from bottom to top.

* * *

flags **JustificationFlag**: [🔗](#enum-textserver-justificationflag)

[JustificationFlag](#enum-textserver-justificationflag) **JUSTIFICATION\_NONE** = `0`

Do not justify text.

[JustificationFlag](#enum-textserver-justificationflag) **JUSTIFICATION\_KASHIDA** = `1`

Justify text by adding and removing kashidas.

[JustificationFlag](#enum-textserver-justificationflag) **JUSTIFICATION\_WORD\_BOUND** = `2`

Justify text by changing width of the spaces between the words.

[JustificationFlag](#enum-textserver-justificationflag) **JUSTIFICATION\_TRIM\_EDGE\_SPACES** = `4`

Remove trailing and leading spaces from the justified text.

[JustificationFlag](#enum-textserver-justificationflag) **JUSTIFICATION\_AFTER\_LAST\_TAB** = `8`

Only apply justification to the part of the text after the last tab.

[JustificationFlag](#enum-textserver-justificationflag) **JUSTIFICATION\_CONSTRAIN\_ELLIPSIS** = `16`

Apply justification to the trimmed line with ellipsis.

[JustificationFlag](#enum-textserver-justificationflag) **JUSTIFICATION\_SKIP\_LAST\_LINE** = `32`

Do not apply justification to the last line of the paragraph.

[JustificationFlag](#enum-textserver-justificationflag) **JUSTIFICATION\_SKIP\_LAST\_LINE\_WITH\_VISIBLE\_CHARS** = `64`

Do not apply justification to the last line of the paragraph with visible characters (takes precedence over [JUSTIFICATION\_SKIP\_LAST\_LINE](#class-textserver-constant-justification-skip-last-line)).

[JustificationFlag](#enum-textserver-justificationflag) **JUSTIFICATION\_DO\_NOT\_SKIP\_SINGLE\_LINE** = `128`

Always apply justification to the paragraphs with a single line ( [JUSTIFICATION\_SKIP\_LAST\_LINE](#class-textserver-constant-justification-skip-last-line) and [JUSTIFICATION\_SKIP\_LAST\_LINE\_WITH\_VISIBLE\_CHARS](#class-textserver-constant-justification-skip-last-line-with-visible-chars) are ignored).

* * *

enum **AutowrapMode**: [🔗](#enum-textserver-autowrapmode)

[AutowrapMode](#enum-textserver-autowrapmode) **AUTOWRAP\_OFF** = `0`

Autowrap is disabled.

[AutowrapMode](#enum-textserver-autowrapmode) **AUTOWRAP\_ARBITRARY** = `1`

Wraps the text inside the node's bounding rectangle by allowing to break lines at arbitrary positions, which is useful when very limited space is available.

[AutowrapMode](#enum-textserver-autowrapmode) **AUTOWRAP\_WORD** = `2`

Wraps the text inside the node's bounding rectangle by soft-breaking between words.

[AutowrapMode](#enum-textserver-autowrapmode) **AUTOWRAP\_WORD\_SMART** = `3`

Behaves similarly to [AUTOWRAP\_WORD](#class-textserver-constant-autowrap-word), but force-breaks a word if that single word does not fit in one line.

* * *

flags **LineBreakFlag**: [🔗](#enum-textserver-linebreakflag)

[LineBreakFlag](#enum-textserver-linebreakflag) **BREAK\_NONE** = `0`

Do not break the line.

[LineBreakFlag](#enum-textserver-linebreakflag) **BREAK\_MANDATORY** = `1`

Break the line at the line mandatory break characters (e.g. `"\n"`).

[LineBreakFlag](#enum-textserver-linebreakflag) **BREAK\_WORD\_BOUND** = `2`

Break the line between the words.

[LineBreakFlag](#enum-textserver-linebreakflag) **BREAK\_GRAPHEME\_BOUND** = `4`

Break the line between any unconnected graphemes.

[LineBreakFlag](#enum-textserver-linebreakflag) **BREAK\_ADAPTIVE** = `8`

Should be used only in conjunction with [BREAK\_WORD\_BOUND](#class-textserver-constant-break-word-bound), break the line between any unconnected graphemes, if it's impossible to break it between the words.

[LineBreakFlag](#enum-textserver-linebreakflag) **BREAK\_TRIM\_EDGE\_SPACES** = `16`

**Deprecated:** Use `BREAK_TRIM_START_EDGE_SPACES | BREAK_TRIM_END_EDGE_SPACES` instead.

Remove edge spaces from the broken line segments.

[LineBreakFlag](#enum-textserver-linebreakflag) **BREAK\_TRIM\_INDENT** = `32`

Subtract first line indentation width from all lines after the first one.

[LineBreakFlag](#enum-textserver-linebreakflag) **BREAK\_TRIM\_START\_EDGE\_SPACES** = `64`

Remove spaces and line break characters from the start of broken line segments.

E.g, after line breaking, the second segment of the following text `test  \n  next`, is `next` if the flag is set, and \`\` next\`\` if it is not.

[LineBreakFlag](#enum-textserver-linebreakflag) **BREAK\_TRIM\_END\_EDGE\_SPACES** = `128`

Remove spaces and line break characters from the end of broken line segments.

E.g, after line breaking, the first segment of the following text `test  \n  next`, is `test` if the flag is set, and `test  \n` if it is not.

* * *

enum **VisibleCharactersBehavior**: [🔗](#enum-textserver-visiblecharactersbehavior)

[VisibleCharactersBehavior](#enum-textserver-visiblecharactersbehavior) **VC\_CHARS\_BEFORE\_SHAPING** = `0`

Trims text before the shaping. e.g, increasing [Label.visible\_characters](class_label.md#class-label-property-visible-characters) or [RichTextLabel.visible\_characters](class_richtextlabel.md#class-richtextlabel-property-visible-characters) value is visually identical to typing the text.

**Note:** In this mode, trimmed text is not processed at all. It is not accounted for in line breaking and size calculations.

[VisibleCharactersBehavior](#enum-textserver-visiblecharactersbehavior) **VC\_CHARS\_AFTER\_SHAPING** = `1`

Displays glyphs that are mapped to the first [Label.visible\_characters](class_label.md#class-label-property-visible-characters) or [RichTextLabel.visible\_characters](class_richtextlabel.md#class-richtextlabel-property-visible-characters) characters from the beginning of the text.

[VisibleCharactersBehavior](#enum-textserver-visiblecharactersbehavior) **VC\_GLYPHS\_AUTO** = `2`

Displays [Label.visible\_ratio](class_label.md#class-label-property-visible-ratio) or [RichTextLabel.visible\_ratio](class_richtextlabel.md#class-richtextlabel-property-visible-ratio) glyphs, starting from the left or from the right, depending on [Control.layout\_direction](class_control.md#class-control-property-layout-direction) value.

[VisibleCharactersBehavior](#enum-textserver-visiblecharactersbehavior) **VC\_GLYPHS\_LTR** = `3`

Displays [Label.visible\_ratio](class_label.md#class-label-property-visible-ratio) or [RichTextLabel.visible\_ratio](class_richtextlabel.md#class-richtextlabel-property-visible-ratio) glyphs, starting from the left.

[VisibleCharactersBehavior](#enum-textserver-visiblecharactersbehavior) **VC\_GLYPHS\_RTL** = `4`

Displays [Label.visible\_ratio](class_label.md#class-label-property-visible-ratio) or [RichTextLabel.visible\_ratio](class_richtextlabel.md#class-richtextlabel-property-visible-ratio) glyphs, starting from the right.

* * *

enum **OverrunBehavior**: [🔗](#enum-textserver-overrunbehavior)

[OverrunBehavior](#enum-textserver-overrunbehavior) **OVERRUN\_NO\_TRIMMING** = `0`

No text trimming is performed.

[OverrunBehavior](#enum-textserver-overrunbehavior) **OVERRUN\_TRIM\_CHAR** = `1`

Trims the text per character.

[OverrunBehavior](#enum-textserver-overrunbehavior) **OVERRUN\_TRIM\_WORD** = `2`

Trims the text per word.

[OverrunBehavior](#enum-textserver-overrunbehavior) **OVERRUN\_TRIM\_ELLIPSIS** = `3`

Trims the text per character and adds an ellipsis to indicate that parts are hidden if trimmed text is 6 characters or longer.

[OverrunBehavior](#enum-textserver-overrunbehavior) **OVERRUN\_TRIM\_WORD\_ELLIPSIS** = `4`

Trims the text per word and adds an ellipsis to indicate that parts are hidden if trimmed text is 6 characters or longer.

[OverrunBehavior](#enum-textserver-overrunbehavior) **OVERRUN\_TRIM\_ELLIPSIS\_FORCE** = `5`

Trims the text per character and adds an ellipsis to indicate that parts are hidden regardless of trimmed text length.

[OverrunBehavior](#enum-textserver-overrunbehavior) **OVERRUN\_TRIM\_WORD\_ELLIPSIS\_FORCE** = `6`

Trims the text per word and adds an ellipsis to indicate that parts are hidden regardless of trimmed text length.

* * *

flags **TextOverrunFlag**: [🔗](#enum-textserver-textoverrunflag)

[TextOverrunFlag](#enum-textserver-textoverrunflag) **OVERRUN\_NO\_TRIM** = `0`

No trimming is performed.

[TextOverrunFlag](#enum-textserver-textoverrunflag) **OVERRUN\_TRIM** = `1`

Trims the text when it exceeds the given width.

[TextOverrunFlag](#enum-textserver-textoverrunflag) **OVERRUN\_TRIM\_WORD\_ONLY** = `2`

Trims the text per word instead of per grapheme.

[TextOverrunFlag](#enum-textserver-textoverrunflag) **OVERRUN\_ADD\_ELLIPSIS** = `4`

Determines whether an ellipsis should be added at the end of the text.

[TextOverrunFlag](#enum-textserver-textoverrunflag) **OVERRUN\_ENFORCE\_ELLIPSIS** = `8`

Determines whether the ellipsis at the end of the text is enforced and may not be hidden.

[TextOverrunFlag](#enum-textserver-textoverrunflag) **OVERRUN\_JUSTIFICATION\_AWARE** = `16`

Accounts for the text being justified before attempting to trim it (see [JustificationFlag](#enum-textserver-justificationflag)).

* * *

flags **GraphemeFlag**: [🔗](#enum-textserver-graphemeflag)

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_VALID** = `1`

Grapheme is supported by the font, and can be drawn.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_RTL** = `2`

Grapheme is part of right-to-left or bottom-to-top run.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_VIRTUAL** = `4`

Grapheme is not part of source text, it was added by justification process.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_SPACE** = `8`

Grapheme is whitespace.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_BREAK\_HARD** = `16`

Grapheme is mandatory break point (e.g. `"\n"`).

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_BREAK\_SOFT** = `32`

Grapheme is optional break point (e.g. space).

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_TAB** = `64`

Grapheme is the tabulation character.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_ELONGATION** = `128`

Grapheme is kashida.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_PUNCTUATION** = `256`

Grapheme is punctuation character.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_UNDERSCORE** = `512`

Grapheme is underscore character.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_CONNECTED** = `1024`

Grapheme is connected to the previous grapheme. Breaking line before this grapheme is not safe.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_SAFE\_TO\_INSERT\_TATWEEL** = `2048`

It is safe to insert a U+0640 before this grapheme for elongation.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_EMBEDDED\_OBJECT** = `4096`

Grapheme is an object replacement character for the embedded object.

[GraphemeFlag](#enum-textserver-graphemeflag) **GRAPHEME\_IS\_SOFT\_HYPHEN** = `8192`

Grapheme is a soft hyphen.

* * *

enum **Hinting**: [🔗](#enum-textserver-hinting)

[Hinting](#enum-textserver-hinting) **HINTING\_NONE** = `0`

Disables font hinting (smoother but less crisp).

[Hinting](#enum-textserver-hinting) **HINTING\_LIGHT** = `1`

Use the light font hinting mode.

[Hinting](#enum-textserver-hinting) **HINTING\_NORMAL** = `2`

Use the default font hinting mode (crisper but less smooth).

**Note:** This hinting mode changes both horizontal and vertical glyph metrics. If applied to monospace font, some glyphs might have different width.

* * *

enum **SubpixelPositioning**: [🔗](#enum-textserver-subpixelpositioning)

[SubpixelPositioning](#enum-textserver-subpixelpositioning) **SUBPIXEL\_POSITIONING\_DISABLED** = `0`

Glyph horizontal position is rounded to the whole pixel size, each glyph is rasterized once.

[SubpixelPositioning](#enum-textserver-subpixelpositioning) **SUBPIXEL\_POSITIONING\_AUTO** = `1`

Glyph horizontal position is rounded based on font size.

- To one quarter of the pixel size if font size is smaller or equal to [SUBPIXEL\_POSITIONING\_ONE\_QUARTER\_MAX\_SIZE](#class-textserver-constant-subpixel-positioning-one-quarter-max-size).

- To one half of the pixel size if font size is smaller or equal to [SUBPIXEL\_POSITIONING\_ONE\_HALF\_MAX\_SIZE](#class-textserver-constant-subpixel-positioning-one-half-max-size).

- To the whole pixel size for larger fonts.


[SubpixelPositioning](#enum-textserver-subpixelpositioning) **SUBPIXEL\_POSITIONING\_ONE\_HALF** = `2`

Glyph horizontal position is rounded to one half of the pixel size, each glyph is rasterized up to two times.

[SubpixelPositioning](#enum-textserver-subpixelpositioning) **SUBPIXEL\_POSITIONING\_ONE\_QUARTER** = `3`

Glyph horizontal position is rounded to one quarter of the pixel size, each glyph is rasterized up to four times.

[SubpixelPositioning](#enum-textserver-subpixelpositioning) **SUBPIXEL\_POSITIONING\_ONE\_HALF\_MAX\_SIZE** = `20`

Maximum font size which will use "one half of the pixel" subpixel positioning in [SUBPIXEL\_POSITIONING\_AUTO](#class-textserver-constant-subpixel-positioning-auto) mode.

[SubpixelPositioning](#enum-textserver-subpixelpositioning) **SUBPIXEL\_POSITIONING\_ONE\_QUARTER\_MAX\_SIZE** = `16`

Maximum font size which will use "one quarter of the pixel" subpixel positioning in [SUBPIXEL\_POSITIONING\_AUTO](#class-textserver-constant-subpixel-positioning-auto) mode.

* * *

enum **Feature**: [🔗](#enum-textserver-feature)

[Feature](#enum-textserver-feature) **FEATURE\_SIMPLE\_LAYOUT** = `1`

TextServer supports simple text layouts.

[Feature](#enum-textserver-feature) **FEATURE\_BIDI\_LAYOUT** = `2`

TextServer supports bidirectional text layouts.

[Feature](#enum-textserver-feature) **FEATURE\_VERTICAL\_LAYOUT** = `4`

TextServer supports vertical layouts.

[Feature](#enum-textserver-feature) **FEATURE\_SHAPING** = `8`

TextServer supports complex text shaping.

[Feature](#enum-textserver-feature) **FEATURE\_KASHIDA\_JUSTIFICATION** = `16`

TextServer supports justification using kashidas.

[Feature](#enum-textserver-feature) **FEATURE\_BREAK\_ITERATORS** = `32`

TextServer supports complex line/word breaking rules (e.g. dictionary based).

[Feature](#enum-textserver-feature) **FEATURE\_FONT\_BITMAP** = `64`

TextServer supports loading bitmap fonts.

[Feature](#enum-textserver-feature) **FEATURE\_FONT\_DYNAMIC** = `128`

TextServer supports loading dynamic (TrueType, OpeType, etc.) fonts.

[Feature](#enum-textserver-feature) **FEATURE\_FONT\_MSDF** = `256`

TextServer supports multichannel signed distance field dynamic font rendering.

[Feature](#enum-textserver-feature) **FEATURE\_FONT\_SYSTEM** = `512`

TextServer supports loading system fonts.

[Feature](#enum-textserver-feature) **FEATURE\_FONT\_VARIABLE** = `1024`

TextServer supports variable fonts.

[Feature](#enum-textserver-feature) **FEATURE\_CONTEXT\_SENSITIVE\_CASE\_CONVERSION** = `2048`

TextServer supports locale dependent and context sensitive case conversion.

[Feature](#enum-textserver-feature) **FEATURE\_USE\_SUPPORT\_DATA** = `4096`

TextServer require external data file for some features, see [load\_support\_data()](#class-textserver-method-load-support-data).

[Feature](#enum-textserver-feature) **FEATURE\_UNICODE\_IDENTIFIERS** = `8192`

TextServer supports UAX #31 identifier validation, see [is\_valid\_identifier()](#class-textserver-method-is-valid-identifier).

[Feature](#enum-textserver-feature) **FEATURE\_UNICODE\_SECURITY** = `16384`

TextServer supports [Unicode Technical Report #36](https://unicode.org/reports/tr36/) and [Unicode Technical Standard #39](https://unicode.org/reports/tr39/) based spoof detection features.

* * *

enum **ContourPointTag**: [🔗](#enum-textserver-contourpointtag)

[ContourPointTag](#enum-textserver-contourpointtag) **CONTOUR\_CURVE\_TAG\_ON** = `1`

Contour point is on the curve.

[ContourPointTag](#enum-textserver-contourpointtag) **CONTOUR\_CURVE\_TAG\_OFF\_CONIC** = `0`

Contour point isn't on the curve, but serves as a control point for a conic (quadratic) Bézier arc.

[ContourPointTag](#enum-textserver-contourpointtag) **CONTOUR\_CURVE\_TAG\_OFF\_CUBIC** = `2`

Contour point isn't on the curve, but serves as a control point for a cubic Bézier arc.

* * *

enum **SpacingType**: [🔗](#enum-textserver-spacingtype)

[SpacingType](#enum-textserver-spacingtype) **SPACING\_GLYPH** = `0`

Spacing for each glyph.

[SpacingType](#enum-textserver-spacingtype) **SPACING\_SPACE** = `1`

Spacing for the space character.

[SpacingType](#enum-textserver-spacingtype) **SPACING\_TOP** = `2`

Spacing at the top of the line.

[SpacingType](#enum-textserver-spacingtype) **SPACING\_BOTTOM** = `3`

Spacing at the bottom of the line.

[SpacingType](#enum-textserver-spacingtype) **SPACING\_MAX** = `4`

Represents the size of the [SpacingType](#enum-textserver-spacingtype) enum.

* * *

flags **FontStyle**: [🔗](#enum-textserver-fontstyle)

[FontStyle](#enum-textserver-fontstyle) **FONT\_BOLD** = `1`

Font is bold.

[FontStyle](#enum-textserver-fontstyle) **FONT\_ITALIC** = `2`

Font is italic or oblique.

[FontStyle](#enum-textserver-fontstyle) **FONT\_FIXED\_WIDTH** = `4`

Font has fixed-width characters (also known as monospace).

* * *

enum **StructuredTextParser**: [🔗](#enum-textserver-structuredtextparser)

[StructuredTextParser](#enum-textserver-structuredtextparser) **STRUCTURED\_TEXT\_DEFAULT** = `0`

Use default Unicode BiDi algorithm.

[StructuredTextParser](#enum-textserver-structuredtextparser) **STRUCTURED\_TEXT\_URI** = `1`

BiDi override for URI.

[StructuredTextParser](#enum-textserver-structuredtextparser) **STRUCTURED\_TEXT\_FILE** = `2`

BiDi override for file path.

[StructuredTextParser](#enum-textserver-structuredtextparser) **STRUCTURED\_TEXT\_EMAIL** = `3`

BiDi override for email.

[StructuredTextParser](#enum-textserver-structuredtextparser) **STRUCTURED\_TEXT\_LIST** = `4`

BiDi override for lists. Structured text options: list separator [String](class_string.md#class-string).

[StructuredTextParser](#enum-textserver-structuredtextparser) **STRUCTURED\_TEXT\_GDSCRIPT** = `5`

BiDi override for GDScript.

[StructuredTextParser](#enum-textserver-structuredtextparser) **STRUCTURED\_TEXT\_CUSTOM** = `6`

User defined structured text BiDi override function.

* * *

enum **FixedSizeScaleMode**: [🔗](#enum-textserver-fixedsizescalemode)

[FixedSizeScaleMode](#enum-textserver-fixedsizescalemode) **FIXED\_SIZE\_SCALE\_DISABLE** = `0`

Bitmap font is not scaled.

[FixedSizeScaleMode](#enum-textserver-fixedsizescalemode) **FIXED\_SIZE\_SCALE\_INTEGER\_ONLY** = `1`

Bitmap font is scaled to the closest integer multiple of the font's fixed size. This is the recommended option for pixel art fonts.

[FixedSizeScaleMode](#enum-textserver-fixedsizescalemode) **FIXED\_SIZE\_SCALE\_ENABLED** = `2`

Bitmap font is scaled to an arbitrary (fractional) size. This is the recommended option for non-pixel art fonts.

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **create\_font**() [🔗](#class-textserver-method-create-font)

Creates a new, empty font cache entry resource. To free the resulting resource, use the [free\_rid()](#class-textserver-method-free-rid) method.

* * *

[RID](class_rid.md#class-rid) **create\_font\_linked\_variation**(font\_rid: [RID](class_rid.md#class-rid)) [🔗](#class-textserver-method-create-font-linked-variation)

Creates a new variation existing font which is reusing the same glyph cache and font data. To free the resulting resource, use the [free\_rid()](#class-textserver-method-free-rid) method.

* * *

[RID](class_rid.md#class-rid) **create\_shaped\_text**(direction: [Direction](#enum-textserver-direction) = 0, orientation: [Orientation](#enum-textserver-orientation) = 0) [🔗](#class-textserver-method-create-shaped-text)

Creates a new buffer for complex text layout, with the given `direction` and `orientation`. To free the resulting buffer, use [free\_rid()](#class-textserver-method-free-rid) method.

**Note:** Direction is ignored if server does not support [FEATURE\_BIDI\_LAYOUT](#class-textserver-constant-feature-bidi-layout) feature (supported by [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced)).

**Note:** Orientation is ignored if server does not support [FEATURE\_VERTICAL\_LAYOUT](#class-textserver-constant-feature-vertical-layout) feature (supported by [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced)).

* * *

void **draw\_hex\_code\_box**(canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) const [🔗](#class-textserver-method-draw-hex-code-box)

Draws box displaying character hexadecimal code. Used for replacing missing characters.

* * *

void **font\_clear\_glyphs**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-textserver-method-font-clear-glyphs)

Removes all rendered glyph information from the cache entry.

**Note:** This function will not remove textures associated with the glyphs, use [font\_remove\_texture()](#class-textserver-method-font-remove-texture) to remove them manually.

* * *

void **font\_clear\_kerning\_map**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-clear-kerning-map)

Removes all kerning overrides.

* * *

void **font\_clear\_size\_cache**(font\_rid: [RID](class_rid.md#class-rid)) [🔗](#class-textserver-method-font-clear-size-cache)

Removes all font sizes from the cache entry.

* * *

void **font\_clear\_system\_fallback\_cache**() [🔗](#class-textserver-method-font-clear-system-fallback-cache)

Frees all automatically loaded system fonts.

* * *

void **font\_clear\_textures**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-textserver-method-font-clear-textures)

Removes all textures from font cache entry.

**Note:** This function will not remove glyphs associated with the texture, use [font\_remove\_glyph()](#class-textserver-method-font-remove-glyph) to remove them manually.

* * *

void **font\_draw\_glyph**(font\_rid: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textserver-method-font-draw-glyph)

Draws single glyph into a canvas item at the position, using `font_rid` at the size `size`. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

**Note:** Glyph index is specific to the font, use glyphs indices returned by [shaped\_text\_get\_glyphs()](#class-textserver-method-shaped-text-get-glyphs) or [font\_get\_glyph\_index()](#class-textserver-method-font-get-glyph-index).

**Note:** If there are pending glyphs to render, calling this function might trigger the texture cache update.

* * *

void **font\_draw\_glyph\_outline**(font\_rid: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), outline\_size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textserver-method-font-draw-glyph-outline)

Draws single glyph outline of size `outline_size` into a canvas item at the position, using `font_rid` at the size `size`. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

**Note:** Glyph index is specific to the font, use glyphs indices returned by [shaped\_text\_get\_glyphs()](#class-textserver-method-shaped-text-get-glyphs) or [font\_get\_glyph\_index()](#class-textserver-method-font-get-glyph-index).

**Note:** If there are pending glyphs to render, calling this function might trigger the texture cache update.

* * *

[FontAntialiasing](#enum-textserver-fontantialiasing) **font\_get\_antialiasing**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-antialiasing)

Returns font anti-aliasing mode.

* * *

[float](class_float.md#class-float) **font\_get\_ascent**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-ascent)

Returns the font ascent (number of pixels above the baseline).

* * *

[float](class_float.md#class-float) **font\_get\_baseline\_offset**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-baseline-offset)

Returns extra baseline offset (as a fraction of font height).

* * *

[int](class_int.md#class-int) **font\_get\_char\_from\_glyph\_index**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-char-from-glyph-index)

Returns character code associated with `glyph_index`, or `0` if `glyph_index` is invalid. See [font\_get\_glyph\_index()](#class-textserver-method-font-get-glyph-index).

* * *

[float](class_float.md#class-float) **font\_get\_descent**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-descent)

Returns the font descent (number of pixels below the baseline).

* * *

[bool](class_bool.md#class-bool) **font\_get\_disable\_embedded\_bitmaps**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-disable-embedded-bitmaps)

Returns whether the font's embedded bitmap loading is disabled.

* * *

[float](class_float.md#class-float) **font\_get\_embolden**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-embolden)

Returns font embolden strength.

* * *

[int](class_int.md#class-int) **font\_get\_face\_count**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-face-count)

Returns number of faces in the TrueType / OpenType collection.

* * *

[int](class_int.md#class-int) **font\_get\_face\_index**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-face-index)

Returns an active face index in the TrueType / OpenType collection.

* * *

[int](class_int.md#class-int) **font\_get\_fixed\_size**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-fixed-size)

Returns bitmap font fixed size.

* * *

[FixedSizeScaleMode](#enum-textserver-fixedsizescalemode) **font\_get\_fixed\_size\_scale\_mode**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-fixed-size-scale-mode)

Returns bitmap font scaling mode.

* * *

[bool](class_bool.md#class-bool) **font\_get\_generate\_mipmaps**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-generate-mipmaps)

Returns `true` if font texture mipmap generation is enabled.

* * *

[float](class_float.md#class-float) **font\_get\_global\_oversampling**() const [🔗](#class-textserver-method-font-get-global-oversampling)

**Deprecated:** Use [Viewport](class_viewport.md#class-viewport) oversampling, or the `oversampling` argument of the `draw_*` methods instead.

Deprecated. This method always returns `1.0`.

* * *

[Vector2](class_vector2.md#class-vector2) **font\_get\_glyph\_advance**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-glyph-advance)

Returns glyph advance (offset of the next glyph).

**Note:** Advance for glyphs outlines is the same as the base glyph advance and is not saved.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **font\_get\_glyph\_contours**(font: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-glyph-contours)

Returns outline contours of the glyph as a [Dictionary](class_dictionary.md#class-dictionary) with the following contents:

`points` \- [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), containing outline points. `x` and `y` are point coordinates. `z` is the type of the point, using the [ContourPointTag](#enum-textserver-contourpointtag) values.

`contours` \- [PackedInt32Array](class_packedint32array.md#class-packedint32array), containing indices the end points of each contour.

`orientation` \- [bool](class_bool.md#class-bool), contour orientation. If `true`, clockwise contours must be filled.

- Two successive [CONTOUR\_CURVE\_TAG\_ON](#class-textserver-constant-contour-curve-tag-on) points indicate a line segment.

- One [CONTOUR\_CURVE\_TAG\_OFF\_CONIC](#class-textserver-constant-contour-curve-tag-off-conic) point between two [CONTOUR\_CURVE\_TAG\_ON](#class-textserver-constant-contour-curve-tag-on) points indicates a single conic (quadratic) Bézier arc.

- Two [CONTOUR\_CURVE\_TAG\_OFF\_CUBIC](#class-textserver-constant-contour-curve-tag-off-cubic) points between two [CONTOUR\_CURVE\_TAG\_ON](#class-textserver-constant-contour-curve-tag-on) points indicate a single cubic Bézier arc.

- Two successive [CONTOUR\_CURVE\_TAG\_OFF\_CONIC](#class-textserver-constant-contour-curve-tag-off-conic) points indicate two successive conic (quadratic) Bézier arcs with a virtual [CONTOUR\_CURVE\_TAG\_ON](#class-textserver-constant-contour-curve-tag-on) point at their middle.

- Each contour is closed. The last point of a contour uses the first point of a contour as its next point, and vice versa. The first point can be [CONTOUR\_CURVE\_TAG\_OFF\_CONIC](#class-textserver-constant-contour-curve-tag-off-conic) point.


* * *

[int](class_int.md#class-int) **font\_get\_glyph\_index**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), char: [int](class_int.md#class-int), variation\_selector: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-glyph-index)

Returns the glyph index of a `char`, optionally modified by the `variation_selector`. See [font\_get\_char\_from\_glyph\_index()](#class-textserver-method-font-get-char-from-glyph-index).

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **font\_get\_glyph\_list**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-textserver-method-font-get-glyph-list)

Returns list of rendered glyphs in the cache entry.

* * *

[Vector2](class_vector2.md#class-vector2) **font\_get\_glyph\_offset**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-glyph-offset)

Returns glyph offset from the baseline.

* * *

[Vector2](class_vector2.md#class-vector2) **font\_get\_glyph\_size**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-glyph-size)

Returns size of the glyph.

* * *

[int](class_int.md#class-int) **font\_get\_glyph\_texture\_idx**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-glyph-texture-idx)

Returns index of the cache texture containing the glyph.

* * *

[RID](class_rid.md#class-rid) **font\_get\_glyph\_texture\_rid**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-glyph-texture-rid)

Returns resource ID of the cache texture containing the glyph.

**Note:** If there are pending glyphs to render, calling this function might trigger the texture cache update.

* * *

[Vector2](class_vector2.md#class-vector2) **font\_get\_glyph\_texture\_size**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-glyph-texture-size)

Returns size of the cache texture containing the glyph.

**Note:** If there are pending glyphs to render, calling this function might trigger the texture cache update.

* * *

[Rect2](class_rect2.md#class-rect2) **font\_get\_glyph\_uv\_rect**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-glyph-uv-rect)

Returns rectangle in the cache texture containing the glyph.

* * *

[Hinting](#enum-textserver-hinting) **font\_get\_hinting**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-hinting)

Returns the font hinting mode. Used by dynamic fonts only.

* * *

[bool](class_bool.md#class-bool) **font\_get\_keep\_rounding\_remainders**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-keep-rounding-remainders)

Returns glyph position rounding behavior. If set to `true`, when aligning glyphs to the pixel boundaries rounding remainders are accumulated to ensure more uniform glyph distribution. This setting has no effect if subpixel positioning is enabled.

* * *

[Vector2](class_vector2.md#class-vector2) **font\_get\_kerning**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-textserver-method-font-get-kerning)

Returns kerning for the pair of glyphs.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **font\_get\_kerning\_list**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-kerning-list)

Returns list of the kerning overrides.

* * *

[bool](class_bool.md#class-bool) **font\_get\_language\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) [🔗](#class-textserver-method-font-get-language-support-override)

Returns `true` if support override is enabled for the `language`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **font\_get\_language\_support\_overrides**(font\_rid: [RID](class_rid.md#class-rid)) [🔗](#class-textserver-method-font-get-language-support-overrides)

Returns list of language support overrides.

* * *

[int](class_int.md#class-int) **font\_get\_msdf\_pixel\_range**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-msdf-pixel-range)

Returns the width of the range around the shape between the minimum and maximum representable signed distance.

* * *

[int](class_int.md#class-int) **font\_get\_msdf\_size**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-msdf-size)

Returns source font size used to generate MSDF textures.

* * *

[String](class_string.md#class-string) **font\_get\_name**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-name)

Returns font family name.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **font\_get\_opentype\_feature\_overrides**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-opentype-feature-overrides)

Returns font OpenType feature set override.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **font\_get\_ot\_name\_strings**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-ot-name-strings)

Returns [Dictionary](class_dictionary.md#class-dictionary) with OpenType font name strings (localized font names, version, description, license information, sample text, etc.).

* * *

[float](class_float.md#class-float) **font\_get\_oversampling**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-oversampling)

Returns oversampling factor override. If set to a positive value, overrides the oversampling factor of the viewport this font is used in. See [Viewport.oversampling](class_viewport.md#class-viewport-property-oversampling). This value doesn't override the `oversampling` parameter of `draw_*` methods. Used by dynamic fonts only.

* * *

[float](class_float.md#class-float) **font\_get\_scale**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-scale)

Returns scaling factor of the color bitmap font.

* * *

[bool](class_bool.md#class-bool) **font\_get\_script\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) [🔗](#class-textserver-method-font-get-script-support-override)

Returns `true` if support override is enabled for the `script`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **font\_get\_script\_support\_overrides**(font\_rid: [RID](class_rid.md#class-rid)) [🔗](#class-textserver-method-font-get-script-support-overrides)

Returns list of script support overrides.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **font\_get\_size\_cache\_info**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-size-cache-info)

Returns font cache information, each entry contains the following fields: `Vector2i size_px` \- font size in pixels, `float viewport_oversampling` \- viewport oversampling factor, `int glyphs` \- number of rendered glyphs, `int textures` \- number of used textures, `int textures_size` \- size of texture data in bytes.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **font\_get\_size\_cache\_list**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-size-cache-list)

Returns list of the font sizes in the cache. Each size is [Vector2i](class_vector2i.md#class-vector2i) with font size and outline size.

* * *

[int](class_int.md#class-int) **font\_get\_spacing**(font\_rid: [RID](class_rid.md#class-rid), spacing: [SpacingType](#enum-textserver-spacingtype)) const [🔗](#class-textserver-method-font-get-spacing)

Returns the spacing for `spacing` in pixels (not relative to the font size).

* * *

[int](class_int.md#class-int) **font\_get\_stretch**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-stretch)

Returns font stretch amount, compared to a normal width. A percentage value between `50%` and `200%`.

* * *

BitField\[ [FontStyle](#enum-textserver-fontstyle)\] **font\_get\_style**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-style)

Returns font style flags.

* * *

[String](class_string.md#class-string) **font\_get\_style\_name**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-style-name)

Returns font style name.

* * *

[SubpixelPositioning](#enum-textserver-subpixelpositioning) **font\_get\_subpixel\_positioning**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-subpixel-positioning)

Returns font subpixel glyph positioning mode.

* * *

[String](class_string.md#class-string) **font\_get\_supported\_chars**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-supported-chars)

Returns a string containing all the characters available in the font.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **font\_get\_supported\_glyphs**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-supported-glyphs)

Returns an array containing all glyph indices in the font.

* * *

[int](class_int.md#class-int) **font\_get\_texture\_count**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-textserver-method-font-get-texture-count)

Returns number of textures used by font cache entry.

* * *

[Image](class_image.md#class-image) **font\_get\_texture\_image**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-texture-image)

Returns font cache texture image data.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **font\_get\_texture\_offsets**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-texture-offsets)

Returns array containing glyph packing data.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **font\_get\_transform**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-transform)

Returns 2D transform applied to the font outlines.

* * *

[float](class_float.md#class-float) **font\_get\_underline\_position**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-underline-position)

Returns pixel offset of the underline below the baseline.

* * *

[float](class_float.md#class-float) **font\_get\_underline\_thickness**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-get-underline-thickness)

Returns thickness of the underline in pixels.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **font\_get\_variation\_coordinates**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-variation-coordinates)

Returns variation coordinates for the specified font cache entry. See [font\_supported\_variation\_list()](#class-textserver-method-font-supported-variation-list) for more info.

* * *

[int](class_int.md#class-int) **font\_get\_weight**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-get-weight)

Returns weight (boldness) of the font. A value in the `100...999` range, normal font weight is `400`, bold font weight is `700`.

* * *

[bool](class_bool.md#class-bool) **font\_has\_char**(font\_rid: [RID](class_rid.md#class-rid), char: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-font-has-char)

Returns `true` if a Unicode `char` is available in the font.

* * *

[bool](class_bool.md#class-bool) **font\_is\_allow\_system\_fallback**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-is-allow-system-fallback)

Returns `true` if system fonts can be automatically used as fallbacks.

* * *

[bool](class_bool.md#class-bool) **font\_is\_force\_autohinter**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-is-force-autohinter)

Returns `true` if auto-hinting is supported and preferred over font built-in hinting. Used by dynamic fonts only.

* * *

[bool](class_bool.md#class-bool) **font\_is\_language\_supported**(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) const [🔗](#class-textserver-method-font-is-language-supported)

Returns `true`, if font supports given language ( [ISO 639](https://en.wikipedia.org/wiki/ISO_639-1) code).

* * *

[bool](class_bool.md#class-bool) **font\_is\_modulate\_color\_glyphs**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-is-modulate-color-glyphs)

Returns `true`, if color modulation is applied when drawing colored glyphs.

* * *

[bool](class_bool.md#class-bool) **font\_is\_multichannel\_signed\_distance\_field**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-is-multichannel-signed-distance-field)

Returns `true` if glyphs of all sizes are rendered using single multichannel signed distance field generated from the dynamic font vector data.

* * *

[bool](class_bool.md#class-bool) **font\_is\_script\_supported**(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) const [🔗](#class-textserver-method-font-is-script-supported)

Returns `true`, if font supports given script (ISO 15924 code).

* * *

void **font\_remove\_glyph**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-remove-glyph)

Removes specified rendered glyph information from the cache entry.

**Note:** This function will not remove textures associated with the glyphs, use [font\_remove\_texture()](#class-textserver-method-font-remove-texture) to remove them manually.

* * *

void **font\_remove\_kerning**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-textserver-method-font-remove-kerning)

Removes kerning override for the pair of glyphs.

* * *

void **font\_remove\_language\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) [🔗](#class-textserver-method-font-remove-language-support-override)

Remove language support override.

* * *

void **font\_remove\_script\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) [🔗](#class-textserver-method-font-remove-script-support-override)

Removes script support override.

* * *

void **font\_remove\_size\_cache**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-textserver-method-font-remove-size-cache)

Removes specified font size from the cache entry.

* * *

void **font\_remove\_texture**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-remove-texture)

Removes specified texture from the cache entry.

**Note:** This function will not remove glyphs associated with the texture, remove them manually, using [font\_remove\_glyph()](#class-textserver-method-font-remove-glyph).

* * *

void **font\_render\_glyph**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), index: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-render-glyph)

Renders specified glyph to the font cache texture.

* * *

void **font\_render\_range**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-render-range)

Renders the range of characters to the font cache texture.

* * *

void **font\_set\_allow\_system\_fallback**(font\_rid: [RID](class_rid.md#class-rid), allow\_system\_fallback: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-font-set-allow-system-fallback)

If set to `true`, system fonts can be automatically used as fallbacks.

* * *

void **font\_set\_antialiasing**(font\_rid: [RID](class_rid.md#class-rid), antialiasing: [FontAntialiasing](#enum-textserver-fontantialiasing)) [🔗](#class-textserver-method-font-set-antialiasing)

Sets font anti-aliasing mode.

* * *

void **font\_set\_ascent**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), ascent: [float](class_float.md#class-float)) [🔗](#class-textserver-method-font-set-ascent)

Sets the font ascent (number of pixels above the baseline).

* * *

void **font\_set\_baseline\_offset**(font\_rid: [RID](class_rid.md#class-rid), baseline\_offset: [float](class_float.md#class-float)) [🔗](#class-textserver-method-font-set-baseline-offset)

Sets extra baseline offset (as a fraction of font height).

* * *

void **font\_set\_data**(font\_rid: [RID](class_rid.md#class-rid), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-textserver-method-font-set-data)

Sets font source data, e.g contents of the dynamic font source file.

* * *

void **font\_set\_descent**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), descent: [float](class_float.md#class-float)) [🔗](#class-textserver-method-font-set-descent)

Sets the font descent (number of pixels below the baseline).

* * *

void **font\_set\_disable\_embedded\_bitmaps**(font\_rid: [RID](class_rid.md#class-rid), disable\_embedded\_bitmaps: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-font-set-disable-embedded-bitmaps)

If set to `true`, embedded font bitmap loading is disabled (bitmap-only and color fonts ignore this property).

* * *

void **font\_set\_embolden**(font\_rid: [RID](class_rid.md#class-rid), strength: [float](class_float.md#class-float)) [🔗](#class-textserver-method-font-set-embolden)

Sets font embolden strength. If `strength` is not equal to zero, emboldens the font outlines. Negative values reduce the outline thickness.

* * *

void **font\_set\_face\_index**(font\_rid: [RID](class_rid.md#class-rid), face\_index: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-set-face-index)

Sets an active face index in the TrueType / OpenType collection.

* * *

void **font\_set\_fixed\_size**(font\_rid: [RID](class_rid.md#class-rid), fixed\_size: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-set-fixed-size)

Sets bitmap font fixed size. If set to value greater than zero, same cache entry will be used for all font sizes.

* * *

void **font\_set\_fixed\_size\_scale\_mode**(font\_rid: [RID](class_rid.md#class-rid), fixed\_size\_scale\_mode: [FixedSizeScaleMode](#enum-textserver-fixedsizescalemode)) [🔗](#class-textserver-method-font-set-fixed-size-scale-mode)

Sets bitmap font scaling mode. This property is used only if `fixed_size` is greater than zero.

* * *

void **font\_set\_force\_autohinter**(font\_rid: [RID](class_rid.md#class-rid), force\_autohinter: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-font-set-force-autohinter)

If set to `true` auto-hinting is preferred over font built-in hinting.

* * *

void **font\_set\_generate\_mipmaps**(font\_rid: [RID](class_rid.md#class-rid), generate\_mipmaps: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-font-set-generate-mipmaps)

If set to `true` font texture mipmap generation is enabled.

* * *

void **font\_set\_global\_oversampling**(oversampling: [float](class_float.md#class-float)) [🔗](#class-textserver-method-font-set-global-oversampling)

**Deprecated:** Use [Viewport](class_viewport.md#class-viewport) oversampling, or the `oversampling` argument of the `draw_*` methods instead.

Deprecated. This method does nothing.

* * *

void **font\_set\_glyph\_advance**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int), advance: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-textserver-method-font-set-glyph-advance)

Sets glyph advance (offset of the next glyph).

**Note:** Advance for glyphs outlines is the same as the base glyph advance and is not saved.

* * *

void **font\_set\_glyph\_offset**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), offset: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-textserver-method-font-set-glyph-offset)

Sets glyph offset from the baseline.

* * *

void **font\_set\_glyph\_size**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), gl\_size: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-textserver-method-font-set-glyph-size)

Sets size of the glyph.

* * *

void **font\_set\_glyph\_texture\_idx**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), texture\_idx: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-set-glyph-texture-idx)

Sets index of the cache texture containing the glyph.

* * *

void **font\_set\_glyph\_uv\_rect**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), uv\_rect: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-textserver-method-font-set-glyph-uv-rect)

Sets rectangle in the cache texture containing the glyph.

* * *

void **font\_set\_hinting**(font\_rid: [RID](class_rid.md#class-rid), hinting: [Hinting](#enum-textserver-hinting)) [🔗](#class-textserver-method-font-set-hinting)

Sets font hinting mode. Used by dynamic fonts only.

* * *

void **font\_set\_keep\_rounding\_remainders**(font\_rid: [RID](class_rid.md#class-rid), keep\_rounding\_remainders: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-font-set-keep-rounding-remainders)

Sets glyph position rounding behavior. If set to `true`, when aligning glyphs to the pixel boundaries rounding remainders are accumulated to ensure more uniform glyph distribution. This setting has no effect if subpixel positioning is enabled.

* * *

void **font\_set\_kerning**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i), kerning: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-textserver-method-font-set-kerning)

Sets kerning for the pair of glyphs.

* * *

void **font\_set\_language\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-font-set-language-support-override)

Adds override for [font\_is\_language\_supported()](#class-textserver-method-font-is-language-supported).

* * *

void **font\_set\_modulate\_color\_glyphs**(font\_rid: [RID](class_rid.md#class-rid), force\_autohinter: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-font-set-modulate-color-glyphs)

If set to `true`, color modulation is applied when drawing colored glyphs, otherwise it's applied to the monochrome glyphs only.

* * *

void **font\_set\_msdf\_pixel\_range**(font\_rid: [RID](class_rid.md#class-rid), msdf\_pixel\_range: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-set-msdf-pixel-range)

Sets the width of the range around the shape between the minimum and maximum representable signed distance.

* * *

void **font\_set\_msdf\_size**(font\_rid: [RID](class_rid.md#class-rid), msdf\_size: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-set-msdf-size)

Sets source font size used to generate MSDF textures.

* * *

void **font\_set\_multichannel\_signed\_distance\_field**(font\_rid: [RID](class_rid.md#class-rid), msdf: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-font-set-multichannel-signed-distance-field)

If set to `true`, glyphs of all sizes are rendered using single multichannel signed distance field generated from the dynamic font vector data. MSDF rendering allows displaying the font at any scaling factor without blurriness, and without incurring a CPU cost when the font size changes (since the font no longer needs to be rasterized on the CPU). As a downside, font hinting is not available with MSDF. The lack of font hinting may result in less crisp and less readable fonts at small sizes.

**Note:** MSDF font rendering does not render glyphs with overlapping shapes correctly. Overlapping shapes are not valid per the OpenType standard, but are still commonly found in many font files, especially those converted by Google Fonts. To avoid issues with overlapping glyphs, consider downloading the font file directly from the type foundry instead of relying on Google Fonts.

* * *

void **font\_set\_name**(font\_rid: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) [🔗](#class-textserver-method-font-set-name)

Sets the font family name.

* * *

void **font\_set\_opentype\_feature\_overrides**(font\_rid: [RID](class_rid.md#class-rid), overrides: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-textserver-method-font-set-opentype-feature-overrides)

Sets font OpenType feature set override.

* * *

void **font\_set\_oversampling**(font\_rid: [RID](class_rid.md#class-rid), oversampling: [float](class_float.md#class-float)) [🔗](#class-textserver-method-font-set-oversampling)

If set to a positive value, overrides the oversampling factor of the viewport this font is used in. See [Viewport.oversampling](class_viewport.md#class-viewport-property-oversampling). This value doesn't override the `oversampling` parameter of `draw_*` methods. Used by dynamic fonts only.

* * *

void **font\_set\_scale**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), scale: [float](class_float.md#class-float)) [🔗](#class-textserver-method-font-set-scale)

Sets scaling factor of the color bitmap font.

* * *

void **font\_set\_script\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-font-set-script-support-override)

Adds override for [font\_is\_script\_supported()](#class-textserver-method-font-is-script-supported).

* * *

void **font\_set\_spacing**(font\_rid: [RID](class_rid.md#class-rid), spacing: [SpacingType](#enum-textserver-spacingtype), value: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-set-spacing)

Sets the spacing for `spacing` to `value` in pixels (not relative to the font size).

* * *

void **font\_set\_stretch**(font\_rid: [RID](class_rid.md#class-rid), weight: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-set-stretch)

Sets font stretch amount, compared to a normal width. A percentage value between `50%` and `200%`.

**Note:** This value is used for font matching only and will not affect font rendering. Use [font\_set\_face\_index()](#class-textserver-method-font-set-face-index), [font\_set\_variation\_coordinates()](#class-textserver-method-font-set-variation-coordinates), or [font\_set\_transform()](#class-textserver-method-font-set-transform) instead.

* * *

void **font\_set\_style**(font\_rid: [RID](class_rid.md#class-rid), style: BitField\[ [FontStyle](#enum-textserver-fontstyle)\]) [🔗](#class-textserver-method-font-set-style)

Sets the font style flags.

**Note:** This value is used for font matching only and will not affect font rendering. Use [font\_set\_face\_index()](#class-textserver-method-font-set-face-index), [font\_set\_variation\_coordinates()](#class-textserver-method-font-set-variation-coordinates), [font\_set\_embolden()](#class-textserver-method-font-set-embolden), or [font\_set\_transform()](#class-textserver-method-font-set-transform) instead.

* * *

void **font\_set\_style\_name**(font\_rid: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) [🔗](#class-textserver-method-font-set-style-name)

Sets the font style name.

* * *

void **font\_set\_subpixel\_positioning**(font\_rid: [RID](class_rid.md#class-rid), subpixel\_positioning: [SubpixelPositioning](#enum-textserver-subpixelpositioning)) [🔗](#class-textserver-method-font-set-subpixel-positioning)

Sets font subpixel glyph positioning mode.

* * *

void **font\_set\_texture\_image**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), image: [Image](class_image.md#class-image)) [🔗](#class-textserver-method-font-set-texture-image)

Sets font cache texture image data.

* * *

void **font\_set\_texture\_offsets**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), offset: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-textserver-method-font-set-texture-offsets)

Sets array containing glyph packing data.

* * *

void **font\_set\_transform**(font\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-textserver-method-font-set-transform)

Sets 2D transform, applied to the font outlines, can be used for slanting, flipping, and rotating glyphs.

For example, to simulate italic typeface by slanting, apply the following transform `Transform2D(1.0, slant, 0.0, 1.0, 0.0, 0.0)`.

* * *

void **font\_set\_underline\_position**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), underline\_position: [float](class_float.md#class-float)) [🔗](#class-textserver-method-font-set-underline-position)

Sets pixel offset of the underline below the baseline.

* * *

void **font\_set\_underline\_thickness**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), underline\_thickness: [float](class_float.md#class-float)) [🔗](#class-textserver-method-font-set-underline-thickness)

Sets thickness of the underline in pixels.

* * *

void **font\_set\_variation\_coordinates**(font\_rid: [RID](class_rid.md#class-rid), variation\_coordinates: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-textserver-method-font-set-variation-coordinates)

Sets variation coordinates for the specified font cache entry. See [font\_supported\_variation\_list()](#class-textserver-method-font-supported-variation-list) for more info.

* * *

void **font\_set\_weight**(font\_rid: [RID](class_rid.md#class-rid), weight: [int](class_int.md#class-int)) [🔗](#class-textserver-method-font-set-weight)

Sets weight (boldness) of the font. A value in the `100...999` range, normal font weight is `400`, bold font weight is `700`.

**Note:** This value is used for font matching only and will not affect font rendering. Use [font\_set\_face\_index()](#class-textserver-method-font-set-face-index), [font\_set\_variation\_coordinates()](#class-textserver-method-font-set-variation-coordinates), or [font\_set\_embolden()](#class-textserver-method-font-set-embolden) instead.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **font\_supported\_feature\_list**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-supported-feature-list)

Returns the dictionary of the supported OpenType features.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **font\_supported\_variation\_list**(font\_rid: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-font-supported-variation-list)

Returns the dictionary of the supported OpenType variation coordinates.

* * *

[String](class_string.md#class-string) **format\_number**(number: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const [🔗](#class-textserver-method-format-number)

Converts a number from the Western Arabic (0..9) to the numeral systems used in `language`.

If `language` is omitted, the active locale will be used.

* * *

void **free\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-textserver-method-free-rid)

Frees an object created by this **TextServer**.

* * *

[int](class_int.md#class-int) **get\_features**() const [🔗](#class-textserver-method-get-features)

Returns text server features, see [Feature](#enum-textserver-feature).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_hex\_code\_box\_size**(size: [int](class_int.md#class-int), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-get-hex-code-box-size)

Returns size of the replacement character (box with character hexadecimal code that is drawn in place of invalid characters).

* * *

[String](class_string.md#class-string) **get\_name**() const [🔗](#class-textserver-method-get-name)

Returns the name of the server interface.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_support\_data**() const [🔗](#class-textserver-method-get-support-data)

Returns default TextServer database (e.g. ICU break iterators and dictionaries).

* * *

[String](class_string.md#class-string) **get\_support\_data\_filename**() const [🔗](#class-textserver-method-get-support-data-filename)

Returns default TextServer database (e.g. ICU break iterators and dictionaries) filename.

* * *

[String](class_string.md#class-string) **get\_support\_data\_info**() const [🔗](#class-textserver-method-get-support-data-info)

Returns TextServer database (e.g. ICU break iterators and dictionaries) description.

* * *

[bool](class_bool.md#class-bool) **has**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-textserver-method-has)

Returns `true` if `rid` is valid resource owned by this text server.

* * *

[bool](class_bool.md#class-bool) **has\_feature**(feature: [Feature](#enum-textserver-feature)) const [🔗](#class-textserver-method-has-feature)

Returns `true` if the server supports a feature.

* * *

[int](class_int.md#class-int) **is\_confusable**(string: [String](class_string.md#class-string), dict: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) const [🔗](#class-textserver-method-is-confusable)

Returns index of the first string in `dict` which is visually confusable with the `string`, or `-1` if none is found.

**Note:** This method doesn't detect invisible characters, for spoof detection use it in combination with [spoof\_check()](#class-textserver-method-spoof-check).

**Note:** Always returns `-1` if the server does not support the [FEATURE\_UNICODE\_SECURITY](#class-textserver-constant-feature-unicode-security) feature.

* * *

[bool](class_bool.md#class-bool) **is\_locale\_right\_to\_left**(locale: [String](class_string.md#class-string)) const [🔗](#class-textserver-method-is-locale-right-to-left)

Returns `true` if locale is right-to-left.

* * *

[bool](class_bool.md#class-bool) **is\_valid\_identifier**(string: [String](class_string.md#class-string)) const [🔗](#class-textserver-method-is-valid-identifier)

Returns `true` if `string` is a valid identifier.

If the text server supports the [FEATURE\_UNICODE\_IDENTIFIERS](#class-textserver-constant-feature-unicode-identifiers) feature, a valid identifier must:

- Conform to normalization form C.

- Begin with a Unicode character of class XID\_Start or `"_"`.

- May contain Unicode characters of class XID\_Continue in the other positions.

- Use UAX #31 recommended scripts only (mixed scripts are allowed).


If the [FEATURE\_UNICODE\_IDENTIFIERS](#class-textserver-constant-feature-unicode-identifiers) feature is not supported, a valid identifier must:

- Begin with a Unicode character of class XID\_Start or `"_"`.

- May contain Unicode characters of class XID\_Continue in the other positions.


* * *

[bool](class_bool.md#class-bool) **is\_valid\_letter**(unicode: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-is-valid-letter)

Returns `true` if the given code point is a valid letter, i.e. it belongs to the Unicode category "L".

* * *

[bool](class_bool.md#class-bool) **load\_support\_data**(filename: [String](class_string.md#class-string)) [🔗](#class-textserver-method-load-support-data)

Loads optional TextServer database (e.g. ICU break iterators and dictionaries).

**Note:** This function should be called before any other TextServer functions used, otherwise it won't have any effect.

* * *

[int](class_int.md#class-int) **name\_to\_tag**(name: [String](class_string.md#class-string)) const [🔗](#class-textserver-method-name-to-tag)

Converts readable feature, variation, script, or language name to OpenType tag.

* * *

[String](class_string.md#class-string) **parse\_number**(number: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const [🔗](#class-textserver-method-parse-number)

Converts `number` from the numeral systems used in `language` to Western Arabic (0..9).

* * *

[Array](class_array.md#class-array)\[ [Vector3i](class_vector3i.md#class-vector3i)\] **parse\_structured\_text**(parser\_type: [StructuredTextParser](#enum-textserver-structuredtextparser), args: [Array](class_array.md#class-array), text: [String](class_string.md#class-string)) const [🔗](#class-textserver-method-parse-structured-text)

Default implementation of the BiDi algorithm override function.

* * *

[String](class_string.md#class-string) **percent\_sign**(language: [String](class_string.md#class-string) = "") const [🔗](#class-textserver-method-percent-sign)

Returns percent sign used in the `language`.

* * *

[bool](class_bool.md#class-bool) **save\_support\_data**(filename: [String](class_string.md#class-string)) const [🔗](#class-textserver-method-save-support-data)

Saves optional TextServer database (e.g. ICU break iterators and dictionaries) to the file.

**Note:** This function is used by during project export, to include TextServer database.

* * *

[int](class_int.md#class-int) **shaped\_get\_run\_count**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-get-run-count)

Returns the number of uniform text runs in the buffer.

* * *

[Direction](#enum-textserver-direction) **shaped\_get\_run\_direction**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-run-direction)

Returns the direction of the `index` text run (in visual order).

* * *

[RID](class_rid.md#class-rid) **shaped\_get\_run\_font\_rid**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-run-font-rid)

Returns the font RID of the `index` text run (in visual order).

* * *

[int](class_int.md#class-int) **shaped\_get\_run\_font\_size**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-run-font-size)

Returns the font size of the `index` text run (in visual order).

* * *

[String](class_string.md#class-string) **shaped\_get\_run\_language**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-run-language)

Returns the language of the `index` text run (in visual order).

* * *

[Variant](class_variant.md#class-variant) **shaped\_get\_run\_object**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-run-object)

Returns the embedded object of the `index` text run (in visual order).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **shaped\_get\_run\_range**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-run-range)

Returns the source text range of the `index` text run (in visual order).

* * *

[String](class_string.md#class-string) **shaped\_get\_run\_text**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-run-text)

Returns the source text of the `index` text run (in visual order).

* * *

[int](class_int.md#class-int) **shaped\_get\_span\_count**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-get-span-count)

Returns number of text spans added using [shaped\_text\_add\_string()](#class-textserver-method-shaped-text-add-string) or [shaped\_text\_add\_object()](#class-textserver-method-shaped-text-add-object).

* * *

[Variant](class_variant.md#class-variant) **shaped\_get\_span\_embedded\_object**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-span-embedded-object)

Returns text embedded object key.

* * *

[Variant](class_variant.md#class-variant) **shaped\_get\_span\_meta**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-span-meta)

Returns text span metadata.

* * *

[Variant](class_variant.md#class-variant) **shaped\_get\_span\_object**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-span-object)

Returns the text span embedded object key.

* * *

[String](class_string.md#class-string) **shaped\_get\_span\_text**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-get-span-text)

Returns the text span source text.

* * *

[String](class_string.md#class-string) **shaped\_get\_text**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-get-text)

Returns the text buffer source text, including object replacement characters.

* * *

void **shaped\_set\_span\_update\_font**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), fonts: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], size: [int](class_int.md#class-int), opentype\_features: [Dictionary](class_dictionary.md#class-dictionary) = {}) [🔗](#class-textserver-method-shaped-set-span-update-font)

Changes text span font, font size, and OpenType features, without changing the text.

* * *

[bool](class_bool.md#class-bool) **shaped\_text\_add\_object**(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, length: [int](class_int.md#class-int) = 1, baseline: [float](class_float.md#class-float) = 0.0) [🔗](#class-textserver-method-shaped-text-add-object)

Adds inline object to the text buffer, `key` must be unique. In the text, object is represented as `length` object replacement characters.

* * *

[bool](class_bool.md#class-bool) **shaped\_text\_add\_string**(shaped: [RID](class_rid.md#class-rid), text: [String](class_string.md#class-string), fonts: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], size: [int](class_int.md#class-int), opentype\_features: [Dictionary](class_dictionary.md#class-dictionary) = {}, language: [String](class_string.md#class-string) = "", meta: [Variant](class_variant.md#class-variant) = null) [🔗](#class-textserver-method-shaped-text-add-string)

Adds text span and font to draw it to the text buffer.

* * *

void **shaped\_text\_clear**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-textserver-method-shaped-text-clear)

Clears text buffer (removes text and inline objects).

* * *

[int](class_int.md#class-int) **shaped\_text\_closest\_character\_pos**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-text-closest-character-pos)

Returns composite character position closest to the `pos`.

* * *

void **shaped\_text\_draw**(shaped: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), clip\_l: [float](class_float.md#class-float) = -1, clip\_r: [float](class_float.md#class-float) = -1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textserver-method-shaped-text-draw)

Draw shaped text into a canvas item at a given position, with `color`. `pos` specifies the leftmost point of the baseline (for horizontal layout) or topmost point of the baseline (for vertical layout). If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

`clip_l` and `clip_r` are offsets relative to `pos`, going to the right in horizontal layout and downward in vertical layout. If `clip_l` is not negative, glyphs starting before the offset are clipped. If `clip_r` is not negative, glyphs ending after the offset are clipped.

* * *

void **shaped\_text\_draw\_outline**(shaped: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), clip\_l: [float](class_float.md#class-float) = -1, clip\_r: [float](class_float.md#class-float) = -1, outline\_size: [int](class_int.md#class-int) = 1, color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-textserver-method-shaped-text-draw-outline)

Draw the outline of the shaped text into a canvas item at a given position, with `color`. `pos` specifies the leftmost point of the baseline (for horizontal layout) or topmost point of the baseline (for vertical layout). If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

`clip_l` and `clip_r` are offsets relative to `pos`, going to the right in horizontal layout and downward in vertical layout. If `clip_l` is not negative, glyphs starting before the offset are clipped. If `clip_r` is not negative, glyphs ending after the offset are clipped.

* * *

[float](class_float.md#class-float) **shaped\_text\_fit\_to\_width**(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float), justification\_flags: BitField\[ [JustificationFlag](#enum-textserver-justificationflag)\] = 3) [🔗](#class-textserver-method-shaped-text-fit-to-width)

Adjusts text width to fit to specified width, returns new text width.

* * *

[float](class_float.md#class-float) **shaped\_text\_get\_ascent**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-ascent)

Returns the text ascent (number of pixels above the baseline for horizontal layout or to the left of baseline for vertical).

**Note:** Overall ascent can be higher than font ascent, if some glyphs are displaced from the baseline.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **shaped\_text\_get\_carets**(shaped: [RID](class_rid.md#class-rid), position: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-text-get-carets)

Returns shapes of the carets corresponding to the character offset `position` in the text. Returned caret shape is 1 pixel wide rectangle.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **shaped\_text\_get\_character\_breaks**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-character-breaks)

Returns array of the composite character boundaries.

* * *

[int](class_int.md#class-int) **shaped\_text\_get\_custom\_ellipsis**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-custom-ellipsis)

Returns ellipsis character used for text clipping.

* * *

[String](class_string.md#class-string) **shaped\_text\_get\_custom\_punctuation**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-custom-punctuation)

Returns custom punctuation character list, used for word breaking. If set to empty string, server defaults are used.

* * *

[float](class_float.md#class-float) **shaped\_text\_get\_descent**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-descent)

Returns the text descent (number of pixels below the baseline for horizontal layout or to the right of baseline for vertical).

**Note:** Overall descent can be higher than font descent, if some glyphs are displaced from the baseline.

* * *

[Direction](#enum-textserver-direction) **shaped\_text\_get\_direction**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-direction)

Returns direction of the text.

* * *

[Direction](#enum-textserver-direction) **shaped\_text\_get\_dominant\_direction\_in\_range**(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-text-get-dominant-direction-in-range)

Returns dominant direction of in the range of text.

* * *

[int](class_int.md#class-int) **shaped\_text\_get\_ellipsis\_glyph\_count**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-ellipsis-glyph-count)

Returns number of glyphs in the ellipsis.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **shaped\_text\_get\_ellipsis\_glyphs**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-ellipsis-glyphs)

Returns array of the glyphs in the ellipsis.

* * *

[int](class_int.md#class-int) **shaped\_text\_get\_ellipsis\_pos**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-ellipsis-pos)

Returns position of the ellipsis.

* * *

[int](class_int.md#class-int) **shaped\_text\_get\_glyph\_count**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-glyph-count)

Returns number of glyphs in the buffer.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **shaped\_text\_get\_glyphs**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-glyphs)

Returns an array of glyphs in the visual order.

* * *

[Vector2](class_vector2.md#class-vector2) **shaped\_text\_get\_grapheme\_bounds**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-text-get-grapheme-bounds)

Returns composite character's bounds as offsets from the start of the line.

* * *

[Direction](#enum-textserver-direction) **shaped\_text\_get\_inferred\_direction**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-inferred-direction)

Returns direction of the text, inferred by the BiDi algorithm.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **shaped\_text\_get\_line\_breaks**(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float), start: [int](class_int.md#class-int) = 0, break\_flags: BitField\[ [LineBreakFlag](#enum-textserver-linebreakflag)\] = 3) const [🔗](#class-textserver-method-shaped-text-get-line-breaks)

Breaks text to the lines and returns character ranges for each line.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **shaped\_text\_get\_line\_breaks\_adv**(shaped: [RID](class_rid.md#class-rid), width: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), start: [int](class_int.md#class-int) = 0, once: [bool](class_bool.md#class-bool) = true, break\_flags: BitField\[ [LineBreakFlag](#enum-textserver-linebreakflag)\] = 3) const [🔗](#class-textserver-method-shaped-text-get-line-breaks-adv)

Breaks text to the lines and columns. Returns character ranges for each segment.

* * *

[int](class_int.md#class-int) **shaped\_text\_get\_object\_glyph**(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) const [🔗](#class-textserver-method-shaped-text-get-object-glyph)

Returns the glyph index of the inline object.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **shaped\_text\_get\_object\_range**(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) const [🔗](#class-textserver-method-shaped-text-get-object-range)

Returns the character range of the inline object.

* * *

[Rect2](class_rect2.md#class-rect2) **shaped\_text\_get\_object\_rect**(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) const [🔗](#class-textserver-method-shaped-text-get-object-rect)

Returns bounding rectangle of the inline object.

* * *

[Array](class_array.md#class-array) **shaped\_text\_get\_objects**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-objects)

Returns array of inline objects.

* * *

[Orientation](#enum-textserver-orientation) **shaped\_text\_get\_orientation**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-orientation)

Returns text orientation.

* * *

[RID](class_rid.md#class-rid) **shaped\_text\_get\_parent**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-parent)

Returns the parent buffer from which the substring originates.

* * *

[bool](class_bool.md#class-bool) **shaped\_text\_get\_preserve\_control**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-preserve-control)

Returns `true` if text buffer is configured to display control characters.

* * *

[bool](class_bool.md#class-bool) **shaped\_text\_get\_preserve\_invalid**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-preserve-invalid)

Returns `true` if text buffer is configured to display hexadecimal codes in place of invalid characters.

**Note:** If set to `false`, nothing is displayed in place of invalid characters.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **shaped\_text\_get\_range**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-range)

Returns substring buffer character range in the parent buffer.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **shaped\_text\_get\_selection**(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-text-get-selection)

Returns selection rectangles for the specified character range.

* * *

[Vector2](class_vector2.md#class-vector2) **shaped\_text\_get\_size**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-size)

Returns size of the text.

* * *

[int](class_int.md#class-int) **shaped\_text\_get\_spacing**(shaped: [RID](class_rid.md#class-rid), spacing: [SpacingType](#enum-textserver-spacingtype)) const [🔗](#class-textserver-method-shaped-text-get-spacing)

Returns extra spacing added between glyphs or lines in pixels.

* * *

[int](class_int.md#class-int) **shaped\_text\_get\_trim\_pos**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-trim-pos)

Returns the position of the overrun trim.

* * *

[float](class_float.md#class-float) **shaped\_text\_get\_underline\_position**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-underline-position)

Returns pixel offset of the underline below the baseline.

* * *

[float](class_float.md#class-float) **shaped\_text\_get\_underline\_thickness**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-underline-thickness)

Returns thickness of the underline.

* * *

[float](class_float.md#class-float) **shaped\_text\_get\_width**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-get-width)

Returns width (for horizontal layout) or height (for vertical) of the text.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **shaped\_text\_get\_word\_breaks**(shaped: [RID](class_rid.md#class-rid), grapheme\_flags: BitField\[ [GraphemeFlag](#enum-textserver-graphemeflag)\] = 264, skip\_grapheme\_flags: BitField\[ [GraphemeFlag](#enum-textserver-graphemeflag)\] = 4) const [🔗](#class-textserver-method-shaped-text-get-word-breaks)

Breaks text into words and returns array of character ranges. Use `grapheme_flags` to set what characters are used for breaking.

* * *

[bool](class_bool.md#class-bool) **shaped\_text\_has\_visible\_chars**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-has-visible-chars)

Returns `true` if text buffer contains any visible characters.

* * *

[int](class_int.md#class-int) **shaped\_text\_hit\_test\_grapheme**(shaped: [RID](class_rid.md#class-rid), coords: [float](class_float.md#class-float)) const [🔗](#class-textserver-method-shaped-text-hit-test-grapheme)

Returns grapheme index at the specified pixel offset at the baseline, or `-1` if none is found.

* * *

[int](class_int.md#class-int) **shaped\_text\_hit\_test\_position**(shaped: [RID](class_rid.md#class-rid), coords: [float](class_float.md#class-float)) const [🔗](#class-textserver-method-shaped-text-hit-test-position)

Returns caret character offset at the specified pixel offset at the baseline. This function always returns a valid position.

* * *

[bool](class_bool.md#class-bool) **shaped\_text\_is\_ready**(shaped: [RID](class_rid.md#class-rid)) const [🔗](#class-textserver-method-shaped-text-is-ready)

Returns `true` if buffer is successfully shaped.

* * *

[int](class_int.md#class-int) **shaped\_text\_next\_character\_pos**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-text-next-character-pos)

Returns composite character end position closest to the `pos`.

* * *

[int](class_int.md#class-int) **shaped\_text\_next\_grapheme\_pos**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-text-next-grapheme-pos)

Returns grapheme end position closest to the `pos`.

* * *

void **shaped\_text\_overrun\_trim\_to\_width**(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float) = 0, overrun\_trim\_flags: BitField\[ [TextOverrunFlag](#enum-textserver-textoverrunflag)\] = 0) [🔗](#class-textserver-method-shaped-text-overrun-trim-to-width)

Trims text if it exceeds the given width.

* * *

[int](class_int.md#class-int) **shaped\_text\_prev\_character\_pos**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-text-prev-character-pos)

Returns composite character start position closest to the `pos`.

* * *

[int](class_int.md#class-int) **shaped\_text\_prev\_grapheme\_pos**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-text-prev-grapheme-pos)

Returns grapheme start position closest to the `pos`.

* * *

[bool](class_bool.md#class-bool) **shaped\_text\_resize\_object**(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment) = 5, baseline: [float](class_float.md#class-float) = 0.0) [🔗](#class-textserver-method-shaped-text-resize-object)

Sets new size and alignment of embedded object.

* * *

void **shaped\_text\_set\_bidi\_override**(shaped: [RID](class_rid.md#class-rid), override: [Array](class_array.md#class-array)) [🔗](#class-textserver-method-shaped-text-set-bidi-override)

Overrides BiDi for the structured text.

Override ranges should cover full source text without overlaps. BiDi algorithm will be used on each range separately.

* * *

void **shaped\_text\_set\_custom\_ellipsis**(shaped: [RID](class_rid.md#class-rid), char: [int](class_int.md#class-int)) [🔗](#class-textserver-method-shaped-text-set-custom-ellipsis)

Sets ellipsis character used for text clipping.

* * *

void **shaped\_text\_set\_custom\_punctuation**(shaped: [RID](class_rid.md#class-rid), punct: [String](class_string.md#class-string)) [🔗](#class-textserver-method-shaped-text-set-custom-punctuation)

Sets custom punctuation character list, used for word breaking. If set to empty string, server defaults are used.

* * *

void **shaped\_text\_set\_direction**(shaped: [RID](class_rid.md#class-rid), direction: [Direction](#enum-textserver-direction) = 0) [🔗](#class-textserver-method-shaped-text-set-direction)

Sets desired text direction. If set to [DIRECTION\_AUTO](#class-textserver-constant-direction-auto), direction will be detected based on the buffer contents and current locale.

**Note:** Direction is ignored if server does not support [FEATURE\_BIDI\_LAYOUT](#class-textserver-constant-feature-bidi-layout) feature (supported by [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced)).

* * *

void **shaped\_text\_set\_orientation**(shaped: [RID](class_rid.md#class-rid), orientation: [Orientation](#enum-textserver-orientation) = 0) [🔗](#class-textserver-method-shaped-text-set-orientation)

Sets desired text orientation.

**Note:** Orientation is ignored if server does not support [FEATURE\_VERTICAL\_LAYOUT](#class-textserver-constant-feature-vertical-layout) feature (supported by [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced)).

* * *

void **shaped\_text\_set\_preserve\_control**(shaped: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-shaped-text-set-preserve-control)

If set to `true` text buffer will display control characters.

* * *

void **shaped\_text\_set\_preserve\_invalid**(shaped: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-textserver-method-shaped-text-set-preserve-invalid)

If set to `true` text buffer will display invalid characters as hexadecimal codes, otherwise nothing is displayed.

* * *

void **shaped\_text\_set\_spacing**(shaped: [RID](class_rid.md#class-rid), spacing: [SpacingType](#enum-textserver-spacingtype), value: [int](class_int.md#class-int)) [🔗](#class-textserver-method-shaped-text-set-spacing)

Sets extra spacing added between glyphs or lines in pixels.

* * *

[bool](class_bool.md#class-bool) **shaped\_text\_shape**(shaped: [RID](class_rid.md#class-rid)) [🔗](#class-textserver-method-shaped-text-shape)

Shapes buffer if it's not shaped. Returns `true` if the string is shaped successfully.

**Note:** It is not necessary to call this function manually, buffer will be shaped automatically as soon as any of its output data is requested.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **shaped\_text\_sort\_logical**(shaped: [RID](class_rid.md#class-rid)) [🔗](#class-textserver-method-shaped-text-sort-logical)

Returns text glyphs in the logical order.

* * *

[RID](class_rid.md#class-rid) **shaped\_text\_substr**(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), length: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-shaped-text-substr)

Returns text buffer for the substring of the text in the `shaped` text buffer (including inline objects).

* * *

[float](class_float.md#class-float) **shaped\_text\_tab\_align**(shaped: [RID](class_rid.md#class-rid), tab\_stops: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-textserver-method-shaped-text-tab-align)

Aligns shaped text to the given tab-stops.

* * *

[bool](class_bool.md#class-bool) **spoof\_check**(string: [String](class_string.md#class-string)) const [🔗](#class-textserver-method-spoof-check)

Returns `true` if `string` is likely to be an attempt at confusing the reader.

**Note:** Always returns `false` if the server does not support the [FEATURE\_UNICODE\_SECURITY](#class-textserver-constant-feature-unicode-security) feature.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **string\_get\_character\_breaks**(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const [🔗](#class-textserver-method-string-get-character-breaks)

Returns array of the composite character boundaries.

```
var ts = TextServerManager.get_primary_interface()
print(ts.string_get_character_breaks("Test ❤️‍🔥 Test")) # Prints [1, 2, 3, 4, 5, 9, 10, 11, 12, 13, 14]

```

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **string\_get\_word\_breaks**(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "", chars\_per\_line: [int](class_int.md#class-int) = 0) const [🔗](#class-textserver-method-string-get-word-breaks)

Returns an array of the word break boundaries. Elements in the returned array are the offsets of the start and end of words. Therefore the length of the array is always even.

When `chars_per_line` is greater than zero, line break boundaries are returned instead.

```
var ts = TextServerManager.get_primary_interface()
# Corresponds to the substrings "The", "Godot", "Engine", and "4".
print(ts.string_get_word_breaks("The Godot Engine, 4")) # Prints [0, 3, 4, 9, 10, 16, 18, 19]
# Corresponds to the substrings "The", "Godot", "Engin", and "e, 4".
print(ts.string_get_word_breaks("The Godot Engine, 4", "en", 5)) # Prints [0, 3, 4, 9, 10, 15, 15, 19]
# Corresponds to the substrings "The Godot" and "Engine, 4".
print(ts.string_get_word_breaks("The Godot Engine, 4", "en", 10)) # Prints [0, 9, 10, 19]

```

* * *

[String](class_string.md#class-string) **string\_to\_lower**(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const [🔗](#class-textserver-method-string-to-lower)

Returns the string converted to lowercase.

**Note:** Casing is locale dependent and context sensitive if server support [FEATURE\_CONTEXT\_SENSITIVE\_CASE\_CONVERSION](#class-textserver-constant-feature-context-sensitive-case-conversion) feature (supported by [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced)).

**Note:** The result may be longer or shorter than the original.

* * *

[String](class_string.md#class-string) **string\_to\_title**(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const [🔗](#class-textserver-method-string-to-title)

Returns the string converted to title case.

**Note:** Casing is locale dependent and context sensitive if server support [FEATURE\_CONTEXT\_SENSITIVE\_CASE\_CONVERSION](#class-textserver-constant-feature-context-sensitive-case-conversion) feature (supported by [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced)).

**Note:** The result may be longer or shorter than the original.

* * *

[String](class_string.md#class-string) **string\_to\_upper**(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string) = "") const [🔗](#class-textserver-method-string-to-upper)

Returns the string converted to uppercase.

**Note:** Casing is locale dependent and context sensitive if server support [FEATURE\_CONTEXT\_SENSITIVE\_CASE\_CONVERSION](#class-textserver-constant-feature-context-sensitive-case-conversion) feature (supported by [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced)).

**Note:** The result may be longer or shorter than the original.

* * *

[String](class_string.md#class-string) **strip\_diacritics**(string: [String](class_string.md#class-string)) const [🔗](#class-textserver-method-strip-diacritics)

Strips diacritics from the string.

**Note:** The result may be longer or shorter than the original.

* * *

[String](class_string.md#class-string) **tag\_to\_name**(tag: [int](class_int.md#class-int)) const [🔗](#class-textserver-method-tag-to-name)

Converts OpenType tag to readable feature, variation, script, or language name.

[Previous](class_textparagraph.md "TextParagraph") [Next](class_textserveradvanced.md "TextServerAdvanced")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_textparagraph.md "TextParagraph") [Next](class_textserveradvanced.md "TextServerAdvanced")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).