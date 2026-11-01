---
title: AudioStreamMicrophone — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreammicrophone.html
crawled_at: "2026-08-13T10:20:07+12:00"
content_hash: e953120949f1ae16aa9d0c6534de590201410b99782e62db1cff31002531e832
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamMicrophone

* * *

# AudioStreamMicrophone

**Inherits:** [AudioStream](class_audiostream.md#class-audiostream) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Plays real-time audio input data.

## Description

When used directly in an [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer) node, **AudioStreamMicrophone** plays back microphone input in real-time. This can be used in conjunction with [AudioEffectCapture](class_audioeffectcapture.md#class-audioeffectcapture) to process the data or save it.

**Note:** [ProjectSettings.audio/driver/enable\_input](class_projectsettings.md#class-projectsettings-property-audio-driver-enable-input) must be `true` for audio input to work. See also that setting's description for caveats related to permissions and operating system privacy settings.

## Tutorials

- [Recording with microphone](../tutorials/audio/recording_with_microphone.md)

- [Audio Mic Record Demo](https://github.com/godotengine/godot-demo-projects/tree/master/audio/mic_record)


[Previous](class_audiostreaminteractive.md "AudioStreamInteractive") [Next](class_audiostreammp3.md "AudioStreamMP3")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreaminteractive.md "AudioStreamInteractive") [Next](class_audiostreammp3.md "AudioStreamMP3")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).