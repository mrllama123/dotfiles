---
title: AudioEffectStereoEnhance — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectstereoenhance.html
crawled_at: "2026-08-13T10:36:43+12:00"
content_hash: 7bdfd939d400b7fbfbf26aac85c5c01d89ab50ebd30eb7e5bd5514124a44517e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectStereoEnhance

* * *

# AudioEffectStereoEnhance

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An audio effect that can be used to adjust the intensity of stereo panning.

## Description

An audio effect that can be used to adjust the intensity of stereo panning.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [pan\_pullout](#class-audioeffectstereoenhance-property-pan-pullout) | `1.0` |
| [float](class_float.md#class-float) | [surround](#class-audioeffectstereoenhance-property-surround) | `0.0` |
| [float](class_float.md#class-float) | [time\_pullout\_ms](#class-audioeffectstereoenhance-property-time-pullout-ms) | `0.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **pan\_pullout** = `1.0` [🔗](#class-audioeffectstereoenhance-property-pan-pullout)

- void **set\_pan\_pullout**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pan\_pullout**()


Amplifies the difference between stereo channels, increasing or decreasing existing panning. A value of 0.0 will downmix stereo to mono. Does not affect a mono signal.

* * *

[float](class_float.md#class-float) **surround** = `0.0` [🔗](#class-audioeffectstereoenhance-property-surround)

- void **set\_surround**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_surround**()


Widens sound stage through phase shifting in conjunction with [time\_pullout\_ms](#class-audioeffectstereoenhance-property-time-pullout-ms). Just pans sound to the left channel if [time\_pullout\_ms](#class-audioeffectstereoenhance-property-time-pullout-ms) is 0.

* * *

[float](class_float.md#class-float) **time\_pullout\_ms** = `0.0` [🔗](#class-audioeffectstereoenhance-property-time-pullout-ms)

- void **set\_time\_pullout**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_time\_pullout**()


Widens sound stage through phase shifting in conjunction with [surround](#class-audioeffectstereoenhance-property-surround). Just delays the right channel if [surround](#class-audioeffectstereoenhance-property-surround) is 0.

[Previous](class_audioeffectspectrumanalyzer.md "AudioEffectSpectrumAnalyzer") [Next](class_audiostream.md "AudioStream")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectspectrumanalyzer.md "AudioEffectSpectrumAnalyzer") [Next](class_audiostream.md "AudioStream")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).