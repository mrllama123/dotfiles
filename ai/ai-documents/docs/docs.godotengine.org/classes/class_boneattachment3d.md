---
title: BoneAttachment3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_boneattachment3d.html
crawled_at: "2026-08-13T10:29:03+12:00"
content_hash: a3845073e2ea6fded3a7192d550ab193986d431d4ad12a36c72966fdc0cb55de
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - BoneAttachment3D

* * *

# BoneAttachment3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

А node that dynamically copies or overrides the 3D transform of a bone in its parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d).

## Description

This node selects a bone in a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) and attaches to it. This means that the **BoneAttachment3D** node will either dynamically copy or override the 3D transform of the selected bone.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bone\_idx](#class-boneattachment3d-property-bone-idx) | `-1` |
| [String](class_string.md#class-string) | [bone\_name](#class-boneattachment3d-property-bone-name) | `""` |
| [NodePath](class_nodepath.md#class-nodepath) | [external\_skeleton](#class-boneattachment3d-property-external-skeleton) |  |
| [bool](class_bool.md#class-bool) | [override\_pose](#class-boneattachment3d-property-override-pose) | `false` |
| [PhysicsInterpolationMode](class_node.md#enum-node-physicsinterpolationmode) | physics\_interpolation\_mode | `2` (overrides [Node](class_node.md#class-node-property-physics-interpolation-mode)) |
| [bool](class_bool.md#class-bool) | [use\_external\_skeleton](#class-boneattachment3d-property-use-external-skeleton) | `false` |

## Methods

|     |     |
| --- | --- |
| [Skeleton3D](class_skeleton3d.md#class-skeleton3d) | [get\_skeleton](#class-boneattachment3d-method-get-skeleton)() |
| void | [on\_skeleton\_update](#class-boneattachment3d-method-on-skeleton-update)() |

* * *

## Property Descriptions

[int](class_int.md#class-int) **bone\_idx** = `-1` [🔗](#class-boneattachment3d-property-bone-idx)

- void **set\_bone\_idx**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bone\_idx**()


The index of the attached bone.

* * *

[String](class_string.md#class-string) **bone\_name** = `""` [🔗](#class-boneattachment3d-property-bone-name)

- void **set\_bone\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_bone\_name**()


The name of the attached bone.

* * *

[NodePath](class_nodepath.md#class-nodepath) **external\_skeleton** [🔗](#class-boneattachment3d-property-external-skeleton)

- void **set\_external\_skeleton**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_external\_skeleton**()


The [NodePath](class_nodepath.md#class-nodepath) to the external [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node.

* * *

[bool](class_bool.md#class-bool) **override\_pose** = `false` [🔗](#class-boneattachment3d-property-override-pose)

- void **set\_override\_pose**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_override\_pose**()


Whether the **BoneAttachment3D** node will override the bone pose of the bone it is attached to. When set to `true`, the **BoneAttachment3D** node can change the pose of the bone. When set to `false`, the **BoneAttachment3D** will always be set to the bone's transform.

**Note:** This override performs interruptively in the skeleton update process using signals due to the old design. It may cause unintended behavior when used at the same time with [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d).

* * *

[bool](class_bool.md#class-bool) **use\_external\_skeleton** = `false` [🔗](#class-boneattachment3d-property-use-external-skeleton)

- void **set\_use\_external\_skeleton**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_external\_skeleton**()


Whether the **BoneAttachment3D** node will use an external [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node rather than attempting to use its parent node as the [Skeleton3D](class_skeleton3d.md#class-skeleton3d). When set to `true`, the **BoneAttachment3D** node will use the external [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node set in [external\_skeleton](#class-boneattachment3d-property-external-skeleton).

* * *

## Method Descriptions

[Skeleton3D](class_skeleton3d.md#class-skeleton3d) **get\_skeleton**() [🔗](#class-boneattachment3d-method-get-skeleton)

Returns the parent or external [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node if it exists, otherwise returns `null`.

* * *

void **on\_skeleton\_update**() [🔗](#class-boneattachment3d-method-on-skeleton-update)

A function that is called automatically when the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) is updated. This function is where the **BoneAttachment3D** node updates its position so it is correctly bound when it is _not_ set to override the bone pose.

[Previous](class_bone2d.md "Bone2D") [Next](class_boneconstraint3d.md "BoneConstraint3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_bone2d.md "Bone2D") [Next](class_boneconstraint3d.md "BoneConstraint3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).