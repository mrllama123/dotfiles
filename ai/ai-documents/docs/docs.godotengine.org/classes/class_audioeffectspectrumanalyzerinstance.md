---
title: AudioEffectSpectrumAnalyzerInstance — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectspectrumanalyzerinstance.html
crawled_at: "2026-08-13T10:19:02+12:00"
content_hash: 83982a4ad0171acf0775098359bc7f7ca78a5711b7bff258b3d31ef71c9be369
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectSpectrumAnalyzerInstance

* * *

# AudioEffectSpectrumAnalyzerInstance

**Inherits:** [AudioEffectInstance](class_audioeffectinstance.md#class-audioeffectinstance) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Queryable instance of an [AudioEffectSpectrumAnalyzer](class_audioeffectspectrumanalyzer.md#class-audioeffectspectrumanalyzer).

## Description

The runtime part of an [AudioEffectSpectrumAnalyzer](class_audioeffectspectrumanalyzer.md#class-audioeffectspectrumanalyzer), which can be used to query the magnitude of a frequency range on its host bus.

An instance of this class can be obtained with [AudioServer.get\_bus\_effect\_instance()](class_audioserver.md#class-audioserver-method-get-bus-effect-instance).

## Tutorials

- [Audio Spectrum Visualizer Demo](https://godotengine.org/asset-library/asset/2762)


## Methods

|     |     |
| --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [get\_magnitude\_for\_frequency\_range](#class-audioeffectspectrumanalyzerinstance-method-get-magnitude-for-frequency-range)(from\_hz: [float](class_float.md#class-float), to\_hz: [float](class_float.md#class-float), mode: [MagnitudeMode](#enum-audioeffectspectrumanalyzerinstance-magnitudemode) = 1) const |

* * *

## Enumerations

enum **MagnitudeMode**: [🔗](#enum-audioeffectspectrumanalyzerinstance-magnitudemode)

[MagnitudeMode](#enum-audioeffectspectrumanalyzerinstance-magnitudemode) **MAGNITUDE\_AVERAGE** = `0`

Use the average value across the frequency range as magnitude.

[MagnitudeMode](#enum-audioeffectspectrumanalyzerinstance-magnitudemode) **MAGNITUDE\_MAX** = `1`

Use the maximum value of the frequency range as magnitude.

* * *

## Method Descriptions

[Vector2](class_vector2.md#class-vector2) **get\_magnitude\_for\_frequency\_range**(from\_hz: [float](class_float.md#class-float), to\_hz: [float](class_float.md#class-float), mode: [MagnitudeMode](#enum-audioeffectspectrumanalyzerinstance-magnitudemode) = 1) const [🔗](#class-audioeffectspectrumanalyzerinstance-method-get-magnitude-for-frequency-range)

Returns the magnitude of the frequencies from `from_hz` to `to_hz` in linear energy as a Vector2. The `x` component of the return value represents the left stereo channel, and `y` represents the right channel.

`mode` determines how the frequency range will be processed.

[Previous](class_audioeffectinstance.md "AudioEffectInstance") [Next](class_audiosample.md "AudioSample")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectinstance.md "AudioEffectInstance") [Next](class_audiosample.md "AudioSample")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).