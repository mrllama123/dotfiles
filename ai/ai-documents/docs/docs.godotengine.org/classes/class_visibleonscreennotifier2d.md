---
title: VisibleOnScreenNotifier2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visibleonscreennotifier2d.html
crawled_at: "2026-08-13T10:20:19+12:00"
content_hash: fffca1deaaabe662600b4f55388058bccb1182a166e704aa257eb3d6daf36584
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisibleOnScreenNotifier2D

* * *

# VisibleOnScreenNotifier2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisibleOnScreenEnabler2D](class_visibleonscreenenabler2d.md#class-visibleonscreenenabler2d)

A rectangular region of 2D space that detects whether it is visible on screen.

## Description

**VisibleOnScreenNotifier2D** represents a rectangular region of 2D space. When any part of this region becomes visible on screen or in a viewport, it will emit a [screen\_entered](#class-visibleonscreennotifier2d-signal-screen-entered) signal, and likewise it will emit a [screen\_exited](#class-visibleonscreennotifier2d-signal-screen-exited) signal when no part of it remains visible.

If you want a node to be enabled automatically when this region is visible on screen, use [VisibleOnScreenEnabler2D](class_visibleonscreenenabler2d.md#class-visibleonscreenenabler2d).

**Note:** **VisibleOnScreenNotifier2D** uses the render culling code to determine whether it's visible on screen, so it won't function unless [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) is set to `true`.

## Tutorials

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)


## Properties

|     |     |     |
| --- | --- | --- |
| [Rect2](class_rect2.md#class-rect2) | [rect](#class-visibleonscreennotifier2d-property-rect) | `Rect2(-10, -10, 20, 20)` |
| [bool](class_bool.md#class-bool) | [show\_rect](#class-visibleonscreennotifier2d-property-show-rect) | `true` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [is\_on\_screen](#class-visibleonscreennotifier2d-method-is-on-screen)() const |

* * *

## Signals

**screen\_entered**() [🔗](#class-visibleonscreennotifier2d-signal-screen-entered)

Emitted when the VisibleOnScreenNotifier2D enters the screen.

* * *

**screen\_exited**() [🔗](#class-visibleonscreennotifier2d-signal-screen-exited)

Emitted when the VisibleOnScreenNotifier2D exits the screen.

* * *

## Property Descriptions

[Rect2](class_rect2.md#class-rect2) **rect** = `Rect2(-10, -10, 20, 20)` [🔗](#class-visibleonscreennotifier2d-property-rect)

- void **set\_rect**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_rect**()


The VisibleOnScreenNotifier2D's bounding rectangle.

* * *

[bool](class_bool.md#class-bool) **show\_rect** = `true` [🔗](#class-visibleonscreennotifier2d-property-show-rect)

- void **set\_show\_rect**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_showing\_rect**()


If `true`, shows the rectangle area of [rect](#class-visibleonscreennotifier2d-property-rect) in the editor with a translucent magenta fill. Unlike changing the visibility of the VisibleOnScreenNotifier2D, this does not affect the screen culling detection.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **is\_on\_screen**() const [🔗](#class-visibleonscreennotifier2d-method-is-on-screen)

If `true`, the bounding rectangle is on the screen.

**Note:** It takes one frame for the **VisibleOnScreenNotifier2D**'s visibility to be determined once added to the scene tree, so this method will always return `false` right after it is instantiated, before the draw pass.

[Previous](class_visibleonscreenenabler3d.md "VisibleOnScreenEnabler3D") [Next](class_visibleonscreennotifier3d.md "VisibleOnScreenNotifier3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visibleonscreenenabler3d.md "VisibleOnScreenEnabler3D") [Next](class_visibleonscreennotifier3d.md "VisibleOnScreenNotifier3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).