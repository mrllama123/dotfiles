---
title: AESContext — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_aescontext.html
crawled_at: "2026-08-13T10:24:25+12:00"
content_hash: 0af8a5ff8811b276bef295550e29e4418e568bb5cf0551d54577c5ef0a271957
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AESContext

* * *

# AESContext

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides access to AES encryption/decryption of raw data.

## Description

This class holds the context information required for encryption and decryption operations with AES (Advanced Encryption Standard). Both AES-ECB and AES-CBC modes are supported.

GDScriptC#

```
extends Node

var aes = AESContext.new()

func _ready():
    var key = "My secret key!!!" # Key must be either 16 or 32 bytes.
    var data = "My secret text!!" # Data size must be multiple of 16 bytes, apply padding if needed.
    # Encrypt ECB
    aes.start(AESContext.MODE_ECB_ENCRYPT, key.to_utf8_buffer())
    var encrypted = aes.update(data.to_utf8_buffer())
    aes.finish()
    # Decrypt ECB
    aes.start(AESContext.MODE_ECB_DECRYPT, key.to_utf8_buffer())
    var decrypted = aes.update(encrypted)
    aes.finish()
    # Check ECB
    assert(decrypted == data.to_utf8_buffer())

    var iv = "My secret iv!!!!" # IV must be of exactly 16 bytes.
    # Encrypt CBC
    aes.start(AESContext.MODE_CBC_ENCRYPT, key.to_utf8_buffer(), iv.to_utf8_buffer())
    encrypted = aes.update(data.to_utf8_buffer())
    aes.finish()
    # Decrypt CBC
    aes.start(AESContext.MODE_CBC_DECRYPT, key.to_utf8_buffer(), iv.to_utf8_buffer())
    decrypted = aes.update(encrypted)
    aes.finish()
    # Check CBC
    assert(decrypted == data.to_utf8_buffer())

```

```
using Godot;
using System.Diagnostics;

public partial class MyNode : Node
{
    private AesContext _aes = new AesContext();

    public override void _Ready()
    {
        string key = "My secret key!!!"; // Key must be either 16 or 32 bytes.
        string data = "My secret text!!"; // Data size must be multiple of 16 bytes, apply padding if needed.
        // Encrypt ECB
        _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8Buffer());
        byte[] encrypted = _aes.Update(data.ToUtf8Buffer());
        _aes.Finish();
        // Decrypt ECB
        _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8Buffer());
        byte[] decrypted = _aes.Update(encrypted);
        _aes.Finish();
        // Check ECB
        Debug.Assert(decrypted == data.ToUtf8Buffer());

        string iv = "My secret iv!!!!"; // IV must be of exactly 16 bytes.
        // Encrypt CBC
        _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8Buffer(), iv.ToUtf8Buffer());
        encrypted = _aes.Update(data.ToUtf8Buffer());
        _aes.Finish();
        // Decrypt CBC
        _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8Buffer(), iv.ToUtf8Buffer());
        decrypted = _aes.Update(encrypted);
        _aes.Finish();
        // Check CBC
        Debug.Assert(decrypted == data.ToUtf8Buffer());
    }
}

```

## Methods

|     |     |
| --- | --- |
| void | [finish](#class-aescontext-method-finish)() |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [get\_iv\_state](#class-aescontext-method-get-iv-state)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [start](#class-aescontext-method-start)(mode: [Mode](#enum-aescontext-mode), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), iv: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray()) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [update](#class-aescontext-method-update)(src: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |

* * *

## Enumerations

enum **Mode**: [🔗](#enum-aescontext-mode)

[Mode](#enum-aescontext-mode) **MODE\_ECB\_ENCRYPT** = `0`

AES electronic codebook encryption mode.

[Mode](#enum-aescontext-mode) **MODE\_ECB\_DECRYPT** = `1`

AES electronic codebook decryption mode.

[Mode](#enum-aescontext-mode) **MODE\_CBC\_ENCRYPT** = `2`

AES cipher blocker chaining encryption mode.

[Mode](#enum-aescontext-mode) **MODE\_CBC\_DECRYPT** = `3`

AES cipher blocker chaining decryption mode.

[Mode](#enum-aescontext-mode) **MODE\_MAX** = `4`

Maximum value for the mode enum.

* * *

## Method Descriptions

void **finish**() [🔗](#class-aescontext-method-finish)

Close this AES context so it can be started again. See [start()](#class-aescontext-method-start).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_iv\_state**() [🔗](#class-aescontext-method-get-iv-state)

Get the current IV state for this context (IV gets updated when calling [update()](#class-aescontext-method-update)). You normally don't need this function.

**Note:** This function only makes sense when the context is started with [MODE\_CBC\_ENCRYPT](#class-aescontext-constant-mode-cbc-encrypt) or [MODE\_CBC\_DECRYPT](#class-aescontext-constant-mode-cbc-decrypt).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **start**(mode: [Mode](#enum-aescontext-mode), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), iv: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray()) [🔗](#class-aescontext-method-start)

Start the AES context in the given `mode`. A `key` of either 16 or 32 bytes must always be provided, while an `iv` (initialization vector) of exactly 16 bytes, is only needed when `mode` is either [MODE\_CBC\_ENCRYPT](#class-aescontext-constant-mode-cbc-encrypt) or [MODE\_CBC\_DECRYPT](#class-aescontext-constant-mode-cbc-decrypt).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **update**(src: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-aescontext-method-update)

Run the desired operation for this AES context. Will return a [PackedByteArray](class_packedbytearray.md#class-packedbytearray) containing the result of encrypting (or decrypting) the given `src`. See [start()](#class-aescontext-method-start) for mode of operation.

**Note:** The size of `src` must be a multiple of 16. Apply some padding if needed.

[Previous](class_object.md "Object") [Next](class_astar2d.md "AStar2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_object.md "Object") [Next](class_astar2d.md "AStar2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).