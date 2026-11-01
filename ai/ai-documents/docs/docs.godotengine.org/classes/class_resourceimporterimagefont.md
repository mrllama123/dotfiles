---
title: ResourceImporterImageFont — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimporterimagefont.html
crawled_at: "2026-08-13T10:27:34+12:00"
content_hash: 1be31fa46e30f114d2bb3390574108b36d455097bced9e612f8d08e7533b4ac3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterImageFont

* * *

# ResourceImporterImageFont

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports a bitmap font where all glyphs have the same width and height.

## Description

This image-based workflow can be easier to use than [ResourceImporterBMFont](class_resourceimporterbmfont.md#class-resourceimporterbmfont), but it requires all glyphs to have the same width and height, glyph advances and drawing offsets can be customized. This makes **ResourceImporterImageFont** most suited to fixed-width fonts.

See also [ResourceImporterDynamicFont](class_resourceimporterdynamicfont.md#class-resourceimporterdynamicfont).

## Tutorials

- [Bitmap fonts - Using fonts](../tutorials/ui/gui_using_fonts.md#bitmap-fonts)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [ascent](#class-resourceimporterimagefont-property-ascent) | `0` |
| [Rect2i](class_rect2i.md#class-rect2i) | [character\_margin](#class-resourceimporterimagefont-property-character-margin) | `Rect2i(0, 0, 0, 0)` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [character\_ranges](#class-resourceimporterimagefont-property-character-ranges) | `PackedStringArray()` |
| [int](class_int.md#class-int) | [columns](#class-resourceimporterimagefont-property-columns) | `1` |
| [bool](class_bool.md#class-bool) | [compress](#class-resourceimporterimagefont-property-compress) | `true` |
| [int](class_int.md#class-int) | [descent](#class-resourceimporterimagefont-property-descent) | `0` |
| [Array](class_array.md#class-array) | [fallbacks](#class-resourceimporterimagefont-property-fallbacks) | `[]` |
| [Rect2i](class_rect2i.md#class-rect2i) | [image\_margin](#class-resourceimporterimagefont-property-image-margin) | `Rect2i(0, 0, 0, 0)` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [kerning\_pairs](#class-resourceimporterimagefont-property-kerning-pairs) | `PackedStringArray()` |
| [int](class_int.md#class-int) | [rows](#class-resourceimporterimagefont-property-rows) | `1` |
| [int](class_int.md#class-int) | [scaling\_mode](#class-resourceimporterimagefont-property-scaling-mode) | `2` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **ascent** = `0` [🔗](#class-resourceimporterimagefont-property-ascent)

Font ascent (number of pixels above the baseline). If set to `0`, half of the character height is used.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **character\_margin** = `Rect2i(0, 0, 0, 0)` [🔗](#class-resourceimporterimagefont-property-character-margin)

Margin applied around every imported glyph. If your font image contains guides (in the form of lines between glyphs) or if spacing between characters appears incorrect, try adjusting [character\_margin](#class-resourceimporterimagefont-property-character-margin).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **character\_ranges** = `PackedStringArray()` [🔗](#class-resourceimporterimagefont-property-character-ranges)

The character ranges to import from the font image. This is an array that maps each position on the image (in tile coordinates, not pixels). The font atlas is traversed from left to right and top to bottom. Characters can be specified with decimal numbers (127), hexadecimal numbers ( `0x007f`, or `U+007f`) or between single quotes ( `'~'`). Ranges can be specified with a hyphen between characters.

For example, `0-127` represents the full ASCII range. It can also be written as `0x0000-0x007f` (or `U+0000-U+007f`). As another example, `' '-'~'` is equivalent to `32-127` and represents the range of printable (visible) ASCII characters.

For any range, the character advance and offset can be customized by appending three space-separated integer values (additional advance, x offset, y offset) to the end. For example `'a'-'b' 4 5 2` sets the advance to `char_width + 4` and offset to `Vector2(5, 2)` for both a and b characters.

**Note:** The overall number of characters must not exceed the number of [columns](#class-resourceimporterimagefont-property-columns) multiplied by [rows](#class-resourceimporterimagefont-property-rows). Otherwise, the font will fail to import.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[int](class_int.md#class-int) **columns** = `1` [🔗](#class-resourceimporterimagefont-property-columns)

Number of columns in the font image. See also [rows](#class-resourceimporterimagefont-property-rows).

* * *

[bool](class_bool.md#class-bool) **compress** = `true` [🔗](#class-resourceimporterimagefont-property-compress)

If `true`, uses lossless compression for the resulting font.

* * *

[int](class_int.md#class-int) **descent** = `0` [🔗](#class-resourceimporterimagefont-property-descent)

Font descent (number of pixels below the baseline). If set to `0`, half of the character height is used.

* * *

[Array](class_array.md#class-array) **fallbacks** = `[]` [🔗](#class-resourceimporterimagefont-property-fallbacks)

List of font fallbacks to use if a glyph isn't found in this bitmap font. Fonts at the beginning of the array are attempted first.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **image\_margin** = `Rect2i(0, 0, 0, 0)` [🔗](#class-resourceimporterimagefont-property-image-margin)

Margin to cut on the sides of the entire image. This can be used to cut parts of the image that contain attribution information or similar.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **kerning\_pairs** = `PackedStringArray()` [🔗](#class-resourceimporterimagefont-property-kerning-pairs)

Kerning pairs for the font. Kerning pair adjust the spacing between two characters.

Each string consist of three space separated values: "from" string, "to" string and integer offset. Each combination form the two string for a kerning pair, e.g, `ab cd -3` will create kerning pairs `ac`, `ad`, `bc`, and `bd` with offset `-3`. `\uXXXX` escape sequences can be used to add Unicode characters.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[int](class_int.md#class-int) **rows** = `1` [🔗](#class-resourceimporterimagefont-property-rows)

Number of rows in the font image. See also [columns](#class-resourceimporterimagefont-property-columns).

* * *

[int](class_int.md#class-int) **scaling\_mode** = `2` [🔗](#class-resourceimporterimagefont-property-scaling-mode)

Font scaling mode.

[Previous](class_resourceimporterimage.md "ResourceImporterImage") [Next](class_resourceimporterlayeredtexture.md "ResourceImporterLayeredTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimporterimage.md "ResourceImporterImage") [Next](class_resourceimporterlayeredtexture.md "ResourceImporterLayeredTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).