---
title: AudioStreamPlayer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamplayer.html
crawled_at: "2026-08-13T10:36:44+12:00"
content_hash: f682c486dba50bdf17bce851370f435e7e1fbeb957f59b48e7cf99145ff5c294
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamPlayer

* * *

# AudioStreamPlayer

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node for audio playback.

## Description

The **AudioStreamPlayer** node plays an audio stream non-positionally. It is ideal for user interfaces, menus, or background music.

To use this node, [stream](#class-audiostreamplayer-property-stream) needs to be set to a valid [AudioStream](class_audiostream.md#class-audiostream) resource. Playing more than one sound at the same time is also supported, see [max\_polyphony](#class-audiostreamplayer-property-max-polyphony).

If you need to play audio at a specific position, use [AudioStreamPlayer2D](class_audiostreamplayer2d.md#class-audiostreamplayer2d) or [AudioStreamPlayer3D](class_audiostreamplayer3d.md#class-audiostreamplayer3d) instead.

## Tutorials

- [Audio streams](../tutorials/audio/audio_streams.md)

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)

- [Audio Device Changer Demo](https://godotengine.org/asset-library/asset/2758)

- [Audio Generator Demo](https://godotengine.org/asset-library/asset/2759)

- [Audio Microphone Record Demo](https://godotengine.org/asset-library/asset/2760)

- [Audio Spectrum Visualizer Demo](https://godotengine.org/asset-library/asset/2762)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [autoplay](#class-audiostreamplayer-property-autoplay) | `false` |
| [StringName](class_stringname.md#class-stringname) | [bus](#class-audiostreamplayer-property-bus) | `&"Master"` |
| [int](class_int.md#class-int) | [max\_polyphony](#class-audiostreamplayer-property-max-polyphony) | `1` |
| [MixTarget](#enum-audiostreamplayer-mixtarget) | [mix\_target](#class-audiostreamplayer-property-mix-target) | `0` |
| [float](class_float.md#class-float) | [pitch\_scale](#class-audiostreamplayer-property-pitch-scale) | `1.0` |
| [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) | [playback\_type](#class-audiostreamplayer-property-playback-type) | `0` |
| [bool](class_bool.md#class-bool) | [playing](#class-audiostreamplayer-property-playing) | `false` |
| [AudioStream](class_audiostream.md#class-audiostream) | [stream](#class-audiostreamplayer-property-stream) |  |
| [bool](class_bool.md#class-bool) | [stream\_paused](#class-audiostreamplayer-property-stream-paused) | `false` |
| [float](class_float.md#class-float) | [volume\_db](#class-audiostreamplayer-property-volume-db) | `0.0` |
| [float](class_float.md#class-float) | [volume\_linear](#class-audiostreamplayer-property-volume-linear) |  |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_playback\_position](#class-audiostreamplayer-method-get-playback-position)() |
| [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) | [get\_stream\_playback](#class-audiostreamplayer-method-get-stream-playback)() |
| [bool](class_bool.md#class-bool) | [has\_stream\_playback](#class-audiostreamplayer-method-has-stream-playback)() |
| void | [play](#class-audiostreamplayer-method-play)(from\_position: [float](class_float.md#class-float) = 0.0) |
| void | [seek](#class-audiostreamplayer-method-seek)(to\_position: [float](class_float.md#class-float)) |
| void | [stop](#class-audiostreamplayer-method-stop)() |

* * *

## Signals

**finished**() [🔗](#class-audiostreamplayer-signal-finished)

Emitted when a sound finishes playing without interruptions. This signal is _not_ emitted when calling [stop()](#class-audiostreamplayer-method-stop), or when exiting the tree while sounds are playing.

* * *

## Enumerations

enum **MixTarget**: [🔗](#enum-audiostreamplayer-mixtarget)

[MixTarget](#enum-audiostreamplayer-mixtarget) **MIX\_TARGET\_STEREO** = `0`

The audio will be played only on the first channel. This is the default.

[MixTarget](#enum-audiostreamplayer-mixtarget) **MIX\_TARGET\_SURROUND** = `1`

The audio will be played on all surround channels.

[MixTarget](#enum-audiostreamplayer-mixtarget) **MIX\_TARGET\_CENTER** = `2`

The audio will be played on the second channel, which is usually the center.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **autoplay** = `false` [🔗](#class-audiostreamplayer-property-autoplay)

- void **set\_autoplay**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_autoplay\_enabled**()


If `true`, this node calls [play()](#class-audiostreamplayer-method-play) when entering the tree.

* * *

[StringName](class_stringname.md#class-stringname) **bus** = `&"Master"` [🔗](#class-audiostreamplayer-property-bus)

- void **set\_bus**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_bus**()


The target bus name. All sounds from this node will be playing on this bus.

**Note:** At runtime, if no bus with the given name exists, all sounds will fall back on `"Master"`. See also [AudioServer.get\_bus\_name()](class_audioserver.md#class-audioserver-method-get-bus-name).

* * *

[int](class_int.md#class-int) **max\_polyphony** = `1` [🔗](#class-audiostreamplayer-property-max-polyphony)

- void **set\_max\_polyphony**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_polyphony**()


The maximum number of sounds this node can play at the same time. Calling [play()](#class-audiostreamplayer-method-play) after this value is reached will cut off the oldest sounds.

* * *

[MixTarget](#enum-audiostreamplayer-mixtarget) **mix\_target** = `0` [🔗](#class-audiostreamplayer-property-mix-target)

- void **set\_mix\_target**(value: [MixTarget](#enum-audiostreamplayer-mixtarget))

- [MixTarget](#enum-audiostreamplayer-mixtarget) **get\_mix\_target**()


The mix target channels. Has no effect when two speakers or less are detected (see [SpeakerMode](class_audioserver.md#enum-audioserver-speakermode)).

* * *

[float](class_float.md#class-float) **pitch\_scale** = `1.0` [🔗](#class-audiostreamplayer-property-pitch-scale)

- void **set\_pitch\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pitch\_scale**()


The audio's pitch and tempo, as a multiplier of the [stream](#class-audiostreamplayer-property-stream)'s sample rate. A value of `2.0` doubles the audio's pitch, while a value of `0.5` halves the pitch.

* * *

[PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) **playback\_type** = `0` [🔗](#class-audiostreamplayer-property-playback-type)

- void **set\_playback\_type**(value: [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype))

- [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) **get\_playback\_type**()


**Experimental:** This property may be changed or removed in future versions.

The playback type of the stream player. If set other than to the default value, it will force that playback type.

* * *

[bool](class_bool.md#class-bool) **playing** = `false` [🔗](#class-audiostreamplayer-property-playing)

- void **set\_playing**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_playing**()


If `true`, this node is playing sounds. Setting this property has the same effect as [play()](#class-audiostreamplayer-method-play) and [stop()](#class-audiostreamplayer-method-stop).

* * *

[AudioStream](class_audiostream.md#class-audiostream) **stream** [🔗](#class-audiostreamplayer-property-stream)

- void **set\_stream**(value: [AudioStream](class_audiostream.md#class-audiostream))

- [AudioStream](class_audiostream.md#class-audiostream) **get\_stream**()


The [AudioStream](class_audiostream.md#class-audiostream) resource to be played. Setting this property stops all currently playing sounds. If left empty, the **AudioStreamPlayer** does not work.

* * *

[bool](class_bool.md#class-bool) **stream\_paused** = `false` [🔗](#class-audiostreamplayer-property-stream-paused)

- void **set\_stream\_paused**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_stream\_paused**()


If `true`, the sounds are paused. Setting [stream\_paused](#class-audiostreamplayer-property-stream-paused) to `false` resumes all sounds.

**Note:** This property is automatically changed when exiting or entering the tree, or this node is paused (see [Node.process\_mode](class_node.md#class-node-property-process-mode)).

* * *

[float](class_float.md#class-float) **volume\_db** = `0.0` [🔗](#class-audiostreamplayer-property-volume-db)

- void **set\_volume\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volume\_db**()


Volume of sound, in decibels. This is an offset of the [stream](#class-audiostreamplayer-property-stream)'s volume.

**Note:** To convert between decibel and linear energy (like most volume sliders do), use [volume\_linear](#class-audiostreamplayer-property-volume-linear), or [@GlobalScope.db\_to\_linear()](class_@globalscope.md#class-globalscope-method-db-to-linear) and [@GlobalScope.linear\_to\_db()](class_@globalscope.md#class-globalscope-method-linear-to-db).

* * *

[float](class_float.md#class-float) **volume\_linear** [🔗](#class-audiostreamplayer-property-volume-linear)

- void **set\_volume\_linear**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volume\_linear**()


Volume of sound, as a linear value.

**Note:** This member modifies [volume\_db](#class-audiostreamplayer-property-volume-db) for convenience. The returned value is equivalent to the result of [@GlobalScope.db\_to\_linear()](class_@globalscope.md#class-globalscope-method-db-to-linear) on [volume\_db](#class-audiostreamplayer-property-volume-db). Setting this member is equivalent to setting [volume\_db](#class-audiostreamplayer-property-volume-db) to the result of [@GlobalScope.linear\_to\_db()](class_@globalscope.md#class-globalscope-method-linear-to-db) on a value.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_playback\_position**() [🔗](#class-audiostreamplayer-method-get-playback-position)

Returns the position in the [AudioStream](class_audiostream.md#class-audiostream) of the latest sound, in seconds. Returns `0.0` if no sounds are playing.

**Note:** The position is not always accurate, as the [AudioServer](class_audioserver.md#class-audioserver) does not mix audio every processed frame. To get more accurate results, add [AudioServer.get\_time\_since\_last\_mix()](class_audioserver.md#class-audioserver-method-get-time-since-last-mix) to the returned position.

**Note:** This method always returns `0.0` if the [stream](#class-audiostreamplayer-property-stream) is an [AudioStreamInteractive](class_audiostreaminteractive.md#class-audiostreaminteractive), since it can have multiple clips playing at once.

* * *

[AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) **get\_stream\_playback**() [🔗](#class-audiostreamplayer-method-get-stream-playback)

Returns the latest [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) of this node, usually the most recently created by [play()](#class-audiostreamplayer-method-play). If no sounds are playing, this method fails and returns an empty playback.

* * *

[bool](class_bool.md#class-bool) **has\_stream\_playback**() [🔗](#class-audiostreamplayer-method-has-stream-playback)

Returns `true` if any sound is active, even if [stream\_paused](#class-audiostreamplayer-property-stream-paused) is set to `true`. See also [playing](#class-audiostreamplayer-property-playing) and [get\_stream\_playback()](#class-audiostreamplayer-method-get-stream-playback).

* * *

void **play**(from\_position: [float](class_float.md#class-float) = 0.0) [🔗](#class-audiostreamplayer-method-play)

Plays a sound from the beginning, or the given `from_position` in seconds.

* * *

void **seek**(to\_position: [float](class_float.md#class-float)) [🔗](#class-audiostreamplayer-method-seek)

Restarts all sounds to be played from the given `to_position`, in seconds. Does nothing if no sounds are playing.

* * *

void **stop**() [🔗](#class-audiostreamplayer-method-stop)

Stops all sounds from this node.

[Previous](class_audiolistener3d.md "AudioListener3D") [Next](class_audiostreamplayer2d.md "AudioStreamPlayer2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiolistener3d.md "AudioListener3D") [Next](class_audiostreamplayer2d.md "AudioStreamPlayer2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).