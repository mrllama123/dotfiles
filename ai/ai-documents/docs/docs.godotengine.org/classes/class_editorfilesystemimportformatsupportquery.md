---
title: EditorFileSystemImportFormatSupportQuery — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorfilesystemimportformatsupportquery.html
crawled_at: "2026-08-13T10:25:05+12:00"
content_hash: 95002d4c57f455f9040284339b7f58cef2c101b34983db7db9876ac24086c842
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorFileSystemImportFormatSupportQuery

* * *

# EditorFileSystemImportFormatSupportQuery

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Used to query and configure import format support.

## Description

This class is used to query and configure a certain import format. It is used in conjunction with asset format import plugins.

## Methods

|     |     |
| --- | --- |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_file\_extensions](#class-editorfilesystemimportformatsupportquery-private-method-get-file-extensions)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_is\_active](#class-editorfilesystemimportformatsupportquery-private-method-is-active)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_query](#class-editorfilesystemimportformatsupportquery-private-method-query)() virtualrequiredconst |

* * *

## Method Descriptions

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_file\_extensions**() virtualrequiredconst [🔗](#class-editorfilesystemimportformatsupportquery-private-method-get-file-extensions)

Return the file extensions supported.

* * *

[bool](class_bool.md#class-bool) **\_is\_active**() virtualrequiredconst [🔗](#class-editorfilesystemimportformatsupportquery-private-method-is-active)

Return whether this importer is active.

* * *

[bool](class_bool.md#class-bool) **\_query**() virtualrequiredconst [🔗](#class-editorfilesystemimportformatsupportquery-private-method-query)

Query support. Return `false` if import must not continue.

[Previous](class_editorfilesystemdirectory.md "EditorFileSystemDirectory") [Next](class_editorimportplugin.md "EditorImportPlugin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorfilesystemdirectory.md "EditorFileSystemDirectory") [Next](class_editorimportplugin.md "EditorImportPlugin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).