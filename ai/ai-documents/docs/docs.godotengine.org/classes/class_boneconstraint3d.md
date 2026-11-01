---
title: BoneConstraint3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_boneconstraint3d.html
crawled_at: "2026-08-13T10:30:28+12:00"
content_hash: 202fc21ed47e8242cbf6a8abc579b1ae483020ea1e1a534621023577c1964ffa
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - BoneConstraint3D

* * *

# BoneConstraint3D

**Inherits:** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [AimModifier3D](class_aimmodifier3d.md#class-aimmodifier3d), [ConvertTransformModifier3D](class_converttransformmodifier3d.md#class-converttransformmodifier3d), [CopyTransformModifier3D](class_copytransformmodifier3d.md#class-copytransformmodifier3d)

A node that may modify Skeleton3D's bone with associating the two bones.

## Description

Base class of [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) that modifies the bone set in [set\_apply\_bone()](#class-boneconstraint3d-method-set-apply-bone) based on the transform of the bone retrieved by [get\_reference\_bone()](#class-boneconstraint3d-method-get-reference-bone).

## Methods

|     |     |
| --- | --- |
| void | [clear\_setting](#class-boneconstraint3d-method-clear-setting)() |
| [float](class_float.md#class-float) | [get\_amount](#class-boneconstraint3d-method-get-amount)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_apply\_bone](#class-boneconstraint3d-method-get-apply-bone)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_apply\_bone\_name](#class-boneconstraint3d-method-get-apply-bone-name)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_reference\_bone](#class-boneconstraint3d-method-get-reference-bone)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_reference\_bone\_name](#class-boneconstraint3d-method-get-reference-bone-name)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_setting\_count](#class-boneconstraint3d-method-get-setting-count)() const |
| void | [set\_amount](#class-boneconstraint3d-method-set-amount)(index: [int](class_int.md#class-int), amount: [float](class_float.md#class-float)) |
| void | [set\_apply\_bone](#class-boneconstraint3d-method-set-apply-bone)(index: [int](class_int.md#class-int), bone: [int](class_int.md#class-int)) |
| void | [set\_apply\_bone\_name](#class-boneconstraint3d-method-set-apply-bone-name)(index: [int](class_int.md#class-int), bone\_name: [String](class_string.md#class-string)) |
| void | [set\_reference\_bone](#class-boneconstraint3d-method-set-reference-bone)(index: [int](class_int.md#class-int), bone: [int](class_int.md#class-int)) |
| void | [set\_reference\_bone\_name](#class-boneconstraint3d-method-set-reference-bone-name)(index: [int](class_int.md#class-int), bone\_name: [String](class_string.md#class-string)) |
| void | [set\_setting\_count](#class-boneconstraint3d-method-set-setting-count)(count: [int](class_int.md#class-int)) |

* * *

## Method Descriptions

void **clear\_setting**() [🔗](#class-boneconstraint3d-method-clear-setting)

Clear all settings.

* * *

[float](class_float.md#class-float) **get\_amount**(index: [int](class_int.md#class-int)) const [🔗](#class-boneconstraint3d-method-get-amount)

Returns the apply amount of the setting at `index`.

* * *

[int](class_int.md#class-int) **get\_apply\_bone**(index: [int](class_int.md#class-int)) const [🔗](#class-boneconstraint3d-method-get-apply-bone)

Returns the apply bone of the setting at `index`. This bone will be modified.

* * *

[String](class_string.md#class-string) **get\_apply\_bone\_name**(index: [int](class_int.md#class-int)) const [🔗](#class-boneconstraint3d-method-get-apply-bone-name)

Returns the apply bone name of the setting at `index`. This bone will be modified.

* * *

[int](class_int.md#class-int) **get\_reference\_bone**(index: [int](class_int.md#class-int)) const [🔗](#class-boneconstraint3d-method-get-reference-bone)

Returns the reference bone of the setting at `index`.

This bone will be only referenced and not modified by this modifier.

* * *

[String](class_string.md#class-string) **get\_reference\_bone\_name**(index: [int](class_int.md#class-int)) const [🔗](#class-boneconstraint3d-method-get-reference-bone-name)

Returns the reference bone name of the setting at `index`.

This bone will be only referenced and not modified by this modifier.

* * *

[int](class_int.md#class-int) **get\_setting\_count**() const [🔗](#class-boneconstraint3d-method-get-setting-count)

Returns the number of settings in the modifier.

* * *

void **set\_amount**(index: [int](class_int.md#class-int), amount: [float](class_float.md#class-float)) [🔗](#class-boneconstraint3d-method-set-amount)

Sets the apply amount of the setting at `index` to `amount`.

* * *

void **set\_apply\_bone**(index: [int](class_int.md#class-int), bone: [int](class_int.md#class-int)) [🔗](#class-boneconstraint3d-method-set-apply-bone)

Sets the apply bone of the setting at `index` to `bone`. This bone will be modified.

* * *

void **set\_apply\_bone\_name**(index: [int](class_int.md#class-int), bone\_name: [String](class_string.md#class-string)) [🔗](#class-boneconstraint3d-method-set-apply-bone-name)

Sets the apply bone of the setting at `index` to `bone_name`. This bone will be modified.

* * *

void **set\_reference\_bone**(index: [int](class_int.md#class-int), bone: [int](class_int.md#class-int)) [🔗](#class-boneconstraint3d-method-set-reference-bone)

Sets the reference bone of the setting at `index` to `bone`.

This bone will be only referenced and not modified by this modifier.

* * *

void **set\_reference\_bone\_name**(index: [int](class_int.md#class-int), bone\_name: [String](class_string.md#class-string)) [🔗](#class-boneconstraint3d-method-set-reference-bone-name)

Sets the reference bone of the setting at `index` to `bone_name`.

This bone will be only referenced and not modified by this modifier.

* * *

void **set\_setting\_count**(count: [int](class_int.md#class-int)) [🔗](#class-boneconstraint3d-method-set-setting-count)

Sets the number of settings in the modifier.

[Previous](class_boneattachment3d.md "BoneAttachment3D") [Next](class_boxcontainer.md "BoxContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_boneattachment3d.md "BoneAttachment3D") [Next](class_boxcontainer.md "BoxContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).