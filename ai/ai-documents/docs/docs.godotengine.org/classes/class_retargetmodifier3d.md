---
title: RetargetModifier3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_retargetmodifier3d.html
crawled_at: "2026-08-13T10:42:36+12:00"
content_hash: 8ecbc5f06058e41f6ad3eb19fef3bfb011aedd3ddf0c8caa3c719450c2325e43
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RetargetModifier3D

* * *

# RetargetModifier3D

**Inherits:** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A modifier to transfer parent skeleton poses (or global poses) to child skeletons in model space with different rests.

## Description

Retrieves the pose (or global pose) relative to the parent Skeleton's rest in model space and transfers it to the child Skeleton.

This modifier rewrites the pose of the child skeleton directly in the parent skeleton's update process. This means that it overwrites the mapped bone pose set in the normal process on the target skeleton. If you want to set the target skeleton bone pose after retargeting, you will need to add a [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) child to the target skeleton and thereby modify the pose.

**Note:** When the [use\_global\_pose](#class-retargetmodifier3d-property-use-global-pose) is enabled, even if it is an unmapped bone, it can cause visual problems because the global pose is applied ignoring the parent bone's pose **if it has mapped bone children**. See also [use\_global\_pose](#class-retargetmodifier3d-property-use-global-pose).

## Properties

|     |     |     |
| --- | --- | --- |
| BitField\[ [TransformFlag](#enum-retargetmodifier3d-transformflag)\] | [enable](#class-retargetmodifier3d-property-enable) | `7` |
| [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) | [profile](#class-retargetmodifier3d-property-profile) |  |
| [bool](class_bool.md#class-bool) | [use\_global\_pose](#class-retargetmodifier3d-property-use-global-pose) | `false` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [is\_position\_enabled](#class-retargetmodifier3d-method-is-position-enabled)() const |
| [bool](class_bool.md#class-bool) | [is\_rotation\_enabled](#class-retargetmodifier3d-method-is-rotation-enabled)() const |
| [bool](class_bool.md#class-bool) | [is\_scale\_enabled](#class-retargetmodifier3d-method-is-scale-enabled)() const |
| void | [set\_position\_enabled](#class-retargetmodifier3d-method-set-position-enabled)(enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_rotation\_enabled](#class-retargetmodifier3d-method-set-rotation-enabled)(enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_scale\_enabled](#class-retargetmodifier3d-method-set-scale-enabled)(enabled: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

flags **TransformFlag**: [🔗](#enum-retargetmodifier3d-transformflag)

[TransformFlag](#enum-retargetmodifier3d-transformflag) **TRANSFORM\_FLAG\_POSITION** = `1`

If set, allows to retarget the position.

[TransformFlag](#enum-retargetmodifier3d-transformflag) **TRANSFORM\_FLAG\_ROTATION** = `2`

If set, allows to retarget the rotation.

[TransformFlag](#enum-retargetmodifier3d-transformflag) **TRANSFORM\_FLAG\_SCALE** = `4`

If set, allows to retarget the scale.

[TransformFlag](#enum-retargetmodifier3d-transformflag) **TRANSFORM\_FLAG\_ALL** = `7`

If set, allows to retarget the position/rotation/scale.

* * *

## Property Descriptions

BitField\[ [TransformFlag](#enum-retargetmodifier3d-transformflag)\] **enable** = `7` [🔗](#class-retargetmodifier3d-property-enable)

- void **set\_enable\_flags**(value: BitField\[ [TransformFlag](#enum-retargetmodifier3d-transformflag)\])

- BitField\[ [TransformFlag](#enum-retargetmodifier3d-transformflag)\] **get\_enable\_flags**()


Flags to control the process of the transform elements individually when [use\_global\_pose](#class-retargetmodifier3d-property-use-global-pose) is disabled.

* * *

[SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) **profile** [🔗](#class-retargetmodifier3d-property-profile)

- void **set\_profile**(value: [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile))

- [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) **get\_profile**()


[SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) for retargeting bones with names matching the bone list.

* * *

[bool](class_bool.md#class-bool) **use\_global\_pose** = `false` [🔗](#class-retargetmodifier3d-property-use-global-pose)

- void **set\_use\_global\_pose**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_global\_pose**()


If `false`, in case the target skeleton has fewer bones than the source skeleton, the source bone parent's transform will be ignored.

Instead, it is possible to retarget between models with different body shapes, and position, rotation, and scale can be retargeted separately.

If `true`, retargeting is performed taking into account global pose.

In case the target skeleton has fewer bones than the source skeleton, the source bone parent's transform is taken into account. However, bone length between skeletons must match exactly, if not, the bones will be forced to expand or shrink.

This is useful for using dummy bone with length `0` to match postures when retargeting between models with different number of bones.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **is\_position\_enabled**() const [🔗](#class-retargetmodifier3d-method-is-position-enabled)

Returns `true` if [enable](#class-retargetmodifier3d-property-enable) has [TRANSFORM\_FLAG\_POSITION](#class-retargetmodifier3d-constant-transform-flag-position).

* * *

[bool](class_bool.md#class-bool) **is\_rotation\_enabled**() const [🔗](#class-retargetmodifier3d-method-is-rotation-enabled)

Returns `true` if [enable](#class-retargetmodifier3d-property-enable) has [TRANSFORM\_FLAG\_ROTATION](#class-retargetmodifier3d-constant-transform-flag-rotation).

* * *

[bool](class_bool.md#class-bool) **is\_scale\_enabled**() const [🔗](#class-retargetmodifier3d-method-is-scale-enabled)

Returns `true` if [enable](#class-retargetmodifier3d-property-enable) has [TRANSFORM\_FLAG\_SCALE](#class-retargetmodifier3d-constant-transform-flag-scale).

* * *

void **set\_position\_enabled**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-retargetmodifier3d-method-set-position-enabled)

Sets [TRANSFORM\_FLAG\_POSITION](#class-retargetmodifier3d-constant-transform-flag-position) into [enable](#class-retargetmodifier3d-property-enable).

* * *

void **set\_rotation\_enabled**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-retargetmodifier3d-method-set-rotation-enabled)

Sets [TRANSFORM\_FLAG\_ROTATION](#class-retargetmodifier3d-constant-transform-flag-rotation) into [enable](#class-retargetmodifier3d-property-enable).

* * *

void **set\_scale\_enabled**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-retargetmodifier3d-method-set-scale-enabled)

Sets [TRANSFORM\_FLAG\_SCALE](#class-retargetmodifier3d-constant-transform-flag-scale) into [enable](#class-retargetmodifier3d-property-enable).

[Previous](class_resourcepreloader.md "ResourcePreloader") [Next](class_richtextlabel.md "RichTextLabel")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourcepreloader.md "ResourcePreloader") [Next](class_richtextlabel.md "RichTextLabel")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).