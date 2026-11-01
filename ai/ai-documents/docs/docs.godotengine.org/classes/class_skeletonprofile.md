---
title: SkeletonProfile — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonprofile.html
crawled_at: "2026-08-13T10:21:00+12:00"
content_hash: d7cd5c1c88da59a6c5004cf0720da03204d4cc97e984dad75ac069921a691387
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonProfile

* * *

# SkeletonProfile

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [SkeletonProfileHumanoid](class_skeletonprofilehumanoid.md#class-skeletonprofilehumanoid)

Base class for a profile of a virtual skeleton used as a target for retargeting.

## Description

This resource is used in [EditorScenePostImport](class_editorscenepostimport.md#class-editorscenepostimport). Some parameters are referring to bones in [Skeleton3D](class_skeleton3d.md#class-skeleton3d), [Skin](class_skin.md#class-skin), [Animation](class_animation.md#class-animation), and some other nodes are rewritten based on the parameters of **SkeletonProfile**.

**Note:** These parameters need to be set only when creating a custom profile. In [SkeletonProfileHumanoid](class_skeletonprofilehumanoid.md#class-skeletonprofilehumanoid), they are defined internally as read-only values.

## Tutorials

- [Retargeting 3D Skeletons](../tutorials/assets_pipeline/retargeting_3d_skeletons.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bone\_size](#class-skeletonprofile-property-bone-size) | `0` |
| [int](class_int.md#class-int) | [group\_size](#class-skeletonprofile-property-group-size) | `0` |
| [StringName](class_stringname.md#class-stringname) | [root\_bone](#class-skeletonprofile-property-root-bone) | `&""` |
| [StringName](class_stringname.md#class-stringname) | [scale\_base\_bone](#class-skeletonprofile-property-scale-base-bone) | `&""` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [find\_bone](#class-skeletonprofile-method-find-bone)(bone\_name: [StringName](class_stringname.md#class-stringname)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_bone\_name](#class-skeletonprofile-method-get-bone-name)(bone\_idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_bone\_parent](#class-skeletonprofile-method-get-bone-parent)(bone\_idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_bone\_tail](#class-skeletonprofile-method-get-bone-tail)(bone\_idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_group](#class-skeletonprofile-method-get-group)(bone\_idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_group\_name](#class-skeletonprofile-method-get-group-name)(group\_idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_handle\_offset](#class-skeletonprofile-method-get-handle-offset)(bone\_idx: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_reference\_pose](#class-skeletonprofile-method-get-reference-pose)(bone\_idx: [int](class_int.md#class-int)) const |
| [TailDirection](#enum-skeletonprofile-taildirection) | [get\_tail\_direction](#class-skeletonprofile-method-get-tail-direction)(bone\_idx: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_texture](#class-skeletonprofile-method-get-texture)(group\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_required](#class-skeletonprofile-method-is-required)(bone\_idx: [int](class_int.md#class-int)) const |
| void | [set\_bone\_name](#class-skeletonprofile-method-set-bone-name)(bone\_idx: [int](class_int.md#class-int), bone\_name: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_bone\_parent](#class-skeletonprofile-method-set-bone-parent)(bone\_idx: [int](class_int.md#class-int), bone\_parent: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_bone\_tail](#class-skeletonprofile-method-set-bone-tail)(bone\_idx: [int](class_int.md#class-int), bone\_tail: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_group](#class-skeletonprofile-method-set-group)(bone\_idx: [int](class_int.md#class-int), group: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_group\_name](#class-skeletonprofile-method-set-group-name)(group\_idx: [int](class_int.md#class-int), group\_name: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_handle\_offset](#class-skeletonprofile-method-set-handle-offset)(bone\_idx: [int](class_int.md#class-int), handle\_offset: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_reference\_pose](#class-skeletonprofile-method-set-reference-pose)(bone\_idx: [int](class_int.md#class-int), bone\_name: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [set\_required](#class-skeletonprofile-method-set-required)(bone\_idx: [int](class_int.md#class-int), required: [bool](class_bool.md#class-bool)) |
| void | [set\_tail\_direction](#class-skeletonprofile-method-set-tail-direction)(bone\_idx: [int](class_int.md#class-int), tail\_direction: [TailDirection](#enum-skeletonprofile-taildirection)) |
| void | [set\_texture](#class-skeletonprofile-method-set-texture)(group\_idx: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) |

* * *

## Signals

**profile\_updated**() [🔗](#class-skeletonprofile-signal-profile-updated)

This signal is emitted when change the value in profile. This is used to update key name in the [BoneMap](class_bonemap.md#class-bonemap) and to redraw the [BoneMap](class_bonemap.md#class-bonemap) editor.

**Note:** This signal is not connected directly to editor to simplify the reference, instead it is passed on to editor through the [BoneMap](class_bonemap.md#class-bonemap).

* * *

## Enumerations

enum **TailDirection**: [🔗](#enum-skeletonprofile-taildirection)

[TailDirection](#enum-skeletonprofile-taildirection) **TAIL\_DIRECTION\_AVERAGE\_CHILDREN** = `0`

Direction to the average coordinates of bone children.

[TailDirection](#enum-skeletonprofile-taildirection) **TAIL\_DIRECTION\_SPECIFIC\_CHILD** = `1`

Direction to the coordinates of specified bone child.

[TailDirection](#enum-skeletonprofile-taildirection) **TAIL\_DIRECTION\_END** = `2`

Direction is not calculated.

* * *

## Property Descriptions

[int](class_int.md#class-int) **bone\_size** = `0` [🔗](#class-skeletonprofile-property-bone-size)

- void **set\_bone\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bone\_size**()


The amount of bones in retargeting section's [BoneMap](class_bonemap.md#class-bonemap) editor. For example, [SkeletonProfileHumanoid](class_skeletonprofilehumanoid.md#class-skeletonprofilehumanoid) has 56 bones.

The size of elements in [BoneMap](class_bonemap.md#class-bonemap) updates when changing this property in it's assigned **SkeletonProfile**.

* * *

[int](class_int.md#class-int) **group\_size** = `0` [🔗](#class-skeletonprofile-property-group-size)

- void **set\_group\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_group\_size**()


The amount of groups of bones in retargeting section's [BoneMap](class_bonemap.md#class-bonemap) editor. For example, [SkeletonProfileHumanoid](class_skeletonprofilehumanoid.md#class-skeletonprofilehumanoid) has 4 groups.

This property exists to separate the bone list into several sections in the editor.

* * *

[StringName](class_stringname.md#class-stringname) **root\_bone** = `&""` [🔗](#class-skeletonprofile-property-root-bone)

- void **set\_root\_bone**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_root\_bone**()


A bone name that will be used as the root bone in [AnimationTree](class_animationtree.md#class-animationtree). This should be the bone of the parent of hips that exists at the world origin.

* * *

[StringName](class_stringname.md#class-stringname) **scale\_base\_bone** = `&""` [🔗](#class-skeletonprofile-property-scale-base-bone)

- void **set\_scale\_base\_bone**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_scale\_base\_bone**()


A bone name which will use model's height as the coefficient for normalization. For example, [SkeletonProfileHumanoid](class_skeletonprofilehumanoid.md#class-skeletonprofilehumanoid) defines it as `Hips`.

* * *

## Method Descriptions

[int](class_int.md#class-int) **find\_bone**(bone\_name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-skeletonprofile-method-find-bone)

Returns the bone index that matches `bone_name` as its name.

* * *

[StringName](class_stringname.md#class-stringname) **get\_bone\_name**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonprofile-method-get-bone-name)

Returns the name of the bone at `bone_idx` that will be the key name in the [BoneMap](class_bonemap.md#class-bonemap).

In the retargeting process, the returned bone name is the bone name of the target skeleton.

* * *

[StringName](class_stringname.md#class-stringname) **get\_bone\_parent**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonprofile-method-get-bone-parent)

Returns the name of the bone which is the parent to the bone at `bone_idx`. The result is empty if the bone has no parent.

* * *

[StringName](class_stringname.md#class-stringname) **get\_bone\_tail**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonprofile-method-get-bone-tail)

Returns the name of the bone which is the tail of the bone at `bone_idx`.

* * *

[StringName](class_stringname.md#class-stringname) **get\_group**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonprofile-method-get-group)

Returns the group of the bone at `bone_idx`.

* * *

[StringName](class_stringname.md#class-stringname) **get\_group\_name**(group\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonprofile-method-get-group-name)

Returns the name of the group at `group_idx` that will be the drawing group in the [BoneMap](class_bonemap.md#class-bonemap) editor.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_handle\_offset**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonprofile-method-get-handle-offset)

Returns the offset of the bone at `bone_idx` that will be the button position in the [BoneMap](class_bonemap.md#class-bonemap) editor.

This is the offset with origin at the top left corner of the square.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_reference\_pose**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonprofile-method-get-reference-pose)

Returns the reference pose transform for bone `bone_idx`.

* * *

[TailDirection](#enum-skeletonprofile-taildirection) **get\_tail\_direction**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonprofile-method-get-tail-direction)

Returns the tail direction of the bone at `bone_idx`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(group\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonprofile-method-get-texture)

Returns the texture of the group at `group_idx` that will be the drawing group background image in the [BoneMap](class_bonemap.md#class-bonemap) editor.

* * *

[bool](class_bool.md#class-bool) **is\_required**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonprofile-method-is-required)

Returns whether the bone at `bone_idx` is required for retargeting.

This value is used by the bone map editor. If this method returns `true`, and no bone is assigned, the handle color will be red on the bone map editor.

* * *

void **set\_bone\_name**(bone\_idx: [int](class_int.md#class-int), bone\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-skeletonprofile-method-set-bone-name)

Sets the name of the bone at `bone_idx` that will be the key name in the [BoneMap](class_bonemap.md#class-bonemap).

In the retargeting process, the setting bone name is the bone name of the target skeleton.

* * *

void **set\_bone\_parent**(bone\_idx: [int](class_int.md#class-int), bone\_parent: [StringName](class_stringname.md#class-stringname)) [🔗](#class-skeletonprofile-method-set-bone-parent)

Sets the bone with name `bone_parent` as the parent of the bone at `bone_idx`. If an empty string is passed, then the bone has no parent.

* * *

void **set\_bone\_tail**(bone\_idx: [int](class_int.md#class-int), bone\_tail: [StringName](class_stringname.md#class-stringname)) [🔗](#class-skeletonprofile-method-set-bone-tail)

Sets the bone with name `bone_tail` as the tail of the bone at `bone_idx`.

* * *

void **set\_group**(bone\_idx: [int](class_int.md#class-int), group: [StringName](class_stringname.md#class-stringname)) [🔗](#class-skeletonprofile-method-set-group)

Sets the group of the bone at `bone_idx`.

* * *

void **set\_group\_name**(group\_idx: [int](class_int.md#class-int), group\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-skeletonprofile-method-set-group-name)

Sets the name of the group at `group_idx` that will be the drawing group in the [BoneMap](class_bonemap.md#class-bonemap) editor.

* * *

void **set\_handle\_offset**(bone\_idx: [int](class_int.md#class-int), handle\_offset: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-skeletonprofile-method-set-handle-offset)

Sets the offset of the bone at `bone_idx` that will be the button position in the [BoneMap](class_bonemap.md#class-bonemap) editor.

This is the offset with origin at the top left corner of the square.

* * *

void **set\_reference\_pose**(bone\_idx: [int](class_int.md#class-int), bone\_name: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-skeletonprofile-method-set-reference-pose)

Sets the reference pose transform for bone `bone_idx`.

* * *

void **set\_required**(bone\_idx: [int](class_int.md#class-int), required: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonprofile-method-set-required)

Sets the required status for bone `bone_idx` to `required`.

* * *

void **set\_tail\_direction**(bone\_idx: [int](class_int.md#class-int), tail\_direction: [TailDirection](#enum-skeletonprofile-taildirection)) [🔗](#class-skeletonprofile-method-set-tail-direction)

Sets the tail direction of the bone at `bone_idx`.

**Note:** This only specifies the method of calculation. The actual coordinates required should be stored in an external skeleton, so the calculation itself needs to be done externally.

* * *

void **set\_texture**(group\_idx: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-skeletonprofile-method-set-texture)

Sets the texture of the group at `group_idx` that will be the drawing group background image in the [BoneMap](class_bonemap.md#class-bonemap) editor.

[Previous](class_skeletonmodificationstack2d.md "SkeletonModificationStack2D") [Next](class_skeletonprofilehumanoid.md "SkeletonProfileHumanoid")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonmodificationstack2d.md "SkeletonModificationStack2D") [Next](class_skeletonprofilehumanoid.md "SkeletonProfileHumanoid")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).