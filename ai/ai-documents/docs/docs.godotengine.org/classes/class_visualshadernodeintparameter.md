---
title: VisualShaderNodeIntParameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeintparameter.html
crawled_at: "2026-08-13T10:41:24+12:00"
content_hash: 7c2ad8121d2c5e4104307bf6c76e9ac880db420e8b6b7d3aba5a78d0acff3076
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeIntParameter

* * *

# VisualShaderNodeIntParameter

**Inherits:** [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A visual shader node for shader parameter (uniform) of type [int](class_int.md#class-int).

## Description

A [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) of type [int](class_int.md#class-int). Offers additional customization for range of accepted values.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [default\_value](#class-visualshadernodeintparameter-property-default-value) | `0` |
| [bool](class_bool.md#class-bool) | [default\_value\_enabled](#class-visualshadernodeintparameter-property-default-value-enabled) | `false` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [enum\_names](#class-visualshadernodeintparameter-property-enum-names) | `PackedStringArray()` |
| [Hint](#enum-visualshadernodeintparameter-hint) | [hint](#class-visualshadernodeintparameter-property-hint) | `0` |
| [int](class_int.md#class-int) | [max](#class-visualshadernodeintparameter-property-max) | `100` |
| [int](class_int.md#class-int) | [min](#class-visualshadernodeintparameter-property-min) | `0` |
| [int](class_int.md#class-int) | [step](#class-visualshadernodeintparameter-property-step) | `1` |

* * *

## Enumerations

enum **Hint**: [🔗](#enum-visualshadernodeintparameter-hint)

[Hint](#enum-visualshadernodeintparameter-hint) **HINT\_NONE** = `0`

The parameter will not constrain its value.

[Hint](#enum-visualshadernodeintparameter-hint) **HINT\_RANGE** = `1`

The parameter's value must be within the specified [min](#class-visualshadernodeintparameter-property-min)/ [max](#class-visualshadernodeintparameter-property-max) range.

[Hint](#enum-visualshadernodeintparameter-hint) **HINT\_RANGE\_STEP** = `2`

The parameter's value must be within the specified range, with the given [step](#class-visualshadernodeintparameter-property-step) between values.

[Hint](#enum-visualshadernodeintparameter-hint) **HINT\_ENUM** = `3`

The parameter uses an enum to associate preset values to names in the editor.

[Hint](#enum-visualshadernodeintparameter-hint) **HINT\_MAX** = `4`

Represents the size of the [Hint](#enum-visualshadernodeintparameter-hint) enum.

* * *

## Property Descriptions

[int](class_int.md#class-int) **default\_value** = `0` [🔗](#class-visualshadernodeintparameter-property-default-value)

- void **set\_default\_value**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_default\_value**()


Default value of this parameter, which will be used if not set externally. [default\_value\_enabled](#class-visualshadernodeintparameter-property-default-value-enabled) must be enabled; defaults to `0` otherwise.

* * *

[bool](class_bool.md#class-bool) **default\_value\_enabled** = `false` [🔗](#class-visualshadernodeintparameter-property-default-value-enabled)

- void **set\_default\_value\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_default\_value\_enabled**()


If `true`, the node will have a custom default value.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **enum\_names** = `PackedStringArray()` [🔗](#class-visualshadernodeintparameter-property-enum-names)

- void **set\_enum\_names**(value: [PackedStringArray](class_packedstringarray.md#class-packedstringarray))

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_enum\_names**()


The names used for the enum select in the editor. [hint](#class-visualshadernodeintparameter-property-hint) must be [HINT\_ENUM](#class-visualshadernodeintparameter-constant-hint-enum) for this to take effect.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[Hint](#enum-visualshadernodeintparameter-hint) **hint** = `0` [🔗](#class-visualshadernodeintparameter-property-hint)

- void **set\_hint**(value: [Hint](#enum-visualshadernodeintparameter-hint))

- [Hint](#enum-visualshadernodeintparameter-hint) **get\_hint**()


Range hint of this node. Use it to customize valid parameter range.

* * *

[int](class_int.md#class-int) **max** = `100` [🔗](#class-visualshadernodeintparameter-property-max)

- void **set\_max**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max**()


The maximum value this parameter can take. [hint](#class-visualshadernodeintparameter-property-hint) must be either [HINT\_RANGE](#class-visualshadernodeintparameter-constant-hint-range) or [HINT\_RANGE\_STEP](#class-visualshadernodeintparameter-constant-hint-range-step) for this to take effect.

* * *

[int](class_int.md#class-int) **min** = `0` [🔗](#class-visualshadernodeintparameter-property-min)

- void **set\_min**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_min**()


The minimum value this parameter can take. [hint](#class-visualshadernodeintparameter-property-hint) must be either [HINT\_RANGE](#class-visualshadernodeintparameter-constant-hint-range) or [HINT\_RANGE\_STEP](#class-visualshadernodeintparameter-constant-hint-range-step) for this to take effect.

* * *

[int](class_int.md#class-int) **step** = `1` [🔗](#class-visualshadernodeintparameter-property-step)

- void **set\_step**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_step**()


The step between parameter's values. Forces the parameter to be a multiple of the given value. [hint](#class-visualshadernodeintparameter-property-hint) must be [HINT\_RANGE\_STEP](#class-visualshadernodeintparameter-constant-hint-range-step) for this to take effect.

[Previous](class_visualshadernodeintop.md "VisualShaderNodeIntOp") [Next](class_visualshadernodeis.md "VisualShaderNodeIs")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeintop.md "VisualShaderNodeIntOp") [Next](class_visualshadernodeis.md "VisualShaderNodeIs")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).