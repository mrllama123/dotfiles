---
title: Skeleton2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeleton2d.html
crawled_at: "2026-08-13T10:35:07+12:00"
content_hash: 569f0fd3761b1f66d3739f74ec4f2bf69fbfa0825e783122a0c997b148790498
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Skeleton2D

* * *

# Skeleton2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

The parent of a hierarchy of [Bone2D](class_bone2d.md#class-bone2d) s, used to create a 2D skeletal animation.

## Description

**Skeleton2D** parents a hierarchy of [Bone2D](class_bone2d.md#class-bone2d) nodes. It holds a reference to each [Bone2D](class_bone2d.md#class-bone2d)'s rest pose and acts as a single point of access to its bones.

To set up different types of inverse kinematics for the given Skeleton2D, a [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) should be created. The inverse kinematics be applied by increasing [SkeletonModificationStack2D.modification\_count](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d-property-modification-count) and creating the desired number of modifications.

## Tutorials

- [2D skeletons](../tutorials/animation/2d_skeletons.md)


## Methods

|     |     |
| --- | --- |
| void | [execute\_modifications](#class-skeleton2d-method-execute-modifications)(delta: [float](class_float.md#class-float), execution\_mode: [int](class_int.md#class-int)) |
| [Bone2D](class_bone2d.md#class-bone2d) | [get\_bone](#class-skeleton2d-method-get-bone)(idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_bone\_count](#class-skeleton2d-method-get-bone-count)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_bone\_local\_pose\_override](#class-skeleton2d-method-get-bone-local-pose-override)(bone\_idx: [int](class_int.md#class-int)) |
| [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) | [get\_modification\_stack](#class-skeleton2d-method-get-modification-stack)() const |
| [RID](class_rid.md#class-rid) | [get\_skeleton](#class-skeleton2d-method-get-skeleton)() const |
| void | [set\_bone\_local\_pose\_override](#class-skeleton2d-method-set-bone-local-pose-override)(bone\_idx: [int](class_int.md#class-int), override\_pose: [Transform2D](class_transform2d.md#class-transform2d), strength: [float](class_float.md#class-float), persistent: [bool](class_bool.md#class-bool)) |
| void | [set\_modification\_stack](#class-skeleton2d-method-set-modification-stack)(modification\_stack: [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d)) |

* * *

## Signals

**bone\_setup\_changed**() [🔗](#class-skeleton2d-signal-bone-setup-changed)

Emitted when the [Bone2D](class_bone2d.md#class-bone2d) setup attached to this skeletons changes. This is primarily used internally within the skeleton.

* * *

## Method Descriptions

void **execute\_modifications**(delta: [float](class_float.md#class-float), execution\_mode: [int](class_int.md#class-int)) [🔗](#class-skeleton2d-method-execute-modifications)

Executes all the modifications on the [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d), if the Skeleton2D has one assigned.

* * *

[Bone2D](class_bone2d.md#class-bone2d) **get\_bone**(idx: [int](class_int.md#class-int)) [🔗](#class-skeleton2d-method-get-bone)

Returns a [Bone2D](class_bone2d.md#class-bone2d) from the node hierarchy parented by Skeleton2D. The object to return is identified by the parameter `idx`. Bones are indexed by descending the node hierarchy from top to bottom, adding the children of each branch before moving to the next sibling.

* * *

[int](class_int.md#class-int) **get\_bone\_count**() const [🔗](#class-skeleton2d-method-get-bone-count)

Returns the number of [Bone2D](class_bone2d.md#class-bone2d) nodes in the node hierarchy parented by Skeleton2D.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_bone\_local\_pose\_override**(bone\_idx: [int](class_int.md#class-int)) [🔗](#class-skeleton2d-method-get-bone-local-pose-override)

Returns the local pose override transform for `bone_idx`.

* * *

[SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) **get\_modification\_stack**() const [🔗](#class-skeleton2d-method-get-modification-stack)

Returns the [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) attached to this skeleton, if one exists.

* * *

[RID](class_rid.md#class-rid) **get\_skeleton**() const [🔗](#class-skeleton2d-method-get-skeleton)

Returns the [RID](class_rid.md#class-rid) of a Skeleton2D instance.

* * *

void **set\_bone\_local\_pose\_override**(bone\_idx: [int](class_int.md#class-int), override\_pose: [Transform2D](class_transform2d.md#class-transform2d), strength: [float](class_float.md#class-float), persistent: [bool](class_bool.md#class-bool)) [🔗](#class-skeleton2d-method-set-bone-local-pose-override)

Sets the local pose transform, `override_pose`, for the bone at `bone_idx`.

`strength` is the interpolation strength that will be used when applying the pose, and `persistent` determines if the applied pose will remain.

**Note:** The pose transform needs to be a local transform relative to the [Bone2D](class_bone2d.md#class-bone2d) node at `bone_idx`!

* * *

void **set\_modification\_stack**(modification\_stack: [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d)) [🔗](#class-skeleton2d-method-set-modification-stack)

Sets the [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) attached to this skeleton.

[Previous](class_shapecast3d.md "ShapeCast3D") [Next](class_skeleton3d.md "Skeleton3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_shapecast3d.md "ShapeCast3D") [Next](class_skeleton3d.md "Skeleton3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).