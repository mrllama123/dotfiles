---
title: VideoStreamPlayback — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_videostreamplayback.html
crawled_at: "2026-08-13T10:23:31+12:00"
content_hash: 1963328cd16c65c2a0411142e8ea78dad9ab2f1ac73db3f787befe92a20a4bc3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VideoStreamPlayback

* * *

# VideoStreamPlayback

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Internal class used by [VideoStream](class_videostream.md#class-videostream) to manage playback state when played from a [VideoStreamPlayer](class_videostreamplayer.md#class-videostreamplayer).

## Description

This class is intended to be overridden by video decoder extensions with custom implementations of [VideoStream](class_videostream.md#class-videostream).

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [\_get\_channels](#class-videostreamplayback-private-method-get-channels)() virtualconst |
| [float](class_float.md#class-float) | [\_get\_length](#class-videostreamplayback-private-method-get-length)() virtualconst |
| [int](class_int.md#class-int) | [\_get\_mix\_rate](#class-videostreamplayback-private-method-get-mix-rate)() virtualconst |
| [float](class_float.md#class-float) | [\_get\_playback\_position](#class-videostreamplayback-private-method-get-playback-position)() virtualconst |
| [Texture2D](class_texture2d.md#class-texture2d) | [\_get\_texture](#class-videostreamplayback-private-method-get-texture)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_paused](#class-videostreamplayback-private-method-is-paused)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_playing](#class-videostreamplayback-private-method-is-playing)() virtualconst |
| void | [\_play](#class-videostreamplayback-private-method-play)() virtual |
| void | [\_seek](#class-videostreamplayback-private-method-seek)(time: [float](class_float.md#class-float)) virtual |
| void | [\_set\_audio\_track](#class-videostreamplayback-private-method-set-audio-track)(idx: [int](class_int.md#class-int)) virtual |
| void | [\_set\_paused](#class-videostreamplayback-private-method-set-paused)(paused: [bool](class_bool.md#class-bool)) virtual |
| void | [\_stop](#class-videostreamplayback-private-method-stop)() virtual |
| void | [\_update](#class-videostreamplayback-private-method-update)(delta: [float](class_float.md#class-float)) virtualrequired |
| [int](class_int.md#class-int) | [mix\_audio](#class-videostreamplayback-method-mix-audio)(num\_frames: [int](class_int.md#class-int), buffer: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) = PackedFloat32Array(), offset: [int](class_int.md#class-int) = 0) |

* * *

## Method Descriptions

[int](class_int.md#class-int) **\_get\_channels**() virtualconst [🔗](#class-videostreamplayback-private-method-get-channels)

Returns the number of audio channels.

* * *

[float](class_float.md#class-float) **\_get\_length**() virtualconst [🔗](#class-videostreamplayback-private-method-get-length)

Returns the video duration in seconds, if known, or 0 if unknown.

* * *

[int](class_int.md#class-int) **\_get\_mix\_rate**() virtualconst [🔗](#class-videostreamplayback-private-method-get-mix-rate)

Returns the audio sample rate used for mixing.

* * *

[float](class_float.md#class-float) **\_get\_playback\_position**() virtualconst [🔗](#class-videostreamplayback-private-method-get-playback-position)

Return the current playback timestamp. Called in response to the [VideoStreamPlayer.stream\_position](class_videostreamplayer.md#class-videostreamplayer-property-stream-position) getter.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **\_get\_texture**() virtualconst [🔗](#class-videostreamplayback-private-method-get-texture)

Allocates a [Texture2D](class_texture2d.md#class-texture2d) in which decoded video frames will be drawn.

* * *

[bool](class_bool.md#class-bool) **\_is\_paused**() virtualconst [🔗](#class-videostreamplayback-private-method-is-paused)

Returns the paused status, as set by [\_set\_paused()](#class-videostreamplayback-private-method-set-paused).

* * *

[bool](class_bool.md#class-bool) **\_is\_playing**() virtualconst [🔗](#class-videostreamplayback-private-method-is-playing)

Returns the playback state, as determined by calls to [\_play()](#class-videostreamplayback-private-method-play) and [\_stop()](#class-videostreamplayback-private-method-stop).

* * *

void **\_play**() virtual [🔗](#class-videostreamplayback-private-method-play)

Called in response to [VideoStreamPlayer.autoplay](class_videostreamplayer.md#class-videostreamplayer-property-autoplay) or [VideoStreamPlayer.play()](class_videostreamplayer.md#class-videostreamplayer-method-play). Note that manual playback may also invoke [\_stop()](#class-videostreamplayback-private-method-stop) multiple times before this method is called. [\_is\_playing()](#class-videostreamplayback-private-method-is-playing) should return `true` once playing.

* * *

void **\_seek**(time: [float](class_float.md#class-float)) virtual [🔗](#class-videostreamplayback-private-method-seek)

Seeks to `time` seconds. Called in response to the [VideoStreamPlayer.stream\_position](class_videostreamplayer.md#class-videostreamplayer-property-stream-position) setter.

* * *

void **\_set\_audio\_track**(idx: [int](class_int.md#class-int)) virtual [🔗](#class-videostreamplayback-private-method-set-audio-track)

Select the audio track `idx`. Called when playback starts, and in response to the [VideoStreamPlayer.audio\_track](class_videostreamplayer.md#class-videostreamplayer-property-audio-track) setter.

* * *

void **\_set\_paused**(paused: [bool](class_bool.md#class-bool)) virtual [🔗](#class-videostreamplayback-private-method-set-paused)

Set the paused status of video playback. [\_is\_paused()](#class-videostreamplayback-private-method-is-paused) must return `paused`. Called in response to the [VideoStreamPlayer.paused](class_videostreamplayer.md#class-videostreamplayer-property-paused) setter.

* * *

void **\_stop**() virtual [🔗](#class-videostreamplayback-private-method-stop)

Stops playback. May be called multiple times before [\_play()](#class-videostreamplayback-private-method-play), or in response to [VideoStreamPlayer.stop()](class_videostreamplayer.md#class-videostreamplayer-method-stop). [\_is\_playing()](#class-videostreamplayback-private-method-is-playing) should return `false` once stopped.

* * *

void **\_update**(delta: [float](class_float.md#class-float)) virtualrequired [🔗](#class-videostreamplayback-private-method-update)

Ticks video playback for `delta` seconds. Called every frame as long as both [\_is\_paused()](#class-videostreamplayback-private-method-is-paused) and [\_is\_playing()](#class-videostreamplayback-private-method-is-playing) return `true`.

* * *

[int](class_int.md#class-int) **mix\_audio**(num\_frames: [int](class_int.md#class-int), buffer: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) = PackedFloat32Array(), offset: [int](class_int.md#class-int) = 0) [🔗](#class-videostreamplayback-method-mix-audio)

Render `num_frames` audio frames (of [\_get\_channels()](#class-videostreamplayback-private-method-get-channels) floats each) from `buffer`, starting from index `offset` in the array. Returns the number of audio frames rendered, or -1 on error.

[Previous](class_videostream.md "VideoStream") [Next](class_videostreamtheora.md "VideoStreamTheora")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_videostream.md "VideoStream") [Next](class_videostreamtheora.md "VideoStreamTheora")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).