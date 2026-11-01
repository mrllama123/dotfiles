---
title: AudioStreamPlayer3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamplayer3d.html
crawled_at: "2026-08-13T10:32:39+12:00"
content_hash: 09cae64139233ee0a0fda92f9eb0ce3938b76224432e358bfe001ea3099bebd9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamPlayer3D

* * *

# AudioStreamPlayer3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Plays positional sound in 3D space.

## Description

Plays audio with positional sound effects, based on the relative position of the audio listener. Positional effects include distance attenuation, directionality, and the Doppler effect. For greater realism, a low-pass filter is applied to distant sounds. This can be disabled by setting [attenuation\_filter\_cutoff\_hz](#class-audiostreamplayer3d-property-attenuation-filter-cutoff-hz) to `20500`.

By default, audio is heard from the camera position. This can be changed by adding an [AudioListener3D](class_audiolistener3d.md#class-audiolistener3d) node to the scene and enabling it by calling [AudioListener3D.make\_current()](class_audiolistener3d.md#class-audiolistener3d-method-make-current) on it.

See also [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer) to play a sound non-positionally.

**Note:** Hiding an **AudioStreamPlayer3D** node does not disable its audio output. To temporarily disable an **AudioStreamPlayer3D**'s audio output, set [volume\_db](#class-audiostreamplayer3d-property-volume-db) to a very low value like `-100` (which isn't audible to human hearing).

## Tutorials

- [Audio streams](../tutorials/audio/audio_streams.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [area\_mask](#class-audiostreamplayer3d-property-area-mask) | `1` |
| [float](class_float.md#class-float) | [attenuation\_filter\_cutoff\_hz](#class-audiostreamplayer3d-property-attenuation-filter-cutoff-hz) | `5000.0` |
| [float](class_float.md#class-float) | [attenuation\_filter\_db](#class-audiostreamplayer3d-property-attenuation-filter-db) | `-24.0` |
| [AttenuationModel](#enum-audiostreamplayer3d-attenuationmodel) | [attenuation\_model](#class-audiostreamplayer3d-property-attenuation-model) | `0` |
| [bool](class_bool.md#class-bool) | [autoplay](#class-audiostreamplayer3d-property-autoplay) | `false` |
| [StringName](class_stringname.md#class-stringname) | [bus](#class-audiostreamplayer3d-property-bus) | `&"Master"` |
| [DopplerTracking](#enum-audiostreamplayer3d-dopplertracking) | [doppler\_tracking](#class-audiostreamplayer3d-property-doppler-tracking) | `0` |
| [float](class_float.md#class-float) | [emission\_angle\_degrees](#class-audiostreamplayer3d-property-emission-angle-degrees) | `45.0` |
| [bool](class_bool.md#class-bool) | [emission\_angle\_enabled](#class-audiostreamplayer3d-property-emission-angle-enabled) | `false` |
| [float](class_float.md#class-float) | [emission\_angle\_filter\_attenuation\_db](#class-audiostreamplayer3d-property-emission-angle-filter-attenuation-db) | `-12.0` |
| [float](class_float.md#class-float) | [max\_db](#class-audiostreamplayer3d-property-max-db) | `3.0` |
| [float](class_float.md#class-float) | [max\_distance](#class-audiostreamplayer3d-property-max-distance) | `0.0` |
| [int](class_int.md#class-int) | [max\_polyphony](#class-audiostreamplayer3d-property-max-polyphony) | `1` |
| [float](class_float.md#class-float) | [panning\_strength](#class-audiostreamplayer3d-property-panning-strength) | `1.0` |
| [float](class_float.md#class-float) | [pitch\_scale](#class-audiostreamplayer3d-property-pitch-scale) | `1.0` |
| [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) | [playback\_type](#class-audiostreamplayer3d-property-playback-type) | `0` |
| [bool](class_bool.md#class-bool) | [playing](#class-audiostreamplayer3d-property-playing) | `false` |
| [AudioStream](class_audiostream.md#class-audiostream) | [stream](#class-audiostreamplayer3d-property-stream) |  |
| [bool](class_bool.md#class-bool) | [stream\_paused](#class-audiostreamplayer3d-property-stream-paused) | `false` |
| [float](class_float.md#class-float) | [unit\_size](#class-audiostreamplayer3d-property-unit-size) | `10.0` |
| [float](class_float.md#class-float) | [volume\_db](#class-audiostreamplayer3d-property-volume-db) | `0.0` |
| [float](class_float.md#class-float) | [volume\_linear](#class-audiostreamplayer3d-property-volume-linear) |  |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_playback\_position](#class-audiostreamplayer3d-method-get-playback-position)() |
| [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) | [get\_stream\_playback](#class-audiostreamplayer3d-method-get-stream-playback)() |
| [bool](class_bool.md#class-bool) | [has\_stream\_playback](#class-audiostreamplayer3d-method-has-stream-playback)() |
| void | [play](#class-audiostreamplayer3d-method-play)(from\_position: [float](class_float.md#class-float) = 0.0) |
| void | [seek](#class-audiostreamplayer3d-method-seek)(to\_position: [float](class_float.md#class-float)) |
| void | [stop](#class-audiostreamplayer3d-method-stop)() |

* * *

## Signals

**finished**() [🔗](#class-audiostreamplayer3d-signal-finished)

Emitted when the audio stops playing.

* * *

## Enumerations

enum **AttenuationModel**: [🔗](#enum-audiostreamplayer3d-attenuationmodel)

[AttenuationModel](#enum-audiostreamplayer3d-attenuationmodel) **ATTENUATION\_INVERSE\_DISTANCE** = `0`

Attenuation of loudness according to linear distance.

[AttenuationModel](#enum-audiostreamplayer3d-attenuationmodel) **ATTENUATION\_INVERSE\_SQUARE\_DISTANCE** = `1`

Attenuation of loudness according to squared distance.

[AttenuationModel](#enum-audiostreamplayer3d-attenuationmodel) **ATTENUATION\_LOGARITHMIC** = `2`

Attenuation of loudness according to logarithmic distance.

[AttenuationModel](#enum-audiostreamplayer3d-attenuationmodel) **ATTENUATION\_DISABLED** = `3`

No attenuation of loudness according to distance. The sound will still be heard positionally, unlike an [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer). [ATTENUATION\_DISABLED](#class-audiostreamplayer3d-constant-attenuation-disabled) can be combined with a [max\_distance](#class-audiostreamplayer3d-property-max-distance) value greater than `0.0` to achieve linear attenuation clamped to a sphere of a defined size.

* * *

enum **DopplerTracking**: [🔗](#enum-audiostreamplayer3d-dopplertracking)

[DopplerTracking](#enum-audiostreamplayer3d-dopplertracking) **DOPPLER\_TRACKING\_DISABLED** = `0`

Disables doppler tracking.

[DopplerTracking](#enum-audiostreamplayer3d-dopplertracking) **DOPPLER\_TRACKING\_IDLE\_STEP** = `1`

Executes doppler tracking during process frames (see [Node.NOTIFICATION\_INTERNAL\_PROCESS](class_node.md#class-node-constant-notification-internal-process)).

[DopplerTracking](#enum-audiostreamplayer3d-dopplertracking) **DOPPLER\_TRACKING\_PHYSICS\_STEP** = `2`

Executes doppler tracking during physics frames (see [Node.NOTIFICATION\_INTERNAL\_PHYSICS\_PROCESS](class_node.md#class-node-constant-notification-internal-physics-process)).

* * *

## Property Descriptions

[int](class_int.md#class-int) **area\_mask** = `1` [🔗](#class-audiostreamplayer3d-property-area-mask)

- void **set\_area\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_area\_mask**()


Determines which [Area3D](class_area3d.md#class-area3d) layers affect the sound for reverb and audio bus effects. Areas can be used to redirect [AudioStream](class_audiostream.md#class-audiostream) s so that they play in a certain audio bus. An example of how you might use this is making a "water" area so that sounds played in the water are redirected through an audio bus to make them sound like they are being played underwater.

* * *

[float](class_float.md#class-float) **attenuation\_filter\_cutoff\_hz** = `5000.0` [🔗](#class-audiostreamplayer3d-property-attenuation-filter-cutoff-hz)

- void **set\_attenuation\_filter\_cutoff\_hz**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_attenuation\_filter\_cutoff\_hz**()


The cutoff frequency of the attenuation low-pass filter, in Hz. A sound above this frequency is attenuated more than a sound below this frequency. To disable this effect, set this to `20500` as this frequency is above the human hearing limit.

* * *

[float](class_float.md#class-float) **attenuation\_filter\_db** = `-24.0` [🔗](#class-audiostreamplayer3d-property-attenuation-filter-db)

- void **set\_attenuation\_filter\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_attenuation\_filter\_db**()


Amount how much the filter affects the loudness, in decibels.

* * *

[AttenuationModel](#enum-audiostreamplayer3d-attenuationmodel) **attenuation\_model** = `0` [🔗](#class-audiostreamplayer3d-property-attenuation-model)

- void **set\_attenuation\_model**(value: [AttenuationModel](#enum-audiostreamplayer3d-attenuationmodel))

- [AttenuationModel](#enum-audiostreamplayer3d-attenuationmodel) **get\_attenuation\_model**()


Decides if audio should get quieter with distance linearly, quadratically, logarithmically, or not be affected by distance, effectively disabling attenuation.

* * *

[bool](class_bool.md#class-bool) **autoplay** = `false` [🔗](#class-audiostreamplayer3d-property-autoplay)

- void **set\_autoplay**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_autoplay\_enabled**()


If `true`, audio plays when the AudioStreamPlayer3D node is added to scene tree.

* * *

[StringName](class_stringname.md#class-stringname) **bus** = `&"Master"` [🔗](#class-audiostreamplayer3d-property-bus)

- void **set\_bus**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_bus**()


The bus on which this audio is playing.

**Note:** When setting this property, keep in mind that no validation is performed to see if the given name matches an existing bus. This is because audio bus layouts might be loaded after this property is set. If this given name can't be resolved at runtime, it will fall back to `"Master"`.

* * *

[DopplerTracking](#enum-audiostreamplayer3d-dopplertracking) **doppler\_tracking** = `0` [🔗](#class-audiostreamplayer3d-property-doppler-tracking)

- void **set\_doppler\_tracking**(value: [DopplerTracking](#enum-audiostreamplayer3d-dopplertracking))

- [DopplerTracking](#enum-audiostreamplayer3d-dopplertracking) **get\_doppler\_tracking**()


Decides in which step the Doppler effect should be calculated.

**Note:** If [doppler\_tracking](#class-audiostreamplayer3d-property-doppler-tracking) is not [DOPPLER\_TRACKING\_DISABLED](#class-audiostreamplayer3d-constant-doppler-tracking-disabled) but the current [Camera3D](class_camera3d.md#class-camera3d)/ [AudioListener3D](class_audiolistener3d.md#class-audiolistener3d) has doppler tracking disabled, the Doppler effect will be heard but will not take the movement of the current listener into account. If accurate Doppler effect is desired, doppler tracking should be enabled on both the **AudioStreamPlayer3D** and the current [Camera3D](class_camera3d.md#class-camera3d)/ [AudioListener3D](class_audiolistener3d.md#class-audiolistener3d).

* * *

[float](class_float.md#class-float) **emission\_angle\_degrees** = `45.0` [🔗](#class-audiostreamplayer3d-property-emission-angle-degrees)

- void **set\_emission\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_angle**()


The angle in which the audio reaches a listener unattenuated.

* * *

[bool](class_bool.md#class-bool) **emission\_angle\_enabled** = `false` [🔗](#class-audiostreamplayer3d-property-emission-angle-enabled)

- void **set\_emission\_angle\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_emission\_angle\_enabled**()


If `true`, the audio should be attenuated according to the direction of the sound.

* * *

[float](class_float.md#class-float) **emission\_angle\_filter\_attenuation\_db** = `-12.0` [🔗](#class-audiostreamplayer3d-property-emission-angle-filter-attenuation-db)

- void **set\_emission\_angle\_filter\_attenuation\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_angle\_filter\_attenuation\_db**()


Attenuation factor used if listener is outside of [emission\_angle\_degrees](#class-audiostreamplayer3d-property-emission-angle-degrees) and [emission\_angle\_enabled](#class-audiostreamplayer3d-property-emission-angle-enabled) is set, in decibels.

* * *

[float](class_float.md#class-float) **max\_db** = `3.0` [🔗](#class-audiostreamplayer3d-property-max-db)

- void **set\_max\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_db**()


Sets the absolute maximum of the sound level, in decibels.

* * *

[float](class_float.md#class-float) **max\_distance** = `0.0` [🔗](#class-audiostreamplayer3d-property-max-distance)

- void **set\_max\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_distance**()


The distance past which the sound can no longer be heard at all. Only has an effect if set to a value greater than `0.0`. [max\_distance](#class-audiostreamplayer3d-property-max-distance) works in tandem with [unit\_size](#class-audiostreamplayer3d-property-unit-size). However, unlike [unit\_size](#class-audiostreamplayer3d-property-unit-size) whose behavior depends on the [attenuation\_model](#class-audiostreamplayer3d-property-attenuation-model), [max\_distance](#class-audiostreamplayer3d-property-max-distance) always works in a linear fashion. This can be used to prevent the **AudioStreamPlayer3D** from requiring audio mixing when the listener is far away, which saves CPU resources.

* * *

[int](class_int.md#class-int) **max\_polyphony** = `1` [🔗](#class-audiostreamplayer3d-property-max-polyphony)

- void **set\_max\_polyphony**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_polyphony**()


The maximum number of sounds this node can play at the same time. Playing additional sounds after this value is reached will cut off the oldest sounds.

* * *

[float](class_float.md#class-float) **panning\_strength** = `1.0` [🔗](#class-audiostreamplayer3d-property-panning-strength)

- void **set\_panning\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_panning\_strength**()


Scales the panning strength for this node by multiplying the base [ProjectSettings.audio/general/3d\_panning\_strength](class_projectsettings.md#class-projectsettings-property-audio-general-3d-panning-strength) by this factor. If the product is `0.0` then stereo panning is disabled and the volume is the same for all channels. If the product is `1.0` then one of the channels will be muted when the sound is located exactly to the left (or right) of the listener.

Two speaker stereo arrangements implement the [WebAudio standard for StereoPannerNode Panning](https://webaudio.github.io/web-audio-api/#stereopanner-algorithm) where the volume is cosine of half the azimuth angle to the ear.

For other speaker arrangements such as the 5.1 and 7.1 the SPCAP (Speaker-Placement Correction Amplitude) algorithm is implemented.

* * *

[float](class_float.md#class-float) **pitch\_scale** = `1.0` [🔗](#class-audiostreamplayer3d-property-pitch-scale)

- void **set\_pitch\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pitch\_scale**()


The pitch and the tempo of the audio, as a multiplier of the audio sample's sample rate.

* * *

[PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) **playback\_type** = `0` [🔗](#class-audiostreamplayer3d-property-playback-type)

- void **set\_playback\_type**(value: [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype))

- [PlaybackType](class_audioserver.md#enum-audioserver-playbacktype) **get\_playback\_type**()


**Experimental:** This property may be changed or removed in future versions.

The playback type of the stream player. If set other than to the default value, it will force that playback type.

* * *

[bool](class_bool.md#class-bool) **playing** = `false` [🔗](#class-audiostreamplayer3d-property-playing)

- void **set\_playing**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_playing**()


If `true`, audio is playing or is queued to be played (see [play()](#class-audiostreamplayer3d-method-play)).

* * *

[AudioStream](class_audiostream.md#class-audiostream) **stream** [🔗](#class-audiostreamplayer3d-property-stream)

- void **set\_stream**(value: [AudioStream](class_audiostream.md#class-audiostream))

- [AudioStream](class_audiostream.md#class-audiostream) **get\_stream**()


The [AudioStream](class_audiostream.md#class-audiostream) resource to be played.

* * *

[bool](class_bool.md#class-bool) **stream\_paused** = `false` [🔗](#class-audiostreamplayer3d-property-stream-paused)

- void **set\_stream\_paused**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_stream\_paused**()


If `true`, the playback is paused. You can resume it by setting [stream\_paused](#class-audiostreamplayer3d-property-stream-paused) to `false`.

* * *

[float](class_float.md#class-float) **unit\_size** = `10.0` [🔗](#class-audiostreamplayer3d-property-unit-size)

- void **set\_unit\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_unit\_size**()


The factor for the attenuation effect. Higher values make the sound audible over a larger distance.

* * *

[float](class_float.md#class-float) **volume\_db** = `0.0` [🔗](#class-audiostreamplayer3d-property-volume-db)

- void **set\_volume\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volume\_db**()


The base sound level before attenuation, in decibels.

* * *

[float](class_float.md#class-float) **volume\_linear** [🔗](#class-audiostreamplayer3d-property-volume-linear)

- void **set\_volume\_linear**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volume\_linear**()


The base sound level before attenuation, as a linear value.

**Note:** This member modifies [volume\_db](#class-audiostreamplayer3d-property-volume-db) for convenience. The returned value is equivalent to the result of [@GlobalScope.db\_to\_linear()](class_@globalscope.md#class-globalscope-method-db-to-linear) on [volume\_db](#class-audiostreamplayer3d-property-volume-db). Setting this member is equivalent to setting [volume\_db](#class-audiostreamplayer3d-property-volume-db) to the result of [@GlobalScope.linear\_to\_db()](class_@globalscope.md#class-globalscope-method-linear-to-db) on a value.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_playback\_position**() [🔗](#class-audiostreamplayer3d-method-get-playback-position)

Returns the position in the [AudioStream](class_audiostream.md#class-audiostream).

* * *

[AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) **get\_stream\_playback**() [🔗](#class-audiostreamplayer3d-method-get-stream-playback)

Returns the [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) object associated with this **AudioStreamPlayer3D**.

* * *

[bool](class_bool.md#class-bool) **has\_stream\_playback**() [🔗](#class-audiostreamplayer3d-method-has-stream-playback)

Returns whether the [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer) can return the [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) object or not.

* * *

void **play**(from\_position: [float](class_float.md#class-float) = 0.0) [🔗](#class-audiostreamplayer3d-method-play)

Queues the audio to play on the next physics frame, from the given position `from_position`, in seconds.

* * *

void **seek**(to\_position: [float](class_float.md#class-float)) [🔗](#class-audiostreamplayer3d-method-seek)

Sets the position from which audio will be played, in seconds.

* * *

void **stop**() [🔗](#class-audiostreamplayer3d-method-stop)

Stops the audio.

[Previous](class_audiostreamplayer2d.md "AudioStreamPlayer2D") [Next](class_backbuffercopy.md "BackBufferCopy")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamplayer2d.md "AudioStreamPlayer2D") [Next](class_backbuffercopy.md "BackBufferCopy")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).