---
title: DirectionalLight2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_directionallight2d.html
crawled_at: "2026-08-13T10:34:07+12:00"
content_hash: ccb3be87e10a95ddd19ca1ba43c32cd8d8a35028ea14be474c2bf4d5a6a1a998
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - DirectionalLight2D

* * *

# DirectionalLight2D

**Inherits:** [Light2D](class_light2d.md#class-light2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Directional 2D light from a distance.

## Description

A directional light is a type of [Light2D](class_light2d.md#class-light2d) node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene (for example: to model sunlight or moonlight).

Light is emitted in the +Y direction of the node's global basis. For an unrotated light, this means that the light is emitted downwards. The position of the node is ignored; only the basis is used to determine light direction.

**Note:** **DirectionalLight2D** does not support light cull masks (but it supports shadow cull masks). It will always light up 2D nodes, regardless of the 2D node's [CanvasItem.light\_mask](class_canvasitem.md#class-canvasitem-property-light-mask).

## Tutorials

- [2D lights and shadows](../tutorials/2d/2d_lights_and_shadows.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [height](#class-directionallight2d-property-height) | `0.0` |
| [float](class_float.md#class-float) | [max\_distance](#class-directionallight2d-property-max-distance) | `10000.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **height** = `0.0` [🔗](#class-directionallight2d-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


The height of the light. Used with 2D normal mapping. Ranges from 0 (parallel to the plane) to 1 (perpendicular to the plane).

* * *

[float](class_float.md#class-float) **max\_distance** = `10000.0` [🔗](#class-directionallight2d-property-max-distance)

- void **set\_max\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_distance**()


The maximum distance from the camera center objects can be before their shadows are culled (in pixels). Decreasing this value can prevent objects located outside the camera from casting shadows (while also improving performance). [Camera2D.zoom](class_camera2d.md#class-camera2d-property-zoom) is not taken into account by [max\_distance](#class-directionallight2d-property-max-distance), which means that at higher zoom values, shadows will appear to fade out sooner when zooming onto a given point.

[Previous](class_decal.md "Decal") [Next](class_directionallight3d.md "DirectionalLight3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_decal.md "Decal") [Next](class_directionallight3d.md "DirectionalLight3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).