---
title: VisualShaderNodeColorFunc — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodecolorfunc.html
crawled_at: "2026-08-13T10:28:11+12:00"
content_hash: 8884734e3eef3e5f8ca5be2e490c22cb59a75f6dd4ceb6a8e8a731f6c0331fe2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeColorFunc

* * *

# VisualShaderNodeColorFunc

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Color](class_color.md#class-color) function to be used within the visual shader graph.

## Description

Accept a [Color](class_color.md#class-color) to the input port and transform it according to [function](#class-visualshadernodecolorfunc-property-function).

## Properties

|     |     |     |
| --- | --- | --- |
| [Function](#enum-visualshadernodecolorfunc-function) | [function](#class-visualshadernodecolorfunc-property-function) | `0` |

* * *

## Enumerations

enum **Function**: [🔗](#enum-visualshadernodecolorfunc-function)

[Function](#enum-visualshadernodecolorfunc-function) **FUNC\_GRAYSCALE** = `0`

Converts the color to grayscale using the following formula:

```
vec3 c = input;
float max1 = max(c.r, c.g);
float max2 = max(max1, c.b);
float max3 = max(max1, max2);
return vec3(max3, max3, max3);

```

[Function](#enum-visualshadernodecolorfunc-function) **FUNC\_HSV2RGB** = `1`

Converts HSV vector to RGB equivalent.

[Function](#enum-visualshadernodecolorfunc-function) **FUNC\_RGB2HSV** = `2`

Converts RGB vector to HSV equivalent.

[Function](#enum-visualshadernodecolorfunc-function) **FUNC\_SEPIA** = `3`

Applies sepia tone effect using the following formula:

```
vec3 c = input;
float r = (c.r * 0.393) + (c.g * 0.769) + (c.b * 0.189);
float g = (c.r * 0.349) + (c.g * 0.686) + (c.b * 0.168);
float b = (c.r * 0.272) + (c.g * 0.534) + (c.b * 0.131);
return vec3(r, g, b);

```

[Function](#enum-visualshadernodecolorfunc-function) **FUNC\_LINEAR\_TO\_SRGB** = `4`

Converts color from linear color space to sRGB color space using the following formula:

```
vec3 c = clamp(c, vec3(0.0), vec3(1.0));
const vec3 a = vec3(0.055f);
return mix((vec3(1.0f) + a) * pow(c.rgb, vec3(1.0f / 2.4f)) - a, 12.92f * c.rgb, lessThan(c.rgb, vec3(0.0031308f)));

```

The Compatibility renderer uses a simpler formula:

```
vec3 c = input;
return max(vec3(1.055) * pow(c, vec3(0.416666667)) - vec3(0.055), vec3(0.0));

```

[Function](#enum-visualshadernodecolorfunc-function) **FUNC\_SRGB\_TO\_LINEAR** = `5`

Converts color from sRGB color space to linear color space using the following formula:

```
vec3 c = input;
return mix(pow((c.rgb + vec3(0.055)) * (1.0 / (1.0 + 0.055)), vec3(2.4)), c.rgb * (1.0 / 12.92), lessThan(c.rgb, vec3(0.04045)));

```

The Compatibility renderer uses a simpler formula:

```
vec3 c = input;
return c * (c * (c * 0.305306011 + 0.682171111) + 0.012522878);

```

[Function](#enum-visualshadernodecolorfunc-function) **FUNC\_MAX** = `6`

Represents the size of the [Function](#enum-visualshadernodecolorfunc-function) enum.

* * *

## Property Descriptions

[Function](#enum-visualshadernodecolorfunc-function) **function** = `0` [🔗](#class-visualshadernodecolorfunc-property-function)

- void **set\_function**(value: [Function](#enum-visualshadernodecolorfunc-function))

- [Function](#enum-visualshadernodecolorfunc-function) **get\_function**()


A function to be applied to the input color.

[Previous](class_visualshadernodecolorconstant.md "VisualShaderNodeColorConstant") [Next](class_visualshadernodecolorop.md "VisualShaderNodeColorOp")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodecolorconstant.md "VisualShaderNodeColorConstant") [Next](class_visualshadernodecolorop.md "VisualShaderNodeColorOp")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).