---
title: AudioStreamPolyphonic — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreampolyphonic.html
crawled_at: "2026-08-13T10:31:40+12:00"
content_hash: e8fad9e7630d7fa08b619252b2869f5749b874886ce875f1432ed15d32a91e19
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamPolyphonic

* * *

# AudioStreamPolyphonic

**Inherits:** [AudioStream](class_audiostream.md#class-audiostream) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

AudioStream that lets the user play custom streams at any time from code, simultaneously using a single player.

## Description

AudioStream that lets the user play custom streams at any time from code, simultaneously using a single player.

Playback control is done via the [AudioStreamPlaybackPolyphonic](class_audiostreamplaybackpolyphonic.md#class-audiostreamplaybackpolyphonic) instance set inside the player, which can be obtained via [AudioStreamPlayer.get\_stream\_playback()](class_audiostreamplayer.md#class-audiostreamplayer-method-get-stream-playback), [AudioStreamPlayer2D.get\_stream\_playback()](class_audiostreamplayer2d.md#class-audiostreamplayer2d-method-get-stream-playback) or [AudioStreamPlayer3D.get\_stream\_playback()](class_audiostreamplayer3d.md#class-audiostreamplayer3d-method-get-stream-playback) methods. Obtaining the playback instance is only valid after the `stream` property is set as an **AudioStreamPolyphonic** in those players.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [polyphony](#class-audiostreampolyphonic-property-polyphony) | `32` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **polyphony** = `32` [🔗](#class-audiostreampolyphonic-property-polyphony)

- void **set\_polyphony**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_polyphony**()


Maximum amount of simultaneous streams that can be played.

[Previous](class_audiostreamplaylist.md "AudioStreamPlaylist") [Next](class_audiostreamrandomizer.md "AudioStreamRandomizer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamplaylist.md "AudioStreamPlaylist") [Next](class_audiostreamrandomizer.md "AudioStreamRandomizer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).