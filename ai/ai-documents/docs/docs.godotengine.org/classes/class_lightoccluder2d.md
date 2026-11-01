---
title: LightOccluder2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_lightoccluder2d.html
crawled_at: "2026-08-13T10:23:43+12:00"
content_hash: 6c4e8b61afbc6d377e1356c55f718fb52abd0c7e40657a43dd14247a35aeaf91
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - LightOccluder2D

* * *

# LightOccluder2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Occludes light cast by a Light2D, casting shadows.

## Description

Occludes light cast by a Light2D, casting shadows. The LightOccluder2D must be provided with an [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d) in order for the shadow to be computed.

## Tutorials

- [2D lights and shadows](../tutorials/2d/2d_lights_and_shadows.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d) | [occluder](#class-lightoccluder2d-property-occluder) |  |
| [int](class_int.md#class-int) | [occluder\_light\_mask](#class-lightoccluder2d-property-occluder-light-mask) | `1` |
| [bool](class_bool.md#class-bool) | [sdf\_collision](#class-lightoccluder2d-property-sdf-collision) | `true` |

* * *

## Property Descriptions

[OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d) **occluder** [🔗](#class-lightoccluder2d-property-occluder)

- void **set\_occluder\_polygon**(value: [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d))

- [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d) **get\_occluder\_polygon**()


The [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d) used to compute the shadow.

* * *

[int](class_int.md#class-int) **occluder\_light\_mask** = `1` [🔗](#class-lightoccluder2d-property-occluder-light-mask)

- void **set\_occluder\_light\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_occluder\_light\_mask**()


The LightOccluder2D's occluder light mask. The LightOccluder2D will cast shadows only from Light2D(s) that have the same light mask(s).

* * *

[bool](class_bool.md#class-bool) **sdf\_collision** = `true` [🔗](#class-lightoccluder2d-property-sdf-collision)

- void **set\_as\_sdf\_collision**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_set\_as\_sdf\_collision**()


If enabled, the occluder will be part of a real-time generated signed distance field that can be used in custom shaders.

[Previous](class_lightmapprobe.md "LightmapProbe") [Next](class_line2d.md "Line2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_lightmapprobe.md "LightmapProbe") [Next](class_line2d.md "Line2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).