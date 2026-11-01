---
title: InputEventFromWindow — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventfromwindow.html
crawled_at: "2026-08-13T10:29:01+12:00"
content_hash: 14c3421fcd246163db06dc64622e7b63d0907baf099d265b14fa0090a101fa9e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventFromWindow

* * *

# InputEventFromWindow

**Inherits:** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [InputEventScreenDrag](class_inputeventscreendrag.md#class-inputeventscreendrag), [InputEventScreenTouch](class_inputeventscreentouch.md#class-inputeventscreentouch), [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers)

Abstract base class for [Viewport](class_viewport.md#class-viewport)-based input events.

## Description

InputEventFromWindow represents events specifically received by windows. This includes mouse events, keyboard events in focused windows or touch screen actions.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [window\_id](#class-inputeventfromwindow-property-window-id) | `0` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **window\_id** = `0` [🔗](#class-inputeventfromwindow-property-window-id)

- void **set\_window\_id**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_window\_id**()


The ID of a [Window](class_window.md#class-window) that received this event.

[Previous](class_inputeventaction.md "InputEventAction") [Next](class_inputeventgesture.md "InputEventGesture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventaction.md "InputEventAction") [Next](class_inputeventgesture.md "InputEventGesture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).