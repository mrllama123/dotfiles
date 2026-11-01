---
title: SkeletonModification2DFABRIK — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonmodification2dfabrik.html
crawled_at: "2026-08-13T10:31:39+12:00"
content_hash: 373034d0ba1ea6c6dbe6e6f0311faa4c8440577581f3539ed6f28dbb1f424dbd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonModification2DFABRIK

* * *

# SkeletonModification2DFABRIK

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A modification that uses FABRIK to manipulate a series of [Bone2D](class_bone2d.md#class-bone2d) nodes to reach a target.

## Description

This [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) uses an algorithm called Forward And Backward Reaching Inverse Kinematics, or FABRIK, to rotate a bone chain so that it reaches a target.

FABRIK works by knowing the positions and lengths of a series of bones, typically called a "bone chain". It first starts by running a forward pass, which places the final bone at the target's position. Then all other bones are moved towards the tip bone, so they stay at the defined bone length away. Then a backwards pass is performed, where the root/first bone in the FABRIK chain is placed back at the origin. Then all other bones are moved so they stay at the defined bone length away. This positions the bone chain so that it reaches the target when possible, but all of the bones stay the correct length away from each other.

Because of how FABRIK works, it often gives more natural results than those seen in [SkeletonModification2DCCDIK](class_skeletonmodification2dccdik.md#class-skeletonmodification2dccdik).

**Note:** The FABRIK modifier has `fabrik_joints`, which are the data objects that hold the data for each joint in the FABRIK chain. This is different from [Bone2D](class_bone2d.md#class-bone2d) nodes! FABRIK joints hold the data needed for each [Bone2D](class_bone2d.md#class-bone2d) in the bone chain used by FABRIK.

To help control how the FABRIK joints move, a magnet vector can be passed, which can nudge the bones in a certain direction prior to solving, giving a level of control over the final result.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [fabrik\_data\_chain\_length](#class-skeletonmodification2dfabrik-property-fabrik-data-chain-length) | `0` |
| [NodePath](class_nodepath.md#class-nodepath) | [target\_nodepath](#class-skeletonmodification2dfabrik-property-target-nodepath) | `NodePath("")` |

## Methods

|     |     |
| --- | --- |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_fabrik\_joint\_bone2d\_node](#class-skeletonmodification2dfabrik-method-get-fabrik-joint-bone2d-node)(joint\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_fabrik\_joint\_bone\_index](#class-skeletonmodification2dfabrik-method-get-fabrik-joint-bone-index)(joint\_idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_fabrik\_joint\_magnet\_position](#class-skeletonmodification2dfabrik-method-get-fabrik-joint-magnet-position)(joint\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_fabrik\_joint\_use\_target\_rotation](#class-skeletonmodification2dfabrik-method-get-fabrik-joint-use-target-rotation)(joint\_idx: [int](class_int.md#class-int)) const |
| void | [set\_fabrik\_joint\_bone2d\_node](#class-skeletonmodification2dfabrik-method-set-fabrik-joint-bone2d-node)(joint\_idx: [int](class_int.md#class-int), bone2d\_nodepath: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [set\_fabrik\_joint\_bone\_index](#class-skeletonmodification2dfabrik-method-set-fabrik-joint-bone-index)(joint\_idx: [int](class_int.md#class-int), bone\_idx: [int](class_int.md#class-int)) |
| void | [set\_fabrik\_joint\_magnet\_position](#class-skeletonmodification2dfabrik-method-set-fabrik-joint-magnet-position)(joint\_idx: [int](class_int.md#class-int), magnet\_position: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_fabrik\_joint\_use\_target\_rotation](#class-skeletonmodification2dfabrik-method-set-fabrik-joint-use-target-rotation)(joint\_idx: [int](class_int.md#class-int), use\_target\_rotation: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **fabrik\_data\_chain\_length** = `0` [🔗](#class-skeletonmodification2dfabrik-property-fabrik-data-chain-length)

- void **set\_fabrik\_data\_chain\_length**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fabrik\_data\_chain\_length**()


The number of FABRIK joints in the FABRIK modification.

* * *

[NodePath](class_nodepath.md#class-nodepath) **target\_nodepath** = `NodePath("")` [🔗](#class-skeletonmodification2dfabrik-property-target-nodepath)

- void **set\_target\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_target\_node**()


The NodePath to the node that is the target for the FABRIK modification. This node is what the FABRIK chain will attempt to rotate the bone chain to.

* * *

## Method Descriptions

[NodePath](class_nodepath.md#class-nodepath) **get\_fabrik\_joint\_bone2d\_node**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dfabrik-method-get-fabrik-joint-bone2d-node)

Returns the [Bone2D](class_bone2d.md#class-bone2d) node assigned to the FABRIK joint at `joint_idx`.

* * *

[int](class_int.md#class-int) **get\_fabrik\_joint\_bone\_index**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dfabrik-method-get-fabrik-joint-bone-index)

Returns the index of the [Bone2D](class_bone2d.md#class-bone2d) node assigned to the FABRIK joint at `joint_idx`.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_fabrik\_joint\_magnet\_position**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dfabrik-method-get-fabrik-joint-magnet-position)

Returns the magnet position vector for the joint at `joint_idx`.

* * *

[bool](class_bool.md#class-bool) **get\_fabrik\_joint\_use\_target\_rotation**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dfabrik-method-get-fabrik-joint-use-target-rotation)

Returns whether the joint is using the target's rotation rather than allowing FABRIK to rotate the joint. This option only applies to the tip/final joint in the chain.

* * *

void **set\_fabrik\_joint\_bone2d\_node**(joint\_idx: [int](class_int.md#class-int), bone2d\_nodepath: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-skeletonmodification2dfabrik-method-set-fabrik-joint-bone2d-node)

Sets the [Bone2D](class_bone2d.md#class-bone2d) node assigned to the FABRIK joint at `joint_idx`.

* * *

void **set\_fabrik\_joint\_bone\_index**(joint\_idx: [int](class_int.md#class-int), bone\_idx: [int](class_int.md#class-int)) [🔗](#class-skeletonmodification2dfabrik-method-set-fabrik-joint-bone-index)

Sets the bone index, `bone_idx`, of the FABRIK joint at `joint_idx`. When possible, this will also update the `bone2d_node` of the FABRIK joint based on data provided by the linked skeleton.

* * *

void **set\_fabrik\_joint\_magnet\_position**(joint\_idx: [int](class_int.md#class-int), magnet\_position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-skeletonmodification2dfabrik-method-set-fabrik-joint-magnet-position)

Sets the magnet position vector for the joint at `joint_idx`.

* * *

void **set\_fabrik\_joint\_use\_target\_rotation**(joint\_idx: [int](class_int.md#class-int), use\_target\_rotation: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2dfabrik-method-set-fabrik-joint-use-target-rotation)

Sets whether the joint at `joint_idx` will use the target node's rotation rather than letting FABRIK rotate the node.

**Note:** This option only works for the tip/final joint in the chain. For all other nodes, this option will be ignored.

[Previous](class_skeletonmodification2dccdik.md "SkeletonModification2DCCDIK") [Next](class_skeletonmodification2djiggle.md "SkeletonModification2DJiggle")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonmodification2dccdik.md "SkeletonModification2DCCDIK") [Next](class_skeletonmodification2djiggle.md "SkeletonModification2DJiggle")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).