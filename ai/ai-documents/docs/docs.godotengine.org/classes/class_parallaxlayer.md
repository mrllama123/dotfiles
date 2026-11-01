---
title: ParallaxLayer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_parallaxlayer.html
crawled_at: "2026-08-13T10:40:13+12:00"
content_hash: e22de959bab4f9a9cfc840b5f7bc11c9a5015a73b3cc3625884d1775494ccad3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ParallaxLayer

* * *

# ParallaxLayer

**Deprecated:** Use the [Parallax2D](class_parallax2d.md#class-parallax2d) node instead.

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A parallax scrolling layer to be used with [ParallaxBackground](class_parallaxbackground.md#class-parallaxbackground).

## Description

A ParallaxLayer must be the child of a [ParallaxBackground](class_parallaxbackground.md#class-parallaxbackground) node. Each ParallaxLayer can be set to move at different speeds relative to the camera movement or the [ParallaxBackground.scroll\_offset](class_parallaxbackground.md#class-parallaxbackground-property-scroll-offset) value.

This node's children will be affected by its scroll offset.

**Note:** Any changes to this node's position and scale made after it enters the scene will be ignored.

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [motion\_mirroring](#class-parallaxlayer-property-motion-mirroring) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [motion\_offset](#class-parallaxlayer-property-motion-offset) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [motion\_scale](#class-parallaxlayer-property-motion-scale) | `Vector2(1, 1)` |
| [PhysicsInterpolationMode](class_node.md#enum-node-physicsinterpolationmode) | physics\_interpolation\_mode | `2` (overrides [Node](class_node.md#class-node-property-physics-interpolation-mode)) |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **motion\_mirroring** = `Vector2(0, 0)` [🔗](#class-parallaxlayer-property-motion-mirroring)

- void **set\_mirroring**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_mirroring**()


The interval, in pixels, at which the **ParallaxLayer** is drawn repeatedly. Useful for creating an infinitely scrolling background. If an axis is set to `0`, the **ParallaxLayer** will be drawn only once along that direction.

**Note:** If you want the repetition to pixel-perfect match a [Texture2D](class_texture2d.md#class-texture2d) displayed by a child node, you should account for any scale applied to the texture when defining this interval. For example, if you use a child [Sprite2D](class_sprite2d.md#class-sprite2d) scaled to `0.5` to display a 600x600 texture, and want this sprite to be repeated continuously horizontally, you should set the mirroring to `Vector2(300, 0)`.

**Note:** If the length of the viewport axis is bigger than twice the repeated axis size, it will not repeat infinitely, as the parallax layer only draws 2 instances of the layer at any given time. The visibility window is calculated from the parent [ParallaxBackground](class_parallaxbackground.md#class-parallaxbackground)'s position, not the layer's own position. So, if you use mirroring, **do not** change the **ParallaxLayer** position relative to its parent. Instead, if you need to adjust the background's position, set the [CanvasLayer.offset](class_canvaslayer.md#class-canvaslayer-property-offset) property in the parent [ParallaxBackground](class_parallaxbackground.md#class-parallaxbackground).

**Note:** Despite the name, the layer will not be mirrored, it will only be repeated.

* * *

[Vector2](class_vector2.md#class-vector2) **motion\_offset** = `Vector2(0, 0)` [🔗](#class-parallaxlayer-property-motion-offset)

- void **set\_motion\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_motion\_offset**()


The ParallaxLayer's offset relative to the parent ParallaxBackground's [ParallaxBackground.scroll\_offset](class_parallaxbackground.md#class-parallaxbackground-property-scroll-offset).

* * *

[Vector2](class_vector2.md#class-vector2) **motion\_scale** = `Vector2(1, 1)` [🔗](#class-parallaxlayer-property-motion-scale)

- void **set\_motion\_scale**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_motion\_scale**()


Multiplies the ParallaxLayer's motion. If an axis is set to `0`, it will not scroll.

[Previous](class_parallaxbackground.md "ParallaxBackground") [Next](class_path2d.md "Path2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_parallaxbackground.md "ParallaxBackground") [Next](class_path2d.md "Path2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).