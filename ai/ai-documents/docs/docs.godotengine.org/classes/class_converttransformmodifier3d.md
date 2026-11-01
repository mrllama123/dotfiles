---
title: ConvertTransformModifier3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_converttransformmodifier3d.html
crawled_at: "2026-08-13T10:41:25+12:00"
content_hash: a13b1f1bd5edbf2d6e2db1ebf735bd02e93341017c7679527b594c97d5dfbad0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ConvertTransformModifier3D

* * *

# ConvertTransformModifier3D

**Inherits:** [BoneConstraint3D](class_boneconstraint3d.md#class-boneconstraint3d) **<** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) that apply transform to the bone which converted from reference.

## Description

Apply the copied transform of the bone set by [BoneConstraint3D.set\_reference\_bone()](class_boneconstraint3d.md#class-boneconstraint3d-method-set-reference-bone) to the bone set by [BoneConstraint3D.set\_apply\_bone()](class_boneconstraint3d.md#class-boneconstraint3d-method-set-apply-bone) about the specific axis with remapping it with some options.

There are 4 ways to apply the transform, depending on the combination of [set\_relative()](#class-converttransformmodifier3d-method-set-relative) and [set\_additive()](#class-converttransformmodifier3d-method-set-additive).

**Relative + Additive:**

- Extract reference pose relative to the rest and add it to the apply bone's pose.


**Relative + Not Additive:**

- Extract reference pose relative to the rest and add it to the apply bone's rest.


**Not Relative + Additive:**

- Extract reference pose absolutely and add it to the apply bone's pose.


**Not Relative + Not Additive:**

- Extract reference pose absolutely and the apply bone's pose is replaced with it.


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [setting\_count](#class-converttransformmodifier3d-property-setting-count) | `0` |

## Methods

|     |     |
| --- | --- |
| [Axis](class_vector3.md#enum-vector3-axis) | [get\_apply\_axis](#class-converttransformmodifier3d-method-get-apply-axis)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_apply\_range\_max](#class-converttransformmodifier3d-method-get-apply-range-max)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_apply\_range\_min](#class-converttransformmodifier3d-method-get-apply-range-min)(index: [int](class_int.md#class-int)) const |
| [TransformMode](#enum-converttransformmodifier3d-transformmode) | [get\_apply\_transform\_mode](#class-converttransformmodifier3d-method-get-apply-transform-mode)(index: [int](class_int.md#class-int)) const |
| [Axis](class_vector3.md#enum-vector3-axis) | [get\_reference\_axis](#class-converttransformmodifier3d-method-get-reference-axis)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_reference\_range\_max](#class-converttransformmodifier3d-method-get-reference-range-max)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_reference\_range\_min](#class-converttransformmodifier3d-method-get-reference-range-min)(index: [int](class_int.md#class-int)) const |
| [TransformMode](#enum-converttransformmodifier3d-transformmode) | [get\_reference\_transform\_mode](#class-converttransformmodifier3d-method-get-reference-transform-mode)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_additive](#class-converttransformmodifier3d-method-is-additive)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_relative](#class-converttransformmodifier3d-method-is-relative)(index: [int](class_int.md#class-int)) const |
| void | [set\_additive](#class-converttransformmodifier3d-method-set-additive)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_apply\_axis](#class-converttransformmodifier3d-method-set-apply-axis)(index: [int](class_int.md#class-int), axis: [Axis](class_vector3.md#enum-vector3-axis)) |
| void | [set\_apply\_range\_max](#class-converttransformmodifier3d-method-set-apply-range-max)(index: [int](class_int.md#class-int), range\_max: [float](class_float.md#class-float)) |
| void | [set\_apply\_range\_min](#class-converttransformmodifier3d-method-set-apply-range-min)(index: [int](class_int.md#class-int), range\_min: [float](class_float.md#class-float)) |
| void | [set\_apply\_transform\_mode](#class-converttransformmodifier3d-method-set-apply-transform-mode)(index: [int](class_int.md#class-int), transform\_mode: [TransformMode](#enum-converttransformmodifier3d-transformmode)) |
| void | [set\_reference\_axis](#class-converttransformmodifier3d-method-set-reference-axis)(index: [int](class_int.md#class-int), axis: [Axis](class_vector3.md#enum-vector3-axis)) |
| void | [set\_reference\_range\_max](#class-converttransformmodifier3d-method-set-reference-range-max)(index: [int](class_int.md#class-int), range\_max: [float](class_float.md#class-float)) |
| void | [set\_reference\_range\_min](#class-converttransformmodifier3d-method-set-reference-range-min)(index: [int](class_int.md#class-int), range\_min: [float](class_float.md#class-float)) |
| void | [set\_reference\_transform\_mode](#class-converttransformmodifier3d-method-set-reference-transform-mode)(index: [int](class_int.md#class-int), transform\_mode: [TransformMode](#enum-converttransformmodifier3d-transformmode)) |
| void | [set\_relative](#class-converttransformmodifier3d-method-set-relative)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

enum **TransformMode**: [🔗](#enum-converttransformmodifier3d-transformmode)

[TransformMode](#enum-converttransformmodifier3d-transformmode) **TRANSFORM\_MODE\_POSITION** = `0`

Convert with position. Transfer the difference.

[TransformMode](#enum-converttransformmodifier3d-transformmode) **TRANSFORM\_MODE\_ROTATION** = `1`

Convert with rotation. The angle is the roll for the specified axis.

[TransformMode](#enum-converttransformmodifier3d-transformmode) **TRANSFORM\_MODE\_SCALE** = `2`

Convert with scale. Transfers the ratio, not the difference.

* * *

## Property Descriptions

[int](class_int.md#class-int) **setting\_count** = `0` [🔗](#class-converttransformmodifier3d-property-setting-count)

- void **set\_setting\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_setting\_count**()


The number of settings in the modifier.

* * *

## Method Descriptions

[Axis](class_vector3.md#enum-vector3-axis) **get\_apply\_axis**(index: [int](class_int.md#class-int)) const [🔗](#class-converttransformmodifier3d-method-get-apply-axis)

Returns the axis of the remapping destination transform.

* * *

[float](class_float.md#class-float) **get\_apply\_range\_max**(index: [int](class_int.md#class-int)) const [🔗](#class-converttransformmodifier3d-method-get-apply-range-max)

Returns the maximum value of the remapping destination range.

* * *

[float](class_float.md#class-float) **get\_apply\_range\_min**(index: [int](class_int.md#class-int)) const [🔗](#class-converttransformmodifier3d-method-get-apply-range-min)

Returns the minimum value of the remapping destination range.

* * *

[TransformMode](#enum-converttransformmodifier3d-transformmode) **get\_apply\_transform\_mode**(index: [int](class_int.md#class-int)) const [🔗](#class-converttransformmodifier3d-method-get-apply-transform-mode)

Returns the operation of the remapping destination transform.

* * *

[Axis](class_vector3.md#enum-vector3-axis) **get\_reference\_axis**(index: [int](class_int.md#class-int)) const [🔗](#class-converttransformmodifier3d-method-get-reference-axis)

Returns the axis of the remapping source transform.

* * *

[float](class_float.md#class-float) **get\_reference\_range\_max**(index: [int](class_int.md#class-int)) const [🔗](#class-converttransformmodifier3d-method-get-reference-range-max)

Returns the maximum value of the remapping source range.

* * *

[float](class_float.md#class-float) **get\_reference\_range\_min**(index: [int](class_int.md#class-int)) const [🔗](#class-converttransformmodifier3d-method-get-reference-range-min)

Returns the minimum value of the remapping source range.

* * *

[TransformMode](#enum-converttransformmodifier3d-transformmode) **get\_reference\_transform\_mode**(index: [int](class_int.md#class-int)) const [🔗](#class-converttransformmodifier3d-method-get-reference-transform-mode)

Returns the operation of the remapping source transform.

* * *

[bool](class_bool.md#class-bool) **is\_additive**(index: [int](class_int.md#class-int)) const [🔗](#class-converttransformmodifier3d-method-is-additive)

Returns `true` if the additive option is enabled in the setting at `index`.

* * *

[bool](class_bool.md#class-bool) **is\_relative**(index: [int](class_int.md#class-int)) const [🔗](#class-converttransformmodifier3d-method-is-relative)

Returns `true` if the relative option is enabled in the setting at `index`.

* * *

void **set\_additive**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-converttransformmodifier3d-method-set-additive)

Sets additive option in the setting at `index` to `enabled`. This mainly affects the process of applying transform to the [BoneConstraint3D.set\_apply\_bone()](class_boneconstraint3d.md#class-boneconstraint3d-method-set-apply-bone).

If sets `enabled` to `true`, the processed transform is added to the pose of the current apply bone.

If sets `enabled` to `false`, the pose of the current apply bone is replaced with the processed transform. However, if set [set\_relative()](#class-converttransformmodifier3d-method-set-relative) to `true`, the transform is relative to rest.

* * *

void **set\_apply\_axis**(index: [int](class_int.md#class-int), axis: [Axis](class_vector3.md#enum-vector3-axis)) [🔗](#class-converttransformmodifier3d-method-set-apply-axis)

Sets the axis of the remapping destination transform.

* * *

void **set\_apply\_range\_max**(index: [int](class_int.md#class-int), range\_max: [float](class_float.md#class-float)) [🔗](#class-converttransformmodifier3d-method-set-apply-range-max)

Sets the maximum value of the remapping destination range.

* * *

void **set\_apply\_range\_min**(index: [int](class_int.md#class-int), range\_min: [float](class_float.md#class-float)) [🔗](#class-converttransformmodifier3d-method-set-apply-range-min)

Sets the minimum value of the remapping destination range.

* * *

void **set\_apply\_transform\_mode**(index: [int](class_int.md#class-int), transform\_mode: [TransformMode](#enum-converttransformmodifier3d-transformmode)) [🔗](#class-converttransformmodifier3d-method-set-apply-transform-mode)

Sets the operation of the remapping destination transform.

* * *

void **set\_reference\_axis**(index: [int](class_int.md#class-int), axis: [Axis](class_vector3.md#enum-vector3-axis)) [🔗](#class-converttransformmodifier3d-method-set-reference-axis)

Sets the axis of the remapping source transform.

* * *

void **set\_reference\_range\_max**(index: [int](class_int.md#class-int), range\_max: [float](class_float.md#class-float)) [🔗](#class-converttransformmodifier3d-method-set-reference-range-max)

Sets the maximum value of the remapping source range.

* * *

void **set\_reference\_range\_min**(index: [int](class_int.md#class-int), range\_min: [float](class_float.md#class-float)) [🔗](#class-converttransformmodifier3d-method-set-reference-range-min)

Sets the minimum value of the remapping source range.

* * *

void **set\_reference\_transform\_mode**(index: [int](class_int.md#class-int), transform\_mode: [TransformMode](#enum-converttransformmodifier3d-transformmode)) [🔗](#class-converttransformmodifier3d-method-set-reference-transform-mode)

Sets the operation of the remapping source transform.

* * *

void **set\_relative**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-converttransformmodifier3d-method-set-relative)

Sets relative option in the setting at `index` to `enabled`.

If sets `enabled` to `true`, the extracted and applying transform is relative to the rest.

If sets `enabled` to `false`, the extracted transform is absolute.

[Previous](class_control.md "Control") [Next](class_copytransformmodifier3d.md "CopyTransformModifier3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_control.md "Control") [Next](class_copytransformmodifier3d.md "CopyTransformModifier3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).