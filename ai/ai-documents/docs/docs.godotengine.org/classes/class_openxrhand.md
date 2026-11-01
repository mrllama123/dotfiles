---
title: OpenXRHand — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrhand.html
crawled_at: "2026-08-13T10:36:28+12:00"
content_hash: dbb28f487cd667537e406c11b381ba17ecd3bf36bdf360fa64d1aa802f1d171f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRHand

* * *

# OpenXRHand

**Deprecated:** Use [XRHandModifier3D](class_xrhandmodifier3d.md#class-xrhandmodifier3d) instead.

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Node supporting hand and finger tracking in OpenXR.

## Description

This node enables OpenXR's hand tracking functionality. The node should be a child node of an [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d) node, tracking will update its position to the player's tracked hand Palm joint location (the center of the middle finger's metacarpal bone). This node also updates the skeleton of a properly skinned hand or avatar model.

If the skeleton is a hand (one of the hand bones is the root node of the skeleton), then the skeleton will be placed relative to the hand palm location and the hand mesh and skeleton should be children of the OpenXRHand node.

If the hand bones are part of a full skeleton, then the root of the hand will keep its location with the assumption that IK is used to position the hand and arm.

By default the skeleton hand bones are repositioned to match the size of the tracked hand. To preserve the modeled bone sizes change [bone\_update](#class-openxrhand-property-bone-update) to apply rotation only.

## Properties

|     |     |     |
| --- | --- | --- |
| [BoneUpdate](#enum-openxrhand-boneupdate) | [bone\_update](#class-openxrhand-property-bone-update) | `0` |
| [Hands](#enum-openxrhand-hands) | [hand](#class-openxrhand-property-hand) | `0` |
| [NodePath](class_nodepath.md#class-nodepath) | [hand\_skeleton](#class-openxrhand-property-hand-skeleton) | `NodePath("")` |
| [MotionRange](#enum-openxrhand-motionrange) | [motion\_range](#class-openxrhand-property-motion-range) | `0` |
| [SkeletonRig](#enum-openxrhand-skeletonrig) | [skeleton\_rig](#class-openxrhand-property-skeleton-rig) | `0` |

* * *

## Enumerations

enum **Hands**: [🔗](#enum-openxrhand-hands)

[Hands](#enum-openxrhand-hands) **HAND\_LEFT** = `0`

Tracking the player's left hand.

[Hands](#enum-openxrhand-hands) **HAND\_RIGHT** = `1`

Tracking the player's right hand.

[Hands](#enum-openxrhand-hands) **HAND\_MAX** = `2`

Maximum supported hands.

* * *

enum **MotionRange**: [🔗](#enum-openxrhand-motionrange)

[MotionRange](#enum-openxrhand-motionrange) **MOTION\_RANGE\_UNOBSTRUCTED** = `0`

When player grips, hand skeleton will form a full fist.

[MotionRange](#enum-openxrhand-motionrange) **MOTION\_RANGE\_CONFORM\_TO\_CONTROLLER** = `1`

When player grips, hand skeleton conforms to the controller the player is holding.

[MotionRange](#enum-openxrhand-motionrange) **MOTION\_RANGE\_MAX** = `2`

Maximum supported motion ranges.

* * *

enum **SkeletonRig**: [🔗](#enum-openxrhand-skeletonrig)

[SkeletonRig](#enum-openxrhand-skeletonrig) **SKELETON\_RIG\_OPENXR** = `0`

An OpenXR compliant skeleton.

[SkeletonRig](#enum-openxrhand-skeletonrig) **SKELETON\_RIG\_HUMANOID** = `1`

A [SkeletonProfileHumanoid](class_skeletonprofilehumanoid.md#class-skeletonprofilehumanoid) compliant skeleton.

[SkeletonRig](#enum-openxrhand-skeletonrig) **SKELETON\_RIG\_MAX** = `2`

Maximum supported hands.

* * *

enum **BoneUpdate**: [🔗](#enum-openxrhand-boneupdate)

[BoneUpdate](#enum-openxrhand-boneupdate) **BONE\_UPDATE\_FULL** = `0`

The skeletons bones are fully updated (both position and rotation) to match the tracked bones.

[BoneUpdate](#enum-openxrhand-boneupdate) **BONE\_UPDATE\_ROTATION\_ONLY** = `1`

The skeletons bones are only rotated to align with the tracked bones, preserving bone length.

[BoneUpdate](#enum-openxrhand-boneupdate) **BONE\_UPDATE\_MAX** = `2`

Maximum supported bone update mode.

* * *

## Property Descriptions

[BoneUpdate](#enum-openxrhand-boneupdate) **bone\_update** = `0` [🔗](#class-openxrhand-property-bone-update)

- void **set\_bone\_update**(value: [BoneUpdate](#enum-openxrhand-boneupdate))

- [BoneUpdate](#enum-openxrhand-boneupdate) **get\_bone\_update**()


Specify the type of updates to perform on the bone.

* * *

[Hands](#enum-openxrhand-hands) **hand** = `0` [🔗](#class-openxrhand-property-hand)

- void **set\_hand**(value: [Hands](#enum-openxrhand-hands))

- [Hands](#enum-openxrhand-hands) **get\_hand**()


Specifies whether this node tracks the left or right hand of the player.

* * *

[NodePath](class_nodepath.md#class-nodepath) **hand\_skeleton** = `NodePath("")` [🔗](#class-openxrhand-property-hand-skeleton)

- void **set\_hand\_skeleton**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_hand\_skeleton**()


Set a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node for which the pose positions will be updated.

* * *

[MotionRange](#enum-openxrhand-motionrange) **motion\_range** = `0` [🔗](#class-openxrhand-property-motion-range)

- void **set\_motion\_range**(value: [MotionRange](#enum-openxrhand-motionrange))

- [MotionRange](#enum-openxrhand-motionrange) **get\_motion\_range**()


Set the motion range (if supported) limiting the hand motion.

* * *

[SkeletonRig](#enum-openxrhand-skeletonrig) **skeleton\_rig** = `0` [🔗](#class-openxrhand-property-skeleton-rig)

- void **set\_skeleton\_rig**(value: [SkeletonRig](#enum-openxrhand-skeletonrig))

- [SkeletonRig](#enum-openxrhand-skeletonrig) **get\_skeleton\_rig**()


Set the type of skeleton rig the [hand\_skeleton](#class-openxrhand-property-hand-skeleton) is compliant with.

[Previous](class_openxrcompositionlayerquad.md "OpenXRCompositionLayerQuad") [Next](class_openxrinteractionprofileeditor.md "OpenXRInteractionProfileEditor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrcompositionlayerquad.md "OpenXRCompositionLayerQuad") [Next](class_openxrinteractionprofileeditor.md "OpenXRInteractionProfileEditor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).