---
title: CurveXYZTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_curvexyztexture.html
crawled_at: "2026-08-13T10:41:44+12:00"
content_hash: 5fa6819896a51e2e911fbb1d950fadb5f10ce3b1aed9ca7c21a2d6a084cf8455
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CurveXYZTexture

* * *

# CurveXYZTexture

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 1D texture where the red, green, and blue color channels correspond to points on 3 curves.

## Description

A 1D texture where the red, green, and blue color channels correspond to points on 3 unit [Curve](class_curve.md#class-curve) resources. Compared to using separate [CurveTexture](class_curvetexture.md#class-curvetexture) s, this further simplifies the task of saving curves as image files.

If you only need to store one curve within a single texture, use [CurveTexture](class_curvetexture.md#class-curvetexture) instead. See also [GradientTexture1D](class_gradienttexture1d.md#class-gradienttexture1d) and [GradientTexture2D](class_gradienttexture2d.md#class-gradienttexture2d).

## Properties

|     |     |     |
| --- | --- | --- |
| [Curve](class_curve.md#class-curve) | [curve\_x](#class-curvexyztexture-property-curve-x) |  |
| [Curve](class_curve.md#class-curve) | [curve\_y](#class-curvexyztexture-property-curve-y) |  |
| [Curve](class_curve.md#class-curve) | [curve\_z](#class-curvexyztexture-property-curve-z) |  |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [int](class_int.md#class-int) | [width](#class-curvexyztexture-property-width) | `256` |

* * *

## Property Descriptions

[Curve](class_curve.md#class-curve) **curve\_x** [🔗](#class-curvexyztexture-property-curve-x)

- void **set\_curve\_x**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_curve\_x**()


The [Curve](class_curve.md#class-curve) that is rendered onto the texture's red channel. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[Curve](class_curve.md#class-curve) **curve\_y** [🔗](#class-curvexyztexture-property-curve-y)

- void **set\_curve\_y**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_curve\_y**()


The [Curve](class_curve.md#class-curve) that is rendered onto the texture's green channel. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[Curve](class_curve.md#class-curve) **curve\_z** [🔗](#class-curvexyztexture-property-curve-z)

- void **set\_curve\_z**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_curve\_z**()


The [Curve](class_curve.md#class-curve) that is rendered onto the texture's blue channel. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[int](class_int.md#class-int) **width** = `256` [🔗](#class-curvexyztexture-property-width)

- void **set\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_width**()


The width of the texture (in pixels). Higher values make it possible to represent high-frequency data better (such as sudden direction changes), at the cost of increased generation time and memory usage.

[Previous](class_curvetexture.md "CurveTexture") [Next](class_cylindermesh.md "CylinderMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_curvetexture.md "CurveTexture") [Next](class_cylindermesh.md "CylinderMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).