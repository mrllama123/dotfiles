---
title: AudioEffectReverb — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectreverb.html
crawled_at: "2026-08-13T10:39:23+12:00"
content_hash: 661c72a2cd0052dcd7dacf4409c3b782aec593d80fc1c0f25ceddb32dce14515
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectReverb

* * *

# AudioEffectReverb

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Adds a reverberation audio effect to an Audio bus.

## Description

Simulates the sound of acoustic environments such as rooms, concert halls, caverns, or an open spaces.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [damping](#class-audioeffectreverb-property-damping) | `0.5` |
| [float](class_float.md#class-float) | [dry](#class-audioeffectreverb-property-dry) | `1.0` |
| [float](class_float.md#class-float) | [hipass](#class-audioeffectreverb-property-hipass) | `0.0` |
| [float](class_float.md#class-float) | [predelay\_feedback](#class-audioeffectreverb-property-predelay-feedback) | `0.4` |
| [float](class_float.md#class-float) | [predelay\_msec](#class-audioeffectreverb-property-predelay-msec) | `150.0` |
| [float](class_float.md#class-float) | [room\_size](#class-audioeffectreverb-property-room-size) | `0.8` |
| [float](class_float.md#class-float) | [spread](#class-audioeffectreverb-property-spread) | `1.0` |
| [float](class_float.md#class-float) | [wet](#class-audioeffectreverb-property-wet) | `0.5` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **damping** = `0.5` [🔗](#class-audioeffectreverb-property-damping)

- void **set\_damping**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_damping**()


Defines how reflective the imaginary room's walls are. Value can range from 0 to 1.

* * *

[float](class_float.md#class-float) **dry** = `1.0` [🔗](#class-audioeffectreverb-property-dry)

- void **set\_dry**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_dry**()


Output percent of original sound. At 0, only modified sound is outputted. Value can range from 0 to 1.

* * *

[float](class_float.md#class-float) **hipass** = `0.0` [🔗](#class-audioeffectreverb-property-hipass)

- void **set\_hpf**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_hpf**()


High-pass filter passes signals with a frequency higher than a certain cutoff frequency and attenuates signals with frequencies lower than the cutoff frequency. Value can range from 0 to 1.

* * *

[float](class_float.md#class-float) **predelay\_feedback** = `0.4` [🔗](#class-audioeffectreverb-property-predelay-feedback)

- void **set\_predelay\_feedback**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_predelay\_feedback**()


Output percent of predelay. Value can range from 0 to 1.

* * *

[float](class_float.md#class-float) **predelay\_msec** = `150.0` [🔗](#class-audioeffectreverb-property-predelay-msec)

- void **set\_predelay\_msec**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_predelay\_msec**()


Time between the original signal and the early reflections of the reverb signal, in milliseconds.

* * *

[float](class_float.md#class-float) **room\_size** = `0.8` [🔗](#class-audioeffectreverb-property-room-size)

- void **set\_room\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_room\_size**()


Dimensions of simulated room. Bigger means more echoes. Value can range from 0 to 1.

* * *

[float](class_float.md#class-float) **spread** = `1.0` [🔗](#class-audioeffectreverb-property-spread)

- void **set\_spread**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_spread**()


Widens or narrows the stereo image of the reverb tail. 1 means fully widens. Value can range from 0 to 1.

* * *

[float](class_float.md#class-float) **wet** = `0.5` [🔗](#class-audioeffectreverb-property-wet)

- void **set\_wet**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_wet**()


Output percent of modified sound. At 0, only original sound is outputted. Value can range from 0 to 1.

[Previous](class_audioeffectrecord.md "AudioEffectRecord") [Next](class_audioeffectspectrumanalyzer.md "AudioEffectSpectrumAnalyzer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectrecord.md "AudioEffectRecord") [Next](class_audioeffectspectrumanalyzer.md "AudioEffectSpectrumAnalyzer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).