---
title: ZIPReader — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_zipreader.html
crawled_at: "2026-08-13T10:22:29+12:00"
content_hash: 19219fb4f6f00b87ac23f0d2871537d27ee63bdc3879b80fe3b7d5e097314081
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ZIPReader

* * *

# ZIPReader

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Allows reading the content of a ZIP file.

## Description

This class implements a reader that can extract the content of individual files inside a ZIP archive. See also [ZIPPacker](class_zippacker.md#class-zippacker).

```
# Read a single file from a ZIP archive.
func read_zip_file():
    var reader = ZIPReader.new()
    var err = reader.open("user://archive.zip")
    if err != OK:
        return PackedByteArray()
    var res = reader.read_file("hello.txt")
    reader.close()
    return res

# Extract all files from a ZIP archive, preserving the directories within.
# This acts like the "Extract all" functionality from most archive managers.
func extract_all_from_zip():
    var reader = ZIPReader.new()
    reader.open("res://archive.zip")

    # Destination directory for the extracted files (this folder must exist before extraction).
    # Not all ZIP archives put everything in a single root folder,
    # which means several files/folders may be created in `root_dir` after extraction.
    var root_dir = DirAccess.open("user://")

    var files = reader.get_files()
    for file_path in files:
        # If the current entry is a directory.
        if file_path.ends_with("/"):
            root_dir.make_dir_recursive(file_path)
            continue

        # Write file contents, creating folders automatically when needed.
        # Not all ZIP archives are strictly ordered, so we need to do this in case
        # the file entry comes before the folder entry.
        root_dir.make_dir_recursive(root_dir.get_current_dir().path_join(file_path).get_base_dir())
        var file = FileAccess.open(root_dir.get_current_dir().path_join(file_path), FileAccess.WRITE)
        var buffer = reader.read_file(file_path)
        file.store_buffer(buffer)

```

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [close](#class-zipreader-method-close)() |
| [bool](class_bool.md#class-bool) | [file\_exists](#class-zipreader-method-file-exists)(path: [String](class_string.md#class-string), case\_sensitive: [bool](class_bool.md#class-bool) = true) |
| [int](class_int.md#class-int) | [get\_compression\_level](#class-zipreader-method-get-compression-level)(path: [String](class_string.md#class-string), case\_sensitive: [bool](class_bool.md#class-bool) = true) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_files](#class-zipreader-method-get-files)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [open](#class-zipreader-method-open)(path: [String](class_string.md#class-string)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [read\_file](#class-zipreader-method-read-file)(path: [String](class_string.md#class-string), case\_sensitive: [bool](class_bool.md#class-bool) = true) |

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **close**() [🔗](#class-zipreader-method-close)

Closes the underlying resources used by this instance.

* * *

[bool](class_bool.md#class-bool) **file\_exists**(path: [String](class_string.md#class-string), case\_sensitive: [bool](class_bool.md#class-bool) = true) [🔗](#class-zipreader-method-file-exists)

Returns `true` if the file exists in the loaded zip archive.

Must be called after [open()](#class-zipreader-method-open).

* * *

[int](class_int.md#class-int) **get\_compression\_level**(path: [String](class_string.md#class-string), case\_sensitive: [bool](class_bool.md#class-bool) = true) [🔗](#class-zipreader-method-get-compression-level)

Returns the compression level of the file in the loaded zip archive. Returns `-1` if the file doesn't exist or any other error occurs. Must be called after [open()](#class-zipreader-method-open).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_files**() [🔗](#class-zipreader-method-get-files)

Returns the list of names of all files in the loaded archive.

Must be called after [open()](#class-zipreader-method-open).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **open**(path: [String](class_string.md#class-string)) [🔗](#class-zipreader-method-open)

Opens the zip archive at the given `path` and reads its file index.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **read\_file**(path: [String](class_string.md#class-string), case\_sensitive: [bool](class_bool.md#class-bool) = true) [🔗](#class-zipreader-method-read-file)

Loads the whole content of a file in the loaded zip archive into memory and returns it.

Must be called after [open()](#class-zipreader-method-open).

[Previous](class_zippacker.md "ZIPPacker") [Next](class_variant.md "Variant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_zippacker.md "ZIPPacker") [Next](class_variant.md "Variant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).