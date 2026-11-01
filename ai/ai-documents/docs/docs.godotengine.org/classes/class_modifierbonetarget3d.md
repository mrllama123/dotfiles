---
title: ModifierBoneTarget3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_modifierbonetarget3d.html
crawled_at: "2026-08-13T10:39:59+12:00"
content_hash: be1d5c917e0363e1f44534ba7fedcd87b7ff81c247480e517a08fe7c63bb976f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ModifierBoneTarget3D

* * *

# ModifierBoneTarget3D

**Inherits:** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

А node that dynamically copies the 3D transform of a bone in its parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d).

## Description

This node selects a bone in a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) and attaches to it. This means that the **ModifierBoneTarget3D** node will dynamically copy the 3D transform of the selected bone.

The functionality is similar to [BoneAttachment3D](class_boneattachment3d.md#class-boneattachment3d), but this node adopts the [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) cycle and is intended to be used as another [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d)'s target.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bone](#class-modifierbonetarget3d-property-bone) | `-1` |
| [String](class_string.md#class-string) | [bone\_name](#class-modifierbonetarget3d-property-bone-name) | `""` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **bone** = `-1` [🔗](#class-modifierbonetarget3d-property-bone)

- void **set\_bone**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bone**()


The index of the attached bone.

* * *

[String](class_string.md#class-string) **bone\_name** = `""` [🔗](#class-modifierbonetarget3d-property-bone-name)

- void **set\_bone\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_bone\_name**()


The name of the attached bone.

[Previous](class_missingnode.md "MissingNode") [Next](class_multimeshinstance2d.md "MultiMeshInstance2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_missingnode.md "MissingNode") [Next](class_multimeshinstance2d.md "MultiMeshInstance2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).