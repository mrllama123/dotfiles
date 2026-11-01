---
title: InputEventJoypadMotion — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventjoypadmotion.html
crawled_at: "2026-08-13T10:24:10+12:00"
content_hash: 3b744180888813076b17c636313365c9566ef2ac381697e8b05caca3374d01db
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventJoypadMotion

* * *

# InputEventJoypadMotion

**Inherits:** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents axis motions (such as joystick or analog triggers) from a gamepad.

## Description

Stores information about joystick motions. One **InputEventJoypadMotion** represents one axis at a time. For gamepad buttons, see [InputEventJoypadButton](class_inputeventjoypadbutton.md#class-inputeventjoypadbutton).

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [JoyAxis](class_@globalscope.md#enum-globalscope-joyaxis) | [axis](#class-inputeventjoypadmotion-property-axis) | `0` |
| [float](class_float.md#class-float) | [axis\_value](#class-inputeventjoypadmotion-property-axis-value) | `0.0` |

* * *

## Property Descriptions

[JoyAxis](class_@globalscope.md#enum-globalscope-joyaxis) **axis** = `0` [🔗](#class-inputeventjoypadmotion-property-axis)

- void **set\_axis**(value: [JoyAxis](class_@globalscope.md#enum-globalscope-joyaxis))

- [JoyAxis](class_@globalscope.md#enum-globalscope-joyaxis) **get\_axis**()


Axis identifier.

* * *

[float](class_float.md#class-float) **axis\_value** = `0.0` [🔗](#class-inputeventjoypadmotion-property-axis-value)

- void **set\_axis\_value**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_axis\_value**()


Current position of the joystick on the given axis. The value ranges from `-1.0` to `1.0`. A value of `0` means the axis is in its resting position.

[Previous](class_inputeventjoypadbutton.md "InputEventJoypadButton") [Next](class_inputeventkey.md "InputEventKey")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventjoypadbutton.md "InputEventJoypadButton") [Next](class_inputeventkey.md "InputEventKey")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).