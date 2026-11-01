---
title: AudioStreamSynchronized — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamsynchronized.html
crawled_at: "2026-08-13T10:28:03+12:00"
content_hash: 2bc2d4a49a1ba6d3f1337fb513749eec92cf71f9bdbccbd6cef189dd78da33a7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamSynchronized

* * *

# AudioStreamSynchronized

**Inherits:** [AudioStream](class_audiostream.md#class-audiostream) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Stream that can be fitted with sub-streams, which will be played in-sync.

## Description

This is a stream that can be fitted with sub-streams, which will be played in-sync. The streams begin at exactly the same time when play is pressed, and will end when the last of them ends. If one of the sub-streams loops, then playback will continue.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [stream\_count](#class-audiostreamsynchronized-property-stream-count) | `0` |

## Methods

|     |     |
| --- | --- |
| [AudioStream](class_audiostream.md#class-audiostream) | [get\_sync\_stream](#class-audiostreamsynchronized-method-get-sync-stream)(stream\_index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_sync\_stream\_volume](#class-audiostreamsynchronized-method-get-sync-stream-volume)(stream\_index: [int](class_int.md#class-int)) const |
| void | [set\_sync\_stream](#class-audiostreamsynchronized-method-set-sync-stream)(stream\_index: [int](class_int.md#class-int), audio\_stream: [AudioStream](class_audiostream.md#class-audiostream)) |
| void | [set\_sync\_stream\_volume](#class-audiostreamsynchronized-method-set-sync-stream-volume)(stream\_index: [int](class_int.md#class-int), volume\_db: [float](class_float.md#class-float)) |

* * *

## Constants

**MAX\_STREAMS** = `32` [🔗](#class-audiostreamsynchronized-constant-max-streams)

Maximum amount of streams that can be synchronized.

* * *

## Property Descriptions

[int](class_int.md#class-int) **stream\_count** = `0` [🔗](#class-audiostreamsynchronized-property-stream-count)

- void **set\_stream\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stream\_count**()


Set the total amount of streams that will be played back synchronized.

* * *

## Method Descriptions

[AudioStream](class_audiostream.md#class-audiostream) **get\_sync\_stream**(stream\_index: [int](class_int.md#class-int)) const [🔗](#class-audiostreamsynchronized-method-get-sync-stream)

Get one of the synchronized streams, by index.

* * *

[float](class_float.md#class-float) **get\_sync\_stream\_volume**(stream\_index: [int](class_int.md#class-int)) const [🔗](#class-audiostreamsynchronized-method-get-sync-stream-volume)

Get the volume of one of the synchronized streams, by index.

* * *

void **set\_sync\_stream**(stream\_index: [int](class_int.md#class-int), audio\_stream: [AudioStream](class_audiostream.md#class-audiostream)) [🔗](#class-audiostreamsynchronized-method-set-sync-stream)

Set one of the synchronized streams, by index.

* * *

void **set\_sync\_stream\_volume**(stream\_index: [int](class_int.md#class-int), volume\_db: [float](class_float.md#class-float)) [🔗](#class-audiostreamsynchronized-method-set-sync-stream-volume)

Set the volume of one of the synchronized streams, by index.

[Previous](class_audiostreamrandomizer.md "AudioStreamRandomizer") [Next](class_audiostreamwav.md "AudioStreamWAV")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamrandomizer.md "AudioStreamRandomizer") [Next](class_audiostreamwav.md "AudioStreamWAV")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).