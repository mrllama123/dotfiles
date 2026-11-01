---
title: Localization using spreadsheets — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/i18n/localization_using_spreadsheets.html
crawled_at: "2026-08-13T10:28:52+12:00"
content_hash: a5cda6d2d2a7101cb055575b8610cdb9fb0c7bd95738385d6607b32cdf20882a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Internationalization](index.md)
  - Localization using spreadsheets
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/i18n/localization_using_spreadsheets.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Localization using spreadsheets

Spreadsheets are one of the most common formats for localizing games.
In Godot, spreadsheets are supported through the CSV format. This
guide explains how to work with CSVs.

The CSV files **must** be saved with UTF-8 encoding
without a [byte order mark](https://en.wikipedia.org/wiki/Byte_order_mark).

Warning

By default, Microsoft Excel will always save CSV files with ANSI encoding
rather than UTF-8. There is no built-in way to do this, but there are
workarounds as described
[here](https://stackoverflow.com/questions/4221176/excel-to-csv-with-utf8-encoding).

We recommend using [LibreOffice](https://www.libreoffice.org/) or Google Sheets instead.

## Formatting

CSV files must be formatted as follows:

| keys | <lang1> | <lang2> | <langN> |
| --- | --- | --- | --- |
| KEY1 | string | string | string |
| KEY2 | string | string | string |
| KEYN | string | string | string |

The "lang" tags must represent a language, which must be one of the [valid\
locales](locales.md#doc-locales) supported by the engine, or they must start with an underscore (\_),
which means the related column is served as comment and won't be imported.
The "KEY" tags must be unique and represent a string universally (they are usually in
uppercase, to differentiate from other strings). These keys will be replaced at
runtime by the matching translated string. Note that the case is important,
"KEY1" and "Key1" will be different keys.
The top-left cell is ignored and can be left empty or having any content.
Here's an example:

| keys | en | es | ja |
| --- | --- | --- | --- |
| GREET | Hello, friend! | Hola, amigo! | こんにちは |
| ASK | How are you? | Cómo está? | 元気ですか |
| BYE | Goodbye | Adiós | さようなら |
| QUOTE | "Hello" said the man. | "Hola" dijo el hombre. | 「こんにちは」男は言いました |

The same example is shown below as a comma-separated plain text file,
which should be the result of editing the above in a spreadsheet.
When editing the plain text version, be sure to enclose with double
quotes any message that contains commas, line breaks or double quotes,
so that commas are not parsed as delimiters, line breaks don't create new
entries and double quotes are not parsed as enclosing characters. Be sure
to escape any double quotes a message may contain by preceding them with
another double quote. Alternatively, you can select another delimiter than
comma in the import options.

```
keys,en,es,ja
GREET,"Hello, friend!","Hola, amigo!",こんにちは
ASK,How are you?,Cómo está?,元気ですか
BYE,Goodbye,Adiós,さようなら
QUOTE,"""Hello"" said the man.","""Hola"" dijo el hombre.",「こんにちは」男は言いました

```

## CSV importer

Godot will treat CSV files as translations by default. It will import them
and generate one or more compressed translation resource files next to it.

Importing will also add the translation to the list of
translations to load when the game runs, specified in project.godot (or the
project settings). Godot allows loading and removing translations at
runtime as well.

Select the `.csv` file and access the **Import** dock to define import
options. You can toggle the compression of the imported translations, and
select the delimiter to use when parsing the CSV file.

![../../_images/import_csv.webp](../../_images/import_csv.webp)

Be sure to click **Reimport** after any change to these options.

[Previous](internationalizing_games.md "Internationalizing games") [Next](localization_using_gettext.md "Localization using gettext (PO files)")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](internationalizing_games.md "Internationalizing games") [Next](localization_using_gettext.md "Localization using gettext (PO files)")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).