---
title: Marshalls — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_marshalls.html
crawled_at: "2026-08-13T10:40:21+12:00"
content_hash: b0cfdb14c7fbda7627ad1e8f184e1a3233164b12906a1b154a59ddc589ba7c11
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Marshalls

* * *

# Marshalls

**Inherits:** [Object](class_object.md#class-object)

Data transformation (marshaling) and encoding helpers.

## Description

Provides data transformation and encoding utility functions.

## Methods

|     |     |
| --- | --- |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [base64\_to\_raw](#class-marshalls-method-base64-to-raw)(base64\_str: [String](class_string.md#class-string)) |
| [String](class_string.md#class-string) | [base64\_to\_utf8](#class-marshalls-method-base64-to-utf8)(base64\_str: [String](class_string.md#class-string)) |
| [Variant](class_variant.md#class-variant) | [base64\_to\_variant](#class-marshalls-method-base64-to-variant)(base64\_str: [String](class_string.md#class-string), allow\_objects: [bool](class_bool.md#class-bool) = false) |
| [String](class_string.md#class-string) | [raw\_to\_base64](#class-marshalls-method-raw-to-base64)(array: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [String](class_string.md#class-string) | [utf8\_to\_base64](#class-marshalls-method-utf8-to-base64)(utf8\_str: [String](class_string.md#class-string)) |
| [String](class_string.md#class-string) | [variant\_to\_base64](#class-marshalls-method-variant-to-base64)(variant: [Variant](class_variant.md#class-variant), full\_objects: [bool](class_bool.md#class-bool) = false) |

* * *

## Method Descriptions

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **base64\_to\_raw**(base64\_str: [String](class_string.md#class-string)) [🔗](#class-marshalls-method-base64-to-raw)

Returns a decoded [PackedByteArray](class_packedbytearray.md#class-packedbytearray) corresponding to the Base64-encoded string `base64_str`.

* * *

[String](class_string.md#class-string) **base64\_to\_utf8**(base64\_str: [String](class_string.md#class-string)) [🔗](#class-marshalls-method-base64-to-utf8)

Returns a decoded string corresponding to the Base64-encoded string `base64_str`.

* * *

[Variant](class_variant.md#class-variant) **base64\_to\_variant**(base64\_str: [String](class_string.md#class-string), allow\_objects: [bool](class_bool.md#class-bool) = false) [🔗](#class-marshalls-method-base64-to-variant)

Returns a decoded [Variant](class_variant.md#class-variant) corresponding to the Base64-encoded string `base64_str`. If `allow_objects` is `true`, decoding objects is allowed.

Internally, this uses the same decoding mechanism as the [@GlobalScope.bytes\_to\_var()](class_@globalscope.md#class-globalscope-method-bytes-to-var) method.

**Warning:** Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.

* * *

[String](class_string.md#class-string) **raw\_to\_base64**(array: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-marshalls-method-raw-to-base64)

Returns a Base64-encoded string of a given [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

* * *

[String](class_string.md#class-string) **utf8\_to\_base64**(utf8\_str: [String](class_string.md#class-string)) [🔗](#class-marshalls-method-utf8-to-base64)

Returns a Base64-encoded string of the UTF-8 string `utf8_str`.

* * *

[String](class_string.md#class-string) **variant\_to\_base64**(variant: [Variant](class_variant.md#class-variant), full\_objects: [bool](class_bool.md#class-bool) = false) [🔗](#class-marshalls-method-variant-to-base64)

Returns a Base64-encoded string of the [Variant](class_variant.md#class-variant) `variant`. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code).

Internally, this uses the same encoding mechanism as the [@GlobalScope.var\_to\_bytes()](class_@globalscope.md#class-globalscope-method-var-to-bytes) method.

[Previous](class_mainloop.md "MainLoop") [Next](class_meshconvexdecompositionsettings.md "MeshConvexDecompositionSettings")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_mainloop.md "MainLoop") [Next](class_meshconvexdecompositionsettings.md "MeshConvexDecompositionSettings")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).