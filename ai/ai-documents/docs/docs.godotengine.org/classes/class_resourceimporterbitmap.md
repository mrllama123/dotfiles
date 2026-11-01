---
title: ResourceImporterBitMap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimporterbitmap.html
crawled_at: "2026-08-13T10:25:16+12:00"
content_hash: 878a14e87c6df1c953063c5ca9a2b6b642a97e1e258ed62eeb02c6c1dd012cc7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterBitMap

* * *

# ResourceImporterBitMap

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports a [BitMap](class_bitmap.md#class-bitmap) resource (2D array of boolean values).

## Description

[BitMap](class_bitmap.md#class-bitmap) resources are typically used as click masks in [TextureButton](class_texturebutton.md#class-texturebutton) and [TouchScreenButton](class_touchscreenbutton.md#class-touchscreenbutton).

## Tutorials

- [Importing images](../tutorials/assets_pipeline/importing_images.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [create\_from](#class-resourceimporterbitmap-property-create-from) | `0` |
| [float](class_float.md#class-float) | [threshold](#class-resourceimporterbitmap-property-threshold) | `0.5` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **create\_from** = `0` [🔗](#class-resourceimporterbitmap-property-create-from)

The data source to use for generating the bitmap.

**Black & White:** Pixels whose HSV value is greater than the [threshold](#class-resourceimporterbitmap-property-threshold) will be considered as "enabled" (bit is `true`). If the pixel is lower than or equal to the threshold, it will be considered as "disabled" (bit is `false`).

**Alpha:** Pixels whose alpha value is greater than the [threshold](#class-resourceimporterbitmap-property-threshold) will be considered as "enabled" (bit is `true`). If the pixel is lower than or equal to the threshold, it will be considered as "disabled" (bit is `false`).

* * *

[float](class_float.md#class-float) **threshold** = `0.5` [🔗](#class-resourceimporterbitmap-property-threshold)

The threshold to use to determine which bits should be considered enabled or disabled. See also [create\_from](#class-resourceimporterbitmap-property-create-from).

[Previous](class_resourceimporter.md "ResourceImporter") [Next](class_resourceimporterbmfont.md "ResourceImporterBMFont")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimporter.md "ResourceImporter") [Next](class_resourceimporterbmfont.md "ResourceImporterBMFont")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).