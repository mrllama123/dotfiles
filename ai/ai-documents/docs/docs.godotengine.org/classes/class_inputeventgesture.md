---
title: InputEventGesture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventgesture.html
crawled_at: "2026-08-13T10:31:54+12:00"
content_hash: ece6956116e036a9e2c5f8acef78e6ac8e6133ad695e66bc64c8d37959312f2b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventGesture

* * *

# InputEventGesture

**Inherits:** [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers) **<** [InputEventFromWindow](class_inputeventfromwindow.md#class-inputeventfromwindow) **<** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [InputEventMagnifyGesture](class_inputeventmagnifygesture.md#class-inputeventmagnifygesture), [InputEventPanGesture](class_inputeventpangesture.md#class-inputeventpangesture)

Abstract base class for touch gestures.

## Description

InputEventGestures are sent when a user performs a supported gesture on a touch screen. Gestures can't be emulated using mouse, because they typically require multi-touch.

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [position](#class-inputeventgesture-property-position) | `Vector2(0, 0)` |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **position** = `Vector2(0, 0)` [🔗](#class-inputeventgesture-property-position)

- void **set\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_position**()


The local gesture position relative to the [Viewport](class_viewport.md#class-viewport). If used in [Control.\_gui\_input()](class_control.md#class-control-private-method-gui-input), the position is relative to the current [Control](class_control.md#class-control) that received this gesture.

[Previous](class_inputeventfromwindow.md "InputEventFromWindow") [Next](class_inputeventjoypadbutton.md "InputEventJoypadButton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventfromwindow.md "InputEventFromWindow") [Next](class_inputeventjoypadbutton.md "InputEventJoypadButton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).