---
title: VisualShaderNodeCompare — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodecompare.html
crawled_at: "2026-08-13T10:26:43+12:00"
content_hash: 94db587ee9c15184bd78a676455173820eaeb1ac17ae6a5277e96809134f184e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeCompare

* * *

# VisualShaderNodeCompare

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A comparison function for common types within the visual shader graph.

## Description

Compares `a` and `b` of [type](#class-visualshadernodecompare-property-type) by [function](#class-visualshadernodecompare-property-function). Returns a boolean scalar. Translates to `if` instruction in shader code.

## Properties

|     |     |     |
| --- | --- | --- |
| [Condition](#enum-visualshadernodecompare-condition) | [condition](#class-visualshadernodecompare-property-condition) | `0` |
| [Function](#enum-visualshadernodecompare-function) | [function](#class-visualshadernodecompare-property-function) | `0` |
| [ComparisonType](#enum-visualshadernodecompare-comparisontype) | [type](#class-visualshadernodecompare-property-type) | `0` |

* * *

## Enumerations

enum **ComparisonType**: [🔗](#enum-visualshadernodecompare-comparisontype)

[ComparisonType](#enum-visualshadernodecompare-comparisontype) **CTYPE\_SCALAR** = `0`

A floating-point scalar.

[ComparisonType](#enum-visualshadernodecompare-comparisontype) **CTYPE\_SCALAR\_INT** = `1`

An integer scalar.

[ComparisonType](#enum-visualshadernodecompare-comparisontype) **CTYPE\_SCALAR\_UINT** = `2`

An unsigned integer scalar.

[ComparisonType](#enum-visualshadernodecompare-comparisontype) **CTYPE\_VECTOR\_2D** = `3`

A 2D vector type.

[ComparisonType](#enum-visualshadernodecompare-comparisontype) **CTYPE\_VECTOR\_3D** = `4`

A 3D vector type.

[ComparisonType](#enum-visualshadernodecompare-comparisontype) **CTYPE\_VECTOR\_4D** = `5`

A 4D vector type.

[ComparisonType](#enum-visualshadernodecompare-comparisontype) **CTYPE\_BOOLEAN** = `6`

A boolean type.

[ComparisonType](#enum-visualshadernodecompare-comparisontype) **CTYPE\_TRANSFORM** = `7`

A transform ( `mat4`) type.

[ComparisonType](#enum-visualshadernodecompare-comparisontype) **CTYPE\_MAX** = `8`

Represents the size of the [ComparisonType](#enum-visualshadernodecompare-comparisontype) enum.

* * *

enum **Function**: [🔗](#enum-visualshadernodecompare-function)

[Function](#enum-visualshadernodecompare-function) **FUNC\_EQUAL** = `0`

Comparison for equality ( `a == b`).

[Function](#enum-visualshadernodecompare-function) **FUNC\_NOT\_EQUAL** = `1`

Comparison for inequality ( `a != b`).

[Function](#enum-visualshadernodecompare-function) **FUNC\_GREATER\_THAN** = `2`

Comparison for greater than ( `a > b`). Cannot be used if [type](#class-visualshadernodecompare-property-type) set to [CTYPE\_BOOLEAN](#class-visualshadernodecompare-constant-ctype-boolean) or [CTYPE\_TRANSFORM](#class-visualshadernodecompare-constant-ctype-transform).

[Function](#enum-visualshadernodecompare-function) **FUNC\_GREATER\_THAN\_EQUAL** = `3`

Comparison for greater than or equal ( `a >= b`). Cannot be used if [type](#class-visualshadernodecompare-property-type) set to [CTYPE\_BOOLEAN](#class-visualshadernodecompare-constant-ctype-boolean) or [CTYPE\_TRANSFORM](#class-visualshadernodecompare-constant-ctype-transform).

[Function](#enum-visualshadernodecompare-function) **FUNC\_LESS\_THAN** = `4`

Comparison for less than ( `a < b`). Cannot be used if [type](#class-visualshadernodecompare-property-type) set to [CTYPE\_BOOLEAN](#class-visualshadernodecompare-constant-ctype-boolean) or [CTYPE\_TRANSFORM](#class-visualshadernodecompare-constant-ctype-transform).

[Function](#enum-visualshadernodecompare-function) **FUNC\_LESS\_THAN\_EQUAL** = `5`

Comparison for less than or equal ( `a <= b`). Cannot be used if [type](#class-visualshadernodecompare-property-type) set to [CTYPE\_BOOLEAN](#class-visualshadernodecompare-constant-ctype-boolean) or [CTYPE\_TRANSFORM](#class-visualshadernodecompare-constant-ctype-transform).

[Function](#enum-visualshadernodecompare-function) **FUNC\_MAX** = `6`

Represents the size of the [Function](#enum-visualshadernodecompare-function) enum.

* * *

enum **Condition**: [🔗](#enum-visualshadernodecompare-condition)

[Condition](#enum-visualshadernodecompare-condition) **COND\_ALL** = `0`

The result will be `true` if all components in the vector satisfy the comparison condition.

[Condition](#enum-visualshadernodecompare-condition) **COND\_ANY** = `1`

The result will be `true` if any component in the vector satisfies the comparison condition.

[Condition](#enum-visualshadernodecompare-condition) **COND\_MAX** = `2`

Represents the size of the [Condition](#enum-visualshadernodecompare-condition) enum.

* * *

## Property Descriptions

[Condition](#enum-visualshadernodecompare-condition) **condition** = `0` [🔗](#class-visualshadernodecompare-property-condition)

- void **set\_condition**(value: [Condition](#enum-visualshadernodecompare-condition))

- [Condition](#enum-visualshadernodecompare-condition) **get\_condition**()


Extra condition which is applied if [type](#class-visualshadernodecompare-property-type) is set to [CTYPE\_VECTOR\_3D](#class-visualshadernodecompare-constant-ctype-vector-3d).

* * *

[Function](#enum-visualshadernodecompare-function) **function** = `0` [🔗](#class-visualshadernodecompare-property-function)

- void **set\_function**(value: [Function](#enum-visualshadernodecompare-function))

- [Function](#enum-visualshadernodecompare-function) **get\_function**()


A comparison function.

* * *

[ComparisonType](#enum-visualshadernodecompare-comparisontype) **type** = `0` [🔗](#class-visualshadernodecompare-property-type)

- void **set\_comparison\_type**(value: [ComparisonType](#enum-visualshadernodecompare-comparisontype))

- [ComparisonType](#enum-visualshadernodecompare-comparisontype) **get\_comparison\_type**()


The type to be used in the comparison.

[Previous](class_visualshadernodecomment.md "VisualShaderNodeComment") [Next](class_visualshadernodeconstant.md "VisualShaderNodeConstant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodecomment.md "VisualShaderNodeComment") [Next](class_visualshadernodeconstant.md "VisualShaderNodeConstant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).