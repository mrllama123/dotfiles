---
title: SkeletonModificationStack2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonmodificationstack2d.html
crawled_at: "2026-08-13T10:25:06+12:00"
content_hash: 292f3c6ee906d8f4b4c9a9a5db7b7c2141a2259a8baafb00ddc003b07d0f9865
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonModificationStack2D

* * *

# SkeletonModificationStack2D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A resource that holds a stack of [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) s.

## Description

This resource is used by the Skeleton and holds a stack of [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) s.

This controls the order of the modifications and how they are applied. Modification order is especially important for full-body IK setups, as you need to execute the modifications in the correct order to get the desired results. For example, you want to execute a modification on the spine _before_ the arms on a humanoid skeleton.

This resource also controls how strongly all of the modifications are applied to the [Skeleton2D](class_skeleton2d.md#class-skeleton2d).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [enabled](#class-skeletonmodificationstack2d-property-enabled) | `false` |
| [int](class_int.md#class-int) | [modification\_count](#class-skeletonmodificationstack2d-property-modification-count) | `0` |
| [float](class_float.md#class-float) | [strength](#class-skeletonmodificationstack2d-property-strength) | `1.0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_modification](#class-skeletonmodificationstack2d-method-add-modification)(modification: [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d)) |
| void | [delete\_modification](#class-skeletonmodificationstack2d-method-delete-modification)(mod\_idx: [int](class_int.md#class-int)) |
| void | [enable\_all\_modifications](#class-skeletonmodificationstack2d-method-enable-all-modifications)(enabled: [bool](class_bool.md#class-bool)) |
| void | [execute](#class-skeletonmodificationstack2d-method-execute)(delta: [float](class_float.md#class-float), execution\_mode: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [get\_is\_setup](#class-skeletonmodificationstack2d-method-get-is-setup)() const |
| [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) | [get\_modification](#class-skeletonmodificationstack2d-method-get-modification)(mod\_idx: [int](class_int.md#class-int)) const |
| [Skeleton2D](class_skeleton2d.md#class-skeleton2d) | [get\_skeleton](#class-skeletonmodificationstack2d-method-get-skeleton)() const |
| void | [set\_modification](#class-skeletonmodificationstack2d-method-set-modification)(mod\_idx: [int](class_int.md#class-int), modification: [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d)) |
| void | [setup](#class-skeletonmodificationstack2d-method-setup)() |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **enabled** = `false` [🔗](#class-skeletonmodificationstack2d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enabled**()


If `true`, the modification's in the stack will be called. This is handled automatically through the [Skeleton2D](class_skeleton2d.md#class-skeleton2d) node.

* * *

[int](class_int.md#class-int) **modification\_count** = `0` [🔗](#class-skeletonmodificationstack2d-property-modification-count)

- void **set\_modification\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_modification\_count**()


The number of modifications in the stack.

* * *

[float](class_float.md#class-float) **strength** = `1.0` [🔗](#class-skeletonmodificationstack2d-property-strength)

- void **set\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_strength**()


The interpolation strength of the modifications in stack. A value of `0` will make it where the modifications are not applied, a strength of `0.5` will be half applied, and a strength of `1` will allow the modifications to be fully applied and override the [Skeleton2D](class_skeleton2d.md#class-skeleton2d) [Bone2D](class_bone2d.md#class-bone2d) poses.

* * *

## Method Descriptions

void **add\_modification**(modification: [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d)) [🔗](#class-skeletonmodificationstack2d-method-add-modification)

Adds the passed-in [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) to the stack.

* * *

void **delete\_modification**(mod\_idx: [int](class_int.md#class-int)) [🔗](#class-skeletonmodificationstack2d-method-delete-modification)

Deletes the [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) at the index position `mod_idx`, if it exists.

* * *

void **enable\_all\_modifications**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodificationstack2d-method-enable-all-modifications)

Enables all [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) s in the stack.

* * *

void **execute**(delta: [float](class_float.md#class-float), execution\_mode: [int](class_int.md#class-int)) [🔗](#class-skeletonmodificationstack2d-method-execute)

Executes all of the [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) s in the stack that use the same execution mode as the passed-in `execution_mode`, starting from index `0` to [modification\_count](#class-skeletonmodificationstack2d-property-modification-count).

**Note:** The order of the modifications can matter depending on the modifications. For example, modifications on a spine should operate before modifications on the arms in order to get proper results.

* * *

[bool](class_bool.md#class-bool) **get\_is\_setup**() const [🔗](#class-skeletonmodificationstack2d-method-get-is-setup)

Returns a boolean that indicates whether the modification stack is setup and can execute.

* * *

[SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) **get\_modification**(mod\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodificationstack2d-method-get-modification)

Returns the [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) at the passed-in index, `mod_idx`.

* * *

[Skeleton2D](class_skeleton2d.md#class-skeleton2d) **get\_skeleton**() const [🔗](#class-skeletonmodificationstack2d-method-get-skeleton)

Returns the [Skeleton2D](class_skeleton2d.md#class-skeleton2d) node that the SkeletonModificationStack2D is bound to.

* * *

void **set\_modification**(mod\_idx: [int](class_int.md#class-int), modification: [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d)) [🔗](#class-skeletonmodificationstack2d-method-set-modification)

Sets the modification at `mod_idx` to the passed-in modification, `modification`.

* * *

void **setup**() [🔗](#class-skeletonmodificationstack2d-method-setup)

Sets up the modification stack so it can execute. This function should be called by [Skeleton2D](class_skeleton2d.md#class-skeleton2d) and shouldn't be manually called unless you know what you are doing.

[Previous](class_skeletonmodification2dtwoboneik.md "SkeletonModification2DTwoBoneIK") [Next](class_skeletonprofile.md "SkeletonProfile")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonmodification2dtwoboneik.md "SkeletonModification2DTwoBoneIK") [Next](class_skeletonprofile.md "SkeletonProfile")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).