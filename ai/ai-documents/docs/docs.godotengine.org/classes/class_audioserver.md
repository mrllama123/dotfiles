---
title: AudioServer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioserver.html
crawled_at: "2026-08-13T10:22:33+12:00"
content_hash: fc52509024dc42856230e7ad58c6369b8e94f82ed78e965c3ed1f52b3c0705a1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioServer

* * *

# AudioServer

**Inherits:** [Object](class_object.md#class-object)

Server interface for low-level audio access.

## Description

**AudioServer** is a low-level server interface for audio access. It is in charge of creating sample data (playable audio) as well as its playback via a voice interface.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)

- [Audio Device Changer Demo](https://godotengine.org/asset-library/asset/2758)

- [Audio Microphone Record Demo](https://godotengine.org/asset-library/asset/2760)

- [Audio Spectrum Visualizer Demo](https://godotengine.org/asset-library/asset/2762)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bus\_count](#class-audioserver-property-bus-count) | `1` |
| [String](class_string.md#class-string) | [input\_device](#class-audioserver-property-input-device) | `"Default"` |
| [String](class_string.md#class-string) | [output\_device](#class-audioserver-property-output-device) | `"Default"` |
| [float](class_float.md#class-float) | [playback\_speed\_scale](#class-audioserver-property-playback-speed-scale) | `1.0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_bus](#class-audioserver-method-add-bus)(at\_position: [int](class_int.md#class-int) = -1) |
| void | [add\_bus\_effect](#class-audioserver-method-add-bus-effect)(bus\_idx: [int](class_int.md#class-int), effect: [AudioEffect](class_audioeffect.md#class-audioeffect), at\_position: [int](class_int.md#class-int) = -1) |
| [AudioBusLayout](class_audiobuslayout.md#class-audiobuslayout) | [generate\_bus\_layout](#class-audioserver-method-generate-bus-layout)() const |
| [int](class_int.md#class-int) | [get\_bus\_channels](#class-audioserver-method-get-bus-channels)(bus\_idx: [int](class_int.md#class-int)) const |
| [AudioEffect](class_audioeffect.md#class-audioeffect) | [get\_bus\_effect](#class-audioserver-method-get-bus-effect)(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_bus\_effect\_count](#class-audioserver-method-get-bus-effect-count)(bus\_idx: [int](class_int.md#class-int)) |
| [AudioEffectInstance](class_audioeffectinstance.md#class-audioeffectinstance) | [get\_bus\_effect\_instance](#class-audioserver-method-get-bus-effect-instance)(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int), channel: [int](class_int.md#class-int) = 0) |
| [int](class_int.md#class-int) | [get\_bus\_index](#class-audioserver-method-get-bus-index)(bus\_name: [StringName](class_stringname.md#class-stringname)) const |
| [String](class_string.md#class-string) | [get\_bus\_name](#class-audioserver-method-get-bus-name)(bus\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_bus\_peak\_volume\_left\_db](#class-audioserver-method-get-bus-peak-volume-left-db)(bus\_idx: [int](class_int.md#class-int), channel: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_bus\_peak\_volume\_right\_db](#class-audioserver-method-get-bus-peak-volume-right-db)(bus\_idx: [int](class_int.md#class-int), channel: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_bus\_send](#class-audioserver-method-get-bus-send)(bus\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_bus\_volume\_db](#class-audioserver-method-get-bus-volume-db)(bus\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_bus\_volume\_linear](#class-audioserver-method-get-bus-volume-linear)(bus\_idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_driver\_name](#class-audioserver-method-get-driver-name)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_input\_device\_list](#class-audioserver-method-get-input-device-list)() |
| [float](class_float.md#class-float) | [get\_input\_mix\_rate](#class-audioserver-method-get-input-mix-rate)() const |
| [float](class_float.md#class-float) | [get\_mix\_rate](#class-audioserver-method-get-mix-rate)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_output\_device\_list](#class-audioserver-method-get-output-device-list)() |
| [float](class_float.md#class-float) | [get\_output\_latency](#class-audioserver-method-get-output-latency)() const |
| [SpeakerMode](#enum-audioserver-speakermode) | [get\_speaker\_mode](#class-audioserver-method-get-speaker-mode)() const |
| [float](class_float.md#class-float) | [get\_time\_since\_last\_mix](#class-audioserver-method-get-time-since-last-mix)() const |
| [float](class_float.md#class-float) | [get\_time\_to\_next\_mix](#class-audioserver-method-get-time-to-next-mix)() const |
| [bool](class_bool.md#class-bool) | [is\_bus\_bypassing\_effects](#class-audioserver-method-is-bus-bypassing-effects)(bus\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_bus\_effect\_enabled](#class-audioserver-method-is-bus-effect-enabled)(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_bus\_mute](#class-audioserver-method-is-bus-mute)(bus\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_bus\_solo](#class-audioserver-method-is-bus-solo)(bus\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_stream\_registered\_as\_sample](#class-audioserver-method-is-stream-registered-as-sample)(stream: [AudioStream](class_audiostream.md#class-audiostream)) |
| void | [lock](#class-audioserver-method-lock)() |
| void | [move\_bus](#class-audioserver-method-move-bus)(index: [int](class_int.md#class-int), to\_index: [int](class_int.md#class-int)) |
| void | [register\_stream\_as\_sample](#class-audioserver-method-register-stream-as-sample)(stream: [AudioStream](class_audiostream.md#class-audiostream)) |
| void | [remove\_bus](#class-audioserver-method-remove-bus)(index: [int](class_int.md#class-int)) |
| void | [remove\_bus\_effect](#class-audioserver-method-remove-bus-effect)(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int)) |
| void | [set\_bus\_bypass\_effects](#class-audioserver-method-set-bus-bypass-effects)(bus\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_bus\_effect\_enabled](#class-audioserver-method-set-bus-effect-enabled)(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_bus\_layout](#class-audioserver-method-set-bus-layout)(bus\_layout: [AudioBusLayout](class_audiobuslayout.md#class-audiobuslayout)) |
| void | [set\_bus\_mute](#class-audioserver-method-set-bus-mute)(bus\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_bus\_name](#class-audioserver-method-set-bus-name)(bus\_idx: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_bus\_send](#class-audioserver-method-set-bus-send)(bus\_idx: [int](class_int.md#class-int), send: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_bus\_solo](#class-audioserver-method-set-bus-solo)(bus\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_bus\_volume\_db](#class-audioserver-method-set-bus-volume-db)(bus\_idx: [int](class_int.md#class-int), volume\_db: [float](class_float.md#class-float)) |
| void | [set\_bus\_volume\_linear](#class-audioserver-method-set-bus-volume-linear)(bus\_idx: [int](class_int.md#class-int), volume\_linear: [float](class_float.md#class-float)) |
| void | [set\_enable\_tagging\_used\_audio\_streams](#class-audioserver-method-set-enable-tagging-used-audio-streams)(enable: [bool](class_bool.md#class-bool)) |
| void | [swap\_bus\_effects](#class-audioserver-method-swap-bus-effects)(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int), by\_effect\_idx: [int](class_int.md#class-int)) |
| void | [unlock](#class-audioserver-method-unlock)() |

* * *

## Signals

**bus\_layout\_changed**() [🔗](#class-audioserver-signal-bus-layout-changed)

Emitted when an audio bus is added, deleted, or moved.

* * *

**bus\_renamed**(bus\_index: [int](class_int.md#class-int), old\_name: [StringName](class_stringname.md#class-stringname), new\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-audioserver-signal-bus-renamed)

Emitted when the audio bus at `bus_index` is renamed from `old_name` to `new_name`.

* * *

## Enumerations

enum **SpeakerMode**: [🔗](#enum-audioserver-speakermode)

[SpeakerMode](#enum-audioserver-speakermode) **SPEAKER\_MODE\_STEREO** = `0`

Two or fewer speakers were detected.

[SpeakerMode](#enum-audioserver-speakermode) **SPEAKER\_SURROUND\_31** = `1`

A 3.1 channel surround setup was detected.

[SpeakerMode](#enum-audioserver-speakermode) **SPEAKER\_SURROUND\_51** = `2`

A 5.1 channel surround setup was detected.

[SpeakerMode](#enum-audioserver-speakermode) **SPEAKER\_SURROUND\_71** = `3`

A 7.1 channel surround setup was detected.

* * *

enum **PlaybackType**: [🔗](#enum-audioserver-playbacktype)

[PlaybackType](#enum-audioserver-playbacktype) **PLAYBACK\_TYPE\_DEFAULT** = `0`

**Experimental:** This constant may be changed or removed in future versions.

The playback will be considered of the type declared at [ProjectSettings.audio/general/default\_playback\_type](class_projectsettings.md#class-projectsettings-property-audio-general-default-playback-type).

[PlaybackType](#enum-audioserver-playbacktype) **PLAYBACK\_TYPE\_STREAM** = `1`

**Experimental:** This constant may be changed or removed in future versions.

Force the playback to be considered as a stream.

[PlaybackType](#enum-audioserver-playbacktype) **PLAYBACK\_TYPE\_SAMPLE** = `2`

**Experimental:** This constant may be changed or removed in future versions.

Force the playback to be considered as a sample. This can provide lower latency and more stable playback (with less risk of audio crackling), at the cost of having less flexibility.

**Note:** Only currently supported on the web platform.

**Note:** [AudioEffect](class_audioeffect.md#class-audioeffect) s are not supported when playback is considered as a sample.

[PlaybackType](#enum-audioserver-playbacktype) **PLAYBACK\_TYPE\_MAX** = `3`

**Experimental:** This constant may be changed or removed in future versions.

Represents the size of the [PlaybackType](#enum-audioserver-playbacktype) enum.

* * *

## Property Descriptions

[int](class_int.md#class-int) **bus\_count** = `1` [🔗](#class-audioserver-property-bus-count)

- void **set\_bus\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bus\_count**()


Number of available audio buses.

* * *

[String](class_string.md#class-string) **input\_device** = `"Default"` [🔗](#class-audioserver-property-input-device)

- void **set\_input\_device**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_input\_device**()


Name of the current device for audio input (see [get\_input\_device\_list()](#class-audioserver-method-get-input-device-list)). On systems with multiple audio inputs (such as analog, USB and HDMI audio), this can be used to select the audio input device. The value `"Default"` will record audio on the system-wide default audio input. If an invalid device name is set, the value will be reverted back to `"Default"`.

**Note:** [ProjectSettings.audio/driver/enable\_input](class_projectsettings.md#class-projectsettings-property-audio-driver-enable-input) must be `true` for audio input to work. See also that setting's description for caveats related to permissions and operating system privacy settings.

* * *

[String](class_string.md#class-string) **output\_device** = `"Default"` [🔗](#class-audioserver-property-output-device)

- void **set\_output\_device**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_output\_device**()


Name of the current device for audio output (see [get\_output\_device\_list()](#class-audioserver-method-get-output-device-list)). On systems with multiple audio outputs (such as analog, USB and HDMI audio), this can be used to select the audio output device. The value `"Default"` will play audio on the system-wide default audio output. If an invalid device name is set, the value will be reverted back to `"Default"`.

* * *

[float](class_float.md#class-float) **playback\_speed\_scale** = `1.0` [🔗](#class-audioserver-property-playback-speed-scale)

- void **set\_playback\_speed\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_playback\_speed\_scale**()


Scales the rate at which audio is played (i.e. setting it to `0.5` will make the audio be played at half its speed). See also [Engine.time\_scale](class_engine.md#class-engine-property-time-scale) to affect the general simulation speed, which is independent from [playback\_speed\_scale](#class-audioserver-property-playback-speed-scale).

* * *

## Method Descriptions

void **add\_bus**(at\_position: [int](class_int.md#class-int) = -1) [🔗](#class-audioserver-method-add-bus)

Adds a bus at `at_position`.

* * *

void **add\_bus\_effect**(bus\_idx: [int](class_int.md#class-int), effect: [AudioEffect](class_audioeffect.md#class-audioeffect), at\_position: [int](class_int.md#class-int) = -1) [🔗](#class-audioserver-method-add-bus-effect)

Adds an [AudioEffect](class_audioeffect.md#class-audioeffect) effect to the bus `bus_idx` at `at_position`.

* * *

[AudioBusLayout](class_audiobuslayout.md#class-audiobuslayout) **generate\_bus\_layout**() const [🔗](#class-audioserver-method-generate-bus-layout)

Generates an [AudioBusLayout](class_audiobuslayout.md#class-audiobuslayout) using the available buses and effects.

* * *

[int](class_int.md#class-int) **get\_bus\_channels**(bus\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-get-bus-channels)

Returns the number of channels of the bus at index `bus_idx`.

* * *

[AudioEffect](class_audioeffect.md#class-audioeffect) **get\_bus\_effect**(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int)) [🔗](#class-audioserver-method-get-bus-effect)

Returns the [AudioEffect](class_audioeffect.md#class-audioeffect) at position `effect_idx` in bus `bus_idx`.

* * *

[int](class_int.md#class-int) **get\_bus\_effect\_count**(bus\_idx: [int](class_int.md#class-int)) [🔗](#class-audioserver-method-get-bus-effect-count)

Returns the number of effects on the bus at `bus_idx`.

* * *

[AudioEffectInstance](class_audioeffectinstance.md#class-audioeffectinstance) **get\_bus\_effect\_instance**(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int), channel: [int](class_int.md#class-int) = 0) [🔗](#class-audioserver-method-get-bus-effect-instance)

Returns the [AudioEffectInstance](class_audioeffectinstance.md#class-audioeffectinstance) assigned to the given bus and effect indices (and optionally channel).

* * *

[int](class_int.md#class-int) **get\_bus\_index**(bus\_name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-audioserver-method-get-bus-index)

Returns the index of the bus with the name `bus_name`. Returns `-1` if no bus with the specified name exist.

* * *

[String](class_string.md#class-string) **get\_bus\_name**(bus\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-get-bus-name)

Returns the name of the bus with the index `bus_idx`.

* * *

[float](class_float.md#class-float) **get\_bus\_peak\_volume\_left\_db**(bus\_idx: [int](class_int.md#class-int), channel: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-get-bus-peak-volume-left-db)

Returns the peak volume of the left speaker at bus index `bus_idx` and channel index `channel`.

* * *

[float](class_float.md#class-float) **get\_bus\_peak\_volume\_right\_db**(bus\_idx: [int](class_int.md#class-int), channel: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-get-bus-peak-volume-right-db)

Returns the peak volume of the right speaker at bus index `bus_idx` and channel index `channel`.

* * *

[StringName](class_stringname.md#class-stringname) **get\_bus\_send**(bus\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-get-bus-send)

Returns the name of the bus that the bus at index `bus_idx` sends to.

* * *

[float](class_float.md#class-float) **get\_bus\_volume\_db**(bus\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-get-bus-volume-db)

Returns the volume of the bus at index `bus_idx` in dB.

* * *

[float](class_float.md#class-float) **get\_bus\_volume\_linear**(bus\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-get-bus-volume-linear)

Returns the volume of the bus at index `bus_idx` as a linear value.

**Note:** The returned value is equivalent to the result of [@GlobalScope.db\_to\_linear()](class_@globalscope.md#class-globalscope-method-db-to-linear) on the result of [get\_bus\_volume\_db()](#class-audioserver-method-get-bus-volume-db).

* * *

[String](class_string.md#class-string) **get\_driver\_name**() const [🔗](#class-audioserver-method-get-driver-name)

Returns the name of the current audio driver. The default usually depends on the operating system, but may be overridden via the `--audio-driver` [command line argument](../tutorials/editor/command_line_tutorial.md). `--headless` also automatically sets the audio driver to `Dummy`. See also [ProjectSettings.audio/driver/driver](class_projectsettings.md#class-projectsettings-property-audio-driver-driver).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_input\_device\_list**() [🔗](#class-audioserver-method-get-input-device-list)

Returns the names of all audio input devices detected on the system.

**Note:** [ProjectSettings.audio/driver/enable\_input](class_projectsettings.md#class-projectsettings-property-audio-driver-enable-input) must be `true` for audio input to work. See also that setting's description for caveats related to permissions and operating system privacy settings.

* * *

[float](class_float.md#class-float) **get\_input\_mix\_rate**() const [🔗](#class-audioserver-method-get-input-mix-rate)

Returns the sample rate at the input of the **AudioServer**.

* * *

[float](class_float.md#class-float) **get\_mix\_rate**() const [🔗](#class-audioserver-method-get-mix-rate)

Returns the sample rate at the output of the **AudioServer**.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_output\_device\_list**() [🔗](#class-audioserver-method-get-output-device-list)

Returns the names of all audio output devices detected on the system.

* * *

[float](class_float.md#class-float) **get\_output\_latency**() const [🔗](#class-audioserver-method-get-output-latency)

Returns the audio driver's effective output latency. This is based on [ProjectSettings.audio/driver/output\_latency](class_projectsettings.md#class-projectsettings-property-audio-driver-output-latency), but the exact returned value will differ depending on the operating system and audio driver.

**Note:** This can be expensive; it is not recommended to call [get\_output\_latency()](#class-audioserver-method-get-output-latency) every frame.

* * *

[SpeakerMode](#enum-audioserver-speakermode) **get\_speaker\_mode**() const [🔗](#class-audioserver-method-get-speaker-mode)

Returns the speaker configuration.

* * *

[float](class_float.md#class-float) **get\_time\_since\_last\_mix**() const [🔗](#class-audioserver-method-get-time-since-last-mix)

Returns the relative time since the last mix occurred.

* * *

[float](class_float.md#class-float) **get\_time\_to\_next\_mix**() const [🔗](#class-audioserver-method-get-time-to-next-mix)

Returns the relative time until the next mix occurs.

* * *

[bool](class_bool.md#class-bool) **is\_bus\_bypassing\_effects**(bus\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-is-bus-bypassing-effects)

If `true`, the bus at index `bus_idx` is bypassing effects.

* * *

[bool](class_bool.md#class-bool) **is\_bus\_effect\_enabled**(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-is-bus-effect-enabled)

If `true`, the effect at index `effect_idx` on the bus at index `bus_idx` is enabled.

* * *

[bool](class_bool.md#class-bool) **is\_bus\_mute**(bus\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-is-bus-mute)

If `true`, the bus at index `bus_idx` is muted.

* * *

[bool](class_bool.md#class-bool) **is\_bus\_solo**(bus\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioserver-method-is-bus-solo)

If `true`, the bus at index `bus_idx` is in solo mode.

* * *

[bool](class_bool.md#class-bool) **is\_stream\_registered\_as\_sample**(stream: [AudioStream](class_audiostream.md#class-audiostream)) [🔗](#class-audioserver-method-is-stream-registered-as-sample)

**Experimental:** This method may be changed or removed in future versions.

If `true`, the stream is registered as a sample. The engine will not have to register it before playing the sample.

If `false`, the stream will have to be registered before playing it. To prevent lag spikes, register the stream as sample with [register\_stream\_as\_sample()](#class-audioserver-method-register-stream-as-sample).

* * *

void **lock**() [🔗](#class-audioserver-method-lock)

Locks the audio driver's main loop.

**Note:** Remember to unlock it afterwards.

* * *

void **move\_bus**(index: [int](class_int.md#class-int), to\_index: [int](class_int.md#class-int)) [🔗](#class-audioserver-method-move-bus)

Moves the bus from index `index` to index `to_index`.

* * *

void **register\_stream\_as\_sample**(stream: [AudioStream](class_audiostream.md#class-audiostream)) [🔗](#class-audioserver-method-register-stream-as-sample)

**Experimental:** This method may be changed or removed in future versions.

Forces the registration of a stream as a sample.

**Note:** Lag spikes may occur when calling this method, especially on single-threaded builds. It is suggested to call this method while loading assets, where the lag spike could be masked, instead of registering the sample right before it needs to be played.

* * *

void **remove\_bus**(index: [int](class_int.md#class-int)) [🔗](#class-audioserver-method-remove-bus)

Removes the bus at index `index`.

* * *

void **remove\_bus\_effect**(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int)) [🔗](#class-audioserver-method-remove-bus-effect)

Removes the effect at index `effect_idx` from the bus at index `bus_idx`.

* * *

void **set\_bus\_bypass\_effects**(bus\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-audioserver-method-set-bus-bypass-effects)

If `true`, the bus at index `bus_idx` is bypassing effects.

* * *

void **set\_bus\_effect\_enabled**(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-audioserver-method-set-bus-effect-enabled)

If `true`, the effect at index `effect_idx` on the bus at index `bus_idx` is enabled.

* * *

void **set\_bus\_layout**(bus\_layout: [AudioBusLayout](class_audiobuslayout.md#class-audiobuslayout)) [🔗](#class-audioserver-method-set-bus-layout)

Overwrites the currently used [AudioBusLayout](class_audiobuslayout.md#class-audiobuslayout).

* * *

void **set\_bus\_mute**(bus\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-audioserver-method-set-bus-mute)

If `true`, the bus at index `bus_idx` is muted.

* * *

void **set\_bus\_name**(bus\_idx: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-audioserver-method-set-bus-name)

Sets the name of the bus at index `bus_idx` to `name`.

* * *

void **set\_bus\_send**(bus\_idx: [int](class_int.md#class-int), send: [StringName](class_stringname.md#class-stringname)) [🔗](#class-audioserver-method-set-bus-send)

Connects the output of the bus at `bus_idx` to the bus named `send`.

* * *

void **set\_bus\_solo**(bus\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-audioserver-method-set-bus-solo)

If `true`, the bus at index `bus_idx` is in solo mode.

* * *

void **set\_bus\_volume\_db**(bus\_idx: [int](class_int.md#class-int), volume\_db: [float](class_float.md#class-float)) [🔗](#class-audioserver-method-set-bus-volume-db)

Sets the volume in decibels of the bus at index `bus_idx` to `volume_db`.

* * *

void **set\_bus\_volume\_linear**(bus\_idx: [int](class_int.md#class-int), volume\_linear: [float](class_float.md#class-float)) [🔗](#class-audioserver-method-set-bus-volume-linear)

Sets the volume as a linear value of the bus at index `bus_idx` to `volume_linear`.

**Note:** Using this method is equivalent to calling [set\_bus\_volume\_db()](#class-audioserver-method-set-bus-volume-db) with the result of [@GlobalScope.linear\_to\_db()](class_@globalscope.md#class-globalscope-method-linear-to-db) on a value.

* * *

void **set\_enable\_tagging\_used\_audio\_streams**(enable: [bool](class_bool.md#class-bool)) [🔗](#class-audioserver-method-set-enable-tagging-used-audio-streams)

If set to `true`, all instances of [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) will call [AudioStreamPlayback.\_tag\_used\_streams()](class_audiostreamplayback.md#class-audiostreamplayback-private-method-tag-used-streams) every mix step.

**Note:** This is enabled by default in the editor, as it is used by editor plugins for the audio stream previews.

* * *

void **swap\_bus\_effects**(bus\_idx: [int](class_int.md#class-int), effect\_idx: [int](class_int.md#class-int), by\_effect\_idx: [int](class_int.md#class-int)) [🔗](#class-audioserver-method-swap-bus-effects)

Swaps the position of two effects in bus `bus_idx`.

* * *

void **unlock**() [🔗](#class-audioserver-method-unlock)

Unlocks the audio driver's main loop. (After locking it, you should always unlock it.)

[Previous](class_audiosampleplayback.md "AudioSamplePlayback") [Next](class_audiostreamgeneratorplayback.md "AudioStreamGeneratorPlayback")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiosampleplayback.md "AudioSamplePlayback") [Next](class_audiostreamgeneratorplayback.md "AudioStreamGeneratorPlayback")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).