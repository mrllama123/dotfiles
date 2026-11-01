---
title: StreamPeerBuffer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_streampeerbuffer.html
crawled_at: "2026-08-13T10:20:53+12:00"
content_hash: a4fb39cdb0cc31320974d63bc549ff28c181c97ae945c3b7a17b6465fd74af6a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StreamPeerBuffer

* * *

# StreamPeerBuffer

**Inherits:** [StreamPeer](class_streampeer.md#class-streampeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A stream peer used to handle binary data streams.

## Description

A data buffer stream peer that uses a byte array as the stream. This object can be used to handle binary data from network sessions. To handle binary data stored in files, [FileAccess](class_fileaccess.md#class-fileaccess) can be used directly.

A **StreamPeerBuffer** object keeps an internal cursor which is the offset in bytes to the start of the buffer. Get and put operations are performed at the cursor position and will move the cursor accordingly.

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [data\_array](#class-streampeerbuffer-property-data-array) | `PackedByteArray()` |

## Methods

|     |     |
| --- | --- |
| void | [clear](#class-streampeerbuffer-method-clear)() |
| [StreamPeerBuffer](#class-streampeerbuffer) | [duplicate](#class-streampeerbuffer-method-duplicate)() const |
| [int](class_int.md#class-int) | [get\_position](#class-streampeerbuffer-method-get-position)() const |
| [int](class_int.md#class-int) | [get\_size](#class-streampeerbuffer-method-get-size)() const |
| void | [resize](#class-streampeerbuffer-method-resize)(size: [int](class_int.md#class-int)) |
| void | [seek](#class-streampeerbuffer-method-seek)(position: [int](class_int.md#class-int)) |

* * *

## Property Descriptions

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **data\_array** = `PackedByteArray()` [🔗](#class-streampeerbuffer-property-data-array)

- void **set\_data\_array**(value: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_data\_array**()


The underlying data buffer. Setting this value resets the cursor.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

## Method Descriptions

void **clear**() [🔗](#class-streampeerbuffer-method-clear)

Clears the [data\_array](#class-streampeerbuffer-property-data-array) and resets the cursor.

* * *

[StreamPeerBuffer](#class-streampeerbuffer) **duplicate**() const [🔗](#class-streampeerbuffer-method-duplicate)

Returns a new **StreamPeerBuffer** with the same [data\_array](#class-streampeerbuffer-property-data-array) content.

* * *

[int](class_int.md#class-int) **get\_position**() const [🔗](#class-streampeerbuffer-method-get-position)

Returns the current cursor position.

* * *

[int](class_int.md#class-int) **get\_size**() const [🔗](#class-streampeerbuffer-method-get-size)

Returns the size of [data\_array](#class-streampeerbuffer-property-data-array).

* * *

void **resize**(size: [int](class_int.md#class-int)) [🔗](#class-streampeerbuffer-method-resize)

Resizes the [data\_array](#class-streampeerbuffer-property-data-array). This _doesn't_ update the cursor.

* * *

void **seek**(position: [int](class_int.md#class-int)) [🔗](#class-streampeerbuffer-method-seek)

Moves the cursor to the specified position. `position` must be a valid index of [data\_array](#class-streampeerbuffer-property-data-array).

[Previous](class_streampeer.md "StreamPeer") [Next](class_streampeerextension.md "StreamPeerExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_streampeer.md "StreamPeer") [Next](class_streampeerextension.md "StreamPeerExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).