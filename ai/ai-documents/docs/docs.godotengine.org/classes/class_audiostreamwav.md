---
title: AudioStreamWAV — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamwav.html
crawled_at: "2026-08-13T10:27:04+12:00"
content_hash: 3ffe84833bc35ba7dcaf296f776caa4dbe3e04fa95ad9e93b91b8add2a97ae6c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamWAV

* * *

# AudioStreamWAV

**Inherits:** [AudioStream](class_audiostream.md#class-audiostream) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Stores audio data loaded from WAV files.

## Description

AudioStreamWAV stores sound samples loaded from WAV files. To play the stored sound, use an [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer) (for non-positional audio) or [AudioStreamPlayer2D](class_audiostreamplayer2d.md#class-audiostreamplayer2d)/ [AudioStreamPlayer3D](class_audiostreamplayer3d.md#class-audiostreamplayer3d) (for positional audio). The sound can be looped.

This class can also be used to store dynamically-generated PCM audio data. See also [AudioStreamGenerator](class_audiostreamgenerator.md#class-audiostreamgenerator) for procedural audio generation.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [data](#class-audiostreamwav-property-data) | `PackedByteArray()` |
| [Format](#enum-audiostreamwav-format) | [format](#class-audiostreamwav-property-format) | `0` |
| [int](class_int.md#class-int) | [loop\_begin](#class-audiostreamwav-property-loop-begin) | `0` |
| [int](class_int.md#class-int) | [loop\_end](#class-audiostreamwav-property-loop-end) | `0` |
| [LoopMode](#enum-audiostreamwav-loopmode) | [loop\_mode](#class-audiostreamwav-property-loop-mode) | `0` |
| [int](class_int.md#class-int) | [mix\_rate](#class-audiostreamwav-property-mix-rate) | `44100` |
| [bool](class_bool.md#class-bool) | [stereo](#class-audiostreamwav-property-stereo) | `false` |
| [Dictionary](class_dictionary.md#class-dictionary) | [tags](#class-audiostreamwav-property-tags) | `{}` |

## Methods

|     |     |
| --- | --- |
| [AudioStreamWAV](#class-audiostreamwav) | [load\_from\_buffer](#class-audiostreamwav-method-load-from-buffer)(stream\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), options: [Dictionary](class_dictionary.md#class-dictionary) = {}) static |
| [AudioStreamWAV](#class-audiostreamwav) | [load\_from\_file](#class-audiostreamwav-method-load-from-file)(path: [String](class_string.md#class-string), options: [Dictionary](class_dictionary.md#class-dictionary) = {}) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_to\_wav](#class-audiostreamwav-method-save-to-wav)(path: [String](class_string.md#class-string)) |

* * *

## Enumerations

enum **Format**: [🔗](#enum-audiostreamwav-format)

[Format](#enum-audiostreamwav-format) **FORMAT\_8\_BITS** = `0`

8-bit PCM audio codec.

[Format](#enum-audiostreamwav-format) **FORMAT\_16\_BITS** = `1`

16-bit PCM audio codec.

[Format](#enum-audiostreamwav-format) **FORMAT\_IMA\_ADPCM** = `2`

Audio is lossily compressed as IMA ADPCM.

[Format](#enum-audiostreamwav-format) **FORMAT\_QOA** = `3`

Audio is lossily compressed as [Quite OK Audio](https://qoaformat.org/).

* * *

enum **LoopMode**: [🔗](#enum-audiostreamwav-loopmode)

[LoopMode](#enum-audiostreamwav-loopmode) **LOOP\_DISABLED** = `0`

Audio does not loop.

[LoopMode](#enum-audiostreamwav-loopmode) **LOOP\_FORWARD** = `1`

Audio loops the data between [loop\_begin](#class-audiostreamwav-property-loop-begin) and [loop\_end](#class-audiostreamwav-property-loop-end), playing forward only.

[LoopMode](#enum-audiostreamwav-loopmode) **LOOP\_PINGPONG** = `2`

Audio loops the data between [loop\_begin](#class-audiostreamwav-property-loop-begin) and [loop\_end](#class-audiostreamwav-property-loop-end), playing back and forth.

[LoopMode](#enum-audiostreamwav-loopmode) **LOOP\_BACKWARD** = `3`

Audio loops the data between [loop\_begin](#class-audiostreamwav-property-loop-begin) and [loop\_end](#class-audiostreamwav-property-loop-end), playing backward only.

* * *

## Property Descriptions

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **data** = `PackedByteArray()` [🔗](#class-audiostreamwav-property-data)

- void **set\_data**(value: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_data**()


Contains the audio data in bytes.

**Note:** If [format](#class-audiostreamwav-property-format) is set to [FORMAT\_8\_BITS](#class-audiostreamwav-constant-format-8-bits), this property expects signed 8-bit PCM data. To convert from unsigned 8-bit PCM, subtract 128 from each byte.

**Note:** If [format](#class-audiostreamwav-property-format) is set to [FORMAT\_QOA](#class-audiostreamwav-constant-format-qoa), this property expects data from a full QOA file.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

[Format](#enum-audiostreamwav-format) **format** = `0` [🔗](#class-audiostreamwav-property-format)

- void **set\_format**(value: [Format](#enum-audiostreamwav-format))

- [Format](#enum-audiostreamwav-format) **get\_format**()


Audio format.

* * *

[int](class_int.md#class-int) **loop\_begin** = `0` [🔗](#class-audiostreamwav-property-loop-begin)

- void **set\_loop\_begin**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_loop\_begin**()


The loop start point (in number of samples, relative to the beginning of the stream).

* * *

[int](class_int.md#class-int) **loop\_end** = `0` [🔗](#class-audiostreamwav-property-loop-end)

- void **set\_loop\_end**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_loop\_end**()


The loop end point (in number of samples, relative to the beginning of the stream).

* * *

[LoopMode](#enum-audiostreamwav-loopmode) **loop\_mode** = `0` [🔗](#class-audiostreamwav-property-loop-mode)

- void **set\_loop\_mode**(value: [LoopMode](#enum-audiostreamwav-loopmode))

- [LoopMode](#enum-audiostreamwav-loopmode) **get\_loop\_mode**()


The loop mode.

* * *

[int](class_int.md#class-int) **mix\_rate** = `44100` [🔗](#class-audiostreamwav-property-mix-rate)

- void **set\_mix\_rate**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_mix\_rate**()


The sample rate for mixing this audio. Higher values require more storage space, but result in better quality.

In games, common sample rates in use are `11025`, `16000`, `22050`, `32000`, `44100`, and `48000`.

According to the [Nyquist-Shannon sampling theorem](https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem), there is no quality difference to human hearing when going past 40,000 Hz (since most humans can only hear up to ~20,000 Hz, often less). If you are using lower-pitched sounds such as voices, lower sample rates such as `32000` or `22050` may be usable with no loss in quality.

* * *

[bool](class_bool.md#class-bool) **stereo** = `false` [🔗](#class-audiostreamwav-property-stereo)

- void **set\_stereo**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_stereo**()


If `true`, audio is stereo.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **tags** = `{}` [🔗](#class-audiostreamwav-property-tags)

- void **set\_tags**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_tags**()


Contains user-defined tags if found in the WAV data.

Commonly used tags include `title`, `artist`, `album`, `tracknumber`, and `date` ( `date` does not have a standard date format).

**Note:** No tag is _guaranteed_ to be present in every file, so make sure to account for the keys not always existing.

**Note:** Only WAV files using a `LIST` chunk with an identifier of `INFO` to encode the tags are currently supported.

* * *

## Method Descriptions

[AudioStreamWAV](#class-audiostreamwav) **load\_from\_buffer**(stream\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), options: [Dictionary](class_dictionary.md#class-dictionary) = {}) static [🔗](#class-audiostreamwav-method-load-from-buffer)

Creates a new **AudioStreamWAV** instance from the given buffer. The buffer must contain WAV data.

The keys and values of `options` match the properties of [ResourceImporterWAV](class_resourceimporterwav.md#class-resourceimporterwav). The usage of `options` is identical to [load\_from\_file()](#class-audiostreamwav-method-load-from-file).

* * *

[AudioStreamWAV](#class-audiostreamwav) **load\_from\_file**(path: [String](class_string.md#class-string), options: [Dictionary](class_dictionary.md#class-dictionary) = {}) static [🔗](#class-audiostreamwav-method-load-from-file)

Creates a new **AudioStreamWAV** instance from the given file path. The file must be in WAV format.

The keys and values of `options` match the properties of [ResourceImporterWAV](class_resourceimporterwav.md#class-resourceimporterwav).

**Example:** Load the first file dropped as a WAV and play it:

```
@onready var audio_player = $AudioStreamPlayer

func _ready():
    get_window().files_dropped.connect(_on_files_dropped)

func _on_files_dropped(files):
    if files[0].get_extension() == "wav":
        audio_player.stream = AudioStreamWAV.load_from_file(files[0], {
                "force/max_rate": true,
                "force/max_rate_hz": 11025
            })
        audio_player.play()

```

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_to\_wav**(path: [String](class_string.md#class-string)) [🔗](#class-audiostreamwav-method-save-to-wav)

Saves the AudioStreamWAV as a WAV file to `path`. Samples with IMA ADPCM or Quite OK Audio formats can't be saved.

**Note:** A `.wav` extension is automatically appended to `path` if it is missing.

[Previous](class_audiostreamsynchronized.md "AudioStreamSynchronized") [Next](class_basematerial3d.md "BaseMaterial3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamsynchronized.md "AudioStreamSynchronized") [Next](class_basematerial3d.md "BaseMaterial3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).