---
title: EditorFileSystemDirectory — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorfilesystemdirectory.html
crawled_at: "2026-08-13T10:19:18+12:00"
content_hash: bfc48a7d1958f592369e2559bb8ea72354fb4824af1c373d5e361b4c16221b36
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorFileSystemDirectory

* * *

# EditorFileSystemDirectory

**Inherits:** [Object](class_object.md#class-object)

A directory for the resource filesystem.

## Description

A more generalized, low-level variation of the directory concept.

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [find\_dir\_index](#class-editorfilesystemdirectory-method-find-dir-index)(name: [String](class_string.md#class-string)) const |
| [int](class_int.md#class-int) | [find\_file\_index](#class-editorfilesystemdirectory-method-find-file-index)(name: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [get\_file](#class-editorfilesystemdirectory-method-get-file)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_file\_count](#class-editorfilesystemdirectory-method-get-file-count)() const |
| [bool](class_bool.md#class-bool) | [get\_file\_import\_is\_valid](#class-editorfilesystemdirectory-method-get-file-import-is-valid)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_file\_path](#class-editorfilesystemdirectory-method-get-file-path)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_file\_script\_class\_extends](#class-editorfilesystemdirectory-method-get-file-script-class-extends)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_file\_script\_class\_name](#class-editorfilesystemdirectory-method-get-file-script-class-name)(idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_file\_type](#class-editorfilesystemdirectory-method-get-file-type)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_name](#class-editorfilesystemdirectory-method-get-name)() |
| [EditorFileSystemDirectory](#class-editorfilesystemdirectory) | [get\_parent](#class-editorfilesystemdirectory-method-get-parent)() |
| [String](class_string.md#class-string) | [get\_path](#class-editorfilesystemdirectory-method-get-path)() const |
| [EditorFileSystemDirectory](#class-editorfilesystemdirectory) | [get\_subdir](#class-editorfilesystemdirectory-method-get-subdir)(idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_subdir\_count](#class-editorfilesystemdirectory-method-get-subdir-count)() const |

* * *

## Method Descriptions

[int](class_int.md#class-int) **find\_dir\_index**(name: [String](class_string.md#class-string)) const [🔗](#class-editorfilesystemdirectory-method-find-dir-index)

Returns the index of the directory with name `name` or `-1` if not found.

* * *

[int](class_int.md#class-int) **find\_file\_index**(name: [String](class_string.md#class-string)) const [🔗](#class-editorfilesystemdirectory-method-find-file-index)

Returns the index of the file with name `name` or `-1` if not found.

* * *

[String](class_string.md#class-string) **get\_file**(idx: [int](class_int.md#class-int)) const [🔗](#class-editorfilesystemdirectory-method-get-file)

Returns the name of the file at index `idx`.

* * *

[int](class_int.md#class-int) **get\_file\_count**() const [🔗](#class-editorfilesystemdirectory-method-get-file-count)

Returns the number of files in this directory.

* * *

[bool](class_bool.md#class-bool) **get\_file\_import\_is\_valid**(idx: [int](class_int.md#class-int)) const [🔗](#class-editorfilesystemdirectory-method-get-file-import-is-valid)

Returns `true` if the file at index `idx` imported properly.

* * *

[String](class_string.md#class-string) **get\_file\_path**(idx: [int](class_int.md#class-int)) const [🔗](#class-editorfilesystemdirectory-method-get-file-path)

Returns the path to the file at index `idx`.

* * *

[String](class_string.md#class-string) **get\_file\_script\_class\_extends**(idx: [int](class_int.md#class-int)) const [🔗](#class-editorfilesystemdirectory-method-get-file-script-class-extends)

Returns the base class of the script class defined in the file at index `idx`. If the file doesn't define a script class using the `class_name` syntax, this will return an empty string.

* * *

[String](class_string.md#class-string) **get\_file\_script\_class\_name**(idx: [int](class_int.md#class-int)) const [🔗](#class-editorfilesystemdirectory-method-get-file-script-class-name)

Returns the name of the script class defined in the file at index `idx`. If the file doesn't define a script class using the `class_name` syntax, this will return an empty string.

* * *

[StringName](class_stringname.md#class-stringname) **get\_file\_type**(idx: [int](class_int.md#class-int)) const [🔗](#class-editorfilesystemdirectory-method-get-file-type)

Returns the resource type of the file at index `idx`. This returns a string such as `"Resource"` or `"GDScript"`, _not_ a file extension such as `".gd"`.

* * *

[String](class_string.md#class-string) **get\_name**() [🔗](#class-editorfilesystemdirectory-method-get-name)

Returns the name of this directory.

* * *

[EditorFileSystemDirectory](#class-editorfilesystemdirectory) **get\_parent**() [🔗](#class-editorfilesystemdirectory-method-get-parent)

Returns the parent directory for this directory or `null` if called on a directory at `res://` or `user://`.

* * *

[String](class_string.md#class-string) **get\_path**() const [🔗](#class-editorfilesystemdirectory-method-get-path)

Returns the path to this directory.

* * *

[EditorFileSystemDirectory](#class-editorfilesystemdirectory) **get\_subdir**(idx: [int](class_int.md#class-int)) [🔗](#class-editorfilesystemdirectory-method-get-subdir)

Returns the subdirectory at index `idx`.

* * *

[int](class_int.md#class-int) **get\_subdir\_count**() const [🔗](#class-editorfilesystemdirectory-method-get-subdir-count)

Returns the number of subdirectories in this directory.

[Previous](class_editorfeatureprofile.md "EditorFeatureProfile") [Next](class_editorfilesystemimportformatsupportquery.md "EditorFileSystemImportFormatSupportQuery")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorfeatureprofile.md "EditorFeatureProfile") [Next](class_editorfilesystemimportformatsupportquery.md "EditorFileSystemImportFormatSupportQuery")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).