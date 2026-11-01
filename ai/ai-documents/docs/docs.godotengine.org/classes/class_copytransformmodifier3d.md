---
title: CopyTransformModifier3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_copytransformmodifier3d.html
crawled_at: "2026-08-13T10:32:46+12:00"
content_hash: 7986a4943ec2dbcb03f7de36559977b9b2369d00389f68b1e0db2adce49bb95d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CopyTransformModifier3D

* * *

# CopyTransformModifier3D

**Inherits:** [BoneConstraint3D](class_boneconstraint3d.md#class-boneconstraint3d) **<** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) that apply transform to the bone which copied from reference.

## Description

Apply the copied transform of the bone set by [BoneConstraint3D.set\_reference\_bone()](class_boneconstraint3d.md#class-boneconstraint3d-method-set-reference-bone) to the bone set by [BoneConstraint3D.set\_apply\_bone()](class_boneconstraint3d.md#class-boneconstraint3d-method-set-apply-bone) with processing it with some masks and options.

There are 4 ways to apply the transform, depending on the combination of [set\_relative()](#class-copytransformmodifier3d-method-set-relative) and [set\_additive()](#class-copytransformmodifier3d-method-set-additive).

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
| [int](class_int.md#class-int) | [setting\_count](#class-copytransformmodifier3d-property-setting-count) | `0` |

## Methods

|     |     |
| --- | --- |
| BitField\[ [AxisFlag](#enum-copytransformmodifier3d-axisflag)\] | [get\_axis\_flags](#class-copytransformmodifier3d-method-get-axis-flags)(index: [int](class_int.md#class-int)) const |
| BitField\[ [TransformFlag](#enum-copytransformmodifier3d-transformflag)\] | [get\_copy\_flags](#class-copytransformmodifier3d-method-get-copy-flags)(index: [int](class_int.md#class-int)) const |
| BitField\[ [AxisFlag](#enum-copytransformmodifier3d-axisflag)\] | [get\_invert\_flags](#class-copytransformmodifier3d-method-get-invert-flags)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_additive](#class-copytransformmodifier3d-method-is-additive)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_axis\_x\_enabled](#class-copytransformmodifier3d-method-is-axis-x-enabled)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_axis\_x\_inverted](#class-copytransformmodifier3d-method-is-axis-x-inverted)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_axis\_y\_enabled](#class-copytransformmodifier3d-method-is-axis-y-enabled)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_axis\_y\_inverted](#class-copytransformmodifier3d-method-is-axis-y-inverted)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_axis\_z\_enabled](#class-copytransformmodifier3d-method-is-axis-z-enabled)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_axis\_z\_inverted](#class-copytransformmodifier3d-method-is-axis-z-inverted)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_position\_copying](#class-copytransformmodifier3d-method-is-position-copying)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_relative](#class-copytransformmodifier3d-method-is-relative)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_rotation\_copying](#class-copytransformmodifier3d-method-is-rotation-copying)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_scale\_copying](#class-copytransformmodifier3d-method-is-scale-copying)(index: [int](class_int.md#class-int)) const |
| void | [set\_additive](#class-copytransformmodifier3d-method-set-additive)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_axis\_flags](#class-copytransformmodifier3d-method-set-axis-flags)(index: [int](class_int.md#class-int), axis\_flags: BitField\[ [AxisFlag](#enum-copytransformmodifier3d-axisflag)\]) |
| void | [set\_axis\_x\_enabled](#class-copytransformmodifier3d-method-set-axis-x-enabled)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_axis\_x\_inverted](#class-copytransformmodifier3d-method-set-axis-x-inverted)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_axis\_y\_enabled](#class-copytransformmodifier3d-method-set-axis-y-enabled)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_axis\_y\_inverted](#class-copytransformmodifier3d-method-set-axis-y-inverted)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_axis\_z\_enabled](#class-copytransformmodifier3d-method-set-axis-z-enabled)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_axis\_z\_inverted](#class-copytransformmodifier3d-method-set-axis-z-inverted)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_copy\_flags](#class-copytransformmodifier3d-method-set-copy-flags)(index: [int](class_int.md#class-int), copy\_flags: BitField\[ [TransformFlag](#enum-copytransformmodifier3d-transformflag)\]) |
| void | [set\_copy\_position](#class-copytransformmodifier3d-method-set-copy-position)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_copy\_rotation](#class-copytransformmodifier3d-method-set-copy-rotation)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_copy\_scale](#class-copytransformmodifier3d-method-set-copy-scale)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_invert\_flags](#class-copytransformmodifier3d-method-set-invert-flags)(index: [int](class_int.md#class-int), axis\_flags: BitField\[ [AxisFlag](#enum-copytransformmodifier3d-axisflag)\]) |
| void | [set\_relative](#class-copytransformmodifier3d-method-set-relative)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

flags **TransformFlag**: [🔗](#enum-copytransformmodifier3d-transformflag)

[TransformFlag](#enum-copytransformmodifier3d-transformflag) **TRANSFORM\_FLAG\_POSITION** = `1`

If set, allows to copy the position.

[TransformFlag](#enum-copytransformmodifier3d-transformflag) **TRANSFORM\_FLAG\_ROTATION** = `2`

If set, allows to copy the rotation.

[TransformFlag](#enum-copytransformmodifier3d-transformflag) **TRANSFORM\_FLAG\_SCALE** = `4`

If set, allows to copy the scale.

[TransformFlag](#enum-copytransformmodifier3d-transformflag) **TRANSFORM\_FLAG\_ALL** = `7`

If set, allows to copy the position/rotation/scale.

* * *

flags **AxisFlag**: [🔗](#enum-copytransformmodifier3d-axisflag)

[AxisFlag](#enum-copytransformmodifier3d-axisflag) **AXIS\_FLAG\_X** = `1`

If set, allows to process the X-axis.

[AxisFlag](#enum-copytransformmodifier3d-axisflag) **AXIS\_FLAG\_Y** = `2`

If set, allows to process the Y-axis.

[AxisFlag](#enum-copytransformmodifier3d-axisflag) **AXIS\_FLAG\_Z** = `4`

If set, allows to process the Z-axis.

[AxisFlag](#enum-copytransformmodifier3d-axisflag) **AXIS\_FLAG\_ALL** = `7`

If set, allows to process the all axes.

* * *

## Property Descriptions

[int](class_int.md#class-int) **setting\_count** = `0` [🔗](#class-copytransformmodifier3d-property-setting-count)

- void **set\_setting\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_setting\_count**()


The number of settings in the modifier.

* * *

## Method Descriptions

BitField\[ [AxisFlag](#enum-copytransformmodifier3d-axisflag)\] **get\_axis\_flags**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-get-axis-flags)

Returns the axis flags of the setting at `index`.

* * *

BitField\[ [TransformFlag](#enum-copytransformmodifier3d-transformflag)\] **get\_copy\_flags**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-get-copy-flags)

Returns the copy flags of the setting at `index`.

* * *

BitField\[ [AxisFlag](#enum-copytransformmodifier3d-axisflag)\] **get\_invert\_flags**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-get-invert-flags)

Returns the invert flags of the setting at `index`.

* * *

[bool](class_bool.md#class-bool) **is\_additive**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-additive)

Returns `true` if the additive option is enabled in the setting at `index`.

* * *

[bool](class_bool.md#class-bool) **is\_axis\_x\_enabled**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-axis-x-enabled)

Returns `true` if the enable flags has the flag for the X-axis in the setting at `index`. See also [set\_axis\_flags()](#class-copytransformmodifier3d-method-set-axis-flags).

* * *

[bool](class_bool.md#class-bool) **is\_axis\_x\_inverted**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-axis-x-inverted)

Returns `true` if the invert flags has the flag for the X-axis in the setting at `index`. See also [set\_invert\_flags()](#class-copytransformmodifier3d-method-set-invert-flags).

* * *

[bool](class_bool.md#class-bool) **is\_axis\_y\_enabled**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-axis-y-enabled)

Returns `true` if the enable flags has the flag for the Y-axis in the setting at `index`. See also [set\_axis\_flags()](#class-copytransformmodifier3d-method-set-axis-flags).

* * *

[bool](class_bool.md#class-bool) **is\_axis\_y\_inverted**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-axis-y-inverted)

Returns `true` if the invert flags has the flag for the Y-axis in the setting at `index`. See also [set\_invert\_flags()](#class-copytransformmodifier3d-method-set-invert-flags).

* * *

[bool](class_bool.md#class-bool) **is\_axis\_z\_enabled**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-axis-z-enabled)

Returns `true` if the enable flags has the flag for the Z-axis in the setting at `index`. See also [set\_axis\_flags()](#class-copytransformmodifier3d-method-set-axis-flags).

* * *

[bool](class_bool.md#class-bool) **is\_axis\_z\_inverted**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-axis-z-inverted)

Returns `true` if the invert flags has the flag for the Z-axis in the setting at `index`. See also [set\_invert\_flags()](#class-copytransformmodifier3d-method-set-invert-flags).

* * *

[bool](class_bool.md#class-bool) **is\_position\_copying**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-position-copying)

Returns `true` if the copy flags has the flag for the position in the setting at `index`. See also [set\_copy\_flags()](#class-copytransformmodifier3d-method-set-copy-flags).

* * *

[bool](class_bool.md#class-bool) **is\_relative**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-relative)

Returns `true` if the relative option is enabled in the setting at `index`.

* * *

[bool](class_bool.md#class-bool) **is\_rotation\_copying**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-rotation-copying)

Returns `true` if the copy flags has the flag for the rotation in the setting at `index`. See also [set\_copy\_flags()](#class-copytransformmodifier3d-method-set-copy-flags).

* * *

[bool](class_bool.md#class-bool) **is\_scale\_copying**(index: [int](class_int.md#class-int)) const [🔗](#class-copytransformmodifier3d-method-is-scale-copying)

Returns `true` if the copy flags has the flag for the scale in the setting at `index`. See also [set\_copy\_flags()](#class-copytransformmodifier3d-method-set-copy-flags).

* * *

void **set\_additive**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-additive)

Sets additive option in the setting at `index` to `enabled`. This mainly affects the process of applying transform to the [BoneConstraint3D.set\_apply\_bone()](class_boneconstraint3d.md#class-boneconstraint3d-method-set-apply-bone).

If sets `enabled` to `true`, the processed transform is added to the pose of the current apply bone.

If sets `enabled` to `false`, the pose of the current apply bone is replaced with the processed transform. However, if set [set\_relative()](#class-copytransformmodifier3d-method-set-relative) to `true`, the transform is relative to rest.

* * *

void **set\_axis\_flags**(index: [int](class_int.md#class-int), axis\_flags: BitField\[ [AxisFlag](#enum-copytransformmodifier3d-axisflag)\]) [🔗](#class-copytransformmodifier3d-method-set-axis-flags)

Sets the flags to copy axes. If the flag is valid, the axis is copied.

* * *

void **set\_axis\_x\_enabled**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-axis-x-enabled)

If sets `enabled` to `true`, the X-axis will be copied.

* * *

void **set\_axis\_x\_inverted**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-axis-x-inverted)

If sets `enabled` to `true`, the X-axis will be inverted.

* * *

void **set\_axis\_y\_enabled**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-axis-y-enabled)

If sets `enabled` to `true`, the Y-axis will be copied.

* * *

void **set\_axis\_y\_inverted**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-axis-y-inverted)

If sets `enabled` to `true`, the Y-axis will be inverted.

* * *

void **set\_axis\_z\_enabled**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-axis-z-enabled)

If sets `enabled` to `true`, the Z-axis will be copied.

* * *

void **set\_axis\_z\_inverted**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-axis-z-inverted)

If sets `enabled` to `true`, the Z-axis will be inverted.

* * *

void **set\_copy\_flags**(index: [int](class_int.md#class-int), copy\_flags: BitField\[ [TransformFlag](#enum-copytransformmodifier3d-transformflag)\]) [🔗](#class-copytransformmodifier3d-method-set-copy-flags)

Sets the flags to process the transform operations. If the flag is valid, the transform operation is processed.

**Note:** If the rotation is valid for only one axis, it respects the roll of the valid axis. If the rotation is valid for two axes, it discards the roll of the invalid axis.

* * *

void **set\_copy\_position**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-copy-position)

If sets `enabled` to `true`, the position will be copied.

* * *

void **set\_copy\_rotation**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-copy-rotation)

If sets `enabled` to `true`, the rotation will be copied.

* * *

void **set\_copy\_scale**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-copy-scale)

If sets `enabled` to `true`, the scale will be copied.

* * *

void **set\_invert\_flags**(index: [int](class_int.md#class-int), axis\_flags: BitField\[ [AxisFlag](#enum-copytransformmodifier3d-axisflag)\]) [🔗](#class-copytransformmodifier3d-method-set-invert-flags)

Sets the flags to inverte axes. If the flag is valid, the axis is copied.

**Note:** An inverted scale means an inverse number, not a negative scale. For example, inverting `2.0` means `0.5`.

**Note:** An inverted rotation flips the elements of the quaternion. For example, a two-axis inversion will flip the roll of each axis, and a three-axis inversion will flip the final orientation. However, be aware that flipping only one axis may cause unintended rotation by the unflipped axes, due to the characteristics of the quaternion.

* * *

void **set\_relative**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-copytransformmodifier3d-method-set-relative)

Sets relative option in the setting at `index` to `enabled`.

If sets `enabled` to `true`, the extracted and applying transform is relative to the rest.

If sets `enabled` to `false`, the extracted transform is absolute.

[Previous](class_converttransformmodifier3d.md "ConvertTransformModifier3D") [Next](class_cpuparticles2d.md "CPUParticles2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_converttransformmodifier3d.md "ConvertTransformModifier3D") [Next](class_cpuparticles2d.md "CPUParticles2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).