---
title: ResourceImporterWAV — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimporterwav.html
crawled_at: "2026-08-13T10:21:21+12:00"
content_hash: 8cc6576ddc1325e4ab503488ee7ea791176a587b551cd1ec52c243cee02543c5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterWAV

* * *

# ResourceImporterWAV

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports a WAV audio file for playback.

## Description

WAV is an uncompressed format, which can provide higher quality compared to Ogg Vorbis and MP3. It also has the lowest CPU cost to decode. This means high numbers of WAV sounds can be played at the same time, even on low-end devices.

By default, Godot imports WAV files using the lossy Quite OK Audio compression. You may change this by setting the [compress/mode](#class-resourceimporterwav-property-compress-mode) property.

## Tutorials

- [Importing audio samples](../tutorials/assets_pipeline/importing_audio_samples.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [compress/mode](#class-resourceimporterwav-property-compress-mode) | `2` |
| [int](class_int.md#class-int) | [edit/loop\_begin](#class-resourceimporterwav-property-edit-loop-begin) | `0` |
| [int](class_int.md#class-int) | [edit/loop\_end](#class-resourceimporterwav-property-edit-loop-end) | `-1` |
| [int](class_int.md#class-int) | [edit/loop\_mode](#class-resourceimporterwav-property-edit-loop-mode) | `0` |
| [bool](class_bool.md#class-bool) | [edit/normalize](#class-resourceimporterwav-property-edit-normalize) | `false` |
| [bool](class_bool.md#class-bool) | [edit/trim](#class-resourceimporterwav-property-edit-trim) | `false` |
| [bool](class_bool.md#class-bool) | [force/8\_bit](#class-resourceimporterwav-property-force-8-bit) | `false` |
| [bool](class_bool.md#class-bool) | [force/max\_rate](#class-resourceimporterwav-property-force-max-rate) | `false` |
| [float](class_float.md#class-float) | [force/max\_rate\_hz](#class-resourceimporterwav-property-force-max-rate-hz) | `44100` |
| [bool](class_bool.md#class-bool) | [force/mono](#class-resourceimporterwav-property-force-mono) | `false` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **compress/mode** = `2` [🔗](#class-resourceimporterwav-property-compress-mode)

The compression mode to use on import.

- **PCM (Uncompressed):** Imports audio data without any form of compression, preserving the highest possible quality. It has the lowest CPU cost, but the highest memory usage.

- **IMA ADPCM:** Applies fast, lossy compression during import, noticeably decreasing the quality, but with low CPU cost and memory usage. Does not support seeking and only Forward loop mode is supported.

- **\`Quite OK Audio <https://qoaformat.org/>\`\_\_:** Also applies lossy compression on import, having a slightly higher CPU cost compared to IMA ADPCM, but much higher quality and the lowest memory usage.


* * *

[int](class_int.md#class-int) **edit/loop\_begin** = `0` [🔗](#class-resourceimporterwav-property-edit-loop-begin)

The begin loop point to use when [edit/loop\_mode](#class-resourceimporterwav-property-edit-loop-mode) is **Forward**, **Ping-Pong**, or **Backward**. This is set in samples after the beginning of the audio file.

* * *

[int](class_int.md#class-int) **edit/loop\_end** = `-1` [🔗](#class-resourceimporterwav-property-edit-loop-end)

The end loop point to use when [edit/loop\_mode](#class-resourceimporterwav-property-edit-loop-mode) is **Forward**, **Ping-Pong**, or **Backward**. This is set in samples after the beginning of the audio file. A value of `-1` uses the end of the audio file as the end loop point.

* * *

[int](class_int.md#class-int) **edit/loop\_mode** = `0` [🔗](#class-resourceimporterwav-property-edit-loop-mode)

Controls how audio should loop.

- **Detect From WAV:** Uses loop information from the WAV metadata.

- **Disabled:** Don't loop audio, even if the metadata indicates the file playback should loop.

- **Forward:** Standard audio looping. Plays the audio forward from the beginning to [edit/loop\_end](#class-resourceimporterwav-property-edit-loop-end), then returns to [edit/loop\_begin](#class-resourceimporterwav-property-edit-loop-begin) and repeats.

- **Ping-Pong:** Plays the audio forward until [edit/loop\_end](#class-resourceimporterwav-property-edit-loop-end), then backwards to [edit/loop\_begin](#class-resourceimporterwav-property-edit-loop-begin), repeating this cycle.

- **Backward:** Plays the audio backwards from [edit/loop\_end](#class-resourceimporterwav-property-edit-loop-end) to [edit/loop\_begin](#class-resourceimporterwav-property-edit-loop-begin), then repeats.


**Note:** In [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer), the [AudioStreamPlayer.finished](class_audiostreamplayer.md#class-audiostreamplayer-signal-finished) signal won't be emitted for looping audio when it reaches the end of the audio file, as the audio will keep playing indefinitely.

* * *

[bool](class_bool.md#class-bool) **edit/normalize** = `false` [🔗](#class-resourceimporterwav-property-edit-normalize)

If `true`, normalize the audio volume so that its peak volume is equal to 0 dB. When enabled, normalization will make audio sound louder depending on its original peak volume.

* * *

[bool](class_bool.md#class-bool) **edit/trim** = `false` [🔗](#class-resourceimporterwav-property-edit-trim)

If `true`, automatically trim the beginning and end of the audio if it's lower than -50 dB after normalization (see [edit/normalize](#class-resourceimporterwav-property-edit-normalize)). This prevents having files with silence at the beginning or end, which increases their size unnecessarily and adds latency to the moment they are played back. A fade-in/fade-out period of 500 samples is also used during trimming to avoid audible pops.

* * *

[bool](class_bool.md#class-bool) **force/8\_bit** = `false` [🔗](#class-resourceimporterwav-property-force-8-bit)

If `true`, forces the imported audio to use 8-bit quantization if the source file is 16-bit or higher.

Enabling this is generally not recommended, as 8-bit quantization decreases audio quality significantly. If you need smaller file sizes, consider using Ogg Vorbis or MP3 audio instead.

* * *

[bool](class_bool.md#class-bool) **force/max\_rate** = `false` [🔗](#class-resourceimporterwav-property-force-max-rate)

If set to a value greater than `0`, forces the audio's sample rate to be reduced to a value lower than or equal to the value specified in [force/max\_rate\_hz](#class-resourceimporterwav-property-force-max-rate-hz).

This can decrease file size noticeably on certain sounds, without impacting quality depending on the actual sound's contents. See [Best practices](../tutorials/assets_pipeline/importing_audio_samples.md#doc-importing-audio-samples-best-practices) for more information.

* * *

[float](class_float.md#class-float) **force/max\_rate\_hz** = `44100` [🔗](#class-resourceimporterwav-property-force-max-rate-hz)

The frequency to limit the imported audio sample to (in Hz). Only effective if [force/max\_rate](#class-resourceimporterwav-property-force-max-rate) is `true`.

* * *

[bool](class_bool.md#class-bool) **force/mono** = `false` [🔗](#class-resourceimporterwav-property-force-mono)

If `true`, forces the imported audio to be mono if the source file is stereo. This decreases the file size by 50% by merging the two channels into one.

[Previous](class_resourceimportertextureatlas.md "ResourceImporterTextureAtlas") [Next](class_resourceloader.md "ResourceLoader")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimportertextureatlas.md "ResourceImporterTextureAtlas") [Next](class_resourceloader.md "ResourceLoader")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).