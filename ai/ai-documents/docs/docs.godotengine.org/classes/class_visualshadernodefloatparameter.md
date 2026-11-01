---
title: VisualShaderNodeFloatParameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodefloatparameter.html
crawled_at: "2026-08-13T10:30:11+12:00"
content_hash: f5a2cff87759a918daccbcd0f5b707bcacf26356d0899707377d264945846873
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeFloatParameter

* * *

# VisualShaderNodeFloatParameter

**Inherits:** [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A scalar float parameter to be used within the visual shader graph.

## Description

Translated to `uniform float` in the shader language.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [default\_value](#class-visualshadernodefloatparameter-property-default-value) | `0.0` |
| [bool](class_bool.md#class-bool) | [default\_value\_enabled](#class-visualshadernodefloatparameter-property-default-value-enabled) | `false` |
| [Hint](#enum-visualshadernodefloatparameter-hint) | [hint](#class-visualshadernodefloatparameter-property-hint) | `0` |
| [float](class_float.md#class-float) | [max](#class-visualshadernodefloatparameter-property-max) | `1.0` |
| [float](class_float.md#class-float) | [min](#class-visualshadernodefloatparameter-property-min) | `0.0` |
| [float](class_float.md#class-float) | [step](#class-visualshadernodefloatparameter-property-step) | `0.1` |

* * *

## Enumerations

enum **Hint**: [🔗](#enum-visualshadernodefloatparameter-hint)

[Hint](#enum-visualshadernodefloatparameter-hint) **HINT\_NONE** = `0`

No hint used.

[Hint](#enum-visualshadernodefloatparameter-hint) **HINT\_RANGE** = `1`

A range hint for scalar value, which limits possible input values between [min](#class-visualshadernodefloatparameter-property-min) and [max](#class-visualshadernodefloatparameter-property-max). Translated to `hint_range(min, max)` in shader code.

[Hint](#enum-visualshadernodefloatparameter-hint) **HINT\_RANGE\_STEP** = `2`

A range hint for scalar value with step, which limits possible input values between [min](#class-visualshadernodefloatparameter-property-min) and [max](#class-visualshadernodefloatparameter-property-max), with a step (increment) of [step](#class-visualshadernodefloatparameter-property-step)). Translated to `hint_range(min, max, step)` in shader code.

[Hint](#enum-visualshadernodefloatparameter-hint) **HINT\_MAX** = `3`

Represents the size of the [Hint](#enum-visualshadernodefloatparameter-hint) enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **default\_value** = `0.0` [🔗](#class-visualshadernodefloatparameter-property-default-value)

- void **set\_default\_value**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_default\_value**()


A default value to be assigned within the shader.

* * *

[bool](class_bool.md#class-bool) **default\_value\_enabled** = `false` [🔗](#class-visualshadernodefloatparameter-property-default-value-enabled)

- void **set\_default\_value\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_default\_value\_enabled**()


Enables usage of the [default\_value](#class-visualshadernodefloatparameter-property-default-value).

* * *

[Hint](#enum-visualshadernodefloatparameter-hint) **hint** = `0` [🔗](#class-visualshadernodefloatparameter-property-hint)

- void **set\_hint**(value: [Hint](#enum-visualshadernodefloatparameter-hint))

- [Hint](#enum-visualshadernodefloatparameter-hint) **get\_hint**()


A hint applied to the uniform, which controls the values it can take when set through the Inspector.

* * *

[float](class_float.md#class-float) **max** = `1.0` [🔗](#class-visualshadernodefloatparameter-property-max)

- void **set\_max**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max**()


Minimum value for range hints. Used if [hint](#class-visualshadernodefloatparameter-property-hint) is set to [HINT\_RANGE](#class-visualshadernodefloatparameter-constant-hint-range) or [HINT\_RANGE\_STEP](#class-visualshadernodefloatparameter-constant-hint-range-step).

* * *

[float](class_float.md#class-float) **min** = `0.0` [🔗](#class-visualshadernodefloatparameter-property-min)

- void **set\_min**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_min**()


Maximum value for range hints. Used if [hint](#class-visualshadernodefloatparameter-property-hint) is set to [HINT\_RANGE](#class-visualshadernodefloatparameter-constant-hint-range) or [HINT\_RANGE\_STEP](#class-visualshadernodefloatparameter-constant-hint-range-step).

* * *

[float](class_float.md#class-float) **step** = `0.1` [🔗](#class-visualshadernodefloatparameter-property-step)

- void **set\_step**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_step**()


Step (increment) value for the range hint with step. Used if [hint](#class-visualshadernodefloatparameter-property-hint) is set to [HINT\_RANGE\_STEP](#class-visualshadernodefloatparameter-constant-hint-range-step).

[Previous](class_visualshadernodefloatop.md "VisualShaderNodeFloatOp") [Next](class_visualshadernodeframe.md "VisualShaderNodeFrame")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodefloatop.md "VisualShaderNodeFloatOp") [Next](class_visualshadernodeframe.md "VisualShaderNodeFrame")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).