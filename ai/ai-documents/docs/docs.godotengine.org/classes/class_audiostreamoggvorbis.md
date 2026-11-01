---
title: AudioStreamOggVorbis — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamoggvorbis.html
crawled_at: "2026-08-13T10:39:06+12:00"
content_hash: 07a61d6ef4b5c8df0d7ca4660b0bd6b2fa2a83040c0a2c1fc85524456c578198
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamOggVorbis

* * *

# AudioStreamOggVorbis

**Inherits:** [AudioStream](class_audiostream.md#class-audiostream) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A class representing an Ogg Vorbis audio stream.

## Description

The AudioStreamOggVorbis class is a specialized [AudioStream](class_audiostream.md#class-audiostream) for handling Ogg Vorbis file formats. It offers functionality for loading and playing back Ogg Vorbis files, as well as managing looping and other playback properties. This class is part of the audio stream system, which also supports WAV files through the [AudioStreamWAV](class_audiostreamwav.md#class-audiostreamwav) class.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bar\_beats](#class-audiostreamoggvorbis-property-bar-beats) | `4` |
| [int](class_int.md#class-int) | [beat\_count](#class-audiostreamoggvorbis-property-beat-count) | `0` |
| [float](class_float.md#class-float) | [bpm](#class-audiostreamoggvorbis-property-bpm) | `0.0` |
| [bool](class_bool.md#class-bool) | [loop](#class-audiostreamoggvorbis-property-loop) | `false` |
| [float](class_float.md#class-float) | [loop\_offset](#class-audiostreamoggvorbis-property-loop-offset) | `0.0` |
| [OggPacketSequence](class_oggpacketsequence.md#class-oggpacketsequence) | [packet\_sequence](#class-audiostreamoggvorbis-property-packet-sequence) |  |
| [Dictionary](class_dictionary.md#class-dictionary) | [tags](#class-audiostreamoggvorbis-property-tags) | `{}` |

## Methods

|     |     |
| --- | --- |
| [AudioStreamOggVorbis](#class-audiostreamoggvorbis) | [load\_from\_buffer](#class-audiostreamoggvorbis-method-load-from-buffer)(stream\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) static |
| [AudioStreamOggVorbis](#class-audiostreamoggvorbis) | [load\_from\_file](#class-audiostreamoggvorbis-method-load-from-file)(path: [String](class_string.md#class-string)) static |

* * *

## Property Descriptions

[int](class_int.md#class-int) **bar\_beats** = `4` [🔗](#class-audiostreamoggvorbis-property-bar-beats)

- void **set\_bar\_beats**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bar\_beats**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **beat\_count** = `0` [🔗](#class-audiostreamoggvorbis-property-beat-count)

- void **set\_beat\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_beat\_count**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **bpm** = `0.0` [🔗](#class-audiostreamoggvorbis-property-bpm)

- void **set\_bpm**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bpm**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **loop** = `false` [🔗](#class-audiostreamoggvorbis-property-loop)

- void **set\_loop**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_loop**()


If `true`, the audio will play again from the specified [loop\_offset](#class-audiostreamoggvorbis-property-loop-offset) once it is done playing. Useful for ambient sounds and background music.

* * *

[float](class_float.md#class-float) **loop\_offset** = `0.0` [🔗](#class-audiostreamoggvorbis-property-loop-offset)

- void **set\_loop\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_loop\_offset**()


Time in seconds at which the stream starts after being looped.

* * *

[OggPacketSequence](class_oggpacketsequence.md#class-oggpacketsequence) **packet\_sequence** [🔗](#class-audiostreamoggvorbis-property-packet-sequence)

- void **set\_packet\_sequence**(value: [OggPacketSequence](class_oggpacketsequence.md#class-oggpacketsequence))

- [OggPacketSequence](class_oggpacketsequence.md#class-oggpacketsequence) **get\_packet\_sequence**()


Contains the raw Ogg data for this stream.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **tags** = `{}` [🔗](#class-audiostreamoggvorbis-property-tags)

- void **set\_tags**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_tags**()


Contains user-defined tags if found in the Ogg Vorbis data.

Commonly used tags include `title`, `artist`, `album`, `tracknumber`, and `date` ( `date` does not have a standard date format).

**Note:** No tag is _guaranteed_ to be present in every file, so make sure to account for the keys not always existing.

* * *

## Method Descriptions

[AudioStreamOggVorbis](#class-audiostreamoggvorbis) **load\_from\_buffer**(stream\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) static [🔗](#class-audiostreamoggvorbis-method-load-from-buffer)

Creates a new **AudioStreamOggVorbis** instance from the given buffer. The buffer must contain Ogg Vorbis data.

* * *

[AudioStreamOggVorbis](#class-audiostreamoggvorbis) **load\_from\_file**(path: [String](class_string.md#class-string)) static [🔗](#class-audiostreamoggvorbis-method-load-from-file)

Creates a new **AudioStreamOggVorbis** instance from the given file path. The file must be in Ogg Vorbis format.

[Previous](class_audiostreammp3.md "AudioStreamMP3") [Next](class_audiostreamplaylist.md "AudioStreamPlaylist")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreammp3.md "AudioStreamMP3") [Next](class_audiostreamplaylist.md "AudioStreamPlaylist")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).