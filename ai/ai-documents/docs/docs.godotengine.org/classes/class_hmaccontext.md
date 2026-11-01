---
title: HMACContext — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_hmaccontext.html
crawled_at: "2026-08-13T10:38:37+12:00"
content_hash: fc47b80308d19ee68bf6fd7aa6cf74b56c01189378d91ed23a11096187c8cec8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - HMACContext

* * *

# HMACContext

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Used to create an HMAC for a message using a key.

## Description

The HMACContext class is useful for advanced HMAC use cases, such as streaming the message as it supports creating the message over time rather than providing it all at once.

GDScriptC#

```
extends Node
var ctx = HMACContext.new()

func _ready():
    var key = "supersecret".to_utf8_buffer()
    var err = ctx.start(HashingContext.HASH_SHA256, key)
    assert(err == OK)
    var msg1 = "this is ".to_utf8_buffer()
    var msg2 = "super duper secret".to_utf8_buffer()
    err = ctx.update(msg1)
    assert(err == OK)
    err = ctx.update(msg2)
    assert(err == OK)
    var hmac = ctx.finish()
    print(hmac.hex_encode())

```

```
using Godot;
using System.Diagnostics;

public partial class MyNode : Node
{
    private HmacContext _ctx = new HmacContext();

    public override void _Ready()
    {
        byte[] key = "supersecret".ToUtf8Buffer();
        Error err = _ctx.Start(HashingContext.HashType.Sha256, key);
        Debug.Assert(err == Error.Ok);
        byte[] msg1 = "this is ".ToUtf8Buffer();
        byte[] msg2 = "super duper secret".ToUtf8Buffer();
        err = _ctx.Update(msg1);
        Debug.Assert(err == Error.Ok);
        err = _ctx.Update(msg2);
        Debug.Assert(err == Error.Ok);
        byte[] hmac = _ctx.Finish();
        GD.Print(hmac.HexEncode());
    }
}

```

## Methods

|     |     |
| --- | --- |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [finish](#class-hmaccontext-method-finish)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [start](#class-hmaccontext-method-start)(hash\_type: [HashType](class_hashingcontext.md#enum-hashingcontext-hashtype), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [update](#class-hmaccontext-method-update)(data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |

* * *

## Method Descriptions

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **finish**() [🔗](#class-hmaccontext-method-finish)

Returns the resulting HMAC. If the HMAC failed, an empty [PackedByteArray](class_packedbytearray.md#class-packedbytearray) is returned.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **start**(hash\_type: [HashType](class_hashingcontext.md#enum-hashingcontext-hashtype), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-hmaccontext-method-start)

Initializes the HMACContext. This method cannot be called again on the same HMACContext until [finish()](#class-hmaccontext-method-finish) has been called.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **update**(data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-hmaccontext-method-update)

Updates the message to be HMACed. This can be called multiple times before [finish()](#class-hmaccontext-method-finish) is called to append `data` to the message, but cannot be called until [start()](#class-hmaccontext-method-start) has been called.

[Previous](class_hashingcontext.md "HashingContext") [Next](class_httpclient.md "HTTPClient")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_hashingcontext.md "HashingContext") [Next](class_httpclient.md "HTTPClient")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).