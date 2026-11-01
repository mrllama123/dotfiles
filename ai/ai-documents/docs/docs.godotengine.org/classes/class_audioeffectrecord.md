---
title: AudioEffectRecord — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectrecord.html
crawled_at: "2026-08-13T10:40:32+12:00"
content_hash: 9099c9c9f01c2f1fee8ba4d0c71b07600dd191827bab2310a2e9539d2b898b93
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectRecord

* * *

# AudioEffectRecord

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Audio effect used for recording the sound from an audio bus.

## Description

Allows the user to record the sound from an audio bus into an [AudioStreamWAV](class_audiostreamwav.md#class-audiostreamwav). When used on the "Master" audio bus, this includes all audio output by Godot.

Unlike [AudioEffectCapture](class_audioeffectcapture.md#class-audioeffectcapture), this effect encodes the recording with the given format (8-bit, 16-bit, or compressed) instead of giving access to the raw audio samples.

Can be used (with an [AudioStreamMicrophone](class_audiostreammicrophone.md#class-audiostreammicrophone)) to record from a microphone.

**Note:** [ProjectSettings.audio/driver/enable\_input](class_projectsettings.md#class-projectsettings-property-audio-driver-enable-input) must be `true` for audio input to work. See also that setting's description for caveats related to permissions and operating system privacy settings.

## Tutorials

- [Recording with microphone](../tutorials/audio/recording_with_microphone.md)

- [Audio Microphone Record Demo](https://godotengine.org/asset-library/asset/2760)


## Properties

|     |     |     |
| --- | --- | --- |
| [Format](class_audiostreamwav.md#enum-audiostreamwav-format) | [format](#class-audioeffectrecord-property-format) | `1` |

## Methods

|     |     |
| --- | --- |
| [AudioStreamWAV](class_audiostreamwav.md#class-audiostreamwav) | [get\_recording](#class-audioeffectrecord-method-get-recording)() const |
| [bool](class_bool.md#class-bool) | [is\_recording\_active](#class-audioeffectrecord-method-is-recording-active)() const |
| void | [set\_recording\_active](#class-audioeffectrecord-method-set-recording-active)(record: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[Format](class_audiostreamwav.md#enum-audiostreamwav-format) **format** = `1` [🔗](#class-audioeffectrecord-property-format)

- void **set\_format**(value: [Format](class_audiostreamwav.md#enum-audiostreamwav-format))

- [Format](class_audiostreamwav.md#enum-audiostreamwav-format) **get\_format**()


Specifies the format in which the sample will be recorded.

* * *

## Method Descriptions

[AudioStreamWAV](class_audiostreamwav.md#class-audiostreamwav) **get\_recording**() const [🔗](#class-audioeffectrecord-method-get-recording)

Returns the recorded sample.

* * *

[bool](class_bool.md#class-bool) **is\_recording\_active**() const [🔗](#class-audioeffectrecord-method-is-recording-active)

Returns whether the recording is active or not.

* * *

void **set\_recording\_active**(record: [bool](class_bool.md#class-bool)) [🔗](#class-audioeffectrecord-method-set-recording-active)

If `true`, the sound will be recorded. Note that restarting the recording will remove the previously recorded sample.

[Previous](class_audioeffectpitchshift.md "AudioEffectPitchShift") [Next](class_audioeffectreverb.md "AudioEffectReverb")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectpitchshift.md "AudioEffectPitchShift") [Next](class_audioeffectreverb.md "AudioEffectReverb")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).