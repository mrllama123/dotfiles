---
title: AudioEffectEQ — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffecteq.html
crawled_at: "2026-08-13T10:29:46+12:00"
content_hash: b0855a8bd4990d155cae8d163bd0fdc7be77cc8c8cef302135fd57565eda0e63
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectEQ

* * *

# AudioEffectEQ

**Inherits:** [AudioEffect](class_audioeffect.md#class-audioeffect) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [AudioEffectEQ10](class_audioeffecteq10.md#class-audioeffecteq10), [AudioEffectEQ21](class_audioeffecteq21.md#class-audioeffecteq21), [AudioEffectEQ6](class_audioeffecteq6.md#class-audioeffecteq6)

Base class for audio equalizers. Gives you control over frequencies.

Use it to create a custom equalizer if [AudioEffectEQ6](class_audioeffecteq6.md#class-audioeffecteq6), [AudioEffectEQ10](class_audioeffecteq10.md#class-audioeffecteq10) or [AudioEffectEQ21](class_audioeffecteq21.md#class-audioeffecteq21) don't fit your needs.

## Description

AudioEffectEQ gives you control over frequencies. Use it to compensate for existing deficiencies in audio. AudioEffectEQs are useful on the Master bus to completely master a mix and give it more character. They are also useful when a game is run on a mobile device, to adjust the mix to that kind of speakers (it can be added but disabled when headphones are plugged).

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_band\_count](#class-audioeffecteq-method-get-band-count)() const |
| [float](class_float.md#class-float) | [get\_band\_gain\_db](#class-audioeffecteq-method-get-band-gain-db)(band\_idx: [int](class_int.md#class-int)) const |
| void | [set\_band\_gain\_db](#class-audioeffecteq-method-set-band-gain-db)(band\_idx: [int](class_int.md#class-int), volume\_db: [float](class_float.md#class-float)) |

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_band\_count**() const [🔗](#class-audioeffecteq-method-get-band-count)

Returns the number of bands of the equalizer.

* * *

[float](class_float.md#class-float) **get\_band\_gain\_db**(band\_idx: [int](class_int.md#class-int)) const [🔗](#class-audioeffecteq-method-get-band-gain-db)

Returns the band's gain at the specified index, in dB.

* * *

void **set\_band\_gain\_db**(band\_idx: [int](class_int.md#class-int), volume\_db: [float](class_float.md#class-float)) [🔗](#class-audioeffecteq-method-set-band-gain-db)

Sets band's gain at the specified index, in dB.

[Previous](class_audioeffectdistortion.md "AudioEffectDistortion") [Next](class_audioeffecteq10.md "AudioEffectEQ10")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectdistortion.md "AudioEffectDistortion") [Next](class_audioeffecteq10.md "AudioEffectEQ10")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).