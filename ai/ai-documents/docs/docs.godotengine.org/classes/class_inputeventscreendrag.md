---
title: InputEventScreenDrag — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventscreendrag.html
crawled_at: "2026-08-13T10:32:57+12:00"
content_hash: bf476e4e8421d8664a34c2919ed2a88b9e2d53a793072611bfcd8501fb7158d1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventScreenDrag

* * *

# InputEventScreenDrag

**Inherits:** [InputEventFromWindow](class_inputeventfromwindow.md#class-inputeventfromwindow) **<** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a screen drag event.

## Description

Stores information about screen drag events. See [Node.\_input()](class_node.md#class-node-private-method-input).

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [index](#class-inputeventscreendrag-property-index) | `0` |
| [bool](class_bool.md#class-bool) | [pen\_inverted](#class-inputeventscreendrag-property-pen-inverted) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [position](#class-inputeventscreendrag-property-position) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [pressure](#class-inputeventscreendrag-property-pressure) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [relative](#class-inputeventscreendrag-property-relative) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [screen\_relative](#class-inputeventscreendrag-property-screen-relative) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [screen\_velocity](#class-inputeventscreendrag-property-screen-velocity) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [tilt](#class-inputeventscreendrag-property-tilt) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [velocity](#class-inputeventscreendrag-property-velocity) | `Vector2(0, 0)` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **index** = `0` [🔗](#class-inputeventscreendrag-property-index)

- void **set\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_index**()


The drag event index in the case of a multi-drag event.

* * *

[bool](class_bool.md#class-bool) **pen\_inverted** = `false` [🔗](#class-inputeventscreendrag-property-pen-inverted)

- void **set\_pen\_inverted**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_pen\_inverted**()


Returns `true` when using the eraser end of a stylus pen.

* * *

[Vector2](class_vector2.md#class-vector2) **position** = `Vector2(0, 0)` [🔗](#class-inputeventscreendrag-property-position)

- void **set\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_position**()


The drag position in the viewport the node is in, using the coordinate system of this viewport.

* * *

[float](class_float.md#class-float) **pressure** = `0.0` [🔗](#class-inputeventscreendrag-property-pressure)

- void **set\_pressure**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pressure**()


Represents the pressure the user puts on the pen. Ranges from `0.0` to `1.0`.

* * *

[Vector2](class_vector2.md#class-vector2) **relative** = `Vector2(0, 0)` [🔗](#class-inputeventscreendrag-property-relative)

- void **set\_relative**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_relative**()


The drag position relative to the previous position (position at the last frame).

**Note:** [relative](#class-inputeventscreendrag-property-relative) is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. This means touch sensitivity will appear different depending on resolution when using [relative](#class-inputeventscreendrag-property-relative) in a script that handles touch aiming. To avoid this, use [screen\_relative](#class-inputeventscreendrag-property-screen-relative) instead.

* * *

[Vector2](class_vector2.md#class-vector2) **screen\_relative** = `Vector2(0, 0)` [🔗](#class-inputeventscreendrag-property-screen-relative)

- void **set\_screen\_relative**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_screen\_relative**()


The unscaled drag position relative to the previous position in screen coordinates (position at the last frame). This position is _not_ scaled according to the content scale factor or calls to [InputEvent.xformed\_by()](class_inputevent.md#class-inputevent-method-xformed-by). This should be preferred over [relative](#class-inputeventscreendrag-property-relative) for touch aiming regardless of the project's stretch mode.

* * *

[Vector2](class_vector2.md#class-vector2) **screen\_velocity** = `Vector2(0, 0)` [🔗](#class-inputeventscreendrag-property-screen-velocity)

- void **set\_screen\_velocity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_screen\_velocity**()


The unscaled drag velocity in pixels per second in screen coordinates. This velocity is _not_ scaled according to the content scale factor or calls to [InputEvent.xformed\_by()](class_inputevent.md#class-inputevent-method-xformed-by). This should be preferred over [velocity](#class-inputeventscreendrag-property-velocity) for touch aiming regardless of the project's stretch mode.

* * *

[Vector2](class_vector2.md#class-vector2) **tilt** = `Vector2(0, 0)` [🔗](#class-inputeventscreendrag-property-tilt)

- void **set\_tilt**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_tilt**()


Represents the angles of tilt of the pen. Positive X-coordinate value indicates a tilt to the right. Positive Y-coordinate value indicates a tilt toward the user. Ranges from `-1.0` to `1.0` for both axes.

* * *

[Vector2](class_vector2.md#class-vector2) **velocity** = `Vector2(0, 0)` [🔗](#class-inputeventscreendrag-property-velocity)

- void **set\_velocity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_velocity**()


The drag velocity.

**Note:** [velocity](#class-inputeventscreendrag-property-velocity) is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. This means touch sensitivity will appear different depending on resolution when using [velocity](#class-inputeventscreendrag-property-velocity) in a script that handles touch aiming. To avoid this, use [screen\_velocity](#class-inputeventscreendrag-property-screen-velocity) instead.

[Previous](class_inputeventpangesture.md "InputEventPanGesture") [Next](class_inputeventscreentouch.md "InputEventScreenTouch")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventpangesture.md "InputEventPanGesture") [Next](class_inputeventscreentouch.md "InputEventScreenTouch")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).