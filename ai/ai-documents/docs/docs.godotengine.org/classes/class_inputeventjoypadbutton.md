---
title: InputEventJoypadButton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventjoypadbutton.html
crawled_at: "2026-08-13T10:31:25+12:00"
content_hash: a1382af60358fb53b7b7e337db55e195249f7df2a01da5f83c5fae0d544ff3e1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventJoypadButton

* * *

# InputEventJoypadButton

**Inherits:** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a gamepad button being pressed or released.

## Description

Input event type for gamepad buttons. For gamepad analog sticks and joysticks, see [InputEventJoypadMotion](class_inputeventjoypadmotion.md#class-inputeventjoypadmotion).

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [JoyButton](class_@globalscope.md#enum-globalscope-joybutton) | [button\_index](#class-inputeventjoypadbutton-property-button-index) | `0` |
| [bool](class_bool.md#class-bool) | [pressed](#class-inputeventjoypadbutton-property-pressed) | `false` |
| [float](class_float.md#class-float) | [pressure](#class-inputeventjoypadbutton-property-pressure) | `0.0` |

* * *

## Property Descriptions

[JoyButton](class_@globalscope.md#enum-globalscope-joybutton) **button\_index** = `0` [🔗](#class-inputeventjoypadbutton-property-button-index)

- void **set\_button\_index**(value: [JoyButton](class_@globalscope.md#enum-globalscope-joybutton))

- [JoyButton](class_@globalscope.md#enum-globalscope-joybutton) **get\_button\_index**()


Button identifier. One of the [JoyButton](class_@globalscope.md#enum-globalscope-joybutton) button constants.

* * *

[bool](class_bool.md#class-bool) **pressed** = `false` [🔗](#class-inputeventjoypadbutton-property-pressed)

- void **set\_pressed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pressed**()


If `true`, the button's state is pressed. If `false`, the button's state is released.

* * *

[float](class_float.md#class-float) **pressure** = `0.0` [🔗](#class-inputeventjoypadbutton-property-pressure)

- void **set\_pressure**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pressure**()


**Deprecated:** This property is never set by the engine and is always `0`.

[Previous](class_inputeventgesture.md "InputEventGesture") [Next](class_inputeventjoypadmotion.md "InputEventJoypadMotion")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventgesture.md "InputEventGesture") [Next](class_inputeventjoypadmotion.md "InputEventJoypadMotion")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).