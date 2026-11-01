---
title: AudioStream — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostream.html
crawled_at: "2026-08-13T10:23:38+12:00"
content_hash: 1e702b1f438a44145821170b110b3b26cf621341e0c038c65335d4f0919997a6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStream

* * *

# AudioStream

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [AudioStreamGenerator](class_audiostreamgenerator.md#class-audiostreamgenerator), [AudioStreamInteractive](class_audiostreaminteractive.md#class-audiostreaminteractive), [AudioStreamMicrophone](class_audiostreammicrophone.md#class-audiostreammicrophone), [AudioStreamMP3](class_audiostreammp3.md#class-audiostreammp3), [AudioStreamOggVorbis](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis), [AudioStreamPlaylist](class_audiostreamplaylist.md#class-audiostreamplaylist), [AudioStreamPolyphonic](class_audiostreampolyphonic.md#class-audiostreampolyphonic), [AudioStreamRandomizer](class_audiostreamrandomizer.md#class-audiostreamrandomizer), [AudioStreamSynchronized](class_audiostreamsynchronized.md#class-audiostreamsynchronized), [AudioStreamWAV](class_audiostreamwav.md#class-audiostreamwav)

Base class for audio streams.

## Description

Base class for audio streams. Audio streams are used for sound effects and music playback, and support WAV (via [AudioStreamWAV](class_audiostreamwav.md#class-audiostreamwav)) and Ogg (via [AudioStreamOggVorbis](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis)) file formats.

## Tutorials

- [Audio streams](../tutorials/audio/audio_streams.md)

- [Audio Generator Demo](https://godotengine.org/asset-library/asset/2759)

- [Audio Microphone Record Demo](https://godotengine.org/asset-library/asset/2760)

- [Audio Spectrum Visualizer Demo](https://godotengine.org/asset-library/asset/2762)


## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [\_get\_bar\_beats](#class-audiostream-private-method-get-bar-beats)() virtualconst |
| [int](class_int.md#class-int) | [\_get\_beat\_count](#class-audiostream-private-method-get-beat-count)() virtualconst |
| [float](class_float.md#class-float) | [\_get\_bpm](#class-audiostream-private-method-get-bpm)() virtualconst |
| [float](class_float.md#class-float) | [\_get\_length](#class-audiostream-private-method-get-length)() virtualconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_parameter\_list](#class-audiostream-private-method-get-parameter-list)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_stream\_name](#class-audiostream-private-method-get-stream-name)() virtualconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_tags](#class-audiostream-private-method-get-tags)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_has\_loop](#class-audiostream-private-method-has-loop)() virtualconst |
| [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) | [\_instantiate\_playback](#class-audiostream-private-method-instantiate-playback)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_monophonic](#class-audiostream-private-method-is-monophonic)() virtualconst |
| [bool](class_bool.md#class-bool) | [can\_be\_sampled](#class-audiostream-method-can-be-sampled)() const |
| [AudioSample](class_audiosample.md#class-audiosample) | [generate\_sample](#class-audiostream-method-generate-sample)() const |
| [float](class_float.md#class-float) | [get\_length](#class-audiostream-method-get-length)() const |
| [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) | [instantiate\_playback](#class-audiostream-method-instantiate-playback)() |
| [bool](class_bool.md#class-bool) | [is\_meta\_stream](#class-audiostream-method-is-meta-stream)() const |
| [bool](class_bool.md#class-bool) | [is\_monophonic](#class-audiostream-method-is-monophonic)() const |

* * *

## Signals

**parameter\_list\_changed**() [🔗](#class-audiostream-signal-parameter-list-changed)

Signal to be emitted to notify when the parameter list changed.

* * *

## Method Descriptions

[int](class_int.md#class-int) **\_get\_bar\_beats**() virtualconst [🔗](#class-audiostream-private-method-get-bar-beats)

Override this method to return the bar beats of this stream.

* * *

[int](class_int.md#class-int) **\_get\_beat\_count**() virtualconst [🔗](#class-audiostream-private-method-get-beat-count)

Overridable method. Should return the total number of beats of this audio stream. Used by the engine to determine the position of every beat.

Ideally, the returned value should be based off the stream's sample rate ( [AudioStreamWAV.mix\_rate](class_audiostreamwav.md#class-audiostreamwav-property-mix-rate), for example).

* * *

[float](class_float.md#class-float) **\_get\_bpm**() virtualconst [🔗](#class-audiostream-private-method-get-bpm)

Overridable method. Should return the tempo of this audio stream, in beats per minute (BPM). Used by the engine to determine the position of every beat.

Ideally, the returned value should be based off the stream's sample rate ( [AudioStreamWAV.mix\_rate](class_audiostreamwav.md#class-audiostreamwav-property-mix-rate), for example).

* * *

[float](class_float.md#class-float) **\_get\_length**() virtualconst [🔗](#class-audiostream-private-method-get-length)

Override this method to customize the returned value of [get\_length()](#class-audiostream-method-get-length). Should return the length of this audio stream, in seconds.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_parameter\_list**() virtualconst [🔗](#class-audiostream-private-method-get-parameter-list)

Return the controllable parameters of this stream. This array contains dictionaries with a property info description format (see [Object.get\_property\_list()](class_object.md#class-object-method-get-property-list)). Additionally, the default value for this parameter must be added tho each dictionary in "default\_value" field.

* * *

[String](class_string.md#class-string) **\_get\_stream\_name**() virtualconst [🔗](#class-audiostream-private-method-get-stream-name)

Override this method to customize the name assigned to this audio stream. Unused by the engine.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_tags**() virtualconst [🔗](#class-audiostream-private-method-get-tags)

Override this method to customize the tags for this audio stream. Should return a [Dictionary](class_dictionary.md#class-dictionary) of strings with the tag as the key and its content as the value.

Commonly used tags include `title`, `artist`, `album`, `tracknumber`, and `date`.

* * *

[bool](class_bool.md#class-bool) **\_has\_loop**() virtualconst [🔗](#class-audiostream-private-method-has-loop)

Override this method to return `true` if this stream has a loop.

* * *

[AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) **\_instantiate\_playback**() virtualconst [🔗](#class-audiostream-private-method-instantiate-playback)

Override this method to customize the returned value of [instantiate\_playback()](#class-audiostream-method-instantiate-playback). Should return a new [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) created when the stream is played (such as by an [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer)).

* * *

[bool](class_bool.md#class-bool) **\_is\_monophonic**() virtualconst [🔗](#class-audiostream-private-method-is-monophonic)

Override this method to customize the returned value of [is\_monophonic()](#class-audiostream-method-is-monophonic). Should return `true` if this audio stream only supports one channel.

* * *

[bool](class_bool.md#class-bool) **can\_be\_sampled**() const [🔗](#class-audiostream-method-can-be-sampled)

**Experimental:** This method may be changed or removed in future versions.

Returns if the current **AudioStream** can be used as a sample. Only static streams can be sampled.

* * *

[AudioSample](class_audiosample.md#class-audiosample) **generate\_sample**() const [🔗](#class-audiostream-method-generate-sample)

**Experimental:** This method may be changed or removed in future versions.

Generates an [AudioSample](class_audiosample.md#class-audiosample) based on the current stream.

* * *

[float](class_float.md#class-float) **get\_length**() const [🔗](#class-audiostream-method-get-length)

Returns the length of the audio stream in seconds. If this stream is an [AudioStreamRandomizer](class_audiostreamrandomizer.md#class-audiostreamrandomizer), returns the length of the last played stream. If this stream has an indefinite length (such as for [AudioStreamGenerator](class_audiostreamgenerator.md#class-audiostreamgenerator) and [AudioStreamMicrophone](class_audiostreammicrophone.md#class-audiostreammicrophone)), returns `0.0`.

* * *

[AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) **instantiate\_playback**() [🔗](#class-audiostream-method-instantiate-playback)

Returns a newly created [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) intended to play this audio stream. Useful for when you want to extend [\_instantiate\_playback()](#class-audiostream-private-method-instantiate-playback) but call [instantiate\_playback()](#class-audiostream-method-instantiate-playback) from an internally held AudioStream subresource. An example of this can be found in the source code for `AudioStreamRandomPitch::instantiate_playback`.

* * *

[bool](class_bool.md#class-bool) **is\_meta\_stream**() const [🔗](#class-audiostream-method-is-meta-stream)

Returns `true` if the stream is a collection of other streams, `false` otherwise.

* * *

[bool](class_bool.md#class-bool) **is\_monophonic**() const [🔗](#class-audiostream-method-is-monophonic)

Returns `true` if this audio stream only supports one channel ( _monophony_), or `false` if the audio stream supports two or more channels ( _polyphony_).

[Previous](class_audioeffectstereoenhance.md "AudioEffectStereoEnhance") [Next](class_audiostreamgenerator.md "AudioStreamGenerator")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audioeffectstereoenhance.md "AudioEffectStereoEnhance") [Next](class_audiostreamgenerator.md "AudioStreamGenerator")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).