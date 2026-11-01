---
title: LabelSettings — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_labelsettings.html
crawled_at: "2026-08-13T10:40:56+12:00"
content_hash: 3618ad883e00c47e5fdcb4c1b67c937dd5df59990366c580c317b006fa36a9b6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - LabelSettings

* * *

# LabelSettings

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides common settings to customize the text in a [Label](class_label.md#class-label).

## Description

**LabelSettings** is a resource that provides common settings to customize the text in a [Label](class_label.md#class-label). It will take priority over the properties defined in [Control.theme](class_control.md#class-control-property-theme). The resource can be shared between multiple labels and changed on the fly, so it's convenient and flexible way to setup text style.

## Properties

|     |     |     |
| --- | --- | --- |
| [Font](class_font.md#class-font) | [font](#class-labelsettings-property-font) |  |
| [Color](class_color.md#class-color) | [font\_color](#class-labelsettings-property-font-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [font\_size](#class-labelsettings-property-font-size) | `16` |
| [float](class_float.md#class-float) | [line\_spacing](#class-labelsettings-property-line-spacing) | `3.0` |
| [Color](class_color.md#class-color) | [outline\_color](#class-labelsettings-property-outline-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [outline\_size](#class-labelsettings-property-outline-size) | `0` |
| [float](class_float.md#class-float) | [paragraph\_spacing](#class-labelsettings-property-paragraph-spacing) | `0.0` |
| [Color](class_color.md#class-color) | [shadow\_color](#class-labelsettings-property-shadow-color) | `Color(0, 0, 0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [shadow\_offset](#class-labelsettings-property-shadow-offset) | `Vector2(1, 1)` |
| [int](class_int.md#class-int) | [shadow\_size](#class-labelsettings-property-shadow-size) | `1` |
| [int](class_int.md#class-int) | [stacked\_outline\_count](#class-labelsettings-property-stacked-outline-count) | `0` |
| [int](class_int.md#class-int) | [stacked\_shadow\_count](#class-labelsettings-property-stacked-shadow-count) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_stacked\_outline](#class-labelsettings-method-add-stacked-outline)(index: [int](class_int.md#class-int) = -1) |
| void | [add\_stacked\_shadow](#class-labelsettings-method-add-stacked-shadow)(index: [int](class_int.md#class-int) = -1) |
| [Color](class_color.md#class-color) | [get\_stacked\_outline\_color](#class-labelsettings-method-get-stacked-outline-color)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_stacked\_outline\_size](#class-labelsettings-method-get-stacked-outline-size)(index: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_stacked\_shadow\_color](#class-labelsettings-method-get-stacked-shadow-color)(index: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_stacked\_shadow\_offset](#class-labelsettings-method-get-stacked-shadow-offset)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_stacked\_shadow\_outline\_size](#class-labelsettings-method-get-stacked-shadow-outline-size)(index: [int](class_int.md#class-int)) const |
| void | [move\_stacked\_outline](#class-labelsettings-method-move-stacked-outline)(from\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) |
| void | [move\_stacked\_shadow](#class-labelsettings-method-move-stacked-shadow)(from\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) |
| void | [remove\_stacked\_outline](#class-labelsettings-method-remove-stacked-outline)(index: [int](class_int.md#class-int)) |
| void | [remove\_stacked\_shadow](#class-labelsettings-method-remove-stacked-shadow)(index: [int](class_int.md#class-int)) |
| void | [set\_stacked\_outline\_color](#class-labelsettings-method-set-stacked-outline-color)(index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_stacked\_outline\_size](#class-labelsettings-method-set-stacked-outline-size)(index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) |
| void | [set\_stacked\_shadow\_color](#class-labelsettings-method-set-stacked-shadow-color)(index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_stacked\_shadow\_offset](#class-labelsettings-method-set-stacked-shadow-offset)(index: [int](class_int.md#class-int), offset: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_stacked\_shadow\_outline\_size](#class-labelsettings-method-set-stacked-shadow-outline-size)(index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) |

* * *

## Property Descriptions

[Font](class_font.md#class-font) **font** [🔗](#class-labelsettings-property-font)

- void **set\_font**(value: [Font](class_font.md#class-font))

- [Font](class_font.md#class-font) **get\_font**()


[Font](class_font.md#class-font) used for the text.

* * *

[Color](class_color.md#class-color) **font\_color** = `Color(1, 1, 1, 1)` [🔗](#class-labelsettings-property-font-color)

- void **set\_font\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_font\_color**()


Color of the text.

* * *

[int](class_int.md#class-int) **font\_size** = `16` [🔗](#class-labelsettings-property-font-size)

- void **set\_font\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_font\_size**()


Size of the text.

* * *

[float](class_float.md#class-float) **line\_spacing** = `3.0` [🔗](#class-labelsettings-property-line-spacing)

- void **set\_line\_spacing**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_line\_spacing**()


Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

* * *

[Color](class_color.md#class-color) **outline\_color** = `Color(1, 1, 1, 1)` [🔗](#class-labelsettings-property-outline-color)

- void **set\_outline\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_outline\_color**()


The color of the outline.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-labelsettings-property-outline-size)

- void **set\_outline\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_outline\_size**()


Text outline size.

* * *

[float](class_float.md#class-float) **paragraph\_spacing** = `0.0` [🔗](#class-labelsettings-property-paragraph-spacing)

- void **set\_paragraph\_spacing**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_paragraph\_spacing**()


Vertical space between paragraphs. Added on top of [line\_spacing](#class-labelsettings-property-line-spacing).

* * *

[Color](class_color.md#class-color) **shadow\_color** = `Color(0, 0, 0, 0)` [🔗](#class-labelsettings-property-shadow-color)

- void **set\_shadow\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_shadow\_color**()


Color of the shadow effect. If alpha is `0`, no shadow will be drawn.

* * *

[Vector2](class_vector2.md#class-vector2) **shadow\_offset** = `Vector2(1, 1)` [🔗](#class-labelsettings-property-shadow-offset)

- void **set\_shadow\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_shadow\_offset**()


Offset of the shadow effect, in pixels.

* * *

[int](class_int.md#class-int) **shadow\_size** = `1` [🔗](#class-labelsettings-property-shadow-size)

- void **set\_shadow\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_shadow\_size**()


Size of the shadow effect.

* * *

[int](class_int.md#class-int) **stacked\_outline\_count** = `0` [🔗](#class-labelsettings-property-stacked-outline-count)

- void **set\_stacked\_outline\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stacked\_outline\_count**()


The number of stacked outlines.

* * *

[int](class_int.md#class-int) **stacked\_shadow\_count** = `0` [🔗](#class-labelsettings-property-stacked-shadow-count)

- void **set\_stacked\_shadow\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stacked\_shadow\_count**()


The number of stacked shadows.

* * *

## Method Descriptions

void **add\_stacked\_outline**(index: [int](class_int.md#class-int) = -1) [🔗](#class-labelsettings-method-add-stacked-outline)

Adds a new stacked outline to the label at the given `index`. If `index` is `-1`, the new stacked outline will be added at the end of the list.

* * *

void **add\_stacked\_shadow**(index: [int](class_int.md#class-int) = -1) [🔗](#class-labelsettings-method-add-stacked-shadow)

Adds a new stacked shadow to the label at the given `index`. If `index` is `-1`, the new stacked shadow will be added at the end of the list.

* * *

[Color](class_color.md#class-color) **get\_stacked\_outline\_color**(index: [int](class_int.md#class-int)) const [🔗](#class-labelsettings-method-get-stacked-outline-color)

Returns the color of the stacked outline at `index`.

* * *

[int](class_int.md#class-int) **get\_stacked\_outline\_size**(index: [int](class_int.md#class-int)) const [🔗](#class-labelsettings-method-get-stacked-outline-size)

Returns the size of the stacked outline at `index`.

* * *

[Color](class_color.md#class-color) **get\_stacked\_shadow\_color**(index: [int](class_int.md#class-int)) const [🔗](#class-labelsettings-method-get-stacked-shadow-color)

Returns the color of the stacked shadow at `index`.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_stacked\_shadow\_offset**(index: [int](class_int.md#class-int)) const [🔗](#class-labelsettings-method-get-stacked-shadow-offset)

Returns the offset of the stacked shadow at `index`.

* * *

[int](class_int.md#class-int) **get\_stacked\_shadow\_outline\_size**(index: [int](class_int.md#class-int)) const [🔗](#class-labelsettings-method-get-stacked-shadow-outline-size)

Returns the outline size of the stacked shadow at `index`.

* * *

void **move\_stacked\_outline**(from\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) [🔗](#class-labelsettings-method-move-stacked-outline)

Moves the stacked outline at index `from_index` to the given position `to_position` in the array.

* * *

void **move\_stacked\_shadow**(from\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) [🔗](#class-labelsettings-method-move-stacked-shadow)

Moves the stacked shadow at index `from_index` to the given position `to_position` in the array.

* * *

void **remove\_stacked\_outline**(index: [int](class_int.md#class-int)) [🔗](#class-labelsettings-method-remove-stacked-outline)

Removes the stacked outline at index `index`.

* * *

void **remove\_stacked\_shadow**(index: [int](class_int.md#class-int)) [🔗](#class-labelsettings-method-remove-stacked-shadow)

Removes the stacked shadow at index `index`.

* * *

void **set\_stacked\_outline\_color**(index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-labelsettings-method-set-stacked-outline-color)

Sets the color of the stacked outline identified by the given `index` to `color`.

* * *

void **set\_stacked\_outline\_size**(index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) [🔗](#class-labelsettings-method-set-stacked-outline-size)

Sets the size of the stacked outline identified by the given `index` to `size`.

* * *

void **set\_stacked\_shadow\_color**(index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-labelsettings-method-set-stacked-shadow-color)

Sets the color of the stacked shadow identified by the given `index` to `color`.

* * *

void **set\_stacked\_shadow\_offset**(index: [int](class_int.md#class-int), offset: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-labelsettings-method-set-stacked-shadow-offset)

Sets the offset of the stacked shadow identified by the given `index` to `offset`.

* * *

void **set\_stacked\_shadow\_outline\_size**(index: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) [🔗](#class-labelsettings-method-set-stacked-shadow-outline-size)

Sets the outline size of the stacked shadow identified by the given `index` to `size`.

[Previous](class_json.md "JSON") [Next](class_lightmapgidata.md "LightmapGIData")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_json.md "JSON") [Next](class_lightmapgidata.md "LightmapGIData")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).