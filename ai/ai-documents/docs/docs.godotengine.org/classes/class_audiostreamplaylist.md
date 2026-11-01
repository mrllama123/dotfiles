---
title: AudioStreamPlaylist — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamplaylist.html
crawled_at: "2026-08-13T10:24:12+12:00"
content_hash: 82eb6c2760bcbe841b3cbff05e4565afa59e1f91c40c53e13f6d2d5c8cd96056
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamPlaylist

* * *

# AudioStreamPlaylist

**Inherits:** [AudioStream](class_audiostream.md#class-audiostream) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

[AudioStream](class_audiostream.md#class-audiostream) that includes sub-streams and plays them back like a playlist.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [fade\_time](#class-audiostreamplaylist-property-fade-time) | `0.3` |
| [bool](class_bool.md#class-bool) | [loop](#class-audiostreamplaylist-property-loop) | `true` |
| [bool](class_bool.md#class-bool) | [shuffle](#class-audiostreamplaylist-property-shuffle) | `false` |
| [int](class_int.md#class-int) | [stream\_count](#class-audiostreamplaylist-property-stream-count) | `0` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_bpm](#class-audiostreamplaylist-method-get-bpm)() const |
| [AudioStream](class_audiostream.md#class-audiostream) | [get\_list\_stream](#class-audiostreamplaylist-method-get-list-stream)(stream\_index: [int](class_int.md#class-int)) const |
| void | [set\_list\_stream](#class-audiostreamplaylist-method-set-list-stream)(stream\_index: [int](class_int.md#class-int), audio\_stream: [AudioStream](class_audiostream.md#class-audiostream)) |

* * *

## Constants

**MAX\_STREAMS** = `64` [🔗](#class-audiostreamplaylist-constant-max-streams)

Maximum amount of streams supported in the playlist.

* * *

## Property Descriptions

[float](class_float.md#class-float) **fade\_time** = `0.3` [🔗](#class-audiostreamplaylist-property-fade-time)

- void **set\_fade\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fade\_time**()


Fade time used when a stream ends, when going to the next one. Streams are expected to have an extra bit of audio after the end to help with fading.

* * *

[bool](class_bool.md#class-bool) **loop** = `true` [🔗](#class-audiostreamplaylist-property-loop)

- void **set\_loop**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_loop**()


If `true`, the playlist will loop, otherwise the playlist will end when the last stream is finished.

* * *

[bool](class_bool.md#class-bool) **shuffle** = `false` [🔗](#class-audiostreamplaylist-property-shuffle)

- void **set\_shuffle**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_shuffle**()


If `true`, the playlist will shuffle each time playback starts and each time it loops.

* * *

[int](class_int.md#class-int) **stream\_count** = `0` [🔗](#class-audiostreamplaylist-property-stream-count)

- void **set\_stream\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stream\_count**()


Amount of streams in the playlist.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_bpm**() const [🔗](#class-audiostreamplaylist-method-get-bpm)

Returns the BPM of the playlist, which can vary depending on the clip being played.

* * *

[AudioStream](class_audiostream.md#class-audiostream) **get\_list\_stream**(stream\_index: [int](class_int.md#class-int)) const [🔗](#class-audiostreamplaylist-method-get-list-stream)

Returns the stream at playback position index.

* * *

void **set\_list\_stream**(stream\_index: [int](class_int.md#class-int), audio\_stream: [AudioStream](class_audiostream.md#class-audiostream)) [🔗](#class-audiostreamplaylist-method-set-list-stream)

Sets the stream at playback position index.

[Previous](class_audiostreamoggvorbis.md "AudioStreamOggVorbis") [Next](class_audiostreampolyphonic.md "AudioStreamPolyphonic")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamoggvorbis.md "AudioStreamOggVorbis") [Next](class_audiostreampolyphonic.md "AudioStreamPolyphonic")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).