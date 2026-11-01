---
title: AudioStreamPlaybackInteractive — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamplaybackinteractive.html
crawled_at: "2026-08-13T10:37:24+12:00"
content_hash: 33d412e2d2101d1c47ebdd03289b6e2ffc198dcd03874861d7904d467fd44115
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamPlaybackInteractive

* * *

# AudioStreamPlaybackInteractive

**Inherits:** [AudioStreamPlayback](class_audiostreamplayback.md#class-audiostreamplayback) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Playback component of [AudioStreamInteractive](class_audiostreaminteractive.md#class-audiostreaminteractive).

## Description

Playback component of [AudioStreamInteractive](class_audiostreaminteractive.md#class-audiostreaminteractive). Contains functions to change the currently played clip.

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_current\_clip\_index](#class-audiostreamplaybackinteractive-method-get-current-clip-index)() const |
| void | [switch\_to\_clip](#class-audiostreamplaybackinteractive-method-switch-to-clip)(clip\_index: [int](class_int.md#class-int)) |
| void | [switch\_to\_clip\_by\_name](#class-audiostreamplaybackinteractive-method-switch-to-clip-by-name)(clip\_name: [StringName](class_stringname.md#class-stringname)) |

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_current\_clip\_index**() const [🔗](#class-audiostreamplaybackinteractive-method-get-current-clip-index)

Return the index of the currently playing clip. You can use this to get the name of the currently playing clip with [AudioStreamInteractive.get\_clip\_name()](class_audiostreaminteractive.md#class-audiostreaminteractive-method-get-clip-name).

**Example:** Get the currently playing clip name from inside an [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer) node.

GDScript

```
var playing_clip_name = stream.get_clip_name(get_stream_playback().get_current_clip_index())

```

* * *

void **switch\_to\_clip**(clip\_index: [int](class_int.md#class-int)) [🔗](#class-audiostreamplaybackinteractive-method-switch-to-clip)

Switch to a clip (by index).

* * *

void **switch\_to\_clip\_by\_name**(clip\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-audiostreamplaybackinteractive-method-switch-to-clip-by-name)

Switch to a clip (by name).

[Previous](class_audiostreamplayback.md "AudioStreamPlayback") [Next](class_audiostreamplaybackoggvorbis.md "AudioStreamPlaybackOggVorbis")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamplayback.md "AudioStreamPlayback") [Next](class_audiostreamplaybackoggvorbis.md "AudioStreamPlaybackOggVorbis")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).