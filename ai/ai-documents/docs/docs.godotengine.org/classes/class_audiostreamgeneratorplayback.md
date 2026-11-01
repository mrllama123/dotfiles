---
title: AudioStreamGeneratorPlayback — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamgeneratorplayback.html
crawled_at: "2026-08-13T10:29:08+12:00"
content_hash: 40fc78c826eaea0e17336f7d9a6e9b53918294280a0cde54cc59cf57eafb87e6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamGeneratorPlayback

* * *

# AudioStreamGeneratorPlayback

**Inherits:** [AudioStreamPlaybackResampled](class_audiostreamplaybackresampled.md#class-audiostreamplaybackresampled) **<** [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Plays back audio generated using [AudioStreamGenerator](class_audiostreamgenerator.md#class-audiostreamgenerator).

## Description

This class is meant to be used with [AudioStreamGenerator](class_audiostreamgenerator.md#class-audiostreamgenerator) to play back the generated audio in real-time.

## Tutorials

- [Audio Generator Demo](https://godotengine.org/asset-library/asset/2759)

- [Godot 3.2 will get new audio features](https://godotengine.org/article/godot-32-will-get-new-audio-features)


## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [can\_push\_buffer](#class-audiostreamgeneratorplayback-method-can-push-buffer)(amount: [int](class_int.md#class-int)) const |
| void | [clear\_buffer](#class-audiostreamgeneratorplayback-method-clear-buffer)() |
| [int](class_int.md#class-int) | [get\_frames\_available](#class-audiostreamgeneratorplayback-method-get-frames-available)() const |
| [int](class_int.md#class-int) | [get\_skips](#class-audiostreamgeneratorplayback-method-get-skips)() const |
| [bool](class_bool.md#class-bool) | [push\_buffer](#class-audiostreamgeneratorplayback-method-push-buffer)(frames: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [bool](class_bool.md#class-bool) | [push\_frame](#class-audiostreamgeneratorplayback-method-push-frame)(frame: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **can\_push\_buffer**(amount: [int](class_int.md#class-int)) const [🔗](#class-audiostreamgeneratorplayback-method-can-push-buffer)

Returns `true` if a buffer of the size `amount` can be pushed to the audio sample data buffer without overflowing it, `false` otherwise.

* * *

void **clear\_buffer**() [🔗](#class-audiostreamgeneratorplayback-method-clear-buffer)

Clears the audio sample data buffer.

* * *

[int](class_int.md#class-int) **get\_frames\_available**() const [🔗](#class-audiostreamgeneratorplayback-method-get-frames-available)

Returns the number of frames that can be pushed to the audio sample data buffer without overflowing it. If the result is `0`, the buffer is full.

* * *

[int](class_int.md#class-int) **get\_skips**() const [🔗](#class-audiostreamgeneratorplayback-method-get-skips)

Returns the number of times the playback skipped due to a buffer underrun in the audio sample data. This value is reset at the start of the playback.

* * *

[bool](class_bool.md#class-bool) **push\_buffer**(frames: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-audiostreamgeneratorplayback-method-push-buffer)

Pushes several audio data frames to the buffer. This is usually more efficient than [push\_frame()](#class-audiostreamgeneratorplayback-method-push-frame) in C# and compiled languages via GDExtension, but [push\_buffer()](#class-audiostreamgeneratorplayback-method-push-buffer) may be _less_ efficient in GDScript.

* * *

[bool](class_bool.md#class-bool) **push\_frame**(frame: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-audiostreamgeneratorplayback-method-push-frame)

Pushes a single audio data frame to the buffer. This is usually less efficient than [push\_buffer()](#class-audiostreamgeneratorplayback-method-push-buffer) in C# and compiled languages via GDExtension, but [push\_frame()](#class-audiostreamgeneratorplayback-method-push-frame) may be _more_ efficient in GDScript.

[Previous](class_audioserver.md "AudioServer") [Next](class_audiostreamplayback.md "AudioStreamPlayback")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioserver.md "AudioServer") [Next](class_audiostreamplayback.md "AudioStreamPlayback")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).