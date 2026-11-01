---
title: InputEventPanGesture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventpangesture.html
crawled_at: "2026-08-13T10:40:41+12:00"
content_hash: a0e084f02785dcd44cd6588b6e45214c545169c73f6950cae139afa7c5b8e632
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventPanGesture

* * *

# InputEventPanGesture

**Inherits:** [InputEventGesture](class_inputeventgesture.md#class-inputeventgesture) **<** [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers) **<** [InputEventFromWindow](class_inputeventfromwindow.md#class-inputeventfromwindow) **<** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a panning touch gesture.

## Description

Stores information about pan gestures. A pan gesture is performed when the user swipes the touch screen with two fingers. It's typically used for panning/scrolling.

**Note:** On Android, this requires the [ProjectSettings.input\_devices/pointing/android/enable\_pan\_and\_scale\_gestures](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-android-enable-pan-and-scale-gestures) project setting to be enabled.

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [delta](#class-inputeventpangesture-property-delta) | `Vector2(0, 0)` |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **delta** = `Vector2(0, 0)` [🔗](#class-inputeventpangesture-property-delta)

- void **set\_delta**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_delta**()


Panning amount since last pan event.

[Previous](class_inputeventmousemotion.md "InputEventMouseMotion") [Next](class_inputeventscreendrag.md "InputEventScreenDrag")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventmousemotion.md "InputEventMouseMotion") [Next](class_inputeventscreendrag.md "InputEventScreenDrag")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).