---
title: HashingContext — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_hashingcontext.html
crawled_at: "2026-08-13T10:41:04+12:00"
content_hash: b00993430715f6f03a34b5954c28b51ac1788e74370db1ac9462d888b2044a51
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - HashingContext

* * *

# HashingContext

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides functionality for computing cryptographic hashes chunk by chunk.

## Description

The HashingContext class provides an interface for computing cryptographic hashes over multiple iterations. Useful for computing hashes of big files (so you don't have to load them all in memory), network streams, and data streams in general (so you don't have to hold buffers).

The [HashType](#enum-hashingcontext-hashtype) enum shows the supported hashing algorithms.

GDScriptC#

```
const CHUNK_SIZE = 1024

func hash_file(path):
    # Check that file exists.
    if not FileAccess.file_exists(path):
        return
    # Start an SHA-256 context.
    var ctx = HashingContext.new()
    ctx.start(HashingContext.HASH_SHA256)
    # Open the file to hash.
    var file = FileAccess.open(path, FileAccess.READ)
    # Update the context after reading each chunk.
    while file.get_position() < file.get_length():
        var remaining = file.get_length() - file.get_position()
        ctx.update(file.get_buffer(min(remaining, CHUNK_SIZE)))
    # Get the computed hash.
    var res = ctx.finish()
    # Print the result as hex string and array.
    printt(res.hex_encode(), Array(res))

```

```
public const int ChunkSize = 1024;

public void HashFile(string path)
{
    // Check that file exists.
    if (!FileAccess.FileExists(path))
    {
        return;
    }
    // Start an SHA-256 context.
    var ctx = new HashingContext();
    ctx.Start(HashingContext.HashType.Sha256);
    // Open the file to hash.
    using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
    // Update the context after reading each chunk.
    while (file.GetPosition() < file.GetLength())
    {
        int remaining = (int)(file.GetLength() - file.GetPosition());
        ctx.Update(file.GetBuffer(Mathf.Min(remaining, ChunkSize)));
    }
    // Get the computed hash.
    byte[] res = ctx.Finish();
    // Print the result as hex string and array.
    GD.PrintT(res.HexEncode(), (Variant)res);
}

```

## Methods

|     |     |
| --- | --- |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [finish](#class-hashingcontext-method-finish)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [start](#class-hashingcontext-method-start)(type: [HashType](#enum-hashingcontext-hashtype)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [update](#class-hashingcontext-method-update)(chunk: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |

* * *

## Enumerations

enum **HashType**: [🔗](#enum-hashingcontext-hashtype)

[HashType](#enum-hashingcontext-hashtype) **HASH\_MD5** = `0`

Hashing algorithm: MD5.

[HashType](#enum-hashingcontext-hashtype) **HASH\_SHA1** = `1`

Hashing algorithm: SHA-1.

[HashType](#enum-hashingcontext-hashtype) **HASH\_SHA256** = `2`

Hashing algorithm: SHA-256.

* * *

## Method Descriptions

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **finish**() [🔗](#class-hashingcontext-method-finish)

Closes the current context, and return the computed hash.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **start**(type: [HashType](#enum-hashingcontext-hashtype)) [🔗](#class-hashingcontext-method-start)

Starts a new hash computation of the given `type` (e.g. [HASH\_SHA256](#class-hashingcontext-constant-hash-sha256) to start computation of an SHA-256).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **update**(chunk: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-hashingcontext-method-update)

Updates the computation with the given `chunk` of data.

[Previous](class_gltfobjectmodelproperty.md "GLTFObjectModelProperty") [Next](class_hmaccontext.md "HMACContext")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfobjectmodelproperty.md "GLTFObjectModelProperty") [Next](class_hmaccontext.md "HMACContext")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).