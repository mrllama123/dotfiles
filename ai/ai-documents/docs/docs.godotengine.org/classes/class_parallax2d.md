---
title: Parallax2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_parallax2d.html
crawled_at: "2026-08-13T10:42:09+12:00"
content_hash: e22a8b794daf850df7b396fde0223b87cd64c52718ab6404b3ac6b7bec19e79c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Parallax2D

* * *

# Parallax2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node used to create a parallax scrolling background.

## Description

A **Parallax2D** is used to create a parallax effect. It can move at a different speed relative to the camera movement using [scroll\_scale](#class-parallax2d-property-scroll-scale). This creates an illusion of depth in a 2D game. If manual scrolling is desired, the [Camera2D](class_camera2d.md#class-camera2d) position can be ignored with [ignore\_camera\_scroll](#class-parallax2d-property-ignore-camera-scroll).

**Note:** Any changes to this node's position made after it enters the scene tree will be overridden if [ignore\_camera\_scroll](#class-parallax2d-property-ignore-camera-scroll) is `false` or [screen\_offset](#class-parallax2d-property-screen-offset) is modified.

## Tutorials

- [2D Parallax](../tutorials/2d/2d_parallax.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [autoscroll](#class-parallax2d-property-autoscroll) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [follow\_viewport](#class-parallax2d-property-follow-viewport) | `true` |
| [bool](class_bool.md#class-bool) | [ignore\_camera\_scroll](#class-parallax2d-property-ignore-camera-scroll) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [limit\_begin](#class-parallax2d-property-limit-begin) | `Vector2(-10000000, -10000000)` |
| [Vector2](class_vector2.md#class-vector2) | [limit\_end](#class-parallax2d-property-limit-end) | `Vector2(10000000, 10000000)` |
| [PhysicsInterpolationMode](class_node.md#enum-node-physicsinterpolationmode) | physics\_interpolation\_mode | `2` (overrides [Node](class_node.md#class-node-property-physics-interpolation-mode)) |
| [Vector2](class_vector2.md#class-vector2) | [repeat\_size](#class-parallax2d-property-repeat-size) | `Vector2(0, 0)` |
| [int](class_int.md#class-int) | [repeat\_times](#class-parallax2d-property-repeat-times) | `1` |
| [Vector2](class_vector2.md#class-vector2) | [screen\_offset](#class-parallax2d-property-screen-offset) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [scroll\_offset](#class-parallax2d-property-scroll-offset) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [scroll\_scale](#class-parallax2d-property-scroll-scale) | `Vector2(1, 1)` |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **autoscroll** = `Vector2(0, 0)` [🔗](#class-parallax2d-property-autoscroll)

- void **set\_autoscroll**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_autoscroll**()


Velocity at which the offset scrolls automatically, in pixels per second.

* * *

[bool](class_bool.md#class-bool) **follow\_viewport** = `true` [🔗](#class-parallax2d-property-follow-viewport)

- void **set\_follow\_viewport**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_follow\_viewport**()


If `true`, this **Parallax2D** is offset by the current camera's position. If the **Parallax2D** is in a [CanvasLayer](class_canvaslayer.md#class-canvaslayer) separate from the current camera, it may be desired to match the value with [CanvasLayer.follow\_viewport\_enabled](class_canvaslayer.md#class-canvaslayer-property-follow-viewport-enabled).

* * *

[bool](class_bool.md#class-bool) **ignore\_camera\_scroll** = `false` [🔗](#class-parallax2d-property-ignore-camera-scroll)

- void **set\_ignore\_camera\_scroll**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ignore\_camera\_scroll**()


If `true`, **Parallax2D**'s position is not affected by the position of the camera.

* * *

[Vector2](class_vector2.md#class-vector2) **limit\_begin** = `Vector2(-10000000, -10000000)` [🔗](#class-parallax2d-property-limit-begin)

- void **set\_limit\_begin**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_limit\_begin**()


Top-left limits for scrolling to begin. If the camera is outside of this limit, the **Parallax2D** stops scrolling. Must be lower than [limit\_end](#class-parallax2d-property-limit-end) minus the viewport size to work.

* * *

[Vector2](class_vector2.md#class-vector2) **limit\_end** = `Vector2(10000000, 10000000)` [🔗](#class-parallax2d-property-limit-end)

- void **set\_limit\_end**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_limit\_end**()


Bottom-right limits for scrolling to end. If the camera is outside of this limit, the **Parallax2D** will stop scrolling. Must be higher than [limit\_begin](#class-parallax2d-property-limit-begin) and the viewport size combined to work.

* * *

[Vector2](class_vector2.md#class-vector2) **repeat\_size** = `Vector2(0, 0)` [🔗](#class-parallax2d-property-repeat-size)

- void **set\_repeat\_size**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_repeat\_size**()


Repeats the [Texture2D](class_texture2d.md#class-texture2d) of each of this node's children and offsets them by this value. When scrolling, the node's position loops, giving the illusion of an infinite scrolling background if the values are larger than the screen size. If an axis is set to `0`, the [Texture2D](class_texture2d.md#class-texture2d) will not be repeated.

* * *

[int](class_int.md#class-int) **repeat\_times** = `1` [🔗](#class-parallax2d-property-repeat-times)

- void **set\_repeat\_times**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_repeat\_times**()


Overrides the amount of times the texture repeats. Each texture copy spreads evenly from the original by [repeat\_size](#class-parallax2d-property-repeat-size). Useful for when zooming out with a camera.

* * *

[Vector2](class_vector2.md#class-vector2) **screen\_offset** = `Vector2(0, 0)` [🔗](#class-parallax2d-property-screen-offset)

- void **set\_screen\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_screen\_offset**()


Offset used to scroll this **Parallax2D**. This value is updated automatically unless [ignore\_camera\_scroll](#class-parallax2d-property-ignore-camera-scroll) is `true`.

* * *

[Vector2](class_vector2.md#class-vector2) **scroll\_offset** = `Vector2(0, 0)` [🔗](#class-parallax2d-property-scroll-offset)

- void **set\_scroll\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_scroll\_offset**()


The **Parallax2D**'s offset. Similar to [screen\_offset](#class-parallax2d-property-screen-offset) and [Node2D.position](class_node2d.md#class-node2d-property-position), but will not be overridden.

**Note:** Values will loop if [repeat\_size](#class-parallax2d-property-repeat-size) is set higher than `0`.

* * *

[Vector2](class_vector2.md#class-vector2) **scroll\_scale** = `Vector2(1, 1)` [🔗](#class-parallax2d-property-scroll-scale)

- void **set\_scroll\_scale**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_scroll\_scale**()


Multiplier to the final **Parallax2D**'s offset. Can be used to simulate distance from the camera.

For example, a value of `1` scrolls at the same speed as the camera. A value greater than `1` scrolls faster, making objects appear closer. Less than `1` scrolls slower, making objects appear further, and a value of `0` stops the objects completely.

[Previous](class_panelcontainer.md "PanelContainer") [Next](class_parallaxbackground.md "ParallaxBackground")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_panelcontainer.md "PanelContainer") [Next](class_parallaxbackground.md "ParallaxBackground")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).