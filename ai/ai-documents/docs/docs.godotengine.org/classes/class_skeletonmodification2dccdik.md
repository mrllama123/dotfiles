---
title: SkeletonModification2DCCDIK — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonmodification2dccdik.html
crawled_at: "2026-08-13T10:32:56+12:00"
content_hash: 487b5fefae7a7f3bcc81ddf48de77c4b020394c909798cac213f0b02671274fb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonModification2DCCDIK

* * *

# SkeletonModification2DCCDIK

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A modification that uses CCDIK to manipulate a series of bones to reach a target in 2D.

## Description

This [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) uses an algorithm called Cyclic Coordinate Descent Inverse Kinematics, or CCDIK, to manipulate a chain of bones in a [Skeleton2D](class_skeleton2d.md#class-skeleton2d) so it reaches a defined target.

CCDIK works by rotating a set of bones, typically called a "bone chain", on a single axis. Each bone is rotated to face the target from the tip (by default), which over a chain of bones allow it to rotate properly to reach the target. Because the bones only rotate on a single axis, CCDIK _can_ look more robotic than other IK solvers.

**Note:** The CCDIK modifier has `ccdik_joints`, which are the data objects that hold the data for each joint in the CCDIK chain. This is different from a bone! CCDIK joints hold the data needed for each bone in the bone chain used by CCDIK.

CCDIK also fully supports angle constraints, allowing for more control over how a solution is met.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [ccdik\_data\_chain\_length](#class-skeletonmodification2dccdik-property-ccdik-data-chain-length) | `0` |
| [NodePath](class_nodepath.md#class-nodepath) | [target\_nodepath](#class-skeletonmodification2dccdik-property-target-nodepath) | `NodePath("")` |
| [NodePath](class_nodepath.md#class-nodepath) | [tip\_nodepath](#class-skeletonmodification2dccdik-property-tip-nodepath) | `NodePath("")` |

## Methods

|     |     |
| --- | --- |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_ccdik\_joint\_bone2d\_node](#class-skeletonmodification2dccdik-method-get-ccdik-joint-bone2d-node)(joint\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_ccdik\_joint\_bone\_index](#class-skeletonmodification2dccdik-method-get-ccdik-joint-bone-index)(joint\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_ccdik\_joint\_constraint\_angle\_invert](#class-skeletonmodification2dccdik-method-get-ccdik-joint-constraint-angle-invert)(joint\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_ccdik\_joint\_constraint\_angle\_max](#class-skeletonmodification2dccdik-method-get-ccdik-joint-constraint-angle-max)(joint\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_ccdik\_joint\_constraint\_angle\_min](#class-skeletonmodification2dccdik-method-get-ccdik-joint-constraint-angle-min)(joint\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_ccdik\_joint\_enable\_constraint](#class-skeletonmodification2dccdik-method-get-ccdik-joint-enable-constraint)(joint\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_ccdik\_joint\_rotate\_from\_joint](#class-skeletonmodification2dccdik-method-get-ccdik-joint-rotate-from-joint)(joint\_idx: [int](class_int.md#class-int)) const |
| void | [set\_ccdik\_joint\_bone2d\_node](#class-skeletonmodification2dccdik-method-set-ccdik-joint-bone2d-node)(joint\_idx: [int](class_int.md#class-int), bone2d\_nodepath: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [set\_ccdik\_joint\_bone\_index](#class-skeletonmodification2dccdik-method-set-ccdik-joint-bone-index)(joint\_idx: [int](class_int.md#class-int), bone\_idx: [int](class_int.md#class-int)) |
| void | [set\_ccdik\_joint\_constraint\_angle\_invert](#class-skeletonmodification2dccdik-method-set-ccdik-joint-constraint-angle-invert)(joint\_idx: [int](class_int.md#class-int), invert: [bool](class_bool.md#class-bool)) |
| void | [set\_ccdik\_joint\_constraint\_angle\_max](#class-skeletonmodification2dccdik-method-set-ccdik-joint-constraint-angle-max)(joint\_idx: [int](class_int.md#class-int), angle\_max: [float](class_float.md#class-float)) |
| void | [set\_ccdik\_joint\_constraint\_angle\_min](#class-skeletonmodification2dccdik-method-set-ccdik-joint-constraint-angle-min)(joint\_idx: [int](class_int.md#class-int), angle\_min: [float](class_float.md#class-float)) |
| void | [set\_ccdik\_joint\_enable\_constraint](#class-skeletonmodification2dccdik-method-set-ccdik-joint-enable-constraint)(joint\_idx: [int](class_int.md#class-int), enable\_constraint: [bool](class_bool.md#class-bool)) |
| void | [set\_ccdik\_joint\_rotate\_from\_joint](#class-skeletonmodification2dccdik-method-set-ccdik-joint-rotate-from-joint)(joint\_idx: [int](class_int.md#class-int), rotate\_from\_joint: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **ccdik\_data\_chain\_length** = `0` [🔗](#class-skeletonmodification2dccdik-property-ccdik-data-chain-length)

- void **set\_ccdik\_data\_chain\_length**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_ccdik\_data\_chain\_length**()


The number of CCDIK joints in the CCDIK modification.

* * *

[NodePath](class_nodepath.md#class-nodepath) **target\_nodepath** = `NodePath("")` [🔗](#class-skeletonmodification2dccdik-property-target-nodepath)

- void **set\_target\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_target\_node**()


The NodePath to the node that is the target for the CCDIK modification. This node is what the CCDIK chain will attempt to rotate the bone chain to.

* * *

[NodePath](class_nodepath.md#class-nodepath) **tip\_nodepath** = `NodePath("")` [🔗](#class-skeletonmodification2dccdik-property-tip-nodepath)

- void **set\_tip\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_tip\_node**()


The end position of the CCDIK chain. Typically, this should be a child of a [Bone2D](class_bone2d.md#class-bone2d) node attached to the final [Bone2D](class_bone2d.md#class-bone2d) in the CCDIK chain.

* * *

## Method Descriptions

[NodePath](class_nodepath.md#class-nodepath) **get\_ccdik\_joint\_bone2d\_node**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dccdik-method-get-ccdik-joint-bone2d-node)

Returns the [Bone2D](class_bone2d.md#class-bone2d) node assigned to the CCDIK joint at `joint_idx`.

* * *

[int](class_int.md#class-int) **get\_ccdik\_joint\_bone\_index**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dccdik-method-get-ccdik-joint-bone-index)

Returns the index of the [Bone2D](class_bone2d.md#class-bone2d) node assigned to the CCDIK joint at `joint_idx`.

* * *

[bool](class_bool.md#class-bool) **get\_ccdik\_joint\_constraint\_angle\_invert**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dccdik-method-get-ccdik-joint-constraint-angle-invert)

Returns whether the CCDIK joint at `joint_idx` uses an inverted joint constraint. See [set\_ccdik\_joint\_constraint\_angle\_invert()](#class-skeletonmodification2dccdik-method-set-ccdik-joint-constraint-angle-invert) for details.

* * *

[float](class_float.md#class-float) **get\_ccdik\_joint\_constraint\_angle\_max**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dccdik-method-get-ccdik-joint-constraint-angle-max)

Returns the maximum angle constraint for the joint at `joint_idx`.

* * *

[float](class_float.md#class-float) **get\_ccdik\_joint\_constraint\_angle\_min**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dccdik-method-get-ccdik-joint-constraint-angle-min)

Returns the minimum angle constraint for the joint at `joint_idx`.

* * *

[bool](class_bool.md#class-bool) **get\_ccdik\_joint\_enable\_constraint**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dccdik-method-get-ccdik-joint-enable-constraint)

Returns whether angle constraints on the CCDIK joint at `joint_idx` are enabled.

* * *

[bool](class_bool.md#class-bool) **get\_ccdik\_joint\_rotate\_from\_joint**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2dccdik-method-get-ccdik-joint-rotate-from-joint)

Returns whether the joint at `joint_idx` is set to rotate from the joint, `true`, or to rotate from the tip, `false`. The default is to rotate from the tip.

* * *

void **set\_ccdik\_joint\_bone2d\_node**(joint\_idx: [int](class_int.md#class-int), bone2d\_nodepath: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-skeletonmodification2dccdik-method-set-ccdik-joint-bone2d-node)

Sets the [Bone2D](class_bone2d.md#class-bone2d) node assigned to the CCDIK joint at `joint_idx`.

* * *

void **set\_ccdik\_joint\_bone\_index**(joint\_idx: [int](class_int.md#class-int), bone\_idx: [int](class_int.md#class-int)) [🔗](#class-skeletonmodification2dccdik-method-set-ccdik-joint-bone-index)

Sets the bone index, `bone_idx`, of the CCDIK joint at `joint_idx`. When possible, this will also update the `bone2d_node` of the CCDIK joint based on data provided by the linked skeleton.

* * *

void **set\_ccdik\_joint\_constraint\_angle\_invert**(joint\_idx: [int](class_int.md#class-int), invert: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2dccdik-method-set-ccdik-joint-constraint-angle-invert)

Sets whether the CCDIK joint at `joint_idx` uses an inverted joint constraint.

An inverted joint constraint only constraints the CCDIK joint to the angles _outside of_ the inputted minimum and maximum angles. For this reason, it is referred to as an inverted joint constraint, as it constraints the joint to the outside of the inputted values.

* * *

void **set\_ccdik\_joint\_constraint\_angle\_max**(joint\_idx: [int](class_int.md#class-int), angle\_max: [float](class_float.md#class-float)) [🔗](#class-skeletonmodification2dccdik-method-set-ccdik-joint-constraint-angle-max)

Sets the maximum angle constraint for the joint at `joint_idx`.

* * *

void **set\_ccdik\_joint\_constraint\_angle\_min**(joint\_idx: [int](class_int.md#class-int), angle\_min: [float](class_float.md#class-float)) [🔗](#class-skeletonmodification2dccdik-method-set-ccdik-joint-constraint-angle-min)

Sets the minimum angle constraint for the joint at `joint_idx`.

* * *

void **set\_ccdik\_joint\_enable\_constraint**(joint\_idx: [int](class_int.md#class-int), enable\_constraint: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2dccdik-method-set-ccdik-joint-enable-constraint)

Determines whether angle constraints on the CCDIK joint at `joint_idx` are enabled. When `true`, constraints will be enabled and taken into account when solving.

* * *

void **set\_ccdik\_joint\_rotate\_from\_joint**(joint\_idx: [int](class_int.md#class-int), rotate\_from\_joint: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2dccdik-method-set-ccdik-joint-rotate-from-joint)

Sets whether the joint at `joint_idx` is set to rotate from the joint, `true`, or to rotate from the tip, `false`.

[Previous](class_skeletonmodification2d.md "SkeletonModification2D") [Next](class_skeletonmodification2dfabrik.md "SkeletonModification2DFABRIK")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonmodification2d.md "SkeletonModification2D") [Next](class_skeletonmodification2dfabrik.md "SkeletonModification2DFABRIK")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).