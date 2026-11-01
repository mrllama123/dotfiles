---
title: ResourceImporterMP3 — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimportermp3.html
crawled_at: "2026-08-13T10:35:38+12:00"
content_hash: 14cc82d4d5d4e3f02a29cb90ee95d25276057ec7e68fee518979996a4a25eb17
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterMP3

* * *

# ResourceImporterMP3

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports an MP3 audio file for playback.

## Description

MP3 is a lossy audio format, with worse audio quality compared to [ResourceImporterOggVorbis](class_resourceimporteroggvorbis.md#class-resourceimporteroggvorbis) at a given bitrate.

In most cases, it's recommended to use Ogg Vorbis over MP3. However, if you're using an MP3 sound source with no higher quality source available, then it's recommended to use the MP3 file directly to avoid double lossy compression.

MP3 requires more CPU to decode than [ResourceImporterWAV](class_resourceimporterwav.md#class-resourceimporterwav). If you need to play a lot of simultaneous sounds, it's recommended to use WAV for those sounds instead, especially if targeting low-end devices.

## Tutorials

- [Importing audio samples](../tutorials/assets_pipeline/importing_audio_samples.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bar\_beats](#class-resourceimportermp3-property-bar-beats) | `4` |
| [int](class_int.md#class-int) | [beat\_count](#class-resourceimportermp3-property-beat-count) | `0` |
| [float](class_float.md#class-float) | [bpm](#class-resourceimportermp3-property-bpm) | `0` |
| [bool](class_bool.md#class-bool) | [loop](#class-resourceimportermp3-property-loop) | `false` |
| [float](class_float.md#class-float) | [loop\_offset](#class-resourceimportermp3-property-loop-offset) | `0` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **bar\_beats** = `4` [🔗](#class-resourceimportermp3-property-bar-beats)

The number of bars within a single beat in the audio track. This is only relevant for music that wishes to make use of interactive music functionality, not sound effects.

A more convenient editor for [bar\_beats](#class-resourceimportermp3-property-bar-beats) is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

* * *

[int](class_int.md#class-int) **beat\_count** = `0` [🔗](#class-resourceimportermp3-property-beat-count)

The beat count of the audio track. This is only relevant for music that wishes to make use of interactive music functionality, not sound effects.

A more convenient editor for [beat\_count](#class-resourceimportermp3-property-beat-count) is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

* * *

[float](class_float.md#class-float) **bpm** = `0` [🔗](#class-resourceimportermp3-property-bpm)

The beats per minute of the audio track. This should match the BPM measure that was used to compose the track. This is only relevant for music that wishes to make use of interactive music functionality, not sound effects.

A more convenient editor for [bpm](#class-resourceimportermp3-property-bpm) is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

* * *

[bool](class_bool.md#class-bool) **loop** = `false` [🔗](#class-resourceimportermp3-property-loop)

If enabled, the audio will begin playing at the beginning after playback ends by reaching the end of the audio.

**Note:** In [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer), the [AudioStreamPlayer.finished](class_audiostreamplayer.md#class-audiostreamplayer-signal-finished) signal won't be emitted for looping audio when it reaches the end of the audio file, as the audio will keep playing indefinitely.

* * *

[float](class_float.md#class-float) **loop\_offset** = `0` [🔗](#class-resourceimportermp3-property-loop-offset)

Determines where audio will start to loop after playback reaches the end of the audio. This can be used to only loop a part of the audio file, which is useful for some ambient sounds or music. The value is determined in seconds relative to the beginning of the audio. A value of `0.0` will loop the entire audio file.

Only has an effect if [loop](#class-resourceimportermp3-property-loop) is `true`.

A more convenient editor for [loop\_offset](#class-resourceimportermp3-property-loop-offset) is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

[Previous](class_resourceimporterlayeredtexture.md "ResourceImporterLayeredTexture") [Next](class_resourceimporterobj.md "ResourceImporterOBJ")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimporterlayeredtexture.md "ResourceImporterLayeredTexture") [Next](class_resourceimporterobj.md "ResourceImporterOBJ")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).