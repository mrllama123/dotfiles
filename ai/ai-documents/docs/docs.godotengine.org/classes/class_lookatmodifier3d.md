---
title: LookAtModifier3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_lookatmodifier3d.html
crawled_at: "2026-08-13T10:23:14+12:00"
content_hash: 7bfdf539b5e327fb15bb85241263e19077294df13af2fcfab9417e5b3612b8c9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - LookAtModifier3D

* * *

# LookAtModifier3D

**Inherits:** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

The **LookAtModifier3D** rotates a bone to look at a target.

## Description

This [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) rotates a bone to look at a target. This is helpful for moving a character's head to look at the player, rotating a turret to look at a target, or any other case where you want to make a bone rotate towards something quickly and easily.

When applying multiple **LookAtModifier3D** s, the **LookAtModifier3D** assigned to the parent bone must be put above the **LookAtModifier3D** assigned to the child bone in the list in order for the child bone results to be correct.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bone](#class-lookatmodifier3d-property-bone) | `-1` |
| [String](class_string.md#class-string) | [bone\_name](#class-lookatmodifier3d-property-bone-name) | `""` |
| [float](class_float.md#class-float) | [duration](#class-lookatmodifier3d-property-duration) | `0.0` |
| [EaseType](class_tween.md#enum-tween-easetype) | [ease\_type](#class-lookatmodifier3d-property-ease-type) | `0` |
| [BoneAxis](class_skeletonmodifier3d.md#enum-skeletonmodifier3d-boneaxis) | [forward\_axis](#class-lookatmodifier3d-property-forward-axis) | `4` |
| [int](class_int.md#class-int) | [origin\_bone](#class-lookatmodifier3d-property-origin-bone) |  |
| [String](class_string.md#class-string) | [origin\_bone\_name](#class-lookatmodifier3d-property-origin-bone-name) |  |
| [NodePath](class_nodepath.md#class-nodepath) | [origin\_external\_node](#class-lookatmodifier3d-property-origin-external-node) |  |
| [OriginFrom](#enum-lookatmodifier3d-originfrom) | [origin\_from](#class-lookatmodifier3d-property-origin-from) | `0` |
| [Vector3](class_vector3.md#class-vector3) | [origin\_offset](#class-lookatmodifier3d-property-origin-offset) | `Vector3(0, 0, 0)` |
| [float](class_float.md#class-float) | [origin\_safe\_margin](#class-lookatmodifier3d-property-origin-safe-margin) | `0.1` |
| [float](class_float.md#class-float) | [primary\_damp\_threshold](#class-lookatmodifier3d-property-primary-damp-threshold) |  |
| [float](class_float.md#class-float) | [primary\_limit\_angle](#class-lookatmodifier3d-property-primary-limit-angle) |  |
| [float](class_float.md#class-float) | [primary\_negative\_damp\_threshold](#class-lookatmodifier3d-property-primary-negative-damp-threshold) |  |
| [float](class_float.md#class-float) | [primary\_negative\_limit\_angle](#class-lookatmodifier3d-property-primary-negative-limit-angle) |  |
| [float](class_float.md#class-float) | [primary\_positive\_damp\_threshold](#class-lookatmodifier3d-property-primary-positive-damp-threshold) |  |
| [float](class_float.md#class-float) | [primary\_positive\_limit\_angle](#class-lookatmodifier3d-property-primary-positive-limit-angle) |  |
| [Axis](class_vector3.md#enum-vector3-axis) | [primary\_rotation\_axis](#class-lookatmodifier3d-property-primary-rotation-axis) | `1` |
| [float](class_float.md#class-float) | [secondary\_damp\_threshold](#class-lookatmodifier3d-property-secondary-damp-threshold) |  |
| [float](class_float.md#class-float) | [secondary\_limit\_angle](#class-lookatmodifier3d-property-secondary-limit-angle) |  |
| [float](class_float.md#class-float) | [secondary\_negative\_damp\_threshold](#class-lookatmodifier3d-property-secondary-negative-damp-threshold) |  |
| [float](class_float.md#class-float) | [secondary\_negative\_limit\_angle](#class-lookatmodifier3d-property-secondary-negative-limit-angle) |  |
| [float](class_float.md#class-float) | [secondary\_positive\_damp\_threshold](#class-lookatmodifier3d-property-secondary-positive-damp-threshold) |  |
| [float](class_float.md#class-float) | [secondary\_positive\_limit\_angle](#class-lookatmodifier3d-property-secondary-positive-limit-angle) |  |
| [bool](class_bool.md#class-bool) | [symmetry\_limitation](#class-lookatmodifier3d-property-symmetry-limitation) |  |
| [NodePath](class_nodepath.md#class-nodepath) | [target\_node](#class-lookatmodifier3d-property-target-node) | `NodePath("")` |
| [TransitionType](class_tween.md#enum-tween-transitiontype) | [transition\_type](#class-lookatmodifier3d-property-transition-type) | `0` |
| [bool](class_bool.md#class-bool) | [use\_angle\_limitation](#class-lookatmodifier3d-property-use-angle-limitation) | `false` |
| [bool](class_bool.md#class-bool) | [use\_secondary\_rotation](#class-lookatmodifier3d-property-use-secondary-rotation) | `true` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_interpolation\_remaining](#class-lookatmodifier3d-method-get-interpolation-remaining)() const |
| [bool](class_bool.md#class-bool) | [is\_interpolating](#class-lookatmodifier3d-method-is-interpolating)() const |
| [bool](class_bool.md#class-bool) | [is\_target\_within\_limitation](#class-lookatmodifier3d-method-is-target-within-limitation)() const |

* * *

## Enumerations

enum **OriginFrom**: [🔗](#enum-lookatmodifier3d-originfrom)

[OriginFrom](#enum-lookatmodifier3d-originfrom) **ORIGIN\_FROM\_SELF** = `0`

The bone rest position of the bone specified in [bone](#class-lookatmodifier3d-property-bone) is used as origin.

[OriginFrom](#enum-lookatmodifier3d-originfrom) **ORIGIN\_FROM\_SPECIFIC\_BONE** = `1`

The bone global pose position of the bone specified in [origin\_bone](#class-lookatmodifier3d-property-origin-bone) is used as origin.

**Note:** It is recommended that you select only the parent bone unless you are familiar with the bone processing process. The specified bone pose at the time the **LookAtModifier3D** is processed is used as a reference. In other words, if you specify a child bone and the **LookAtModifier3D** causes the child bone to move, the rendered result and direction will not match.

[OriginFrom](#enum-lookatmodifier3d-originfrom) **ORIGIN\_FROM\_EXTERNAL\_NODE** = `2`

The global position of the [Node3D](class_node3d.md#class-node3d) specified in [origin\_external\_node](#class-lookatmodifier3d-property-origin-external-node) is used as origin.

**Note:** Same as [ORIGIN\_FROM\_SPECIFIC\_BONE](#class-lookatmodifier3d-constant-origin-from-specific-bone), when specifying a [BoneAttachment3D](class_boneattachment3d.md#class-boneattachment3d) with a child bone assigned, the rendered result and direction will not match.

* * *

## Property Descriptions

[int](class_int.md#class-int) **bone** = `-1` [🔗](#class-lookatmodifier3d-property-bone)

- void **set\_bone**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bone**()


Index of the [bone\_name](#class-lookatmodifier3d-property-bone-name) in the parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d).

* * *

[String](class_string.md#class-string) **bone\_name** = `""` [🔗](#class-lookatmodifier3d-property-bone-name)

- void **set\_bone\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_bone\_name**()


The bone name of the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) that the modification will operate on.

* * *

[float](class_float.md#class-float) **duration** = `0.0` [🔗](#class-lookatmodifier3d-property-duration)

- void **set\_duration**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_duration**()


The duration of the time-based interpolation. Interpolation is triggered at the following cases:

- When the target node is changed

- When an axis is flipped due to angle limitation


**Note:** The flipping occurs when the target is outside the angle limitation and the internally computed secondary rotation axis of the forward vector is flipped. Visually, it occurs when the target is outside the angle limitation and crosses the plane of the [forward\_axis](#class-lookatmodifier3d-property-forward-axis) and [primary\_rotation\_axis](#class-lookatmodifier3d-property-primary-rotation-axis).

* * *

[EaseType](class_tween.md#enum-tween-easetype) **ease\_type** = `0` [🔗](#class-lookatmodifier3d-property-ease-type)

- void **set\_ease\_type**(value: [EaseType](class_tween.md#enum-tween-easetype))

- [EaseType](class_tween.md#enum-tween-easetype) **get\_ease\_type**()


The ease type of the time-based interpolation. See also [EaseType](class_tween.md#enum-tween-easetype).

* * *

[BoneAxis](class_skeletonmodifier3d.md#enum-skeletonmodifier3d-boneaxis) **forward\_axis** = `4` [🔗](#class-lookatmodifier3d-property-forward-axis)

- void **set\_forward\_axis**(value: [BoneAxis](class_skeletonmodifier3d.md#enum-skeletonmodifier3d-boneaxis))

- [BoneAxis](class_skeletonmodifier3d.md#enum-skeletonmodifier3d-boneaxis) **get\_forward\_axis**()


The forward axis of the bone. This [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) modifies the bone so that this axis points toward the [target\_node](#class-lookatmodifier3d-property-target-node).

* * *

[int](class_int.md#class-int) **origin\_bone** [🔗](#class-lookatmodifier3d-property-origin-bone)

- void **set\_origin\_bone**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_origin\_bone**()


Index of the [origin\_bone\_name](#class-lookatmodifier3d-property-origin-bone-name) in the parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d).

* * *

[String](class_string.md#class-string) **origin\_bone\_name** [🔗](#class-lookatmodifier3d-property-origin-bone-name)

- void **set\_origin\_bone\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_origin\_bone\_name**()


If [origin\_from](#class-lookatmodifier3d-property-origin-from) is [ORIGIN\_FROM\_SPECIFIC\_BONE](#class-lookatmodifier3d-constant-origin-from-specific-bone), the bone global pose position specified for this is used as origin.

* * *

[NodePath](class_nodepath.md#class-nodepath) **origin\_external\_node** [🔗](#class-lookatmodifier3d-property-origin-external-node)

- void **set\_origin\_external\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_origin\_external\_node**()


If [origin\_from](#class-lookatmodifier3d-property-origin-from) is [ORIGIN\_FROM\_EXTERNAL\_NODE](#class-lookatmodifier3d-constant-origin-from-external-node), the global position of the [Node3D](class_node3d.md#class-node3d) specified for this is used as origin.

* * *

[OriginFrom](#enum-lookatmodifier3d-originfrom) **origin\_from** = `0` [🔗](#class-lookatmodifier3d-property-origin-from)

- void **set\_origin\_from**(value: [OriginFrom](#enum-lookatmodifier3d-originfrom))

- [OriginFrom](#enum-lookatmodifier3d-originfrom) **get\_origin\_from**()


This value determines from what origin is retrieved for use in the calculation of the forward vector.

* * *

[Vector3](class_vector3.md#class-vector3) **origin\_offset** = `Vector3(0, 0, 0)` [🔗](#class-lookatmodifier3d-property-origin-offset)

- void **set\_origin\_offset**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_origin\_offset**()


The offset of the bone pose origin. Matching the origins by offset is useful for cases where multiple bones must always face the same direction, such as the eyes.

**Note:** This value indicates the local position of the object set in [origin\_from](#class-lookatmodifier3d-property-origin-from).

* * *

[float](class_float.md#class-float) **origin\_safe\_margin** = `0.1` [🔗](#class-lookatmodifier3d-property-origin-safe-margin)

- void **set\_origin\_safe\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_origin\_safe\_margin**()


If the target passes through too close to the origin than this value, time-based interpolation is used even if the target is within the angular limitations, to prevent the angular velocity from becoming too high.

* * *

[float](class_float.md#class-float) **primary\_damp\_threshold** [🔗](#class-lookatmodifier3d-property-primary-damp-threshold)

- void **set\_primary\_damp\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_primary\_damp\_threshold**()


The threshold to start damping for [primary\_limit\_angle](#class-lookatmodifier3d-property-primary-limit-angle). It provides non-linear (b-spline) interpolation, let it feel more resistance the more it rotate to the edge limit. This is useful for simulating the limits of human motion.

If `1.0`, no damping is performed. If `0.0`, damping is always performed.

* * *

[float](class_float.md#class-float) **primary\_limit\_angle** [🔗](#class-lookatmodifier3d-property-primary-limit-angle)

- void **set\_primary\_limit\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_primary\_limit\_angle**()


The limit angle of the primary rotation when [symmetry\_limitation](#class-lookatmodifier3d-property-symmetry-limitation) is `true`.

* * *

[float](class_float.md#class-float) **primary\_negative\_damp\_threshold** [🔗](#class-lookatmodifier3d-property-primary-negative-damp-threshold)

- void **set\_primary\_negative\_damp\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_primary\_negative\_damp\_threshold**()


The threshold to start damping for [primary\_negative\_limit\_angle](#class-lookatmodifier3d-property-primary-negative-limit-angle).

* * *

[float](class_float.md#class-float) **primary\_negative\_limit\_angle** [🔗](#class-lookatmodifier3d-property-primary-negative-limit-angle)

- void **set\_primary\_negative\_limit\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_primary\_negative\_limit\_angle**()


The limit angle of negative side of the primary rotation when [symmetry\_limitation](#class-lookatmodifier3d-property-symmetry-limitation) is `false`.

* * *

[float](class_float.md#class-float) **primary\_positive\_damp\_threshold** [🔗](#class-lookatmodifier3d-property-primary-positive-damp-threshold)

- void **set\_primary\_positive\_damp\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_primary\_positive\_damp\_threshold**()


The threshold to start damping for [primary\_positive\_limit\_angle](#class-lookatmodifier3d-property-primary-positive-limit-angle).

* * *

[float](class_float.md#class-float) **primary\_positive\_limit\_angle** [🔗](#class-lookatmodifier3d-property-primary-positive-limit-angle)

- void **set\_primary\_positive\_limit\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_primary\_positive\_limit\_angle**()


The limit angle of positive side of the primary rotation when [symmetry\_limitation](#class-lookatmodifier3d-property-symmetry-limitation) is `false`.

* * *

[Axis](class_vector3.md#enum-vector3-axis) **primary\_rotation\_axis** = `1` [🔗](#class-lookatmodifier3d-property-primary-rotation-axis)

- void **set\_primary\_rotation\_axis**(value: [Axis](class_vector3.md#enum-vector3-axis))

- [Axis](class_vector3.md#enum-vector3-axis) **get\_primary\_rotation\_axis**()


The axis of the first rotation. This [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) works by compositing the rotation by Euler angles to prevent to rotate the [forward\_axis](#class-lookatmodifier3d-property-forward-axis).

* * *

[float](class_float.md#class-float) **secondary\_damp\_threshold** [🔗](#class-lookatmodifier3d-property-secondary-damp-threshold)

- void **set\_secondary\_damp\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_secondary\_damp\_threshold**()


The threshold to start damping for [secondary\_limit\_angle](#class-lookatmodifier3d-property-secondary-limit-angle).

* * *

[float](class_float.md#class-float) **secondary\_limit\_angle** [🔗](#class-lookatmodifier3d-property-secondary-limit-angle)

- void **set\_secondary\_limit\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_secondary\_limit\_angle**()


The limit angle of the secondary rotation when [symmetry\_limitation](#class-lookatmodifier3d-property-symmetry-limitation) is `true`.

* * *

[float](class_float.md#class-float) **secondary\_negative\_damp\_threshold** [🔗](#class-lookatmodifier3d-property-secondary-negative-damp-threshold)

- void **set\_secondary\_negative\_damp\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_secondary\_negative\_damp\_threshold**()


The threshold to start damping for [secondary\_negative\_limit\_angle](#class-lookatmodifier3d-property-secondary-negative-limit-angle).

* * *

[float](class_float.md#class-float) **secondary\_negative\_limit\_angle** [🔗](#class-lookatmodifier3d-property-secondary-negative-limit-angle)

- void **set\_secondary\_negative\_limit\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_secondary\_negative\_limit\_angle**()


The limit angle of negative side of the secondary rotation when [symmetry\_limitation](#class-lookatmodifier3d-property-symmetry-limitation) is `false`.

* * *

[float](class_float.md#class-float) **secondary\_positive\_damp\_threshold** [🔗](#class-lookatmodifier3d-property-secondary-positive-damp-threshold)

- void **set\_secondary\_positive\_damp\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_secondary\_positive\_damp\_threshold**()


The threshold to start damping for [secondary\_positive\_limit\_angle](#class-lookatmodifier3d-property-secondary-positive-limit-angle).

* * *

[float](class_float.md#class-float) **secondary\_positive\_limit\_angle** [🔗](#class-lookatmodifier3d-property-secondary-positive-limit-angle)

- void **set\_secondary\_positive\_limit\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_secondary\_positive\_limit\_angle**()


The limit angle of positive side of the secondary rotation when [symmetry\_limitation](#class-lookatmodifier3d-property-symmetry-limitation) is `false`.

* * *

[bool](class_bool.md#class-bool) **symmetry\_limitation** [🔗](#class-lookatmodifier3d-property-symmetry-limitation)

- void **set\_symmetry\_limitation**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_limitation\_symmetry**()


If `true`, the limitations are spread from the bone symmetrically.

If `false`, the limitation can be specified separately for each side of the bone rest.

* * *

[NodePath](class_nodepath.md#class-nodepath) **target\_node** = `NodePath("")` [🔗](#class-lookatmodifier3d-property-target-node)

- void **set\_target\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_target\_node**()


The [NodePath](class_nodepath.md#class-nodepath) to the node that is the target for the look at modification. This node is what the modification will rotate the bone to.

* * *

[TransitionType](class_tween.md#enum-tween-transitiontype) **transition\_type** = `0` [🔗](#class-lookatmodifier3d-property-transition-type)

- void **set\_transition\_type**(value: [TransitionType](class_tween.md#enum-tween-transitiontype))

- [TransitionType](class_tween.md#enum-tween-transitiontype) **get\_transition\_type**()


The transition type of the time-based interpolation. See also [TransitionType](class_tween.md#enum-tween-transitiontype).

* * *

[bool](class_bool.md#class-bool) **use\_angle\_limitation** = `false` [🔗](#class-lookatmodifier3d-property-use-angle-limitation)

- void **set\_use\_angle\_limitation**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_angle\_limitation**()


If `true`, limits the amount of rotation. For example, this helps to prevent a character's neck from rotating 360 degrees.

**Note:** As with [AnimationTree](class_animationtree.md#class-animationtree) blending, interpolation is provided that favors [Skeleton3D.get\_bone\_rest()](class_skeleton3d.md#class-skeleton3d-method-get-bone-rest). This means that interpolation does not select the shortest path in some cases.

**Note:** Some values for [transition\_type](#class-lookatmodifier3d-property-transition-type) (such as [Tween.TRANS\_BACK](class_tween.md#class-tween-constant-trans-back), [Tween.TRANS\_ELASTIC](class_tween.md#class-tween-constant-trans-elastic), and [Tween.TRANS\_SPRING](class_tween.md#class-tween-constant-trans-spring)) may exceed the limitations. If interpolation occurs while overshooting the limitations, the result might not respect the bone rest.

* * *

[bool](class_bool.md#class-bool) **use\_secondary\_rotation** = `true` [🔗](#class-lookatmodifier3d-property-use-secondary-rotation)

- void **set\_use\_secondary\_rotation**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_secondary\_rotation**()


If `true`, provides rotation by two axes.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_interpolation\_remaining**() const [🔗](#class-lookatmodifier3d-method-get-interpolation-remaining)

Returns the remaining seconds of the time-based interpolation.

* * *

[bool](class_bool.md#class-bool) **is\_interpolating**() const [🔗](#class-lookatmodifier3d-method-is-interpolating)

Returns `true` if time-based interpolation is running. If `true`, it is equivalent to [get\_interpolation\_remaining()](#class-lookatmodifier3d-method-get-interpolation-remaining) returning `0.0`.

This is useful to determine whether a **LookAtModifier3D** can be removed safely.

* * *

[bool](class_bool.md#class-bool) **is\_target\_within\_limitation**() const [🔗](#class-lookatmodifier3d-method-is-target-within-limitation)

Returns whether the target is within the angle limitations. It is useful for unsetting the [target\_node](#class-lookatmodifier3d-property-target-node) when the target is outside of the angle limitations.

**Note:** The value is updated after [SkeletonModifier3D.\_process\_modification()](class_skeletonmodifier3d.md#class-skeletonmodifier3d-private-method-process-modification). To retrieve this value correctly, we recommend using the signal [SkeletonModifier3D.modification\_processed](class_skeletonmodifier3d.md#class-skeletonmodifier3d-signal-modification-processed).

[Previous](class_linkbutton.md "LinkButton") [Next](class_margincontainer.md "MarginContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_linkbutton.md "LinkButton") [Next](class_margincontainer.md "MarginContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).