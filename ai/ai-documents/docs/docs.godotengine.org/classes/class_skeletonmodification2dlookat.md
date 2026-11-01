---
title: SkeletonModification2DLookAt — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonmodification2dlookat.html
crawled_at: "2026-08-13T10:27:25+12:00"
content_hash: f9dc4c962a7d6607515b43cf892d10682846ad090c8d4036e1075afa21d07f9b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonModification2DLookAt

* * *

# SkeletonModification2DLookAt

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A modification that rotates a [Bone2D](class_bone2d.md#class-bone2d) node to look at a target.

## Description

This [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) rotates a bone to look a target. This is extremely helpful for moving character's head to look at the player, rotating a turret to look at a target, or any other case where you want to make a bone rotate towards something quickly and easily.

## Properties

|     |     |     |
| --- | --- | --- |
| [NodePath](class_nodepath.md#class-nodepath) | [bone2d\_node](#class-skeletonmodification2dlookat-property-bone2d-node) | `NodePath("")` |
| [int](class_int.md#class-int) | [bone\_index](#class-skeletonmodification2dlookat-property-bone-index) | `-1` |
| [NodePath](class_nodepath.md#class-nodepath) | [target\_nodepath](#class-skeletonmodification2dlookat-property-target-nodepath) | `NodePath("")` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_additional\_rotation](#class-skeletonmodification2dlookat-method-get-additional-rotation)() const |
| [bool](class_bool.md#class-bool) | [get\_constraint\_angle\_invert](#class-skeletonmodification2dlookat-method-get-constraint-angle-invert)() const |
| [float](class_float.md#class-float) | [get\_constraint\_angle\_max](#class-skeletonmodification2dlookat-method-get-constraint-angle-max)() const |
| [float](class_float.md#class-float) | [get\_constraint\_angle\_min](#class-skeletonmodification2dlookat-method-get-constraint-angle-min)() const |
| [bool](class_bool.md#class-bool) | [get\_enable\_constraint](#class-skeletonmodification2dlookat-method-get-enable-constraint)() const |
| void | [set\_additional\_rotation](#class-skeletonmodification2dlookat-method-set-additional-rotation)(rotation: [float](class_float.md#class-float)) |
| void | [set\_constraint\_angle\_invert](#class-skeletonmodification2dlookat-method-set-constraint-angle-invert)(invert: [bool](class_bool.md#class-bool)) |
| void | [set\_constraint\_angle\_max](#class-skeletonmodification2dlookat-method-set-constraint-angle-max)(angle\_max: [float](class_float.md#class-float)) |
| void | [set\_constraint\_angle\_min](#class-skeletonmodification2dlookat-method-set-constraint-angle-min)(angle\_min: [float](class_float.md#class-float)) |
| void | [set\_enable\_constraint](#class-skeletonmodification2dlookat-method-set-enable-constraint)(enable\_constraint: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[NodePath](class_nodepath.md#class-nodepath) **bone2d\_node** = `NodePath("")` [🔗](#class-skeletonmodification2dlookat-property-bone2d-node)

- void **set\_bone2d\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_bone2d\_node**()


The [Bone2D](class_bone2d.md#class-bone2d) node that the modification will operate on.

* * *

[int](class_int.md#class-int) **bone\_index** = `-1` [🔗](#class-skeletonmodification2dlookat-property-bone-index)

- void **set\_bone\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bone\_index**()


The index of the [Bone2D](class_bone2d.md#class-bone2d) node that the modification will operate on.

* * *

[NodePath](class_nodepath.md#class-nodepath) **target\_nodepath** = `NodePath("")` [🔗](#class-skeletonmodification2dlookat-property-target-nodepath)

- void **set\_target\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_target\_node**()


The NodePath to the node that is the target for the LookAt modification. This node is what the modification will rotate the [Bone2D](class_bone2d.md#class-bone2d) to.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_additional\_rotation**() const [🔗](#class-skeletonmodification2dlookat-method-get-additional-rotation)

Returns the amount of additional rotation that is applied after the LookAt modification executes.

* * *

[bool](class_bool.md#class-bool) **get\_constraint\_angle\_invert**() const [🔗](#class-skeletonmodification2dlookat-method-get-constraint-angle-invert)

Returns whether the constraints to this modification are inverted or not.

* * *

[float](class_float.md#class-float) **get\_constraint\_angle\_max**() const [🔗](#class-skeletonmodification2dlookat-method-get-constraint-angle-max)

Returns the constraint's maximum allowed angle.

* * *

[float](class_float.md#class-float) **get\_constraint\_angle\_min**() const [🔗](#class-skeletonmodification2dlookat-method-get-constraint-angle-min)

Returns the constraint's minimum allowed angle.

* * *

[bool](class_bool.md#class-bool) **get\_enable\_constraint**() const [🔗](#class-skeletonmodification2dlookat-method-get-enable-constraint)

Returns `true` if the LookAt modification is using constraints.

* * *

void **set\_additional\_rotation**(rotation: [float](class_float.md#class-float)) [🔗](#class-skeletonmodification2dlookat-method-set-additional-rotation)

Sets the amount of additional rotation that is to be applied after executing the modification. This allows for offsetting the results by the inputted rotation amount.

* * *

void **set\_constraint\_angle\_invert**(invert: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2dlookat-method-set-constraint-angle-invert)

When `true`, the modification will use an inverted joint constraint.

An inverted joint constraint only constraints the [Bone2D](class_bone2d.md#class-bone2d) to the angles _outside of_ the inputted minimum and maximum angles. For this reason, it is referred to as an inverted joint constraint, as it constraints the joint to the outside of the inputted values.

* * *

void **set\_constraint\_angle\_max**(angle\_max: [float](class_float.md#class-float)) [🔗](#class-skeletonmodification2dlookat-method-set-constraint-angle-max)

Sets the constraint's maximum allowed angle.

* * *

void **set\_constraint\_angle\_min**(angle\_min: [float](class_float.md#class-float)) [🔗](#class-skeletonmodification2dlookat-method-set-constraint-angle-min)

Sets the constraint's minimum allowed angle.

* * *

void **set\_enable\_constraint**(enable\_constraint: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2dlookat-method-set-enable-constraint)

Sets whether this modification will use constraints or not. When `true`, constraints will be applied when solving the LookAt modification.

[Previous](class_skeletonmodification2djiggle.md "SkeletonModification2DJiggle") [Next](class_skeletonmodification2dphysicalbones.md "SkeletonModification2DPhysicalBones")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonmodification2djiggle.md "SkeletonModification2DJiggle") [Next](class_skeletonmodification2dphysicalbones.md "SkeletonModification2DPhysicalBones")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).