---
title: XRBodyModifier3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrbodymodifier3d.html
crawled_at: "2026-08-13T10:36:35+12:00"
content_hash: a1130e4e3121e4793729d7f05b2eab83a654d236dccf356dc1f5eb5c77ba2164
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRBodyModifier3D

* * *

# XRBodyModifier3D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node for driving body meshes from [XRBodyTracker](class_xrbodytracker.md#class-xrbodytracker) data.

## Description

This node uses body tracking data from an [XRBodyTracker](class_xrbodytracker.md#class-xrbodytracker) to pose the skeleton of a body mesh.

Positioning of the body is performed by creating an [XRNode3D](class_xrnode3d.md#class-xrnode3d) ancestor of the body mesh driven by the same [XRBodyTracker](class_xrbodytracker.md#class-xrbodytracker).

The body tracking position-data is scaled by [Skeleton3D.motion\_scale](class_skeleton3d.md#class-skeleton3d-property-motion-scale) when applied to the skeleton, which can be used to adjust the tracked body to match the scale of the body model.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [StringName](class_stringname.md#class-stringname) | [body\_tracker](#class-xrbodymodifier3d-property-body-tracker) | `&"/user/body_tracker"` |
| BitField\[ [BodyUpdate](#enum-xrbodymodifier3d-bodyupdate)\] | [body\_update](#class-xrbodymodifier3d-property-body-update) | `7` |
| [BoneUpdate](#enum-xrbodymodifier3d-boneupdate) | [bone\_update](#class-xrbodymodifier3d-property-bone-update) | `0` |

* * *

## Enumerations

flags **BodyUpdate**: [🔗](#enum-xrbodymodifier3d-bodyupdate)

[BodyUpdate](#enum-xrbodymodifier3d-bodyupdate) **BODY\_UPDATE\_UPPER\_BODY** = `1`

The skeleton's upper body joints are updated.

[BodyUpdate](#enum-xrbodymodifier3d-bodyupdate) **BODY\_UPDATE\_LOWER\_BODY** = `2`

The skeleton's lower body joints are updated.

[BodyUpdate](#enum-xrbodymodifier3d-bodyupdate) **BODY\_UPDATE\_HANDS** = `4`

The skeleton's hand joints are updated.

* * *

enum **BoneUpdate**: [🔗](#enum-xrbodymodifier3d-boneupdate)

[BoneUpdate](#enum-xrbodymodifier3d-boneupdate) **BONE\_UPDATE\_FULL** = `0`

The skeleton's bones are fully updated (both position and rotation) to match the tracked bones.

[BoneUpdate](#enum-xrbodymodifier3d-boneupdate) **BONE\_UPDATE\_ROTATION\_ONLY** = `1`

The skeleton's bones are only rotated to align with the tracked bones, preserving bone length.

[BoneUpdate](#enum-xrbodymodifier3d-boneupdate) **BONE\_UPDATE\_MAX** = `2`

Represents the size of the [BoneUpdate](#enum-xrbodymodifier3d-boneupdate) enum.

* * *

## Property Descriptions

[StringName](class_stringname.md#class-stringname) **body\_tracker** = `&"/user/body_tracker"` [🔗](#class-xrbodymodifier3d-property-body-tracker)

- void **set\_body\_tracker**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_body\_tracker**()


The name of the [XRBodyTracker](class_xrbodytracker.md#class-xrbodytracker) registered with [XRServer](class_xrserver.md#class-xrserver) to obtain the body tracking data from.

* * *

BitField\[ [BodyUpdate](#enum-xrbodymodifier3d-bodyupdate)\] **body\_update** = `7` [🔗](#class-xrbodymodifier3d-property-body-update)

- void **set\_body\_update**(value: BitField\[ [BodyUpdate](#enum-xrbodymodifier3d-bodyupdate)\])

- BitField\[ [BodyUpdate](#enum-xrbodymodifier3d-bodyupdate)\] **get\_body\_update**()


Specifies the body parts to update.

* * *

[BoneUpdate](#enum-xrbodymodifier3d-boneupdate) **bone\_update** = `0` [🔗](#class-xrbodymodifier3d-property-bone-update)

- void **set\_bone\_update**(value: [BoneUpdate](#enum-xrbodymodifier3d-boneupdate))

- [BoneUpdate](#enum-xrbodymodifier3d-boneupdate) **get\_bone\_update**()


Specifies the type of updates to perform on the bones.

[Previous](class_xranchor3d.md "XRAnchor3D") [Next](class_xrcamera3d.md "XRCamera3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xranchor3d.md "XRAnchor3D") [Next](class_xrcamera3d.md "XRCamera3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).