---
title: SkeletonModification2DPhysicalBones — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonmodification2dphysicalbones.html
crawled_at: "2026-08-13T10:24:00+12:00"
content_hash: d19479482833c6dadc20c24f8309ff8a2834c1680395562f509f635a0bdc826b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonModification2DPhysicalBones

* * *

# SkeletonModification2DPhysicalBones

**Experimental:** Physical bones may be changed in the future to perform the position update of [Bone2D](class_bone2d.md#class-bone2d) on their own, without needing this resource.

**Inherits:** [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A modification that applies the transforms of [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) nodes to [Bone2D](class_bone2d.md#class-bone2d) nodes.

## Description

This modification takes the transforms of [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) nodes and applies them to [Bone2D](class_bone2d.md#class-bone2d) nodes. This allows the [Bone2D](class_bone2d.md#class-bone2d) nodes to react to physics thanks to the linked [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) nodes.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [physical\_bone\_chain\_length](#class-skeletonmodification2dphysicalbones-property-physical-bone-chain-length) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [fetch\_physical\_bones](#class-skeletonmodification2dphysicalbones-method-fetch-physical-bones)() |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_physical\_bone\_node](#class-skeletonmodification2dphysicalbones-method-get-physical-bone-node)(joint\_idx: [int](class_int.md#class-int)) const |
| void | [set\_physical\_bone\_node](#class-skeletonmodification2dphysicalbones-method-set-physical-bone-node)(joint\_idx: [int](class_int.md#class-int), physicalbone2d\_node: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [start\_simulation](#class-skeletonmodification2dphysicalbones-method-start-simulation)(bones: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) |
| void | [stop\_simulation](#class-skeletonmodification2dphysicalbones-method-stop-simulation)(bones: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **physical\_bone\_chain\_length** = `0` [🔗](#class-skeletonmodification2dphysicalbones-property-physical-bone-chain-length)

- void **set\_physical\_bone\_chain\_length**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_physical\_bone\_chain\_length**()


The number of [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) nodes linked in this modification.

* * *

## Method Descriptions

void **fetch\_physical\_bones**() [🔗](#class-skeletonmodification2dphysicalbones-method-fetch-physical-bones)

Empties the list of [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) nodes and populates it with all [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) nodes that are children of the [Skeleton2D](class_skeleton2d.md#class-skeleton2d).

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_physical\_bone\_node**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dphysicalbones-method-get-physical-bone-node)

Returns the [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) node at `joint_idx`.

* * *

void **set\_physical\_bone\_node**(joint\_idx: [int](class_int.md#class-int), physicalbone2d\_node: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-skeletonmodification2dphysicalbones-method-set-physical-bone-node)

Sets the [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) node at `joint_idx`.

**Note:** This is just the index used for this modification, not the bone index used in the [Skeleton2D](class_skeleton2d.md#class-skeleton2d).

* * *

void **start\_simulation**(bones: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) [🔗](#class-skeletonmodification2dphysicalbones-method-start-simulation)

Tell the [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) nodes to start simulating and interacting with the physics world.

Optionally, an array of bone names can be passed to this function, and that will cause only [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) nodes with those names to start simulating.

* * *

void **stop\_simulation**(bones: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) [🔗](#class-skeletonmodification2dphysicalbones-method-stop-simulation)

Tell the [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) nodes to stop simulating and interacting with the physics world.

Optionally, an array of bone names can be passed to this function, and that will cause only [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d) nodes with those names to stop simulating.

[Previous](class_skeletonmodification2dlookat.md "SkeletonModification2DLookAt") [Next](class_skeletonmodification2dstackholder.md "SkeletonModification2DStackHolder")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonmodification2dlookat.md "SkeletonModification2DLookAt") [Next](class_skeletonmodification2dstackholder.md "SkeletonModification2DStackHolder")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).