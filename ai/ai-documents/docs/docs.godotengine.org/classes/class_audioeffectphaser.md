---
title: AudioEffectPhaser — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectphaser.html
crawled_at: "2026-08-13T10:27:57+12:00"
content_hash: e5bae9bfb5e54d63ad71bc035e90881a0ec85b4fc0111acf4ca1eaf3646d03c7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectPhaser

* * *

# AudioEffectPhaser

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Adds a phaser audio effect to an audio bus.

Combines the original signal with a copy that is slightly out of phase with the original.

## Description

Combines phase-shifted signals with the original signal. The movement of the phase-shifted signals is controlled using a low-frequency oscillator.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [depth](#class-audioeffectphaser-property-depth) | `1.0` |
| [float](class_float.md#class-float) | [feedback](#class-audioeffectphaser-property-feedback) | `0.7` |
| [float](class_float.md#class-float) | [range\_max\_hz](#class-audioeffectphaser-property-range-max-hz) | `1600.0` |
| [float](class_float.md#class-float) | [range\_min\_hz](#class-audioeffectphaser-property-range-min-hz) | `440.0` |
| [float](class_float.md#class-float) | [rate\_hz](#class-audioeffectphaser-property-rate-hz) | `0.5` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **depth** = `1.0` [🔗](#class-audioeffectphaser-property-depth)

- void **set\_depth**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth**()


Determines how high the filter frequencies sweep. Low value will primarily affect bass frequencies. High value can sweep high into the treble. Value can range from `0.1` to `4.0`.

* * *

[float](class_float.md#class-float) **feedback** = `0.7` [🔗](#class-audioeffectphaser-property-feedback)

- void **set\_feedback**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_feedback**()


Output percent of modified sound. Value can range from 0.1 to 0.9.

* * *

[float](class_float.md#class-float) **range\_max\_hz** = `1600.0` [🔗](#class-audioeffectphaser-property-range-max-hz)

- void **set\_range\_max\_hz**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_range\_max\_hz**()


Determines the maximum frequency affected by the LFO modulations, in Hz. Value can range from 10 to 10000.

* * *

[float](class_float.md#class-float) **range\_min\_hz** = `440.0` [🔗](#class-audioeffectphaser-property-range-min-hz)

- void **set\_range\_min\_hz**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_range\_min\_hz**()


Determines the minimum frequency affected by the LFO modulations, in Hz. Value can range from 10 to 10000.

* * *

[float](class_float.md#class-float) **rate\_hz** = `0.5` [🔗](#class-audioeffectphaser-property-rate-hz)

- void **set\_rate\_hz**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rate\_hz**()


Adjusts the rate in Hz at which the effect sweeps up and down across the frequency range.

[Previous](class_audioeffectpanner.md "AudioEffectPanner") [Next](class_audioeffectpitchshift.md "AudioEffectPitchShift")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectpanner.md "AudioEffectPanner") [Next](class_audioeffectpitchshift.md "AudioEffectPitchShift")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).