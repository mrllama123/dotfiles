---
title: PackedByteArray — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packedbytearray.html
crawled_at: "2026-08-13T10:21:49+12:00"
content_hash: c9ac93aaa7ecc0e558ed4b97d65cefd75cfb109ff565781dd1b8c31e87c637df
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PackedByteArray

* * *

# PackedByteArray

A packed array of bytes.

## Description

An array specifically designed to hold bytes. Packs data tightly, so it saves memory for large array sizes.

**PackedByteArray** also provides methods to encode/decode various types to/from bytes. The way values are encoded is an implementation detail and shouldn't be relied upon when interacting with external apps.

**Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use [duplicate()](#class-packedbytearray-method-duplicate). This is _not_ the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will _not_ affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Constructors

|     |     |
| --- | --- |
| [PackedByteArray](#class-packedbytearray) | [PackedByteArray](#class-packedbytearray-constructor-packedbytearray)() |
| [PackedByteArray](#class-packedbytearray) | [PackedByteArray](#class-packedbytearray-constructor-packedbytearray)(from: [PackedByteArray](#class-packedbytearray)) |
| [PackedByteArray](#class-packedbytearray) | [PackedByteArray](#class-packedbytearray-constructor-packedbytearray)(from: [Array](class_array.md#class-array)) |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [append](#class-packedbytearray-method-append)(value: [int](class_int.md#class-int)) |
| void | [append\_array](#class-packedbytearray-method-append-array)(array: [PackedByteArray](#class-packedbytearray)) |
| [int](class_int.md#class-int) | [bsearch](#class-packedbytearray-method-bsearch)(value: [int](class_int.md#class-int), before: [bool](class_bool.md#class-bool) = true) |
| void | [bswap16](#class-packedbytearray-method-bswap16)(offset: [int](class_int.md#class-int) = 0, count: [int](class_int.md#class-int) = -1) |
| void | [bswap32](#class-packedbytearray-method-bswap32)(offset: [int](class_int.md#class-int) = 0, count: [int](class_int.md#class-int) = -1) |
| void | [bswap64](#class-packedbytearray-method-bswap64)(offset: [int](class_int.md#class-int) = 0, count: [int](class_int.md#class-int) = -1) |
| void | [clear](#class-packedbytearray-method-clear)() |
| [PackedByteArray](#class-packedbytearray) | [compress](#class-packedbytearray-method-compress)(compression\_mode: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [count](#class-packedbytearray-method-count)(value: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [decode\_double](#class-packedbytearray-method-decode-double)(byte\_offset: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [decode\_float](#class-packedbytearray-method-decode-float)(byte\_offset: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [decode\_half](#class-packedbytearray-method-decode-half)(byte\_offset: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [decode\_s8](#class-packedbytearray-method-decode-s8)(byte\_offset: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [decode\_s16](#class-packedbytearray-method-decode-s16)(byte\_offset: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [decode\_s32](#class-packedbytearray-method-decode-s32)(byte\_offset: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [decode\_s64](#class-packedbytearray-method-decode-s64)(byte\_offset: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [decode\_u8](#class-packedbytearray-method-decode-u8)(byte\_offset: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [decode\_u16](#class-packedbytearray-method-decode-u16)(byte\_offset: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [decode\_u32](#class-packedbytearray-method-decode-u32)(byte\_offset: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [decode\_u64](#class-packedbytearray-method-decode-u64)(byte\_offset: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [decode\_var](#class-packedbytearray-method-decode-var)(byte\_offset: [int](class_int.md#class-int), allow\_objects: [bool](class_bool.md#class-bool) = false) const |
| [int](class_int.md#class-int) | [decode\_var\_size](#class-packedbytearray-method-decode-var-size)(byte\_offset: [int](class_int.md#class-int), allow\_objects: [bool](class_bool.md#class-bool) = false) const |
| [PackedByteArray](#class-packedbytearray) | [decompress](#class-packedbytearray-method-decompress)(buffer\_size: [int](class_int.md#class-int), compression\_mode: [int](class_int.md#class-int) = 0) const |
| [PackedByteArray](#class-packedbytearray) | [decompress\_dynamic](#class-packedbytearray-method-decompress-dynamic)(max\_output\_size: [int](class_int.md#class-int), compression\_mode: [int](class_int.md#class-int) = 0) const |
| [PackedByteArray](#class-packedbytearray) | [duplicate](#class-packedbytearray-method-duplicate)() |
| void | [encode\_double](#class-packedbytearray-method-encode-double)(byte\_offset: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) |
| void | [encode\_float](#class-packedbytearray-method-encode-float)(byte\_offset: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) |
| void | [encode\_half](#class-packedbytearray-method-encode-half)(byte\_offset: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) |
| void | [encode\_s8](#class-packedbytearray-method-encode-s8)(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) |
| void | [encode\_s16](#class-packedbytearray-method-encode-s16)(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) |
| void | [encode\_s32](#class-packedbytearray-method-encode-s32)(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) |
| void | [encode\_s64](#class-packedbytearray-method-encode-s64)(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) |
| void | [encode\_u8](#class-packedbytearray-method-encode-u8)(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) |
| void | [encode\_u16](#class-packedbytearray-method-encode-u16)(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) |
| void | [encode\_u32](#class-packedbytearray-method-encode-u32)(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) |
| void | [encode\_u64](#class-packedbytearray-method-encode-u64)(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [encode\_var](#class-packedbytearray-method-encode-var)(byte\_offset: [int](class_int.md#class-int), value: [Variant](class_variant.md#class-variant), allow\_objects: [bool](class_bool.md#class-bool) = false) |
| [bool](class_bool.md#class-bool) | [erase](#class-packedbytearray-method-erase)(value: [int](class_int.md#class-int)) |
| void | [fill](#class-packedbytearray-method-fill)(value: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [find](#class-packedbytearray-method-find)(value: [int](class_int.md#class-int), from: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [get](#class-packedbytearray-method-get)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_string\_from\_ascii](#class-packedbytearray-method-get-string-from-ascii)() const |
| [String](class_string.md#class-string) | [get\_string\_from\_multibyte\_char](#class-packedbytearray-method-get-string-from-multibyte-char)(encoding: [String](class_string.md#class-string) = "") const |
| [String](class_string.md#class-string) | [get\_string\_from\_utf8](#class-packedbytearray-method-get-string-from-utf8)() const |
| [String](class_string.md#class-string) | [get\_string\_from\_utf16](#class-packedbytearray-method-get-string-from-utf16)() const |
| [String](class_string.md#class-string) | [get\_string\_from\_utf32](#class-packedbytearray-method-get-string-from-utf32)() const |
| [String](class_string.md#class-string) | [get\_string\_from\_wchar](#class-packedbytearray-method-get-string-from-wchar)() const |
| [bool](class_bool.md#class-bool) | [has](#class-packedbytearray-method-has)(value: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_encoded\_var](#class-packedbytearray-method-has-encoded-var)(byte\_offset: [int](class_int.md#class-int), allow\_objects: [bool](class_bool.md#class-bool) = false) const |
| [String](class_string.md#class-string) | [hex\_encode](#class-packedbytearray-method-hex-encode)() const |
| [int](class_int.md#class-int) | [insert](#class-packedbytearray-method-insert)(at\_index: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-packedbytearray-method-is-empty)() const |
| [bool](class_bool.md#class-bool) | [push\_back](#class-packedbytearray-method-push-back)(value: [int](class_int.md#class-int)) |
| void | [remove\_at](#class-packedbytearray-method-remove-at)(index: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [resize](#class-packedbytearray-method-resize)(new\_size: [int](class_int.md#class-int)) |
| void | [reverse](#class-packedbytearray-method-reverse)() |
| [int](class_int.md#class-int) | [rfind](#class-packedbytearray-method-rfind)(value: [int](class_int.md#class-int), from: [int](class_int.md#class-int) = -1) const |
| void | [set](#class-packedbytearray-method-set)(index: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [size](#class-packedbytearray-method-size)() const |
| [PackedByteArray](#class-packedbytearray) | [slice](#class-packedbytearray-method-slice)(begin: [int](class_int.md#class-int), end: [int](class_int.md#class-int) = 2147483647) const |
| void | [sort](#class-packedbytearray-method-sort)() |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [to\_color\_array](#class-packedbytearray-method-to-color-array)() const |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [to\_float32\_array](#class-packedbytearray-method-to-float32-array)() const |
| [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) | [to\_float64\_array](#class-packedbytearray-method-to-float64-array)() const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [to\_int32\_array](#class-packedbytearray-method-to-int32-array)() const |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [to\_int64\_array](#class-packedbytearray-method-to-int64-array)() const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [to\_vector2\_array](#class-packedbytearray-method-to-vector2-array)() const |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [to\_vector3\_array](#class-packedbytearray-method-to-vector3-array)() const |
| [PackedVector4Array](class_packedvector4array.md#class-packedvector4array) | [to\_vector4\_array](#class-packedbytearray-method-to-vector4-array)() const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-packedbytearray-operator-neq-packedbytearray)(right: [PackedByteArray](#class-packedbytearray)) |
| [PackedByteArray](#class-packedbytearray) | [operator +](#class-packedbytearray-operator-sum-packedbytearray)(right: [PackedByteArray](#class-packedbytearray)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-packedbytearray-operator-eq-packedbytearray)(right: [PackedByteArray](#class-packedbytearray)) |
| [int](class_int.md#class-int) | [operator \[\]](#class-packedbytearray-operator-idx-int)(index: [int](class_int.md#class-int)) |

* * *

## Constructor Descriptions

[PackedByteArray](#class-packedbytearray) **PackedByteArray**() [🔗](#class-packedbytearray-constructor-packedbytearray)

Constructs an empty **PackedByteArray**.

* * *

[PackedByteArray](#class-packedbytearray) **PackedByteArray**(from: [PackedByteArray](#class-packedbytearray))

Constructs a **PackedByteArray** as a copy of the given **PackedByteArray**.

* * *

[PackedByteArray](#class-packedbytearray) **PackedByteArray**(from: [Array](class_array.md#class-array))

Constructs a new **PackedByteArray**. Optionally, you can pass in a generic [Array](class_array.md#class-array) that will be converted.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **append**(value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-append)

Appends an element at the end of the array (alias of [push\_back()](#class-packedbytearray-method-push-back)).

* * *

void **append\_array**(array: [PackedByteArray](#class-packedbytearray)) [🔗](#class-packedbytearray-method-append-array)

Appends a **PackedByteArray** at the end of this array.

* * *

[int](class_int.md#class-int) **bsearch**(value: [int](class_int.md#class-int), before: [bool](class_bool.md#class-bool) = true) [🔗](#class-packedbytearray-method-bsearch)

Finds the index of an existing value (or the insertion index that maintains sorting order, if the value is not yet present in the array) using binary search. Optionally, a `before` specifier can be passed. If `false`, the returned index comes after all existing entries of the value in the array.

**Note:** Calling [bsearch()](#class-packedbytearray-method-bsearch) on an unsorted array results in unexpected behavior.

* * *

void **bswap16**(offset: [int](class_int.md#class-int) = 0, count: [int](class_int.md#class-int) = -1) [🔗](#class-packedbytearray-method-bswap16)

Swaps the byte order of `count` 16-bit segments of the array starting at `offset`. Swap is done in-place. If `count` is less than zero, all segments to the end of array are processed, if processed data size is not a multiple of 2, the byte after the last processed 16-bit segment is not modified.

* * *

void **bswap32**(offset: [int](class_int.md#class-int) = 0, count: [int](class_int.md#class-int) = -1) [🔗](#class-packedbytearray-method-bswap32)

Swaps the byte order of `count` 32-bit segments of the array starting at `offset`. Swap is done in-place. If `count` is less than zero, all segments to the end of array are processed, if processed data size is not a multiple of 4, bytes after the last processed 32-bit segment are not modified.

* * *

void **bswap64**(offset: [int](class_int.md#class-int) = 0, count: [int](class_int.md#class-int) = -1) [🔗](#class-packedbytearray-method-bswap64)

Swaps the byte order of `count` 64-bit segments of the array starting at `offset`. Swap is done in-place. If `count` is less than zero, all segments to the end of array are processed, if processed data size is not a multiple of 8, bytes after the last processed 64-bit segment are not modified.

* * *

void **clear**() [🔗](#class-packedbytearray-method-clear)

Clears the array. This is equivalent to using [resize()](#class-packedbytearray-method-resize) with a size of `0`.

* * *

[PackedByteArray](#class-packedbytearray) **compress**(compression\_mode: [int](class_int.md#class-int) = 0) const [🔗](#class-packedbytearray-method-compress)

Returns a new **PackedByteArray** with the data compressed. Set the compression mode using one of [CompressionMode](class_fileaccess.md#enum-fileaccess-compressionmode)'s constants.

* * *

[int](class_int.md#class-int) **count**(value: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-count)

Returns the number of times an element is in the array.

* * *

[float](class_float.md#class-float) **decode\_double**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-double)

Decodes a 64-bit floating-point number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0.0` if a valid number can't be decoded.

* * *

[float](class_float.md#class-float) **decode\_float**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-float)

Decodes a 32-bit floating-point number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0.0` if a valid number can't be decoded.

* * *

[float](class_float.md#class-float) **decode\_half**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-half)

Decodes a 16-bit floating-point number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0.0` if a valid number can't be decoded.

* * *

[int](class_int.md#class-int) **decode\_s8**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-s8)

Decodes a 8-bit signed integer number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.

* * *

[int](class_int.md#class-int) **decode\_s16**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-s16)

Decodes a 16-bit signed integer number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.

* * *

[int](class_int.md#class-int) **decode\_s32**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-s32)

Decodes a 32-bit signed integer number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.

* * *

[int](class_int.md#class-int) **decode\_s64**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-s64)

Decodes a 64-bit signed integer number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.

* * *

[int](class_int.md#class-int) **decode\_u8**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-u8)

Decodes a 8-bit unsigned integer number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.

* * *

[int](class_int.md#class-int) **decode\_u16**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-u16)

Decodes a 16-bit unsigned integer number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.

* * *

[int](class_int.md#class-int) **decode\_u32**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-u32)

Decodes a 32-bit unsigned integer number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.

* * *

[int](class_int.md#class-int) **decode\_u64**(byte\_offset: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-decode-u64)

Decodes a 64-bit unsigned integer number from the bytes starting at `byte_offset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.

* * *

[Variant](class_variant.md#class-variant) **decode\_var**(byte\_offset: [int](class_int.md#class-int), allow\_objects: [bool](class_bool.md#class-bool) = false) const [🔗](#class-packedbytearray-method-decode-var)

Decodes a [Variant](class_variant.md#class-variant) from the bytes starting at `byte_offset`. Returns `null` if a valid variant can't be decoded or the value is [Object](class_object.md#class-object)-derived and `allow_objects` is `false`.

* * *

[int](class_int.md#class-int) **decode\_var\_size**(byte\_offset: [int](class_int.md#class-int), allow\_objects: [bool](class_bool.md#class-bool) = false) const [🔗](#class-packedbytearray-method-decode-var-size)

Decodes a size of a [Variant](class_variant.md#class-variant) from the bytes starting at `byte_offset`. Requires at least 4 bytes of data starting at the offset, otherwise fails.

* * *

[PackedByteArray](#class-packedbytearray) **decompress**(buffer\_size: [int](class_int.md#class-int), compression\_mode: [int](class_int.md#class-int) = 0) const [🔗](#class-packedbytearray-method-decompress)

Returns a new **PackedByteArray** with the data decompressed. Set `buffer_size` to the size of the uncompressed data. Set the compression mode using one of [CompressionMode](class_fileaccess.md#enum-fileaccess-compressionmode)'s constants.

**Note:** Decompression is not guaranteed to work with data not compressed by Godot, for example if data compressed with the deflate compression mode lacks a checksum or header.

* * *

[PackedByteArray](#class-packedbytearray) **decompress\_dynamic**(max\_output\_size: [int](class_int.md#class-int), compression\_mode: [int](class_int.md#class-int) = 0) const [🔗](#class-packedbytearray-method-decompress-dynamic)

Returns a new **PackedByteArray** with the data decompressed. Set the compression mode using one of [CompressionMode](class_fileaccess.md#enum-fileaccess-compressionmode)'s constants. **This method only accepts brotli, gzip, and deflate compression modes.**

This method is potentially slower than [decompress()](#class-packedbytearray-method-decompress), as it may have to re-allocate its output buffer multiple times while decompressing, whereas [decompress()](#class-packedbytearray-method-decompress) knows it's output buffer size from the beginning.

GZIP has a maximal compression ratio of 1032:1, meaning it's very possible for a small compressed payload to decompress to a potentially very large output. To guard against this, you may provide a maximum size this function is allowed to allocate in bytes via `max_output_size`. Passing -1 will allow for unbounded output. If any positive value is passed, and the decompression exceeds that amount in bytes, then an error will be returned.

**Note:** Decompression is not guaranteed to work with data not compressed by Godot, for example if data compressed with the deflate compression mode lacks a checksum or header.

* * *

[PackedByteArray](#class-packedbytearray) **duplicate**() [🔗](#class-packedbytearray-method-duplicate)

Creates a copy of the array, and returns it.

* * *

void **encode\_double**(byte\_offset: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) [🔗](#class-packedbytearray-method-encode-double)

Encodes a 64-bit floating-point number as bytes at the index of `byte_offset` bytes. The array must have at least 8 bytes of allocated space, starting at the offset.

* * *

void **encode\_float**(byte\_offset: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) [🔗](#class-packedbytearray-method-encode-float)

Encodes a 32-bit floating-point number as bytes at the index of `byte_offset` bytes. The array must have at least 4 bytes of space, starting at the offset.

* * *

void **encode\_half**(byte\_offset: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) [🔗](#class-packedbytearray-method-encode-half)

Encodes a 16-bit floating-point number as bytes at the index of `byte_offset` bytes. The array must have at least 2 bytes of space, starting at the offset.

* * *

void **encode\_s8**(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-encode-s8)

Encodes a 8-bit signed integer number (signed byte) at the index of `byte_offset` bytes. The array must have at least 1 byte of space, starting at the offset.

* * *

void **encode\_s16**(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-encode-s16)

Encodes a 16-bit signed integer number as bytes at the index of `byte_offset` bytes. The array must have at least 2 bytes of space, starting at the offset.

* * *

void **encode\_s32**(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-encode-s32)

Encodes a 32-bit signed integer number as bytes at the index of `byte_offset` bytes. The array must have at least 4 bytes of space, starting at the offset.

* * *

void **encode\_s64**(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-encode-s64)

Encodes a 64-bit signed integer number as bytes at the index of `byte_offset` bytes. The array must have at least 8 bytes of space, starting at the offset.

* * *

void **encode\_u8**(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-encode-u8)

Encodes a 8-bit unsigned integer number (byte) at the index of `byte_offset` bytes. The array must have at least 1 byte of space, starting at the offset.

* * *

void **encode\_u16**(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-encode-u16)

Encodes a 16-bit unsigned integer number as bytes at the index of `byte_offset` bytes. The array must have at least 2 bytes of space, starting at the offset.

* * *

void **encode\_u32**(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-encode-u32)

Encodes a 32-bit unsigned integer number as bytes at the index of `byte_offset` bytes. The array must have at least 4 bytes of space, starting at the offset.

* * *

void **encode\_u64**(byte\_offset: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-encode-u64)

Encodes a 64-bit unsigned integer number as bytes at the index of `byte_offset` bytes. The array must have at least 8 bytes of space, starting at the offset.

* * *

[int](class_int.md#class-int) **encode\_var**(byte\_offset: [int](class_int.md#class-int), value: [Variant](class_variant.md#class-variant), allow\_objects: [bool](class_bool.md#class-bool) = false) [🔗](#class-packedbytearray-method-encode-var)

Encodes a [Variant](class_variant.md#class-variant) at the index of `byte_offset` bytes. A sufficient space must be allocated, depending on the encoded variant's size. If `allow_objects` is `false`, [Object](class_object.md#class-object)-derived values are not permitted and will instead be serialized as ID-only.

* * *

[bool](class_bool.md#class-bool) **erase**(value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-erase)

Removes the first occurrence of a value from the array and returns `true`. If the value does not exist in the array, nothing happens and `false` is returned. To remove an element by index, use [remove\_at()](#class-packedbytearray-method-remove-at) instead.

* * *

void **fill**(value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-fill)

Assigns the given value to all elements in the array. This can typically be used together with [resize()](#class-packedbytearray-method-resize) to create an array with a given size and initialized elements.

* * *

[int](class_int.md#class-int) **find**(value: [int](class_int.md#class-int), from: [int](class_int.md#class-int) = 0) const [🔗](#class-packedbytearray-method-find)

Searches the array for a value and returns its index or `-1` if not found. Optionally, the initial search index can be passed.

* * *

[int](class_int.md#class-int) **get**(index: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-get)

Returns the byte at the given `index` in the array. If `index` out-of-bounds or negative, this method fails and returns `0`.

This method is similar (but not identical) to the `[]` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

* * *

[String](class_string.md#class-string) **get\_string\_from\_ascii**() const [🔗](#class-packedbytearray-method-get-string-from-ascii)

Converts ASCII/Latin-1 encoded array to [String](class_string.md#class-string). Fast alternative to [get\_string\_from\_utf8()](#class-packedbytearray-method-get-string-from-utf8) if the content is ASCII/Latin-1 only. Unlike the UTF-8 function this function maps every byte to a character in the array. Multibyte sequences will not be interpreted correctly. For parsing user input always use [get\_string\_from\_utf8()](#class-packedbytearray-method-get-string-from-utf8). This is the inverse of [String.to\_ascii\_buffer()](class_string.md#class-string-method-to-ascii-buffer).

* * *

[String](class_string.md#class-string) **get\_string\_from\_multibyte\_char**(encoding: [String](class_string.md#class-string) = "") const [🔗](#class-packedbytearray-method-get-string-from-multibyte-char)

Converts system multibyte code page encoded array to [String](class_string.md#class-string). If conversion fails, empty string is returned. This is the inverse of [String.to\_multibyte\_char\_buffer()](class_string.md#class-string-method-to-multibyte-char-buffer).

The values permitted for `encoding` are system dependent. If `encoding` is empty string, system default encoding is used.

- For Windows, see [Code Page Identifiers](https://learn.microsoft.com/en-us/windows/win32/Intl/code-page-identifiers) .NET names.

- For macOS and Linux/BSD, see `libiconv` library documentation and `iconv --list` for a list of supported encodings.


* * *

[String](class_string.md#class-string) **get\_string\_from\_utf8**() const [🔗](#class-packedbytearray-method-get-string-from-utf8)

Converts UTF-8 encoded array to [String](class_string.md#class-string). Slower than [get\_string\_from\_ascii()](#class-packedbytearray-method-get-string-from-ascii) but supports UTF-8 encoded data. Use this function if you are unsure about the source of the data. For user input this function should always be preferred. Returns empty string if source array is not valid UTF-8 string. This is the inverse of [String.to\_utf8\_buffer()](class_string.md#class-string-method-to-utf8-buffer).

* * *

[String](class_string.md#class-string) **get\_string\_from\_utf16**() const [🔗](#class-packedbytearray-method-get-string-from-utf16)

Converts UTF-16 encoded array to [String](class_string.md#class-string). If the BOM is missing, little-endianness is assumed. Returns empty string if source array is not valid UTF-16 string. This is the inverse of [String.to\_utf16\_buffer()](class_string.md#class-string-method-to-utf16-buffer).

* * *

[String](class_string.md#class-string) **get\_string\_from\_utf32**() const [🔗](#class-packedbytearray-method-get-string-from-utf32)

Converts UTF-32 encoded array to [String](class_string.md#class-string). Returns empty string if source array is not valid UTF-32 string. This is the inverse of [String.to\_utf32\_buffer()](class_string.md#class-string-method-to-utf32-buffer).

* * *

[String](class_string.md#class-string) **get\_string\_from\_wchar**() const [🔗](#class-packedbytearray-method-get-string-from-wchar)

Converts wide character ( `wchar_t`, UTF-16 on Windows, UTF-32 on other platforms) encoded array to [String](class_string.md#class-string). Returns empty string if source array is not valid wide string. This is the inverse of [String.to\_wchar\_buffer()](class_string.md#class-string-method-to-wchar-buffer).

* * *

[bool](class_bool.md#class-bool) **has**(value: [int](class_int.md#class-int)) const [🔗](#class-packedbytearray-method-has)

Returns `true` if the array contains `value`.

* * *

[bool](class_bool.md#class-bool) **has\_encoded\_var**(byte\_offset: [int](class_int.md#class-int), allow\_objects: [bool](class_bool.md#class-bool) = false) const [🔗](#class-packedbytearray-method-has-encoded-var)

Returns `true` if a valid [Variant](class_variant.md#class-variant) value can be decoded at the `byte_offset`. Returns `false` otherwise or when the value is [Object](class_object.md#class-object)-derived and `allow_objects` is `false`.

* * *

[String](class_string.md#class-string) **hex\_encode**() const [🔗](#class-packedbytearray-method-hex-encode)

Returns a hexadecimal representation of this array as a [String](class_string.md#class-string).

GDScriptC#

```
var array = PackedByteArray([11, 46, 255])
print(array.hex_encode()) # Prints "0b2eff"

```

```
byte[] array = [11, 46, 255];
GD.Print(array.HexEncode()); // Prints "0b2eff"

```

* * *

[int](class_int.md#class-int) **insert**(at\_index: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-insert)

Inserts a new element at a given position in the array. The position must be valid, or at the end of the array ( `idx == size()`).

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-packedbytearray-method-is-empty)

Returns `true` if the array is empty.

* * *

[bool](class_bool.md#class-bool) **push\_back**(value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-push-back)

Appends an element at the end of the array.

* * *

void **remove\_at**(index: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-remove-at)

Removes an element from the array by index.

* * *

[int](class_int.md#class-int) **resize**(new\_size: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-resize)

Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling [resize()](#class-packedbytearray-method-resize) once and assigning the new values is faster than adding new elements one by one.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the following [Error](class_@globalscope.md#enum-globalscope-error) constants if this method fails: [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) if the size is negative, or [@GlobalScope.ERR\_OUT\_OF\_MEMORY](class_@globalscope.md#class-globalscope-constant-err-out-of-memory) if allocations fail. Use [size()](#class-packedbytearray-method-size) to find the actual size of the array after resize.

* * *

void **reverse**() [🔗](#class-packedbytearray-method-reverse)

Reverses the order of the elements in the array.

* * *

[int](class_int.md#class-int) **rfind**(value: [int](class_int.md#class-int), from: [int](class_int.md#class-int) = -1) const [🔗](#class-packedbytearray-method-rfind)

Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.

* * *

void **set**(index: [int](class_int.md#class-int), value: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-method-set)

Changes the byte at the given index.

* * *

[int](class_int.md#class-int) **size**() const [🔗](#class-packedbytearray-method-size)

Returns the number of elements in the array.

* * *

[PackedByteArray](#class-packedbytearray) **slice**(begin: [int](class_int.md#class-int), end: [int](class_int.md#class-int) = 2147483647) const [🔗](#class-packedbytearray-method-slice)

Returns the slice of the **PackedByteArray**, from `begin` (inclusive) to `end` (exclusive), as a new **PackedByteArray**.

The absolute value of `begin` and `end` will be clamped to the array size, so the default value for `end` makes it slice to the size of the array by default (i.e. `arr.slice(1)` is a shorthand for `arr.slice(1, arr.size())`).

If either `begin` or `end` are negative, they will be relative to the end of the array (i.e. `arr.slice(0, -2)` is a shorthand for `arr.slice(0, arr.size() - 2)`).

* * *

void **sort**() [🔗](#class-packedbytearray-method-sort)

Sorts the elements of the array in ascending order.

* * *

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **to\_color\_array**() const [🔗](#class-packedbytearray-method-to-color-array)

Returns a copy of the data converted to a [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), where each block of 16 bytes has been converted to a [Color](class_color.md#class-color) variant.

**Note:** The size of the input array must be a multiple of 16 (size of four 32-bit float variables). The size of the new array will be `byte_array.size() / 16`. If the original data can't be converted to [Color](class_color.md#class-color) variants, the resulting data is undefined.

* * *

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **to\_float32\_array**() const [🔗](#class-packedbytearray-method-to-float32-array)

Returns a copy of the data converted to a [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), where each block of 4 bytes has been converted to a 32-bit float (C++ `float`).

The size of the input array must be a multiple of 4 (size of 32-bit float). The size of the new array will be `byte_array.size() / 4`.

If the original data can't be converted to 32-bit floats, the resulting data is undefined.

* * *

[PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) **to\_float64\_array**() const [🔗](#class-packedbytearray-method-to-float64-array)

Returns a copy of the data converted to a [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array), where each block of 8 bytes has been converted to a 64-bit float (C++ `double`, Godot [float](class_float.md#class-float)).

The size of the input array must be a multiple of 8 (size of 64-bit double). The size of the new array will be `byte_array.size() / 8`.

If the original data can't be converted to 64-bit floats, the resulting data is undefined.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **to\_int32\_array**() const [🔗](#class-packedbytearray-method-to-int32-array)

Returns a copy of the data converted to a [PackedInt32Array](class_packedint32array.md#class-packedint32array), where each block of 4 bytes has been converted to a signed 32-bit integer (C++ `int32_t`).

The size of the input array must be a multiple of 4 (size of 32-bit integer). The size of the new array will be `byte_array.size() / 4`.

If the original data can't be converted to signed 32-bit integers, the resulting data is undefined.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **to\_int64\_array**() const [🔗](#class-packedbytearray-method-to-int64-array)

Returns a copy of the data converted to a [PackedInt64Array](class_packedint64array.md#class-packedint64array), where each block of 8 bytes has been converted to a signed 64-bit integer (C++ `int64_t`, Godot [int](class_int.md#class-int)).

The size of the input array must be a multiple of 8 (size of 64-bit integer). The size of the new array will be `byte_array.size() / 8`.

If the original data can't be converted to signed 64-bit integers, the resulting data is undefined.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **to\_vector2\_array**() const [🔗](#class-packedbytearray-method-to-vector2-array)

Returns a copy of the data converted to a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), where each block of 8 bytes or 16 bytes (32-bit or 64-bit) has been converted to a [Vector2](class_vector2.md#class-vector2) variant.

**Note:** The size of the input array must be a multiple of 8 or 16 (depending on the build settings, see [Vector2](class_vector2.md#class-vector2) for more details). The size of the new array will be `byte_array.size() / (8 or 16)`. If the original data can't be converted to [Vector2](class_vector2.md#class-vector2) variants, the resulting data is undefined.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **to\_vector3\_array**() const [🔗](#class-packedbytearray-method-to-vector3-array)

Returns a copy of the data converted to a [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), where each block of 12 or 24 bytes (32-bit or 64-bit) has been converted to a [Vector3](class_vector3.md#class-vector3) variant.

**Note:** The size of the input array must be a multiple of 12 or 24 (depending on the build settings, see [Vector3](class_vector3.md#class-vector3) for more details). The size of the new array will be `byte_array.size() / (12 or 24)`. If the original data can't be converted to [Vector3](class_vector3.md#class-vector3) variants, the resulting data is undefined.

* * *

[PackedVector4Array](class_packedvector4array.md#class-packedvector4array) **to\_vector4\_array**() const [🔗](#class-packedbytearray-method-to-vector4-array)

Returns a copy of the data converted to a [PackedVector4Array](class_packedvector4array.md#class-packedvector4array), where each block of 16 or 32 bytes (32-bit or 64-bit) has been converted to a [Vector4](class_vector4.md#class-vector4) variant.

**Note:** The size of the input array must be a multiple of 16 or 32 (depending on the build settings, see [Vector4](class_vector4.md#class-vector4) for more details). The size of the new array will be `byte_array.size() / (16 or 32)`. If the original data can't be converted to [Vector4](class_vector4.md#class-vector4) variants, the resulting data is undefined.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [PackedByteArray](#class-packedbytearray)) [🔗](#class-packedbytearray-operator-neq-packedbytearray)

Returns `true` if contents of the arrays differ.

* * *

[PackedByteArray](#class-packedbytearray) **operator +**(right: [PackedByteArray](#class-packedbytearray)) [🔗](#class-packedbytearray-operator-sum-packedbytearray)

Returns a new **PackedByteArray** with contents of `right` added at the end of this array. For better performance, consider using [append\_array()](#class-packedbytearray-method-append-array) instead.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [PackedByteArray](#class-packedbytearray)) [🔗](#class-packedbytearray-operator-eq-packedbytearray)

Returns `true` if contents of both arrays are the same, i.e. they have all equal bytes at the corresponding indices.

* * *

[int](class_int.md#class-int) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-packedbytearray-operator-idx-int)

Returns the byte at index `index`. Negative indices can be used to access the elements starting from the end. Using index out of array's bounds will result in an error.

Note that the byte is returned as a 64-bit [int](class_int.md#class-int).

[Previous](class_nodepath.md "NodePath") [Next](class_packedcolorarray.md "PackedColorArray")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_nodepath.md "NodePath") [Next](class_packedcolorarray.md "PackedColorArray")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).