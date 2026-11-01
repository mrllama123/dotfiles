---
title: AudioEffectChorus — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectchorus.html
crawled_at: "2026-08-13T10:25:11+12:00"
content_hash: bc2431de7378f455b7fe0e753b1c5cd8588c6f805acaf6d9ef2cf7c30ba748b3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectChorus

* * *

# AudioEffectChorus

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Adds a chorus audio effect.

## Description

Adds a chorus audio effect. The effect applies a filter with voices to duplicate the audio source and manipulate it through the filter.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [dry](#class-audioeffectchorus-property-dry) | `1.0` |
| [float](class_float.md#class-float) | [voice/1/cutoff\_hz](#class-audioeffectchorus-property-voice-1-cutoff-hz) | `8000.0` |
| [float](class_float.md#class-float) | [voice/1/delay\_ms](#class-audioeffectchorus-property-voice-1-delay-ms) | `15.0` |
| [float](class_float.md#class-float) | [voice/1/depth\_ms](#class-audioeffectchorus-property-voice-1-depth-ms) | `2.0` |
| [float](class_float.md#class-float) | [voice/1/level\_db](#class-audioeffectchorus-property-voice-1-level-db) | `0.0` |
| [float](class_float.md#class-float) | [voice/1/pan](#class-audioeffectchorus-property-voice-1-pan) | `-0.5` |
| [float](class_float.md#class-float) | [voice/1/rate\_hz](#class-audioeffectchorus-property-voice-1-rate-hz) | `0.8` |
| [float](class_float.md#class-float) | [voice/2/cutoff\_hz](#class-audioeffectchorus-property-voice-2-cutoff-hz) | `8000.0` |
| [float](class_float.md#class-float) | [voice/2/delay\_ms](#class-audioeffectchorus-property-voice-2-delay-ms) | `20.0` |
| [float](class_float.md#class-float) | [voice/2/depth\_ms](#class-audioeffectchorus-property-voice-2-depth-ms) | `3.0` |
| [float](class_float.md#class-float) | [voice/2/level\_db](#class-audioeffectchorus-property-voice-2-level-db) | `0.0` |
| [float](class_float.md#class-float) | [voice/2/pan](#class-audioeffectchorus-property-voice-2-pan) | `0.5` |
| [float](class_float.md#class-float) | [voice/2/rate\_hz](#class-audioeffectchorus-property-voice-2-rate-hz) | `1.2` |
| [float](class_float.md#class-float) | [voice/3/cutoff\_hz](#class-audioeffectchorus-property-voice-3-cutoff-hz) |  |
| [float](class_float.md#class-float) | [voice/3/delay\_ms](#class-audioeffectchorus-property-voice-3-delay-ms) |  |
| [float](class_float.md#class-float) | [voice/3/depth\_ms](#class-audioeffectchorus-property-voice-3-depth-ms) |  |
| [float](class_float.md#class-float) | [voice/3/level\_db](#class-audioeffectchorus-property-voice-3-level-db) |  |
| [float](class_float.md#class-float) | [voice/3/pan](#class-audioeffectchorus-property-voice-3-pan) |  |
| [float](class_float.md#class-float) | [voice/3/rate\_hz](#class-audioeffectchorus-property-voice-3-rate-hz) |  |
| [float](class_float.md#class-float) | [voice/4/cutoff\_hz](#class-audioeffectchorus-property-voice-4-cutoff-hz) |  |
| [float](class_float.md#class-float) | [voice/4/delay\_ms](#class-audioeffectchorus-property-voice-4-delay-ms) |  |
| [float](class_float.md#class-float) | [voice/4/depth\_ms](#class-audioeffectchorus-property-voice-4-depth-ms) |  |
| [float](class_float.md#class-float) | [voice/4/level\_db](#class-audioeffectchorus-property-voice-4-level-db) |  |
| [float](class_float.md#class-float) | [voice/4/pan](#class-audioeffectchorus-property-voice-4-pan) |  |
| [float](class_float.md#class-float) | [voice/4/rate\_hz](#class-audioeffectchorus-property-voice-4-rate-hz) |  |
| [int](class_int.md#class-int) | [voice\_count](#class-audioeffectchorus-property-voice-count) | `2` |
| [float](class_float.md#class-float) | [wet](#class-audioeffectchorus-property-wet) | `0.5` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_voice\_cutoff\_hz](#class-audioeffectchorus-method-get-voice-cutoff-hz)(voice\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_voice\_delay\_ms](#class-audioeffectchorus-method-get-voice-delay-ms)(voice\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_voice\_depth\_ms](#class-audioeffectchorus-method-get-voice-depth-ms)(voice\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_voice\_level\_db](#class-audioeffectchorus-method-get-voice-level-db)(voice\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_voice\_pan](#class-audioeffectchorus-method-get-voice-pan)(voice\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_voice\_rate\_hz](#class-audioeffectchorus-method-get-voice-rate-hz)(voice\_idx: [int](class_int.md#class-int)) const |
| void | [set\_voice\_cutoff\_hz](#class-audioeffectchorus-method-set-voice-cutoff-hz)(voice\_idx: [int](class_int.md#class-int), cutoff\_hz: [float](class_float.md#class-float)) |
| void | [set\_voice\_delay\_ms](#class-audioeffectchorus-method-set-voice-delay-ms)(voice\_idx: [int](class_int.md#class-int), delay\_ms: [float](class_float.md#class-float)) |
| void | [set\_voice\_depth\_ms](#class-audioeffectchorus-method-set-voice-depth-ms)(voice\_idx: [int](class_int.md#class-int), depth\_ms: [float](class_float.md#class-float)) |
| void | [set\_voice\_level\_db](#class-audioeffectchorus-method-set-voice-level-db)(voice\_idx: [int](class_int.md#class-int), level\_db: [float](class_float.md#class-float)) |
| void | [set\_voice\_pan](#class-audioeffectchorus-method-set-voice-pan)(voice\_idx: [int](class_int.md#class-int), pan: [float](class_float.md#class-float)) |
| void | [set\_voice\_rate\_hz](#class-audioeffectchorus-method-set-voice-rate-hz)(voice\_idx: [int](class_int.md#class-int), rate\_hz: [float](class_float.md#class-float)) |

* * *

## Property Descriptions

[float](class_float.md#class-float) **dry** = `1.0` [🔗](#class-audioeffectchorus-property-dry)

- void **set\_dry**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_dry**()


The effect's raw signal.

* * *

[float](class_float.md#class-float) **voice/1/cutoff\_hz** = `8000.0` [🔗](#class-audioeffectchorus-property-voice-1-cutoff-hz)

- void **set\_voice\_cutoff\_hz**(voice\_idx: [int](class_int.md#class-int), cutoff\_hz: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_cutoff\_hz**(voice\_idx: [int](class_int.md#class-int)) const


The voice's cutoff frequency.

* * *

[float](class_float.md#class-float) **voice/1/delay\_ms** = `15.0` [🔗](#class-audioeffectchorus-property-voice-1-delay-ms)

- void **set\_voice\_delay\_ms**(voice\_idx: [int](class_int.md#class-int), delay\_ms: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_delay\_ms**(voice\_idx: [int](class_int.md#class-int)) const


The voice's signal delay.

* * *

[float](class_float.md#class-float) **voice/1/depth\_ms** = `2.0` [🔗](#class-audioeffectchorus-property-voice-1-depth-ms)

- void **set\_voice\_depth\_ms**(voice\_idx: [int](class_int.md#class-int), depth\_ms: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_depth\_ms**(voice\_idx: [int](class_int.md#class-int)) const


The voice filter's depth.

* * *

[float](class_float.md#class-float) **voice/1/level\_db** = `0.0` [🔗](#class-audioeffectchorus-property-voice-1-level-db)

- void **set\_voice\_level\_db**(voice\_idx: [int](class_int.md#class-int), level\_db: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_level\_db**(voice\_idx: [int](class_int.md#class-int)) const


The voice's volume.

* * *

[float](class_float.md#class-float) **voice/1/pan** = `-0.5` [🔗](#class-audioeffectchorus-property-voice-1-pan)

- void **set\_voice\_pan**(voice\_idx: [int](class_int.md#class-int), pan: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_pan**(voice\_idx: [int](class_int.md#class-int)) const


The voice's pan level.

* * *

[float](class_float.md#class-float) **voice/1/rate\_hz** = `0.8` [🔗](#class-audioeffectchorus-property-voice-1-rate-hz)

- void **set\_voice\_rate\_hz**(voice\_idx: [int](class_int.md#class-int), rate\_hz: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_rate\_hz**(voice\_idx: [int](class_int.md#class-int)) const


The voice's filter rate.

* * *

[float](class_float.md#class-float) **voice/2/cutoff\_hz** = `8000.0` [🔗](#class-audioeffectchorus-property-voice-2-cutoff-hz)

- void **set\_voice\_cutoff\_hz**(voice\_idx: [int](class_int.md#class-int), cutoff\_hz: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_cutoff\_hz**(voice\_idx: [int](class_int.md#class-int)) const


The voice's cutoff frequency.

* * *

[float](class_float.md#class-float) **voice/2/delay\_ms** = `20.0` [🔗](#class-audioeffectchorus-property-voice-2-delay-ms)

- void **set\_voice\_delay\_ms**(voice\_idx: [int](class_int.md#class-int), delay\_ms: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_delay\_ms**(voice\_idx: [int](class_int.md#class-int)) const


The voice's signal delay.

* * *

[float](class_float.md#class-float) **voice/2/depth\_ms** = `3.0` [🔗](#class-audioeffectchorus-property-voice-2-depth-ms)

- void **set\_voice\_depth\_ms**(voice\_idx: [int](class_int.md#class-int), depth\_ms: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_depth\_ms**(voice\_idx: [int](class_int.md#class-int)) const


The voice filter's depth.

* * *

[float](class_float.md#class-float) **voice/2/level\_db** = `0.0` [🔗](#class-audioeffectchorus-property-voice-2-level-db)

- void **set\_voice\_level\_db**(voice\_idx: [int](class_int.md#class-int), level\_db: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_level\_db**(voice\_idx: [int](class_int.md#class-int)) const


The voice's volume.

* * *

[float](class_float.md#class-float) **voice/2/pan** = `0.5` [🔗](#class-audioeffectchorus-property-voice-2-pan)

- void **set\_voice\_pan**(voice\_idx: [int](class_int.md#class-int), pan: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_pan**(voice\_idx: [int](class_int.md#class-int)) const


The voice's pan level.

* * *

[float](class_float.md#class-float) **voice/2/rate\_hz** = `1.2` [🔗](#class-audioeffectchorus-property-voice-2-rate-hz)

- void **set\_voice\_rate\_hz**(voice\_idx: [int](class_int.md#class-int), rate\_hz: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_rate\_hz**(voice\_idx: [int](class_int.md#class-int)) const


The voice's filter rate.

* * *

[float](class_float.md#class-float) **voice/3/cutoff\_hz** [🔗](#class-audioeffectchorus-property-voice-3-cutoff-hz)

- void **set\_voice\_cutoff\_hz**(voice\_idx: [int](class_int.md#class-int), cutoff\_hz: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_cutoff\_hz**(voice\_idx: [int](class_int.md#class-int)) const


The voice's cutoff frequency.

* * *

[float](class_float.md#class-float) **voice/3/delay\_ms** [🔗](#class-audioeffectchorus-property-voice-3-delay-ms)

- void **set\_voice\_delay\_ms**(voice\_idx: [int](class_int.md#class-int), delay\_ms: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_delay\_ms**(voice\_idx: [int](class_int.md#class-int)) const


The voice's signal delay.

* * *

[float](class_float.md#class-float) **voice/3/depth\_ms** [🔗](#class-audioeffectchorus-property-voice-3-depth-ms)

- void **set\_voice\_depth\_ms**(voice\_idx: [int](class_int.md#class-int), depth\_ms: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_depth\_ms**(voice\_idx: [int](class_int.md#class-int)) const


The voice filter's depth.

* * *

[float](class_float.md#class-float) **voice/3/level\_db** [🔗](#class-audioeffectchorus-property-voice-3-level-db)

- void **set\_voice\_level\_db**(voice\_idx: [int](class_int.md#class-int), level\_db: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_level\_db**(voice\_idx: [int](class_int.md#class-int)) const


The voice's volume.

* * *

[float](class_float.md#class-float) **voice/3/pan** [🔗](#class-audioeffectchorus-property-voice-3-pan)

- void **set\_voice\_pan**(voice\_idx: [int](class_int.md#class-int), pan: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_pan**(voice\_idx: [int](class_int.md#class-int)) const


The voice's pan level.

* * *

[float](class_float.md#class-float) **voice/3/rate\_hz** [🔗](#class-audioeffectchorus-property-voice-3-rate-hz)

- void **set\_voice\_rate\_hz**(voice\_idx: [int](class_int.md#class-int), rate\_hz: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_rate\_hz**(voice\_idx: [int](class_int.md#class-int)) const


The voice's filter rate.

* * *

[float](class_float.md#class-float) **voice/4/cutoff\_hz** [🔗](#class-audioeffectchorus-property-voice-4-cutoff-hz)

- void **set\_voice\_cutoff\_hz**(voice\_idx: [int](class_int.md#class-int), cutoff\_hz: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_cutoff\_hz**(voice\_idx: [int](class_int.md#class-int)) const


The voice's cutoff frequency.

* * *

[float](class_float.md#class-float) **voice/4/delay\_ms** [🔗](#class-audioeffectchorus-property-voice-4-delay-ms)

- void **set\_voice\_delay\_ms**(voice\_idx: [int](class_int.md#class-int), delay\_ms: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_delay\_ms**(voice\_idx: [int](class_int.md#class-int)) const


The voice's signal delay.

* * *

[float](class_float.md#class-float) **voice/4/depth\_ms** [🔗](#class-audioeffectchorus-property-voice-4-depth-ms)

- void **set\_voice\_depth\_ms**(voice\_idx: [int](class_int.md#class-int), depth\_ms: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_depth\_ms**(voice\_idx: [int](class_int.md#class-int)) const


The voice filter's depth.

* * *

[float](class_float.md#class-float) **voice/4/level\_db** [🔗](#class-audioeffectchorus-property-voice-4-level-db)

- void **set\_voice\_level\_db**(voice\_idx: [int](class_int.md#class-int), level\_db: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_level\_db**(voice\_idx: [int](class_int.md#class-int)) const


The voice's volume.

* * *

[float](class_float.md#class-float) **voice/4/pan** [🔗](#class-audioeffectchorus-property-voice-4-pan)

- void **set\_voice\_pan**(voice\_idx: [int](class_int.md#class-int), pan: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_pan**(voice\_idx: [int](class_int.md#class-int)) const


The voice's pan level.

* * *

[float](class_float.md#class-float) **voice/4/rate\_hz** [🔗](#class-audioeffectchorus-property-voice-4-rate-hz)

- void **set\_voice\_rate\_hz**(voice\_idx: [int](class_int.md#class-int), rate\_hz: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_voice\_rate\_hz**(voice\_idx: [int](class_int.md#class-int)) const


The voice's filter rate.

* * *

[int](class_int.md#class-int) **voice\_count** = `2` [🔗](#class-audioeffectchorus-property-voice-count)

- void **set\_voice\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_voice\_count**()


The number of voices in the effect.

* * *

[float](class_float.md#class-float) **wet** = `0.5` [🔗](#class-audioeffectchorus-property-wet)

- void **set\_wet**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_wet**()


The effect's processed signal.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_voice\_cutoff\_hz**(voice\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioeffectchorus-method-get-voice-cutoff-hz)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **get\_voice\_delay\_ms**(voice\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioeffectchorus-method-get-voice-delay-ms)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **get\_voice\_depth\_ms**(voice\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioeffectchorus-method-get-voice-depth-ms)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **get\_voice\_level\_db**(voice\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioeffectchorus-method-get-voice-level-db)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **get\_voice\_pan**(voice\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioeffectchorus-method-get-voice-pan)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **get\_voice\_rate\_hz**(voice\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioeffectchorus-method-get-voice-rate-hz)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_voice\_cutoff\_hz**(voice\_idx: [int](class_int.md#class-int), cutoff\_hz: [float](class_float.md#class-float)) [🔗](#class-audioeffectchorus-method-set-voice-cutoff-hz)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_voice\_delay\_ms**(voice\_idx: [int](class_int.md#class-int), delay\_ms: [float](class_float.md#class-float)) [🔗](#class-audioeffectchorus-method-set-voice-delay-ms)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_voice\_depth\_ms**(voice\_idx: [int](class_int.md#class-int), depth\_ms: [float](class_float.md#class-float)) [🔗](#class-audioeffectchorus-method-set-voice-depth-ms)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_voice\_level\_db**(voice\_idx: [int](class_int.md#class-int), level\_db: [float](class_float.md#class-float)) [🔗](#class-audioeffectchorus-method-set-voice-level-db)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_voice\_pan**(voice\_idx: [int](class_int.md#class-int), pan: [float](class_float.md#class-float)) [🔗](#class-audioeffectchorus-method-set-voice-pan)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_voice\_rate\_hz**(voice\_idx: [int](class_int.md#class-int), rate\_hz: [float](class_float.md#class-float)) [🔗](#class-audioeffectchorus-method-set-voice-rate-hz)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_audioeffectcapture.md "AudioEffectCapture") [Next](class_audioeffectcompressor.md "AudioEffectCompressor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectcapture.md "AudioEffectCapture") [Next](class_audioeffectcompressor.md "AudioEffectCompressor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).