---
title: AudioEffectInstance — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffectinstance.html
crawled_at: "2026-08-13T10:22:05+12:00"
content_hash: a69c3e04a979d520f2b4f11b43cddb73f93686d237cba6012b6dfef0b182d95f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffectInstance

* * *

# AudioEffectInstance

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [AudioEffectSpectrumAnalyzerInstance](class_audioeffectspectrumanalyzerinstance.md#class-audioeffectspectrumanalyzerinstance)

Manipulates the audio it receives for a given effect.

## Description

An audio effect instance manipulates the audio it receives for a given effect. This instance is automatically created by an [AudioEffect](class_audioeffect.md#class-audioeffect) when it is added to a bus, and should usually not be created directly. If necessary, it can be fetched at run-time with [AudioServer.get\_bus\_effect\_instance()](class_audioserver.md#class-audioserver-method-get-bus-effect-instance).

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)


## Methods

|     |     |
| --- | --- |
| void | [\_process](#class-audioeffectinstance-private-method-process)(src\_buffer: `const void*`, dst\_buffer: `AudioFrame*`, frame\_count: [int](class_int.md#class-int)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_process\_silence](#class-audioeffectinstance-private-method-process-silence)() virtualconst |

* * *

## Method Descriptions

void **\_process**(src\_buffer: `const void*`, dst\_buffer: `AudioFrame*`, frame\_count: [int](class_int.md#class-int)) virtualrequired [🔗](#class-audioeffectinstance-private-method-process)

Called by the [AudioServer](class_audioserver.md#class-audioserver) to process this effect. When [\_process\_silence()](#class-audioeffectinstance-private-method-process-silence) is not overridden or it returns `false`, this method is called only when the bus is active.

**Note:** It is not useful to override this method in GDScript or C#. Only GDExtension can take advantage of it.

* * *

[bool](class_bool.md#class-bool) **\_process\_silence**() virtualconst [🔗](#class-audioeffectinstance-private-method-process-silence)

Override this method to customize the processing behavior of this effect instance.

Should return `true` to force the [AudioServer](class_audioserver.md#class-audioserver) to always call [\_process()](#class-audioeffectinstance-private-method-process), even if the bus has been muted or cannot otherwise be heard.

[Previous](class_astargrid2d.md "AStarGrid2D") [Next](class_audioeffectspectrumanalyzerinstance.md "AudioEffectSpectrumAnalyzerInstance")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_astargrid2d.md "AStarGrid2D") [Next](class_audioeffectspectrumanalyzerinstance.md "AudioEffectSpectrumAnalyzerInstance")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).