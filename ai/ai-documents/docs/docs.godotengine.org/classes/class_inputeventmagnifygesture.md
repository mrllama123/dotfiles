---
title: InputEventMagnifyGesture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventmagnifygesture.html
crawled_at: "2026-08-13T10:39:56+12:00"
content_hash: 9da969f972f6d53f0a772b5c0da4beba25d48be2349bdde4544e26c8548ea160
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventMagnifyGesture

* * *

# InputEventMagnifyGesture

**Inherits:** [InputEventGesture](class_inputeventgesture.md#class-inputeventgesture) **<** [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers) **<** [InputEventFromWindow](class_inputeventfromwindow.md#class-inputeventfromwindow) **<** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a magnifying touch gesture.

## Description

Stores the factor of a magnifying touch gesture. This is usually performed when the user pinches the touch screen and used for zooming in/out.

**Note:** On Android, this requires the [ProjectSettings.input\_devices/pointing/android/enable\_pan\_and\_scale\_gestures](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-android-enable-pan-and-scale-gestures) project setting to be enabled.

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [factor](#class-inputeventmagnifygesture-property-factor) | `1.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **factor** = `1.0` [🔗](#class-inputeventmagnifygesture-property-factor)

- void **set\_factor**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_factor**()


The amount (or delta) of the event. This value is closer to `1.0` the slower the gesture is performed.

[Previous](class_inputeventkey.md "InputEventKey") [Next](class_inputeventmidi.md "InputEventMIDI")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventkey.md "InputEventKey") [Next](class_inputeventmidi.md "InputEventMIDI")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).