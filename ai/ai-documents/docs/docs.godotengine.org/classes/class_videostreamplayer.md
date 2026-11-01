---
title: VideoStreamPlayer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_videostreamplayer.html
crawled_at: "2026-08-13T10:30:57+12:00"
content_hash: bdcec4c60524ba922652854e8527c8320135356a887d977b4c6afddb911f5355
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VideoStreamPlayer

* * *

# VideoStreamPlayer

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A control used for video playback.

## Description

A control used for playback of [VideoStream](class_videostream.md#class-videostream) resources.

Supported video formats are [Ogg Theora](https://www.theora.org/) ( `.ogv`, [VideoStreamTheora](class_videostreamtheora.md#class-videostreamtheora)) and any format exposed via a GDExtension plugin.

**Warning:** On Web, video playback _will_ perform poorly due to missing architecture-specific assembly optimizations.

## Tutorials

- [Playing videos](../tutorials/animation/playing_videos.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [audio\_track](#class-videostreamplayer-property-audio-track) | `0` |
| [bool](class_bool.md#class-bool) | [autoplay](#class-videostreamplayer-property-autoplay) | `false` |
| [int](class_int.md#class-int) | [buffering\_msec](#class-videostreamplayer-property-buffering-msec) | `500` |
| [StringName](class_stringname.md#class-stringname) | [bus](#class-videostreamplayer-property-bus) | `&"Master"` |
| [bool](class_bool.md#class-bool) | [expand](#class-videostreamplayer-property-expand) | `false` |
| [bool](class_bool.md#class-bool) | [loop](#class-videostreamplayer-property-loop) | `false` |
| [bool](class_bool.md#class-bool) | [paused](#class-videostreamplayer-property-paused) | `false` |
| [float](class_float.md#class-float) | [speed\_scale](#class-videostreamplayer-property-speed-scale) | `1.0` |
| [VideoStream](class_videostream.md#class-videostream) | [stream](#class-videostreamplayer-property-stream) |  |
| [float](class_float.md#class-float) | [stream\_position](#class-videostreamplayer-property-stream-position) |  |
| [float](class_float.md#class-float) | [volume](#class-videostreamplayer-property-volume) |  |
| [float](class_float.md#class-float) | [volume\_db](#class-videostreamplayer-property-volume-db) | `0.0` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_stream\_length](#class-videostreamplayer-method-get-stream-length)() const |
| [String](class_string.md#class-string) | [get\_stream\_name](#class-videostreamplayer-method-get-stream-name)() const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_video\_texture](#class-videostreamplayer-method-get-video-texture)() const |
| [bool](class_bool.md#class-bool) | [is\_playing](#class-videostreamplayer-method-is-playing)() const |
| void | [play](#class-videostreamplayer-method-play)() |
| void | [stop](#class-videostreamplayer-method-stop)() |

* * *

## Signals

**finished**() [🔗](#class-videostreamplayer-signal-finished)

Emitted when playback is finished.

* * *

## Property Descriptions

[int](class_int.md#class-int) **audio\_track** = `0` [🔗](#class-videostreamplayer-property-audio-track)

- void **set\_audio\_track**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_audio\_track**()


The embedded audio track to play.

* * *

[bool](class_bool.md#class-bool) **autoplay** = `false` [🔗](#class-videostreamplayer-property-autoplay)

- void **set\_autoplay**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_autoplay**()


If `true`, playback starts when the scene loads.

* * *

[int](class_int.md#class-int) **buffering\_msec** = `500` [🔗](#class-videostreamplayer-property-buffering-msec)

- void **set\_buffering\_msec**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_buffering\_msec**()


Amount of time in milliseconds to store in buffer while playing.

* * *

[StringName](class_stringname.md#class-stringname) **bus** = `&"Master"` [🔗](#class-videostreamplayer-property-bus)

- void **set\_bus**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_bus**()


Audio bus to use for sound playback.

* * *

[bool](class_bool.md#class-bool) **expand** = `false` [🔗](#class-videostreamplayer-property-expand)

- void **set\_expand**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_expand**()


If `true`, the video scales to the control size. Otherwise, the control minimum size will be automatically adjusted to match the video stream's dimensions.

* * *

[bool](class_bool.md#class-bool) **loop** = `false` [🔗](#class-videostreamplayer-property-loop)

- void **set\_loop**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_loop**()


If `true`, the video restarts when it reaches its end.

* * *

[bool](class_bool.md#class-bool) **paused** = `false` [🔗](#class-videostreamplayer-property-paused)

- void **set\_paused**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_paused**()


If `true`, the video is paused.

* * *

[float](class_float.md#class-float) **speed\_scale** = `1.0` [🔗](#class-videostreamplayer-property-speed-scale)

- void **set\_speed\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_speed\_scale**()


The stream's current speed scale. `1.0` is the normal speed, while `2.0` is double speed and `0.5` is half speed. A speed scale of `0.0` pauses the video, similar to setting [paused](#class-videostreamplayer-property-paused) to `true`.

* * *

[VideoStream](class_videostream.md#class-videostream) **stream** [🔗](#class-videostreamplayer-property-stream)

- void **set\_stream**(value: [VideoStream](class_videostream.md#class-videostream))

- [VideoStream](class_videostream.md#class-videostream) **get\_stream**()


The assigned video stream. See description for supported formats.

* * *

[float](class_float.md#class-float) **stream\_position** [🔗](#class-videostreamplayer-property-stream-position)

- void **set\_stream\_position**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_stream\_position**()


The current position of the stream, in seconds.

* * *

[float](class_float.md#class-float) **volume** [🔗](#class-videostreamplayer-property-volume)

- void **set\_volume**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volume**()


Audio volume as a linear value.

* * *

[float](class_float.md#class-float) **volume\_db** = `0.0` [🔗](#class-videostreamplayer-property-volume-db)

- void **set\_volume\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volume\_db**()


Audio volume in dB.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_stream\_length**() const [🔗](#class-videostreamplayer-method-get-stream-length)

The length of the current stream, in seconds.

* * *

[String](class_string.md#class-string) **get\_stream\_name**() const [🔗](#class-videostreamplayer-method-get-stream-name)

Returns the video stream's name, or `"<No Stream>"` if no video stream is assigned.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_video\_texture**() const [🔗](#class-videostreamplayer-method-get-video-texture)

Returns the current frame as a [Texture2D](class_texture2d.md#class-texture2d).

* * *

[bool](class_bool.md#class-bool) **is\_playing**() const [🔗](#class-videostreamplayer-method-is-playing)

Returns `true` if the video is playing.

**Note:** The video is still considered playing if paused during playback.

* * *

void **play**() [🔗](#class-videostreamplayer-method-play)

Starts the video playback from the beginning. If the video is paused, this will not unpause the video.

* * *

void **stop**() [🔗](#class-videostreamplayer-method-stop)

Stops the video playback and sets the stream position to 0.

**Note:** Although the stream position will be set to 0, the first frame of the video stream won't become the current frame.

[Previous](class_vflowcontainer.md "VFlowContainer") [Next](class_viewport.md "Viewport")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_vflowcontainer.md "VFlowContainer") [Next](class_viewport.md "Viewport")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).