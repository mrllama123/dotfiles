---
title: AudioEffectCompressor — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectcompressor.html
crawled_at: "2026-08-13T10:40:50+12:00"
content_hash: 2c62ce7b7217111a06e5afeac22c30cfaffe6a9b93787f0311abb2e3560b1f66
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectCompressor

* * *

# AudioEffectCompressor

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Adds a compressor audio effect to an audio bus.

Reduces sounds that exceed a certain threshold level, smooths out the dynamics and increases the overall volume.

## Description

Dynamic range compressor reduces the level of the sound when the amplitude goes over a certain threshold in Decibels. One of the main uses of a compressor is to increase the dynamic range by clipping as little as possible (when sound goes over 0dB).

Compressor has many uses in the mix:

- In the Master bus to compress the whole output (although an [AudioEffectHardLimiter](class_audioeffecthardlimiter.md#class-audioeffecthardlimiter) is probably better).

- In voice channels to ensure they sound as balanced as possible.

- Sidechained. This can reduce the sound level sidechained with another audio bus for threshold detection. This technique is common in video game mixing to the level of music and SFX while voices are being heard.

- Accentuates transients by using a wider attack, making effects sound more punchy.


## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [attack\_us](#class-audioeffectcompressor-property-attack-us) | `20.0` |
| [float](class_float.md#class-float) | [gain](#class-audioeffectcompressor-property-gain) | `0.0` |
| [float](class_float.md#class-float) | [mix](#class-audioeffectcompressor-property-mix) | `1.0` |
| [float](class_float.md#class-float) | [ratio](#class-audioeffectcompressor-property-ratio) | `4.0` |
| [float](class_float.md#class-float) | [release\_ms](#class-audioeffectcompressor-property-release-ms) | `250.0` |
| [StringName](class_stringname.md#class-stringname) | [sidechain](#class-audioeffectcompressor-property-sidechain) | `&""` |
| [float](class_float.md#class-float) | [threshold](#class-audioeffectcompressor-property-threshold) | `0.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **attack\_us** = `20.0` [🔗](#class-audioeffectcompressor-property-attack-us)

- void **set\_attack\_us**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_attack\_us**()


Compressor's reaction time when the signal exceeds the threshold, in microseconds. Value can range from 20 to 2000.

* * *

[float](class_float.md#class-float) **gain** = `0.0` [🔗](#class-audioeffectcompressor-property-gain)

- void **set\_gain**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_gain**()


Gain applied to the output signal.

* * *

[float](class_float.md#class-float) **mix** = `1.0` [🔗](#class-audioeffectcompressor-property-mix)

- void **set\_mix**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mix**()


Balance between original signal and effect signal. Value can range from 0 (totally dry) to 1 (totally wet).

* * *

[float](class_float.md#class-float) **ratio** = `4.0` [🔗](#class-audioeffectcompressor-property-ratio)

- void **set\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ratio**()


Amount of compression applied to the audio once it passes the threshold level. The higher the ratio, the more the loud parts of the audio will be compressed. Value can range from 1 to 48.

* * *

[float](class_float.md#class-float) **release\_ms** = `250.0` [🔗](#class-audioeffectcompressor-property-release-ms)

- void **set\_release\_ms**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_release\_ms**()


Compressor's delay time to stop reducing the signal after the signal level falls below the threshold, in milliseconds. Value can range from 20 to 2000.

* * *

[StringName](class_stringname.md#class-stringname) **sidechain** = `&""` [🔗](#class-audioeffectcompressor-property-sidechain)

- void **set\_sidechain**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_sidechain**()


Reduce the sound level using another audio bus for threshold detection.

* * *

[float](class_float.md#class-float) **threshold** = `0.0` [🔗](#class-audioeffectcompressor-property-threshold)

- void **set\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_threshold**()


The level above which compression is applied to the audio. Value can range from -60 to 0.

[Previous](class_audioeffectchorus.md "AudioEffectChorus") [Next](class_audioeffectdelay.md "AudioEffectDelay")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectchorus.md "AudioEffectChorus") [Next](class_audioeffectdelay.md "AudioEffectDelay")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).