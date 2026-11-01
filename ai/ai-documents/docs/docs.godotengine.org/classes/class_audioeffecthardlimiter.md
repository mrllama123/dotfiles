---
title: AudioEffectHardLimiter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffecthardlimiter.html
crawled_at: "2026-08-13T10:35:27+12:00"
content_hash: 8c5754fcf07ff9cfa38bf9dde41436fecb9f5ca238441bdc196506a631a1a27a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectHardLimiter

* * *

# AudioEffectHardLimiter

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Adds a hard limiter audio effect to an Audio bus.

## Description

A limiter is an effect designed to disallow sound from going over a given dB threshold. Hard limiters predict volume peaks, and will smoothly apply gain reduction when a peak crosses the ceiling threshold to prevent clipping and distortion. It preserves the waveform and prevents it from crossing the ceiling threshold. Adding one in the Master bus is recommended as a safety measure to prevent sudden volume peaks from occurring, and to prevent distortion caused by clipping.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [ceiling\_db](#class-audioeffecthardlimiter-property-ceiling-db) | `-0.3` |
| [float](class_float.md#class-float) | [pre\_gain\_db](#class-audioeffecthardlimiter-property-pre-gain-db) | `0.0` |
| [float](class_float.md#class-float) | [release](#class-audioeffecthardlimiter-property-release) | `0.1` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **ceiling\_db** = `-0.3` [🔗](#class-audioeffecthardlimiter-property-ceiling-db)

- void **set\_ceiling\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ceiling\_db**()


The waveform's maximum allowed value, in decibels. This value can range from `-24.0` to `0.0`.

The default value of `-0.3` prevents potential inter-sample peaks (ISP) from crossing over 0 dB, which can cause slight distortion on some older hardware.

* * *

[float](class_float.md#class-float) **pre\_gain\_db** = `0.0` [🔗](#class-audioeffecthardlimiter-property-pre-gain-db)

- void **set\_pre\_gain\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pre\_gain\_db**()


Gain to apply before limiting, in decibels.

* * *

[float](class_float.md#class-float) **release** = `0.1` [🔗](#class-audioeffecthardlimiter-property-release)

- void **set\_release**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_release**()


Time it takes in seconds for the gain reduction to fully release.

[Previous](class_audioeffectfilter.md "AudioEffectFilter") [Next](class_audioeffecthighpassfilter.md "AudioEffectHighPassFilter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectfilter.md "AudioEffectFilter") [Next](class_audioeffecthighpassfilter.md "AudioEffectHighPassFilter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).