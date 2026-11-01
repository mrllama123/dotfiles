---
title: StreamPeer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_streampeer.html
crawled_at: "2026-08-13T10:20:21+12:00"
content_hash: 0fadb49d8aba65763749301f67642f3603d48913b4f2adf0e437fdd14d770ea2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StreamPeer

* * *

# StreamPeer

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [StreamPeerBuffer](class_streampeerbuffer.md#class-streampeerbuffer), [StreamPeerExtension](class_streampeerextension.md#class-streampeerextension), [StreamPeerGZIP](class_streampeergzip.md#class-streampeergzip), [StreamPeerTCP](class_streampeertcp.md#class-streampeertcp), [StreamPeerTLS](class_streampeertls.md#class-streampeertls)

Abstract base class for interacting with streams.

## Description

StreamPeer is an abstract base class mostly used for stream-based protocols (such as TCP). It provides an API for sending and receiving data through streams as raw data or strings.

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [big\_endian](#class-streampeer-property-big-endian) | `false` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_8](#class-streampeer-method-get-8)() |
| [int](class_int.md#class-int) | [get\_16](#class-streampeer-method-get-16)() |
| [int](class_int.md#class-int) | [get\_32](#class-streampeer-method-get-32)() |
| [int](class_int.md#class-int) | [get\_64](#class-streampeer-method-get-64)() |
| [int](class_int.md#class-int) | [get\_available\_bytes](#class-streampeer-method-get-available-bytes)() const |
| [Array](class_array.md#class-array) | [get\_data](#class-streampeer-method-get-data)(bytes: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [get\_double](#class-streampeer-method-get-double)() |
| [float](class_float.md#class-float) | [get\_float](#class-streampeer-method-get-float)() |
| [float](class_float.md#class-float) | [get\_half](#class-streampeer-method-get-half)() |
| [Array](class_array.md#class-array) | [get\_partial\_data](#class-streampeer-method-get-partial-data)(bytes: [int](class_int.md#class-int)) |
| [String](class_string.md#class-string) | [get\_string](#class-streampeer-method-get-string)(bytes: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [get\_u8](#class-streampeer-method-get-u8)() |
| [int](class_int.md#class-int) | [get\_u16](#class-streampeer-method-get-u16)() |
| [int](class_int.md#class-int) | [get\_u32](#class-streampeer-method-get-u32)() |
| [int](class_int.md#class-int) | [get\_u64](#class-streampeer-method-get-u64)() |
| [String](class_string.md#class-string) | [get\_utf8\_string](#class-streampeer-method-get-utf8-string)(bytes: [int](class_int.md#class-int) = -1) |
| [Variant](class_variant.md#class-variant) | [get\_var](#class-streampeer-method-get-var)(allow\_objects: [bool](class_bool.md#class-bool) = false) |
| void | [put\_8](#class-streampeer-method-put-8)(value: [int](class_int.md#class-int)) |
| void | [put\_16](#class-streampeer-method-put-16)(value: [int](class_int.md#class-int)) |
| void | [put\_32](#class-streampeer-method-put-32)(value: [int](class_int.md#class-int)) |
| void | [put\_64](#class-streampeer-method-put-64)(value: [int](class_int.md#class-int)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [put\_data](#class-streampeer-method-put-data)(data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [put\_double](#class-streampeer-method-put-double)(value: [float](class_float.md#class-float)) |
| void | [put\_float](#class-streampeer-method-put-float)(value: [float](class_float.md#class-float)) |
| void | [put\_half](#class-streampeer-method-put-half)(value: [float](class_float.md#class-float)) |
| [Array](class_array.md#class-array) | [put\_partial\_data](#class-streampeer-method-put-partial-data)(data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [put\_string](#class-streampeer-method-put-string)(value: [String](class_string.md#class-string)) |
| void | [put\_u8](#class-streampeer-method-put-u8)(value: [int](class_int.md#class-int)) |
| void | [put\_u16](#class-streampeer-method-put-u16)(value: [int](class_int.md#class-int)) |
| void | [put\_u32](#class-streampeer-method-put-u32)(value: [int](class_int.md#class-int)) |
| void | [put\_u64](#class-streampeer-method-put-u64)(value: [int](class_int.md#class-int)) |
| void | [put\_utf8\_string](#class-streampeer-method-put-utf8-string)(value: [String](class_string.md#class-string)) |
| void | [put\_var](#class-streampeer-method-put-var)(value: [Variant](class_variant.md#class-variant), full\_objects: [bool](class_bool.md#class-bool) = false) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **big\_endian** = `false` [🔗](#class-streampeer-property-big-endian)

- void **set\_big\_endian**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_big\_endian\_enabled**()


If `true`, this **StreamPeer** will using big-endian format for encoding and decoding.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_8**() [🔗](#class-streampeer-method-get-8)

Gets a signed byte from the stream.

* * *

[int](class_int.md#class-int) **get\_16**() [🔗](#class-streampeer-method-get-16)

Gets a signed 16-bit value from the stream.

* * *

[int](class_int.md#class-int) **get\_32**() [🔗](#class-streampeer-method-get-32)

Gets a signed 32-bit value from the stream.

* * *

[int](class_int.md#class-int) **get\_64**() [🔗](#class-streampeer-method-get-64)

Gets a signed 64-bit value from the stream.

* * *

[int](class_int.md#class-int) **get\_available\_bytes**() const [🔗](#class-streampeer-method-get-available-bytes)

Returns the number of bytes this **StreamPeer** has available.

* * *

[Array](class_array.md#class-array) **get\_data**(bytes: [int](class_int.md#class-int)) [🔗](#class-streampeer-method-get-data)

Returns a chunk data with the received bytes. The number of bytes to be received can be requested in the `bytes` argument. If not enough bytes are available, the function will block until the desired amount is received. This function returns two values, an [Error](class_@globalscope.md#enum-globalscope-error) code and a data array.

* * *

[float](class_float.md#class-float) **get\_double**() [🔗](#class-streampeer-method-get-double)

Gets a double-precision float from the stream.

* * *

[float](class_float.md#class-float) **get\_float**() [🔗](#class-streampeer-method-get-float)

Gets a single-precision float from the stream.

* * *

[float](class_float.md#class-float) **get\_half**() [🔗](#class-streampeer-method-get-half)

Gets a half-precision float from the stream.

* * *

[Array](class_array.md#class-array) **get\_partial\_data**(bytes: [int](class_int.md#class-int)) [🔗](#class-streampeer-method-get-partial-data)

Returns a chunk data with the received bytes. The number of bytes to be received can be requested in the `bytes` argument. If not enough bytes are available, the function will return how many were actually received. This function returns two values: an [Error](class_@globalscope.md#enum-globalscope-error) code and a data array.

* * *

[String](class_string.md#class-string) **get\_string**(bytes: [int](class_int.md#class-int) = -1) [🔗](#class-streampeer-method-get-string)

Gets an ASCII string with byte-length `bytes` from the stream. If `bytes` is negative (default) the length will be read from the stream using the reverse process of [put\_string()](#class-streampeer-method-put-string).

* * *

[int](class_int.md#class-int) **get\_u8**() [🔗](#class-streampeer-method-get-u8)

Gets an unsigned byte from the stream.

* * *

[int](class_int.md#class-int) **get\_u16**() [🔗](#class-streampeer-method-get-u16)

Gets an unsigned 16-bit value from the stream.

* * *

[int](class_int.md#class-int) **get\_u32**() [🔗](#class-streampeer-method-get-u32)

Gets an unsigned 32-bit value from the stream.

* * *

[int](class_int.md#class-int) **get\_u64**() [🔗](#class-streampeer-method-get-u64)

Gets an unsigned 64-bit value from the stream.

* * *

[String](class_string.md#class-string) **get\_utf8\_string**(bytes: [int](class_int.md#class-int) = -1) [🔗](#class-streampeer-method-get-utf8-string)

Gets a UTF-8 string with byte-length `bytes` from the stream (this decodes the string sent as UTF-8). If `bytes` is negative (default) the length will be read from the stream using the reverse process of [put\_utf8\_string()](#class-streampeer-method-put-utf8-string).

* * *

[Variant](class_variant.md#class-variant) **get\_var**(allow\_objects: [bool](class_bool.md#class-bool) = false) [🔗](#class-streampeer-method-get-var)

Gets a Variant from the stream. If `allow_objects` is `true`, decoding objects is allowed.

Internally, this uses the same decoding mechanism as the [@GlobalScope.bytes\_to\_var()](class_@globalscope.md#class-globalscope-method-bytes-to-var) method.

**Warning:** Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.

* * *

void **put\_8**(value: [int](class_int.md#class-int)) [🔗](#class-streampeer-method-put-8)

Puts a signed byte into the stream.

* * *

void **put\_16**(value: [int](class_int.md#class-int)) [🔗](#class-streampeer-method-put-16)

Puts a signed 16-bit value into the stream.

* * *

void **put\_32**(value: [int](class_int.md#class-int)) [🔗](#class-streampeer-method-put-32)

Puts a signed 32-bit value into the stream.

* * *

void **put\_64**(value: [int](class_int.md#class-int)) [🔗](#class-streampeer-method-put-64)

Puts a signed 64-bit value into the stream.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **put\_data**(data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-streampeer-method-put-data)

Sends a chunk of data through the connection, blocking if necessary until the data is done sending. This function returns an [Error](class_@globalscope.md#enum-globalscope-error) code.

* * *

void **put\_double**(value: [float](class_float.md#class-float)) [🔗](#class-streampeer-method-put-double)

Puts a double-precision float into the stream.

* * *

void **put\_float**(value: [float](class_float.md#class-float)) [🔗](#class-streampeer-method-put-float)

Puts a single-precision float into the stream.

* * *

void **put\_half**(value: [float](class_float.md#class-float)) [🔗](#class-streampeer-method-put-half)

Puts a half-precision float into the stream.

* * *

[Array](class_array.md#class-array) **put\_partial\_data**(data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-streampeer-method-put-partial-data)

Sends a chunk of data through the connection. If all the data could not be sent at once, only part of it will. This function returns two values, an [Error](class_@globalscope.md#enum-globalscope-error) code and an integer, describing how much data was actually sent.

* * *

void **put\_string**(value: [String](class_string.md#class-string)) [🔗](#class-streampeer-method-put-string)

Puts a zero-terminated ASCII string into the stream prepended by a 32-bit unsigned integer representing its size.

**Note:** To put an ASCII string without prepending its size, you can use [put\_data()](#class-streampeer-method-put-data):

GDScriptC#

```
put_data("Hello world".to_ascii_buffer())

```

```
PutData("Hello World".ToAsciiBuffer());

```

* * *

void **put\_u8**(value: [int](class_int.md#class-int)) [🔗](#class-streampeer-method-put-u8)

Puts an unsigned byte into the stream.

* * *

void **put\_u16**(value: [int](class_int.md#class-int)) [🔗](#class-streampeer-method-put-u16)

Puts an unsigned 16-bit value into the stream.

* * *

void **put\_u32**(value: [int](class_int.md#class-int)) [🔗](#class-streampeer-method-put-u32)

Puts an unsigned 32-bit value into the stream.

* * *

void **put\_u64**(value: [int](class_int.md#class-int)) [🔗](#class-streampeer-method-put-u64)

Puts an unsigned 64-bit value into the stream.

* * *

void **put\_utf8\_string**(value: [String](class_string.md#class-string)) [🔗](#class-streampeer-method-put-utf8-string)

Puts a zero-terminated UTF-8 string into the stream prepended by a 32 bits unsigned integer representing its size.

**Note:** To put a UTF-8 string without prepending its size, you can use [put\_data()](#class-streampeer-method-put-data):

GDScriptC#

```
put_data("Hello world".to_utf8_buffer())

```

```
PutData("Hello World".ToUtf8Buffer());

```

* * *

void **put\_var**(value: [Variant](class_variant.md#class-variant), full\_objects: [bool](class_bool.md#class-bool) = false) [🔗](#class-streampeer-method-put-var)

Puts a Variant into the stream. If `full_objects` is `true` encoding objects is allowed (and can potentially include code).

Internally, this uses the same encoding mechanism as the [@GlobalScope.var\_to\_bytes()](class_@globalscope.md#class-globalscope-method-var-to-bytes) method.

[Previous](class_skinreference.md "SkinReference") [Next](class_streampeerbuffer.md "StreamPeerBuffer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skinreference.md "SkinReference") [Next](class_streampeerbuffer.md "StreamPeerBuffer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).