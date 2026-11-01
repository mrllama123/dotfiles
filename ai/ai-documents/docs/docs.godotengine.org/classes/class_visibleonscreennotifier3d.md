---
title: VisibleOnScreenNotifier3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visibleonscreennotifier3d.html
crawled_at: "2026-08-13T10:27:51+12:00"
content_hash: 572fd23c82b42d507457996d48978e61b2d22b142d49ec8c463cdd6263b226dc
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisibleOnScreenNotifier3D

* * *

# VisibleOnScreenNotifier3D

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisibleOnScreenEnabler3D](class_visibleonscreenenabler3d.md#class-visibleonscreenenabler3d)

A box-shaped region of 3D space that detects whether it is visible on screen.

## Description

**VisibleOnScreenNotifier3D** represents a box-shaped region of 3D space. When any part of this region becomes visible on screen or in a [Camera3D](class_camera3d.md#class-camera3d)'s view, it will emit a [screen\_entered](#class-visibleonscreennotifier3d-signal-screen-entered) signal, and likewise it will emit a [screen\_exited](#class-visibleonscreennotifier3d-signal-screen-exited) signal when no part of it remains visible.

If you want a node to be enabled automatically when this region is visible on screen, use [VisibleOnScreenEnabler3D](class_visibleonscreenenabler3d.md#class-visibleonscreenenabler3d).

**Note:** **VisibleOnScreenNotifier3D** uses an approximate heuristic that doesn't take walls and other occlusion into account, unless occlusion culling is used. It also won't function unless [Node3D.visible](class_node3d.md#class-node3d-property-visible) is set to `true`.

## Properties

|     |     |     |
| --- | --- | --- |
| [AABB](class_aabb.md#class-aabb) | [aabb](#class-visibleonscreennotifier3d-property-aabb) | `AABB(-1, -1, -1, 2, 2, 2)` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [is\_on\_screen](#class-visibleonscreennotifier3d-method-is-on-screen)() const |

* * *

## Signals

**screen\_entered**() [🔗](#class-visibleonscreennotifier3d-signal-screen-entered)

Emitted when the **VisibleOnScreenNotifier3D** enters the screen.

* * *

**screen\_exited**() [🔗](#class-visibleonscreennotifier3d-signal-screen-exited)

Emitted when the **VisibleOnScreenNotifier3D** exits the screen.

* * *

## Property Descriptions

[AABB](class_aabb.md#class-aabb) **aabb** = `AABB(-1, -1, -1, 2, 2, 2)` [🔗](#class-visibleonscreennotifier3d-property-aabb)

- void **set\_aabb**(value: [AABB](class_aabb.md#class-aabb))

- [AABB](class_aabb.md#class-aabb) **get\_aabb**()


The **VisibleOnScreenNotifier3D**'s bounding box.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **is\_on\_screen**() const [🔗](#class-visibleonscreennotifier3d-method-is-on-screen)

Returns `true` if the bounding box is on the screen.

**Note:** It takes one frame for the **VisibleOnScreenNotifier3D**'s visibility to be assessed once added to the scene tree, so this method will always return `false` right after it is instantiated.

[Previous](class_visibleonscreennotifier2d.md "VisibleOnScreenNotifier2D") [Next](class_visualinstance3d.md "VisualInstance3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visibleonscreennotifier2d.md "VisibleOnScreenNotifier2D") [Next](class_visualinstance3d.md "VisualInstance3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).