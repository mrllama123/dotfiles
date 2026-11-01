---
title: TextServerExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_textserverextension.html
crawled_at: "2026-08-13T10:21:32+12:00"
content_hash: eae1147dd51da327490a214644dca7f812281669ed62f012113d784a066f9c4f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextServerExtension

* * *

# TextServerExtension

**Inherits:** [TextServer](class_textserver.md#class-textserver) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced), [TextServerDummy](class_textserverdummy.md#class-textserverdummy), [TextServerFallback](class_textserverfallback.md#class-textserverfallback)

Base class for custom [TextServer](class_textserver.md#class-textserver) implementations (plugins).

## Description

External [TextServer](class_textserver.md#class-textserver) implementations should inherit from this class.

## Methods

|     |     |
| --- | --- |
| void | [\_cleanup](#class-textserverextension-private-method-cleanup)() virtual |
| [RID](class_rid.md#class-rid) | [\_create\_font](#class-textserverextension-private-method-create-font)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_create\_font\_linked\_variation](#class-textserverextension-private-method-create-font-linked-variation)(font\_rid: [RID](class_rid.md#class-rid)) virtual |
| [RID](class_rid.md#class-rid) | [\_create\_shaped\_text](#class-textserverextension-private-method-create-shaped-text)(direction: [Direction](class_textserver.md#enum-textserver-direction), orientation: [Orientation](class_textserver.md#enum-textserver-orientation)) virtualrequired |
| void | [\_draw\_hex\_code\_box](#class-textserverextension-private-method-draw-hex-code-box)(canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) virtualconst |
| void | [\_font\_clear\_glyphs](#class-textserverextension-private-method-font-clear-glyphs)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) virtualrequired |
| void | [\_font\_clear\_kerning\_map](#class-textserverextension-private-method-font-clear-kerning-map)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtual |
| void | [\_font\_clear\_size\_cache](#class-textserverextension-private-method-font-clear-size-cache)(font\_rid: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_font\_clear\_system\_fallback\_cache](#class-textserverextension-private-method-font-clear-system-fallback-cache)() virtual |
| void | [\_font\_clear\_textures](#class-textserverextension-private-method-font-clear-textures)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) virtualrequired |
| void | [\_font\_draw\_glyph](#class-textserverextension-private-method-font-draw-glyph)(font\_rid: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color), oversampling: [float](class_float.md#class-float)) virtualrequiredconst |
| void | [\_font\_draw\_glyph\_outline](#class-textserverextension-private-method-font-draw-glyph-outline)(font\_rid: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), outline\_size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color), oversampling: [float](class_float.md#class-float)) virtualrequiredconst |
| [FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing) | [\_font\_get\_antialiasing](#class-textserverextension-private-method-font-get-antialiasing)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [float](class_float.md#class-float) | [\_font\_get\_ascent](#class-textserverextension-private-method-font-get-ascent)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_font\_get\_baseline\_offset](#class-textserverextension-private-method-font-get-baseline-offset)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [int](class_int.md#class-int) | [\_font\_get\_char\_from\_glyph\_index](#class-textserverextension-private-method-font-get-char-from-glyph-index)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_index: [int](class_int.md#class-int)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_font\_get\_descent](#class-textserverextension-private-method-font-get-descent)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_font\_get\_disable\_embedded\_bitmaps](#class-textserverextension-private-method-font-get-disable-embedded-bitmaps)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [float](class_float.md#class-float) | [\_font\_get\_embolden](#class-textserverextension-private-method-font-get-embolden)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [int](class_int.md#class-int) | [\_font\_get\_face\_count](#class-textserverextension-private-method-font-get-face-count)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [int](class_int.md#class-int) | [\_font\_get\_face\_index](#class-textserverextension-private-method-font-get-face-index)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [int](class_int.md#class-int) | [\_font\_get\_fixed\_size](#class-textserverextension-private-method-font-get-fixed-size)(font\_rid: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [FixedSizeScaleMode](class_textserver.md#enum-textserver-fixedsizescalemode) | [\_font\_get\_fixed\_size\_scale\_mode](#class-textserverextension-private-method-font-get-fixed-size-scale-mode)(font\_rid: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_font\_get\_generate\_mipmaps](#class-textserverextension-private-method-font-get-generate-mipmaps)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [float](class_float.md#class-float) | [\_font\_get\_global\_oversampling](#class-textserverextension-private-method-font-get-global-oversampling)() virtualconst |
| [Vector2](class_vector2.md#class-vector2) | [\_font\_get\_glyph\_advance](#class-textserverextension-private-method-font-get-glyph-advance)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int)) virtualrequiredconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_font\_get\_glyph\_contours](#class-textserverextension-private-method-font-get-glyph-contours)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), index: [int](class_int.md#class-int)) virtualconst |
| [int](class_int.md#class-int) | [\_font\_get\_glyph\_index](#class-textserverextension-private-method-font-get-glyph-index)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), char: [int](class_int.md#class-int), variation\_selector: [int](class_int.md#class-int)) virtualrequiredconst |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_font\_get\_glyph\_list](#class-textserverextension-private-method-font-get-glyph-list)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_font\_get\_glyph\_offset](#class-textserverextension-private-method-font-get-glyph-offset)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_font\_get\_glyph\_size](#class-textserverextension-private-method-font-get-glyph-size)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_font\_get\_glyph\_texture\_idx](#class-textserverextension-private-method-font-get-glyph-texture-idx)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_font\_get\_glyph\_texture\_rid](#class-textserverextension-private-method-font-get-glyph-texture-rid)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_font\_get\_glyph\_texture\_size](#class-textserverextension-private-method-font-get-glyph-texture-size)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst |
| [Rect2](class_rect2.md#class-rect2) | [\_font\_get\_glyph\_uv\_rect](#class-textserverextension-private-method-font-get-glyph-uv-rect)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst |
| [Hinting](class_textserver.md#enum-textserver-hinting) | [\_font\_get\_hinting](#class-textserverextension-private-method-font-get-hinting)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_font\_get\_keep\_rounding\_remainders](#class-textserverextension-private-method-font-get-keep-rounding-remainders)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [Vector2](class_vector2.md#class-vector2) | [\_font\_get\_kerning](#class-textserverextension-private-method-font-get-kerning)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) virtualconst |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [\_font\_get\_kerning\_list](#class-textserverextension-private-method-font-get-kerning-list)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_font\_get\_language\_support\_override](#class-textserverextension-private-method-font-get-language-support-override)(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) virtual |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_font\_get\_language\_support\_overrides](#class-textserverextension-private-method-font-get-language-support-overrides)(font\_rid: [RID](class_rid.md#class-rid)) virtual |
| [int](class_int.md#class-int) | [\_font\_get\_msdf\_pixel\_range](#class-textserverextension-private-method-font-get-msdf-pixel-range)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [int](class_int.md#class-int) | [\_font\_get\_msdf\_size](#class-textserverextension-private-method-font-get-msdf-size)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [String](class_string.md#class-string) | [\_font\_get\_name](#class-textserverextension-private-method-font-get-name)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_font\_get\_opentype\_feature\_overrides](#class-textserverextension-private-method-font-get-opentype-feature-overrides)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_font\_get\_ot\_name\_strings](#class-textserverextension-private-method-font-get-ot-name-strings)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [float](class_float.md#class-float) | [\_font\_get\_oversampling](#class-textserverextension-private-method-font-get-oversampling)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [float](class_float.md#class-float) | [\_font\_get\_scale](#class-textserverextension-private-method-font-get-scale)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_font\_get\_script\_support\_override](#class-textserverextension-private-method-font-get-script-support-override)(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) virtual |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_font\_get\_script\_support\_overrides](#class-textserverextension-private-method-font-get-script-support-overrides)(font\_rid: [RID](class_rid.md#class-rid)) virtual |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_font\_get\_size\_cache\_info](#class-textserverextension-private-method-font-get-size-cache-info)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [\_font\_get\_size\_cache\_list](#class-textserverextension-private-method-font-get-size-cache-list)(font\_rid: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_font\_get\_spacing](#class-textserverextension-private-method-font-get-spacing)(font\_rid: [RID](class_rid.md#class-rid), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype)) virtualconst |
| [int](class_int.md#class-int) | [\_font\_get\_stretch](#class-textserverextension-private-method-font-get-stretch)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| BitField\[ [FontStyle](class_textserver.md#enum-textserver-fontstyle)\] | [\_font\_get\_style](#class-textserverextension-private-method-font-get-style)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [String](class_string.md#class-string) | [\_font\_get\_style\_name](#class-textserverextension-private-method-font-get-style-name)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning) | [\_font\_get\_subpixel\_positioning](#class-textserverextension-private-method-font-get-subpixel-positioning)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [String](class_string.md#class-string) | [\_font\_get\_supported\_chars](#class-textserverextension-private-method-font-get-supported-chars)(font\_rid: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_font\_get\_supported\_glyphs](#class-textserverextension-private-method-font-get-supported-glyphs)(font\_rid: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_font\_get\_texture\_count](#class-textserverextension-private-method-font-get-texture-count)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) virtualrequiredconst |
| [Image](class_image.md#class-image) | [\_font\_get\_texture\_image](#class-textserverextension-private-method-font-get-texture-image)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) virtualrequiredconst |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_font\_get\_texture\_offsets](#class-textserverextension-private-method-font-get-texture-offsets)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) virtualconst |
| [Transform2D](class_transform2d.md#class-transform2d) | [\_font\_get\_transform](#class-textserverextension-private-method-font-get-transform)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [float](class_float.md#class-float) | [\_font\_get\_underline\_position](#class-textserverextension-private-method-font-get-underline-position)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_font\_get\_underline\_thickness](#class-textserverextension-private-method-font-get-underline-thickness)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualrequiredconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_font\_get\_variation\_coordinates](#class-textserverextension-private-method-font-get-variation-coordinates)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [int](class_int.md#class-int) | [\_font\_get\_weight](#class-textserverextension-private-method-font-get-weight)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_font\_has\_char](#class-textserverextension-private-method-font-has-char)(font\_rid: [RID](class_rid.md#class-rid), char: [int](class_int.md#class-int)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_font\_is\_allow\_system\_fallback](#class-textserverextension-private-method-font-is-allow-system-fallback)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_font\_is\_force\_autohinter](#class-textserverextension-private-method-font-is-force-autohinter)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_font\_is\_language\_supported](#class-textserverextension-private-method-font-is-language-supported)(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_font\_is\_modulate\_color\_glyphs](#class-textserverextension-private-method-font-is-modulate-color-glyphs)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_font\_is\_multichannel\_signed\_distance\_field](#class-textserverextension-private-method-font-is-multichannel-signed-distance-field)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_font\_is\_script\_supported](#class-textserverextension-private-method-font-is-script-supported)(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) virtualconst |
| void | [\_font\_remove\_glyph](#class-textserverextension-private-method-font-remove-glyph)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequired |
| void | [\_font\_remove\_kerning](#class-textserverextension-private-method-font-remove-kerning)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) virtual |
| void | [\_font\_remove\_language\_support\_override](#class-textserverextension-private-method-font-remove-language-support-override)(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) virtual |
| void | [\_font\_remove\_script\_support\_override](#class-textserverextension-private-method-font-remove-script-support-override)(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) virtual |
| void | [\_font\_remove\_size\_cache](#class-textserverextension-private-method-font-remove-size-cache)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) virtualrequired |
| void | [\_font\_remove\_texture](#class-textserverextension-private-method-font-remove-texture)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) virtualrequired |
| void | [\_font\_render\_glyph](#class-textserverextension-private-method-font-render-glyph)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), index: [int](class_int.md#class-int)) virtual |
| void | [\_font\_render\_range](#class-textserverextension-private-method-font-render-range)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) virtual |
| void | [\_font\_set\_allow\_system\_fallback](#class-textserverextension-private-method-font-set-allow-system-fallback)(font\_rid: [RID](class_rid.md#class-rid), allow\_system\_fallback: [bool](class_bool.md#class-bool)) virtual |
| void | [\_font\_set\_antialiasing](#class-textserverextension-private-method-font-set-antialiasing)(font\_rid: [RID](class_rid.md#class-rid), antialiasing: [FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing)) virtual |
| void | [\_font\_set\_ascent](#class-textserverextension-private-method-font-set-ascent)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), ascent: [float](class_float.md#class-float)) virtualrequired |
| void | [\_font\_set\_baseline\_offset](#class-textserverextension-private-method-font-set-baseline-offset)(font\_rid: [RID](class_rid.md#class-rid), baseline\_offset: [float](class_float.md#class-float)) virtual |
| void | [\_font\_set\_data](#class-textserverextension-private-method-font-set-data)(font\_rid: [RID](class_rid.md#class-rid), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) virtual |
| void | [\_font\_set\_data\_ptr](#class-textserverextension-private-method-font-set-data-ptr)(font\_rid: [RID](class_rid.md#class-rid), data\_ptr: `const uint8_t*`, data\_size: [int](class_int.md#class-int)) virtual |
| void | [\_font\_set\_descent](#class-textserverextension-private-method-font-set-descent)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), descent: [float](class_float.md#class-float)) virtualrequired |
| void | [\_font\_set\_disable\_embedded\_bitmaps](#class-textserverextension-private-method-font-set-disable-embedded-bitmaps)(font\_rid: [RID](class_rid.md#class-rid), disable\_embedded\_bitmaps: [bool](class_bool.md#class-bool)) virtual |
| void | [\_font\_set\_embolden](#class-textserverextension-private-method-font-set-embolden)(font\_rid: [RID](class_rid.md#class-rid), strength: [float](class_float.md#class-float)) virtual |
| void | [\_font\_set\_face\_index](#class-textserverextension-private-method-font-set-face-index)(font\_rid: [RID](class_rid.md#class-rid), face\_index: [int](class_int.md#class-int)) virtual |
| void | [\_font\_set\_fixed\_size](#class-textserverextension-private-method-font-set-fixed-size)(font\_rid: [RID](class_rid.md#class-rid), fixed\_size: [int](class_int.md#class-int)) virtualrequired |
| void | [\_font\_set\_fixed\_size\_scale\_mode](#class-textserverextension-private-method-font-set-fixed-size-scale-mode)(font\_rid: [RID](class_rid.md#class-rid), fixed\_size\_scale\_mode: [FixedSizeScaleMode](class_textserver.md#enum-textserver-fixedsizescalemode)) virtualrequired |
| void | [\_font\_set\_force\_autohinter](#class-textserverextension-private-method-font-set-force-autohinter)(font\_rid: [RID](class_rid.md#class-rid), force\_autohinter: [bool](class_bool.md#class-bool)) virtual |
| void | [\_font\_set\_generate\_mipmaps](#class-textserverextension-private-method-font-set-generate-mipmaps)(font\_rid: [RID](class_rid.md#class-rid), generate\_mipmaps: [bool](class_bool.md#class-bool)) virtual |
| void | [\_font\_set\_global\_oversampling](#class-textserverextension-private-method-font-set-global-oversampling)(oversampling: [float](class_float.md#class-float)) virtual |
| void | [\_font\_set\_glyph\_advance](#class-textserverextension-private-method-font-set-glyph-advance)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int), advance: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_font\_set\_glyph\_offset](#class-textserverextension-private-method-font-set-glyph-offset)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), offset: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_font\_set\_glyph\_size](#class-textserverextension-private-method-font-set-glyph-size)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), gl\_size: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_font\_set\_glyph\_texture\_idx](#class-textserverextension-private-method-font-set-glyph-texture-idx)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), texture\_idx: [int](class_int.md#class-int)) virtualrequired |
| void | [\_font\_set\_glyph\_uv\_rect](#class-textserverextension-private-method-font-set-glyph-uv-rect)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), uv\_rect: [Rect2](class_rect2.md#class-rect2)) virtualrequired |
| void | [\_font\_set\_hinting](#class-textserverextension-private-method-font-set-hinting)(font\_rid: [RID](class_rid.md#class-rid), hinting: [Hinting](class_textserver.md#enum-textserver-hinting)) virtual |
| void | [\_font\_set\_keep\_rounding\_remainders](#class-textserverextension-private-method-font-set-keep-rounding-remainders)(font\_rid: [RID](class_rid.md#class-rid), keep\_rounding\_remainders: [bool](class_bool.md#class-bool)) virtual |
| void | [\_font\_set\_kerning](#class-textserverextension-private-method-font-set-kerning)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i), kerning: [Vector2](class_vector2.md#class-vector2)) virtual |
| void | [\_font\_set\_language\_support\_override](#class-textserverextension-private-method-font-set-language-support-override)(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) virtual |
| void | [\_font\_set\_modulate\_color\_glyphs](#class-textserverextension-private-method-font-set-modulate-color-glyphs)(font\_rid: [RID](class_rid.md#class-rid), modulate: [bool](class_bool.md#class-bool)) virtual |
| void | [\_font\_set\_msdf\_pixel\_range](#class-textserverextension-private-method-font-set-msdf-pixel-range)(font\_rid: [RID](class_rid.md#class-rid), msdf\_pixel\_range: [int](class_int.md#class-int)) virtual |
| void | [\_font\_set\_msdf\_size](#class-textserverextension-private-method-font-set-msdf-size)(font\_rid: [RID](class_rid.md#class-rid), msdf\_size: [int](class_int.md#class-int)) virtual |
| void | [\_font\_set\_multichannel\_signed\_distance\_field](#class-textserverextension-private-method-font-set-multichannel-signed-distance-field)(font\_rid: [RID](class_rid.md#class-rid), msdf: [bool](class_bool.md#class-bool)) virtual |
| void | [\_font\_set\_name](#class-textserverextension-private-method-font-set-name)(font\_rid: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) virtual |
| void | [\_font\_set\_opentype\_feature\_overrides](#class-textserverextension-private-method-font-set-opentype-feature-overrides)(font\_rid: [RID](class_rid.md#class-rid), overrides: [Dictionary](class_dictionary.md#class-dictionary)) virtual |
| void | [\_font\_set\_oversampling](#class-textserverextension-private-method-font-set-oversampling)(font\_rid: [RID](class_rid.md#class-rid), oversampling: [float](class_float.md#class-float)) virtual |
| void | [\_font\_set\_scale](#class-textserverextension-private-method-font-set-scale)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), scale: [float](class_float.md#class-float)) virtualrequired |
| void | [\_font\_set\_script\_support\_override](#class-textserverextension-private-method-font-set-script-support-override)(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) virtual |
| void | [\_font\_set\_spacing](#class-textserverextension-private-method-font-set-spacing)(font\_rid: [RID](class_rid.md#class-rid), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype), value: [int](class_int.md#class-int)) virtual |
| void | [\_font\_set\_stretch](#class-textserverextension-private-method-font-set-stretch)(font\_rid: [RID](class_rid.md#class-rid), stretch: [int](class_int.md#class-int)) virtual |
| void | [\_font\_set\_style](#class-textserverextension-private-method-font-set-style)(font\_rid: [RID](class_rid.md#class-rid), style: BitField\[ [FontStyle](class_textserver.md#enum-textserver-fontstyle)\]) virtual |
| void | [\_font\_set\_style\_name](#class-textserverextension-private-method-font-set-style-name)(font\_rid: [RID](class_rid.md#class-rid), name\_style: [String](class_string.md#class-string)) virtual |
| void | [\_font\_set\_subpixel\_positioning](#class-textserverextension-private-method-font-set-subpixel-positioning)(font\_rid: [RID](class_rid.md#class-rid), subpixel\_positioning: [SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning)) virtual |
| void | [\_font\_set\_texture\_image](#class-textserverextension-private-method-font-set-texture-image)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), image: [Image](class_image.md#class-image)) virtualrequired |
| void | [\_font\_set\_texture\_offsets](#class-textserverextension-private-method-font-set-texture-offsets)(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), offset: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) virtual |
| void | [\_font\_set\_transform](#class-textserverextension-private-method-font-set-transform)(font\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) virtual |
| void | [\_font\_set\_underline\_position](#class-textserverextension-private-method-font-set-underline-position)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), underline\_position: [float](class_float.md#class-float)) virtualrequired |
| void | [\_font\_set\_underline\_thickness](#class-textserverextension-private-method-font-set-underline-thickness)(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), underline\_thickness: [float](class_float.md#class-float)) virtualrequired |
| void | [\_font\_set\_variation\_coordinates](#class-textserverextension-private-method-font-set-variation-coordinates)(font\_rid: [RID](class_rid.md#class-rid), variation\_coordinates: [Dictionary](class_dictionary.md#class-dictionary)) virtual |
| void | [\_font\_set\_weight](#class-textserverextension-private-method-font-set-weight)(font\_rid: [RID](class_rid.md#class-rid), weight: [int](class_int.md#class-int)) virtual |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_font\_supported\_feature\_list](#class-textserverextension-private-method-font-supported-feature-list)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_font\_supported\_variation\_list](#class-textserverextension-private-method-font-supported-variation-list)(font\_rid: [RID](class_rid.md#class-rid)) virtualconst |
| [String](class_string.md#class-string) | [\_format\_number](#class-textserverextension-private-method-format-number)(number: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst |
| void | [\_free\_rid](#class-textserverextension-private-method-free-rid)(rid: [RID](class_rid.md#class-rid)) virtualrequired |
| [int](class_int.md#class-int) | [\_get\_features](#class-textserverextension-private-method-get-features)() virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_hex\_code\_box\_size](#class-textserverextension-private-method-get-hex-code-box-size)(size: [int](class_int.md#class-int), index: [int](class_int.md#class-int)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_name](#class-textserverextension-private-method-get-name)() virtualrequiredconst |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [\_get\_support\_data](#class-textserverextension-private-method-get-support-data)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_support\_data\_filename](#class-textserverextension-private-method-get-support-data-filename)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_support\_data\_info](#class-textserverextension-private-method-get-support-data-info)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_has](#class-textserverextension-private-method-has)(rid: [RID](class_rid.md#class-rid)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_has\_feature](#class-textserverextension-private-method-has-feature)(feature: [Feature](class_textserver.md#enum-textserver-feature)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_is\_confusable](#class-textserverextension-private-method-is-confusable)(string: [String](class_string.md#class-string), dict: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_locale\_right\_to\_left](#class-textserverextension-private-method-is-locale-right-to-left)(locale: [String](class_string.md#class-string)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_valid\_identifier](#class-textserverextension-private-method-is-valid-identifier)(string: [String](class_string.md#class-string)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_valid\_letter](#class-textserverextension-private-method-is-valid-letter)(unicode: [int](class_int.md#class-int)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_load\_support\_data](#class-textserverextension-private-method-load-support-data)(filename: [String](class_string.md#class-string)) virtual |
| [int](class_int.md#class-int) | [\_name\_to\_tag](#class-textserverextension-private-method-name-to-tag)(name: [String](class_string.md#class-string)) virtualconst |
| [String](class_string.md#class-string) | [\_parse\_number](#class-textserverextension-private-method-parse-number)(number: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst |
| [Array](class_array.md#class-array)\[ [Vector3i](class_vector3i.md#class-vector3i)\] | [\_parse\_structured\_text](#class-textserverextension-private-method-parse-structured-text)(parser\_type: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser), args: [Array](class_array.md#class-array), text: [String](class_string.md#class-string)) virtualconst |
| [String](class_string.md#class-string) | [\_percent\_sign](#class-textserverextension-private-method-percent-sign)(language: [String](class_string.md#class-string)) virtualconst |
| void | [\_reference\_oversampling\_level](#class-textserverextension-private-method-reference-oversampling-level)(oversampling: [float](class_float.md#class-float)) virtual |
| [bool](class_bool.md#class-bool) | [\_save\_support\_data](#class-textserverextension-private-method-save-support-data)(filename: [String](class_string.md#class-string)) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_get\_run\_count](#class-textserverextension-private-method-shaped-get-run-count)(shaped: [RID](class_rid.md#class-rid)) virtualconst |
| [Direction](class_textserver.md#enum-textserver-direction) | [\_shaped\_get\_run\_direction](#class-textserverextension-private-method-shaped-get-run-direction)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst |
| [RID](class_rid.md#class-rid) | [\_shaped\_get\_run\_font\_rid](#class-textserverextension-private-method-shaped-get-run-font-rid)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_get\_run\_font\_size](#class-textserverextension-private-method-shaped-get-run-font-size)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst |
| [String](class_string.md#class-string) | [\_shaped\_get\_run\_language](#class-textserverextension-private-method-shaped-get-run-language)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst |
| [Variant](class_variant.md#class-variant) | [\_shaped\_get\_run\_object](#class-textserverextension-private-method-shaped-get-run-object)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst |
| [Vector2i](class_vector2i.md#class-vector2i) | [\_shaped\_get\_run\_range](#class-textserverextension-private-method-shaped-get-run-range)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst |
| [String](class_string.md#class-string) | [\_shaped\_get\_run\_text](#class-textserverextension-private-method-shaped-get-run-text)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_get\_span\_count](#class-textserverextension-private-method-shaped-get-span-count)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_shaped\_get\_span\_embedded\_object](#class-textserverextension-private-method-shaped-get-span-embedded-object)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_shaped\_get\_span\_meta](#class-textserverextension-private-method-shaped-get-span-meta)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_shaped\_get\_span\_object](#class-textserverextension-private-method-shaped-get-span-object)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualrequiredconst |
| [String](class_string.md#class-string) | [\_shaped\_get\_span\_text](#class-textserverextension-private-method-shaped-get-span-text)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualrequiredconst |
| [String](class_string.md#class-string) | [\_shaped\_get\_text](#class-textserverextension-private-method-shaped-get-text)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_shaped\_set\_span\_update\_font](#class-textserverextension-private-method-shaped-set-span-update-font)(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), fonts: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], size: [int](class_int.md#class-int), opentype\_features: [Dictionary](class_dictionary.md#class-dictionary)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_shaped\_text\_add\_object](#class-textserverextension-private-method-shaped-text-add-object)(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment), length: [int](class_int.md#class-int), baseline: [float](class_float.md#class-float)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_shaped\_text\_add\_string](#class-textserverextension-private-method-shaped-text-add-string)(shaped: [RID](class_rid.md#class-rid), text: [String](class_string.md#class-string), fonts: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], size: [int](class_int.md#class-int), opentype\_features: [Dictionary](class_dictionary.md#class-dictionary), language: [String](class_string.md#class-string), meta: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_shaped\_text\_clear](#class-textserverextension-private-method-shaped-text-clear)(shaped: [RID](class_rid.md#class-rid)) virtualrequired |
| [int](class_int.md#class-int) | [\_shaped\_text\_closest\_character\_pos](#class-textserverextension-private-method-shaped-text-closest-character-pos)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst |
| void | [\_shaped\_text\_draw](#class-textserverextension-private-method-shaped-text-draw)(shaped: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), clip\_l: [float](class_float.md#class-float), clip\_r: [float](class_float.md#class-float), color: [Color](class_color.md#class-color), oversampling: [float](class_float.md#class-float)) virtualconst |
| void | [\_shaped\_text\_draw\_outline](#class-textserverextension-private-method-shaped-text-draw-outline)(shaped: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), clip\_l: [float](class_float.md#class-float), clip\_r: [float](class_float.md#class-float), outline\_size: [int](class_int.md#class-int), color: [Color](class_color.md#class-color), oversampling: [float](class_float.md#class-float)) virtualconst |
| [float](class_float.md#class-float) | [\_shaped\_text\_fit\_to\_width](#class-textserverextension-private-method-shaped-text-fit-to-width)(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float), justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\]) virtual |
| [float](class_float.md#class-float) | [\_shaped\_text\_get\_ascent](#class-textserverextension-private-method-shaped-text-get-ascent)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_shaped\_text\_get\_carets](#class-textserverextension-private-method-shaped-text-get-carets)(shaped: [RID](class_rid.md#class-rid), position: [int](class_int.md#class-int), caret: `CaretInfo*`) virtualconst |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_shaped\_text\_get\_character\_breaks](#class-textserverextension-private-method-shaped-text-get-character-breaks)(shaped: [RID](class_rid.md#class-rid)) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_get\_custom\_ellipsis](#class-textserverextension-private-method-shaped-text-get-custom-ellipsis)(shaped: [RID](class_rid.md#class-rid)) virtualconst |
| [String](class_string.md#class-string) | [\_shaped\_text\_get\_custom\_punctuation](#class-textserverextension-private-method-shaped-text-get-custom-punctuation)(shaped: [RID](class_rid.md#class-rid)) virtualconst |
| [float](class_float.md#class-float) | [\_shaped\_text\_get\_descent](#class-textserverextension-private-method-shaped-text-get-descent)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Direction](class_textserver.md#enum-textserver-direction) | [\_shaped\_text\_get\_direction](#class-textserverextension-private-method-shaped-text-get-direction)(shaped: [RID](class_rid.md#class-rid)) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_get\_dominant\_direction\_in\_range](#class-textserverextension-private-method-shaped-text-get-dominant-direction-in-range)(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_get\_ellipsis\_glyph\_count](#class-textserverextension-private-method-shaped-text-get-ellipsis-glyph-count)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| `const Glyph*` | [\_shaped\_text\_get\_ellipsis\_glyphs](#class-textserverextension-private-method-shaped-text-get-ellipsis-glyphs)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_get\_ellipsis\_pos](#class-textserverextension-private-method-shaped-text-get-ellipsis-pos)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_get\_glyph\_count](#class-textserverextension-private-method-shaped-text-get-glyph-count)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| `const Glyph*` | [\_shaped\_text\_get\_glyphs](#class-textserverextension-private-method-shaped-text-get-glyphs)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_shaped\_text\_get\_grapheme\_bounds](#class-textserverextension-private-method-shaped-text-get-grapheme-bounds)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst |
| [Direction](class_textserver.md#enum-textserver-direction) | [\_shaped\_text\_get\_inferred\_direction](#class-textserverextension-private-method-shaped-text-get-inferred-direction)(shaped: [RID](class_rid.md#class-rid)) virtualconst |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_shaped\_text\_get\_line\_breaks](#class-textserverextension-private-method-shaped-text-get-line-breaks)(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float), start: [int](class_int.md#class-int), break\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\]) virtualconst |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_shaped\_text\_get\_line\_breaks\_adv](#class-textserverextension-private-method-shaped-text-get-line-breaks-adv)(shaped: [RID](class_rid.md#class-rid), width: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), start: [int](class_int.md#class-int), once: [bool](class_bool.md#class-bool), break\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\]) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_get\_object\_glyph](#class-textserverextension-private-method-shaped-text-get-object-glyph)(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) virtualrequiredconst |
| [Vector2i](class_vector2i.md#class-vector2i) | [\_shaped\_text\_get\_object\_range](#class-textserverextension-private-method-shaped-text-get-object-range)(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) virtualrequiredconst |
| [Rect2](class_rect2.md#class-rect2) | [\_shaped\_text\_get\_object\_rect](#class-textserverextension-private-method-shaped-text-get-object-rect)(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) virtualrequiredconst |
| [Array](class_array.md#class-array) | [\_shaped\_text\_get\_objects](#class-textserverextension-private-method-shaped-text-get-objects)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Orientation](class_textserver.md#enum-textserver-orientation) | [\_shaped\_text\_get\_orientation](#class-textserverextension-private-method-shaped-text-get-orientation)(shaped: [RID](class_rid.md#class-rid)) virtualconst |
| [RID](class_rid.md#class-rid) | [\_shaped\_text\_get\_parent](#class-textserverextension-private-method-shaped-text-get-parent)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_shaped\_text\_get\_preserve\_control](#class-textserverextension-private-method-shaped-text-get-preserve-control)(shaped: [RID](class_rid.md#class-rid)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_shaped\_text\_get\_preserve\_invalid](#class-textserverextension-private-method-shaped-text-get-preserve-invalid)(shaped: [RID](class_rid.md#class-rid)) virtualconst |
| [Vector2i](class_vector2i.md#class-vector2i) | [\_shaped\_text\_get\_range](#class-textserverextension-private-method-shaped-text-get-range)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [\_shaped\_text\_get\_selection](#class-textserverextension-private-method-shaped-text-get-selection)(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) virtualconst |
| [Vector2](class_vector2.md#class-vector2) | [\_shaped\_text\_get\_size](#class-textserverextension-private-method-shaped-text-get-size)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_get\_spacing](#class-textserverextension-private-method-shaped-text-get-spacing)(shaped: [RID](class_rid.md#class-rid), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype)) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_get\_trim\_pos](#class-textserverextension-private-method-shaped-text-get-trim-pos)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_shaped\_text\_get\_underline\_position](#class-textserverextension-private-method-shaped-text-get-underline-position)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_shaped\_text\_get\_underline\_thickness](#class-textserverextension-private-method-shaped-text-get-underline-thickness)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_shaped\_text\_get\_width](#class-textserverextension-private-method-shaped-text-get-width)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_shaped\_text\_get\_word\_breaks](#class-textserverextension-private-method-shaped-text-get-word-breaks)(shaped: [RID](class_rid.md#class-rid), grapheme\_flags: BitField\[ [GraphemeFlag](class_textserver.md#enum-textserver-graphemeflag)\], skip\_grapheme\_flags: BitField\[ [GraphemeFlag](class_textserver.md#enum-textserver-graphemeflag)\]) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_hit\_test\_grapheme](#class-textserverextension-private-method-shaped-text-hit-test-grapheme)(shaped: [RID](class_rid.md#class-rid), coord: [float](class_float.md#class-float)) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_hit\_test\_position](#class-textserverextension-private-method-shaped-text-hit-test-position)(shaped: [RID](class_rid.md#class-rid), coord: [float](class_float.md#class-float)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_shaped\_text\_is\_ready](#class-textserverextension-private-method-shaped-text-is-ready)(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_next\_character\_pos](#class-textserverextension-private-method-shaped-text-next-character-pos)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_next\_grapheme\_pos](#class-textserverextension-private-method-shaped-text-next-grapheme-pos)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst |
| void | [\_shaped\_text\_overrun\_trim\_to\_width](#class-textserverextension-private-method-shaped-text-overrun-trim-to-width)(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float), trim\_flags: BitField\[ [TextOverrunFlag](class_textserver.md#enum-textserver-textoverrunflag)\]) virtual |
| [int](class_int.md#class-int) | [\_shaped\_text\_prev\_character\_pos](#class-textserverextension-private-method-shaped-text-prev-character-pos)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst |
| [int](class_int.md#class-int) | [\_shaped\_text\_prev\_grapheme\_pos](#class-textserverextension-private-method-shaped-text-prev-grapheme-pos)(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_shaped\_text\_resize\_object](#class-textserverextension-private-method-shaped-text-resize-object)(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment), baseline: [float](class_float.md#class-float)) virtualrequired |
| void | [\_shaped\_text\_set\_bidi\_override](#class-textserverextension-private-method-shaped-text-set-bidi-override)(shaped: [RID](class_rid.md#class-rid), override: [Array](class_array.md#class-array)) virtual |
| void | [\_shaped\_text\_set\_custom\_ellipsis](#class-textserverextension-private-method-shaped-text-set-custom-ellipsis)(shaped: [RID](class_rid.md#class-rid), char: [int](class_int.md#class-int)) virtual |
| void | [\_shaped\_text\_set\_custom\_punctuation](#class-textserverextension-private-method-shaped-text-set-custom-punctuation)(shaped: [RID](class_rid.md#class-rid), punct: [String](class_string.md#class-string)) virtual |
| void | [\_shaped\_text\_set\_direction](#class-textserverextension-private-method-shaped-text-set-direction)(shaped: [RID](class_rid.md#class-rid), direction: [Direction](class_textserver.md#enum-textserver-direction)) virtual |
| void | [\_shaped\_text\_set\_orientation](#class-textserverextension-private-method-shaped-text-set-orientation)(shaped: [RID](class_rid.md#class-rid), orientation: [Orientation](class_textserver.md#enum-textserver-orientation)) virtual |
| void | [\_shaped\_text\_set\_preserve\_control](#class-textserverextension-private-method-shaped-text-set-preserve-control)(shaped: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) virtual |
| void | [\_shaped\_text\_set\_preserve\_invalid](#class-textserverextension-private-method-shaped-text-set-preserve-invalid)(shaped: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) virtual |
| void | [\_shaped\_text\_set\_spacing](#class-textserverextension-private-method-shaped-text-set-spacing)(shaped: [RID](class_rid.md#class-rid), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype), value: [int](class_int.md#class-int)) virtual |
| [bool](class_bool.md#class-bool) | [\_shaped\_text\_shape](#class-textserverextension-private-method-shaped-text-shape)(shaped: [RID](class_rid.md#class-rid)) virtualrequired |
| `const Glyph*` | [\_shaped\_text\_sort\_logical](#class-textserverextension-private-method-shaped-text-sort-logical)(shaped: [RID](class_rid.md#class-rid)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_shaped\_text\_substr](#class-textserverextension-private-method-shaped-text-substr)(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), length: [int](class_int.md#class-int)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_shaped\_text\_tab\_align](#class-textserverextension-private-method-shaped-text-tab-align)(shaped: [RID](class_rid.md#class-rid), tab\_stops: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) virtual |
| [bool](class_bool.md#class-bool) | [\_shaped\_text\_update\_breaks](#class-textserverextension-private-method-shaped-text-update-breaks)(shaped: [RID](class_rid.md#class-rid)) virtual |
| [bool](class_bool.md#class-bool) | [\_shaped\_text\_update\_justification\_ops](#class-textserverextension-private-method-shaped-text-update-justification-ops)(shaped: [RID](class_rid.md#class-rid)) virtual |
| [bool](class_bool.md#class-bool) | [\_spoof\_check](#class-textserverextension-private-method-spoof-check)(string: [String](class_string.md#class-string)) virtualconst |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_string\_get\_character\_breaks](#class-textserverextension-private-method-string-get-character-breaks)(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_string\_get\_word\_breaks](#class-textserverextension-private-method-string-get-word-breaks)(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string), chars\_per\_line: [int](class_int.md#class-int)) virtualconst |
| [String](class_string.md#class-string) | [\_string\_to\_lower](#class-textserverextension-private-method-string-to-lower)(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst |
| [String](class_string.md#class-string) | [\_string\_to\_title](#class-textserverextension-private-method-string-to-title)(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst |
| [String](class_string.md#class-string) | [\_string\_to\_upper](#class-textserverextension-private-method-string-to-upper)(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst |
| [String](class_string.md#class-string) | [\_strip\_diacritics](#class-textserverextension-private-method-strip-diacritics)(string: [String](class_string.md#class-string)) virtualconst |
| [String](class_string.md#class-string) | [\_tag\_to\_name](#class-textserverextension-private-method-tag-to-name)(tag: [int](class_int.md#class-int)) virtualconst |
| void | [\_unreference\_oversampling\_level](#class-textserverextension-private-method-unreference-oversampling-level)(oversampling: [float](class_float.md#class-float)) virtual |

* * *

## Method Descriptions

void **\_cleanup**() virtual [🔗](#class-textserverextension-private-method-cleanup)

This method is called before text server is unregistered.

* * *

[RID](class_rid.md#class-rid) **\_create\_font**() virtualrequired [🔗](#class-textserverextension-private-method-create-font)

Creates a new, empty font cache entry resource.

* * *

[RID](class_rid.md#class-rid) **\_create\_font\_linked\_variation**(font\_rid: [RID](class_rid.md#class-rid)) virtual [🔗](#class-textserverextension-private-method-create-font-linked-variation)

Optional, implement if font supports extra spacing or baseline offset.

Creates a new variation existing font which is reusing the same glyph cache and font data.

* * *

[RID](class_rid.md#class-rid) **\_create\_shaped\_text**(direction: [Direction](class_textserver.md#enum-textserver-direction), orientation: [Orientation](class_textserver.md#enum-textserver-orientation)) virtualrequired [🔗](#class-textserverextension-private-method-create-shaped-text)

Creates a new buffer for complex text layout, with the given `direction` and `orientation`.

* * *

void **\_draw\_hex\_code\_box**(canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) virtualconst [🔗](#class-textserverextension-private-method-draw-hex-code-box)

Draws box displaying character hexadecimal code.

* * *

void **\_font\_clear\_glyphs**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) virtualrequired [🔗](#class-textserverextension-private-method-font-clear-glyphs)

Removes all rendered glyph information from the cache entry.

* * *

void **\_font\_clear\_kerning\_map**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-font-clear-kerning-map)

Removes all kerning overrides.

* * *

void **\_font\_clear\_size\_cache**(font\_rid: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-textserverextension-private-method-font-clear-size-cache)

Removes all font sizes from the cache entry.

* * *

void **\_font\_clear\_system\_fallback\_cache**() virtual [🔗](#class-textserverextension-private-method-font-clear-system-fallback-cache)

Frees all automatically loaded system fonts.

* * *

void **\_font\_clear\_textures**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) virtualrequired [🔗](#class-textserverextension-private-method-font-clear-textures)

Removes all textures from font cache entry.

* * *

void **\_font\_draw\_glyph**(font\_rid: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color), oversampling: [float](class_float.md#class-float)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-draw-glyph)

Draws single glyph into a canvas item at the position, using `font_rid` at the size `size`. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **\_font\_draw\_glyph\_outline**(font\_rid: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), outline\_size: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color), oversampling: [float](class_float.md#class-float)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-draw-glyph-outline)

Draws single glyph outline of size `outline_size` into a canvas item at the position, using `font_rid` at the size `size`. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

[FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing) **\_font\_get\_antialiasing**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-antialiasing)

Returns font anti-aliasing mode.

* * *

[float](class_float.md#class-float) **\_font\_get\_ascent**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-ascent)

Returns the font ascent (number of pixels above the baseline).

* * *

[float](class_float.md#class-float) **\_font\_get\_baseline\_offset**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-baseline-offset)

Returns extra baseline offset (as a fraction of font height).

* * *

[int](class_int.md#class-int) **\_font\_get\_char\_from\_glyph\_index**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-char-from-glyph-index)

Returns character code associated with `glyph_index`, or `0` if `glyph_index` is invalid.

* * *

[float](class_float.md#class-float) **\_font\_get\_descent**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-descent)

Returns the font descent (number of pixels below the baseline).

* * *

[bool](class_bool.md#class-bool) **\_font\_get\_disable\_embedded\_bitmaps**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-disable-embedded-bitmaps)

Returns whether the font's embedded bitmap loading is disabled.

* * *

[float](class_float.md#class-float) **\_font\_get\_embolden**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-embolden)

Returns font embolden strength.

* * *

[int](class_int.md#class-int) **\_font\_get\_face\_count**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-face-count)

Returns number of faces in the TrueType / OpenType collection.

* * *

[int](class_int.md#class-int) **\_font\_get\_face\_index**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-face-index)

Returns an active face index in the TrueType / OpenType collection.

* * *

[int](class_int.md#class-int) **\_font\_get\_fixed\_size**(font\_rid: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-fixed-size)

Returns bitmap font fixed size.

* * *

[FixedSizeScaleMode](class_textserver.md#enum-textserver-fixedsizescalemode) **\_font\_get\_fixed\_size\_scale\_mode**(font\_rid: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-fixed-size-scale-mode)

Returns bitmap font scaling mode.

* * *

[bool](class_bool.md#class-bool) **\_font\_get\_generate\_mipmaps**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-generate-mipmaps)

Returns `true` if font texture mipmap generation is enabled.

* * *

[float](class_float.md#class-float) **\_font\_get\_global\_oversampling**() virtualconst [🔗](#class-textserverextension-private-method-font-get-global-oversampling)

Returns the font oversampling factor, shared by all fonts in the TextServer.

* * *

[Vector2](class_vector2.md#class-vector2) **\_font\_get\_glyph\_advance**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-glyph-advance)

Returns glyph advance (offset of the next glyph).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_font\_get\_glyph\_contours**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), index: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-font-get-glyph-contours)

Returns outline contours of the glyph.

* * *

[int](class_int.md#class-int) **\_font\_get\_glyph\_index**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), char: [int](class_int.md#class-int), variation\_selector: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-glyph-index)

Returns the glyph index of a `char`, optionally modified by the `variation_selector`.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_font\_get\_glyph\_list**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-glyph-list)

Returns list of rendered glyphs in the cache entry.

* * *

[Vector2](class_vector2.md#class-vector2) **\_font\_get\_glyph\_offset**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-glyph-offset)

Returns glyph offset from the baseline.

* * *

[Vector2](class_vector2.md#class-vector2) **\_font\_get\_glyph\_size**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-glyph-size)

Returns size of the glyph.

* * *

[int](class_int.md#class-int) **\_font\_get\_glyph\_texture\_idx**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-glyph-texture-idx)

Returns index of the cache texture containing the glyph.

* * *

[RID](class_rid.md#class-rid) **\_font\_get\_glyph\_texture\_rid**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-glyph-texture-rid)

Returns resource ID of the cache texture containing the glyph.

* * *

[Vector2](class_vector2.md#class-vector2) **\_font\_get\_glyph\_texture\_size**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-glyph-texture-size)

Returns size of the cache texture containing the glyph.

* * *

[Rect2](class_rect2.md#class-rect2) **\_font\_get\_glyph\_uv\_rect**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-glyph-uv-rect)

Returns rectangle in the cache texture containing the glyph.

* * *

[Hinting](class_textserver.md#enum-textserver-hinting) **\_font\_get\_hinting**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-hinting)

Returns the font hinting mode. Used by dynamic fonts only.

* * *

[bool](class_bool.md#class-bool) **\_font\_get\_keep\_rounding\_remainders**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-keep-rounding-remainders)

Returns glyph position rounding behavior. If set to `true`, when aligning glyphs to the pixel boundaries rounding remainders are accumulated to ensure more uniform glyph distribution. This setting has no effect if subpixel positioning is enabled.

* * *

[Vector2](class_vector2.md#class-vector2) **\_font\_get\_kerning**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) virtualconst [🔗](#class-textserverextension-private-method-font-get-kerning)

Returns kerning for the pair of glyphs.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **\_font\_get\_kerning\_list**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-font-get-kerning-list)

Returns list of the kerning overrides.

* * *

[bool](class_bool.md#class-bool) **\_font\_get\_language\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) virtual [🔗](#class-textserverextension-private-method-font-get-language-support-override)

Returns `true` if support override is enabled for the `language`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_font\_get\_language\_support\_overrides**(font\_rid: [RID](class_rid.md#class-rid)) virtual [🔗](#class-textserverextension-private-method-font-get-language-support-overrides)

Returns list of language support overrides.

* * *

[int](class_int.md#class-int) **\_font\_get\_msdf\_pixel\_range**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-msdf-pixel-range)

Returns the width of the range around the shape between the minimum and maximum representable signed distance.

* * *

[int](class_int.md#class-int) **\_font\_get\_msdf\_size**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-msdf-size)

Returns source font size used to generate MSDF textures.

* * *

[String](class_string.md#class-string) **\_font\_get\_name**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-name)

Returns font family name.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_font\_get\_opentype\_feature\_overrides**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-opentype-feature-overrides)

Returns font OpenType feature set override.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_font\_get\_ot\_name\_strings**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-ot-name-strings)

Returns [Dictionary](class_dictionary.md#class-dictionary) with OpenType font name strings (localized font names, version, description, license information, sample text, etc.).

* * *

[float](class_float.md#class-float) **\_font\_get\_oversampling**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-oversampling)

Returns oversampling factor override. If set to a positive value, overrides the oversampling factor of the viewport this font is used in. See [Viewport.oversampling](class_viewport.md#class-viewport-property-oversampling). This value doesn't override the `oversampling` parameter of `draw_*` methods. Used by dynamic fonts only.

* * *

[float](class_float.md#class-float) **\_font\_get\_scale**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-scale)

Returns scaling factor of the color bitmap font.

* * *

[bool](class_bool.md#class-bool) **\_font\_get\_script\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) virtual [🔗](#class-textserverextension-private-method-font-get-script-support-override)

Returns `true` if support override is enabled for the `script`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_font\_get\_script\_support\_overrides**(font\_rid: [RID](class_rid.md#class-rid)) virtual [🔗](#class-textserverextension-private-method-font-get-script-support-overrides)

Returns list of script support overrides.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_font\_get\_size\_cache\_info**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-size-cache-info)

Returns font cache information, each entry contains the following fields: `Vector2i size_px` \- font size in pixels, `float viewport_oversampling` \- viewport oversampling factor, `int glyphs` \- number of rendered glyphs, `int textures` \- number of used textures, `int textures_size` \- size of texture data in bytes.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **\_font\_get\_size\_cache\_list**(font\_rid: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-size-cache-list)

Returns list of the font sizes in the cache. Each size is [Vector2i](class_vector2i.md#class-vector2i) with font size and outline size.

* * *

[int](class_int.md#class-int) **\_font\_get\_spacing**(font\_rid: [RID](class_rid.md#class-rid), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype)) virtualconst [🔗](#class-textserverextension-private-method-font-get-spacing)

Returns the spacing for `spacing` in pixels (not relative to the font size).

* * *

[int](class_int.md#class-int) **\_font\_get\_stretch**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-stretch)

Returns font stretch amount, compared to a normal width. A percentage value between `50%` and `200%`.

* * *

BitField\[ [FontStyle](class_textserver.md#enum-textserver-fontstyle)\] **\_font\_get\_style**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-style)

Returns font style flags.

* * *

[String](class_string.md#class-string) **\_font\_get\_style\_name**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-style-name)

Returns font style name.

* * *

[SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning) **\_font\_get\_subpixel\_positioning**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-subpixel-positioning)

Returns font subpixel glyph positioning mode.

* * *

[String](class_string.md#class-string) **\_font\_get\_supported\_chars**(font\_rid: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-supported-chars)

Returns a string containing all the characters available in the font.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_font\_get\_supported\_glyphs**(font\_rid: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-supported-glyphs)

Returns an array containing all glyph indices in the font.

* * *

[int](class_int.md#class-int) **\_font\_get\_texture\_count**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-texture-count)

Returns number of textures used by font cache entry.

* * *

[Image](class_image.md#class-image) **\_font\_get\_texture\_image**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-texture-image)

Returns font cache texture image data.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_font\_get\_texture\_offsets**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-font-get-texture-offsets)

Returns array containing glyph packing data.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **\_font\_get\_transform**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-transform)

Returns 2D transform applied to the font outlines.

* * *

[float](class_float.md#class-float) **\_font\_get\_underline\_position**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-underline-position)

Returns pixel offset of the underline below the baseline.

* * *

[float](class_float.md#class-float) **\_font\_get\_underline\_thickness**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-get-underline-thickness)

Returns thickness of the underline in pixels.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_font\_get\_variation\_coordinates**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-variation-coordinates)

Returns variation coordinates for the specified font cache entry.

* * *

[int](class_int.md#class-int) **\_font\_get\_weight**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-get-weight)

Returns weight (boldness) of the font. A value in the `100...999` range, normal font weight is `400`, bold font weight is `700`.

* * *

[bool](class_bool.md#class-bool) **\_font\_has\_char**(font\_rid: [RID](class_rid.md#class-rid), char: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-font-has-char)

Returns `true` if a Unicode `char` is available in the font.

* * *

[bool](class_bool.md#class-bool) **\_font\_is\_allow\_system\_fallback**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-is-allow-system-fallback)

Returns `true` if system fonts can be automatically used as fallbacks.

* * *

[bool](class_bool.md#class-bool) **\_font\_is\_force\_autohinter**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-is-force-autohinter)

Returns `true` if auto-hinting is supported and preferred over font built-in hinting.

* * *

[bool](class_bool.md#class-bool) **\_font\_is\_language\_supported**(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-font-is-language-supported)

Returns `true`, if font supports given language ( [ISO 639](https://en.wikipedia.org/wiki/ISO_639-1) code).

* * *

[bool](class_bool.md#class-bool) **\_font\_is\_modulate\_color\_glyphs**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-is-modulate-color-glyphs)

Returns `true`, if color modulation is applied when drawing colored glyphs.

* * *

[bool](class_bool.md#class-bool) **\_font\_is\_multichannel\_signed\_distance\_field**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-is-multichannel-signed-distance-field)

Returns `true` if glyphs of all sizes are rendered using single multichannel signed distance field generated from the dynamic font vector data.

* * *

[bool](class_bool.md#class-bool) **\_font\_is\_script\_supported**(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-font-is-script-supported)

Returns `true`, if font supports given script (ISO 15924 code).

* * *

void **\_font\_remove\_glyph**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) virtualrequired [🔗](#class-textserverextension-private-method-font-remove-glyph)

Removes specified rendered glyph information from the cache entry.

* * *

void **\_font\_remove\_kerning**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) virtual [🔗](#class-textserverextension-private-method-font-remove-kerning)

Removes kerning override for the pair of glyphs.

* * *

void **\_font\_remove\_language\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string)) virtual [🔗](#class-textserverextension-private-method-font-remove-language-support-override)

Remove language support override.

* * *

void **\_font\_remove\_script\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string)) virtual [🔗](#class-textserverextension-private-method-font-remove-script-support-override)

Removes script support override.

* * *

void **\_font\_remove\_size\_cache**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i)) virtualrequired [🔗](#class-textserverextension-private-method-font-remove-size-cache)

Removes specified font size from the cache entry.

* * *

void **\_font\_remove\_texture**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) virtualrequired [🔗](#class-textserverextension-private-method-font-remove-texture)

Removes specified texture from the cache entry.

* * *

void **\_font\_render\_glyph**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), index: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-font-render-glyph)

Renders specified glyph to the font cache texture.

* * *

void **\_font\_render\_range**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-font-render-range)

Renders the range of characters to the font cache texture.

* * *

void **\_font\_set\_allow\_system\_fallback**(font\_rid: [RID](class_rid.md#class-rid), allow\_system\_fallback: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-font-set-allow-system-fallback)

If set to `true`, system fonts can be automatically used as fallbacks.

* * *

void **\_font\_set\_antialiasing**(font\_rid: [RID](class_rid.md#class-rid), antialiasing: [FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing)) virtual [🔗](#class-textserverextension-private-method-font-set-antialiasing)

Sets font anti-aliasing mode.

* * *

void **\_font\_set\_ascent**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), ascent: [float](class_float.md#class-float)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-ascent)

Sets the font ascent (number of pixels above the baseline).

* * *

void **\_font\_set\_baseline\_offset**(font\_rid: [RID](class_rid.md#class-rid), baseline\_offset: [float](class_float.md#class-float)) virtual [🔗](#class-textserverextension-private-method-font-set-baseline-offset)

Sets extra baseline offset (as a fraction of font height).

* * *

void **\_font\_set\_data**(font\_rid: [RID](class_rid.md#class-rid), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) virtual [🔗](#class-textserverextension-private-method-font-set-data)

Sets font source data, e.g contents of the dynamic font source file.

* * *

void **\_font\_set\_data\_ptr**(font\_rid: [RID](class_rid.md#class-rid), data\_ptr: `const uint8_t*`, data\_size: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-font-set-data-ptr)

Sets pointer to the font source data, e.g contents of the dynamic font source file.

* * *

void **\_font\_set\_descent**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), descent: [float](class_float.md#class-float)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-descent)

Sets the font descent (number of pixels below the baseline).

* * *

void **\_font\_set\_disable\_embedded\_bitmaps**(font\_rid: [RID](class_rid.md#class-rid), disable\_embedded\_bitmaps: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-font-set-disable-embedded-bitmaps)

If set to `true`, embedded font bitmap loading is disabled.

* * *

void **\_font\_set\_embolden**(font\_rid: [RID](class_rid.md#class-rid), strength: [float](class_float.md#class-float)) virtual [🔗](#class-textserverextension-private-method-font-set-embolden)

Sets font embolden strength. If `strength` is not equal to zero, emboldens the font outlines. Negative values reduce the outline thickness.

* * *

void **\_font\_set\_face\_index**(font\_rid: [RID](class_rid.md#class-rid), face\_index: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-font-set-face-index)

Sets an active face index in the TrueType / OpenType collection.

* * *

void **\_font\_set\_fixed\_size**(font\_rid: [RID](class_rid.md#class-rid), fixed\_size: [int](class_int.md#class-int)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-fixed-size)

Sets bitmap font fixed size. If set to value greater than zero, same cache entry will be used for all font sizes.

* * *

void **\_font\_set\_fixed\_size\_scale\_mode**(font\_rid: [RID](class_rid.md#class-rid), fixed\_size\_scale\_mode: [FixedSizeScaleMode](class_textserver.md#enum-textserver-fixedsizescalemode)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-fixed-size-scale-mode)

Sets bitmap font scaling mode. This property is used only if `fixed_size` is greater than zero.

* * *

void **\_font\_set\_force\_autohinter**(font\_rid: [RID](class_rid.md#class-rid), force\_autohinter: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-font-set-force-autohinter)

If set to `true` auto-hinting is preferred over font built-in hinting.

* * *

void **\_font\_set\_generate\_mipmaps**(font\_rid: [RID](class_rid.md#class-rid), generate\_mipmaps: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-font-set-generate-mipmaps)

If set to `true` font texture mipmap generation is enabled.

* * *

void **\_font\_set\_global\_oversampling**(oversampling: [float](class_float.md#class-float)) virtual [🔗](#class-textserverextension-private-method-font-set-global-oversampling)

Sets oversampling factor, shared by all font in the TextServer.

* * *

void **\_font\_set\_glyph\_advance**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int), advance: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-glyph-advance)

Sets glyph advance (offset of the next glyph).

* * *

void **\_font\_set\_glyph\_offset**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), offset: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-glyph-offset)

Sets glyph offset from the baseline.

* * *

void **\_font\_set\_glyph\_size**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), gl\_size: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-glyph-size)

Sets size of the glyph.

* * *

void **\_font\_set\_glyph\_texture\_idx**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), texture\_idx: [int](class_int.md#class-int)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-glyph-texture-idx)

Sets index of the cache texture containing the glyph.

* * *

void **\_font\_set\_glyph\_uv\_rect**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), uv\_rect: [Rect2](class_rect2.md#class-rect2)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-glyph-uv-rect)

Sets rectangle in the cache texture containing the glyph.

* * *

void **\_font\_set\_hinting**(font\_rid: [RID](class_rid.md#class-rid), hinting: [Hinting](class_textserver.md#enum-textserver-hinting)) virtual [🔗](#class-textserverextension-private-method-font-set-hinting)

Sets font hinting mode. Used by dynamic fonts only.

* * *

void **\_font\_set\_keep\_rounding\_remainders**(font\_rid: [RID](class_rid.md#class-rid), keep\_rounding\_remainders: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-font-set-keep-rounding-remainders)

Sets glyph position rounding behavior. If set to `true`, when aligning glyphs to the pixel boundaries rounding remainders are accumulated to ensure more uniform glyph distribution. This setting has no effect if subpixel positioning is enabled.

* * *

void **\_font\_set\_kerning**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i), kerning: [Vector2](class_vector2.md#class-vector2)) virtual [🔗](#class-textserverextension-private-method-font-set-kerning)

Sets kerning for the pair of glyphs.

* * *

void **\_font\_set\_language\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), language: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-font-set-language-support-override)

Adds override for [\_font\_is\_language\_supported()](#class-textserverextension-private-method-font-is-language-supported).

* * *

void **\_font\_set\_modulate\_color\_glyphs**(font\_rid: [RID](class_rid.md#class-rid), modulate: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-font-set-modulate-color-glyphs)

If set to `true`, color modulation is applied when drawing colored glyphs, otherwise it's applied to the monochrome glyphs only.

* * *

void **\_font\_set\_msdf\_pixel\_range**(font\_rid: [RID](class_rid.md#class-rid), msdf\_pixel\_range: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-font-set-msdf-pixel-range)

Sets the width of the range around the shape between the minimum and maximum representable signed distance.

* * *

void **\_font\_set\_msdf\_size**(font\_rid: [RID](class_rid.md#class-rid), msdf\_size: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-font-set-msdf-size)

Sets source font size used to generate MSDF textures.

* * *

void **\_font\_set\_multichannel\_signed\_distance\_field**(font\_rid: [RID](class_rid.md#class-rid), msdf: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-font-set-multichannel-signed-distance-field)

If set to `true`, glyphs of all sizes are rendered using single multichannel signed distance field generated from the dynamic font vector data. MSDF rendering allows displaying the font at any scaling factor without blurriness, and without incurring a CPU cost when the font size changes (since the font no longer needs to be rasterized on the CPU). As a downside, font hinting is not available with MSDF. The lack of font hinting may result in less crisp and less readable fonts at small sizes.

* * *

void **\_font\_set\_name**(font\_rid: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) virtual [🔗](#class-textserverextension-private-method-font-set-name)

Sets the font family name.

* * *

void **\_font\_set\_opentype\_feature\_overrides**(font\_rid: [RID](class_rid.md#class-rid), overrides: [Dictionary](class_dictionary.md#class-dictionary)) virtual [🔗](#class-textserverextension-private-method-font-set-opentype-feature-overrides)

Sets font OpenType feature set override.

* * *

void **\_font\_set\_oversampling**(font\_rid: [RID](class_rid.md#class-rid), oversampling: [float](class_float.md#class-float)) virtual [🔗](#class-textserverextension-private-method-font-set-oversampling)

If set to a positive value, overrides the oversampling factor of the viewport this font is used in. See [Viewport.oversampling](class_viewport.md#class-viewport-property-oversampling). This value doesn't override the `oversampling` parameter of `draw_*` methods. Used by dynamic fonts only.

* * *

void **\_font\_set\_scale**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), scale: [float](class_float.md#class-float)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-scale)

Sets scaling factor of the color bitmap font.

* * *

void **\_font\_set\_script\_support\_override**(font\_rid: [RID](class_rid.md#class-rid), script: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-font-set-script-support-override)

Adds override for [\_font\_is\_script\_supported()](#class-textserverextension-private-method-font-is-script-supported).

* * *

void **\_font\_set\_spacing**(font\_rid: [RID](class_rid.md#class-rid), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype), value: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-font-set-spacing)

Sets the spacing for `spacing` to `value` in pixels (not relative to the font size).

* * *

void **\_font\_set\_stretch**(font\_rid: [RID](class_rid.md#class-rid), stretch: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-font-set-stretch)

Sets font stretch amount, compared to a normal width. A percentage value between `50%` and `200%`.

* * *

void **\_font\_set\_style**(font\_rid: [RID](class_rid.md#class-rid), style: BitField\[ [FontStyle](class_textserver.md#enum-textserver-fontstyle)\]) virtual [🔗](#class-textserverextension-private-method-font-set-style)

Sets the font style flags.

* * *

void **\_font\_set\_style\_name**(font\_rid: [RID](class_rid.md#class-rid), name\_style: [String](class_string.md#class-string)) virtual [🔗](#class-textserverextension-private-method-font-set-style-name)

Sets the font style name.

* * *

void **\_font\_set\_subpixel\_positioning**(font\_rid: [RID](class_rid.md#class-rid), subpixel\_positioning: [SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning)) virtual [🔗](#class-textserverextension-private-method-font-set-subpixel-positioning)

Sets font subpixel glyph positioning mode.

* * *

void **\_font\_set\_texture\_image**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), image: [Image](class_image.md#class-image)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-texture-image)

Sets font cache texture image data.

* * *

void **\_font\_set\_texture\_offsets**(font\_rid: [RID](class_rid.md#class-rid), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), offset: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) virtual [🔗](#class-textserverextension-private-method-font-set-texture-offsets)

Sets array containing glyph packing data.

* * *

void **\_font\_set\_transform**(font\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) virtual [🔗](#class-textserverextension-private-method-font-set-transform)

Sets 2D transform, applied to the font outlines, can be used for slanting, flipping, and rotating glyphs.

* * *

void **\_font\_set\_underline\_position**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), underline\_position: [float](class_float.md#class-float)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-underline-position)

Sets pixel offset of the underline below the baseline.

* * *

void **\_font\_set\_underline\_thickness**(font\_rid: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), underline\_thickness: [float](class_float.md#class-float)) virtualrequired [🔗](#class-textserverextension-private-method-font-set-underline-thickness)

Sets thickness of the underline in pixels.

* * *

void **\_font\_set\_variation\_coordinates**(font\_rid: [RID](class_rid.md#class-rid), variation\_coordinates: [Dictionary](class_dictionary.md#class-dictionary)) virtual [🔗](#class-textserverextension-private-method-font-set-variation-coordinates)

Sets variation coordinates for the specified font cache entry.

* * *

void **\_font\_set\_weight**(font\_rid: [RID](class_rid.md#class-rid), weight: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-font-set-weight)

Sets weight (boldness) of the font. A value in the `100...999` range, normal font weight is `400`, bold font weight is `700`.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_font\_supported\_feature\_list**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-supported-feature-list)

Returns the dictionary of the supported OpenType features.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_font\_supported\_variation\_list**(font\_rid: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-font-supported-variation-list)

Returns the dictionary of the supported OpenType variation coordinates.

* * *

[String](class_string.md#class-string) **\_format\_number**(number: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-format-number)

Converts a number from the Western Arabic (0..9) to the numeral systems used in `language`.

* * *

void **\_free\_rid**(rid: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-textserverextension-private-method-free-rid)

Frees an object created by this [TextServer](class_textserver.md#class-textserver).

* * *

[int](class_int.md#class-int) **\_get\_features**() virtualrequiredconst [🔗](#class-textserverextension-private-method-get-features)

Returns text server features, see [Feature](class_textserver.md#enum-textserver-feature).

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_hex\_code\_box\_size**(size: [int](class_int.md#class-int), index: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-get-hex-code-box-size)

Returns size of the replacement character (box with character hexadecimal code that is drawn in place of invalid characters).

* * *

[String](class_string.md#class-string) **\_get\_name**() virtualrequiredconst [🔗](#class-textserverextension-private-method-get-name)

Returns the name of the server interface.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **\_get\_support\_data**() virtualconst [🔗](#class-textserverextension-private-method-get-support-data)

Returns default TextServer database (e.g. ICU break iterators and dictionaries).

* * *

[String](class_string.md#class-string) **\_get\_support\_data\_filename**() virtualconst [🔗](#class-textserverextension-private-method-get-support-data-filename)

Returns default TextServer database (e.g. ICU break iterators and dictionaries) filename.

* * *

[String](class_string.md#class-string) **\_get\_support\_data\_info**() virtualconst [🔗](#class-textserverextension-private-method-get-support-data-info)

Returns TextServer database (e.g. ICU break iterators and dictionaries) description.

* * *

[bool](class_bool.md#class-bool) **\_has**(rid: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-textserverextension-private-method-has)

Returns `true` if `rid` is valid resource owned by this text server.

* * *

[bool](class_bool.md#class-bool) **\_has\_feature**(feature: [Feature](class_textserver.md#enum-textserver-feature)) virtualrequiredconst [🔗](#class-textserverextension-private-method-has-feature)

Returns `true` if the server supports a feature.

* * *

[int](class_int.md#class-int) **\_is\_confusable**(string: [String](class_string.md#class-string), dict: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtualconst [🔗](#class-textserverextension-private-method-is-confusable)

Returns index of the first string in `dict` which is visually confusable with the `string`, or `-1` if none is found.

* * *

[bool](class_bool.md#class-bool) **\_is\_locale\_right\_to\_left**(locale: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-is-locale-right-to-left)

Returns `true` if locale is right-to-left.

* * *

[bool](class_bool.md#class-bool) **\_is\_valid\_identifier**(string: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-is-valid-identifier)

Returns `true` if `string` is a valid identifier.

* * *

[bool](class_bool.md#class-bool) **\_is\_valid\_letter**(unicode: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-is-valid-letter)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_load\_support\_data**(filename: [String](class_string.md#class-string)) virtual [🔗](#class-textserverextension-private-method-load-support-data)

Loads optional TextServer database (e.g. ICU break iterators and dictionaries).

* * *

[int](class_int.md#class-int) **\_name\_to\_tag**(name: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-name-to-tag)

Converts readable feature, variation, script, or language name to OpenType tag.

* * *

[String](class_string.md#class-string) **\_parse\_number**(number: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-parse-number)

Converts `number` from the numeral systems used in `language` to Western Arabic (0..9).

* * *

[Array](class_array.md#class-array)\[ [Vector3i](class_vector3i.md#class-vector3i)\] **\_parse\_structured\_text**(parser\_type: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser), args: [Array](class_array.md#class-array), text: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-parse-structured-text)

Default implementation of the BiDi algorithm override function.

* * *

[String](class_string.md#class-string) **\_percent\_sign**(language: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-percent-sign)

Returns percent sign used in the `language`.

* * *

void **\_reference\_oversampling\_level**(oversampling: [float](class_float.md#class-float)) virtual [🔗](#class-textserverextension-private-method-reference-oversampling-level)

Increases the reference count of the specified oversampling level. This method is called by [Viewport](class_viewport.md#class-viewport), and should not be used directly.

* * *

[bool](class_bool.md#class-bool) **\_save\_support\_data**(filename: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-save-support-data)

Saves optional TextServer database (e.g. ICU break iterators and dictionaries) to the file.

* * *

[int](class_int.md#class-int) **\_shaped\_get\_run\_count**(shaped: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-shaped-get-run-count)

Returns the number of uniform text runs in the buffer.

* * *

[Direction](class_textserver.md#enum-textserver-direction) **\_shaped\_get\_run\_direction**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-get-run-direction)

Returns the direction of the `index` text run (in visual order).

* * *

[RID](class_rid.md#class-rid) **\_shaped\_get\_run\_font\_rid**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-get-run-font-rid)

Returns the font RID of the `index` text run (in visual order).

* * *

[int](class_int.md#class-int) **\_shaped\_get\_run\_font\_size**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-get-run-font-size)

Returns the font size of the `index` text run (in visual order).

* * *

[String](class_string.md#class-string) **\_shaped\_get\_run\_language**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-get-run-language)

Returns the language of the `index` text run (in visual order).

* * *

[Variant](class_variant.md#class-variant) **\_shaped\_get\_run\_object**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-get-run-object)

Returns the embedded object of the `index` text run (in visual order).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **\_shaped\_get\_run\_range**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-get-run-range)

Returns the source text range of the `index` text run (in visual order).

* * *

[String](class_string.md#class-string) **\_shaped\_get\_run\_text**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-get-run-text)

Returns the source text of the `index` text run (in visual order).

* * *

[int](class_int.md#class-int) **\_shaped\_get\_span\_count**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-get-span-count)

Returns number of text spans added using [\_shaped\_text\_add\_string()](#class-textserverextension-private-method-shaped-text-add-string) or [\_shaped\_text\_add\_object()](#class-textserverextension-private-method-shaped-text-add-object).

* * *

[Variant](class_variant.md#class-variant) **\_shaped\_get\_span\_embedded\_object**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-get-span-embedded-object)

Returns text embedded object key.

* * *

[Variant](class_variant.md#class-variant) **\_shaped\_get\_span\_meta**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-get-span-meta)

Returns text span metadata.

* * *

[Variant](class_variant.md#class-variant) **\_shaped\_get\_span\_object**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-get-span-object)

Returns the text span embedded object key.

* * *

[String](class_string.md#class-string) **\_shaped\_get\_span\_text**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-get-span-text)

Returns the text span source text.

* * *

[String](class_string.md#class-string) **\_shaped\_get\_text**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-get-text)

Returns the text buffer source text, including object replacement characters.

* * *

void **\_shaped\_set\_span\_update\_font**(shaped: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), fonts: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], size: [int](class_int.md#class-int), opentype\_features: [Dictionary](class_dictionary.md#class-dictionary)) virtualrequired [🔗](#class-textserverextension-private-method-shaped-set-span-update-font)

Changes text span font, font size, and OpenType features, without changing the text.

* * *

[bool](class_bool.md#class-bool) **\_shaped\_text\_add\_object**(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment), length: [int](class_int.md#class-int), baseline: [float](class_float.md#class-float)) virtualrequired [🔗](#class-textserverextension-private-method-shaped-text-add-object)

Adds inline object to the text buffer, `key` must be unique. In the text, object is represented as `length` object replacement characters.

* * *

[bool](class_bool.md#class-bool) **\_shaped\_text\_add\_string**(shaped: [RID](class_rid.md#class-rid), text: [String](class_string.md#class-string), fonts: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], size: [int](class_int.md#class-int), opentype\_features: [Dictionary](class_dictionary.md#class-dictionary), language: [String](class_string.md#class-string), meta: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-textserverextension-private-method-shaped-text-add-string)

Adds text span and font to draw it to the text buffer.

* * *

void **\_shaped\_text\_clear**(shaped: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-textserverextension-private-method-shaped-text-clear)

Clears text buffer (removes text and inline objects).

* * *

[int](class_int.md#class-int) **\_shaped\_text\_closest\_character\_pos**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-closest-character-pos)

Returns composite character position closest to the `pos`.

* * *

void **\_shaped\_text\_draw**(shaped: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), clip\_l: [float](class_float.md#class-float), clip\_r: [float](class_float.md#class-float), color: [Color](class_color.md#class-color), oversampling: [float](class_float.md#class-float)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-draw)

Draw shaped text into a canvas item at a given position, with `color`. `pos` specifies the leftmost point of the baseline (for horizontal layout) or topmost point of the baseline (for vertical layout). If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **\_shaped\_text\_draw\_outline**(shaped: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), clip\_l: [float](class_float.md#class-float), clip\_r: [float](class_float.md#class-float), outline\_size: [int](class_int.md#class-int), color: [Color](class_color.md#class-color), oversampling: [float](class_float.md#class-float)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-draw-outline)

Draw the outline of the shaped text into a canvas item at a given position, with `color`. `pos` specifies the leftmost point of the baseline (for horizontal layout) or topmost point of the baseline (for vertical layout). If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

[float](class_float.md#class-float) **\_shaped\_text\_fit\_to\_width**(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float), justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\]) virtual [🔗](#class-textserverextension-private-method-shaped-text-fit-to-width)

Adjusts text width to fit to specified width, returns new text width.

* * *

[float](class_float.md#class-float) **\_shaped\_text\_get\_ascent**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-ascent)

Returns the text ascent (number of pixels above the baseline for horizontal layout or to the left of baseline for vertical).

* * *

void **\_shaped\_text\_get\_carets**(shaped: [RID](class_rid.md#class-rid), position: [int](class_int.md#class-int), caret: `CaretInfo*`) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-carets)

Returns shapes of the carets corresponding to the character offset `position` in the text. Returned caret shape is 1 pixel wide rectangle.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_shaped\_text\_get\_character\_breaks**(shaped: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-character-breaks)

Returns array of the composite character boundaries.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_get\_custom\_ellipsis**(shaped: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-custom-ellipsis)

Returns ellipsis character used for text clipping.

* * *

[String](class_string.md#class-string) **\_shaped\_text\_get\_custom\_punctuation**(shaped: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-custom-punctuation)

Returns custom punctuation character list, used for word breaking. If set to empty string, server defaults are used.

* * *

[float](class_float.md#class-float) **\_shaped\_text\_get\_descent**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-descent)

Returns the text descent (number of pixels below the baseline for horizontal layout or to the right of baseline for vertical).

* * *

[Direction](class_textserver.md#enum-textserver-direction) **\_shaped\_text\_get\_direction**(shaped: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-direction)

Returns direction of the text.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_get\_dominant\_direction\_in\_range**(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-dominant-direction-in-range)

Returns dominant direction of in the range of text.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_get\_ellipsis\_glyph\_count**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-ellipsis-glyph-count)

Returns number of glyphs in the ellipsis.

* * *

`const Glyph*` **\_shaped\_text\_get\_ellipsis\_glyphs**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-ellipsis-glyphs)

Returns array of the glyphs in the ellipsis.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_get\_ellipsis\_pos**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-ellipsis-pos)

Returns position of the ellipsis.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_get\_glyph\_count**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-glyph-count)

Returns number of glyphs in the buffer.

* * *

`const Glyph*` **\_shaped\_text\_get\_glyphs**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-glyphs)

Returns an array of glyphs in the visual order.

* * *

[Vector2](class_vector2.md#class-vector2) **\_shaped\_text\_get\_grapheme\_bounds**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-grapheme-bounds)

Returns composite character's bounds as offsets from the start of the line.

* * *

[Direction](class_textserver.md#enum-textserver-direction) **\_shaped\_text\_get\_inferred\_direction**(shaped: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-inferred-direction)

Returns direction of the text, inferred by the BiDi algorithm.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_shaped\_text\_get\_line\_breaks**(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float), start: [int](class_int.md#class-int), break\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\]) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-line-breaks)

Breaks text to the lines and returns character ranges for each line.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_shaped\_text\_get\_line\_breaks\_adv**(shaped: [RID](class_rid.md#class-rid), width: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), start: [int](class_int.md#class-int), once: [bool](class_bool.md#class-bool), break\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\]) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-line-breaks-adv)

Breaks text to the lines and columns. Returns character ranges for each segment.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_get\_object\_glyph**(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-object-glyph)

Returns the glyph index of the inline object.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **\_shaped\_text\_get\_object\_range**(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-object-range)

Returns the character range of the inline object.

* * *

[Rect2](class_rect2.md#class-rect2) **\_shaped\_text\_get\_object\_rect**(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-object-rect)

Returns bounding rectangle of the inline object.

* * *

[Array](class_array.md#class-array) **\_shaped\_text\_get\_objects**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-objects)

Returns array of inline objects.

* * *

[Orientation](class_textserver.md#enum-textserver-orientation) **\_shaped\_text\_get\_orientation**(shaped: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-orientation)

Returns text orientation.

* * *

[RID](class_rid.md#class-rid) **\_shaped\_text\_get\_parent**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-parent)

Returns the parent buffer from which the substring originates.

* * *

[bool](class_bool.md#class-bool) **\_shaped\_text\_get\_preserve\_control**(shaped: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-preserve-control)

Returns `true` if text buffer is configured to display control characters.

* * *

[bool](class_bool.md#class-bool) **\_shaped\_text\_get\_preserve\_invalid**(shaped: [RID](class_rid.md#class-rid)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-preserve-invalid)

Returns `true` if text buffer is configured to display hexadecimal codes in place of invalid characters.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **\_shaped\_text\_get\_range**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-range)

Returns substring buffer character range in the parent buffer.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **\_shaped\_text\_get\_selection**(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-selection)

Returns selection rectangles for the specified character range.

* * *

[Vector2](class_vector2.md#class-vector2) **\_shaped\_text\_get\_size**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-size)

Returns size of the text.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_get\_spacing**(shaped: [RID](class_rid.md#class-rid), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-spacing)

Returns extra spacing added between glyphs or lines in pixels.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_get\_trim\_pos**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-trim-pos)

Returns the position of the overrun trim.

* * *

[float](class_float.md#class-float) **\_shaped\_text\_get\_underline\_position**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-underline-position)

Returns pixel offset of the underline below the baseline.

* * *

[float](class_float.md#class-float) **\_shaped\_text\_get\_underline\_thickness**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-underline-thickness)

Returns thickness of the underline.

* * *

[float](class_float.md#class-float) **\_shaped\_text\_get\_width**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-get-width)

Returns width (for horizontal layout) or height (for vertical) of the text.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_shaped\_text\_get\_word\_breaks**(shaped: [RID](class_rid.md#class-rid), grapheme\_flags: BitField\[ [GraphemeFlag](class_textserver.md#enum-textserver-graphemeflag)\], skip\_grapheme\_flags: BitField\[ [GraphemeFlag](class_textserver.md#enum-textserver-graphemeflag)\]) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-get-word-breaks)

Breaks text into words and returns array of character ranges. Use `grapheme_flags` to set what characters are used for breaking.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_hit\_test\_grapheme**(shaped: [RID](class_rid.md#class-rid), coord: [float](class_float.md#class-float)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-hit-test-grapheme)

Returns grapheme index at the specified pixel offset at the baseline, or `-1` if none is found.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_hit\_test\_position**(shaped: [RID](class_rid.md#class-rid), coord: [float](class_float.md#class-float)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-hit-test-position)

Returns caret character offset at the specified pixel offset at the baseline. This function always returns a valid position.

* * *

[bool](class_bool.md#class-bool) **\_shaped\_text\_is\_ready**(shaped: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-is-ready)

Returns `true` if buffer is successfully shaped.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_next\_character\_pos**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-next-character-pos)

Returns composite character end position closest to the `pos`.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_next\_grapheme\_pos**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-next-grapheme-pos)

Returns grapheme end position closest to the `pos`.

* * *

void **\_shaped\_text\_overrun\_trim\_to\_width**(shaped: [RID](class_rid.md#class-rid), width: [float](class_float.md#class-float), trim\_flags: BitField\[ [TextOverrunFlag](class_textserver.md#enum-textserver-textoverrunflag)\]) virtual [🔗](#class-textserverextension-private-method-shaped-text-overrun-trim-to-width)

Trims text if it exceeds the given width.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_prev\_character\_pos**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-prev-character-pos)

Returns composite character start position closest to the `pos`.

* * *

[int](class_int.md#class-int) **\_shaped\_text\_prev\_grapheme\_pos**(shaped: [RID](class_rid.md#class-rid), pos: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-shaped-text-prev-grapheme-pos)

Returns grapheme start position closest to the `pos`.

* * *

[bool](class_bool.md#class-bool) **\_shaped\_text\_resize\_object**(shaped: [RID](class_rid.md#class-rid), key: [Variant](class_variant.md#class-variant), size: [Vector2](class_vector2.md#class-vector2), inline\_align: [InlineAlignment](class_@globalscope.md#enum-globalscope-inlinealignment), baseline: [float](class_float.md#class-float)) virtualrequired [🔗](#class-textserverextension-private-method-shaped-text-resize-object)

Sets new size and alignment of embedded object.

* * *

void **\_shaped\_text\_set\_bidi\_override**(shaped: [RID](class_rid.md#class-rid), override: [Array](class_array.md#class-array)) virtual [🔗](#class-textserverextension-private-method-shaped-text-set-bidi-override)

Overrides BiDi for the structured text.

* * *

void **\_shaped\_text\_set\_custom\_ellipsis**(shaped: [RID](class_rid.md#class-rid), char: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-shaped-text-set-custom-ellipsis)

Sets ellipsis character used for text clipping.

* * *

void **\_shaped\_text\_set\_custom\_punctuation**(shaped: [RID](class_rid.md#class-rid), punct: [String](class_string.md#class-string)) virtual [🔗](#class-textserverextension-private-method-shaped-text-set-custom-punctuation)

Sets custom punctuation character list, used for word breaking. If set to empty string, server defaults are used.

* * *

void **\_shaped\_text\_set\_direction**(shaped: [RID](class_rid.md#class-rid), direction: [Direction](class_textserver.md#enum-textserver-direction)) virtual [🔗](#class-textserverextension-private-method-shaped-text-set-direction)

Sets desired text direction. If set to [TextServer.DIRECTION\_AUTO](class_textserver.md#class-textserver-constant-direction-auto), direction will be detected based on the buffer contents and current locale.

* * *

void **\_shaped\_text\_set\_orientation**(shaped: [RID](class_rid.md#class-rid), orientation: [Orientation](class_textserver.md#enum-textserver-orientation)) virtual [🔗](#class-textserverextension-private-method-shaped-text-set-orientation)

Sets desired text orientation.

* * *

void **\_shaped\_text\_set\_preserve\_control**(shaped: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-shaped-text-set-preserve-control)

If set to `true` text buffer will display control characters.

* * *

void **\_shaped\_text\_set\_preserve\_invalid**(shaped: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) virtual [🔗](#class-textserverextension-private-method-shaped-text-set-preserve-invalid)

If set to `true` text buffer will display invalid characters as hexadecimal codes, otherwise nothing is displayed.

* * *

void **\_shaped\_text\_set\_spacing**(shaped: [RID](class_rid.md#class-rid), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype), value: [int](class_int.md#class-int)) virtual [🔗](#class-textserverextension-private-method-shaped-text-set-spacing)

Sets extra spacing added between glyphs or lines in pixels.

* * *

[bool](class_bool.md#class-bool) **\_shaped\_text\_shape**(shaped: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-textserverextension-private-method-shaped-text-shape)

Shapes buffer if it's not shaped. Returns `true` if the string is shaped successfully.

* * *

`const Glyph*` **\_shaped\_text\_sort\_logical**(shaped: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-textserverextension-private-method-shaped-text-sort-logical)

Returns text glyphs in the logical order.

* * *

[RID](class_rid.md#class-rid) **\_shaped\_text\_substr**(shaped: [RID](class_rid.md#class-rid), start: [int](class_int.md#class-int), length: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-textserverextension-private-method-shaped-text-substr)

Returns text buffer for the substring of the text in the `shaped` text buffer (including inline objects).

* * *

[float](class_float.md#class-float) **\_shaped\_text\_tab\_align**(shaped: [RID](class_rid.md#class-rid), tab\_stops: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) virtual [🔗](#class-textserverextension-private-method-shaped-text-tab-align)

Aligns shaped text to the given tab-stops.

* * *

[bool](class_bool.md#class-bool) **\_shaped\_text\_update\_breaks**(shaped: [RID](class_rid.md#class-rid)) virtual [🔗](#class-textserverextension-private-method-shaped-text-update-breaks)

Updates break points in the shaped text. This method is called by default implementation of text breaking functions.

* * *

[bool](class_bool.md#class-bool) **\_shaped\_text\_update\_justification\_ops**(shaped: [RID](class_rid.md#class-rid)) virtual [🔗](#class-textserverextension-private-method-shaped-text-update-justification-ops)

Updates justification points in the shaped text. This method is called by default implementation of text justification functions.

* * *

[bool](class_bool.md#class-bool) **\_spoof\_check**(string: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-spoof-check)

Returns `true` if `string` is likely to be an attempt at confusing the reader.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_string\_get\_character\_breaks**(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-string-get-character-breaks)

Returns array of the composite character boundaries.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_string\_get\_word\_breaks**(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string), chars\_per\_line: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-string-get-word-breaks)

Returns an array of the word break boundaries. Elements in the returned array are the offsets of the start and end of words. Therefore the length of the array is always even.

* * *

[String](class_string.md#class-string) **\_string\_to\_lower**(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-string-to-lower)

Returns the string converted to lowercase.

* * *

[String](class_string.md#class-string) **\_string\_to\_title**(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-string-to-title)

Returns the string converted to title case.

* * *

[String](class_string.md#class-string) **\_string\_to\_upper**(string: [String](class_string.md#class-string), language: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-string-to-upper)

Returns the string converted to uppercase.

* * *

[String](class_string.md#class-string) **\_strip\_diacritics**(string: [String](class_string.md#class-string)) virtualconst [🔗](#class-textserverextension-private-method-strip-diacritics)

Strips diacritics from the string.

* * *

[String](class_string.md#class-string) **\_tag\_to\_name**(tag: [int](class_int.md#class-int)) virtualconst [🔗](#class-textserverextension-private-method-tag-to-name)

Converts OpenType tag to readable feature, variation, script, or language name.

* * *

void **\_unreference\_oversampling\_level**(oversampling: [float](class_float.md#class-float)) virtual [🔗](#class-textserverextension-private-method-unreference-oversampling-level)

Decreases the reference count of the specified oversampling level, and frees the font cache for oversampling level when the reference count reaches zero. This method is called by [Viewport](class_viewport.md#class-viewport), and should not be used directly.

[Previous](class_textserverdummy.md "TextServerDummy") [Next](class_textserverfallback.md "TextServerFallback")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_textserverdummy.md "TextServerDummy") [Next](class_textserverfallback.md "TextServerFallback")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).