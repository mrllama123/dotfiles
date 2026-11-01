---
title: FontFile — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_fontfile.html
crawled_at: "2026-08-13T10:23:27+12:00"
content_hash: 8b5869c5dfb783c4edfc534d2c804f1508597ff9a233c2d6f9620dfe65b66908
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FontFile

* * *

# FontFile

**Inherits:** [Font](class_font.md#class-font) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds font source data and prerendered glyph cache, imported from a dynamic or a bitmap font.

## Description

**FontFile** contains a set of glyphs to represent Unicode characters imported from a font file, as well as a cache of rasterized glyphs, and a set of fallback [Font](class_font.md#class-font) s to use.

Use [FontVariation](class_fontvariation.md#class-fontvariation) to access specific OpenType variation of the font, create simulated bold / slanted version, and draw lines of text.

For more complex text processing, use [FontVariation](class_fontvariation.md#class-fontvariation) in conjunction with [TextLine](class_textline.md#class-textline) or [TextParagraph](class_textparagraph.md#class-textparagraph).

Supported font formats:

- Dynamic font importer: TrueType (.ttf), TrueType collection (.ttc), OpenType (.otf), OpenType collection (.otc), WOFF (.woff), WOFF2 (.woff2), Type 1 (.pfb, .pfm).

- Bitmap font importer: AngelCode BMFont (.fnt, .font), text and binary (version 3) format variants.

- Monospace image font importer: All supported image formats.


**Note:** A character is a symbol that represents an item (letter, digit etc.) in an abstract way.

**Note:** A glyph is a bitmap or a shape used to draw one or more characters in a context-dependent manner. Glyph indices are bound to the specific font data source.

**Note:** If none of the font data sources contain glyphs for a character used in a string, the character in question will be replaced with a box displaying its hexadecimal code.

GDScriptC#

```
var f = load("res://BarlowCondensed-Bold.ttf")
$Label.add_theme_font_override("font", f)
$Label.add_theme_font_size_override("font_size", 64)

```

```
var f = ResourceLoader.Load<FontFile>("res://BarlowCondensed-Bold.ttf");
GetNode("Label").AddThemeFontOverride("font", f);
GetNode("Label").AddThemeFontSizeOverride("font_size", 64);

```

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_system\_fallback](#class-fontfile-property-allow-system-fallback) | `true` |
| [FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing) | [antialiasing](#class-fontfile-property-antialiasing) | `1` |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [data](#class-fontfile-property-data) | `PackedByteArray()` |
| [bool](class_bool.md#class-bool) | [disable\_embedded\_bitmaps](#class-fontfile-property-disable-embedded-bitmaps) | `true` |
| [int](class_int.md#class-int) | [fixed\_size](#class-fontfile-property-fixed-size) | `0` |
| [FixedSizeScaleMode](class_textserver.md#enum-textserver-fixedsizescalemode) | [fixed\_size\_scale\_mode](#class-fontfile-property-fixed-size-scale-mode) | `0` |
| [String](class_string.md#class-string) | [font\_name](#class-fontfile-property-font-name) | `""` |
| [int](class_int.md#class-int) | [font\_stretch](#class-fontfile-property-font-stretch) | `100` |
| BitField\[ [FontStyle](class_textserver.md#enum-textserver-fontstyle)\] | [font\_style](#class-fontfile-property-font-style) | `0` |
| [int](class_int.md#class-int) | [font\_weight](#class-fontfile-property-font-weight) | `400` |
| [bool](class_bool.md#class-bool) | [force\_autohinter](#class-fontfile-property-force-autohinter) | `false` |
| [bool](class_bool.md#class-bool) | [generate\_mipmaps](#class-fontfile-property-generate-mipmaps) | `false` |
| [Hinting](class_textserver.md#enum-textserver-hinting) | [hinting](#class-fontfile-property-hinting) | `1` |
| [bool](class_bool.md#class-bool) | [keep\_rounding\_remainders](#class-fontfile-property-keep-rounding-remainders) | `true` |
| [bool](class_bool.md#class-bool) | [modulate\_color\_glyphs](#class-fontfile-property-modulate-color-glyphs) | `false` |
| [int](class_int.md#class-int) | [msdf\_pixel\_range](#class-fontfile-property-msdf-pixel-range) | `16` |
| [int](class_int.md#class-int) | [msdf\_size](#class-fontfile-property-msdf-size) | `48` |
| [bool](class_bool.md#class-bool) | [multichannel\_signed\_distance\_field](#class-fontfile-property-multichannel-signed-distance-field) | `false` |
| [Dictionary](class_dictionary.md#class-dictionary) | [opentype\_feature\_overrides](#class-fontfile-property-opentype-feature-overrides) | `{}` |
| [float](class_float.md#class-float) | [oversampling](#class-fontfile-property-oversampling) | `0.0` |
| [String](class_string.md#class-string) | [style\_name](#class-fontfile-property-style-name) | `""` |
| [SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning) | [subpixel\_positioning](#class-fontfile-property-subpixel-positioning) | `1` |

## Methods

|     |     |
| --- | --- |
| void | [clear\_cache](#class-fontfile-method-clear-cache)() |
| void | [clear\_glyphs](#class-fontfile-method-clear-glyphs)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [clear\_kerning\_map](#class-fontfile-method-clear-kerning-map)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) |
| void | [clear\_size\_cache](#class-fontfile-method-clear-size-cache)(cache\_index: [int](class_int.md#class-int)) |
| void | [clear\_textures](#class-fontfile-method-clear-textures)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i)) |
| [float](class_float.md#class-float) | [get\_cache\_ascent](#class-fontfile-method-get-cache-ascent)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_cache\_count](#class-fontfile-method-get-cache-count)() const |
| [float](class_float.md#class-float) | [get\_cache\_descent](#class-fontfile-method-get-cache-descent)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_cache\_scale](#class-fontfile-method-get-cache-scale)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_cache\_underline\_position](#class-fontfile-method-get-cache-underline-position)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_cache\_underline\_thickness](#class-fontfile-method-get-cache-underline-thickness)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_char\_from\_glyph\_index](#class-fontfile-method-get-char-from-glyph-index)(size: [int](class_int.md#class-int), glyph\_index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_embolden](#class-fontfile-method-get-embolden)(cache\_index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_extra\_baseline\_offset](#class-fontfile-method-get-extra-baseline-offset)(cache\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_extra\_spacing](#class-fontfile-method-get-extra-spacing)(cache\_index: [int](class_int.md#class-int), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype)) const |
| [int](class_int.md#class-int) | [get\_face\_index](#class-fontfile-method-get-face-index)(cache\_index: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_glyph\_advance](#class-fontfile-method-get-glyph-advance)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_glyph\_index](#class-fontfile-method-get-glyph-index)(size: [int](class_int.md#class-int), char: [int](class_int.md#class-int), variation\_selector: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_glyph\_list](#class-fontfile-method-get-glyph-list)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_glyph\_offset](#class-fontfile-method-get-glyph-offset)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_glyph\_size](#class-fontfile-method-get-glyph-size)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_glyph\_texture\_idx](#class-fontfile-method-get-glyph-texture-idx)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const |
| [Rect2](class_rect2.md#class-rect2) | [get\_glyph\_uv\_rect](#class-fontfile-method-get-glyph-uv-rect)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_kerning](#class-fontfile-method-get-kerning)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_kerning\_list](#class-fontfile-method-get-kerning-list)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_language\_support\_override](#class-fontfile-method-get-language-support-override)(language: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_language\_support\_overrides](#class-fontfile-method-get-language-support-overrides)() const |
| [bool](class_bool.md#class-bool) | [get\_script\_support\_override](#class-fontfile-method-get-script-support-override)(script: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_script\_support\_overrides](#class-fontfile-method-get-script-support-overrides)() const |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_size\_cache\_list](#class-fontfile-method-get-size-cache-list)(cache\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_texture\_count](#class-fontfile-method-get-texture-count)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Image](class_image.md#class-image) | [get\_texture\_image](#class-fontfile-method-get-texture-image)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_texture\_offsets](#class-fontfile-method-get-texture-offsets)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_transform](#class-fontfile-method-get-transform)(cache\_index: [int](class_int.md#class-int)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_variation\_coordinates](#class-fontfile-method-get-variation-coordinates)(cache\_index: [int](class_int.md#class-int)) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_bitmap\_font](#class-fontfile-method-load-bitmap-font)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_dynamic\_font](#class-fontfile-method-load-dynamic-font)(path: [String](class_string.md#class-string)) |
| void | [remove\_cache](#class-fontfile-method-remove-cache)(cache\_index: [int](class_int.md#class-int)) |
| void | [remove\_glyph](#class-fontfile-method-remove-glyph)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) |
| void | [remove\_kerning](#class-fontfile-method-remove-kerning)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [remove\_language\_support\_override](#class-fontfile-method-remove-language-support-override)(language: [String](class_string.md#class-string)) |
| void | [remove\_script\_support\_override](#class-fontfile-method-remove-script-support-override)(script: [String](class_string.md#class-string)) |
| void | [remove\_size\_cache](#class-fontfile-method-remove-size-cache)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [remove\_texture](#class-fontfile-method-remove-texture)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) |
| void | [render\_glyph](#class-fontfile-method-render-glyph)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), index: [int](class_int.md#class-int)) |
| void | [render\_range](#class-fontfile-method-render-range)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) |
| void | [set\_cache\_ascent](#class-fontfile-method-set-cache-ascent)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), ascent: [float](class_float.md#class-float)) |
| void | [set\_cache\_descent](#class-fontfile-method-set-cache-descent)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), descent: [float](class_float.md#class-float)) |
| void | [set\_cache\_scale](#class-fontfile-method-set-cache-scale)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), scale: [float](class_float.md#class-float)) |
| void | [set\_cache\_underline\_position](#class-fontfile-method-set-cache-underline-position)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), underline\_position: [float](class_float.md#class-float)) |
| void | [set\_cache\_underline\_thickness](#class-fontfile-method-set-cache-underline-thickness)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), underline\_thickness: [float](class_float.md#class-float)) |
| void | [set\_embolden](#class-fontfile-method-set-embolden)(cache\_index: [int](class_int.md#class-int), strength: [float](class_float.md#class-float)) |
| void | [set\_extra\_baseline\_offset](#class-fontfile-method-set-extra-baseline-offset)(cache\_index: [int](class_int.md#class-int), baseline\_offset: [float](class_float.md#class-float)) |
| void | [set\_extra\_spacing](#class-fontfile-method-set-extra-spacing)(cache\_index: [int](class_int.md#class-int), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype), value: [int](class_int.md#class-int)) |
| void | [set\_face\_index](#class-fontfile-method-set-face-index)(cache\_index: [int](class_int.md#class-int), face\_index: [int](class_int.md#class-int)) |
| void | [set\_glyph\_advance](#class-fontfile-method-set-glyph-advance)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int), advance: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_glyph\_offset](#class-fontfile-method-set-glyph-offset)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), offset: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_glyph\_size](#class-fontfile-method-set-glyph-size)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), gl\_size: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_glyph\_texture\_idx](#class-fontfile-method-set-glyph-texture-idx)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), texture\_idx: [int](class_int.md#class-int)) |
| void | [set\_glyph\_uv\_rect](#class-fontfile-method-set-glyph-uv-rect)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), uv\_rect: [Rect2](class_rect2.md#class-rect2)) |
| void | [set\_kerning](#class-fontfile-method-set-kerning)(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i), kerning: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_language\_support\_override](#class-fontfile-method-set-language-support-override)(language: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) |
| void | [set\_script\_support\_override](#class-fontfile-method-set-script-support-override)(script: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) |
| void | [set\_texture\_image](#class-fontfile-method-set-texture-image)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), image: [Image](class_image.md#class-image)) |
| void | [set\_texture\_offsets](#class-fontfile-method-set-texture-offsets)(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), offset: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| void | [set\_transform](#class-fontfile-method-set-transform)(cache\_index: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [set\_variation\_coordinates](#class-fontfile-method-set-variation-coordinates)(cache\_index: [int](class_int.md#class-int), variation\_coordinates: [Dictionary](class_dictionary.md#class-dictionary)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_system\_fallback** = `true` [🔗](#class-fontfile-property-allow-system-fallback)

- void **set\_allow\_system\_fallback**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_allow\_system\_fallback**()


If set to `true`, system fonts can be automatically used as fallbacks.

* * *

[FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing) **antialiasing** = `1` [🔗](#class-fontfile-property-antialiasing)

- void **set\_antialiasing**(value: [FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing))

- [FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing) **get\_antialiasing**()


Font anti-aliasing mode.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **data** = `PackedByteArray()` [🔗](#class-fontfile-property-data)

- void **set\_data**(value: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_data**()


Contents of the dynamic font source file.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

[bool](class_bool.md#class-bool) **disable\_embedded\_bitmaps** = `true` [🔗](#class-fontfile-property-disable-embedded-bitmaps)

- void **set\_disable\_embedded\_bitmaps**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_disable\_embedded\_bitmaps**()


If set to `true`, embedded font bitmap loading is disabled (bitmap-only and color fonts ignore this property).

* * *

[int](class_int.md#class-int) **fixed\_size** = `0` [🔗](#class-fontfile-property-fixed-size)

- void **set\_fixed\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fixed\_size**()


Font size, used only for the bitmap fonts.

* * *

[FixedSizeScaleMode](class_textserver.md#enum-textserver-fixedsizescalemode) **fixed\_size\_scale\_mode** = `0` [🔗](#class-fontfile-property-fixed-size-scale-mode)

- void **set\_fixed\_size\_scale\_mode**(value: [FixedSizeScaleMode](class_textserver.md#enum-textserver-fixedsizescalemode))

- [FixedSizeScaleMode](class_textserver.md#enum-textserver-fixedsizescalemode) **get\_fixed\_size\_scale\_mode**()


Scaling mode, used only for the bitmap fonts with [fixed\_size](#class-fontfile-property-fixed-size) greater than zero.

* * *

[String](class_string.md#class-string) **font\_name** = `""` [🔗](#class-fontfile-property-font-name)

- void **set\_font\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_font\_name**()


Font family name.

* * *

[int](class_int.md#class-int) **font\_stretch** = `100` [🔗](#class-fontfile-property-font-stretch)

- void **set\_font\_stretch**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_font\_stretch**()


Font stretch amount, compared to a normal width. A percentage value between `50%` and `200%`.

* * *

BitField\[ [FontStyle](class_textserver.md#enum-textserver-fontstyle)\] **font\_style** = `0` [🔗](#class-fontfile-property-font-style)

- void **set\_font\_style**(value: BitField\[ [FontStyle](class_textserver.md#enum-textserver-fontstyle)\])

- BitField\[ [FontStyle](class_textserver.md#enum-textserver-fontstyle)\] **get\_font\_style**()


Font style flags.

* * *

[int](class_int.md#class-int) **font\_weight** = `400` [🔗](#class-fontfile-property-font-weight)

- void **set\_font\_weight**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_font\_weight**()


Weight (boldness) of the font. A value in the `100...999` range, normal font weight is `400`, bold font weight is `700`.

* * *

[bool](class_bool.md#class-bool) **force\_autohinter** = `false` [🔗](#class-fontfile-property-force-autohinter)

- void **set\_force\_autohinter**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_force\_autohinter**()


If set to `true`, auto-hinting is supported and preferred over font built-in hinting. Used by dynamic fonts only (MSDF fonts don't support hinting).

* * *

[bool](class_bool.md#class-bool) **generate\_mipmaps** = `false` [🔗](#class-fontfile-property-generate-mipmaps)

- void **set\_generate\_mipmaps**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_generate\_mipmaps**()


If set to `true`, generate mipmaps for the font textures.

* * *

[Hinting](class_textserver.md#enum-textserver-hinting) **hinting** = `1` [🔗](#class-fontfile-property-hinting)

- void **set\_hinting**(value: [Hinting](class_textserver.md#enum-textserver-hinting))

- [Hinting](class_textserver.md#enum-textserver-hinting) **get\_hinting**()


Font hinting mode. Used by dynamic fonts only.

* * *

[bool](class_bool.md#class-bool) **keep\_rounding\_remainders** = `true` [🔗](#class-fontfile-property-keep-rounding-remainders)

- void **set\_keep\_rounding\_remainders**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_keep\_rounding\_remainders**()


If set to `true`, when aligning glyphs to the pixel boundaries rounding remainders are accumulated to ensure more uniform glyph distribution. This setting has no effect if subpixel positioning is enabled.

* * *

[bool](class_bool.md#class-bool) **modulate\_color\_glyphs** = `false` [🔗](#class-fontfile-property-modulate-color-glyphs)

- void **set\_modulate\_color\_glyphs**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_modulate\_color\_glyphs**()


If set to `true`, color modulation is applied when drawing colored glyphs, otherwise it's applied to the monochrome glyphs only.

* * *

[int](class_int.md#class-int) **msdf\_pixel\_range** = `16` [🔗](#class-fontfile-property-msdf-pixel-range)

- void **set\_msdf\_pixel\_range**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_msdf\_pixel\_range**()


The width of the range around the shape between the minimum and maximum representable signed distance. If using font outlines, [msdf\_pixel\_range](#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the size of the largest font outline. The default [msdf\_pixel\_range](#class-fontfile-property-msdf-pixel-range) value of `16` allows outline sizes up to `8` to look correct.

* * *

[int](class_int.md#class-int) **msdf\_size** = `48` [🔗](#class-fontfile-property-msdf-size)

- void **set\_msdf\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_msdf\_size**()


Source font size used to generate MSDF textures. Higher values allow for more precision, but are slower to render and require more memory. Only increase this value if you notice a visible lack of precision in glyph rendering.

* * *

[bool](class_bool.md#class-bool) **multichannel\_signed\_distance\_field** = `false` [🔗](#class-fontfile-property-multichannel-signed-distance-field)

- void **set\_multichannel\_signed\_distance\_field**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_multichannel\_signed\_distance\_field**()


If set to `true`, glyphs of all sizes are rendered using single multichannel signed distance field (MSDF) generated from the dynamic font vector data. Since this approach does not rely on rasterizing the font every time its size changes, this allows for resizing the font in real-time without any performance penalty. Text will also not look grainy for [Control](class_control.md#class-control) s that are scaled down (or for [Label3D](class_label3d.md#class-label3d) s viewed from a long distance). As a downside, font hinting is not available with MSDF. The lack of font hinting may result in less crisp and less readable fonts at small sizes.

**Note:** If using font outlines, [msdf\_pixel\_range](#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the size of the largest font outline.

**Note:** MSDF font rendering does not render glyphs with overlapping shapes correctly. Overlapping shapes are not valid per the OpenType standard, but are still commonly found in many font files, especially those converted by Google Fonts. To avoid issues with overlapping glyphs, consider downloading the font file directly from the type foundry instead of relying on Google Fonts.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **opentype\_feature\_overrides** = `{}` [🔗](#class-fontfile-property-opentype-feature-overrides)

- void **set\_opentype\_feature\_overrides**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_opentype\_feature\_overrides**()


Font OpenType feature set override.

* * *

[float](class_float.md#class-float) **oversampling** = `0.0` [🔗](#class-fontfile-property-oversampling)

- void **set\_oversampling**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_oversampling**()


If set to a positive value, overrides the oversampling factor of the viewport this font is used in. See [Viewport.oversampling](class_viewport.md#class-viewport-property-oversampling). This value doesn't override the `oversampling` parameter of `draw_*` methods.

* * *

[String](class_string.md#class-string) **style\_name** = `""` [🔗](#class-fontfile-property-style-name)

- void **set\_font\_style\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_font\_style\_name**()


Font style name.

* * *

[SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning) **subpixel\_positioning** = `1` [🔗](#class-fontfile-property-subpixel-positioning)

- void **set\_subpixel\_positioning**(value: [SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning))

- [SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning) **get\_subpixel\_positioning**()


Font glyph subpixel positioning mode. Subpixel positioning provides shaper text and better kerning for smaller font sizes, at the cost of higher memory usage and lower font rasterization speed. Use [TextServer.SUBPIXEL\_POSITIONING\_AUTO](class_textserver.md#class-textserver-constant-subpixel-positioning-auto) to automatically enable it based on the font size.

* * *

## Method Descriptions

void **clear\_cache**() [🔗](#class-fontfile-method-clear-cache)

Removes all font cache entries.

* * *

void **clear\_glyphs**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-fontfile-method-clear-glyphs)

Removes all rendered glyph information from the cache entry.

**Note:** This function will not remove textures associated with the glyphs, use [remove\_texture()](#class-fontfile-method-remove-texture) to remove them manually.

* * *

void **clear\_kerning\_map**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) [🔗](#class-fontfile-method-clear-kerning-map)

Removes all kerning overrides.

* * *

void **clear\_size\_cache**(cache\_index: [int](class_int.md#class-int)) [🔗](#class-fontfile-method-clear-size-cache)

Removes all font sizes from the cache entry.

* * *

void **clear\_textures**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-fontfile-method-clear-textures)

Removes all textures from font cache entry.

**Note:** This function will not remove glyphs associated with the texture, use [remove\_glyph()](#class-fontfile-method-remove-glyph) to remove them manually.

* * *

[float](class_float.md#class-float) **get\_cache\_ascent**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-cache-ascent)

Returns the font ascent (number of pixels above the baseline).

* * *

[int](class_int.md#class-int) **get\_cache\_count**() const [🔗](#class-fontfile-method-get-cache-count)

Returns number of the font cache entries.

* * *

[float](class_float.md#class-float) **get\_cache\_descent**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-cache-descent)

Returns the font descent (number of pixels below the baseline).

* * *

[float](class_float.md#class-float) **get\_cache\_scale**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-cache-scale)

Returns scaling factor of the color bitmap font.

* * *

[float](class_float.md#class-float) **get\_cache\_underline\_position**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-cache-underline-position)

Returns pixel offset of the underline below the baseline.

* * *

[float](class_float.md#class-float) **get\_cache\_underline\_thickness**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-cache-underline-thickness)

Returns thickness of the underline in pixels.

* * *

[int](class_int.md#class-int) **get\_char\_from\_glyph\_index**(size: [int](class_int.md#class-int), glyph\_index: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-char-from-glyph-index)

Returns character code associated with `glyph_index`, or `0` if `glyph_index` is invalid. See [get\_glyph\_index()](#class-fontfile-method-get-glyph-index).

* * *

[float](class_float.md#class-float) **get\_embolden**(cache\_index: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-embolden)

Returns embolden strength, if is not equal to zero, emboldens the font outlines. Negative values reduce the outline thickness.

* * *

[float](class_float.md#class-float) **get\_extra\_baseline\_offset**(cache\_index: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-extra-baseline-offset)

Returns extra baseline offset (as a fraction of font height).

* * *

[int](class_int.md#class-int) **get\_extra\_spacing**(cache\_index: [int](class_int.md#class-int), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype)) const [🔗](#class-fontfile-method-get-extra-spacing)

Returns spacing for `spacing` in pixels (not relative to the font size).

* * *

[int](class_int.md#class-int) **get\_face\_index**(cache\_index: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-face-index)

Returns an active face index in the TrueType / OpenType collection.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_glyph\_advance**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-glyph-advance)

Returns glyph advance (offset of the next glyph).

**Note:** Advance for glyphs outlines is the same as the base glyph advance and is not saved.

* * *

[int](class_int.md#class-int) **get\_glyph\_index**(size: [int](class_int.md#class-int), char: [int](class_int.md#class-int), variation\_selector: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-glyph-index)

Returns the glyph index of a `char`, optionally modified by the `variation_selector`.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_glyph\_list**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-fontfile-method-get-glyph-list)

Returns list of rendered glyphs in the cache entry.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_glyph\_offset**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-glyph-offset)

Returns glyph offset from the baseline.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_glyph\_size**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-glyph-size)

Returns glyph size.

* * *

[int](class_int.md#class-int) **get\_glyph\_texture\_idx**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-glyph-texture-idx)

Returns index of the cache texture containing the glyph.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_glyph\_uv\_rect**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-glyph-uv-rect)

Returns rectangle in the cache texture containing the glyph.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_kerning**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-fontfile-method-get-kerning)

Returns kerning for the pair of glyphs.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_kerning\_list**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-kerning-list)

Returns list of the kerning overrides.

* * *

[bool](class_bool.md#class-bool) **get\_language\_support\_override**(language: [String](class_string.md#class-string)) const [🔗](#class-fontfile-method-get-language-support-override)

Returns `true` if support override is enabled for the `language`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_language\_support\_overrides**() const [🔗](#class-fontfile-method-get-language-support-overrides)

Returns list of language support overrides.

* * *

[bool](class_bool.md#class-bool) **get\_script\_support\_override**(script: [String](class_string.md#class-string)) const [🔗](#class-fontfile-method-get-script-support-override)

Returns `true` if support override is enabled for the `script`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_script\_support\_overrides**() const [🔗](#class-fontfile-method-get-script-support-overrides)

Returns list of script support overrides.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_size\_cache\_list**(cache\_index: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-size-cache-list)

Returns list of the font sizes in the cache. Each size is [Vector2i](class_vector2i.md#class-vector2i) with font size and outline size.

* * *

[int](class_int.md#class-int) **get\_texture\_count**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-fontfile-method-get-texture-count)

Returns number of textures used by font cache entry.

* * *

[Image](class_image.md#class-image) **get\_texture\_image**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-texture-image)

Returns a copy of the font cache texture image.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_texture\_offsets**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-texture-offsets)

Returns a copy of the array containing glyph packing data.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_transform**(cache\_index: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-transform)

Returns 2D transform, applied to the font outlines, can be used for slanting, flipping and rotating glyphs.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_variation\_coordinates**(cache\_index: [int](class_int.md#class-int)) const [🔗](#class-fontfile-method-get-variation-coordinates)

Returns variation coordinates for the specified font cache entry. See [Font.get\_supported\_variation\_list()](class_font.md#class-font-method-get-supported-variation-list) for more info.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_bitmap\_font**(path: [String](class_string.md#class-string)) [🔗](#class-fontfile-method-load-bitmap-font)

Loads an AngelCode BMFont (.fnt, .font) bitmap font from file `path`.

**Warning:** This method should only be used in the editor or in cases when you need to load external fonts at run-time, such as fonts located at the `user://` directory.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_dynamic\_font**(path: [String](class_string.md#class-string)) [🔗](#class-fontfile-method-load-dynamic-font)

Loads a TrueType (.ttf), OpenType (.otf), WOFF (.woff), WOFF2 (.woff2) or Type 1 (.pfb, .pfm) dynamic font from file `path`.

**Warning:** This method should only be used in the editor or in cases when you need to load external fonts at run-time, such as fonts located at the `user://` directory.

* * *

void **remove\_cache**(cache\_index: [int](class_int.md#class-int)) [🔗](#class-fontfile-method-remove-cache)

Removes specified font cache entry.

* * *

void **remove\_glyph**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int)) [🔗](#class-fontfile-method-remove-glyph)

Removes specified rendered glyph information from the cache entry.

**Note:** This function will not remove textures associated with the glyphs, use [remove\_texture()](#class-fontfile-method-remove-texture) to remove them manually.

* * *

void **remove\_kerning**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-fontfile-method-remove-kerning)

Removes kerning override for the pair of glyphs.

* * *

void **remove\_language\_support\_override**(language: [String](class_string.md#class-string)) [🔗](#class-fontfile-method-remove-language-support-override)

Remove language support override.

* * *

void **remove\_script\_support\_override**(script: [String](class_string.md#class-string)) [🔗](#class-fontfile-method-remove-script-support-override)

Removes script support override.

* * *

void **remove\_size\_cache**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-fontfile-method-remove-size-cache)

Removes specified font size from the cache entry.

* * *

void **remove\_texture**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int)) [🔗](#class-fontfile-method-remove-texture)

Removes specified texture from the cache entry.

**Note:** This function will not remove glyphs associated with the texture. Remove them manually using [remove\_glyph()](#class-fontfile-method-remove-glyph).

* * *

void **render\_glyph**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), index: [int](class_int.md#class-int)) [🔗](#class-fontfile-method-render-glyph)

Renders specified glyph to the font cache texture.

* * *

void **render\_range**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), start: [int](class_int.md#class-int), end: [int](class_int.md#class-int)) [🔗](#class-fontfile-method-render-range)

Renders the range of characters to the font cache texture.

* * *

void **set\_cache\_ascent**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), ascent: [float](class_float.md#class-float)) [🔗](#class-fontfile-method-set-cache-ascent)

Sets the font ascent (number of pixels above the baseline).

* * *

void **set\_cache\_descent**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), descent: [float](class_float.md#class-float)) [🔗](#class-fontfile-method-set-cache-descent)

Sets the font descent (number of pixels below the baseline).

* * *

void **set\_cache\_scale**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), scale: [float](class_float.md#class-float)) [🔗](#class-fontfile-method-set-cache-scale)

Sets scaling factor of the color bitmap font.

* * *

void **set\_cache\_underline\_position**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), underline\_position: [float](class_float.md#class-float)) [🔗](#class-fontfile-method-set-cache-underline-position)

Sets pixel offset of the underline below the baseline.

* * *

void **set\_cache\_underline\_thickness**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), underline\_thickness: [float](class_float.md#class-float)) [🔗](#class-fontfile-method-set-cache-underline-thickness)

Sets thickness of the underline in pixels.

* * *

void **set\_embolden**(cache\_index: [int](class_int.md#class-int), strength: [float](class_float.md#class-float)) [🔗](#class-fontfile-method-set-embolden)

Sets embolden strength, if is not equal to zero, emboldens the font outlines. Negative values reduce the outline thickness.

* * *

void **set\_extra\_baseline\_offset**(cache\_index: [int](class_int.md#class-int), baseline\_offset: [float](class_float.md#class-float)) [🔗](#class-fontfile-method-set-extra-baseline-offset)

Sets extra baseline offset (as a fraction of font height).

* * *

void **set\_extra\_spacing**(cache\_index: [int](class_int.md#class-int), spacing: [SpacingType](class_textserver.md#enum-textserver-spacingtype), value: [int](class_int.md#class-int)) [🔗](#class-fontfile-method-set-extra-spacing)

Sets the spacing for `spacing` to `value` in pixels (not relative to the font size).

* * *

void **set\_face\_index**(cache\_index: [int](class_int.md#class-int), face\_index: [int](class_int.md#class-int)) [🔗](#class-fontfile-method-set-face-index)

Sets an active face index in the TrueType / OpenType collection.

* * *

void **set\_glyph\_advance**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), glyph: [int](class_int.md#class-int), advance: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-fontfile-method-set-glyph-advance)

Sets glyph advance (offset of the next glyph).

**Note:** Advance for glyphs outlines is the same as the base glyph advance and is not saved.

* * *

void **set\_glyph\_offset**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), offset: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-fontfile-method-set-glyph-offset)

Sets glyph offset from the baseline.

* * *

void **set\_glyph\_size**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), gl\_size: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-fontfile-method-set-glyph-size)

Sets glyph size.

* * *

void **set\_glyph\_texture\_idx**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), texture\_idx: [int](class_int.md#class-int)) [🔗](#class-fontfile-method-set-glyph-texture-idx)

Sets index of the cache texture containing the glyph.

* * *

void **set\_glyph\_uv\_rect**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), glyph: [int](class_int.md#class-int), uv\_rect: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-fontfile-method-set-glyph-uv-rect)

Sets rectangle in the cache texture containing the glyph.

* * *

void **set\_kerning**(cache\_index: [int](class_int.md#class-int), size: [int](class_int.md#class-int), glyph\_pair: [Vector2i](class_vector2i.md#class-vector2i), kerning: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-fontfile-method-set-kerning)

Sets kerning for the pair of glyphs.

* * *

void **set\_language\_support\_override**(language: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) [🔗](#class-fontfile-method-set-language-support-override)

Adds override for [Font.is\_language\_supported()](class_font.md#class-font-method-is-language-supported).

* * *

void **set\_script\_support\_override**(script: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) [🔗](#class-fontfile-method-set-script-support-override)

Adds override for [Font.is\_script\_supported()](class_font.md#class-font-method-is-script-supported).

* * *

void **set\_texture\_image**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), image: [Image](class_image.md#class-image)) [🔗](#class-fontfile-method-set-texture-image)

Sets font cache texture image.

* * *

void **set\_texture\_offsets**(cache\_index: [int](class_int.md#class-int), size: [Vector2i](class_vector2i.md#class-vector2i), texture\_index: [int](class_int.md#class-int), offset: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-fontfile-method-set-texture-offsets)

Sets array containing glyph packing data.

* * *

void **set\_transform**(cache\_index: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-fontfile-method-set-transform)

Sets 2D transform, applied to the font outlines, can be used for slanting, flipping, and rotating glyphs.

* * *

void **set\_variation\_coordinates**(cache\_index: [int](class_int.md#class-int), variation\_coordinates: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-fontfile-method-set-variation-coordinates)

Sets variation coordinates for the specified font cache entry. See [Font.get\_supported\_variation\_list()](class_font.md#class-font-method-get-supported-variation-list) for more info.

[Previous](class_font.md "Font") [Next](class_fontvariation.md "FontVariation")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_font.md "Font") [Next](class_fontvariation.md "FontVariation")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).