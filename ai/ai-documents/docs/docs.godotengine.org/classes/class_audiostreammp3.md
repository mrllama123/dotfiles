---
title: AudioStreamMP3 — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreammp3.html
crawled_at: "2026-08-13T10:24:13+12:00"
content_hash: 0aff8d548dcae61127a9e04f6c67f15a38d7b59d5e06896af26bd17cea4200ba
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamMP3

* * *

# AudioStreamMP3

**Inherits:** [AudioStream](class_audiostream.md#class-audiostream) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

MP3 audio stream driver.

## Description

MP3 audio stream driver. See [data](#class-audiostreammp3-property-data) if you want to load an MP3 file at run-time.

**Note:** This class can optionally support legacy MP1 and MP2 formats, provided that the engine is compiled with the `minimp3_extra_formats=yes` SCons option. These extra formats are not enabled by default.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bar\_beats](#class-audiostreammp3-property-bar-beats) | `4` |
| [int](class_int.md#class-int) | [beat\_count](#class-audiostreammp3-property-beat-count) | `0` |
| [float](class_float.md#class-float) | [bpm](#class-audiostreammp3-property-bpm) | `0.0` |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [data](#class-audiostreammp3-property-data) | `PackedByteArray()` |
| [bool](class_bool.md#class-bool) | [loop](#class-audiostreammp3-property-loop) | `false` |
| [float](class_float.md#class-float) | [loop\_offset](#class-audiostreammp3-property-loop-offset) | `0.0` |

## Methods

|     |     |
| --- | --- |
| [AudioStreamMP3](#class-audiostreammp3) | [load\_from\_buffer](#class-audiostreammp3-method-load-from-buffer)(stream\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) static |
| [AudioStreamMP3](#class-audiostreammp3) | [load\_from\_file](#class-audiostreammp3-method-load-from-file)(path: [String](class_string.md#class-string)) static |

* * *

## Property Descriptions

[int](class_int.md#class-int) **bar\_beats** = `4` [🔗](#class-audiostreammp3-property-bar-beats)

- void **set\_bar\_beats**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bar\_beats**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **beat\_count** = `0` [🔗](#class-audiostreammp3-property-beat-count)

- void **set\_beat\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_beat\_count**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **bpm** = `0.0` [🔗](#class-audiostreammp3-property-bpm)

- void **set\_bpm**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bpm**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **data** = `PackedByteArray()` [🔗](#class-audiostreammp3-property-data)

- void **set\_data**(value: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_data**()


Contains the audio data in bytes.

You can load a file without having to import it beforehand using the code snippet below. Keep in mind that this snippet loads the whole file into memory and may not be ideal for huge files (hundreds of megabytes or more).

GDScriptC#

```
func load_mp3(path):
    var file = FileAccess.open(path, FileAccess.READ)
    var sound = AudioStreamMP3.new()
    sound.data = file.get_buffer(file.get_length())
    return sound

```

```
public AudioStreamMP3 LoadMP3(string path)
{
    using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
    var sound = new AudioStreamMP3();
    sound.Data = file.GetBuffer(file.GetLength());
    return sound;
}

```

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

[bool](class_bool.md#class-bool) **loop** = `false` [🔗](#class-audiostreammp3-property-loop)

- void **set\_loop**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_loop**()


If `true`, the stream will automatically loop when it reaches the end.

* * *

[float](class_float.md#class-float) **loop\_offset** = `0.0` [🔗](#class-audiostreammp3-property-loop-offset)

- void **set\_loop\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_loop\_offset**()


Time in seconds at which the stream starts after being looped.

* * *

## Method Descriptions

[AudioStreamMP3](#class-audiostreammp3) **load\_from\_buffer**(stream\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) static [🔗](#class-audiostreammp3-method-load-from-buffer)

Creates a new **AudioStreamMP3** instance from the given buffer. The buffer must contain MP3 data.

* * *

[AudioStreamMP3](#class-audiostreammp3) **load\_from\_file**(path: [String](class_string.md#class-string)) static [🔗](#class-audiostreammp3-method-load-from-file)

Creates a new **AudioStreamMP3** instance from the given file path. The file must be in MP3 format.

[Previous](class_audiostreammicrophone.md "AudioStreamMicrophone") [Next](class_audiostreamoggvorbis.md "AudioStreamOggVorbis")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreammicrophone.md "AudioStreamMicrophone") [Next](class_audiostreamoggvorbis.md "AudioStreamOggVorbis")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).