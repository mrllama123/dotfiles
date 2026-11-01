---
title: AudioEffectCapture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectcapture.html
crawled_at: "2026-08-13T10:23:03+12:00"
content_hash: e0f9f5c1ca3c3fc45be8c187dcdf1147e5df02cf12fa04bc7755732448327079
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectCapture

* * *

# AudioEffectCapture

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Captures audio from an audio bus in real-time.

## Description

AudioEffectCapture is an AudioEffect which copies all audio frames from the attached audio effect bus into its internal ring buffer.

Application code should consume these audio frames from this ring buffer using [get\_buffer()](#class-audioeffectcapture-method-get-buffer) and process it as needed, for example to capture data from an [AudioStreamMicrophone](class_audiostreammicrophone.md#class-audiostreammicrophone), implement application-defined effects, or to transmit audio over the network. When capturing audio data from a microphone, the format of the samples will be stereo 32-bit floating-point PCM.

Unlike [AudioEffectRecord](class_audioeffectrecord.md#class-audioeffectrecord), this effect only returns the raw audio samples instead of encoding them into an [AudioStream](class_audiostream.md#class-audiostream).

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [buffer\_length](#class-audioeffectcapture-property-buffer-length) | `0.1` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [can\_get\_buffer](#class-audioeffectcapture-method-can-get-buffer)(frames: [int](class_int.md#class-int)) const |
| void | [clear\_buffer](#class-audioeffectcapture-method-clear-buffer)() |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_buffer](#class-audioeffectcapture-method-get-buffer)(frames: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_buffer\_length\_frames](#class-audioeffectcapture-method-get-buffer-length-frames)() const |
| [int](class_int.md#class-int) | [get\_discarded\_frames](#class-audioeffectcapture-method-get-discarded-frames)() const |
| [int](class_int.md#class-int) | [get\_frames\_available](#class-audioeffectcapture-method-get-frames-available)() const |
| [int](class_int.md#class-int) | [get\_pushed\_frames](#class-audioeffectcapture-method-get-pushed-frames)() const |

* * *

## Property Descriptions

[float](class_float.md#class-float) **buffer\_length** = `0.1` [🔗](#class-audioeffectcapture-property-buffer-length)

- void **set\_buffer\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_buffer\_length**()


Length of the internal ring buffer, in seconds. Setting the buffer length will have no effect if already initialized.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **can\_get\_buffer**(frames: [int](class_int.md#class-int)) const [🔗](#class-audioeffectcapture-method-can-get-buffer)

Returns `true` if at least `frames` audio frames are available to read in the internal ring buffer.

* * *

void **clear\_buffer**() [🔗](#class-audioeffectcapture-method-clear-buffer)

Clears the internal ring buffer.

**Note:** Calling this during a capture can cause the loss of samples which causes popping in the playback.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_buffer**(frames: [int](class_int.md#class-int)) [🔗](#class-audioeffectcapture-method-get-buffer)

Gets the next `frames` audio samples from the internal ring buffer.

Returns a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) containing exactly `frames` audio samples if available, or an empty [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) if insufficient data was available.

The samples are signed floating-point PCM between `-1` and `1`. You will have to scale them if you want to use them as 8 or 16-bit integer samples. ( `v = 0x7fff * samples[0].x`)

* * *

[int](class_int.md#class-int) **get\_buffer\_length\_frames**() const [🔗](#class-audioeffectcapture-method-get-buffer-length-frames)

Returns the total size of the internal ring buffer in frames.

* * *

[int](class_int.md#class-int) **get\_discarded\_frames**() const [🔗](#class-audioeffectcapture-method-get-discarded-frames)

Returns the number of audio frames discarded from the audio bus due to full buffer.

* * *

[int](class_int.md#class-int) **get\_frames\_available**() const [🔗](#class-audioeffectcapture-method-get-frames-available)

Returns the number of frames available to read using [get\_buffer()](#class-audioeffectcapture-method-get-buffer).

* * *

[int](class_int.md#class-int) **get\_pushed\_frames**() const [🔗](#class-audioeffectcapture-method-get-pushed-frames)

Returns the number of audio frames inserted from the audio bus.

[Previous](class_audioeffectbandpassfilter.md "AudioEffectBandPassFilter") [Next](class_audioeffectchorus.md "AudioEffectChorus")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectbandpassfilter.md "AudioEffectBandPassFilter") [Next](class_audioeffectchorus.md "AudioEffectChorus")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).