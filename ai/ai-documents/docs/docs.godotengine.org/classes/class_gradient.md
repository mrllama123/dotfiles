---
title: Gradient — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gradient.html
crawled_at: "2026-08-13T10:20:11+12:00"
content_hash: e866630acbb543c51add755f2724870ce9527a59b1c9b7db1409d7311bfb1b9f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Gradient

* * *

# Gradient

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A color transition.

## Description

This resource describes a color transition by defining a set of colored points and how to interpolate between them.

See also [Curve](class_curve.md#class-curve) which supports more complex easing methods, but does not support colors.

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [colors](#class-gradient-property-colors) | `PackedColorArray(0, 0, 0, 1, 1, 1, 1, 1)` |
| [ColorSpace](#enum-gradient-colorspace) | [interpolation\_color\_space](#class-gradient-property-interpolation-color-space) | `0` |
| [InterpolationMode](#enum-gradient-interpolationmode) | [interpolation\_mode](#class-gradient-property-interpolation-mode) | `0` |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [offsets](#class-gradient-property-offsets) | `PackedFloat32Array(0, 1)` |

## Methods

|     |     |
| --- | --- |
| void | [add\_point](#class-gradient-method-add-point)(offset: [float](class_float.md#class-float), color: [Color](class_color.md#class-color)) |
| [Color](class_color.md#class-color) | [get\_color](#class-gradient-method-get-color)(point: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [get\_offset](#class-gradient-method-get-offset)(point: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_point\_count](#class-gradient-method-get-point-count)() const |
| void | [remove\_point](#class-gradient-method-remove-point)(point: [int](class_int.md#class-int)) |
| void | [reverse](#class-gradient-method-reverse)() |
| [Color](class_color.md#class-color) | [sample](#class-gradient-method-sample)(offset: [float](class_float.md#class-float)) |
| void | [set\_color](#class-gradient-method-set-color)(point: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_offset](#class-gradient-method-set-offset)(point: [int](class_int.md#class-int), offset: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **InterpolationMode**: [🔗](#enum-gradient-interpolationmode)

[InterpolationMode](#enum-gradient-interpolationmode) **GRADIENT\_INTERPOLATE\_LINEAR** = `0`

Linear interpolation.

[InterpolationMode](#enum-gradient-interpolationmode) **GRADIENT\_INTERPOLATE\_CONSTANT** = `1`

Constant interpolation, color changes abruptly at each point and stays uniform between. This might cause visible aliasing when used for a gradient texture in some cases.

[InterpolationMode](#enum-gradient-interpolationmode) **GRADIENT\_INTERPOLATE\_CUBIC** = `2`

Cubic interpolation.

* * *

enum **ColorSpace**: [🔗](#enum-gradient-colorspace)

[ColorSpace](#enum-gradient-colorspace) **GRADIENT\_COLOR\_SPACE\_SRGB** = `0`

sRGB color space.

[ColorSpace](#enum-gradient-colorspace) **GRADIENT\_COLOR\_SPACE\_LINEAR\_SRGB** = `1`

Linear sRGB color space.

[ColorSpace](#enum-gradient-colorspace) **GRADIENT\_COLOR\_SPACE\_OKLAB** = `2`

[Oklab](https://bottosson.github.io/posts/oklab/) color space. This color space provides a smooth and uniform-looking transition between colors.

* * *

## Property Descriptions

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **colors** = `PackedColorArray(0, 0, 0, 1, 1, 1, 1, 1)` [🔗](#class-gradient-property-colors)

- void **set\_colors**(value: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray))

- [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **get\_colors**()


Gradient's colors as a [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray).

**Note:** Setting this property updates all colors at once. To update any color individually use [set\_color()](#class-gradient-method-set-color).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) for more details.

* * *

[ColorSpace](#enum-gradient-colorspace) **interpolation\_color\_space** = `0` [🔗](#class-gradient-property-interpolation-color-space)

- void **set\_interpolation\_color\_space**(value: [ColorSpace](#enum-gradient-colorspace))

- [ColorSpace](#enum-gradient-colorspace) **get\_interpolation\_color\_space**()


The color space used to interpolate between points of the gradient. It does not affect the returned colors, which will always be in sRGB space.

**Note:** This setting has no effect when [interpolation\_mode](#class-gradient-property-interpolation-mode) is set to [GRADIENT\_INTERPOLATE\_CONSTANT](#class-gradient-constant-gradient-interpolate-constant).

* * *

[InterpolationMode](#enum-gradient-interpolationmode) **interpolation\_mode** = `0` [🔗](#class-gradient-property-interpolation-mode)

- void **set\_interpolation\_mode**(value: [InterpolationMode](#enum-gradient-interpolationmode))

- [InterpolationMode](#enum-gradient-interpolationmode) **get\_interpolation\_mode**()


The algorithm used to interpolate between points of the gradient.

* * *

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **offsets** = `PackedFloat32Array(0, 1)` [🔗](#class-gradient-property-offsets)

- void **set\_offsets**(value: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array))

- [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_offsets**()


Gradient's offsets as a [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array).

**Note:** Setting this property updates all offsets at once. To update any offset individually use [set\_offset()](#class-gradient-method-set-offset).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) for more details.

* * *

## Method Descriptions

void **add\_point**(offset: [float](class_float.md#class-float), color: [Color](class_color.md#class-color)) [🔗](#class-gradient-method-add-point)

Adds the specified color to the gradient, with the specified offset.

* * *

[Color](class_color.md#class-color) **get\_color**(point: [int](class_int.md#class-int)) [🔗](#class-gradient-method-get-color)

Returns the color of the gradient color at index `point`.

* * *

[float](class_float.md#class-float) **get\_offset**(point: [int](class_int.md#class-int)) [🔗](#class-gradient-method-get-offset)

Returns the offset of the gradient color at index `point`.

* * *

[int](class_int.md#class-int) **get\_point\_count**() const [🔗](#class-gradient-method-get-point-count)

Returns the number of colors in the gradient.

* * *

void **remove\_point**(point: [int](class_int.md#class-int)) [🔗](#class-gradient-method-remove-point)

Removes the color at index `point`.

* * *

void **reverse**() [🔗](#class-gradient-method-reverse)

Reverses/mirrors the gradient.

**Note:** This method mirrors all points around the middle of the gradient, which may produce unexpected results when [interpolation\_mode](#class-gradient-property-interpolation-mode) is set to [GRADIENT\_INTERPOLATE\_CONSTANT](#class-gradient-constant-gradient-interpolate-constant).

* * *

[Color](class_color.md#class-color) **sample**(offset: [float](class_float.md#class-float)) [🔗](#class-gradient-method-sample)

Returns the interpolated color specified by `offset`. `offset` should be between `0.0` and `1.0` (inclusive). Using a value lower than `0.0` will return the same color as `0.0`, and using a value higher than `1.0` will return the same color as `1.0`. If your input value is not within this range, consider using [@GlobalScope.remap()](class_@globalscope.md#class-globalscope-method-remap) on the input value with output values set to `0.0` and `1.0`.

* * *

void **set\_color**(point: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-gradient-method-set-color)

Sets the color of the gradient color at index `point`.

* * *

void **set\_offset**(point: [int](class_int.md#class-int), offset: [float](class_float.md#class-float)) [🔗](#class-gradient-method-set-offset)

Sets the offset for the gradient color at index `point`.

[Previous](class_gltftexturesampler.md "GLTFTextureSampler") [Next](class_gradienttexture1d.md "GradientTexture1D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltftexturesampler.md "GLTFTextureSampler") [Next](class_gradienttexture1d.md "GradientTexture1D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).