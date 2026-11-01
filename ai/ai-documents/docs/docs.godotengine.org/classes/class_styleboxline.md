---
title: StyleBoxLine — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_styleboxline.html
crawled_at: "2026-08-13T10:39:55+12:00"
content_hash: d98b36c85cdd7740ee1f19368889939e1f4590bd7ba28fd03d08dba833672b2d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StyleBoxLine

* * *

# StyleBoxLine

**Inherits:** [StyleBox](class_stylebox.md#class-stylebox) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [StyleBox](class_stylebox.md#class-stylebox) that displays a single line of a given color and thickness.

## Description

A [StyleBox](class_stylebox.md#class-stylebox) that displays a single line of a given color and thickness. The line can be either horizontal or vertical. Useful for separators.

## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [color](#class-styleboxline-property-color) | `Color(0, 0, 0, 1)` |
| [float](class_float.md#class-float) | [grow\_begin](#class-styleboxline-property-grow-begin) | `1.0` |
| [float](class_float.md#class-float) | [grow\_end](#class-styleboxline-property-grow-end) | `1.0` |
| [int](class_int.md#class-int) | [thickness](#class-styleboxline-property-thickness) | `1` |
| [bool](class_bool.md#class-bool) | [vertical](#class-styleboxline-property-vertical) | `false` |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **color** = `Color(0, 0, 0, 1)` [🔗](#class-styleboxline-property-color)

- void **set\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_color**()


The line's color.

* * *

[float](class_float.md#class-float) **grow\_begin** = `1.0` [🔗](#class-styleboxline-property-grow-begin)

- void **set\_grow\_begin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_grow\_begin**()


The number of pixels the line will extend before the **StyleBoxLine**'s bounds. If set to a negative value, the line will begin inside the **StyleBoxLine**'s bounds.

* * *

[float](class_float.md#class-float) **grow\_end** = `1.0` [🔗](#class-styleboxline-property-grow-end)

- void **set\_grow\_end**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_grow\_end**()


The number of pixels the line will extend past the **StyleBoxLine**'s bounds. If set to a negative value, the line will end inside the **StyleBoxLine**'s bounds.

* * *

[int](class_int.md#class-int) **thickness** = `1` [🔗](#class-styleboxline-property-thickness)

- void **set\_thickness**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_thickness**()


The line's thickness in pixels.

* * *

[bool](class_bool.md#class-bool) **vertical** = `false` [🔗](#class-styleboxline-property-vertical)

- void **set\_vertical**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_vertical**()


If `true`, the line will be vertical. If `false`, the line will be horizontal.

[Previous](class_styleboxflat.md "StyleBoxFlat") [Next](class_styleboxtexture.md "StyleBoxTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_styleboxflat.md "StyleBoxFlat") [Next](class_styleboxtexture.md "StyleBoxTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).