---
title: XRHandModifier3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrhandmodifier3d.html
crawled_at: "2026-08-13T10:33:36+12:00"
content_hash: 1276a875d15e07e378a766854d61d865f8621f5e099e812d5234556de42f1ecd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRHandModifier3D

* * *

# XRHandModifier3D

**Inherits:** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node for driving hand meshes from [XRHandTracker](class_xrhandtracker.md#class-xrhandtracker) data.

## Description

This node uses hand tracking data from an [XRHandTracker](class_xrhandtracker.md#class-xrhandtracker) to pose the skeleton of a hand mesh.

Positioning of hands is performed by creating an [XRNode3D](class_xrnode3d.md#class-xrnode3d) ancestor of the hand mesh driven by the same [XRHandTracker](class_xrhandtracker.md#class-xrhandtracker).

The hand tracking position-data is scaled by [Skeleton3D.motion\_scale](class_skeleton3d.md#class-skeleton3d-property-motion-scale) when applied to the skeleton, which can be used to adjust the tracked hand to match the scale of the hand model.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [BoneUpdate](#enum-xrhandmodifier3d-boneupdate) | [bone\_update](#class-xrhandmodifier3d-property-bone-update) | `0` |
| [StringName](class_stringname.md#class-stringname) | [hand\_tracker](#class-xrhandmodifier3d-property-hand-tracker) | `&"/user/hand_tracker/left"` |

* * *

## Enumerations

enum **BoneUpdate**: [🔗](#enum-xrhandmodifier3d-boneupdate)

[BoneUpdate](#enum-xrhandmodifier3d-boneupdate) **BONE\_UPDATE\_FULL** = `0`

The skeleton's bones are fully updated (both position and rotation) to match the tracked bones.

[BoneUpdate](#enum-xrhandmodifier3d-boneupdate) **BONE\_UPDATE\_ROTATION\_ONLY** = `1`

The skeleton's bones are only rotated to align with the tracked bones, preserving bone length.

[BoneUpdate](#enum-xrhandmodifier3d-boneupdate) **BONE\_UPDATE\_MAX** = `2`

Represents the size of the [BoneUpdate](#enum-xrhandmodifier3d-boneupdate) enum.

* * *

## Property Descriptions

[BoneUpdate](#enum-xrhandmodifier3d-boneupdate) **bone\_update** = `0` [🔗](#class-xrhandmodifier3d-property-bone-update)

- void **set\_bone\_update**(value: [BoneUpdate](#enum-xrhandmodifier3d-boneupdate))

- [BoneUpdate](#enum-xrhandmodifier3d-boneupdate) **get\_bone\_update**()


Specifies the type of updates to perform on the bones.

* * *

[StringName](class_stringname.md#class-stringname) **hand\_tracker** = `&"/user/hand_tracker/left"` [🔗](#class-xrhandmodifier3d-property-hand-tracker)

- void **set\_hand\_tracker**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_hand\_tracker**()


The name of the [XRHandTracker](class_xrhandtracker.md#class-xrhandtracker) registered with [XRServer](class_xrserver.md#class-xrserver) to obtain the hand tracking data from.

[Previous](class_xrfacemodifier3d.md "XRFaceModifier3D") [Next](class_xrnode3d.md "XRNode3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrfacemodifier3d.md "XRFaceModifier3D") [Next](class_xrnode3d.md "XRNode3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).