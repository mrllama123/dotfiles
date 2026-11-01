---
title: StreamPeerGZIP — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_streampeergzip.html
crawled_at: "2026-08-13T10:19:29+12:00"
content_hash: 63d7fd0e691dff005b2f727b1115cea43649e78f5ae6f9a5d413ba7e56a63d9a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StreamPeerGZIP

* * *

# StreamPeerGZIP

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [StreamPeer](class_streampeer.md#class-streampeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A stream peer that handles GZIP and deflate compression/decompression.

## Description

This class allows to compress or decompress data using GZIP/deflate in a streaming fashion. This is particularly useful when compressing or decompressing files that have to be sent through the network without needing to allocate them all in memory.

After starting the stream via [start\_compression()](#class-streampeergzip-method-start-compression) (or [start\_decompression()](#class-streampeergzip-method-start-decompression)), calling [StreamPeer.put\_partial\_data()](class_streampeer.md#class-streampeer-method-put-partial-data) on this stream will compress (or decompress) the data, writing it to the internal buffer. Calling [StreamPeer.get\_available\_bytes()](class_streampeer.md#class-streampeer-method-get-available-bytes) will return the pending bytes in the internal buffer, and [StreamPeer.get\_partial\_data()](class_streampeer.md#class-streampeer-method-get-partial-data) will retrieve the compressed (or decompressed) bytes from it. When the stream is over, you must call [finish()](#class-streampeergzip-method-finish) to ensure the internal buffer is properly flushed (make sure to call [StreamPeer.get\_available\_bytes()](class_streampeer.md#class-streampeer-method-get-available-bytes) on last time to check if more data needs to be read after that).

## Methods

|     |     |
| --- | --- |
| void | [clear](#class-streampeergzip-method-clear)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [finish](#class-streampeergzip-method-finish)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [start\_compression](#class-streampeergzip-method-start-compression)(use\_deflate: [bool](class_bool.md#class-bool) = false, buffer\_size: [int](class_int.md#class-int) = 65535) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [start\_decompression](#class-streampeergzip-method-start-decompression)(use\_deflate: [bool](class_bool.md#class-bool) = false, buffer\_size: [int](class_int.md#class-int) = 65535) |

* * *

## Method Descriptions

void **clear**() [🔗](#class-streampeergzip-method-clear)

Clears this stream, resetting the internal state.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **finish**() [🔗](#class-streampeergzip-method-finish)

Finalizes the stream, compressing any buffered chunk left.

You must call it only when you are compressing.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **start\_compression**(use\_deflate: [bool](class_bool.md#class-bool) = false, buffer\_size: [int](class_int.md#class-int) = 65535) [🔗](#class-streampeergzip-method-start-compression)

Start the stream in compression mode with the given `buffer_size`, if `use_deflate` is `true` uses deflate instead of GZIP.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **start\_decompression**(use\_deflate: [bool](class_bool.md#class-bool) = false, buffer\_size: [int](class_int.md#class-int) = 65535) [🔗](#class-streampeergzip-method-start-decompression)

Start the stream in decompression mode with the given `buffer_size`, if `use_deflate` is `true` uses deflate instead of GZIP.

[Previous](class_streampeerextension.md "StreamPeerExtension") [Next](class_streampeertcp.md "StreamPeerTCP")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_streampeerextension.md "StreamPeerExtension") [Next](class_streampeertcp.md "StreamPeerTCP")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).