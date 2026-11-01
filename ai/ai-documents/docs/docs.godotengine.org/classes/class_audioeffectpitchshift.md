---
title: AudioEffectPitchShift — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectpitchshift.html
crawled_at: "2026-08-13T10:20:00+12:00"
content_hash: 8ff7107aae5b3458f2bae090bff2fb4922a37b6842b18bd1df501399b418bfd0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectPitchShift

* * *

# AudioEffectPitchShift

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Adds a pitch-shifting audio effect to an audio bus.

Raises or lowers the pitch of original sound.

## Description

Allows modulation of pitch independently of tempo. All frequencies can be increased/decreased with minimal effect on transients.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [FFTSize](#enum-audioeffectpitchshift-fftsize) | [fft\_size](#class-audioeffectpitchshift-property-fft-size) | `3` |
| [int](class_int.md#class-int) | [oversampling](#class-audioeffectpitchshift-property-oversampling) | `4` |
| [float](class_float.md#class-float) | [pitch\_scale](#class-audioeffectpitchshift-property-pitch-scale) | `1.0` |

* * *

## Enumerations

enum **FFTSize**: [🔗](#enum-audioeffectpitchshift-fftsize)

[FFTSize](#enum-audioeffectpitchshift-fftsize) **FFT\_SIZE\_256** = `0`

Use a buffer of 256 samples for the Fast Fourier transform. Lowest latency, but least stable over time.

[FFTSize](#enum-audioeffectpitchshift-fftsize) **FFT\_SIZE\_512** = `1`

Use a buffer of 512 samples for the Fast Fourier transform. Low latency, but less stable over time.

[FFTSize](#enum-audioeffectpitchshift-fftsize) **FFT\_SIZE\_1024** = `2`

Use a buffer of 1024 samples for the Fast Fourier transform. This is a compromise between latency and stability over time.

[FFTSize](#enum-audioeffectpitchshift-fftsize) **FFT\_SIZE\_2048** = `3`

Use a buffer of 2048 samples for the Fast Fourier transform. High latency, but stable over time.

[FFTSize](#enum-audioeffectpitchshift-fftsize) **FFT\_SIZE\_4096** = `4`

Use a buffer of 4096 samples for the Fast Fourier transform. Highest latency, but most stable over time.

[FFTSize](#enum-audioeffectpitchshift-fftsize) **FFT\_SIZE\_MAX** = `5`

Represents the size of the [FFTSize](#enum-audioeffectpitchshift-fftsize) enum.

* * *

## Property Descriptions

[FFTSize](#enum-audioeffectpitchshift-fftsize) **fft\_size** = `3` [🔗](#class-audioeffectpitchshift-property-fft-size)

- void **set\_fft\_size**(value: [FFTSize](#enum-audioeffectpitchshift-fftsize))

- [FFTSize](#enum-audioeffectpitchshift-fftsize) **get\_fft\_size**()


The size of the [Fast Fourier transform](https://en.wikipedia.org/wiki/Fast_Fourier_transform) buffer. Higher values smooth out the effect over time, but have greater latency. The effects of this higher latency are especially noticeable on sounds that have sudden amplitude changes.

* * *

[int](class_int.md#class-int) **oversampling** = `4` [🔗](#class-audioeffectpitchshift-property-oversampling)

- void **set\_oversampling**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_oversampling**()


The oversampling factor to use. Higher values result in better quality, but are more demanding on the CPU and may cause audio cracking if the CPU can't keep up.

* * *

[float](class_float.md#class-float) **pitch\_scale** = `1.0` [🔗](#class-audioeffectpitchshift-property-pitch-scale)

- void **set\_pitch\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pitch\_scale**()


The pitch scale to use. `1.0` is the default pitch and plays sounds unaffected. [pitch\_scale](#class-audioeffectpitchshift-property-pitch-scale) can range from `0.0` (infinitely low pitch, inaudible) to `16` (16 times higher than the initial pitch).

[Previous](class_audioeffectphaser.md "AudioEffectPhaser") [Next](class_audioeffectrecord.md "AudioEffectRecord")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectphaser.md "AudioEffectPhaser") [Next](class_audioeffectrecord.md "AudioEffectRecord")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).