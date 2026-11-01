---
title: AudioEffectAmplify — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectamplify.html
crawled_at: "2026-08-13T10:19:55+12:00"
content_hash: 964bba0260b626186891b967476eb8058d4e710e7cdc5dd62f5a964bc865f91d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectAmplify

* * *

# AudioEffectAmplify

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Adds an amplifying audio effect to an audio bus.

## Description

Increases or decreases the volume being routed through the audio bus.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [volume\_db](#class-audioeffectamplify-property-volume-db) | `0.0` |
| [float](class_float.md#class-float) | [volume\_linear](#class-audioeffectamplify-property-volume-linear) |  |

* * *

## Property Descriptions

[float](class_float.md#class-float) **volume\_db** = `0.0` [🔗](#class-audioeffectamplify-property-volume-db)

- void **set\_volume\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volume\_db**()


Amount of amplification in decibels. Positive values make the sound louder, negative values make it quieter. Value can range from -80 to 24.

* * *

[float](class_float.md#class-float) **volume\_linear** [🔗](#class-audioeffectamplify-property-volume-linear)

- void **set\_volume\_linear**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volume\_linear**()


Amount of amplification as a linear value.

**Note:** This member modifies [volume\_db](#class-audioeffectamplify-property-volume-db) for convenience. The returned value is equivalent to the result of [@GlobalScope.db\_to\_linear()](class_@globalscope.md#class-globalscope-method-db-to-linear) on [volume\_db](#class-audioeffectamplify-property-volume-db). Setting this member is equivalent to setting [volume\_db](#class-audioeffectamplify-property-volume-db) to the result of [@GlobalScope.linear\_to\_db()](class_@globalscope.md#class-globalscope-method-linear-to-db) on a value.

[Previous](class_audioeffect.md "AudioEffect") [Next](class_audioeffectbandlimitfilter.md "AudioEffectBandLimitFilter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffect.md "AudioEffect") [Next](class_audioeffectbandlimitfilter.md "AudioEffectBandLimitFilter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).