---
title: SkeletonModifier3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonmodifier3d.html
crawled_at: "2026-08-13T10:28:18+12:00"
content_hash: dcf5ef37a8f0051efb44c8f1bf7f6d97f717429b7de97761ee7fdbcdcc815cfd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonModifier3D

* * *

# SkeletonModifier3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [BoneConstraint3D](class_boneconstraint3d.md#class-boneconstraint3d), [LookAtModifier3D](class_lookatmodifier3d.md#class-lookatmodifier3d), [ModifierBoneTarget3D](class_modifierbonetarget3d.md#class-modifierbonetarget3d), [PhysicalBoneSimulator3D](class_physicalbonesimulator3d.md#class-physicalbonesimulator3d), [RetargetModifier3D](class_retargetmodifier3d.md#class-retargetmodifier3d), [SkeletonIK3D](class_skeletonik3d.md#class-skeletonik3d), [SpringBoneSimulator3D](class_springbonesimulator3d.md#class-springbonesimulator3d), [XRBodyModifier3D](class_xrbodymodifier3d.md#class-xrbodymodifier3d), [XRHandModifier3D](class_xrhandmodifier3d.md#class-xrhandmodifier3d)

A node that may modify a Skeleton3D's bones.

## Description

**SkeletonModifier3D** retrieves a target [Skeleton3D](class_skeleton3d.md#class-skeleton3d) by having a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) parent.

If there is an [AnimationMixer](class_animationmixer.md#class-animationmixer), a modification always performs after playback process of the [AnimationMixer](class_animationmixer.md#class-animationmixer).

This node should be used to implement custom IK solvers, constraints, or skeleton physics.

## Tutorials

- [Design of the Skeleton Modifier 3D](https://godotengine.org/article/design-of-the-skeleton-modifier-3d/)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [active](#class-skeletonmodifier3d-property-active) | `true` |
| [float](class_float.md#class-float) | [influence](#class-skeletonmodifier3d-property-influence) | `1.0` |

## Methods

|     |     |
| --- | --- |
| void | [\_process\_modification](#class-skeletonmodifier3d-private-method-process-modification)() virtual |
| void | [\_process\_modification\_with\_delta](#class-skeletonmodifier3d-private-method-process-modification-with-delta)(delta: [float](class_float.md#class-float)) virtual |
| void | [\_skeleton\_changed](#class-skeletonmodifier3d-private-method-skeleton-changed)(old\_skeleton: [Skeleton3D](class_skeleton3d.md#class-skeleton3d), new\_skeleton: [Skeleton3D](class_skeleton3d.md#class-skeleton3d)) virtual |
| void | [\_validate\_bone\_names](#class-skeletonmodifier3d-private-method-validate-bone-names)() virtual |
| [Skeleton3D](class_skeleton3d.md#class-skeleton3d) | [get\_skeleton](#class-skeletonmodifier3d-method-get-skeleton)() const |

* * *

## Signals

**modification\_processed**() [🔗](#class-skeletonmodifier3d-signal-modification-processed)

Notifies when the modification have been finished.

**Note:** If you want to get the modified bone pose by the modifier, you must use [Skeleton3D.get\_bone\_pose()](class_skeleton3d.md#class-skeleton3d-method-get-bone-pose) or [Skeleton3D.get\_bone\_global\_pose()](class_skeleton3d.md#class-skeleton3d-method-get-bone-global-pose) at the moment this signal is fired.

* * *

## Enumerations

enum **BoneAxis**: [🔗](#enum-skeletonmodifier3d-boneaxis)

[BoneAxis](#enum-skeletonmodifier3d-boneaxis) **BONE\_AXIS\_PLUS\_X** = `0`

Enumerated value for the +X axis.

[BoneAxis](#enum-skeletonmodifier3d-boneaxis) **BONE\_AXIS\_MINUS\_X** = `1`

Enumerated value for the -X axis.

[BoneAxis](#enum-skeletonmodifier3d-boneaxis) **BONE\_AXIS\_PLUS\_Y** = `2`

Enumerated value for the +Y axis.

[BoneAxis](#enum-skeletonmodifier3d-boneaxis) **BONE\_AXIS\_MINUS\_Y** = `3`

Enumerated value for the -Y axis.

[BoneAxis](#enum-skeletonmodifier3d-boneaxis) **BONE\_AXIS\_PLUS\_Z** = `4`

Enumerated value for the +Z axis.

[BoneAxis](#enum-skeletonmodifier3d-boneaxis) **BONE\_AXIS\_MINUS\_Z** = `5`

Enumerated value for the -Z axis.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **active** = `true` [🔗](#class-skeletonmodifier3d-property-active)

- void **set\_active**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_active**()


If `true`, the **SkeletonModifier3D** will be processing.

* * *

[float](class_float.md#class-float) **influence** = `1.0` [🔗](#class-skeletonmodifier3d-property-influence)

- void **set\_influence**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_influence**()


Sets the influence of the modification.

**Note:** This value is used by [Skeleton3D](class_skeleton3d.md#class-skeleton3d) to blend, so the **SkeletonModifier3D** should always apply only 100% of the result without interpolation.

* * *

## Method Descriptions

void **\_process\_modification**() virtual [🔗](#class-skeletonmodifier3d-private-method-process-modification)

**Deprecated:** Use [\_process\_modification\_with\_delta()](#class-skeletonmodifier3d-private-method-process-modification-with-delta) instead.

Override this virtual method to implement a custom skeleton modifier. You should do things like get the [Skeleton3D](class_skeleton3d.md#class-skeleton3d)'s current pose and apply the pose here.

[\_process\_modification()](#class-skeletonmodifier3d-private-method-process-modification) must not apply [influence](#class-skeletonmodifier3d-property-influence) to bone poses because the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) automatically applies influence to all bone poses set by the modifier.

* * *

void **\_process\_modification\_with\_delta**(delta: [float](class_float.md#class-float)) virtual [🔗](#class-skeletonmodifier3d-private-method-process-modification-with-delta)

Override this virtual method to implement a custom skeleton modifier. You should do things like get the [Skeleton3D](class_skeleton3d.md#class-skeleton3d)'s current pose and apply the pose here.

[\_process\_modification\_with\_delta()](#class-skeletonmodifier3d-private-method-process-modification-with-delta) must not apply [influence](#class-skeletonmodifier3d-property-influence) to bone poses because the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) automatically applies influence to all bone poses set by the modifier.

`delta` is passed from parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d). See also [Skeleton3D.advance()](class_skeleton3d.md#class-skeleton3d-method-advance).

* * *

void **\_skeleton\_changed**(old\_skeleton: [Skeleton3D](class_skeleton3d.md#class-skeleton3d), new\_skeleton: [Skeleton3D](class_skeleton3d.md#class-skeleton3d)) virtual [🔗](#class-skeletonmodifier3d-private-method-skeleton-changed)

Called when the skeleton is changed.

* * *

void **\_validate\_bone\_names**() virtual [🔗](#class-skeletonmodifier3d-private-method-validate-bone-names)

Called when bone name and index need to be validated such as the timing of the entering tree or changing skeleton.

* * *

[Skeleton3D](class_skeleton3d.md#class-skeleton3d) **get\_skeleton**() const [🔗](#class-skeletonmodifier3d-method-get-skeleton)

Get parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node if found.

[Previous](class_skeletonik3d.md "SkeletonIK3D") [Next](class_slider.md "Slider")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonik3d.md "SkeletonIK3D") [Next](class_slider.md "Slider")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).