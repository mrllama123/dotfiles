---
title: SkeletonModification2DStackHolder — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonmodification2dstackholder.html
crawled_at: "2026-08-13T10:40:12+12:00"
content_hash: dee03e6e05bc26cb2c415464b01f35bdf982f1264f3903ea761557620336fb7f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonModification2DStackHolder

* * *

# SkeletonModification2DStackHolder

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A modification that holds and executes a [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d).

## Description

This [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) holds a reference to a [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d), allowing you to use multiple modification stacks on a single [Skeleton2D](class_skeleton2d.md#class-skeleton2d).

**Note:** The modifications in the held [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) will only be executed if their execution mode matches the execution mode of the SkeletonModification2DStackHolder.

## Methods

|     |     |
| --- | --- |
| [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) | [get\_held\_modification\_stack](#class-skeletonmodification2dstackholder-method-get-held-modification-stack)() const |
| void | [set\_held\_modification\_stack](#class-skeletonmodification2dstackholder-method-set-held-modification-stack)(held\_modification\_stack: [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d)) |

* * *

## Method Descriptions

[SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) **get\_held\_modification\_stack**() const [🔗](#class-skeletonmodification2dstackholder-method-get-held-modification-stack)

Returns the [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) that this modification is holding.

* * *

void **set\_held\_modification\_stack**(held\_modification\_stack: [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d)) [🔗](#class-skeletonmodification2dstackholder-method-set-held-modification-stack)

Sets the [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) that this modification is holding. This modification stack will then be executed when this modification is executed.

[Previous](class_skeletonmodification2dphysicalbones.md "SkeletonModification2DPhysicalBones") [Next](class_skeletonmodification2dtwoboneik.md "SkeletonModification2DTwoBoneIK")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonmodification2dphysicalbones.md "SkeletonModification2DPhysicalBones") [Next](class_skeletonmodification2dtwoboneik.md "SkeletonModification2DTwoBoneIK")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).