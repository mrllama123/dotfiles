---
title: GradientTexture1D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gradienttexture1d.html
crawled_at: "2026-08-13T10:30:33+12:00"
content_hash: 2d528801023d6f1a32f7d5789fdfbfeb764e755b0359dc280770622217ffcf5a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GradientTexture1D

* * *

# GradientTexture1D

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 1D texture that uses colors obtained from a [Gradient](class_gradient.md#class-gradient).

## Description

A 1D texture that obtains colors from a [Gradient](class_gradient.md#class-gradient) to fill the texture data. The texture is filled by sampling the gradient for each pixel. Therefore, the texture does not necessarily represent an exact copy of the gradient, as it may miss some colors if there are not enough pixels. See also [GradientTexture2D](class_gradienttexture2d.md#class-gradienttexture2d), [CurveTexture](class_curvetexture.md#class-curvetexture) and [CurveXYZTexture](class_curvexyztexture.md#class-curvexyztexture).

## Properties

|     |     |     |
| --- | --- | --- |
| [Gradient](class_gradient.md#class-gradient) | [gradient](#class-gradienttexture1d-property-gradient) |  |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [bool](class_bool.md#class-bool) | [use\_hdr](#class-gradienttexture1d-property-use-hdr) | `false` |
| [int](class_int.md#class-int) | [width](#class-gradienttexture1d-property-width) | `256` |

* * *

## Property Descriptions

[Gradient](class_gradient.md#class-gradient) **gradient** [🔗](#class-gradienttexture1d-property-gradient)

- void **set\_gradient**(value: [Gradient](class_gradient.md#class-gradient))

- [Gradient](class_gradient.md#class-gradient) **get\_gradient**()


The [Gradient](class_gradient.md#class-gradient) used to fill the texture.

* * *

[bool](class_bool.md#class-bool) **use\_hdr** = `false` [🔗](#class-gradienttexture1d-property-use-hdr)

- void **set\_use\_hdr**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_hdr**()


If `true`, the generated texture will support high dynamic range ( [Image.FORMAT\_RGBAF](class_image.md#class-image-constant-format-rgbaf) format). This allows for glow effects to work if [Environment.glow\_enabled](class_environment.md#class-environment-property-glow-enabled) is `true`. If `false`, the generated texture will use low dynamic range; overbright colors will be clamped ( [Image.FORMAT\_RGBA8](class_image.md#class-image-constant-format-rgba8) format).

* * *

[int](class_int.md#class-int) **width** = `256` [🔗](#class-gradienttexture1d-property-width)

- void **set\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_width**()


The number of color samples that will be obtained from the [Gradient](class_gradient.md#class-gradient).

[Previous](class_gradient.md "Gradient") [Next](class_gradienttexture2d.md "GradientTexture2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gradient.md "Gradient") [Next](class_gradienttexture2d.md "GradientTexture2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).