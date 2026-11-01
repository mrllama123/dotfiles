---
title: AimModifier3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_aimmodifier3d.html
crawled_at: "2026-08-13T10:38:41+12:00"
content_hash: 7d1a7b6339d4333ccce909c23fce4ad2ce168266be7ed69b77f520e52cc75cc5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AimModifier3D

* * *

# AimModifier3D

**Inherits:** [BoneConstraint3D](class_boneconstraint3d.md#class-boneconstraint3d) **<** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

The **AimModifier3D** rotates a bone to look at a reference bone.

## Description

This is a simple version of [LookAtModifier3D](class_lookatmodifier3d.md#class-lookatmodifier3d) that only allows bone to the reference without advanced options such as angle limitation or time-based interpolation.

The feature is simplified, but instead it is implemented with smooth tracking without euler, see [set\_use\_euler()](#class-aimmodifier3d-method-set-use-euler).

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [setting\_count](#class-aimmodifier3d-property-setting-count) | `0` |

## Methods

|     |     |
| --- | --- |
| [BoneAxis](class_skeletonmodifier3d.md#enum-skeletonmodifier3d-boneaxis) | [get\_forward\_axis](#class-aimmodifier3d-method-get-forward-axis)(index: [int](class_int.md#class-int)) const |
| [Axis](class_vector3.md#enum-vector3-axis) | [get\_primary\_rotation\_axis](#class-aimmodifier3d-method-get-primary-rotation-axis)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_using\_euler](#class-aimmodifier3d-method-is-using-euler)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_using\_secondary\_rotation](#class-aimmodifier3d-method-is-using-secondary-rotation)(index: [int](class_int.md#class-int)) const |
| void | [set\_forward\_axis](#class-aimmodifier3d-method-set-forward-axis)(index: [int](class_int.md#class-int), axis: [BoneAxis](class_skeletonmodifier3d.md#enum-skeletonmodifier3d-boneaxis)) |
| void | [set\_primary\_rotation\_axis](#class-aimmodifier3d-method-set-primary-rotation-axis)(index: [int](class_int.md#class-int), axis: [Axis](class_vector3.md#enum-vector3-axis)) |
| void | [set\_use\_euler](#class-aimmodifier3d-method-set-use-euler)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_use\_secondary\_rotation](#class-aimmodifier3d-method-set-use-secondary-rotation)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **setting\_count** = `0` [🔗](#class-aimmodifier3d-property-setting-count)

- void **set\_setting\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_setting\_count**()


The number of settings in the modifier.

* * *

## Method Descriptions

[BoneAxis](class_skeletonmodifier3d.md#enum-skeletonmodifier3d-boneaxis) **get\_forward\_axis**(index: [int](class_int.md#class-int)) const [🔗](#class-aimmodifier3d-method-get-forward-axis)

Returns the forward axis of the bone.

* * *

[Axis](class_vector3.md#enum-vector3-axis) **get\_primary\_rotation\_axis**(index: [int](class_int.md#class-int)) const [🔗](#class-aimmodifier3d-method-get-primary-rotation-axis)

Returns the axis of the first rotation. It is enabled only if [is\_using\_euler()](#class-aimmodifier3d-method-is-using-euler) is `true`.

* * *

[bool](class_bool.md#class-bool) **is\_using\_euler**(index: [int](class_int.md#class-int)) const [🔗](#class-aimmodifier3d-method-is-using-euler)

Returns `true` if it provides rotation with using euler.

* * *

[bool](class_bool.md#class-bool) **is\_using\_secondary\_rotation**(index: [int](class_int.md#class-int)) const [🔗](#class-aimmodifier3d-method-is-using-secondary-rotation)

Returns `true` if it provides rotation by two axes. It is enabled only if [is\_using\_euler()](#class-aimmodifier3d-method-is-using-euler) is `true`.

* * *

void **set\_forward\_axis**(index: [int](class_int.md#class-int), axis: [BoneAxis](class_skeletonmodifier3d.md#enum-skeletonmodifier3d-boneaxis)) [🔗](#class-aimmodifier3d-method-set-forward-axis)

Sets the forward axis of the bone.

* * *

void **set\_primary\_rotation\_axis**(index: [int](class_int.md#class-int), axis: [Axis](class_vector3.md#enum-vector3-axis)) [🔗](#class-aimmodifier3d-method-set-primary-rotation-axis)

Sets the axis of the first rotation. It is enabled only if [is\_using\_euler()](#class-aimmodifier3d-method-is-using-euler) is `true`.

* * *

void **set\_use\_euler**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-aimmodifier3d-method-set-use-euler)

If sets `enabled` to `true`, it provides rotation with using euler.

If sets `enabled` to `false`, it provides rotation with using rotation by arc generated from the forward axis vector and the vector toward the reference.

* * *

void **set\_use\_secondary\_rotation**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-aimmodifier3d-method-set-use-secondary-rotation)

If sets `enabled` to `true`, it provides rotation by two axes. It is enabled only if [is\_using\_euler()](#class-aimmodifier3d-method-is-using-euler) is `true`.

[Previous](class_acceptdialog.md "AcceptDialog") [Next](class_animatablebody2d.md "AnimatableBody2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_acceptdialog.md "AcceptDialog") [Next](class_animatablebody2d.md "AnimatableBody2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).