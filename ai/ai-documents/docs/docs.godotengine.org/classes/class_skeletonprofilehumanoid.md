---
title: SkeletonProfileHumanoid — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonprofilehumanoid.html
crawled_at: "2026-08-13T10:36:03+12:00"
content_hash: 82b54c5bca2e7fbf76de6df9a628137e969dc0a4a3e0813df87b8859377c6229
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonProfileHumanoid

* * *

# SkeletonProfileHumanoid

**Inherits:** [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A humanoid [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) preset.

## Description

A [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) as a preset that is optimized for the human form. This exists for standardization, so all parameters are read-only.

A humanoid skeleton profile contains 54 bones divided in 4 groups: `"Body"`, `"Face"`, `"LeftHand"`, and `"RightHand"`. It is structured as follows:

```
Root
└─ Hips
    ├─ LeftUpperLeg
    │  └─ LeftLowerLeg
    │     └─ LeftFoot
    │        └─ LeftToes
    ├─ RightUpperLeg
    │  └─ RightLowerLeg
    │     └─ RightFoot
    │        └─ RightToes
    └─ Spine
        └─ Chest
            └─ UpperChest
                ├─ Neck
                │   └─ Head
                │       ├─ Jaw
                │       ├─ LeftEye
                │       └─ RightEye
                ├─ LeftShoulder
                │  └─ LeftUpperArm
                │     └─ LeftLowerArm
                │        └─ LeftHand
                │           ├─ LeftThumbMetacarpal
                │           │  └─ LeftThumbProximal
                │           │    └─ LeftThumbDistal
                │           ├─ LeftIndexProximal
                │           │  └─ LeftIndexIntermediate
                │           │    └─ LeftIndexDistal
                │           ├─ LeftMiddleProximal
                │           │  └─ LeftMiddleIntermediate
                │           │    └─ LeftMiddleDistal
                │           ├─ LeftRingProximal
                │           │  └─ LeftRingIntermediate
                │           │    └─ LeftRingDistal
                │           └─ LeftLittleProximal
                │              └─ LeftLittleIntermediate
                │                └─ LeftLittleDistal
                └─ RightShoulder
                   └─ RightUpperArm
                      └─ RightLowerArm
                         └─ RightHand
                            ├─ RightThumbMetacarpal
                            │  └─ RightThumbProximal
                            │     └─ RightThumbDistal
                            ├─ RightIndexProximal
                            │  └─ RightIndexIntermediate
                            │     └─ RightIndexDistal
                            ├─ RightMiddleProximal
                            │  └─ RightMiddleIntermediate
                            │     └─ RightMiddleDistal
                            ├─ RightRingProximal
                            │  └─ RightRingIntermediate
                            │     └─ RightRingDistal
                            └─ RightLittleProximal
                               └─ RightLittleIntermediate
                                 └─ RightLittleDistal

```

## Tutorials

- [Retargeting 3D Skeletons](../tutorials/assets_pipeline/retargeting_3d_skeletons.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | bone\_size | `56` (overrides [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile-property-bone-size)) |
| [int](class_int.md#class-int) | group\_size | `4` (overrides [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile-property-group-size)) |
| [StringName](class_stringname.md#class-stringname) | root\_bone | `&"Root"` (overrides [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile-property-root-bone)) |
| [StringName](class_stringname.md#class-stringname) | scale\_base\_bone | `&"Hips"` (overrides [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile-property-scale-base-bone)) |

[Previous](class_skeletonprofile.md "SkeletonProfile") [Next](class_skin.md "Skin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonprofile.md "SkeletonProfile") [Next](class_skin.md "Skin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).