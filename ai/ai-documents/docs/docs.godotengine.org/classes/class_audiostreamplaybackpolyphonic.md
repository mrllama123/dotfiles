---
title: AudioStreamPlaybackPolyphonic — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamplaybackpolyphonic.html
crawled_at: "2026-08-13T10:42:51+12:00"
content_hash: 19b4b4c31514dbc4aa9c2c4ba4f78395795ae1cde54c7140a218c80656641f3c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamPlaybackPolyphonic

* * *

# AudioStreamPlaybackPolyphonic

**Inherits:** [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Playback instance for [AudioStreamPolyphonic](class_audiostreampolyphonic.md#class-audiostreampolyphonic).

## Description

Playback instance for [AudioStreamPolyphonic](class_audiostreampolyphonic.md#class-audiostreampolyphonic). After setting the `stream` property of [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer), [AudioStreamPlayer2D](class_audiostreamplayer2d.md#class-audiostreamplayer2d), or [AudioStreamPlayer3D](class_audiostreamplayer3d.md#class-audiostreamplayer3d), the playback instance can be obtained by calling [AudioStreamPlayer.get\_stream\_playback()](class_audiostreamplayer.md#class-audiostreamplayer-method-get-stream-playback), [AudioStreamPlayer2D.get\_stream\_playback()](class_audiostreamplayer2d.md#class-audiostreamplayer2d-method-get-stream-playback) or [AudioStreamPlayer3D.get\_stream\_playback()](class_audiostreamplayer3d.md#class-audiostreamplayer3d-method-get-stream-playback) methods.

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [is\_stream\_playing](#class-audiostreamplaybackpolyphonic-method-is-stream-playing)(stream: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [play\_stream](#class-audiostreamplaybackpolyphonic-method-play-stream)(stream: [AudioStream](class_audiostream.md#class-audiostream), from\_offset: [float](class_float.md#class-float) = 0, volume\_db: [float](class_float.md#class-float) = 0, pitch\_scale: [float](class_float.md#class-float) = 1.0, playback\_type: [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) = 0, bus: [StringName](class_stringname.md#class-stringname) = &"Master") |
| void | [set\_stream\_pitch\_scale](#class-audiostreamplaybackpolyphonic-method-set-stream-pitch-scale)(stream: [int](class_int.md#class-int), pitch\_scale: [float](class_float.md#class-float)) |
| void | [set\_stream\_volume](#class-audiostreamplaybackpolyphonic-method-set-stream-volume)(stream: [int](class_int.md#class-int), volume\_db: [float](class_float.md#class-float)) |
| void | [stop\_stream](#class-audiostreamplaybackpolyphonic-method-stop-stream)(stream: [int](class_int.md#class-int)) |

* * *

## Constants

**INVALID\_ID** = `-1` [🔗](#class-audiostreamplaybackpolyphonic-constant-invalid-id)

Returned by [play\_stream()](#class-audiostreamplaybackpolyphonic-method-play-stream) in case it could not allocate a stream for playback.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **is\_stream\_playing**(stream: [int](class_int.md#class-int)) const [🔗](#class-audiostreamplaybackpolyphonic-method-is-stream-playing)

Returns `true` if the stream associated with the given integer ID is still playing. Check [play\_stream()](#class-audiostreamplaybackpolyphonic-method-play-stream) for information on when this ID becomes invalid.

* * *

[int](class_int.md#class-int) **play\_stream**(stream: [AudioStream](class_audiostream.md#class-audiostream), from\_offset: [float](class_float.md#class-float) = 0, volume\_db: [float](class_float.md#class-float) = 0, pitch\_scale: [float](class_float.md#class-float) = 1.0, playback\_type: [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) = 0, bus: [StringName](class_stringname.md#class-stringname) = &"Master") [🔗](#class-audiostreamplaybackpolyphonic-method-play-stream)

Play an [AudioStream](class_audiostream.md#class-audiostream) at a given offset, volume, pitch scale, playback type, and bus. Playback starts immediately.

The return value is a unique integer ID that is associated to this playback stream and which can be used to control it.

This ID becomes invalid when the stream ends (if it does not loop), when the **AudioStreamPlaybackPolyphonic** is stopped, or when [stop\_stream()](#class-audiostreamplaybackpolyphonic-method-stop-stream) is called.

This function returns [INVALID\_ID](#class-audiostreamplaybackpolyphonic-constant-invalid-id) if the amount of streams currently playing equals [AudioStreamPolyphonic.polyphony](class_audiostreampolyphonic.md#class-audiostreampolyphonic-property-polyphony). If you need a higher amount of maximum polyphony, raise this value.

* * *

void **set\_stream\_pitch\_scale**(stream: [int](class_int.md#class-int), pitch\_scale: [float](class_float.md#class-float)) [🔗](#class-audiostreamplaybackpolyphonic-method-set-stream-pitch-scale)

Change the stream pitch scale. The `stream` argument is an integer ID returned by [play\_stream()](#class-audiostreamplaybackpolyphonic-method-play-stream).

* * *

void **set\_stream\_volume**(stream: [int](class_int.md#class-int), volume\_db: [float](class_float.md#class-float)) [🔗](#class-audiostreamplaybackpolyphonic-method-set-stream-volume)

Change the stream volume (in db). The `stream` argument is an integer ID returned by [play\_stream()](#class-audiostreamplaybackpolyphonic-method-play-stream).

* * *

void **stop\_stream**(stream: [int](class_int.md#class-int)) [🔗](#class-audiostreamplaybackpolyphonic-method-stop-stream)

Stop a stream. The `stream` argument is an integer ID returned by [play\_stream()](#class-audiostreamplaybackpolyphonic-method-play-stream), which becomes invalid after calling this function.

[Previous](class_audiostreamplaybackplaylist.md "AudioStreamPlaybackPlaylist") [Next](class_audiostreamplaybackresampled.md "AudioStreamPlaybackResampled")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamplaybackplaylist.md "AudioStreamPlaybackPlaylist") [Next](class_audiostreamplaybackresampled.md "AudioStreamPlaybackResampled")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).