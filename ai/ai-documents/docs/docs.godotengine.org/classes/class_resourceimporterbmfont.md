---
title: ResourceImporterBMFont — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimporterbmfont.html
crawled_at: "2026-08-13T10:42:24+12:00"
content_hash: 6e0757a0a467208b0c881cdb9e523e9d51cf8dc2511f27b6f4f9c0e9906cfa76
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterBMFont

* * *

# ResourceImporterBMFont

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports a bitmap font in the BMFont ( `.fnt`) format.

## Description

The BMFont format is a format created by the [BMFont](https://www.angelcode.com/products/bmfont/) program. Many BMFont-compatible programs also exist, like [BMGlyph](https://www.bmglyph.com/).

Compared to [ResourceImporterImageFont](class_resourceimporterimagefont.md#class-resourceimporterimagefont), **ResourceImporterBMFont** supports bitmap fonts with varying glyph widths/heights.

See also [ResourceImporterDynamicFont](class_resourceimporterdynamicfont.md#class-resourceimporterdynamicfont).

## Tutorials

- [Bitmap fonts - Using fonts](../tutorials/ui/gui_using_fonts.md#bitmap-fonts)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [compress](#class-resourceimporterbmfont-property-compress) | `true` |
| [Array](class_array.md#class-array) | [fallbacks](#class-resourceimporterbmfont-property-fallbacks) | `[]` |
| [int](class_int.md#class-int) | [scaling\_mode](#class-resourceimporterbmfont-property-scaling-mode) | `2` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **compress** = `true` [🔗](#class-resourceimporterbmfont-property-compress)

If `true`, uses lossless compression for the resulting font.

* * *

[Array](class_array.md#class-array) **fallbacks** = `[]` [🔗](#class-resourceimporterbmfont-property-fallbacks)

List of font fallbacks to use if a glyph isn't found in this bitmap font. Fonts at the beginning of the array are attempted first.

* * *

[int](class_int.md#class-int) **scaling\_mode** = `2` [🔗](#class-resourceimporterbmfont-property-scaling-mode)

Font scaling mode.

[Previous](class_resourceimporterbitmap.md "ResourceImporterBitMap") [Next](class_resourceimportercsvtranslation.md "ResourceImporterCSVTranslation")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimporterbitmap.md "ResourceImporterBitMap") [Next](class_resourceimportercsvtranslation.md "ResourceImporterCSVTranslation")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).