---
title: AudioStreamPlayer2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamplayer2d.html
crawled_at: "2026-08-13T10:37:19+12:00"
content_hash: 2681403a9de7a3d14ea12b56d7809cbe0d04ccfcaf3a94a5eb6aac37a484f300
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamPlayer2D

* * *

# AudioStreamPlayer2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Plays positional sound in 2D space.

## Description

Plays audio that is attenuated with distance to the listener.

By default, audio is heard from the screen center. This can be changed by adding an [AudioListener2D](class_audiolistener2d.md#class-audiolistener2d) node to the scene and enabling it by calling [AudioListener2D.make\_current()](class_audiolistener2d.md#class-audiolistener2d-method-make-current) on it.

See also [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer) to play a sound non-positionally.

**Note:** Hiding an **AudioStreamPlayer2D** node does not disable its audio output. To temporarily disable an **AudioStreamPlayer2D**'s audio output, set [volume\_db](#class-audiostreamplayer2d-property-volume-db) to a very low value like `-100` (which isn't audible to human hearing).

## Tutorials

- [Audio streams](../tutorials/audio/audio_streams.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [area\_mask](#class-audiostreamplayer2d-property-area-mask) | `1` |
| [float](class_float.md#class-float) | [attenuation](#class-audiostreamplayer2d-property-attenuation) | `1.0` |
| [bool](class_bool.md#class-bool) | [autoplay](#class-audiostreamplayer2d-property-autoplay) | `false` |
| [StringName](class_stringname.md#class-stringname) | [bus](#class-audiostreamplayer2d-property-bus) | `&"Master"` |
| [float](class_float.md#class-float) | [max\_distance](#class-audiostreamplayer2d-property-max-distance) | `2000.0` |
| [int](class_int.md#class-int) | [max\_polyphony](#class-audiostreamplayer2d-property-max-polyphony) | `1` |
| [float](class_float.md#class-float) | [panning\_strength](#class-audiostreamplayer2d-property-panning-strength) | `1.0` |
| [float](class_float.md#class-float) | [pitch\_scale](#class-audiostreamplayer2d-property-pitch-scale) | `1.0` |
| [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) | [playback\_type](#class-audiostreamplayer2d-property-playback-type) | `0` |
| [bool](class_bool.md#class-bool) | [playing](#class-audiostreamplayer2d-property-playing) | `false` |
| [AudioStream](class_audiostream.md#class-audiostream) | [stream](#class-audiostreamplayer2d-property-stream) |  |
| [bool](class_bool.md#class-bool) | [stream\_paused](#class-audiostreamplayer2d-property-stream-paused) | `false` |
| [float](class_float.md#class-float) | [volume\_db](#class-audiostreamplayer2d-property-volume-db) | `0.0` |
| [float](class_float.md#class-float) | [volume\_linear](#class-audiostreamplayer2d-property-volume-linear) |  |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_playback\_position](#class-audiostreamplayer2d-method-get-playback-position)() |
| [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) | [get\_stream\_playback](#class-audiostreamplayer2d-method-get-stream-playback)() |
| [bool](class_bool.md#class-bool) | [has\_stream\_playback](#class-audiostreamplayer2d-method-has-stream-playback)() |
| void | [play](#class-audiostreamplayer2d-method-play)(from\_position: [float](class_float.md#class-float) = 0.0) |
| void | [seek](#class-audiostreamplayer2d-method-seek)(to\_position: [float](class_float.md#class-float)) |
| void | [stop](#class-audiostreamplayer2d-method-stop)() |

* * *

## Signals

**finished**() [🔗](#class-audiostreamplayer2d-signal-finished)

Emitted when the audio stops playing.

* * *

## Property Descriptions

[int](class_int.md#class-int) **area\_mask** = `1` [🔗](#class-audiostreamplayer2d-property-area-mask)

- void **set\_area\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_area\_mask**()


Determines which [Area2D](class_area2d.md#class-area2d) layers affect the sound for reverb and audio bus effects. Areas can be used to redirect [AudioStream](class_audiostream.md#class-audiostream) s so that they play in a certain audio bus. An example of how you might use this is making a "water" area so that sounds played in the water are redirected through an audio bus to make them sound like they are being played underwater.

* * *

[float](class_float.md#class-float) **attenuation** = `1.0` [🔗](#class-audiostreamplayer2d-property-attenuation)

- void **set\_attenuation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_attenuation**()


The volume is attenuated over distance with this as an exponent.

* * *

[bool](class_bool.md#class-bool) **autoplay** = `false` [🔗](#class-audiostreamplayer2d-property-autoplay)

- void **set\_autoplay**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_autoplay\_enabled**()


If `true`, audio plays when added to scene tree.

* * *

[StringName](class_stringname.md#class-stringname) **bus** = `&"Master"` [🔗](#class-audiostreamplayer2d-property-bus)

- void **set\_bus**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_bus**()


Bus on which this audio is playing.

**Note:** When setting this property, keep in mind that no validation is performed to see if the given name matches an existing bus. This is because audio bus layouts might be loaded after this property is set. If this given name can't be resolved at runtime, it will fall back to `"Master"`.

* * *

[float](class_float.md#class-float) **max\_distance** = `2000.0` [🔗](#class-audiostreamplayer2d-property-max-distance)

- void **set\_max\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_distance**()


Maximum distance from which audio is still hearable.

* * *

[int](class_int.md#class-int) **max\_polyphony** = `1` [🔗](#class-audiostreamplayer2d-property-max-polyphony)

- void **set\_max\_polyphony**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_polyphony**()


The maximum number of sounds this node can play at the same time. Playing additional sounds after this value is reached will cut off the oldest sounds.

* * *

[float](class_float.md#class-float) **panning\_strength** = `1.0` [🔗](#class-audiostreamplayer2d-property-panning-strength)

- void **set\_panning\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_panning\_strength**()


Scales the panning strength for this node by multiplying the base [ProjectSettings.audio/general/2d\_panning\_strength](class_projectsettings.md#class-projectsettings-property-audio-general-2d-panning-strength) with this factor. Higher values will pan audio from left to right more dramatically than lower values.

* * *

[float](class_float.md#class-float) **pitch\_scale** = `1.0` [🔗](#class-audiostreamplayer2d-property-pitch-scale)

- void **set\_pitch\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pitch\_scale**()


The pitch and the tempo of the audio, as a multiplier of the audio sample's sample rate.

* * *

[PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) **playback\_type** = `0` [🔗](#class-audiostreamplayer2d-property-playback-type)

- void **set\_playback\_type**(value: [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype))

- [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) **get\_playback\_type**()


**Experimental:** This property may be changed or removed in future versions.

The playback type of the stream player. If set other than to the default value, it will force that playback type.

* * *

[bool](class_bool.md#class-bool) **playing** = `false` [🔗](#class-audiostreamplayer2d-property-playing)

- void **set\_playing**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_playing**()


If `true`, audio is playing or is queued to be played (see [play()](#class-audiostreamplayer2d-method-play)).

* * *

[AudioStream](class_audiostream.md#class-audiostream) **stream** [🔗](#class-audiostreamplayer2d-property-stream)

- void **set\_stream**(value: [AudioStream](class_audiostream.md#class-audiostream))

- [AudioStream](class_audiostream.md#class-audiostream) **get\_stream**()


The [AudioStream](class_audiostream.md#class-audiostream) object to be played.

* * *

[bool](class_bool.md#class-bool) **stream\_paused** = `false` [🔗](#class-audiostreamplayer2d-property-stream-paused)

- void **set\_stream\_paused**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_stream\_paused**()


If `true`, the playback is paused. You can resume it by setting [stream\_paused](#class-audiostreamplayer2d-property-stream-paused) to `false`.

* * *

[float](class_float.md#class-float) **volume\_db** = `0.0` [🔗](#class-audiostreamplayer2d-property-volume-db)

- void **set\_volume\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volume\_db**()


Base volume before attenuation, in decibels.

* * *

[float](class_float.md#class-float) **volume\_linear** [🔗](#class-audiostreamplayer2d-property-volume-linear)

- void **set\_volume\_linear**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volume\_linear**()


Base volume before attenuation, as a linear value.

**Note:** This member modifies [volume\_db](#class-audiostreamplayer2d-property-volume-db) for convenience. The returned value is equivalent to the result of [@GlobalScope.db\_to\_linear()](class_@globalscope.md#class-globalscope-method-db-to-linear) on [volume\_db](#class-audiostreamplayer2d-property-volume-db). Setting this member is equivalent to setting [volume\_db](#class-audiostreamplayer2d-property-volume-db) to the result of [@GlobalScope.linear\_to\_db()](class_@globalscope.md#class-globalscope-method-linear-to-db) on a value.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_playback\_position**() [🔗](#class-audiostreamplayer2d-method-get-playback-position)

Returns the position in the [AudioStream](class_audiostream.md#class-audiostream).

* * *

[AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) **get\_stream\_playback**() [🔗](#class-audiostreamplayer2d-method-get-stream-playback)

Returns the [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) object associated with this **AudioStreamPlayer2D**.

* * *

[bool](class_bool.md#class-bool) **has\_stream\_playback**() [🔗](#class-audiostreamplayer2d-method-has-stream-playback)

Returns whether the [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer) can return the [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) object or not.

* * *

void **play**(from\_position: [float](class_float.md#class-float) = 0.0) [🔗](#class-audiostreamplayer2d-method-play)

Queues the audio to play on the next physics frame, from the given position `from_position`, in seconds.

* * *

void **seek**(to\_position: [float](class_float.md#class-float)) [🔗](#class-audiostreamplayer2d-method-seek)

Sets the position from which audio will be played, in seconds.

* * *

void **stop**() [🔗](#class-audiostreamplayer2d-method-stop)

Stops the audio.

[Previous](class_audiostreamplayer.md "AudioStreamPlayer") [Next](class_audiostreamplayer3d.md "AudioStreamPlayer3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamplayer.md "AudioStreamPlayer") [Next](class_audiostreamplayer3d.md "AudioStreamPlayer3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).