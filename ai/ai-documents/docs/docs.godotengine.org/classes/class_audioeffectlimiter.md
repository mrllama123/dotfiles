---
title: AudioEffectLimiter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectlimiter.html
crawled_at: "2026-08-13T10:28:17+12:00"
content_hash: 0597429ee8f7ab989f09b684fd7f5a28b49a83531a1467d79377086c87da0ddc
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectLimiter

* * *

# AudioEffectLimiter

**Deprecated:** Use [AudioEffectHardLimiter](class_audioeffecthardlimiter.md#class-audioeffecthardlimiter) instead.

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Adds a soft-clip limiter audio effect to an Audio bus.

## Description

A limiter is similar to a compressor, but it's less flexible and designed to disallow sound going over a given dB threshold. Adding one in the Master bus is always recommended to reduce the effects of clipping.

Soft clipping starts to reduce the peaks a little below the threshold level and progressively increases its effect as the input level increases such that the threshold is never exceeded.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [ceiling\_db](#class-audioeffectlimiter-property-ceiling-db) | `-0.1` |
| [float](class_float.md#class-float) | [soft\_clip\_db](#class-audioeffectlimiter-property-soft-clip-db) | `2.0` |
| [float](class_float.md#class-float) | [soft\_clip\_ratio](#class-audioeffectlimiter-property-soft-clip-ratio) | `10.0` |
| [float](class_float.md#class-float) | [threshold\_db](#class-audioeffectlimiter-property-threshold-db) | `0.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **ceiling\_db** = `-0.1` [🔗](#class-audioeffectlimiter-property-ceiling-db)

- void **set\_ceiling\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ceiling\_db**()


The waveform's maximum allowed value, in decibels. Value can range from -20 to -0.1.

* * *

[float](class_float.md#class-float) **soft\_clip\_db** = `2.0` [🔗](#class-audioeffectlimiter-property-soft-clip-db)

- void **set\_soft\_clip\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_soft\_clip\_db**()


Applies a gain to the limited waves, in decibels. Value can range from 0 to 6.

* * *

[float](class_float.md#class-float) **soft\_clip\_ratio** = `10.0` [🔗](#class-audioeffectlimiter-property-soft-clip-ratio)

- void **set\_soft\_clip\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_soft\_clip\_ratio**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **threshold\_db** = `0.0` [🔗](#class-audioeffectlimiter-property-threshold-db)

- void **set\_threshold\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_threshold\_db**()


Threshold from which the limiter begins to be active, in decibels. Value can range from -30 to 0.

[Previous](class_audioeffecthighshelffilter.md "AudioEffectHighShelfFilter") [Next](class_audioeffectlowpassfilter.md "AudioEffectLowPassFilter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffecthighshelffilter.md "AudioEffectHighShelfFilter") [Next](class_audioeffectlowpassfilter.md "AudioEffectLowPassFilter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).