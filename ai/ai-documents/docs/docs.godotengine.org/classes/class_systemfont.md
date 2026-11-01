---
title: SystemFont — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_systemfont.html
crawled_at: "2026-08-13T10:23:10+12:00"
content_hash: 76584584258320d5ba1f6a44cc7f5b38bf20c64ff35a49eb880fdfbb19be1f78
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SystemFont

* * *

# SystemFont

**Inherits:** [Font](class_font.md#class-font) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A font loaded from a system font. Falls back to a default theme font if not implemented on the host OS.

## Description

**SystemFont** loads a font from a system font with the first matching name from [font\_names](#class-systemfont-property-font-names).

It will attempt to match font style, but it's not guaranteed.

The returned font might be part of a font collection or be a variable font with OpenType "weight", "width" and/or "italic" features set.

You can create [FontVariation](class_fontvariation.md#class-fontvariation) of the system font for precise control over its features.

**Note:** This class is implemented on iOS, Linux, macOS and Windows, on other platforms it will fallback to default theme font.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_system\_fallback](#class-systemfont-property-allow-system-fallback) | `true` |
| [FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing) | [antialiasing](#class-systemfont-property-antialiasing) | `1` |
| [bool](class_bool.md#class-bool) | [disable\_embedded\_bitmaps](#class-systemfont-property-disable-embedded-bitmaps) | `true` |
| [bool](class_bool.md#class-bool) | [font\_italic](#class-systemfont-property-font-italic) | `false` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [font\_names](#class-systemfont-property-font-names) | `PackedStringArray()` |
| [int](class_int.md#class-int) | [font\_stretch](#class-systemfont-property-font-stretch) | `100` |
| [int](class_int.md#class-int) | [font\_weight](#class-systemfont-property-font-weight) | `400` |
| [bool](class_bool.md#class-bool) | [force\_autohinter](#class-systemfont-property-force-autohinter) | `false` |
| [bool](class_bool.md#class-bool) | [generate\_mipmaps](#class-systemfont-property-generate-mipmaps) | `false` |
| [Hinting](class_textserver.md#enum-textserver-hinting) | [hinting](#class-systemfont-property-hinting) | `1` |
| [bool](class_bool.md#class-bool) | [keep\_rounding\_remainders](#class-systemfont-property-keep-rounding-remainders) | `true` |
| [bool](class_bool.md#class-bool) | [modulate\_color\_glyphs](#class-systemfont-property-modulate-color-glyphs) | `false` |
| [int](class_int.md#class-int) | [msdf\_pixel\_range](#class-systemfont-property-msdf-pixel-range) | `16` |
| [int](class_int.md#class-int) | [msdf\_size](#class-systemfont-property-msdf-size) | `48` |
| [bool](class_bool.md#class-bool) | [multichannel\_signed\_distance\_field](#class-systemfont-property-multichannel-signed-distance-field) | `false` |
| [float](class_float.md#class-float) | [oversampling](#class-systemfont-property-oversampling) | `0.0` |
| [SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning) | [subpixel\_positioning](#class-systemfont-property-subpixel-positioning) | `1` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_system\_fallback** = `true` [🔗](#class-systemfont-property-allow-system-fallback)

- void **set\_allow\_system\_fallback**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_allow\_system\_fallback**()


If set to `true`, system fonts can be automatically used as fallbacks.

* * *

[FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing) **antialiasing** = `1` [🔗](#class-systemfont-property-antialiasing)

- void **set\_antialiasing**(value: [FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing))

- [FontAntialiasing](class_textserver.md#enum-textserver-fontantialiasing) **get\_antialiasing**()


Font anti-aliasing mode.

* * *

[bool](class_bool.md#class-bool) **disable\_embedded\_bitmaps** = `true` [🔗](#class-systemfont-property-disable-embedded-bitmaps)

- void **set\_disable\_embedded\_bitmaps**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_disable\_embedded\_bitmaps**()


If set to `true`, embedded font bitmap loading is disabled (bitmap-only and color fonts ignore this property).

* * *

[bool](class_bool.md#class-bool) **font\_italic** = `false` [🔗](#class-systemfont-property-font-italic)

- void **set\_font\_italic**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_font\_italic**()


If set to `true`, italic or oblique font is preferred.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **font\_names** = `PackedStringArray()` [🔗](#class-systemfont-property-font-names)

- void **set\_font\_names**(value: [PackedStringArray](class_packedstringarray.md#class-packedstringarray))

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_font\_names**()


Array of font family names to search, first matching font found is used.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[int](class_int.md#class-int) **font\_stretch** = `100` [🔗](#class-systemfont-property-font-stretch)

- void **set\_font\_stretch**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_font\_stretch**()


Preferred font stretch amount, compared to a normal width. A percentage value between `50%` and `200%`.

* * *

[int](class_int.md#class-int) **font\_weight** = `400` [🔗](#class-systemfont-property-font-weight)

- void **set\_font\_weight**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_font\_weight**()


Preferred weight (boldness) of the font. A value in the `100...999` range, normal font weight is `400`, bold font weight is `700`.

* * *

[bool](class_bool.md#class-bool) **force\_autohinter** = `false` [🔗](#class-systemfont-property-force-autohinter)

- void **set\_force\_autohinter**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_force\_autohinter**()


If set to `true`, auto-hinting is supported and preferred over font built-in hinting.

* * *

[bool](class_bool.md#class-bool) **generate\_mipmaps** = `false` [🔗](#class-systemfont-property-generate-mipmaps)

- void **set\_generate\_mipmaps**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_generate\_mipmaps**()


If set to `true`, generate mipmaps for the font textures.

* * *

[Hinting](class_textserver.md#enum-textserver-hinting) **hinting** = `1` [🔗](#class-systemfont-property-hinting)

- void **set\_hinting**(value: [Hinting](class_textserver.md#enum-textserver-hinting))

- [Hinting](class_textserver.md#enum-textserver-hinting) **get\_hinting**()


Font hinting mode.

* * *

[bool](class_bool.md#class-bool) **keep\_rounding\_remainders** = `true` [🔗](#class-systemfont-property-keep-rounding-remainders)

- void **set\_keep\_rounding\_remainders**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_keep\_rounding\_remainders**()


If set to `true`, when aligning glyphs to the pixel boundaries rounding remainders are accumulated to ensure more uniform glyph distribution. This setting has no effect if subpixel positioning is enabled.

* * *

[bool](class_bool.md#class-bool) **modulate\_color\_glyphs** = `false` [🔗](#class-systemfont-property-modulate-color-glyphs)

- void **set\_modulate\_color\_glyphs**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_modulate\_color\_glyphs**()


If set to `true`, color modulation is applied when drawing colored glyphs, otherwise it's applied to the monochrome glyphs only.

* * *

[int](class_int.md#class-int) **msdf\_pixel\_range** = `16` [🔗](#class-systemfont-property-msdf-pixel-range)

- void **set\_msdf\_pixel\_range**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_msdf\_pixel\_range**()


The width of the range around the shape between the minimum and maximum representable signed distance. If using font outlines, [msdf\_pixel\_range](#class-systemfont-property-msdf-pixel-range) must be set to at least _twice_ the size of the largest font outline. The default [msdf\_pixel\_range](#class-systemfont-property-msdf-pixel-range) value of `16` allows outline sizes up to `8` to look correct.

* * *

[int](class_int.md#class-int) **msdf\_size** = `48` [🔗](#class-systemfont-property-msdf-size)

- void **set\_msdf\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_msdf\_size**()


Source font size used to generate MSDF textures. Higher values allow for more precision, but are slower to render and require more memory. Only increase this value if you notice a visible lack of precision in glyph rendering.

* * *

[bool](class_bool.md#class-bool) **multichannel\_signed\_distance\_field** = `false` [🔗](#class-systemfont-property-multichannel-signed-distance-field)

- void **set\_multichannel\_signed\_distance\_field**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_multichannel\_signed\_distance\_field**()


If set to `true`, glyphs of all sizes are rendered using single multichannel signed distance field generated from the dynamic font vector data.

* * *

[float](class_float.md#class-float) **oversampling** = `0.0` [🔗](#class-systemfont-property-oversampling)

- void **set\_oversampling**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_oversampling**()


If set to a positive value, overrides the oversampling factor of the viewport this font is used in. See [Viewport.oversampling](class_viewport.md#class-viewport-property-oversampling). This value doesn't override the `oversampling` parameter of `draw_*` methods.

* * *

[SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning) **subpixel\_positioning** = `1` [🔗](#class-systemfont-property-subpixel-positioning)

- void **set\_subpixel\_positioning**(value: [SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning))

- [SubpixelPositioning](class_textserver.md#enum-textserver-subpixelpositioning) **get\_subpixel\_positioning**()


Font glyph subpixel positioning mode. Subpixel positioning provides shaper text and better kerning for smaller font sizes, at the cost of memory usage and font rasterization speed. Use [TextServer.SUBPIXEL\_POSITIONING\_AUTO](class_textserver.md#class-textserver-constant-subpixel-positioning-auto) to automatically enable it based on the font size.

[Previous](class_syntaxhighlighter.md "SyntaxHighlighter") [Next](class_textmesh.md "TextMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_syntaxhighlighter.md "SyntaxHighlighter") [Next](class_textmesh.md "TextMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).