---
title: AudioEffectSpectrumAnalyzer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectspectrumanalyzer.html
crawled_at: "2026-08-13T10:23:20+12:00"
content_hash: c9fd02796b9e24eb33e064adfc7b2742349c582f4f2b5def4bd321a86f8a84fa
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectSpectrumAnalyzer

* * *

# AudioEffectSpectrumAnalyzer

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Audio effect that can be used for real-time audio visualizations.

## Description

This audio effect does not affect sound output, but can be used for real-time audio visualizations.

This resource configures an [AudioEffectSpectrumAnalyzerInstance](class_audioeffectspectrumanalyzerinstance.md#class-audioeffectspectrumanalyzerinstance), which performs the actual analysis at runtime. An instance can be obtained with [AudioServer.get\_bus\_effect\_instance()](class_audioserver.md#class-audioserver-method-get-bus-effect-instance).

See also [AudioStreamGenerator](class_audiostreamgenerator.md#class-audiostreamgenerator) for procedurally generating sounds.

## Tutorials

- [Audio Spectrum Visualizer Demo](https://godotengine.org/asset-library/asset/2762)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [buffer\_length](#class-audioeffectspectrumanalyzer-property-buffer-length) | `2.0` |
| [FFTSize](#enum-audioeffectspectrumanalyzer-fftsize) | [fft\_size](#class-audioeffectspectrumanalyzer-property-fft-size) | `2` |
| [float](class_float.md#class-float) | [tap\_back\_pos](#class-audioeffectspectrumanalyzer-property-tap-back-pos) | `0.01` |

* * *

## Enumerations

enum **FFTSize**: [🔗](#enum-audioeffectspectrumanalyzer-fftsize)

[FFTSize](#enum-audioeffectspectrumanalyzer-fftsize) **FFT\_SIZE\_256** = `0`

Use a buffer of 256 samples for the Fast Fourier transform. Lowest latency, but least stable over time.

[FFTSize](#enum-audioeffectspectrumanalyzer-fftsize) **FFT\_SIZE\_512** = `1`

Use a buffer of 512 samples for the Fast Fourier transform. Low latency, but less stable over time.

[FFTSize](#enum-audioeffectspectrumanalyzer-fftsize) **FFT\_SIZE\_1024** = `2`

Use a buffer of 1024 samples for the Fast Fourier transform. This is a compromise between latency and stability over time.

[FFTSize](#enum-audioeffectspectrumanalyzer-fftsize) **FFT\_SIZE\_2048** = `3`

Use a buffer of 2048 samples for the Fast Fourier transform. High latency, but stable over time.

[FFTSize](#enum-audioeffectspectrumanalyzer-fftsize) **FFT\_SIZE\_4096** = `4`

Use a buffer of 4096 samples for the Fast Fourier transform. Highest latency, but most stable over time.

[FFTSize](#enum-audioeffectspectrumanalyzer-fftsize) **FFT\_SIZE\_MAX** = `5`

Represents the size of the [FFTSize](#enum-audioeffectspectrumanalyzer-fftsize) enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **buffer\_length** = `2.0` [🔗](#class-audioeffectspectrumanalyzer-property-buffer-length)

- void **set\_buffer\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_buffer\_length**()


The length of the buffer to keep (in seconds). Higher values keep data around for longer, but require more memory.

* * *

[FFTSize](#enum-audioeffectspectrumanalyzer-fftsize) **fft\_size** = `2` [🔗](#class-audioeffectspectrumanalyzer-property-fft-size)

- void **set\_fft\_size**(value: [FFTSize](#enum-audioeffectspectrumanalyzer-fftsize))

- [FFTSize](#enum-audioeffectspectrumanalyzer-fftsize) **get\_fft\_size**()


The size of the [Fast Fourier transform](https://en.wikipedia.org/wiki/Fast_Fourier_transform) buffer. Higher values smooth out the spectrum analysis over time, but have greater latency. The effects of this higher latency are especially noticeable with sudden amplitude changes.

* * *

[float](class_float.md#class-float) **tap\_back\_pos** = `0.01` [🔗](#class-audioeffectspectrumanalyzer-property-tap-back-pos)

- void **set\_tap\_back\_pos**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_tap\_back\_pos**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_audioeffectreverb.md "AudioEffectReverb") [Next](class_audioeffectstereoenhance.md "AudioEffectStereoEnhance")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectreverb.md "AudioEffectReverb") [Next](class_audioeffectstereoenhance.md "AudioEffectStereoEnhance")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).