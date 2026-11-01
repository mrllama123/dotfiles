---
title: PointLight2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_pointlight2d.html
crawled_at: "2026-08-13T10:37:04+12:00"
content_hash: c5da7eebc4ba827c88c403d0a57ad29c5f6d78cd0c762c390c333e699cf62e45
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PointLight2D

* * *

# PointLight2D

**Inherits:** [Light2D](class_light2d.md#class-light2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Positional 2D light source.

## Description

Casts light in a 2D environment. This light's shape is defined by a (usually grayscale) texture.

## Tutorials

- [2D lights and shadows](../tutorials/2d/2d_lights_and_shadows.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [height](#class-pointlight2d-property-height) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-pointlight2d-property-offset) | `Vector2(0, 0)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-pointlight2d-property-texture) |  |
| [float](class_float.md#class-float) | [texture\_scale](#class-pointlight2d-property-texture-scale) | `1.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **height** = `0.0` [🔗](#class-pointlight2d-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


The height of the light. Used with 2D normal mapping. The units are in pixels, e.g. if the height is 100, then it will illuminate an object 100 pixels away at a 45° angle to the plane.

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-pointlight2d-property-offset)

- void **set\_texture\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_texture\_offset**()


The offset of the light's [texture](#class-pointlight2d-property-texture).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-pointlight2d-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


[Texture2D](class_texture2d.md#class-texture2d) used for the light's appearance.

* * *

[float](class_float.md#class-float) **texture\_scale** = `1.0` [🔗](#class-pointlight2d-property-texture-scale)

- void **set\_texture\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_texture\_scale**()


The [texture](#class-pointlight2d-property-texture)'s scale factor.

[Previous](class_pinjoint3d.md "PinJoint3D") [Next](class_polygon2d.md "Polygon2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_pinjoint3d.md "PinJoint3D") [Next](class_polygon2d.md "Polygon2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).