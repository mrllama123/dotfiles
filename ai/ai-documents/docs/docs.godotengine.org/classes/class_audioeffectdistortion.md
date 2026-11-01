---
title: AudioEffectDistortion — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectdistortion.html
crawled_at: "2026-08-13T10:40:33+12:00"
content_hash: 6845e50d23da78dfccedcaeba10fc817c1ee9f7a53fe63b9c01db6c3e65a17f2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectDistortion

* * *

# AudioEffectDistortion

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Adds a distortion audio effect to an Audio bus.

Modifies the sound to make it distorted.

## Description

Different types are available: clip, tan, lo-fi (bit crushing), overdrive, or waveshape.

By distorting the waveform the frequency content changes, which will often make the sound "crunchy" or "abrasive". For games, it can simulate sound coming from some saturated device or speaker very efficiently.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [drive](#class-audioeffectdistortion-property-drive) | `0.0` |
| [float](class_float.md#class-float) | [keep\_hf\_hz](#class-audioeffectdistortion-property-keep-hf-hz) | `16000.0` |
| [Mode](#enum-audioeffectdistortion-mode) | [mode](#class-audioeffectdistortion-property-mode) | `0` |
| [float](class_float.md#class-float) | [post\_gain](#class-audioeffectdistortion-property-post-gain) | `0.0` |
| [float](class_float.md#class-float) | [pre\_gain](#class-audioeffectdistortion-property-pre-gain) | `0.0` |

* * *

## Enumerations

enum **Mode**: [🔗](#enum-audioeffectdistortion-mode)

[Mode](#enum-audioeffectdistortion-mode) **MODE\_CLIP** = `0`

Digital distortion effect which cuts off peaks at the top and bottom of the waveform.

[Mode](#enum-audioeffectdistortion-mode) **MODE\_ATAN** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Mode](#enum-audioeffectdistortion-mode) **MODE\_LOFI** = `2`

Low-resolution digital distortion effect (bit depth reduction). You can use it to emulate the sound of early digital audio devices.

[Mode](#enum-audioeffectdistortion-mode) **MODE\_OVERDRIVE** = `3`

Emulates the warm distortion produced by a field effect transistor, which is commonly used in solid-state musical instrument amplifiers. The [drive](#class-audioeffectdistortion-property-drive) property has no effect in this mode.

[Mode](#enum-audioeffectdistortion-mode) **MODE\_WAVESHAPE** = `4`

Waveshaper distortions are used mainly by electronic musicians to achieve an extra-abrasive sound.

* * *

## Property Descriptions

[float](class_float.md#class-float) **drive** = `0.0` [🔗](#class-audioeffectdistortion-property-drive)

- void **set\_drive**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_drive**()


Distortion power. Value can range from 0 to 1.

* * *

[float](class_float.md#class-float) **keep\_hf\_hz** = `16000.0` [🔗](#class-audioeffectdistortion-property-keep-hf-hz)

- void **set\_keep\_hf\_hz**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_keep\_hf\_hz**()


High-pass filter, in Hz. Frequencies higher than this value will not be affected by the distortion. Value can range from 1 to 20000.

* * *

[Mode](#enum-audioeffectdistortion-mode) **mode** = `0` [🔗](#class-audioeffectdistortion-property-mode)

- void **set\_mode**(value: [Mode](#enum-audioeffectdistortion-mode))

- [Mode](#enum-audioeffectdistortion-mode) **get\_mode**()


Distortion type.

* * *

[float](class_float.md#class-float) **post\_gain** = `0.0` [🔗](#class-audioeffectdistortion-property-post-gain)

- void **set\_post\_gain**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_post\_gain**()


Increases or decreases the volume after the effect, in decibels. Value can range from -80 to 24.

* * *

[float](class_float.md#class-float) **pre\_gain** = `0.0` [🔗](#class-audioeffectdistortion-property-pre-gain)

- void **set\_pre\_gain**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pre\_gain**()


Increases or decreases the volume before the effect, in decibels. Value can range from -60 to 60.

[Previous](class_audioeffectdelay.md "AudioEffectDelay") [Next](class_audioeffecteq.md "AudioEffectEQ")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectdelay.md "AudioEffectDelay") [Next](class_audioeffecteq.md "AudioEffectEQ")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).