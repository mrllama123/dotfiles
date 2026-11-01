---
title: AudioStreamPlayback — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamplayback.html
crawled_at: "2026-08-13T10:24:53+12:00"
content_hash: 86e726be4a7f9432de6074e51d888926ea5c943e4e03b6b99c3a5a960d817b93
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamPlayback

* * *

# AudioStreamPlayback

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [AudioStreamPlaybackInteractive](class_audiostreamplaybackinteractive.md#class-audiostreamplaybackinteractive), [AudioStreamPlaybackPlaylist](class_audiostreamplaybackplaylist.md#class-audiostreamplaybackplaylist), [AudioStreamPlaybackPolyphonic](class_audiostreamplaybackpolyphonic.md#class-audiostreamplaybackpolyphonic), [AudioStreamPlaybackResampled](class_audiostreamplaybackresampled.md#class-audiostreamplaybackresampled), [AudioStreamPlaybackSynchronized](class_audiostreamplaybacksynchronized.md#class-audiostreamplaybacksynchronized)

Meta class for playing back audio.

## Description

Can play, loop, pause a scroll through audio. See [AudioStream](class_audiostream.md#class-audiostream) and [AudioStreamOggVorbis](class_audiostreamoggvorbis.md#class-audiostreamoggvorbis) for usage.

## Tutorials

- [Audio Generator Demo](https://godotengine.org/asset-library/asset/2759)


## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [\_get\_loop\_count](#class-audiostreamplayback-private-method-get-loop-count)() virtualconst |
| [Variant](class_variant.md#class-variant) | [\_get\_parameter](#class-audiostreamplayback-private-method-get-parameter)(name: [StringName](class_stringname.md#class-stringname)) virtualconst |
| [float](class_float.md#class-float) | [\_get\_playback\_position](#class-audiostreamplayback-private-method-get-playback-position)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_playing](#class-audiostreamplayback-private-method-is-playing)() virtualconst |
| [int](class_int.md#class-int) | [\_mix](#class-audiostreamplayback-private-method-mix)(buffer: `AudioFrame*`, rate\_scale: [float](class_float.md#class-float), frames: [int](class_int.md#class-int)) virtualrequired |
| void | [\_seek](#class-audiostreamplayback-private-method-seek)(position: [float](class_float.md#class-float)) virtual |
| void | [\_set\_parameter](#class-audiostreamplayback-private-method-set-parameter)(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) virtual |
| void | [\_start](#class-audiostreamplayback-private-method-start)(from\_pos: [float](class_float.md#class-float)) virtual |
| void | [\_stop](#class-audiostreamplayback-private-method-stop)() virtual |
| void | [\_tag\_used\_streams](#class-audiostreamplayback-private-method-tag-used-streams)() virtual |
| [int](class_int.md#class-int) | [get\_loop\_count](#class-audiostreamplayback-method-get-loop-count)() const |
| [float](class_float.md#class-float) | [get\_playback\_position](#class-audiostreamplayback-method-get-playback-position)() const |
| [AudioSamplePlayback](class_audiosampleplayback.md#class-audiosampleplayback) | [get\_sample\_playback](#class-audiostreamplayback-method-get-sample-playback)() const |
| [bool](class_bool.md#class-bool) | [is\_playing](#class-audiostreamplayback-method-is-playing)() const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [mix\_audio](#class-audiostreamplayback-method-mix-audio)(rate\_scale: [float](class_float.md#class-float), frames: [int](class_int.md#class-int)) |
| void | [seek](#class-audiostreamplayback-method-seek)(time: [float](class_float.md#class-float) = 0.0) |
| void | [set\_sample\_playback](#class-audiostreamplayback-method-set-sample-playback)(playback\_sample: [AudioSamplePlayback](class_audiosampleplayback.md#class-audiosampleplayback)) |
| void | [start](#class-audiostreamplayback-method-start)(from\_pos: [float](class_float.md#class-float) = 0.0) |
| void | [stop](#class-audiostreamplayback-method-stop)() |

* * *

## Method Descriptions

[int](class_int.md#class-int) **\_get\_loop\_count**() virtualconst [🔗](#class-audiostreamplayback-private-method-get-loop-count)

Overridable method. Should return how many times this audio stream has looped. Most built-in playbacks always return `0`.

* * *

[Variant](class_variant.md#class-variant) **\_get\_parameter**(name: [StringName](class_stringname.md#class-stringname)) virtualconst [🔗](#class-audiostreamplayback-private-method-get-parameter)

Return the current value of a playback parameter by name (see [AudioStream.\_get\_parameter\_list()](class_audiostream.md#class-audiostream-private-method-get-parameter-list)).

* * *

[float](class_float.md#class-float) **\_get\_playback\_position**() virtualconst [🔗](#class-audiostreamplayback-private-method-get-playback-position)

Overridable method. Should return the current progress along the audio stream, in seconds.

* * *

[bool](class_bool.md#class-bool) **\_is\_playing**() virtualconst [🔗](#class-audiostreamplayback-private-method-is-playing)

Overridable method. Should return `true` if this playback is active and playing its audio stream.

* * *

[int](class_int.md#class-int) **\_mix**(buffer: `AudioFrame*`, rate\_scale: [float](class_float.md#class-float), frames: [int](class_int.md#class-int)) virtualrequired [🔗](#class-audiostreamplayback-private-method-mix)

Override this method to customize how the audio stream is mixed. This method is called even if the playback is not active.

**Note:** It is not useful to override this method in GDScript or C#. Only GDExtension can take advantage of it.

* * *

void **\_seek**(position: [float](class_float.md#class-float)) virtual [🔗](#class-audiostreamplayback-private-method-seek)

Override this method to customize what happens when seeking this audio stream at the given `position`, such as by calling [AudioStreamPlayer.seek()](class_audiostreamplayer.md#class-audiostreamplayer-method-seek).

* * *

void **\_set\_parameter**(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) virtual [🔗](#class-audiostreamplayback-private-method-set-parameter)

Set the current value of a playback parameter by name (see [AudioStream.\_get\_parameter\_list()](class_audiostream.md#class-audiostream-private-method-get-parameter-list)).

* * *

void **\_start**(from\_pos: [float](class_float.md#class-float)) virtual [🔗](#class-audiostreamplayback-private-method-start)

Override this method to customize what happens when the playback starts at the given position, such as by calling [AudioStreamPlayer.play()](class_audiostreamplayer.md#class-audiostreamplayer-method-play).

* * *

void **\_stop**() virtual [🔗](#class-audiostreamplayback-private-method-stop)

Override this method to customize what happens when the playback is stopped, such as by calling [AudioStreamPlayer.stop()](class_audiostreamplayer.md#class-audiostreamplayer-method-stop).

* * *

void **\_tag\_used\_streams**() virtual [🔗](#class-audiostreamplayback-private-method-tag-used-streams)

Overridable method. Called whenever the audio stream is mixed if the playback is active and [AudioServer.set\_enable\_tagging\_used\_audio\_streams()](class_audioserver.md#class-audioserver-method-set-enable-tagging-used-audio-streams) has been set to `true`. Editor plugins may use this method to "tag" the current position along the audio stream and display it in a preview.

* * *

[int](class_int.md#class-int) **get\_loop\_count**() const [🔗](#class-audiostreamplayback-method-get-loop-count)

Returns the number of times the stream has looped.

* * *

[float](class_float.md#class-float) **get\_playback\_position**() const [🔗](#class-audiostreamplayback-method-get-playback-position)

Returns the current position in the stream, in seconds.

* * *

[AudioSamplePlayback](class_audiosampleplayback.md#class-audiosampleplayback) **get\_sample\_playback**() const [🔗](#class-audiostreamplayback-method-get-sample-playback)

**Experimental:** This method may be changed or removed in future versions.

Returns the [AudioSamplePlayback](class_audiosampleplayback.md#class-audiosampleplayback) associated with this **AudioStreamPlayback** for playing back the audio sample of this stream.

* * *

[bool](class_bool.md#class-bool) **is\_playing**() const [🔗](#class-audiostreamplayback-method-is-playing)

Returns `true` if the stream is playing.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **mix\_audio**(rate\_scale: [float](class_float.md#class-float), frames: [int](class_int.md#class-int)) [🔗](#class-audiostreamplayback-method-mix-audio)

Mixes up to `frames` of audio from the stream from the current position, at a rate of `rate_scale`, advancing the stream.

Returns a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) where each element holds the left and right channel volume levels of each frame.

**Note:** Can return fewer frames than requested, make sure to use the size of the return value.

* * *

void **seek**(time: [float](class_float.md#class-float) = 0.0) [🔗](#class-audiostreamplayback-method-seek)

Seeks the stream at the given `time`, in seconds.

* * *

void **set\_sample\_playback**(playback\_sample: [AudioSamplePlayback](class_audiosampleplayback.md#class-audiosampleplayback)) [🔗](#class-audiostreamplayback-method-set-sample-playback)

**Experimental:** This method may be changed or removed in future versions.

Associates [AudioSamplePlayback](class_audiosampleplayback.md#class-audiosampleplayback) to this **AudioStreamPlayback** for playing back the audio sample of this stream.

* * *

void **start**(from\_pos: [float](class_float.md#class-float) = 0.0) [🔗](#class-audiostreamplayback-method-start)

Starts the stream from the given `from_pos`, in seconds.

* * *

void **stop**() [🔗](#class-audiostreamplayback-method-stop)

Stops the stream.

[Previous](class_audiostreamgeneratorplayback.md "AudioStreamGeneratorPlayback") [Next](class_audiostreamplaybackinteractive.md "AudioStreamPlaybackInteractive")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamgeneratorplayback.md "AudioStreamGeneratorPlayback") [Next](class_audiostreamplaybackinteractive.md "AudioStreamPlaybackInteractive")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).