---
title: Noise — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_noise.html
crawled_at: "2026-08-13T10:36:41+12:00"
content_hash: 0200aacc22ab2b0d1c4236db2e9bacf6c752b2638ca5be9c1ae1eb38925c0c62
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Noise

* * *

# Noise

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [FastNoiseLite](class_fastnoiselite.md#class-fastnoiselite)

Abstract base class for noise generators.

## Description

This class defines the interface for noise generation libraries to inherit from.

A default [get\_seamless\_image()](#class-noise-method-get-seamless-image) implementation is provided for libraries that do not provide seamless noise. This function requests a larger image from the [get\_image()](#class-noise-method-get-image) method, reverses the quadrants of the image, then uses the strips of extra width to blend over the seams.

Inheriting noise classes can optionally override this function to provide a more optimal algorithm.

## Methods

|     |     |
| --- | --- |
| [Image](class_image.md#class-image) | [get\_image](#class-noise-method-get-image)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), invert: [bool](class_bool.md#class-bool) = false, in\_3d\_space: [bool](class_bool.md#class-bool) = false, normalize: [bool](class_bool.md#class-bool) = true) const |
| [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] | [get\_image\_3d](#class-noise-method-get-image-3d)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), invert: [bool](class_bool.md#class-bool) = false, normalize: [bool](class_bool.md#class-bool) = true) const |
| [float](class_float.md#class-float) | [get\_noise\_1d](#class-noise-method-get-noise-1d)(x: [float](class_float.md#class-float)) const |
| [float](class_float.md#class-float) | [get\_noise\_2d](#class-noise-method-get-noise-2d)(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float)) const |
| [float](class_float.md#class-float) | [get\_noise\_2dv](#class-noise-method-get-noise-2dv)(v: [Vector2](class_vector2.md#class-vector2)) const |
| [float](class_float.md#class-float) | [get\_noise\_3d](#class-noise-method-get-noise-3d)(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float), z: [float](class_float.md#class-float)) const |
| [float](class_float.md#class-float) | [get\_noise\_3dv](#class-noise-method-get-noise-3dv)(v: [Vector3](class_vector3.md#class-vector3)) const |
| [Image](class_image.md#class-image) | [get\_seamless\_image](#class-noise-method-get-seamless-image)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), invert: [bool](class_bool.md#class-bool) = false, in\_3d\_space: [bool](class_bool.md#class-bool) = false, skirt: [float](class_float.md#class-float) = 0.1, normalize: [bool](class_bool.md#class-bool) = true) const |
| [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] | [get\_seamless\_image\_3d](#class-noise-method-get-seamless-image-3d)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), invert: [bool](class_bool.md#class-bool) = false, skirt: [float](class_float.md#class-float) = 0.1, normalize: [bool](class_bool.md#class-bool) = true) const |

* * *

## Method Descriptions

[Image](class_image.md#class-image) **get\_image**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), invert: [bool](class_bool.md#class-bool) = false, in\_3d\_space: [bool](class_bool.md#class-bool) = false, normalize: [bool](class_bool.md#class-bool) = true) const [🔗](#class-noise-method-get-image)

Returns an [Image](class_image.md#class-image) containing 2D noise values.

**Note:** With `normalize` set to `false`, the default implementation expects the noise generator to return values in the range `-1.0` to `1.0`.

* * *

[Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] **get\_image\_3d**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), invert: [bool](class_bool.md#class-bool) = false, normalize: [bool](class_bool.md#class-bool) = true) const [🔗](#class-noise-method-get-image-3d)

Returns an [Array](class_array.md#class-array) of [Image](class_image.md#class-image) s containing 3D noise values for use with [ImageTexture3D.create()](class_imagetexture3d.md#class-imagetexture3d-method-create).

**Note:** With `normalize` set to `false`, the default implementation expects the noise generator to return values in the range `-1.0` to `1.0`.

* * *

[float](class_float.md#class-float) **get\_noise\_1d**(x: [float](class_float.md#class-float)) const [🔗](#class-noise-method-get-noise-1d)

Returns the 1D noise value at the given (x) coordinate.

* * *

[float](class_float.md#class-float) **get\_noise\_2d**(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float)) const [🔗](#class-noise-method-get-noise-2d)

Returns the 2D noise value at the given position.

* * *

[float](class_float.md#class-float) **get\_noise\_2dv**(v: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-noise-method-get-noise-2dv)

Returns the 2D noise value at the given position.

* * *

[float](class_float.md#class-float) **get\_noise\_3d**(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float), z: [float](class_float.md#class-float)) const [🔗](#class-noise-method-get-noise-3d)

Returns the 3D noise value at the given position.

* * *

[float](class_float.md#class-float) **get\_noise\_3dv**(v: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-noise-method-get-noise-3dv)

Returns the 3D noise value at the given position.

* * *

[Image](class_image.md#class-image) **get\_seamless\_image**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), invert: [bool](class_bool.md#class-bool) = false, in\_3d\_space: [bool](class_bool.md#class-bool) = false, skirt: [float](class_float.md#class-float) = 0.1, normalize: [bool](class_bool.md#class-bool) = true) const [🔗](#class-noise-method-get-seamless-image)

Returns an [Image](class_image.md#class-image) containing seamless 2D noise values.

**Note:** With `normalize` set to `false`, the default implementation expects the noise generator to return values in the range `-1.0` to `1.0`.

* * *

[Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] **get\_seamless\_image\_3d**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), invert: [bool](class_bool.md#class-bool) = false, skirt: [float](class_float.md#class-float) = 0.1, normalize: [bool](class_bool.md#class-bool) = true) const [🔗](#class-noise-method-get-seamless-image-3d)

Returns an [Array](class_array.md#class-array) of [Image](class_image.md#class-image) s containing seamless 3D noise values for use with [ImageTexture3D.create()](class_imagetexture3d.md#class-imagetexture3d-method-create).

**Note:** With `normalize` set to `false`, the default implementation expects the noise generator to return values in the range `-1.0` to `1.0`.

[Previous](class_navigationpolygon.md "NavigationPolygon") [Next](class_noisetexture2d.md "NoiseTexture2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationpolygon.md "NavigationPolygon") [Next](class_noisetexture2d.md "NoiseTexture2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).