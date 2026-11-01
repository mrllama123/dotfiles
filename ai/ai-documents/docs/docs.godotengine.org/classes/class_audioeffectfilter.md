---
title: AudioEffectFilter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectfilter.html
crawled_at: "2026-08-13T10:39:14+12:00"
content_hash: 139170e56e55ff9a069d7b5831b15d071c066703566f5621aa7a74a05dda1f31
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectFilter

* * *

# AudioEffectFilter

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [AudioEffectBandLimitFilter](class_audioeffectbandlimitfilter.md#class-audioeffectbandlimitfilter), [AudioEffectBandPassFilter](class_audioeffectbandpassfilter.md#class-audioeffectbandpassfilter), [AudioEffectHighPassFilter](class_audioeffecthighpassfilter.md#class-audioeffecthighpassfilter), [AudioEffectHighShelfFilter](class_audioeffecthighshelffilter.md#class-audioeffecthighshelffilter), [AudioEffectLowPassFilter](class_audioeffectlowpassfilter.md#class-audioeffectlowpassfilter), [AudioEffectLowShelfFilter](class_audioeffectlowshelffilter.md#class-audioeffectlowshelffilter), [AudioEffectNotchFilter](class_audioeffectnotchfilter.md#class-audioeffectnotchfilter)

Adds a filter to the audio bus.

## Description

Allows frequencies other than the [cutoff\_hz](#class-audioeffectfilter-property-cutoff-hz) to pass.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [cutoff\_hz](#class-audioeffectfilter-property-cutoff-hz) | `2000.0` |
| [FilterDB](#enum-audioeffectfilter-filterdb) | [db](#class-audioeffectfilter-property-db) | `0` |
| [float](class_float.md#class-float) | [gain](#class-audioeffectfilter-property-gain) | `1.0` |
| [float](class_float.md#class-float) | [resonance](#class-audioeffectfilter-property-resonance) | `0.5` |

* * *

## Enumerations

enum **FilterDB**: [🔗](#enum-audioeffectfilter-filterdb)

[FilterDB](#enum-audioeffectfilter-filterdb) **FILTER\_6DB** = `0`

Cutting off at 6dB per octave.

[FilterDB](#enum-audioeffectfilter-filterdb) **FILTER\_12DB** = `1`

Cutting off at 12dB per octave.

[FilterDB](#enum-audioeffectfilter-filterdb) **FILTER\_18DB** = `2`

Cutting off at 18dB per octave.

[FilterDB](#enum-audioeffectfilter-filterdb) **FILTER\_24DB** = `3`

Cutting off at 24dB per octave.

* * *

## Property Descriptions

[float](class_float.md#class-float) **cutoff\_hz** = `2000.0` [🔗](#class-audioeffectfilter-property-cutoff-hz)

- void **set\_cutoff**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_cutoff**()


Threshold frequency for the filter, in Hz.

* * *

[FilterDB](#enum-audioeffectfilter-filterdb) **db** = `0` [🔗](#class-audioeffectfilter-property-db)

- void **set\_db**(value: [FilterDB](#enum-audioeffectfilter-filterdb))

- [FilterDB](#enum-audioeffectfilter-filterdb) **get\_db**()


Steepness of the cutoff curve in dB per octave, also known as the order of the filter. Higher orders have a more aggressive cutoff.

* * *

[float](class_float.md#class-float) **gain** = `1.0` [🔗](#class-audioeffectfilter-property-gain)

- void **set\_gain**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_gain**()


Gain amount of the frequencies after the filter.

* * *

[float](class_float.md#class-float) **resonance** = `0.5` [🔗](#class-audioeffectfilter-property-resonance)

- void **set\_resonance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_resonance**()


Amount of boost in the frequency range near the cutoff frequency.

[Previous](class_audioeffecteq6.md "AudioEffectEQ6") [Next](class_audioeffecthardlimiter.md "AudioEffectHardLimiter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffecteq6.md "AudioEffectEQ6") [Next](class_audioeffecthardlimiter.md "AudioEffectHardLimiter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).