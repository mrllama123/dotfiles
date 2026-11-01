---
title: Skeleton3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeleton3d.html
crawled_at: "2026-08-13T10:22:46+12:00"
content_hash: 0afc85a646eab4eb4119369a4800d81b754e467ccb7cf5289a683f99569c2298
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Skeleton3D

* * *

# Skeleton3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node containing a bone hierarchy, used to create a 3D skeletal animation.

## Description

**Skeleton3D** provides an interface for managing a hierarchy of bones, including pose, rest and animation (see [Animation](class_animation.md#class-animation)). It can also use ragdoll physics.

The overall transform of a bone with respect to the skeleton is determined by bone pose. Bone rest defines the initial transform of the bone pose.

Note that "global pose" below refers to the overall transform of the bone with respect to skeleton, so it is not the actual global/world transform of the bone.

## Tutorials

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [animate\_physical\_bones](#class-skeleton3d-property-animate-physical-bones) | `true` |
| [ModifierCallbackModeProcess](#enum-skeleton3d-modifiercallbackmodeprocess) | [modifier\_callback\_mode\_process](#class-skeleton3d-property-modifier-callback-mode-process) | `1` |
| [float](class_float.md#class-float) | [motion\_scale](#class-skeleton3d-property-motion-scale) | `1.0` |
| [bool](class_bool.md#class-bool) | [show\_rest\_only](#class-skeleton3d-property-show-rest-only) | `false` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [add\_bone](#class-skeleton3d-method-add-bone)(name: [String](class_string.md#class-string)) |
| void | [advance](#class-skeleton3d-method-advance)(delta: [float](class_float.md#class-float)) |
| void | [clear\_bones](#class-skeleton3d-method-clear-bones)() |
| void | [clear\_bones\_global\_pose\_override](#class-skeleton3d-method-clear-bones-global-pose-override)() |
| [Skin](class_skin.md#class-skin) | [create\_skin\_from\_rest\_transforms](#class-skeleton3d-method-create-skin-from-rest-transforms)() |
| [int](class_int.md#class-int) | [find\_bone](#class-skeleton3d-method-find-bone)(name: [String](class_string.md#class-string)) const |
| void | [force\_update\_all\_bone\_transforms](#class-skeleton3d-method-force-update-all-bone-transforms)() |
| void | [force\_update\_bone\_child\_transform](#class-skeleton3d-method-force-update-bone-child-transform)(bone\_idx: [int](class_int.md#class-int)) |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_bone\_children](#class-skeleton3d-method-get-bone-children)(bone\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_bone\_count](#class-skeleton3d-method-get-bone-count)() const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_bone\_global\_pose](#class-skeleton3d-method-get-bone-global-pose)(bone\_idx: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_bone\_global\_pose\_no\_override](#class-skeleton3d-method-get-bone-global-pose-no-override)(bone\_idx: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_bone\_global\_pose\_override](#class-skeleton3d-method-get-bone-global-pose-override)(bone\_idx: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_bone\_global\_rest](#class-skeleton3d-method-get-bone-global-rest)(bone\_idx: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_bone\_meta](#class-skeleton3d-method-get-bone-meta)(bone\_idx: [int](class_int.md#class-int), key: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [get\_bone\_meta\_list](#class-skeleton3d-method-get-bone-meta-list)(bone\_idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_bone\_name](#class-skeleton3d-method-get-bone-name)(bone\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_bone\_parent](#class-skeleton3d-method-get-bone-parent)(bone\_idx: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_bone\_pose](#class-skeleton3d-method-get-bone-pose)(bone\_idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_bone\_pose\_position](#class-skeleton3d-method-get-bone-pose-position)(bone\_idx: [int](class_int.md#class-int)) const |
| [Quaternion](class_quaternion.md#class-quaternion) | [get\_bone\_pose\_rotation](#class-skeleton3d-method-get-bone-pose-rotation)(bone\_idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_bone\_pose\_scale](#class-skeleton3d-method-get-bone-pose-scale)(bone\_idx: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_bone\_rest](#class-skeleton3d-method-get-bone-rest)(bone\_idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_concatenated\_bone\_names](#class-skeleton3d-method-get-concatenated-bone-names)() const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_parentless\_bones](#class-skeleton3d-method-get-parentless-bones)() const |
| [int](class_int.md#class-int) | [get\_version](#class-skeleton3d-method-get-version)() const |
| [bool](class_bool.md#class-bool) | [has\_bone\_meta](#class-skeleton3d-method-has-bone-meta)(bone\_idx: [int](class_int.md#class-int), key: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_bone\_enabled](#class-skeleton3d-method-is-bone-enabled)(bone\_idx: [int](class_int.md#class-int)) const |
| void | [localize\_rests](#class-skeleton3d-method-localize-rests)() |
| void | [physical\_bones\_add\_collision\_exception](#class-skeleton3d-method-physical-bones-add-collision-exception)(exception: [RID](class_rid.md#class-rid)) |
| void | [physical\_bones\_remove\_collision\_exception](#class-skeleton3d-method-physical-bones-remove-collision-exception)(exception: [RID](class_rid.md#class-rid)) |
| void | [physical\_bones\_start\_simulation](#class-skeleton3d-method-physical-bones-start-simulation)(bones: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) |
| void | [physical\_bones\_stop\_simulation](#class-skeleton3d-method-physical-bones-stop-simulation)() |
| [SkinReference](class_skinreference.md#class-skinreference) | [register\_skin](#class-skeleton3d-method-register-skin)(skin: [Skin](class_skin.md#class-skin)) |
| void | [reset\_bone\_pose](#class-skeleton3d-method-reset-bone-pose)(bone\_idx: [int](class_int.md#class-int)) |
| void | [reset\_bone\_poses](#class-skeleton3d-method-reset-bone-poses)() |
| void | [set\_bone\_enabled](#class-skeleton3d-method-set-bone-enabled)(bone\_idx: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool) = true) |
| void | [set\_bone\_global\_pose](#class-skeleton3d-method-set-bone-global-pose)(bone\_idx: [int](class_int.md#class-int), pose: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [set\_bone\_global\_pose\_override](#class-skeleton3d-method-set-bone-global-pose-override)(bone\_idx: [int](class_int.md#class-int), pose: [Transform3D](class_transform3d.md#class-transform3d), amount: [float](class_float.md#class-float), persistent: [bool](class_bool.md#class-bool) = false) |
| void | [set\_bone\_meta](#class-skeleton3d-method-set-bone-meta)(bone\_idx: [int](class_int.md#class-int), key: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [set\_bone\_name](#class-skeleton3d-method-set-bone-name)(bone\_idx: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_bone\_parent](#class-skeleton3d-method-set-bone-parent)(bone\_idx: [int](class_int.md#class-int), parent\_idx: [int](class_int.md#class-int)) |
| void | [set\_bone\_pose](#class-skeleton3d-method-set-bone-pose)(bone\_idx: [int](class_int.md#class-int), pose: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [set\_bone\_pose\_position](#class-skeleton3d-method-set-bone-pose-position)(bone\_idx: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_bone\_pose\_rotation](#class-skeleton3d-method-set-bone-pose-rotation)(bone\_idx: [int](class_int.md#class-int), rotation: [Quaternion](class_quaternion.md#class-quaternion)) |
| void | [set\_bone\_pose\_scale](#class-skeleton3d-method-set-bone-pose-scale)(bone\_idx: [int](class_int.md#class-int), scale: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_bone\_rest](#class-skeleton3d-method-set-bone-rest)(bone\_idx: [int](class_int.md#class-int), rest: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [unparent\_bone\_and\_rest](#class-skeleton3d-method-unparent-bone-and-rest)(bone\_idx: [int](class_int.md#class-int)) |

* * *

## Signals

**bone\_enabled\_changed**(bone\_idx: [int](class_int.md#class-int)) [🔗](#class-skeleton3d-signal-bone-enabled-changed)

Emitted when the bone at `bone_idx` is toggled with [set\_bone\_enabled()](#class-skeleton3d-method-set-bone-enabled). Use [is\_bone\_enabled()](#class-skeleton3d-method-is-bone-enabled) to check the new value.

* * *

**bone\_list\_changed**() [🔗](#class-skeleton3d-signal-bone-list-changed)

Emitted when the list of bones changes, such as when calling [add\_bone()](#class-skeleton3d-method-add-bone), [set\_bone\_parent()](#class-skeleton3d-method-set-bone-parent), [unparent\_bone\_and\_rest()](#class-skeleton3d-method-unparent-bone-and-rest), or [clear\_bones()](#class-skeleton3d-method-clear-bones).

* * *

**pose\_updated**() [🔗](#class-skeleton3d-signal-pose-updated)

Emitted when the pose is updated.

**Note:** During the update process, this signal is not fired, so modification by [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) is not detected.

* * *

**rest\_updated**() [🔗](#class-skeleton3d-signal-rest-updated)

Emitted when the rest is updated.

* * *

**show\_rest\_only\_changed**() [🔗](#class-skeleton3d-signal-show-rest-only-changed)

Emitted when the value of [show\_rest\_only](#class-skeleton3d-property-show-rest-only) changes.

* * *

**skeleton\_updated**() [🔗](#class-skeleton3d-signal-skeleton-updated)

Emitted when the final pose has been calculated will be applied to the skin in the update process.

This means that all [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) processing is complete. In order to detect the completion of the processing of each [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d), use [SkeletonModifier3D.modification\_processed](class_skeletonmodifier3d.md#class-skeletonmodifier3d-signal-modification-processed).

* * *

## Enumerations

enum **ModifierCallbackModeProcess**: [🔗](#enum-skeleton3d-modifiercallbackmodeprocess)

[ModifierCallbackModeProcess](#enum-skeleton3d-modifiercallbackmodeprocess) **MODIFIER\_CALLBACK\_MODE\_PROCESS\_PHYSICS** = `0`

Set a flag to process modification during physics frames (see [Node.NOTIFICATION\_INTERNAL\_PHYSICS\_PROCESS](class_node.md#class-node-constant-notification-internal-physics-process)).

[ModifierCallbackModeProcess](#enum-skeleton3d-modifiercallbackmodeprocess) **MODIFIER\_CALLBACK\_MODE\_PROCESS\_IDLE** = `1`

Set a flag to process modification during process frames (see [Node.NOTIFICATION\_INTERNAL\_PROCESS](class_node.md#class-node-constant-notification-internal-process)).

[ModifierCallbackModeProcess](#enum-skeleton3d-modifiercallbackmodeprocess) **MODIFIER\_CALLBACK\_MODE\_PROCESS\_MANUAL** = `2`

Do not process modification. Use [advance()](#class-skeleton3d-method-advance) to process the modification manually.

* * *

## Constants

**NOTIFICATION\_UPDATE\_SKELETON** = `50` [🔗](#class-skeleton3d-constant-notification-update-skeleton)

Notification received when this skeleton's pose needs to be updated. In that case, this is called only once per frame in a deferred process.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **animate\_physical\_bones** = `true` [🔗](#class-skeleton3d-property-animate-physical-bones)

- void **set\_animate\_physical\_bones**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_animate\_physical\_bones**()


**Deprecated:** This property may be changed or removed in future versions.

If you follow the recommended workflow and explicitly have [PhysicalBoneSimulator3D](class_physicalbonesimulator3d.md#class-physicalbonesimulator3d) as a child of **Skeleton3D**, you can control whether it is affected by raycasting without running [physical\_bones\_start\_simulation()](#class-skeleton3d-method-physical-bones-start-simulation), by its [SkeletonModifier3D.active](class_skeletonmodifier3d.md#class-skeletonmodifier3d-property-active).

However, for old (deprecated) configurations, **Skeleton3D** has an internal virtual [PhysicalBoneSimulator3D](class_physicalbonesimulator3d.md#class-physicalbonesimulator3d) for compatibility. This property controls the internal virtual [PhysicalBoneSimulator3D](class_physicalbonesimulator3d.md#class-physicalbonesimulator3d)'s [SkeletonModifier3D.active](class_skeletonmodifier3d.md#class-skeletonmodifier3d-property-active).

* * *

[ModifierCallbackModeProcess](#enum-skeleton3d-modifiercallbackmodeprocess) **modifier\_callback\_mode\_process** = `1` [🔗](#class-skeleton3d-property-modifier-callback-mode-process)

- void **set\_modifier\_callback\_mode\_process**(value: [ModifierCallbackModeProcess](#enum-skeleton3d-modifiercallbackmodeprocess))

- [ModifierCallbackModeProcess](#enum-skeleton3d-modifiercallbackmodeprocess) **get\_modifier\_callback\_mode\_process**()


Sets the processing timing for the Modifier.

* * *

[float](class_float.md#class-float) **motion\_scale** = `1.0` [🔗](#class-skeleton3d-property-motion-scale)

- void **set\_motion\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_motion\_scale**()


Multiplies the 3D position track animation.

**Note:** Unless this value is `1.0`, the key value in animation will not match the actual position value.

* * *

[bool](class_bool.md#class-bool) **show\_rest\_only** = `false` [🔗](#class-skeleton3d-property-show-rest-only)

- void **set\_show\_rest\_only**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_show\_rest\_only**()


If `true`, forces the bones in their default rest pose, regardless of their values. In the editor, this also prevents the bones from being edited.

* * *

## Method Descriptions

[int](class_int.md#class-int) **add\_bone**(name: [String](class_string.md#class-string)) [🔗](#class-skeleton3d-method-add-bone)

Adds a new bone with the given name. Returns the new bone's index, or `-1` if this method fails.

**Note:** Bone names should be unique, non empty, and cannot include the `:` and `/` characters.

* * *

void **advance**(delta: [float](class_float.md#class-float)) [🔗](#class-skeleton3d-method-advance)

Manually advance the child [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) s by the specified time (in seconds).

**Note:** The `delta` is temporarily accumulated in the **Skeleton3D**, and the deferred process uses the accumulated value to process the modification.

* * *

void **clear\_bones**() [🔗](#class-skeleton3d-method-clear-bones)

Clear all the bones in this skeleton.

* * *

void **clear\_bones\_global\_pose\_override**() [🔗](#class-skeleton3d-method-clear-bones-global-pose-override)

**Deprecated:** This method may be changed or removed in future versions.

Removes the global pose override on all bones in the skeleton.

* * *

[Skin](class_skin.md#class-skin) **create\_skin\_from\_rest\_transforms**() [🔗](#class-skeleton3d-method-create-skin-from-rest-transforms)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **find\_bone**(name: [String](class_string.md#class-string)) const [🔗](#class-skeleton3d-method-find-bone)

Returns the bone index that matches `name` as its name. Returns `-1` if no bone with this name exists.

* * *

void **force\_update\_all\_bone\_transforms**() [🔗](#class-skeleton3d-method-force-update-all-bone-transforms)

**Deprecated:** This method should only be called internally.

Force updates the bone transforms/poses for all bones in the skeleton.

* * *

void **force\_update\_bone\_child\_transform**(bone\_idx: [int](class_int.md#class-int)) [🔗](#class-skeleton3d-method-force-update-bone-child-transform)

Force updates the bone transform for the bone at `bone_idx` and all of its children.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_bone\_children**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-children)

Returns an array containing the bone indexes of all the child node of the passed in bone, `bone_idx`.

* * *

[int](class_int.md#class-int) **get\_bone\_count**() const [🔗](#class-skeleton3d-method-get-bone-count)

Returns the number of bones in the skeleton.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_bone\_global\_pose**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-global-pose)

Returns the overall transform of the specified bone, with respect to the skeleton. Being relative to the skeleton frame, this is not the actual "global" transform of the bone.

**Note:** This is the global pose you set to the skeleton in the process, the final global pose can get overridden by modifiers in the deferred process, if you want to access the final global pose, use [SkeletonModifier3D.modification\_processed](class_skeletonmodifier3d.md#class-skeletonmodifier3d-signal-modification-processed).

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_bone\_global\_pose\_no\_override**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-global-pose-no-override)

**Deprecated:** This method may be changed or removed in future versions.

Returns the overall transform of the specified bone, with respect to the skeleton, but without any global pose overrides. Being relative to the skeleton frame, this is not the actual "global" transform of the bone.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_bone\_global\_pose\_override**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-global-pose-override)

**Deprecated:** This method may be changed or removed in future versions.

Returns the global pose override transform for `bone_idx`.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_bone\_global\_rest**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-global-rest)

Returns the global rest transform for `bone_idx`.

* * *

[Variant](class_variant.md#class-variant) **get\_bone\_meta**(bone\_idx: [int](class_int.md#class-int), key: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-skeleton3d-method-get-bone-meta)

Returns the metadata for the bone at index `bone_idx` with `key`.

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **get\_bone\_meta\_list**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-meta-list)

Returns the list of all metadata keys for the bone at index `bone_idx`.

* * *

[String](class_string.md#class-string) **get\_bone\_name**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-name)

Returns the name of the bone at index `bone_idx`.

* * *

[int](class_int.md#class-int) **get\_bone\_parent**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-parent)

Returns the bone index which is the parent of the bone at `bone_idx`. If -1, then bone has no parent.

**Note:** The parent bone returned will always be less than `bone_idx`.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_bone\_pose**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-pose)

Returns the pose transform of the specified bone.

**Note:** This is the pose you set to the skeleton in the process, the final pose can get overridden by modifiers in the deferred process, if you want to access the final pose, use [SkeletonModifier3D.modification\_processed](class_skeletonmodifier3d.md#class-skeletonmodifier3d-signal-modification-processed).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_bone\_pose\_position**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-pose-position)

Returns the pose position of the bone at `bone_idx`. The returned [Vector3](class_vector3.md#class-vector3) is in the local coordinate space of the **Skeleton3D** node.

* * *

[Quaternion](class_quaternion.md#class-quaternion) **get\_bone\_pose\_rotation**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-pose-rotation)

Returns the pose rotation of the bone at `bone_idx`. The returned [Quaternion](class_quaternion.md#class-quaternion) is local to the bone with respect to the rotation of any parent bones.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_bone\_pose\_scale**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-pose-scale)

Returns the pose scale of the bone at `bone_idx`.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_bone\_rest**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-get-bone-rest)

Returns the rest transform for a bone `bone_idx`.

* * *

[StringName](class_stringname.md#class-stringname) **get\_concatenated\_bone\_names**() const [🔗](#class-skeleton3d-method-get-concatenated-bone-names)

Returns all bone names concatenated with commas ( `,`) as a single [StringName](class_stringname.md#class-stringname).

It is useful to set it as a hint for the enum property.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_parentless\_bones**() const [🔗](#class-skeleton3d-method-get-parentless-bones)

Returns an array with all of the bones that are parentless. Another way to look at this is that it returns the indexes of all the bones that are not dependent or modified by other bones in the Skeleton.

* * *

[int](class_int.md#class-int) **get\_version**() const [🔗](#class-skeleton3d-method-get-version)

Returns the number of times the bone hierarchy has changed within this skeleton, including renames.

The Skeleton version is not serialized: only use within a single instance of Skeleton3D.

Use for invalidating caches in IK solvers and other nodes which process bones.

* * *

[bool](class_bool.md#class-bool) **has\_bone\_meta**(bone\_idx: [int](class_int.md#class-int), key: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-skeleton3d-method-has-bone-meta)

Returns `true` if the bone at index `bone_idx` has metadata with the key `key`.

* * *

[bool](class_bool.md#class-bool) **is\_bone\_enabled**(bone\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeleton3d-method-is-bone-enabled)

Returns whether the bone pose for the bone at `bone_idx` is enabled.

* * *

void **localize\_rests**() [🔗](#class-skeleton3d-method-localize-rests)

Returns all bones in the skeleton to their rest poses.

* * *

void **physical\_bones\_add\_collision\_exception**(exception: [RID](class_rid.md#class-rid)) [🔗](#class-skeleton3d-method-physical-bones-add-collision-exception)

**Deprecated:** This method may be changed or removed in future versions.

Adds a collision exception to the physical bone.

Works just like the [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) node.

* * *

void **physical\_bones\_remove\_collision\_exception**(exception: [RID](class_rid.md#class-rid)) [🔗](#class-skeleton3d-method-physical-bones-remove-collision-exception)

**Deprecated:** This method may be changed or removed in future versions.

Removes a collision exception to the physical bone.

Works just like the [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) node.

* * *

void **physical\_bones\_start\_simulation**(bones: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) [🔗](#class-skeleton3d-method-physical-bones-start-simulation)

**Deprecated:** This method may be changed or removed in future versions.

Tells the [PhysicalBone3D](class_physicalbone3d.md#class-physicalbone3d) nodes in the Skeleton to start simulating and reacting to the physics world.

Optionally, a list of bone names can be passed-in, allowing only the passed-in bones to be simulated.

* * *

void **physical\_bones\_stop\_simulation**() [🔗](#class-skeleton3d-method-physical-bones-stop-simulation)

**Deprecated:** This method may be changed or removed in future versions.

Tells the [PhysicalBone3D](class_physicalbone3d.md#class-physicalbone3d) nodes in the Skeleton to stop simulating.

* * *

[SkinReference](class_skinreference.md#class-skinreference) **register\_skin**(skin: [Skin](class_skin.md#class-skin)) [🔗](#class-skeleton3d-method-register-skin)

Binds the given Skin to the Skeleton.

* * *

void **reset\_bone\_pose**(bone\_idx: [int](class_int.md#class-int)) [🔗](#class-skeleton3d-method-reset-bone-pose)

Sets the bone pose to rest for `bone_idx`.

* * *

void **reset\_bone\_poses**() [🔗](#class-skeleton3d-method-reset-bone-poses)

Sets all bone poses to rests.

* * *

void **set\_bone\_enabled**(bone\_idx: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool) = true) [🔗](#class-skeleton3d-method-set-bone-enabled)

Disables the pose for the bone at `bone_idx` if `false`, enables the bone pose if `true`.

* * *

void **set\_bone\_global\_pose**(bone\_idx: [int](class_int.md#class-int), pose: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-skeleton3d-method-set-bone-global-pose)

Sets the global pose transform, `pose`, for the bone at `bone_idx`.

**Note:** If other bone poses have been changed, this method executes a dirty poses recalculation and will cause performance to deteriorate. If you know that multiple global poses will be applied, consider using [set\_bone\_pose()](#class-skeleton3d-method-set-bone-pose) with precalculation.

* * *

void **set\_bone\_global\_pose\_override**(bone\_idx: [int](class_int.md#class-int), pose: [Transform3D](class_transform3d.md#class-transform3d), amount: [float](class_float.md#class-float), persistent: [bool](class_bool.md#class-bool) = false) [🔗](#class-skeleton3d-method-set-bone-global-pose-override)

**Deprecated:** This method may be changed or removed in future versions.

Sets the global pose transform, `pose`, for the bone at `bone_idx`.

`amount` is the interpolation strength that will be used when applying the pose, and `persistent` determines if the applied pose will remain.

**Note:** The pose transform needs to be a global pose! To convert a world transform from a [Node3D](class_node3d.md#class-node3d) to a global bone pose, multiply the [Transform3D.affine\_inverse()](class_transform3d.md#class-transform3d-method-affine-inverse) of the node's [Node3D.global\_transform](class_node3d.md#class-node3d-property-global-transform) by the desired world transform.

* * *

void **set\_bone\_meta**(bone\_idx: [int](class_int.md#class-int), key: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-skeleton3d-method-set-bone-meta)

Sets the metadata for the bone at index `bone_idx`, setting the `key` meta to `value`.

* * *

void **set\_bone\_name**(bone\_idx: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-skeleton3d-method-set-bone-name)

Sets the bone name, `name`, for the bone at `bone_idx`.

* * *

void **set\_bone\_parent**(bone\_idx: [int](class_int.md#class-int), parent\_idx: [int](class_int.md#class-int)) [🔗](#class-skeleton3d-method-set-bone-parent)

Sets the bone index `parent_idx` as the parent of the bone at `bone_idx`. If -1, then bone has no parent.

**Note:** `parent_idx` must be less than `bone_idx`.

* * *

void **set\_bone\_pose**(bone\_idx: [int](class_int.md#class-int), pose: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-skeleton3d-method-set-bone-pose)

Sets the pose transform, `pose`, for the bone at `bone_idx`.

* * *

void **set\_bone\_pose\_position**(bone\_idx: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-skeleton3d-method-set-bone-pose-position)

Sets the pose position of the bone at `bone_idx` to `position`. `position` is a [Vector3](class_vector3.md#class-vector3) describing a position local to the **Skeleton3D** node.

* * *

void **set\_bone\_pose\_rotation**(bone\_idx: [int](class_int.md#class-int), rotation: [Quaternion](class_quaternion.md#class-quaternion)) [🔗](#class-skeleton3d-method-set-bone-pose-rotation)

Sets the pose rotation of the bone at `bone_idx` to `rotation`. `rotation` is a [Quaternion](class_quaternion.md#class-quaternion) describing a rotation in the bone's local coordinate space with respect to the rotation of any parent bones.

* * *

void **set\_bone\_pose\_scale**(bone\_idx: [int](class_int.md#class-int), scale: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-skeleton3d-method-set-bone-pose-scale)

Sets the pose scale of the bone at `bone_idx` to `scale`.

* * *

void **set\_bone\_rest**(bone\_idx: [int](class_int.md#class-int), rest: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-skeleton3d-method-set-bone-rest)

Sets the rest transform for bone `bone_idx`.

* * *

void **unparent\_bone\_and\_rest**(bone\_idx: [int](class_int.md#class-int)) [🔗](#class-skeleton3d-method-unparent-bone-and-rest)

Unparents the bone at `bone_idx` and sets its rest position to that of its parent prior to being reset.

[Previous](class_skeleton2d.md "Skeleton2D") [Next](class_skeletonik3d.md "SkeletonIK3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeleton2d.md "Skeleton2D") [Next](class_skeletonik3d.md "SkeletonIK3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).