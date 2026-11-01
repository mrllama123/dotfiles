---
title: ResourceImporterCSVTranslation — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimportercsvtranslation.html
crawled_at: "2026-08-13T10:36:31+12:00"
content_hash: f5f960772f5e4aa88757bb0c57577282fa415ec0a3c1ce0dbf8a96254ec433d0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterCSVTranslation

* * *

# ResourceImporterCSVTranslation

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports comma-separated values

## Description

Comma-separated values are a plain text table storage format. The format's simplicity makes it easy to edit in any text editor or spreadsheet software. This makes it a common choice for game localization.

**Example CSV file:**

```
keys,en,es,ja
GREET,"Hello, friend!","Hola, amigo!",こんにちは
ASK,How are you?,Cómo está?,元気ですか
BYE,Goodbye,Adiós,さようなら
QUOTE,"""Hello"" said the man.","""Hola"" dijo el hombre.",「こんにちは」男は言いました

```

## Tutorials

- [Importing translations](../tutorials/assets_pipeline/importing_translations.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [compress](#class-resourceimportercsvtranslation-property-compress) | `true` |
| [int](class_int.md#class-int) | [delimiter](#class-resourceimportercsvtranslation-property-delimiter) | `0` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **compress** = `true` [🔗](#class-resourceimportercsvtranslation-property-compress)

If `true`, creates an [OptimizedTranslation](class_optimizedtranslation.md#class-optimizedtranslation) instead of a [Translation](class_translation.md#class-translation). This makes the resulting file smaller at the cost of a small CPU overhead.

* * *

[int](class_int.md#class-int) **delimiter** = `0` [🔗](#class-resourceimportercsvtranslation-property-delimiter)

The delimiter to use in the CSV file. The default value matches the common CSV convention. Tab-separated values are sometimes called TSV files.

[Previous](class_resourceimporterbmfont.md "ResourceImporterBMFont") [Next](class_resourceimporterdynamicfont.md "ResourceImporterDynamicFont")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimporterbmfont.md "ResourceImporterBMFont") [Next](class_resourceimporterdynamicfont.md "ResourceImporterDynamicFont")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).