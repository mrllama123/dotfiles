---
title: ResourceImporterSVG — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimportersvg.html
crawled_at: "2026-08-13T10:28:37+12:00"
content_hash: d804972023d29894d1fe3dbb7f896b9ab52c13cbadb8993ebd388fd5349fb703
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterSVG

* * *

# ResourceImporterSVG

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports an SVG file as an automatically scalable texture for use in UI elements and 2D rendering.

## Description

This importer imports [DPITexture](class_dpitexture.md#class-dpitexture) resources. See also [ResourceImporterTexture](class_resourceimportertexture.md#class-resourceimportertexture) and [ResourceImporterImage](class_resourceimporterimage.md#class-resourceimporterimage).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [base\_scale](#class-resourceimportersvg-property-base-scale) | `1.0` |
| [Dictionary](class_dictionary.md#class-dictionary) | [color\_map](#class-resourceimportersvg-property-color-map) | `{}` |
| [bool](class_bool.md#class-bool) | [compress](#class-resourceimportersvg-property-compress) | `true` |
| [float](class_float.md#class-float) | [saturation](#class-resourceimportersvg-property-saturation) | `1.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **base\_scale** = `1.0` [🔗](#class-resourceimportersvg-property-base-scale)

Texture scale. `1.0` is the original SVG size. Higher values result in a larger image.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **color\_map** = `{}` [🔗](#class-resourceimportersvg-property-color-map)

If set, remaps texture colors according to [Color](class_color.md#class-color)- [Color](class_color.md#class-color) map.

* * *

[bool](class_bool.md#class-bool) **compress** = `true` [🔗](#class-resourceimportersvg-property-compress)

If `true`, uses lossless compression for the SVG source.

* * *

[float](class_float.md#class-float) **saturation** = `1.0` [🔗](#class-resourceimportersvg-property-saturation)

Overrides texture saturation.

[Previous](class_resourceimportershaderfile.md "ResourceImporterShaderFile") [Next](class_resourceimportertexture.md "ResourceImporterTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimportershaderfile.md "ResourceImporterShaderFile") [Next](class_resourceimportertexture.md "ResourceImporterTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).