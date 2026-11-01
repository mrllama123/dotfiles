---
title: StyleBox — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_stylebox.html
crawled_at: "2026-08-13T10:29:09+12:00"
content_hash: 251bea6e5e2d86d1e5e39bfc0dd5ec10da9c97e6edf6cec628b05e455ec2495f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StyleBox

* * *

# StyleBox

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty), [StyleBoxFlat](class_styleboxflat.md#class-styleboxflat), [StyleBoxLine](class_styleboxline.md#class-styleboxline), [StyleBoxTexture](class_styleboxtexture.md#class-styleboxtexture)

Abstract base class for defining stylized boxes for UI elements.

## Description

**StyleBox** is an abstract base class for drawing stylized boxes for UI elements. It is used for panels, buttons, [LineEdit](class_lineedit.md#class-lineedit) backgrounds, [Tree](class_tree.md#class-tree) backgrounds, etc. and also for testing a transparency mask for pointer signals. If mask test fails on a **StyleBox** assigned as mask to a control, clicks and motion signals will go through it to the one below.

**Note:** For control nodes that have _Theme Properties_, the `focus` **StyleBox** is displayed over the `normal`, `hover` or `pressed` **StyleBox**. This makes the `focus` **StyleBox** more reusable across different nodes.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [content\_margin\_bottom](#class-stylebox-property-content-margin-bottom) | `-1.0` |
| [float](class_float.md#class-float) | [content\_margin\_left](#class-stylebox-property-content-margin-left) | `-1.0` |
| [float](class_float.md#class-float) | [content\_margin\_right](#class-stylebox-property-content-margin-right) | `-1.0` |
| [float](class_float.md#class-float) | [content\_margin\_top](#class-stylebox-property-content-margin-top) | `-1.0` |

## Methods

|     |     |
| --- | --- |
| void | [\_draw](#class-stylebox-private-method-draw)(to\_canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2)) virtualrequiredconst |
| [Rect2](class_rect2.md#class-rect2) | [\_get\_draw\_rect](#class-stylebox-private-method-get-draw-rect)(rect: [Rect2](class_rect2.md#class-rect2)) virtualconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_minimum\_size](#class-stylebox-private-method-get-minimum-size)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_test\_mask](#class-stylebox-private-method-test-mask)(point: [Vector2](class_vector2.md#class-vector2), rect: [Rect2](class_rect2.md#class-rect2)) virtualconst |
| void | [draw](#class-stylebox-method-draw)(canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2)) const |
| [float](class_float.md#class-float) | [get\_content\_margin](#class-stylebox-method-get-content-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| [CanvasItem](class_canvasitem.md#class-canvasitem) | [get\_current\_item\_drawn](#class-stylebox-method-get-current-item-drawn)() const |
| [float](class_float.md#class-float) | [get\_margin](#class-stylebox-method-get-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_minimum\_size](#class-stylebox-method-get-minimum-size)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_offset](#class-stylebox-method-get-offset)() const |
| void | [set\_content\_margin](#class-stylebox-method-set-content-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float)) |
| void | [set\_content\_margin\_all](#class-stylebox-method-set-content-margin-all)(offset: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [test\_mask](#class-stylebox-method-test-mask)(point: [Vector2](class_vector2.md#class-vector2), rect: [Rect2](class_rect2.md#class-rect2)) const |

* * *

## Property Descriptions

[float](class_float.md#class-float) **content\_margin\_bottom** = `-1.0` [🔗](#class-stylebox-property-content-margin-bottom)

- void **set\_content\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_content\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The bottom margin for the contents of this style box. Increasing this value reduces the space available to the contents from the bottom.

If this value is negative, it is ignored and a child-specific margin is used instead. For example, for [StyleBoxFlat](class_styleboxflat.md#class-styleboxflat), the border thickness (if any) is used instead.

It is up to the code using this style box to decide what these contents are: for example, a [Button](class_button.md#class-button) respects this content margin for the textual contents of the button.

[get\_margin()](#class-stylebox-method-get-margin) should be used to fetch this value as consumer instead of reading these properties directly. This is because it correctly respects negative values and the fallback mentioned above.

* * *

[float](class_float.md#class-float) **content\_margin\_left** = `-1.0` [🔗](#class-stylebox-property-content-margin-left)

- void **set\_content\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_content\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The left margin for the contents of this style box. Increasing this value reduces the space available to the contents from the left.

Refer to [content\_margin\_bottom](#class-stylebox-property-content-margin-bottom) for extra considerations.

* * *

[float](class_float.md#class-float) **content\_margin\_right** = `-1.0` [🔗](#class-stylebox-property-content-margin-right)

- void **set\_content\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_content\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The right margin for the contents of this style box. Increasing this value reduces the space available to the contents from the right.

Refer to [content\_margin\_bottom](#class-stylebox-property-content-margin-bottom) for extra considerations.

* * *

[float](class_float.md#class-float) **content\_margin\_top** = `-1.0` [🔗](#class-stylebox-property-content-margin-top)

- void **set\_content\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_content\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


The top margin for the contents of this style box. Increasing this value reduces the space available to the contents from the top.

Refer to [content\_margin\_bottom](#class-stylebox-property-content-margin-bottom) for extra considerations.

* * *

## Method Descriptions

void **\_draw**(to\_canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2)) virtualrequiredconst [🔗](#class-stylebox-private-method-draw)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Rect2](class_rect2.md#class-rect2) **\_get\_draw\_rect**(rect: [Rect2](class_rect2.md#class-rect2)) virtualconst [🔗](#class-stylebox-private-method-get-draw-rect)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_minimum\_size**() virtualconst [🔗](#class-stylebox-private-method-get-minimum-size)

Virtual method to be implemented by the user. Returns a custom minimum size that the stylebox must respect when drawing. By default [get\_minimum\_size()](#class-stylebox-method-get-minimum-size) only takes content margins into account. This method can be overridden to add another size restriction. A combination of the default behavior and the output of this method will be used, to account for both sizes.

* * *

[bool](class_bool.md#class-bool) **\_test\_mask**(point: [Vector2](class_vector2.md#class-vector2), rect: [Rect2](class_rect2.md#class-rect2)) virtualconst [🔗](#class-stylebox-private-method-test-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **draw**(canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2)) const [🔗](#class-stylebox-method-draw)

Draws this stylebox using a canvas item identified by the given [RID](class_rid.md#class-rid).

The [RID](class_rid.md#class-rid) value can either be the result of [CanvasItem.get\_canvas\_item()](class_canvasitem.md#class-canvasitem-method-get-canvas-item) called on an existing [CanvasItem](class_canvasitem.md#class-canvasitem)-derived node, or directly from creating a canvas item in the [RenderingServer](class_renderingserver.md#class-renderingserver) with [RenderingServer.canvas\_item\_create()](class_renderingserver.md#class-renderingserver-method-canvas-item-create).

* * *

[float](class_float.md#class-float) **get\_content\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-stylebox-method-get-content-margin)

Returns the default margin of the specified [Side](class_@globalscope.md#enum-globalscope-side).

* * *

[CanvasItem](class_canvasitem.md#class-canvasitem) **get\_current\_item\_drawn**() const [🔗](#class-stylebox-method-get-current-item-drawn)

Returns the [CanvasItem](class_canvasitem.md#class-canvasitem) that handles its [CanvasItem.NOTIFICATION\_DRAW](class_canvasitem.md#class-canvasitem-constant-notification-draw) or [CanvasItem.\_draw()](class_canvasitem.md#class-canvasitem-private-method-draw) callback at this moment.

* * *

[float](class_float.md#class-float) **get\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-stylebox-method-get-margin)

Returns the content margin offset for the specified [Side](class_@globalscope.md#enum-globalscope-side).

Positive values reduce size inwards, unlike [Control](class_control.md#class-control)'s margin values.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_minimum\_size**() const [🔗](#class-stylebox-method-get-minimum-size)

Returns the minimum size that this stylebox can be shrunk to.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_offset**() const [🔗](#class-stylebox-method-get-offset)

Returns the "offset" of a stylebox. This helper function returns a value equivalent to `Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))`.

* * *

void **set\_content\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float)) [🔗](#class-stylebox-method-set-content-margin)

Sets the default value of the specified [Side](class_@globalscope.md#enum-globalscope-side) to `offset` pixels.

* * *

void **set\_content\_margin\_all**(offset: [float](class_float.md#class-float)) [🔗](#class-stylebox-method-set-content-margin-all)

Sets the default margin to `offset` pixels for all sides.

* * *

[bool](class_bool.md#class-bool) **test\_mask**(point: [Vector2](class_vector2.md#class-vector2), rect: [Rect2](class_rect2.md#class-rect2)) const [🔗](#class-stylebox-method-test-mask)

Test a position in a rectangle, return whether it passes the mask test.

[Previous](class_standardmaterial3d.md "StandardMaterial3D") [Next](class_styleboxempty.md "StyleBoxEmpty")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_standardmaterial3d.md "StandardMaterial3D") [Next](class_styleboxempty.md "StyleBoxEmpty")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).