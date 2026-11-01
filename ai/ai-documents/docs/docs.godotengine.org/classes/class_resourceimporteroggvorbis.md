---
title: ResourceImporterOggVorbis — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimporteroggvorbis.html
crawled_at: "2026-08-13T10:35:25+12:00"
content_hash: 57d1fc11e0cc3d975e11b9f54ad325dee1f53f7300146ac467bcde8adfbd367c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterOggVorbis

* * *

# ResourceImporterOggVorbis

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports an Ogg Vorbis audio file for playback.

## Description

Ogg Vorbis is a lossy audio format, with better audio quality compared to [ResourceImporterMP3](class_resourceimportermp3.md#class-resourceimportermp3) at a given bitrate.

In most cases, it's recommended to use Ogg Vorbis over MP3. However, if you're using an MP3 sound source with no higher quality source available, then it's recommended to use the MP3 file directly to avoid double lossy compression.

Ogg Vorbis requires more CPU to decode than [ResourceImporterWAV](class_resourceimporterwav.md#class-resourceimporterwav). If you need to play a lot of simultaneous sounds, it's recommended to use WAV for those sounds instead, especially if targeting low-end devices.

## Tutorials

- [Importing audio samples](../tutorials/assets_pipeline/importing_audio_samples.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bar\_beats](#class-resourceimporteroggvorbis-property-bar-beats) | `4` |
| [int](class_int.md#class-int) | [beat\_count](#class-resourceimporteroggvorbis-property-beat-count) | `0` |
| [float](class_float.md#class-float) | [bpm](#class-resourceimporteroggvorbis-property-bpm) | `0` |
| [bool](class_bool.md#class-bool) | [loop](#class-resourceimporteroggvorbis-property-loop) | `false` |
| [float](class_float.md#class-float) | [loop\_offset](#class-resourceimporteroggvorbis-property-loop-offset) | `0` |

## Methods

|     |     |
| --- | --- |
| [AudioStreamOggVorbis](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis) | [load\_from\_buffer](#class-resourceimporteroggvorbis-method-load-from-buffer)(stream\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) static |
| [AudioStreamOggVorbis](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis) | [load\_from\_file](#class-resourceimporteroggvorbis-method-load-from-file)(path: [String](class_string.md#class-string)) static |

* * *

## Property Descriptions

[int](class_int.md#class-int) **bar\_beats** = `4` [🔗](#class-resourceimporteroggvorbis-property-bar-beats)

The number of bars within a single beat in the audio track. This is only relevant for music that wishes to make use of interactive music functionality, not sound effects.

A more convenient editor for [bar\_beats](#class-resourceimporteroggvorbis-property-bar-beats) is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

* * *

[int](class_int.md#class-int) **beat\_count** = `0` [🔗](#class-resourceimporteroggvorbis-property-beat-count)

The beat count of the audio track. This is only relevant for music that wishes to make use of interactive music functionality, not sound effects.

A more convenient editor for [beat\_count](#class-resourceimporteroggvorbis-property-beat-count) is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

* * *

[float](class_float.md#class-float) **bpm** = `0` [🔗](#class-resourceimporteroggvorbis-property-bpm)

The beats per minute of the audio track. This should match the BPM measure that was used to compose the track. This is only relevant for music that wishes to make use of interactive music functionality, not sound effects.

A more convenient editor for [bpm](#class-resourceimporteroggvorbis-property-bpm) is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

* * *

[bool](class_bool.md#class-bool) **loop** = `false` [🔗](#class-resourceimporteroggvorbis-property-loop)

If enabled, the audio will begin playing at the beginning after playback ends by reaching the end of the audio.

**Note:** In [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer), the [AudioStreamPlayer.finished](class_audiostreamplayer.md#class-audiostreamplayer-signal-finished) signal won't be emitted for looping audio when it reaches the end of the audio file, as the audio will keep playing indefinitely.

* * *

[float](class_float.md#class-float) **loop\_offset** = `0` [🔗](#class-resourceimporteroggvorbis-property-loop-offset)

Determines where audio will start to loop after playback reaches the end of the audio. This can be used to only loop a part of the audio file, which is useful for some ambient sounds or music. The value is determined in seconds relative to the beginning of the audio. A value of `0.0` will loop the entire audio file.

Only has an effect if [loop](#class-resourceimporteroggvorbis-property-loop) is `true`.

A more convenient editor for [loop\_offset](#class-resourceimporteroggvorbis-property-loop-offset) is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

* * *

## Method Descriptions

[AudioStreamOggVorbis](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis) **load\_from\_buffer**(stream\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) static [🔗](#class-resourceimporteroggvorbis-method-load-from-buffer)

**Deprecated:** Use [AudioStreamOggVorbis.load\_from\_buffer()](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis-method-load-from-buffer) instead.

Creates a new [AudioStreamOggVorbis](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis) instance from the given buffer. The buffer must contain Ogg Vorbis data.

* * *

[AudioStreamOggVorbis](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis) **load\_from\_file**(path: [String](class_string.md#class-string)) static [🔗](#class-resourceimporteroggvorbis-method-load-from-file)

**Deprecated:** Use [AudioStreamOggVorbis.load\_from\_file()](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis-method-load-from-file) instead.

Creates a new [AudioStreamOggVorbis](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis) instance from the given file path. The file must be in Ogg Vorbis format.

[Previous](class_resourceimporterobj.md "ResourceImporterOBJ") [Next](class_resourceimporterscene.md "ResourceImporterScene")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimporterobj.md "ResourceImporterOBJ") [Next](class_resourceimporterscene.md "ResourceImporterScene")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).