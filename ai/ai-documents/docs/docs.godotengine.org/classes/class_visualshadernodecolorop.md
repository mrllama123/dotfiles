---
title: VisualShaderNodeColorOp — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodecolorop.html
crawled_at: "2026-08-13T10:18:18+12:00"
content_hash: 51df7a03c8edff3624b074079b48e95d7e4b472069e47a8ccfad2b65b7d8c500
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeColorOp

* * *

# VisualShaderNodeColorOp

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Color](class_color.md#class-color) operator to be used within the visual shader graph.

## Description

Applies [operator](#class-visualshadernodecolorop-property-operator) to two color inputs.

## Properties

|     |     |     |
| --- | --- | --- |
| [Operator](#enum-visualshadernodecolorop-operator) | [operator](#class-visualshadernodecolorop-property-operator) | `0` |

* * *

## Enumerations

enum **Operator**: [🔗](#enum-visualshadernodecolorop-operator)

[Operator](#enum-visualshadernodecolorop-operator) **OP\_SCREEN** = `0`

Produce a screen effect with the following formula:

```
result = vec3(1.0) - (vec3(1.0) - a) * (vec3(1.0) - b);

```

[Operator](#enum-visualshadernodecolorop-operator) **OP\_DIFFERENCE** = `1`

Produce a difference effect with the following formula:

```
result = abs(a - b);

```

[Operator](#enum-visualshadernodecolorop-operator) **OP\_DARKEN** = `2`

Produce a darken effect with the following formula:

```
result = min(a, b);

```

[Operator](#enum-visualshadernodecolorop-operator) **OP\_LIGHTEN** = `3`

Produce a lighten effect with the following formula:

```
result = max(a, b);

```

[Operator](#enum-visualshadernodecolorop-operator) **OP\_OVERLAY** = `4`

Produce an overlay effect with the following formula:

```
for (int i = 0; i < 3; i++) {
    float base = a[i];
    float blend = b[i];
    if (base < 0.5) {
        result[i] = 2.0 * base * blend;
    } else {
        result[i] = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
    }
}

```

[Operator](#enum-visualshadernodecolorop-operator) **OP\_DODGE** = `5`

Produce a dodge effect with the following formula:

```
result = a / (vec3(1.0) - b);

```

[Operator](#enum-visualshadernodecolorop-operator) **OP\_BURN** = `6`

Produce a burn effect with the following formula:

```
result = vec3(1.0) - (vec3(1.0) - a) / b;

```

[Operator](#enum-visualshadernodecolorop-operator) **OP\_SOFT\_LIGHT** = `7`

Produce a soft light effect with the following formula:

```
for (int i = 0; i < 3; i++) {
    float base = a[i];
    float blend = b[i];
    if (base < 0.5) {
        result[i] = base * (blend + 0.5);
    } else {
        result[i] = 1.0 - (1.0 - base) * (1.0 - (blend - 0.5));
    }
}

```

[Operator](#enum-visualshadernodecolorop-operator) **OP\_HARD\_LIGHT** = `8`

Produce a hard light effect with the following formula:

```
for (int i = 0; i < 3; i++) {
    float base = a[i];
    float blend = b[i];
    if (base < 0.5) {
        result[i] = base * (2.0 * blend);
    } else {
        result[i] = 1.0 - (1.0 - base) * (1.0 - 2.0 * (blend - 0.5));
    }
}

```

[Operator](#enum-visualshadernodecolorop-operator) **OP\_MAX** = `9`

Represents the size of the [Operator](#enum-visualshadernodecolorop-operator) enum.

* * *

## Property Descriptions

[Operator](#enum-visualshadernodecolorop-operator) **operator** = `0` [🔗](#class-visualshadernodecolorop-property-operator)

- void **set\_operator**(value: [Operator](#enum-visualshadernodecolorop-operator))

- [Operator](#enum-visualshadernodecolorop-operator) **get\_operator**()


An operator to be applied to the inputs.

[Previous](class_visualshadernodecolorfunc.md "VisualShaderNodeColorFunc") [Next](class_visualshadernodecolorparameter.md "VisualShaderNodeColorParameter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodecolorfunc.md "VisualShaderNodeColorFunc") [Next](class_visualshadernodecolorparameter.md "VisualShaderNodeColorParameter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).