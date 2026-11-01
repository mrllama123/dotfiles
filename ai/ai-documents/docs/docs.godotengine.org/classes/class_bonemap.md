---
title: BoneMap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_bonemap.html
crawled_at: "2026-08-13T10:34:15+12:00"
content_hash: 8da383deb8746fd1b46011b64a60c4fbf3c20543ddc818e4044b6bef46e5c1b7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - BoneMap

* * *

# BoneMap

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Describes a mapping of bone names for retargeting [Skeleton3D](class_skeleton3d.md#class-skeleton3d) into common names defined by a [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile).

## Description

This class contains a dictionary that uses a list of bone names in [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) as key names.

By assigning the actual [Skeleton3D](class_skeleton3d.md#class-skeleton3d) bone name as the key value, it maps the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) to the [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile).

## Tutorials

- [Retargeting 3D Skeletons](../tutorials/assets_pipeline/retargeting_3d_skeletons.md)


## Properties

|     |     |
| --- | --- |
| [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) | [profile](#class-bonemap-property-profile) |

## Methods

|     |     |
| --- | --- |
| [StringName](class_stringname.md#class-stringname) | [find\_profile\_bone\_name](#class-bonemap-method-find-profile-bone-name)(skeleton\_bone\_name: [StringName](class_stringname.md#class-stringname)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_skeleton\_bone\_name](#class-bonemap-method-get-skeleton-bone-name)(profile\_bone\_name: [StringName](class_stringname.md#class-stringname)) const |
| void | [set\_skeleton\_bone\_name](#class-bonemap-method-set-skeleton-bone-name)(profile\_bone\_name: [StringName](class_stringname.md#class-stringname), skeleton\_bone\_name: [StringName](class_stringname.md#class-stringname)) |

* * *

## Signals

**bone\_map\_updated**() [🔗](#class-bonemap-signal-bone-map-updated)

This signal is emitted when change the key value in the **BoneMap**. This is used to validate mapping and to update **BoneMap** editor.

* * *

**profile\_updated**() [🔗](#class-bonemap-signal-profile-updated)

This signal is emitted when change the value in profile or change the reference of profile. This is used to update key names in the **BoneMap** and to redraw the **BoneMap** editor.

* * *

## Property Descriptions

[SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) **profile** [🔗](#class-bonemap-property-profile)

- void **set\_profile**(value: [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile))

- [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) **get\_profile**()


A [SkeletonProfile](class_skeletonprofile.md#class-skeletonprofile) of the mapping target. Key names in the **BoneMap** are synchronized with it.

* * *

## Method Descriptions

[StringName](class_stringname.md#class-stringname) **find\_profile\_bone\_name**(skeleton\_bone\_name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-bonemap-method-find-profile-bone-name)

Returns a profile bone name having `skeleton_bone_name`. If not found, an empty [StringName](class_stringname.md#class-stringname) will be returned.

In the retargeting process, the returned bone name is the bone name of the target skeleton.

* * *

[StringName](class_stringname.md#class-stringname) **get\_skeleton\_bone\_name**(profile\_bone\_name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-bonemap-method-get-skeleton-bone-name)

Returns a skeleton bone name is mapped to `profile_bone_name`.

In the retargeting process, the returned bone name is the bone name of the source skeleton.

* * *

void **set\_skeleton\_bone\_name**(profile\_bone\_name: [StringName](class_stringname.md#class-stringname), skeleton\_bone\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-bonemap-method-set-skeleton-bone-name)

Maps a skeleton bone name to `profile_bone_name`.

In the retargeting process, the setting bone name is the bone name of the source skeleton.

[Previous](class_bitmap.md "BitMap") [Next](class_boxmesh.md "BoxMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_bitmap.md "BitMap") [Next](class_boxmesh.md "BoxMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).