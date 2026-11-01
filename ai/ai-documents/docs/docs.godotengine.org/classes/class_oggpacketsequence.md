---
title: OggPacketSequence — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_oggpacketsequence.html
crawled_at: "2026-08-13T10:24:31+12:00"
content_hash: 1b22ba446da7a2c2fa92c865e9a382f7d285c3bc0b59727e4309dc401b8dfd99
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OggPacketSequence

* * *

# OggPacketSequence

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A sequence of Ogg packets.

## Description

A sequence of Ogg packets.

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [granule\_positions](#class-oggpacketsequence-property-granule-positions) | `PackedInt64Array()` |
| [Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] | [packet\_data](#class-oggpacketsequence-property-packet-data) | `[]` |
| [float](class_float.md#class-float) | [sampling\_rate](#class-oggpacketsequence-property-sampling-rate) | `0.0` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_length](#class-oggpacketsequence-method-get-length)() const |

* * *

## Property Descriptions

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **granule\_positions** = `PackedInt64Array()` [🔗](#class-oggpacketsequence-property-granule-positions)

- void **set\_packet\_granule\_positions**(value: [PackedInt64Array](class_packedint64array.md#class-packedint64array))

- [PackedInt64Array](class_packedint64array.md#class-packedint64array) **get\_packet\_granule\_positions**()


Contains the granule positions for each page in this packet sequence.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt64Array](class_packedint64array.md#class-packedint64array) for more details.

* * *

[Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] **packet\_data** = `[]` [🔗](#class-oggpacketsequence-property-packet-data)

- void **set\_packet\_data**(value: [Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\])

- [Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] **get\_packet\_data**()


Contains the raw packets that make up this OggPacketSequence.

* * *

[float](class_float.md#class-float) **sampling\_rate** = `0.0` [🔗](#class-oggpacketsequence-property-sampling-rate)

- void **set\_sampling\_rate**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sampling\_rate**()


Holds sample rate information about this sequence. Must be set by another class that actually understands the codec.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_length**() const [🔗](#class-oggpacketsequence-method-get-length)

The length of this stream, in seconds.

[Previous](class_occluderpolygon2d.md "OccluderPolygon2D") [Next](class_openxraction.md "OpenXRAction")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_occluderpolygon2d.md "OccluderPolygon2D") [Next](class_openxraction.md "OpenXRAction")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).