---
title: AudioStreamInteractive — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreaminteractive.html
crawled_at: "2026-08-13T10:33:19+12:00"
content_hash: b2d4ce5e5f69c25369cbf358a48f1d404df594e5f4c2efd0b9b3184b69e1e4e2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamInteractive

* * *

# AudioStreamInteractive

**Inherits:** [AudioStream](class_audiostream.md#class-audiostream) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Audio stream that can playback music interactively, combining clips and a transition table.

## Description

This is an audio stream that can playback music interactively, combining clips and a transition table. Clips must be added first, and then the transition rules via the [add\_transition()](#class-audiostreaminteractive-method-add-transition). Additionally, this stream exports a property parameter to control the playback via [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer), [AudioStreamPlayer2D](class_audiostreamplayer2d.md#class-audiostreamplayer2d), or [AudioStreamPlayer3D](class_audiostreamplayer3d.md#class-audiostreamplayer3d).

The way this is used is by filling a number of clips, then configuring the transition table. From there, clips are selected for playback and the music will smoothly go from the current to the new one while using the corresponding transition rule defined in the transition table.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [clip\_count](#class-audiostreaminteractive-property-clip-count) | `0` |
| [int](class_int.md#class-int) | [initial\_clip](#class-audiostreaminteractive-property-initial-clip) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_transition](#class-audiostreaminteractive-method-add-transition)(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int), from\_time: [TransitionFromTime](#enum-audiostreaminteractive-transitionfromtime), to\_time: [TransitionToTime](#enum-audiostreaminteractive-transitiontotime), fade\_mode: [FadeMode](#enum-audiostreaminteractive-fademode), fade\_beats: [float](class_float.md#class-float), use\_filler\_clip: [bool](class_bool.md#class-bool) = false, filler\_clip: [int](class_int.md#class-int) = -1, hold\_previous: [bool](class_bool.md#class-bool) = false) |
| void | [erase\_transition](#class-audiostreaminteractive-method-erase-transition)(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) |
| [AutoAdvanceMode](#enum-audiostreaminteractive-autoadvancemode) | [get\_clip\_auto\_advance](#class-audiostreaminteractive-method-get-clip-auto-advance)(clip\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_clip\_auto\_advance\_next\_clip](#class-audiostreaminteractive-method-get-clip-auto-advance-next-clip)(clip\_index: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_clip\_name](#class-audiostreaminteractive-method-get-clip-name)(clip\_index: [int](class_int.md#class-int)) const |
| [AudioStream](class_audiostream.md#class-audiostream) | [get\_clip\_stream](#class-audiostreaminteractive-method-get-clip-stream)(clip\_index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_transition\_fade\_beats](#class-audiostreaminteractive-method-get-transition-fade-beats)(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const |
| [FadeMode](#enum-audiostreaminteractive-fademode) | [get\_transition\_fade\_mode](#class-audiostreaminteractive-method-get-transition-fade-mode)(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_transition\_filler\_clip](#class-audiostreaminteractive-method-get-transition-filler-clip)(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const |
| [TransitionFromTime](#enum-audiostreaminteractive-transitionfromtime) | [get\_transition\_from\_time](#class-audiostreaminteractive-method-get-transition-from-time)(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_transition\_list](#class-audiostreaminteractive-method-get-transition-list)() const |
| [TransitionToTime](#enum-audiostreaminteractive-transitiontotime) | [get\_transition\_to\_time](#class-audiostreaminteractive-method-get-transition-to-time)(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_transition](#class-audiostreaminteractive-method-has-transition)(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_transition\_holding\_previous](#class-audiostreaminteractive-method-is-transition-holding-previous)(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_transition\_using\_filler\_clip](#class-audiostreaminteractive-method-is-transition-using-filler-clip)(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const |
| void | [set\_clip\_auto\_advance](#class-audiostreaminteractive-method-set-clip-auto-advance)(clip\_index: [int](class_int.md#class-int), mode: [AutoAdvanceMode](#enum-audiostreaminteractive-autoadvancemode)) |
| void | [set\_clip\_auto\_advance\_next\_clip](#class-audiostreaminteractive-method-set-clip-auto-advance-next-clip)(clip\_index: [int](class_int.md#class-int), auto\_advance\_next\_clip: [int](class_int.md#class-int)) |
| void | [set\_clip\_name](#class-audiostreaminteractive-method-set-clip-name)(clip\_index: [int](class_int.md#class-int), name: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_clip\_stream](#class-audiostreaminteractive-method-set-clip-stream)(clip\_index: [int](class_int.md#class-int), stream: [AudioStream](class_audiostream.md#class-audiostream)) |

* * *

## Enumerations

enum **TransitionFromTime**: [🔗](#enum-audiostreaminteractive-transitionfromtime)

[TransitionFromTime](#enum-audiostreaminteractive-transitionfromtime) **TRANSITION\_FROM\_TIME\_IMMEDIATE** = `0`

Start transition as soon as possible, don't wait for any specific time position.

[TransitionFromTime](#enum-audiostreaminteractive-transitionfromtime) **TRANSITION\_FROM\_TIME\_NEXT\_BEAT** = `1`

Transition when the clip playback position reaches the next beat.

[TransitionFromTime](#enum-audiostreaminteractive-transitionfromtime) **TRANSITION\_FROM\_TIME\_NEXT\_BAR** = `2`

Transition when the clip playback position reaches the next bar.

[TransitionFromTime](#enum-audiostreaminteractive-transitionfromtime) **TRANSITION\_FROM\_TIME\_END** = `3`

Transition when the current clip finished playing.

* * *

enum **TransitionToTime**: [🔗](#enum-audiostreaminteractive-transitiontotime)

[TransitionToTime](#enum-audiostreaminteractive-transitiontotime) **TRANSITION\_TO\_TIME\_SAME\_POSITION** = `0`

Transition to the same position in the destination clip. This is useful when both clips have exactly the same length and the music should fade between them.

[TransitionToTime](#enum-audiostreaminteractive-transitiontotime) **TRANSITION\_TO\_TIME\_START** = `1`

Transition to the start of the destination clip.

* * *

enum **FadeMode**: [🔗](#enum-audiostreaminteractive-fademode)

[FadeMode](#enum-audiostreaminteractive-fademode) **FADE\_DISABLED** = `0`

Do not use fade for the transition. This is useful when transitioning from a clip-end to clip-beginning, and each clip has their begin/end.

[FadeMode](#enum-audiostreaminteractive-fademode) **FADE\_IN** = `1`

Use a fade-in in the next clip, let the current clip finish.

[FadeMode](#enum-audiostreaminteractive-fademode) **FADE\_OUT** = `2`

Use a fade-out in the current clip, the next clip will start by itself.

[FadeMode](#enum-audiostreaminteractive-fademode) **FADE\_CROSS** = `3`

Use a cross-fade between clips.

[FadeMode](#enum-audiostreaminteractive-fademode) **FADE\_AUTOMATIC** = `4`

Use automatic fade logic depending on the transition from/to. It is recommended to use this by default.

* * *

enum **AutoAdvanceMode**: [🔗](#enum-audiostreaminteractive-autoadvancemode)

[AutoAdvanceMode](#enum-audiostreaminteractive-autoadvancemode) **AUTO\_ADVANCE\_DISABLED** = `0`

Disable auto-advance (default).

[AutoAdvanceMode](#enum-audiostreaminteractive-autoadvancemode) **AUTO\_ADVANCE\_ENABLED** = `1`

Enable auto-advance, a clip must be specified.

[AutoAdvanceMode](#enum-audiostreaminteractive-autoadvancemode) **AUTO\_ADVANCE\_RETURN\_TO\_HOLD** = `2`

Enable auto-advance, but instead of specifying a clip, the playback will return to hold (see [add\_transition()](#class-audiostreaminteractive-method-add-transition)).

* * *

## Constants

**CLIP\_ANY** = `-1` [🔗](#class-audiostreaminteractive-constant-clip-any)

This constant describes that any clip is valid for a specific transition as either source or destination.

* * *

## Property Descriptions

[int](class_int.md#class-int) **clip\_count** = `0` [🔗](#class-audiostreaminteractive-property-clip-count)

- void **set\_clip\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_clip\_count**()


Amount of clips contained in this interactive player.

* * *

[int](class_int.md#class-int) **initial\_clip** = `0` [🔗](#class-audiostreaminteractive-property-initial-clip)

- void **set\_initial\_clip**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_initial\_clip**()


Index of the initial clip, which will be played first when this stream is played.

* * *

## Method Descriptions

void **add\_transition**(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int), from\_time: [TransitionFromTime](#enum-audiostreaminteractive-transitionfromtime), to\_time: [TransitionToTime](#enum-audiostreaminteractive-transitiontotime), fade\_mode: [FadeMode](#enum-audiostreaminteractive-fademode), fade\_beats: [float](class_float.md#class-float), use\_filler\_clip: [bool](class_bool.md#class-bool) = false, filler\_clip: [int](class_int.md#class-int) = -1, hold\_previous: [bool](class_bool.md#class-bool) = false) [🔗](#class-audiostreaminteractive-method-add-transition)

Add a transition between two clips. Provide the indices of the source and destination clips, or use the [CLIP\_ANY](#class-audiostreaminteractive-constant-clip-any) constant to indicate that transition happens to/from any clip to this one.

\\* `from_time` indicates the moment in the current clip the transition will begin after triggered.

\\* `to_time` indicates the time in the next clip that the playback will start from.

\\* `fade_mode` indicates how the fade will happen between clips. If unsure, just use [FADE\_AUTOMATIC](#class-audiostreaminteractive-constant-fade-automatic) which uses the most common type of fade for each situation.

\\* `fade_beats` indicates how many beats the fade will take. Using decimals is allowed.

\\* `use_filler_clip` indicates that there will be a filler clip used between the source and destination clips.

\\* `filler_clip` the index of the filler clip.

\\* If `hold_previous` is used, then this clip will be remembered. This can be used together with [AUTO\_ADVANCE\_RETURN\_TO\_HOLD](#class-audiostreaminteractive-constant-auto-advance-return-to-hold) to return to this clip after another is done playing.

* * *

void **erase\_transition**(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) [🔗](#class-audiostreaminteractive-method-erase-transition)

Erase a transition by providing `from_clip` and `to_clip` clip indices. [CLIP\_ANY](#class-audiostreaminteractive-constant-clip-any) can be used for either argument or both.

* * *

[AutoAdvanceMode](#enum-audiostreaminteractive-autoadvancemode) **get\_clip\_auto\_advance**(clip\_index: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-get-clip-auto-advance)

Return whether a clip has auto-advance enabled. See [set\_clip\_auto\_advance()](#class-audiostreaminteractive-method-set-clip-auto-advance).

* * *

[int](class_int.md#class-int) **get\_clip\_auto\_advance\_next\_clip**(clip\_index: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-get-clip-auto-advance-next-clip)

Return the clip towards which the clip referenced by `clip_index` will auto-advance to.

* * *

[StringName](class_stringname.md#class-stringname) **get\_clip\_name**(clip\_index: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-get-clip-name)

Return the name of a clip.

* * *

[AudioStream](class_audiostream.md#class-audiostream) **get\_clip\_stream**(clip\_index: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-get-clip-stream)

Return the [AudioStream](class_audiostream.md#class-audiostream) associated with a clip.

* * *

[float](class_float.md#class-float) **get\_transition\_fade\_beats**(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-get-transition-fade-beats)

Return the time (in beats) for a transition (see [add\_transition()](#class-audiostreaminteractive-method-add-transition)).

* * *

[FadeMode](#enum-audiostreaminteractive-fademode) **get\_transition\_fade\_mode**(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-get-transition-fade-mode)

Return the mode for a transition (see [add\_transition()](#class-audiostreaminteractive-method-add-transition)).

* * *

[int](class_int.md#class-int) **get\_transition\_filler\_clip**(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-get-transition-filler-clip)

Return the filler clip for a transition (see [add\_transition()](#class-audiostreaminteractive-method-add-transition)).

* * *

[TransitionFromTime](#enum-audiostreaminteractive-transitionfromtime) **get\_transition\_from\_time**(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-get-transition-from-time)

Return the source time position for a transition (see [add\_transition()](#class-audiostreaminteractive-method-add-transition)).

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_transition\_list**() const [🔗](#class-audiostreaminteractive-method-get-transition-list)

Return the list of transitions (from, to interleaved).

* * *

[TransitionToTime](#enum-audiostreaminteractive-transitiontotime) **get\_transition\_to\_time**(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-get-transition-to-time)

Return the destination time position for a transition (see [add\_transition()](#class-audiostreaminteractive-method-add-transition)).

* * *

[bool](class_bool.md#class-bool) **has\_transition**(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-has-transition)

Returns `true` if a given transition exists (was added via [add\_transition()](#class-audiostreaminteractive-method-add-transition)).

* * *

[bool](class_bool.md#class-bool) **is\_transition\_holding\_previous**(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-is-transition-holding-previous)

Return whether a transition uses the _hold previous_ functionality (see [add\_transition()](#class-audiostreaminteractive-method-add-transition)).

* * *

[bool](class_bool.md#class-bool) **is\_transition\_using\_filler\_clip**(from\_clip: [int](class_int.md#class-int), to\_clip: [int](class_int.md#class-int)) const [🔗](#class-audiostreaminteractive-method-is-transition-using-filler-clip)

Return whether a transition uses the _filler clip_ functionality (see [add\_transition()](#class-audiostreaminteractive-method-add-transition)).

* * *

void **set\_clip\_auto\_advance**(clip\_index: [int](class_int.md#class-int), mode: [AutoAdvanceMode](#enum-audiostreaminteractive-autoadvancemode)) [🔗](#class-audiostreaminteractive-method-set-clip-auto-advance)

Set whether a clip will auto-advance by changing the auto-advance mode.

* * *

void **set\_clip\_auto\_advance\_next\_clip**(clip\_index: [int](class_int.md#class-int), auto\_advance\_next\_clip: [int](class_int.md#class-int)) [🔗](#class-audiostreaminteractive-method-set-clip-auto-advance-next-clip)

Set the index of the next clip towards which this clip will auto advance to when finished. If the clip being played loops, then auto-advance will be ignored.

* * *

void **set\_clip\_name**(clip\_index: [int](class_int.md#class-int), name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-audiostreaminteractive-method-set-clip-name)

Set the name of the current clip (for easier identification).

* * *

void **set\_clip\_stream**(clip\_index: [int](class_int.md#class-int), stream: [AudioStream](class_audiostream.md#class-audiostream)) [🔗](#class-audiostreaminteractive-method-set-clip-stream)

Set the [AudioStream](class_audiostream.md#class-audiostream) associated with the current clip.

[Previous](class_audiostreamgenerator.md "AudioStreamGenerator") [Next](class_audiostreammicrophone.md "AudioStreamMicrophone")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamgenerator.md "AudioStreamGenerator") [Next](class_audiostreammicrophone.md "AudioStreamMicrophone")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).