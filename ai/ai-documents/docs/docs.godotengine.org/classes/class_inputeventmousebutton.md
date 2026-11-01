---
title: InputEventMouseButton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventmousebutton.html
crawled_at: "2026-08-13T10:32:58+12:00"
content_hash: dac2b695676b4857a6e86af7a7af90f3920eab4a7827899970fdc5ac0d17cab5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventMouseButton

* * *

# InputEventMouseButton

**Inherits:** [InputEventMouse](class_inputeventmouse.md#class-inputeventmouse) **<** [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers) **<** [InputEventFromWindow](class_inputeventfromwindow.md#class-inputeventfromwindow) **<** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a mouse button being pressed or released.

## Description

Stores information about mouse click events. See [Node.\_input()](class_node.md#class-node-private-method-input).

**Note:** On Wear OS devices, rotary input is mapped to [@GlobalScope.MOUSE\_BUTTON\_WHEEL\_UP](class_@globalscope.md#class-globalscope-constant-mouse-button-wheel-up) and [@GlobalScope.MOUSE\_BUTTON\_WHEEL\_DOWN](class_@globalscope.md#class-globalscope-constant-mouse-button-wheel-down). This can be changed to [@GlobalScope.MOUSE\_BUTTON\_WHEEL\_LEFT](class_@globalscope.md#class-globalscope-constant-mouse-button-wheel-left) and [@GlobalScope.MOUSE\_BUTTON\_WHEEL\_RIGHT](class_@globalscope.md#class-globalscope-constant-mouse-button-wheel-right) with the [ProjectSettings.input\_devices/pointing/android/rotary\_input\_scroll\_axis](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-android-rotary-input-scroll-axis) setting.

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)

- [Mouse and input coordinates](../tutorials/inputs/mouse_and_input_coordinates.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [MouseButton](class_@globalscope.md#enum-globalscope-mousebutton) | [button\_index](#class-inputeventmousebutton-property-button-index) | `0` |
| [bool](class_bool.md#class-bool) | [canceled](#class-inputeventmousebutton-property-canceled) | `false` |
| [bool](class_bool.md#class-bool) | [double\_click](#class-inputeventmousebutton-property-double-click) | `false` |
| [float](class_float.md#class-float) | [factor](#class-inputeventmousebutton-property-factor) | `1.0` |
| [bool](class_bool.md#class-bool) | [pressed](#class-inputeventmousebutton-property-pressed) | `false` |

* * *

## Property Descriptions

[MouseButton](class_@globalscope.md#enum-globalscope-mousebutton) **button\_index** = `0` [🔗](#class-inputeventmousebutton-property-button-index)

- void **set\_button\_index**(value: [MouseButton](class_@globalscope.md#enum-globalscope-mousebutton))

- [MouseButton](class_@globalscope.md#enum-globalscope-mousebutton) **get\_button\_index**()


The mouse button identifier, one of the [MouseButton](class_@globalscope.md#enum-globalscope-mousebutton) button or button wheel constants.

* * *

[bool](class_bool.md#class-bool) **canceled** = `false` [🔗](#class-inputeventmousebutton-property-canceled)

- void **set\_canceled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_canceled**()


If `true`, the mouse button event has been canceled.

* * *

[bool](class_bool.md#class-bool) **double\_click** = `false` [🔗](#class-inputeventmousebutton-property-double-click)

- void **set\_double\_click**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_double\_click**()


If `true`, the mouse button's state is a double-click.

* * *

[float](class_float.md#class-float) **factor** = `1.0` [🔗](#class-inputeventmousebutton-property-factor)

- void **set\_factor**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_factor**()


The amount (or delta) of the event. When used for high-precision scroll events, this indicates the scroll amount (vertical or horizontal). This is only supported on some platforms; the reported sensitivity varies depending on the platform. May be `0` if not supported.

* * *

[bool](class_bool.md#class-bool) **pressed** = `false` [🔗](#class-inputeventmousebutton-property-pressed)

- void **set\_pressed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pressed**()


If `true`, the mouse button's state is pressed. If `false`, the mouse button's state is released.

[Previous](class_inputeventmouse.md "InputEventMouse") [Next](class_inputeventmousemotion.md "InputEventMouseMotion")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventmouse.md "InputEventMouse") [Next](class_inputeventmousemotion.md "InputEventMouseMotion")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).