---
title: ZIPPacker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_zippacker.html
crawled_at: "2026-08-13T10:27:17+12:00"
content_hash: e11237444d371a17b53232efe828bcb8a303262137f29df15996c9ec78a9fbfb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ZIPPacker

* * *

# ZIPPacker

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Allows the creation of ZIP files.

## Description

This class implements a writer that allows storing the multiple blobs in a ZIP archive. See also [ZIPReader](class_zipreader.md#class-zipreader) and [PCKPacker](class_pckpacker.md#class-pckpacker).

```
# Create a ZIP archive with a single file at its root.
func write_zip_file():
    var writer = ZIPPacker.new()
    var err = writer.open("user://archive.zip")
    if err != OK:
        return err
    writer.start_file("hello.txt")
    writer.write_file("Hello World".to_utf8_buffer())
    writer.close_file()

    writer.close()
    return OK

```

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [compression\_level](#class-zippacker-property-compression-level) | `-1` |

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [close](#class-zippacker-method-close)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [close\_file](#class-zippacker-method-close-file)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [open](#class-zippacker-method-open)(path: [String](class_string.md#class-string), append: [ZipAppend](#enum-zippacker-zipappend) = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [start\_file](#class-zippacker-method-start-file)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [write\_file](#class-zippacker-method-write-file)(data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |

* * *

## Enumerations

enum **ZipAppend**: [🔗](#enum-zippacker-zipappend)

[ZipAppend](#enum-zippacker-zipappend) **APPEND\_CREATE** = `0`

Create a new zip archive at the given path.

[ZipAppend](#enum-zippacker-zipappend) **APPEND\_CREATEAFTER** = `1`

Append a new zip archive to the end of the already existing file at the given path.

[ZipAppend](#enum-zippacker-zipappend) **APPEND\_ADDINZIP** = `2`

Add new files to the existing zip archive at the given path.

* * *

enum **CompressionLevel**: [🔗](#enum-zippacker-compressionlevel)

[CompressionLevel](#enum-zippacker-compressionlevel) **COMPRESSION\_DEFAULT** = `-1`

Start a file with the default Deflate compression level ( `6`). This is a good compromise between speed and file size.

[CompressionLevel](#enum-zippacker-compressionlevel) **COMPRESSION\_NONE** = `0`

Start a file with no compression. This is also known as the "Store" compression mode and is the fastest method of packing files inside a ZIP archive. Consider using this mode for files that are already compressed (such as JPEG, PNG, MP3, or Ogg Vorbis files).

[CompressionLevel](#enum-zippacker-compressionlevel) **COMPRESSION\_FAST** = `1`

Start a file with the fastest Deflate compression level ( `1`). This is fast to compress, but results in larger file sizes than [COMPRESSION\_DEFAULT](#class-zippacker-constant-compression-default). Decompression speed is generally unaffected by the chosen compression level.

[CompressionLevel](#enum-zippacker-compressionlevel) **COMPRESSION\_BEST** = `9`

Start a file with the best Deflate compression level ( `9`). This is slow to compress, but results in smaller file sizes than [COMPRESSION\_DEFAULT](#class-zippacker-constant-compression-default). Decompression speed is generally unaffected by the chosen compression level.

* * *

## Property Descriptions

[int](class_int.md#class-int) **compression\_level** = `-1` [🔗](#class-zippacker-property-compression-level)

- void **set\_compression\_level**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_compression\_level**()


The compression level used when [start\_file()](#class-zippacker-method-start-file) is called. Use [CompressionLevel](#enum-zippacker-compressionlevel) as a reference.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **close**() [🔗](#class-zippacker-method-close)

Closes the underlying resources used by this instance.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **close\_file**() [🔗](#class-zippacker-method-close-file)

Stops writing to a file within the archive.

It will fail if there is no open file.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **open**(path: [String](class_string.md#class-string), append: [ZipAppend](#enum-zippacker-zipappend) = 0) [🔗](#class-zippacker-method-open)

Opens a zip file for writing at the given path using the specified write mode.

This must be called before everything else.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **start\_file**(path: [String](class_string.md#class-string)) [🔗](#class-zippacker-method-start-file)

Starts writing to a file within the archive. Only one file can be written at the same time.

Must be called after [open()](#class-zippacker-method-open).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **write\_file**(data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-zippacker-method-write-file)

Write the given `data` to the file.

Needs to be called after [start\_file()](#class-zippacker-method-start-file).

[Previous](class_xrvrs.md "XRVRS") [Next](class_zipreader.md "ZIPReader")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrvrs.md "XRVRS") [Next](class_zipreader.md "ZIPReader")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).