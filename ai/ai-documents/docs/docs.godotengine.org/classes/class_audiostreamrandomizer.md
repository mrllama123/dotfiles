---
title: AudioStreamRandomizer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamrandomizer.html
crawled_at: "2026-08-13T10:21:11+12:00"
content_hash: 9fe5eba041b7edecafe969e623ac0455e75f01edf977b1f7054b3b41edba3e0e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamRandomizer

* * *

# AudioStreamRandomizer

**Inherits:** [AudioStream](class_audiostream.md#class-audiostream) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Wraps a pool of audio streams with pitch and volume shifting.

## Description

Picks a random AudioStream from the pool, depending on the playback mode, and applies random pitch shifting and volume shifting during playback.

## Properties

|     |     |     |
| --- | --- | --- |
| [PlaybackMode](#enum-audiostreamrandomizer-playbackmode) | [playback\_mode](#class-audiostreamrandomizer-property-playback-mode) | `0` |
| [float](class_float.md#class-float) | [random\_pitch](#class-audiostreamrandomizer-property-random-pitch) | `1.0` |
| [float](class_float.md#class-float) | [random\_volume\_offset\_db](#class-audiostreamrandomizer-property-random-volume-offset-db) | `0.0` |
| [int](class_int.md#class-int) | [streams\_count](#class-audiostreamrandomizer-property-streams-count) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_stream](#class-audiostreamrandomizer-method-add-stream)(index: [int](class_int.md#class-int), stream: [AudioStream](class_audiostream.md#class-audiostream), weight: [float](class_float.md#class-float) = 1.0) |
| [AudioStream](class_audiostream.md#class-audiostream) | [get\_stream](#class-audiostreamrandomizer-method-get-stream)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_stream\_probability\_weight](#class-audiostreamrandomizer-method-get-stream-probability-weight)(index: [int](class_int.md#class-int)) const |
| void | [move\_stream](#class-audiostreamrandomizer-method-move-stream)(index\_from: [int](class_int.md#class-int), index\_to: [int](class_int.md#class-int)) |
| void | [remove\_stream](#class-audiostreamrandomizer-method-remove-stream)(index: [int](class_int.md#class-int)) |
| void | [set\_stream](#class-audiostreamrandomizer-method-set-stream)(index: [int](class_int.md#class-int), stream: [AudioStream](class_audiostream.md#class-audiostream)) |
| void | [set\_stream\_probability\_weight](#class-audiostreamrandomizer-method-set-stream-probability-weight)(index: [int](class_int.md#class-int), weight: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **PlaybackMode**: [🔗](#enum-audiostreamrandomizer-playbackmode)

[PlaybackMode](#enum-audiostreamrandomizer-playbackmode) **PLAYBACK\_RANDOM\_NO\_REPEATS** = `0`

Pick a stream at random according to the probability weights chosen for each stream, but avoid playing the same stream twice in a row whenever possible. If only 1 sound is present in the pool, the same sound will always play, effectively allowing repeats to occur.

[PlaybackMode](#enum-audiostreamrandomizer-playbackmode) **PLAYBACK\_RANDOM** = `1`

Pick a stream at random according to the probability weights chosen for each stream. If only 1 sound is present in the pool, the same sound will always play.

[PlaybackMode](#enum-audiostreamrandomizer-playbackmode) **PLAYBACK\_SEQUENTIAL** = `2`

Play streams in the order they appear in the stream pool. If only 1 sound is present in the pool, the same sound will always play.

* * *

## Property Descriptions

[PlaybackMode](#enum-audiostreamrandomizer-playbackmode) **playback\_mode** = `0` [🔗](#class-audiostreamrandomizer-property-playback-mode)

- void **set\_playback\_mode**(value: [PlaybackMode](#enum-audiostreamrandomizer-playbackmode))

- [PlaybackMode](#enum-audiostreamrandomizer-playbackmode) **get\_playback\_mode**()


Controls how this AudioStreamRandomizer picks which AudioStream to play next.

* * *

[float](class_float.md#class-float) **random\_pitch** = `1.0` [🔗](#class-audiostreamrandomizer-property-random-pitch)

- void **set\_random\_pitch**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_random\_pitch**()


The intensity of random pitch variation. A value of 1 means no variation.

* * *

[float](class_float.md#class-float) **random\_volume\_offset\_db** = `0.0` [🔗](#class-audiostreamrandomizer-property-random-volume-offset-db)

- void **set\_random\_volume\_offset\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_random\_volume\_offset\_db**()


The intensity of random volume variation. A value of 0 means no variation.

* * *

[int](class_int.md#class-int) **streams\_count** = `0` [🔗](#class-audiostreamrandomizer-property-streams-count)

- void **set\_streams\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_streams\_count**()


The number of streams in the stream pool.

* * *

## Method Descriptions

void **add\_stream**(index: [int](class_int.md#class-int), stream: [AudioStream](class_audiostream.md#class-audiostream), weight: [float](class_float.md#class-float) = 1.0) [🔗](#class-audiostreamrandomizer-method-add-stream)

Insert a stream at the specified index. If the index is less than zero, the insertion occurs at the end of the underlying pool.

* * *

[AudioStream](class_audiostream.md#class-audiostream) **get\_stream**(index: [int](class_int.md#class-int)) const [🔗](#class-audiostreamrandomizer-method-get-stream)

Returns the stream at the specified index.

* * *

[float](class_float.md#class-float) **get\_stream\_probability\_weight**(index: [int](class_int.md#class-int)) const [🔗](#class-audiostreamrandomizer-method-get-stream-probability-weight)

Returns the probability weight associated with the stream at the given index.

* * *

void **move\_stream**(index\_from: [int](class_int.md#class-int), index\_to: [int](class_int.md#class-int)) [🔗](#class-audiostreamrandomizer-method-move-stream)

Move a stream from one index to another.

* * *

void **remove\_stream**(index: [int](class_int.md#class-int)) [🔗](#class-audiostreamrandomizer-method-remove-stream)

Remove the stream at the specified index.

* * *

void **set\_stream**(index: [int](class_int.md#class-int), stream: [AudioStream](class_audiostream.md#class-audiostream)) [🔗](#class-audiostreamrandomizer-method-set-stream)

Set the AudioStream at the specified index.

* * *

void **set\_stream\_probability\_weight**(index: [int](class_int.md#class-int), weight: [float](class_float.md#class-float)) [🔗](#class-audiostreamrandomizer-method-set-stream-probability-weight)

Set the probability weight of the stream at the specified index. The higher this value, the more likely that the randomizer will choose this stream during random playback modes.

[Previous](class_audiostreampolyphonic.md "AudioStreamPolyphonic") [Next](class_audiostreamsynchronized.md "AudioStreamSynchronized")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreampolyphonic.md "AudioStreamPolyphonic") [Next](class_audiostreamsynchronized.md "AudioStreamSynchronized")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).