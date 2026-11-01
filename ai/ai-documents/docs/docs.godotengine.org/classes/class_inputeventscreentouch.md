---
title: InputEventScreenTouch — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventscreentouch.html
crawled_at: "2026-08-13T10:28:02+12:00"
content_hash: 988b3af4ce2b05dd6c01e53f194e26e508730ecaec926dea53b2d9db71ba869a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventScreenTouch

* * *

# InputEventScreenTouch

**Inherits:** [InputEventFromWindow](class_inputeventfromwindow.md#class-inputeventfromwindow) **<** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a screen touch event.

## Description

Stores information about multi-touch press/release input events. Supports touch press, touch release and [index](#class-inputeventscreentouch-property-index) for multi-touch count and order.

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [canceled](#class-inputeventscreentouch-property-canceled) | `false` |
| [bool](class_bool.md#class-bool) | [double\_tap](#class-inputeventscreentouch-property-double-tap) | `false` |
| [int](class_int.md#class-int) | [index](#class-inputeventscreentouch-property-index) | `0` |
| [Vector2](class_vector2.md#class-vector2) | [position](#class-inputeventscreentouch-property-position) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [pressed](#class-inputeventscreentouch-property-pressed) | `false` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **canceled** = `false` [🔗](#class-inputeventscreentouch-property-canceled)

- void **set\_canceled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_canceled**()


If `true`, the touch event has been canceled.

* * *

[bool](class_bool.md#class-bool) **double\_tap** = `false` [🔗](#class-inputeventscreentouch-property-double-tap)

- void **set\_double\_tap**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_double\_tap**()


If `true`, the touch's state is a double tap.

* * *

[int](class_int.md#class-int) **index** = `0` [🔗](#class-inputeventscreentouch-property-index)

- void **set\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_index**()


The touch index in the case of a multi-touch event. One index = one finger.

* * *

[Vector2](class_vector2.md#class-vector2) **position** = `Vector2(0, 0)` [🔗](#class-inputeventscreentouch-property-position)

- void **set\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_position**()


The touch position in the viewport the node is in, using the coordinate system of this viewport.

* * *

[bool](class_bool.md#class-bool) **pressed** = `false` [🔗](#class-inputeventscreentouch-property-pressed)

- void **set\_pressed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pressed**()


If `true`, the touch's state is pressed. If `false`, the touch's state is released.

[Previous](class_inputeventscreendrag.md "InputEventScreenDrag") [Next](class_inputeventshortcut.md "InputEventShortcut")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventscreendrag.md "InputEventScreenDrag") [Next](class_inputeventshortcut.md "InputEventShortcut")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).