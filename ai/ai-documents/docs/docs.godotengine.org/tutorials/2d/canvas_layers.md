---
title: Canvas layers — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/2d/canvas_layers.html
crawled_at: "2026-08-13T10:41:55+12:00"
content_hash: 929cea45024f37e960a107f38f5b3cde4c1dcfc8cf8306d9fdbd4770c80d73b6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [2D](index.md)
  - Canvas layers
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/2d/canvas_layers.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Canvas layers

## Viewport and Canvas items

[CanvasItem](../../classes/class_canvasitem.md#class-canvasitem) is the base for all 2D nodes, be it regular
2D nodes, such as [Node2D](../../classes/class_node2d.md#class-node2d), or [Control](../../classes/class_control.md#class-control).
Both inherit from [CanvasItem](../../classes/class_canvasitem.md#class-canvasitem).
You can arrange canvas items in trees. Each item will inherit its parent's
transform: when the parent moves, its children move too.

CanvasItem nodes, and nodes inheriting from them, are direct or indirect children of a
[Viewport](../../classes/class_viewport.md#class-viewport), that displays them.

The Viewport's property
[Viewport.canvas\_transform](../../classes/class_viewport.md#class-viewport-property-canvas-transform),
allows to apply a custom [Transform2D](../../classes/class_transform2d.md#class-transform2d)
transform to the CanvasItem hierarchy it contains. Nodes such as
[Camera2D](../../classes/class_camera2d.md#class-camera2d) work by changing that transform.

To achieve effects like scrolling, manipulating the canvas transform property is
more efficient than moving the root canvas item and the entire scene with it.

Usually though, we don't want _everything_ in the game or app to be subject to the canvas
transform. For example:

- **Parallax Backgrounds**: Backgrounds that move slower than the rest
of the stage.

- **UI**: Think of a user interface (UI) or head-up display (HUD) superimposed on our view of the game world. We want a life counter, score display and other elements to retain their screen positions even when our view of the game world changes.

- **Transitions**: We may want visual effects used for transitions (fades, blends) to remain at a fixed screen location.


How to solve these problems in a single scene tree?

## CanvasLayers

The answer is [CanvasLayer](../../classes/class_canvaslayer.md#class-canvaslayer),
which is a node that adds a separate 2D rendering layer for all its
children and grand-children. Viewport children will draw by default at
layer "0", while a CanvasLayer will draw at any numeric layer. Layers
with a greater number will be drawn above those with a smaller number.
CanvasLayers also have their own transform and do not depend on the
transform of other layers. This allows the UI to be fixed in screen-space
while our view on the game world changes.

An example of this is creating a parallax background. This can be done
with a CanvasLayer at layer "-1". The screen with the points, life
counter and pause button can also be created at layer "1".

Here's a diagram of how it looks:

![../../_images/canvaslayers.png](../../_images/canvaslayers.png)

CanvasLayers are independent of tree order, and they only depend on
their layer number, so they can be instantiated when needed.

Note

CanvasLayers aren't necessary to control the drawing order of nodes.
The standard way to ensuring that a node is correctly drawn 'in front' or 'behind' others is to manipulate the
order of the nodes in the scene panel. Perhaps counterintuitively, the topmost nodes in the scene panel are drawn
on _behind_ lower ones in the viewport. 2D nodes also have the [CanvasItem.z\_index](../../classes/class_canvasitem.md#class-canvasitem-property-z-index)
property for controlling their drawing order.

[Previous](introduction_to_2d.md "Introduction to 2D") [Next](2d_transforms.md "Viewport and canvas transforms")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](introduction_to_2d.md "Introduction to 2D") [Next](2d_transforms.md "Viewport and canvas transforms")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).