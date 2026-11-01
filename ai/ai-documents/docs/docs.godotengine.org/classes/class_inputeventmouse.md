---
title: InputEventMouse — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventmouse.html
crawled_at: "2026-08-13T10:33:57+12:00"
content_hash: 5cd7bc1a69278581b343b4c0ca689602d1b46acff1db567a5758beb638fe5e6e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventMouse

* * *

# InputEventMouse

**Inherits:** [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers) **<** [InputEventFromWindow](class_inputeventfromwindow.md#class-inputeventfromwindow) **<** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton), [InputEventMouseMotion](class_inputeventmousemotion.md#class-inputeventmousemotion)

Base input event type for mouse events.

## Description

Stores general information about mouse events.

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)


## Properties

|     |     |     |
| --- | --- | --- |
| BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\] | [button\_mask](#class-inputeventmouse-property-button-mask) | `0` |
| [Vector2](class_vector2.md#class-vector2) | [global\_position](#class-inputeventmouse-property-global-position) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [position](#class-inputeventmouse-property-position) | `Vector2(0, 0)` |

* * *

## Property Descriptions

BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\] **button\_mask** = `0` [🔗](#class-inputeventmouse-property-button-mask)

- void **set\_button\_mask**(value: BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\])

- BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\] **get\_button\_mask**()


The mouse button mask identifier, one of or a bitwise combination of the [MouseButton](class_@globalscope.md#enum-globalscope-mousebutton) button masks.

* * *

[Vector2](class_vector2.md#class-vector2) **global\_position** = `Vector2(0, 0)` [🔗](#class-inputeventmouse-property-global-position)

- void **set\_global\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_global\_position**()


When received in [Node.\_input()](class_node.md#class-node-private-method-input) or [Node.\_unhandled\_input()](class_node.md#class-node-private-method-unhandled-input), returns the mouse's position in the root [Viewport](class_viewport.md#class-viewport) using the coordinate system of the root [Viewport](class_viewport.md#class-viewport).

When received in [Control.\_gui\_input()](class_control.md#class-control-private-method-gui-input), returns the mouse's position in the [CanvasLayer](class_canvaslayer.md#class-canvaslayer) that the [Control](class_control.md#class-control) is in using the coordinate system of the [CanvasLayer](class_canvaslayer.md#class-canvaslayer).

* * *

[Vector2](class_vector2.md#class-vector2) **position** = `Vector2(0, 0)` [🔗](#class-inputeventmouse-property-position)

- void **set\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_position**()


When received in [Node.\_input()](class_node.md#class-node-private-method-input) or [Node.\_unhandled\_input()](class_node.md#class-node-private-method-unhandled-input), returns the mouse's position in the [Viewport](class_viewport.md#class-viewport) this [Node](class_node.md#class-node) is in using the coordinate system of this [Viewport](class_viewport.md#class-viewport).

When received in [Control.\_gui\_input()](class_control.md#class-control-private-method-gui-input), returns the mouse's position in the [Control](class_control.md#class-control) using the local coordinate system of the [Control](class_control.md#class-control).

[Previous](class_inputeventmidi.md "InputEventMIDI") [Next](class_inputeventmousebutton.md "InputEventMouseButton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventmidi.md "InputEventMIDI") [Next](class_inputeventmousebutton.md "InputEventMouseButton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).