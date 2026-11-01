---
title: Viewport and canvas transforms — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/2d/2d_transforms.html
crawled_at: "2026-08-13T10:34:04+12:00"
content_hash: 27c6c27b85fd52ee97d781b8defebf9820ba4caf4b0f6ecebcbdadac7a0e6f10
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [2D](index.md)
  - Viewport and canvas transforms
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/2d/2d_transforms.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Viewport and canvas transforms

## Introduction

This is an overview of the 2D transforms going on for nodes from the
moment they draw their content locally to the time they are drawn onto
the screen. This overview discusses very low-level details of the engine.

The goal of this tutorial is to teach a way for feeding input events to the
Input with a position in the correct coordinate system.

A more extensive description of all coordinate systems and 2d transforms is
available in [2D coordinate systems and 2D transforms](../../engine_details/architecture/2d_coordinate_systems.md#doc-2d-coordinate-systems).

## Canvas transform

As mentioned in the previous tutorial, [Canvas layers](canvas_layers.md#doc-canvas-layers), every
CanvasItem node (remember that Node2D and Control based nodes use
CanvasItem as their common root) will reside in a _Canvas Layer_. Every
canvas layer has a transform (translation, rotation, scale, etc.) that
can be accessed as a [Transform2D](../../classes/class_transform2d.md#class-transform2d).

Also covered in the previous tutorial, nodes are drawn by default in Layer 0,
in the built-in canvas. To put nodes in a different layer, a [CanvasLayer](../../classes/class_canvaslayer.md#class-canvaslayer) node can be used.

## Global canvas transform

Viewports also have a Global Canvas transform (also a
[Transform2D](../../classes/class_transform2d.md#class-transform2d)). This is the master transform and
affects all individual _Canvas Layer_ transforms. Generally, this is primarily
used in Godot's CanvasItem Editor.

## Stretch transform

Finally, viewports have a _Stretch Transform_, which is used when
resizing or stretching the screen. This transform is used internally (as
described in [Multiple resolutions](../rendering/multiple_resolutions.md#doc-multiple-resolutions)), but can also be manually set
on each viewport.

Input events are multiplied by this transform, but lack the ones above. To
convert InputEvent coordinates to local CanvasItem coordinates, the
[CanvasItem.make\_input\_local()](../../classes/class_canvasitem.md#class-canvasitem-method-make-input-local)
function was added for convenience.

## Window transform

The root viewport is a [Window](../../classes/class_window.md#class-window). In order to scale and
position the _Window's_ content as described in [Multiple resolutions](../rendering/multiple_resolutions.md#doc-multiple-resolutions),
each [Window](../../classes/class_window.md#class-window) contains a _window transform_. It is for
example responsible for the black bars at the _Window's_ sides so that the
_Viewport_ is displayed with a fixed aspect ratio.

## Transform order

To convert a CanvasItem local coordinate to an actual screen coordinate,
the following chain of transforms must be applied:

![../../_images/viewport_transforms3.webp](../../_images/viewport_transforms3.webp)

## Transform functions

The above graphic shows some available transform functions. All transforms are directed from right
to left, this means multiplying a transform with a coordinate results in a coordinate system
further to the left, multiplying the [affine inverse](../../classes/class_transform2d.md#class-transform2d-method-affine-inverse)
of a transform results in a coordinate system further to the right:

GDScriptC#

```
# Called from a CanvasItem.
canvas_pos = get_global_transform() * local_pos
local_pos = get_global_transform().affine_inverse() * canvas_pos

```

```
// Called from a CanvasItem.
canvasPos = GetGlobalTransform() * localPos;
localPos = GetGlobalTransform().AffineInverse() * canvasPos;

```

Finally, then, to convert a CanvasItem local coordinates to screen coordinates, just multiply in
the following order:

GDScriptC#

```
var screen_coord = get_viewport().get_screen_transform() * get_global_transform_with_canvas() * local_pos

```

```
var screenCoord = GetViewport().GetScreenTransform() * GetGlobalTransformWithCanvas() * localPos;

```

Keep in mind, however, that it is generally not desired to work with screen coordinates. The
recommended approach is to simply work in Canvas coordinates
( `CanvasItem.get_global_transform()`), to allow automatic screen resolution resizing to work
properly.

## Feeding custom input events

It is often desired to feed custom input events to the game. With the above knowledge, to correctly
do this in the focused window, it must be done the following way:

GDScriptC#

```
var local_pos = Vector2(10, 20) # Local to Control/Node2D.
var ie = InputEventMouseButton.new()
ie.button_index = MOUSE_BUTTON_LEFT
ie.position = get_viewport().get_screen_transform() * get_global_transform_with_canvas() * local_pos
Input.parse_input_event(ie)

```

```
var localPos = new Vector2(10,20); // Local to Control/Node2D.
var ie = new InputEventMouseButton()
{
    ButtonIndex = MouseButton.Left,
    Position = GetViewport().GetScreenTransform() * GetGlobalTransformWithCanvas() * localPos,
};
Input.ParseInputEvent(ie);

```

[Previous](canvas_layers.md "Canvas layers") [Next](2d_lights_and_shadows.md "2D lights and shadows")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](canvas_layers.md "Canvas layers") [Next](2d_lights_and_shadows.md "2D lights and shadows")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).