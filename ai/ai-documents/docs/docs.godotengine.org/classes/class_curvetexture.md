---
title: CurveTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_curvetexture.html
crawled_at: "2026-08-13T10:34:14+12:00"
content_hash: 7ddae70a98d764e472a814462304576ee89c07996c6cc36ec91c52519575abea
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CurveTexture

* * *

# CurveTexture

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 1D texture where pixel brightness corresponds to points on a curve.

## Description

A 1D texture where pixel brightness corresponds to points on a unit [Curve](class_curve.md#class-curve) resource, either in grayscale or in red. This visual representation simplifies the task of saving curves as image files.

If you need to store up to 3 curves within a single texture, use [CurveXYZTexture](class_curvexyztexture.md#class-curvexyztexture) instead. See also [GradientTexture1D](class_gradienttexture1d.md#class-gradienttexture1d) and [GradientTexture2D](class_gradienttexture2d.md#class-gradienttexture2d).

## Properties

|     |     |     |
| --- | --- | --- |
| [Curve](class_curve.md#class-curve) | [curve](#class-curvetexture-property-curve) |  |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [TextureMode](#enum-curvetexture-texturemode) | [texture\_mode](#class-curvetexture-property-texture-mode) | `0` |
| [int](class_int.md#class-int) | [width](#class-curvetexture-property-width) | `256` |

* * *

## Enumerations

enum **TextureMode**: [🔗](#enum-curvetexture-texturemode)

[TextureMode](#enum-curvetexture-texturemode) **TEXTURE\_MODE\_RGB** = `0`

Store the curve equally across the red, green and blue channels. This uses more video memory, but is more compatible with shaders that only read the green and blue values.

[TextureMode](#enum-curvetexture-texturemode) **TEXTURE\_MODE\_RED** = `1`

Store the curve only in the red channel. This saves video memory, but some custom shaders may not be able to work with this.

* * *

## Property Descriptions

[Curve](class_curve.md#class-curve) **curve** [🔗](#class-curvetexture-property-curve)

- void **set\_curve**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_curve**()


The [Curve](class_curve.md#class-curve) that is rendered onto the texture. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[TextureMode](#enum-curvetexture-texturemode) **texture\_mode** = `0` [🔗](#class-curvetexture-property-texture-mode)

- void **set\_texture\_mode**(value: [TextureMode](#enum-curvetexture-texturemode))

- [TextureMode](#enum-curvetexture-texturemode) **get\_texture\_mode**()


The format the texture should be generated with. When passing a CurveTexture as an input to a [Shader](class_shader.md#class-shader), this may need to be adjusted.

* * *

[int](class_int.md#class-int) **width** = `256` [🔗](#class-curvetexture-property-width)

- void **set\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_width**()


The width of the texture (in pixels). Higher values make it possible to represent high-frequency data better (such as sudden direction changes), at the cost of increased generation time and memory usage.

[Previous](class_curve3d.md "Curve3D") [Next](class_curvexyztexture.md "CurveXYZTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_curve3d.md "Curve3D") [Next](class_curvexyztexture.md "CurveXYZTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).