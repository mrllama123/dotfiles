---
title: InputEventMouseMotion — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventmousemotion.html
crawled_at: "2026-08-13T10:30:59+12:00"
content_hash: 4114f8d4904e9d1fc610d08534af6f50f5ad4ee043878cfb78257eeac1e7ec48
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventMouseMotion

* * *

# InputEventMouseMotion

**Inherits:** [InputEventMouse](class_inputeventmouse.md#class-inputeventmouse) **<** [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers) **<** [InputEventFromWindow](class_inputeventfromwindow.md#class-inputeventfromwindow) **<** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a mouse or a pen movement.

## Description

Stores information about a mouse or a pen motion. This includes relative position, absolute position, and velocity. See [Node.\_input()](class_node.md#class-node-private-method-input).

**Note:** By default, this event is only emitted once per frame rendered at most. If you need more precise input reporting, set [Input.use\_accumulated\_input](class_input.md#class-input-property-use-accumulated-input) to `false` to make events emitted as often as possible. If you use InputEventMouseMotion to draw lines, consider using [Geometry2D.bresenham\_line()](class_geometry2d.md#class-geometry2d-method-bresenham-line) as well to avoid visible gaps in lines if the user is moving the mouse quickly.

**Note:** This event may be emitted even when the mouse hasn't moved, either by the operating system or by Godot itself. If you really need to know if the mouse has moved (e.g. to suppress displaying a tooltip), you should check that `relative.is_zero_approx()` is `false`.

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)

- [Mouse and input coordinates](../tutorials/inputs/mouse_and_input_coordinates.md)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [pen\_inverted](#class-inputeventmousemotion-property-pen-inverted) | `false` |
| [float](class_float.md#class-float) | [pressure](#class-inputeventmousemotion-property-pressure) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [relative](#class-inputeventmousemotion-property-relative) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [screen\_relative](#class-inputeventmousemotion-property-screen-relative) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [screen\_velocity](#class-inputeventmousemotion-property-screen-velocity) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [tilt](#class-inputeventmousemotion-property-tilt) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [velocity](#class-inputeventmousemotion-property-velocity) | `Vector2(0, 0)` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **pen\_inverted** = `false` [🔗](#class-inputeventmousemotion-property-pen-inverted)

- void **set\_pen\_inverted**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_pen\_inverted**()


Returns `true` when using the eraser end of a stylus pen.

**Note:** This property is implemented on Linux, macOS and Windows.

* * *

[float](class_float.md#class-float) **pressure** = `0.0` [🔗](#class-inputeventmousemotion-property-pressure)

- void **set\_pressure**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pressure**()


Represents the pressure the user puts on the pen. Ranges from `0.0` to `1.0`.

* * *

[Vector2](class_vector2.md#class-vector2) **relative** = `Vector2(0, 0)` [🔗](#class-inputeventmousemotion-property-relative)

- void **set\_relative**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_relative**()


The mouse position relative to the previous position (position at the last frame).

**Note:** Since **InputEventMouseMotion** may only be emitted when the mouse moves, it is not possible to reliably detect when the mouse has stopped moving by checking this property. A separate, short timer may be necessary.

**Note:** [relative](#class-inputeventmousemotion-property-relative) is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. This means mouse sensitivity will appear different depending on resolution when using [relative](#class-inputeventmousemotion-property-relative) in a script that handles mouse aiming with the [Input.MOUSE\_MODE\_CAPTURED](class_input.md#class-input-constant-mouse-mode-captured) mouse mode. To avoid this, use [screen\_relative](#class-inputeventmousemotion-property-screen-relative) instead.

* * *

[Vector2](class_vector2.md#class-vector2) **screen\_relative** = `Vector2(0, 0)` [🔗](#class-inputeventmousemotion-property-screen-relative)

- void **set\_screen\_relative**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_screen\_relative**()


The unscaled mouse position relative to the previous position in the coordinate system of the screen (position at the last frame).

**Note:** Since **InputEventMouseMotion** may only be emitted when the mouse moves, it is not possible to reliably detect when the mouse has stopped moving by checking this property. A separate, short timer may be necessary.

**Note:** This coordinate is _not_ scaled according to the content scale factor or calls to [InputEvent.xformed\_by()](class_inputevent.md#class-inputevent-method-xformed-by). This should be preferred over [relative](#class-inputeventmousemotion-property-relative) for mouse aiming when using the [Input.MOUSE\_MODE\_CAPTURED](class_input.md#class-input-constant-mouse-mode-captured) mouse mode, regardless of the project's stretch mode.

* * *

[Vector2](class_vector2.md#class-vector2) **screen\_velocity** = `Vector2(0, 0)` [🔗](#class-inputeventmousemotion-property-screen-velocity)

- void **set\_screen\_velocity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_screen\_velocity**()


The unscaled mouse velocity in pixels per second in screen coordinates. This velocity is _not_ scaled according to the content scale factor or calls to [InputEvent.xformed\_by()](class_inputevent.md#class-inputevent-method-xformed-by).

**Note:** Use [screen\_relative](#class-inputeventmousemotion-property-screen-relative) for mouse aiming using the [Input.MOUSE\_MODE\_CAPTURED](class_input.md#class-input-constant-mouse-mode-captured) mouse mode.

* * *

[Vector2](class_vector2.md#class-vector2) **tilt** = `Vector2(0, 0)` [🔗](#class-inputeventmousemotion-property-tilt)

- void **set\_tilt**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_tilt**()


Represents the angles of tilt of the pen. Positive X-coordinate value indicates a tilt to the right. Positive Y-coordinate value indicates a tilt toward the user. Ranges from `-1.0` to `1.0` for both axes.

* * *

[Vector2](class_vector2.md#class-vector2) **velocity** = `Vector2(0, 0)` [🔗](#class-inputeventmousemotion-property-velocity)

- void **set\_velocity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_velocity**()


The mouse velocity in pixels per second.

**Note:** [velocity](#class-inputeventmousemotion-property-velocity) is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. That means mouse sensitivity may appear different depending on resolution.

**Note:** Use [screen\_relative](#class-inputeventmousemotion-property-screen-relative) for mouse aiming using the [Input.MOUSE\_MODE\_CAPTURED](class_input.md#class-input-constant-mouse-mode-captured) mouse mode.

[Previous](class_inputeventmousebutton.md "InputEventMouseButton") [Next](class_inputeventpangesture.md "InputEventPanGesture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventmousebutton.md "InputEventMouseButton") [Next](class_inputeventpangesture.md "InputEventPanGesture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).