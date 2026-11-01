---
title: AudioEffectDelay — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectdelay.html
crawled_at: "2026-08-13T10:35:12+12:00"
content_hash: 2c28e2e50f86d6043a604b11f8337a8eefe9a43b7ad6e724d12259d476b6e650
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectDelay

* * *

# AudioEffectDelay

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Adds a delay audio effect to an audio bus. Plays input signal back after a period of time.

Two tap delay and feedback options.

## Description

Plays input signal back after a period of time. The delayed signal may be played back multiple times to create the sound of a repeating, decaying echo. Delay effects range from a subtle echo effect to a pronounced blending of previous sounds with new sounds.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [dry](#class-audioeffectdelay-property-dry) | `1.0` |
| [bool](class_bool.md#class-bool) | [feedback\_active](#class-audioeffectdelay-property-feedback-active) | `false` |
| [float](class_float.md#class-float) | [feedback\_delay\_ms](#class-audioeffectdelay-property-feedback-delay-ms) | `340.0` |
| [float](class_float.md#class-float) | [feedback\_level\_db](#class-audioeffectdelay-property-feedback-level-db) | `-6.0` |
| [float](class_float.md#class-float) | [feedback\_lowpass](#class-audioeffectdelay-property-feedback-lowpass) | `16000.0` |
| [bool](class_bool.md#class-bool) | [tap1\_active](#class-audioeffectdelay-property-tap1-active) | `true` |
| [float](class_float.md#class-float) | [tap1\_delay\_ms](#class-audioeffectdelay-property-tap1-delay-ms) | `250.0` |
| [float](class_float.md#class-float) | [tap1\_level\_db](#class-audioeffectdelay-property-tap1-level-db) | `-6.0` |
| [float](class_float.md#class-float) | [tap1\_pan](#class-audioeffectdelay-property-tap1-pan) | `0.2` |
| [bool](class_bool.md#class-bool) | [tap2\_active](#class-audioeffectdelay-property-tap2-active) | `true` |
| [float](class_float.md#class-float) | [tap2\_delay\_ms](#class-audioeffectdelay-property-tap2-delay-ms) | `500.0` |
| [float](class_float.md#class-float) | [tap2\_level\_db](#class-audioeffectdelay-property-tap2-level-db) | `-12.0` |
| [float](class_float.md#class-float) | [tap2\_pan](#class-audioeffectdelay-property-tap2-pan) | `-0.4` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **dry** = `1.0` [🔗](#class-audioeffectdelay-property-dry)

- void **set\_dry**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_dry**()


Output percent of original sound. At 0, only delayed sounds are output. Value can range from 0 to 1.

* * *

[bool](class_bool.md#class-bool) **feedback\_active** = `false` [🔗](#class-audioeffectdelay-property-feedback-active)

- void **set\_feedback\_active**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_feedback\_active**()


If `true`, feedback is enabled.

* * *

[float](class_float.md#class-float) **feedback\_delay\_ms** = `340.0` [🔗](#class-audioeffectdelay-property-feedback-delay-ms)

- void **set\_feedback\_delay\_ms**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_feedback\_delay\_ms**()


Feedback delay time in milliseconds.

* * *

[float](class_float.md#class-float) **feedback\_level\_db** = `-6.0` [🔗](#class-audioeffectdelay-property-feedback-level-db)

- void **set\_feedback\_level\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_feedback\_level\_db**()


Sound level for feedback.

* * *

[float](class_float.md#class-float) **feedback\_lowpass** = `16000.0` [🔗](#class-audioeffectdelay-property-feedback-lowpass)

- void **set\_feedback\_lowpass**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_feedback\_lowpass**()


Low-pass filter for feedback, in Hz. Frequencies below this value are filtered out of the source signal.

* * *

[bool](class_bool.md#class-bool) **tap1\_active** = `true` [🔗](#class-audioeffectdelay-property-tap1-active)

- void **set\_tap1\_active**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_tap1\_active**()


If `true`, the first tap will be enabled.

* * *

[float](class_float.md#class-float) **tap1\_delay\_ms** = `250.0` [🔗](#class-audioeffectdelay-property-tap1-delay-ms)

- void **set\_tap1\_delay\_ms**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_tap1\_delay\_ms**()


First tap delay time in milliseconds.

* * *

[float](class_float.md#class-float) **tap1\_level\_db** = `-6.0` [🔗](#class-audioeffectdelay-property-tap1-level-db)

- void **set\_tap1\_level\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_tap1\_level\_db**()


Sound level for the first tap.

* * *

[float](class_float.md#class-float) **tap1\_pan** = `0.2` [🔗](#class-audioeffectdelay-property-tap1-pan)

- void **set\_tap1\_pan**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_tap1\_pan**()


Pan position for the first tap. Value can range from -1 (fully left) to 1 (fully right).

* * *

[bool](class_bool.md#class-bool) **tap2\_active** = `true` [🔗](#class-audioeffectdelay-property-tap2-active)

- void **set\_tap2\_active**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_tap2\_active**()


If `true`, the second tap will be enabled.

* * *

[float](class_float.md#class-float) **tap2\_delay\_ms** = `500.0` [🔗](#class-audioeffectdelay-property-tap2-delay-ms)

- void **set\_tap2\_delay\_ms**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_tap2\_delay\_ms**()


Second tap delay time in milliseconds.

* * *

[float](class_float.md#class-float) **tap2\_level\_db** = `-12.0` [🔗](#class-audioeffectdelay-property-tap2-level-db)

- void **set\_tap2\_level\_db**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_tap2\_level\_db**()


Sound level for the second tap.

* * *

[float](class_float.md#class-float) **tap2\_pan** = `-0.4` [🔗](#class-audioeffectdelay-property-tap2-pan)

- void **set\_tap2\_pan**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_tap2\_pan**()


Pan position for the second tap. Value can range from -1 (fully left) to 1 (fully right).

[Previous](class_audioeffectcompressor.md "AudioEffectCompressor") [Next](class_audioeffectdistortion.md "AudioEffectDistortion")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectcompressor.md "AudioEffectCompressor") [Next](class_audioeffectdistortion.md "AudioEffectDistortion")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).