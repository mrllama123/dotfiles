---
title: Importing translations — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/assets_pipeline/importing_translations.html
crawled_at: "2026-08-13T10:39:16+12:00"
content_hash: 7e8214b42d4fe2c245463600dbe5a903b0bcd38493ac81977df56fffd7e88824
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Assets pipeline](index.md)
  - Importing translations
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/assets_pipeline/importing_translations.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Importing translations

## Games and internationalization

The gaming community isn't monolingual or monocultural. It's made up of
many different languages and cultures - just like the Godot community!
If you want to allow players to experience your game in their language,
one of things you'll need to provide is text translations, which Godot
supports via internationalized text.

In regular desktop or mobile applications, internationalized text is
usually located in resource files (or .po files for GNU stuff). Games,
however, can use several orders of magnitude more text than
applications, so they must support efficient methods for dealing with
loads of multilingual text.

There are two approaches to generate multilingual language games and
applications. Both are based on a key:value system. The first is to use
one of the languages as the key (usually English), the second is to use a
specific identifier. The first approach is probably easier for
development if a game is released first in English, later in other
languages, but a complete nightmare if working with many languages at
the same time.

In general, games use the second approach and a unique ID is used for
each string. This allows you to revise the text while it is being
translated to other languages. The unique ID can be a number, a string,
or a string with a number (it's just a unique string anyway).

## Supported formats

To complete the picture and allow efficient support for translations,
Godot has a special importer that can read CSV files. Most spreadsheet
editors can export to this format, so the only requirement is that the
files have a special arrangement. See
[Localization using spreadsheets](../i18n/localization_using_spreadsheets.md#doc-localization-using-spreadsheets) for detailed info on
formatting and importing CSVs.

If you need a more powerful file format, Godot also supports loading
translations written in the gettext `.po` format. See
[Localization using gettext (PO files)](../i18n/localization_using_gettext.md#doc-localization-using-gettext) for details.

[Previous](importing_audio_samples.md "Importing audio samples") [Next](importing_3d_scenes/index.md "Importing 3D scenes")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](importing_audio_samples.md "Importing audio samples") [Next](importing_3d_scenes/index.md "Importing 3D scenes")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).