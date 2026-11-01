---
title: GradientTexture2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gradienttexture2d.html
crawled_at: "2026-08-13T10:18:41+12:00"
content_hash: b62f9ed3a3527ac7cf5a5de9b666078a45b09a4fdee0a1190ab6e4e6c595f2ab
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GradientTexture2D

* * *

# GradientTexture2D

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 2D texture that creates a pattern with colors obtained from a [Gradient](class_gradient.md#class-gradient).

## Description

A 2D texture that obtains colors from a [Gradient](class_gradient.md#class-gradient) to fill the texture data. This texture is able to transform a color transition into different patterns such as a linear or a radial gradient. The texture is filled by interpolating colors starting from [fill\_from](#class-gradienttexture2d-property-fill-from) to [fill\_to](#class-gradienttexture2d-property-fill-to) offsets by default, but the gradient fill can be repeated to cover the entire texture.

The gradient is sampled individually for each pixel so it does not necessarily represent an exact copy of the gradient (see [width](#class-gradienttexture2d-property-width) and [height](#class-gradienttexture2d-property-height)). See also [GradientTexture1D](class_gradienttexture1d.md#class-gradienttexture1d), [CurveTexture](class_curvetexture.md#class-curvetexture) and [CurveXYZTexture](class_curvexyztexture.md#class-curvexyztexture).

## Properties

|     |     |     |
| --- | --- | --- |
| [Fill](#enum-gradienttexture2d-fill) | [fill](#class-gradienttexture2d-property-fill) | `0` |
| [Vector2](class_vector2.md#class-vector2) | [fill\_from](#class-gradienttexture2d-property-fill-from) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [fill\_to](#class-gradienttexture2d-property-fill-to) | `Vector2(1, 0)` |
| [Gradient](class_gradient.md#class-gradient) | [gradient](#class-gradienttexture2d-property-gradient) |  |
| [int](class_int.md#class-int) | [height](#class-gradienttexture2d-property-height) | `64` |
| [Repeat](#enum-gradienttexture2d-repeat) | [repeat](#class-gradienttexture2d-property-repeat) | `0` |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [bool](class_bool.md#class-bool) | [use\_hdr](#class-gradienttexture2d-property-use-hdr) | `false` |
| [int](class_int.md#class-int) | [width](#class-gradienttexture2d-property-width) | `64` |

* * *

## Enumerations

enum **Fill**: [🔗](#enum-gradienttexture2d-fill)

[Fill](#enum-gradienttexture2d-fill) **FILL\_LINEAR** = `0`

The colors are linearly interpolated in a straight line.

[Fill](#enum-gradienttexture2d-fill) **FILL\_RADIAL** = `1`

The colors are linearly interpolated in a circular pattern.

[Fill](#enum-gradienttexture2d-fill) **FILL\_SQUARE** = `2`

The colors are linearly interpolated in a square pattern.

* * *

enum **Repeat**: [🔗](#enum-gradienttexture2d-repeat)

[Repeat](#enum-gradienttexture2d-repeat) **REPEAT\_NONE** = `0`

The gradient fill is restricted to the range defined by [fill\_from](#class-gradienttexture2d-property-fill-from) to [fill\_to](#class-gradienttexture2d-property-fill-to) offsets.

[Repeat](#enum-gradienttexture2d-repeat) **REPEAT** = `1`

The texture is filled starting from [fill\_from](#class-gradienttexture2d-property-fill-from) to [fill\_to](#class-gradienttexture2d-property-fill-to) offsets, repeating the same pattern in both directions.

[Repeat](#enum-gradienttexture2d-repeat) **REPEAT\_MIRROR** = `2`

The texture is filled starting from [fill\_from](#class-gradienttexture2d-property-fill-from) to [fill\_to](#class-gradienttexture2d-property-fill-to) offsets, mirroring the pattern in both directions.

* * *

## Property Descriptions

[Fill](#enum-gradienttexture2d-fill) **fill** = `0` [🔗](#class-gradienttexture2d-property-fill)

- void **set\_fill**(value: [Fill](#enum-gradienttexture2d-fill))

- [Fill](#enum-gradienttexture2d-fill) **get\_fill**()


The gradient's fill type.

* * *

[Vector2](class_vector2.md#class-vector2) **fill\_from** = `Vector2(0, 0)` [🔗](#class-gradienttexture2d-property-fill-from)

- void **set\_fill\_from**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_fill\_from**()


The initial offset used to fill the texture specified in UV coordinates.

* * *

[Vector2](class_vector2.md#class-vector2) **fill\_to** = `Vector2(1, 0)` [🔗](#class-gradienttexture2d-property-fill-to)

- void **set\_fill\_to**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_fill\_to**()


The final offset used to fill the texture specified in UV coordinates.

* * *

[Gradient](class_gradient.md#class-gradient) **gradient** [🔗](#class-gradienttexture2d-property-gradient)

- void **set\_gradient**(value: [Gradient](class_gradient.md#class-gradient))

- [Gradient](class_gradient.md#class-gradient) **get\_gradient**()


The [Gradient](class_gradient.md#class-gradient) used to fill the texture.

* * *

[int](class_int.md#class-int) **height** = `64` [🔗](#class-gradienttexture2d-property-height)

- void **set\_height**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_height**()


The number of vertical color samples that will be obtained from the [Gradient](class_gradient.md#class-gradient), which also represents the texture's height.

* * *

[Repeat](#enum-gradienttexture2d-repeat) **repeat** = `0` [🔗](#class-gradienttexture2d-property-repeat)

- void **set\_repeat**(value: [Repeat](#enum-gradienttexture2d-repeat))

- [Repeat](#enum-gradienttexture2d-repeat) **get\_repeat**()


The gradient's repeat type.

* * *

[bool](class_bool.md#class-bool) **use\_hdr** = `false` [🔗](#class-gradienttexture2d-property-use-hdr)

- void **set\_use\_hdr**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_hdr**()


If `true`, the generated texture will support high dynamic range ( [Image.FORMAT\_RGBAF](class_image.md#class-image-constant-format-rgbaf) format). This allows for glow effects to work if [Environment.glow\_enabled](class_environment.md#class-environment-property-glow-enabled) is `true`. If `false`, the generated texture will use low dynamic range; overbright colors will be clamped ( [Image.FORMAT\_RGBA8](class_image.md#class-image-constant-format-rgba8) format).

* * *

[int](class_int.md#class-int) **width** = `64` [🔗](#class-gradienttexture2d-property-width)

- void **set\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_width**()


The number of horizontal color samples that will be obtained from the [Gradient](class_gradient.md#class-gradient), which also represents the texture's width.

[Previous](class_gradienttexture1d.md "GradientTexture1D") [Next](class_heightmapshape3d.md "HeightMapShape3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gradienttexture1d.md "GradientTexture1D") [Next](class_heightmapshape3d.md "HeightMapShape3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).