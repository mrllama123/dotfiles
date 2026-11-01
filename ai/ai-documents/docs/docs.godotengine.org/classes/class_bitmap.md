---
title: BitMap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_bitmap.html
crawled_at: "2026-08-13T10:38:19+12:00"
content_hash: 3b979310afde320d254760703944015188bdba27d90112d43400400e33398b8b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - BitMap

* * *

# BitMap

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Boolean matrix.

## Description

A two-dimensional array of boolean values, can be used to efficiently store a binary matrix (every matrix element takes only one bit) and query the values using natural cartesian coordinates.

## Methods

|     |     |
| --- | --- |
| [Image](class_image.md#class-image) | [convert\_to\_image](#class-bitmap-method-convert-to-image)() const |
| void | [create](#class-bitmap-method-create)(size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [create\_from\_image\_alpha](#class-bitmap-method-create-from-image-alpha)(image: [Image](class_image.md#class-image), threshold: [float](class_float.md#class-float) = 0.1) |
| [bool](class_bool.md#class-bool) | [get\_bit](#class-bitmap-method-get-bit)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_bitv](#class-bitmap-method-get-bitv)(position: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_size](#class-bitmap-method-get-size)() const |
| [int](class_int.md#class-int) | [get\_true\_bit\_count](#class-bitmap-method-get-true-bit-count)() const |
| void | [grow\_mask](#class-bitmap-method-grow-mask)(pixels: [int](class_int.md#class-int), rect: [Rect2i](class_rect2i.md#class-rect2i)) |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [opaque\_to\_polygons](#class-bitmap-method-opaque-to-polygons)(rect: [Rect2i](class_rect2i.md#class-rect2i), epsilon: [float](class_float.md#class-float) = 2.0) const |
| void | [resize](#class-bitmap-method-resize)(new\_size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [set\_bit](#class-bitmap-method-set-bit)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), bit: [bool](class_bool.md#class-bool)) |
| void | [set\_bit\_rect](#class-bitmap-method-set-bit-rect)(rect: [Rect2i](class_rect2i.md#class-rect2i), bit: [bool](class_bool.md#class-bool)) |
| void | [set\_bitv](#class-bitmap-method-set-bitv)(position: [Vector2i](class_vector2i.md#class-vector2i), bit: [bool](class_bool.md#class-bool)) |

* * *

## Method Descriptions

[Image](class_image.md#class-image) **convert\_to\_image**() const [🔗](#class-bitmap-method-convert-to-image)

Returns an image of the same size as the bitmap and with an [Format](class_image.md#enum-image-format) of type [Image.FORMAT\_L8](class_image.md#class-image-constant-format-l8). `true` bits of the bitmap are being converted into white pixels, and `false` bits into black.

* * *

void **create**(size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-bitmap-method-create)

Creates a bitmap with the specified size, filled with `false`.

* * *

void **create\_from\_image\_alpha**(image: [Image](class_image.md#class-image), threshold: [float](class_float.md#class-float) = 0.1) [🔗](#class-bitmap-method-create-from-image-alpha)

Creates a bitmap that matches the given image dimensions, every element of the bitmap is set to `false` if the alpha value of the image at that position is equal to `threshold` or less, and `true` in other case.

* * *

[bool](class_bool.md#class-bool) **get\_bit**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) const [🔗](#class-bitmap-method-get-bit)

Returns bitmap's value at the specified position.

* * *

[bool](class_bool.md#class-bool) **get\_bitv**(position: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-bitmap-method-get-bitv)

Returns bitmap's value at the specified position.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_size**() const [🔗](#class-bitmap-method-get-size)

Returns bitmap's dimensions.

* * *

[int](class_int.md#class-int) **get\_true\_bit\_count**() const [🔗](#class-bitmap-method-get-true-bit-count)

Returns the number of bitmap elements that are set to `true`.

* * *

void **grow\_mask**(pixels: [int](class_int.md#class-int), rect: [Rect2i](class_rect2i.md#class-rect2i)) [🔗](#class-bitmap-method-grow-mask)

Applies morphological dilation or erosion to the bitmap. If `pixels` is positive, dilation is applied to the bitmap. If `pixels` is negative, erosion is applied to the bitmap. `rect` defines the area where the morphological operation is applied. Pixels located outside the `rect` are unaffected by [grow\_mask()](#class-bitmap-method-grow-mask).

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **opaque\_to\_polygons**(rect: [Rect2i](class_rect2i.md#class-rect2i), epsilon: [float](class_float.md#class-float) = 2.0) const [🔗](#class-bitmap-method-opaque-to-polygons)

Creates an [Array](class_array.md#class-array) of polygons covering a rectangular portion of the bitmap. It uses a marching squares algorithm, followed by Ramer-Douglas-Peucker (RDP) reduction of the number of vertices. Each polygon is described as a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) of its vertices.

To get polygons covering the whole bitmap, pass:

```
Rect2(Vector2(), get_size())

```

`epsilon` is passed to RDP to control how accurately the polygons cover the bitmap: a lower `epsilon` corresponds to more points in the polygons.

* * *

void **resize**(new\_size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-bitmap-method-resize)

Resizes the image to `new_size`.

* * *

void **set\_bit**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), bit: [bool](class_bool.md#class-bool)) [🔗](#class-bitmap-method-set-bit)

Sets the bitmap's element at the specified position, to the specified value.

* * *

void **set\_bit\_rect**(rect: [Rect2i](class_rect2i.md#class-rect2i), bit: [bool](class_bool.md#class-bool)) [🔗](#class-bitmap-method-set-bit-rect)

Sets a rectangular portion of the bitmap to the specified value.

* * *

void **set\_bitv**(position: [Vector2i](class_vector2i.md#class-vector2i), bit: [bool](class_bool.md#class-bool)) [🔗](#class-bitmap-method-set-bitv)

Sets the bitmap's element at the specified position, to the specified value.

[Previous](class_basematerial3d.md "BaseMaterial3D") [Next](class_bonemap.md "BoneMap")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_basematerial3d.md "BaseMaterial3D") [Next](class_bonemap.md "BoneMap")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).