---
title: AudioListener3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiolistener3d.html
crawled_at: "2026-08-13T10:42:00+12:00"
content_hash: d4fd7cae90db24fed4cba28524e32d1d1fff0b17e42b98eb45888f326e4e7e3e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioListener3D

* * *

# AudioListener3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Overrides the location sounds are heard from.

## Description

Once added to the scene tree and enabled using [make\_current()](#class-audiolistener3d-method-make-current), this node will override the location sounds are heard from. This can be used to listen from a location different from the [Camera3D](class_camera3d.md#class-camera3d).

## Properties

|     |     |     |
| --- | --- | --- |
| [DopplerTracking](#enum-audiolistener3d-dopplertracking) | [doppler\_tracking](#class-audiolistener3d-property-doppler-tracking) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [clear\_current](#class-audiolistener3d-method-clear-current)() |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_listener\_transform](#class-audiolistener3d-method-get-listener-transform)() const |
| [bool](class_bool.md#class-bool) | [is\_current](#class-audiolistener3d-method-is-current)() const |
| void | [make\_current](#class-audiolistener3d-method-make-current)() |

* * *

## Enumerations

enum **DopplerTracking**: [🔗](#enum-audiolistener3d-dopplertracking)

[DopplerTracking](#enum-audiolistener3d-dopplertracking) **DOPPLER\_TRACKING\_DISABLED** = `0`

Disables [Doppler effect](https://en.wikipedia.org/wiki/Doppler_effect) simulation (default).

[DopplerTracking](#enum-audiolistener3d-dopplertracking) **DOPPLER\_TRACKING\_IDLE\_STEP** = `1`

Simulate [Doppler effect](https://en.wikipedia.org/wiki/Doppler_effect) by tracking positions of objects that are changed in `_process`. Changes in the relative velocity of this listener compared to those objects affect how audio is perceived (changing the audio's [AudioStreamPlayer3D.pitch\_scale](class_audiostreamplayer3d.md#class-audiostreamplayer3d-property-pitch-scale)).

[DopplerTracking](#enum-audiolistener3d-dopplertracking) **DOPPLER\_TRACKING\_PHYSICS\_STEP** = `2`

Simulate [Doppler effect](https://en.wikipedia.org/wiki/Doppler_effect) by tracking positions of objects that are changed in `_physics_process`. Changes in the relative velocity of this listener compared to those objects affect how audio is perceived (changing the audio's [AudioStreamPlayer3D.pitch\_scale](class_audiostreamplayer3d.md#class-audiostreamplayer3d-property-pitch-scale)).

* * *

## Property Descriptions

[DopplerTracking](#enum-audiolistener3d-dopplertracking) **doppler\_tracking** = `0` [🔗](#class-audiolistener3d-property-doppler-tracking)

- void **set\_doppler\_tracking**(value: [DopplerTracking](#enum-audiolistener3d-dopplertracking))

- [DopplerTracking](#enum-audiolistener3d-dopplertracking) **get\_doppler\_tracking**()


If not [DOPPLER\_TRACKING\_DISABLED](#class-audiolistener3d-constant-doppler-tracking-disabled), this listener will simulate the [Doppler effect](https://en.wikipedia.org/wiki/Doppler_effect) for objects changed in particular `_process` methods.

**Note:** The Doppler effect will only be heard on [AudioStreamPlayer3D](class_audiostreamplayer3d.md#class-audiostreamplayer3d) s if [AudioStreamPlayer3D.doppler\_tracking](class_audiostreamplayer3d.md#class-audiostreamplayer3d-property-doppler-tracking) is not set to [AudioStreamPlayer3D.DOPPLER\_TRACKING\_DISABLED](class_audiostreamplayer3d.md#class-audiostreamplayer3d-constant-doppler-tracking-disabled).

* * *

## Method Descriptions

void **clear\_current**() [🔗](#class-audiolistener3d-method-clear-current)

Disables the listener to use the current camera's listener instead.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_listener\_transform**() const [🔗](#class-audiolistener3d-method-get-listener-transform)

Returns the listener's global orthonormalized [Transform3D](class_transform3d.md#class-transform3d).

* * *

[bool](class_bool.md#class-bool) **is\_current**() const [🔗](#class-audiolistener3d-method-is-current)

Returns `true` if the listener was made current using [make\_current()](#class-audiolistener3d-method-make-current), `false` otherwise.

**Note:** There may be more than one AudioListener3D marked as "current" in the scene tree, but only the one that was made current last will be used.

* * *

void **make\_current**() [🔗](#class-audiolistener3d-method-make-current)

Enables the listener. This will override the current camera's listener.

[Previous](class_audiolistener2d.md "AudioListener2D") [Next](class_audiostreamplayer.md "AudioStreamPlayer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiolistener2d.md "AudioListener2D") [Next](class_audiostreamplayer.md "AudioStreamPlayer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).