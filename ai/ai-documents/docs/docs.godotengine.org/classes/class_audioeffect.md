---
title: AudioEffect — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audioeffect.html
crawled_at: "2026-08-13T10:24:32+12:00"
content_hash: 96425181be9bb63a33d8248e5a966f3065eb24f0d1d29d4ed233e81cb4c05e9e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioEffect

* * *

# AudioEffect

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [AudioEffectAmplify](class_audioeffectamplify.md#class-audioeffectamplify), [AudioEffectCapture](class_audioeffectcapture.md#class-audioeffectcapture), [AudioEffectChorus](class_audioeffectchorus.md#class-audioeffectchorus), [AudioEffectCompressor](class_audioeffectcompressor.md#class-audioeffectcompressor), [AudioEffectDelay](class_audioeffectdelay.md#class-audioeffectdelay), [AudioEffectDistortion](class_audioeffectdistortion.md#class-audioeffectdistortion), [AudioEffectEQ](class_audioeffecteq.md#class-audioeffecteq), [AudioEffectFilter](class_audioeffectfilter.md#class-audioeffectfilter), [AudioEffectHardLimiter](class_audioeffecthardlimiter.md#class-audioeffecthardlimiter), [AudioEffectLimiter](class_audioeffectlimiter.md#class-audioeffectlimiter), [AudioEffectPanner](class_audioeffectpanner.md#class-audioeffectpanner), [AudioEffectPhaser](class_audioeffectphaser.md#class-audioeffectphaser), [AudioEffectPitchShift](class_audioeffectpitchshift.md#class-audioeffectpitchshift), [AudioEffectRecord](class_audioeffectrecord.md#class-audioeffectrecord), [AudioEffectReverb](class_audioeffectreverb.md#class-audioeffectreverb), [AudioEffectSpectrumAnalyzer](class_audioeffectspectrumanalyzer.md#class-audioeffectspectrumanalyzer), [AudioEffectStereoEnhance](class_audioeffectstereoenhance.md#class-audioeffectstereoenhance)

Base class for audio effect resources.

## Description

The base [Resource](class_resource.md#class-resource) for every audio effect. In the editor, an audio effect can be added to the current bus layout through the Audio panel. At run-time, it is also possible to manipulate audio effects through [AudioServer.add\_bus\_effect()](class_audioserver.md#class-audioserver-method-add-bus-effect), [AudioServer.remove\_bus\_effect()](class_audioserver.md#class-audioserver-method-remove-bus-effect), and [AudioServer.get\_bus\_effect()](class_audioserver.md#class-audioserver-method-get-bus-effect).

When applied on a bus, an audio effect creates a corresponding [AudioEffectInstance](class_audioeffectinstance.md#class-audioeffectinstance). The instance is directly responsible for manipulating the sound, based on the original audio effect's properties.

## Tutorials

- [Audio buses](../tutorials/audio/audio_buses.md)

- [Audio Microphone Record Demo](https://godotengine.org/asset-library/asset/2760)


## Methods

|     |     |
| --- | --- |
| [AudioEffectInstance](class_audioeffectinstance.md#class-audioeffectinstance) | [\_instantiate](#class-audioeffect-private-method-instantiate)() virtualrequired |

* * *

## Method Descriptions

[AudioEffectInstance](class_audioeffectinstance.md#class-audioeffectinstance) **\_instantiate**() virtualrequired [🔗](#class-audioeffect-private-method-instantiate)

Override this method to customize the [AudioEffectInstance](class_audioeffectinstance.md#class-audioeffectinstance) created when this effect is applied on a bus in the editor's Audio panel, or through [AudioServer.add\_bus\_effect()](class_audioserver.md#class-audioserver-method-add-bus-effect).

```
extends AudioEffect

@export var strength = 4.0

func _instantiate():
    var effect = CustomAudioEffectInstance.new()
    effect.base = self

    return effect

```

**Note:** It is recommended to keep a reference to the original **AudioEffect** in the new instance. Depending on the implementation this allows the effect instance to listen for changes at run-time and be modified accordingly.

[Previous](class_audiobuslayout.md "AudioBusLayout") [Next](class_audioeffectamplify.md "AudioEffectAmplify")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiobuslayout.md "AudioBusLayout") [Next](class_audioeffectamplify.md "AudioEffectAmplify")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).