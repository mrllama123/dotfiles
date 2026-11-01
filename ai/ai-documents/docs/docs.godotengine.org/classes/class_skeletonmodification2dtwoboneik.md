---
title: SkeletonModification2DTwoBoneIK — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonmodification2dtwoboneik.html
crawled_at: "2026-08-13T10:23:59+12:00"
content_hash: 087896e2d02072db0c57094ef3dc95666d256166da08a993544e2944c51412d4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonModification2DTwoBoneIK

* * *

# SkeletonModification2DTwoBoneIK

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A modification that rotates two bones using the law of cosines to reach the target.

## Description

This [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) uses an algorithm typically called TwoBoneIK. This algorithm works by leveraging the law of cosines and the lengths of the bones to figure out what rotation the bones currently have, and what rotation they need to make a complete triangle, where the first bone, the second bone, and the target form the three vertices of the triangle. Because the algorithm works by making a triangle, it can only operate on two bones.

TwoBoneIK is great for arms, legs, and really any joints that can be represented by just two bones that bend to reach a target. This solver is more lightweight than [SkeletonModification2DFABRIK](class_skeletonmodification2dfabrik.md#class-skeletonmodification2dfabrik), but gives similar, natural looking results.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [flip\_bend\_direction](#class-skeletonmodification2dtwoboneik-property-flip-bend-direction) | `false` |
| [float](class_float.md#class-float) | [target\_maximum\_distance](#class-skeletonmodification2dtwoboneik-property-target-maximum-distance) | `0.0` |
| [float](class_float.md#class-float) | [target\_minimum\_distance](#class-skeletonmodification2dtwoboneik-property-target-minimum-distance) | `0.0` |
| [NodePath](class_nodepath.md#class-nodepath) | [target\_nodepath](#class-skeletonmodification2dtwoboneik-property-target-nodepath) | `NodePath("")` |

## Methods

|     |     |
| --- | --- |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_joint\_one\_bone2d\_node](#class-skeletonmodification2dtwoboneik-method-get-joint-one-bone2d-node)() const |
| [int](class_int.md#class-int) | [get\_joint\_one\_bone\_idx](#class-skeletonmodification2dtwoboneik-method-get-joint-one-bone-idx)() const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_joint\_two\_bone2d\_node](#class-skeletonmodification2dtwoboneik-method-get-joint-two-bone2d-node)() const |
| [int](class_int.md#class-int) | [get\_joint\_two\_bone\_idx](#class-skeletonmodification2dtwoboneik-method-get-joint-two-bone-idx)() const |
| void | [set\_joint\_one\_bone2d\_node](#class-skeletonmodification2dtwoboneik-method-set-joint-one-bone2d-node)(bone2d\_node: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [set\_joint\_one\_bone\_idx](#class-skeletonmodification2dtwoboneik-method-set-joint-one-bone-idx)(bone\_idx: [int](class_int.md#class-int)) |
| void | [set\_joint\_two\_bone2d\_node](#class-skeletonmodification2dtwoboneik-method-set-joint-two-bone2d-node)(bone2d\_node: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [set\_joint\_two\_bone\_idx](#class-skeletonmodification2dtwoboneik-method-set-joint-two-bone-idx)(bone\_idx: [int](class_int.md#class-int)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **flip\_bend\_direction** = `false` [🔗](#class-skeletonmodification2dtwoboneik-property-flip-bend-direction)

- void **set\_flip\_bend\_direction**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flip\_bend\_direction**()


If `true`, the bones in the modification will bend outward as opposed to inwards when contracting. If `false`, the bones will bend inwards when contracting.

* * *

[float](class_float.md#class-float) **target\_maximum\_distance** = `0.0` [🔗](#class-skeletonmodification2dtwoboneik-property-target-maximum-distance)

- void **set\_target\_maximum\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_target\_maximum\_distance**()


The maximum distance the target can be at. If the target is farther than this distance, the modification will solve as if it's at this maximum distance. When set to `0`, the modification will solve without distance constraints.

* * *

[float](class_float.md#class-float) **target\_minimum\_distance** = `0.0` [🔗](#class-skeletonmodification2dtwoboneik-property-target-minimum-distance)

- void **set\_target\_minimum\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_target\_minimum\_distance**()


The minimum distance the target can be at. If the target is closer than this distance, the modification will solve as if it's at this minimum distance. When set to `0`, the modification will solve without distance constraints.

* * *

[NodePath](class_nodepath.md#class-nodepath) **target\_nodepath** = `NodePath("")` [🔗](#class-skeletonmodification2dtwoboneik-property-target-nodepath)

- void **set\_target\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_target\_node**()


The NodePath to the node that is the target for the TwoBoneIK modification. This node is what the modification will use when bending the [Bone2D](class_bone2d.md#class-bone2d) nodes.

* * *

## Method Descriptions

[NodePath](class_nodepath.md#class-nodepath) **get\_joint\_one\_bone2d\_node**() const [🔗](#class-skeletonmodification2dtwoboneik-method-get-joint-one-bone2d-node)

Returns the [Bone2D](class_bone2d.md#class-bone2d) node that is being used as the first bone in the TwoBoneIK modification.

* * *

[int](class_int.md#class-int) **get\_joint\_one\_bone\_idx**() const [🔗](#class-skeletonmodification2dtwoboneik-method-get-joint-one-bone-idx)

Returns the index of the [Bone2D](class_bone2d.md#class-bone2d) node that is being used as the first bone in the TwoBoneIK modification.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_joint\_two\_bone2d\_node**() const [🔗](#class-skeletonmodification2dtwoboneik-method-get-joint-two-bone2d-node)

Returns the [Bone2D](class_bone2d.md#class-bone2d) node that is being used as the second bone in the TwoBoneIK modification.

* * *

[int](class_int.md#class-int) **get\_joint\_two\_bone\_idx**() const [🔗](#class-skeletonmodification2dtwoboneik-method-get-joint-two-bone-idx)

Returns the index of the [Bone2D](class_bone2d.md#class-bone2d) node that is being used as the second bone in the TwoBoneIK modification.

* * *

void **set\_joint\_one\_bone2d\_node**(bone2d\_node: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-skeletonmodification2dtwoboneik-method-set-joint-one-bone2d-node)

Sets the [Bone2D](class_bone2d.md#class-bone2d) node that is being used as the first bone in the TwoBoneIK modification.

* * *

void **set\_joint\_one\_bone\_idx**(bone\_idx: [int](class_int.md#class-int)) [🔗](#class-skeletonmodification2dtwoboneik-method-set-joint-one-bone-idx)

Sets the index of the [Bone2D](class_bone2d.md#class-bone2d) node that is being used as the first bone in the TwoBoneIK modification.

* * *

void **set\_joint\_two\_bone2d\_node**(bone2d\_node: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-skeletonmodification2dtwoboneik-method-set-joint-two-bone2d-node)

Sets the [Bone2D](class_bone2d.md#class-bone2d) node that is being used as the second bone in the TwoBoneIK modification.

* * *

void **set\_joint\_two\_bone\_idx**(bone\_idx: [int](class_int.md#class-int)) [🔗](#class-skeletonmodification2dtwoboneik-method-set-joint-two-bone-idx)

Sets the index of the [Bone2D](class_bone2d.md#class-bone2d) node that is being used as the second bone in the TwoBoneIK modification.

[Previous](class_skeletonmodification2dstackholder.md "SkeletonModification2DStackHolder") [Next](class_skeletonmodificationstack2d.md "SkeletonModificationStack2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonmodification2dstackholder.md "SkeletonModification2DStackHolder") [Next](class_skeletonmodificationstack2d.md "SkeletonModificationStack2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).