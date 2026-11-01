---
title: ParallaxBackground — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_parallaxbackground.html
crawled_at: "2026-08-13T10:25:19+12:00"
content_hash: 0e9a6c9dcab9b97ffba5c9a525266b35d9536ad7283e35cb53692c6ec79dad73
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ParallaxBackground

* * *

# ParallaxBackground

**Deprecated:** Use the [Parallax2D](class_parallax2d.md#class-parallax2d) node instead.

**Inherits:** [CanvasLayer](class_canvaslayer.md#class-canvaslayer) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node used to create a parallax scrolling background.

## Description

A ParallaxBackground uses one or more [ParallaxLayer](class_parallaxlayer.md#class-parallaxlayer) child nodes to create a parallax effect. Each [ParallaxLayer](class_parallaxlayer.md#class-parallaxlayer) can move at a different speed using [ParallaxLayer.motion\_offset](class_parallaxlayer.md#class-parallaxlayer-property-motion-offset). This creates an illusion of depth in a 2D game. If not used with a [Camera2D](class_camera2d.md#class-camera2d), you must manually calculate the [scroll\_offset](#class-parallaxbackground-property-scroll-offset).

**Note:** Each **ParallaxBackground** is drawn on one specific [Viewport](class_viewport.md#class-viewport) and cannot be shared between multiple [Viewport](class_viewport.md#class-viewport) s, see [CanvasLayer.custom\_viewport](class_canvaslayer.md#class-canvaslayer-property-custom-viewport). When using multiple [Viewport](class_viewport.md#class-viewport) s, for example in a split-screen game, you need create an individual **ParallaxBackground** for each [Viewport](class_viewport.md#class-viewport) you want it to be drawn on.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | layer | `-100` (overrides [CanvasLayer](class_canvaslayer.md#class-canvaslayer-property-layer)) |
| [Vector2](class_vector2.md#class-vector2) | [scroll\_base\_offset](#class-parallaxbackground-property-scroll-base-offset) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [scroll\_base\_scale](#class-parallaxbackground-property-scroll-base-scale) | `Vector2(1, 1)` |
| [bool](class_bool.md#class-bool) | [scroll\_ignore\_camera\_zoom](#class-parallaxbackground-property-scroll-ignore-camera-zoom) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [scroll\_limit\_begin](#class-parallaxbackground-property-scroll-limit-begin) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [scroll\_limit\_end](#class-parallaxbackground-property-scroll-limit-end) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [scroll\_offset](#class-parallaxbackground-property-scroll-offset) | `Vector2(0, 0)` |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **scroll\_base\_offset** = `Vector2(0, 0)` [🔗](#class-parallaxbackground-property-scroll-base-offset)

- void **set\_scroll\_base\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_scroll\_base\_offset**()


The base position offset for all [ParallaxLayer](class_parallaxlayer.md#class-parallaxlayer) children.

* * *

[Vector2](class_vector2.md#class-vector2) **scroll\_base\_scale** = `Vector2(1, 1)` [🔗](#class-parallaxbackground-property-scroll-base-scale)

- void **set\_scroll\_base\_scale**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_scroll\_base\_scale**()


The base motion scale for all [ParallaxLayer](class_parallaxlayer.md#class-parallaxlayer) children.

* * *

[bool](class_bool.md#class-bool) **scroll\_ignore\_camera\_zoom** = `false` [🔗](#class-parallaxbackground-property-scroll-ignore-camera-zoom)

- void **set\_ignore\_camera\_zoom**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ignore\_camera\_zoom**()


If `true`, elements in [ParallaxLayer](class_parallaxlayer.md#class-parallaxlayer) child aren't affected by the zoom level of the camera.

* * *

[Vector2](class_vector2.md#class-vector2) **scroll\_limit\_begin** = `Vector2(0, 0)` [🔗](#class-parallaxbackground-property-scroll-limit-begin)

- void **set\_limit\_begin**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_limit\_begin**()


Top-left limits for scrolling to begin. If the camera is outside of this limit, the background will stop scrolling. Must be lower than [scroll\_limit\_end](#class-parallaxbackground-property-scroll-limit-end) to work.

* * *

[Vector2](class_vector2.md#class-vector2) **scroll\_limit\_end** = `Vector2(0, 0)` [🔗](#class-parallaxbackground-property-scroll-limit-end)

- void **set\_limit\_end**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_limit\_end**()


Bottom-right limits for scrolling to end. If the camera is outside of this limit, the background will stop scrolling. Must be higher than [scroll\_limit\_begin](#class-parallaxbackground-property-scroll-limit-begin) to work.

* * *

[Vector2](class_vector2.md#class-vector2) **scroll\_offset** = `Vector2(0, 0)` [🔗](#class-parallaxbackground-property-scroll-offset)

- void **set\_scroll\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_scroll\_offset**()


The ParallaxBackground's scroll value. Calculated automatically when using a [Camera2D](class_camera2d.md#class-camera2d), but can be used to manually manage scrolling when no camera is present.

[Previous](class_parallax2d.md "Parallax2D") [Next](class_parallaxlayer.md "ParallaxLayer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_parallax2d.md "Parallax2D") [Next](class_parallaxlayer.md "ParallaxLayer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).