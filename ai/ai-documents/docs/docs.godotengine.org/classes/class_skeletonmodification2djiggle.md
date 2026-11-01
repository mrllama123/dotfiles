---
title: SkeletonModification2DJiggle — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonmodification2djiggle.html
crawled_at: "2026-08-13T10:35:43+12:00"
content_hash: 089acd861a6c327d1c305f8a07679ff200e718b3c93ecb09b5a101e3a17ae4d1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonModification2DJiggle

* * *

# SkeletonModification2DJiggle

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [SkeletonModification2D](class_skeletonmodification2d.md#class-skeletonmodification2d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A modification that jiggles [Bone2D](class_bone2d.md#class-bone2d) nodes as they move towards a target.

## Description

This modification moves a series of bones, typically called a bone chain, towards a target. What makes this modification special is that it calculates the velocity and acceleration for each bone in the bone chain, and runs a very light physics-like calculation using the inputted values. This allows the bones to overshoot the target and "jiggle" around. It can be configured to act more like a spring, or sway around like cloth might.

This modification is useful for adding additional motion to things like hair, the edges of clothing, and more. It has several settings to that allow control over how the joint moves when the target moves.

**Note:** The Jiggle modifier has `jiggle_joints`, which are the data objects that hold the data for each joint in the Jiggle chain. This is different from than [Bone2D](class_bone2d.md#class-bone2d) nodes! Jiggle joints hold the data needed for each [Bone2D](class_bone2d.md#class-bone2d) in the bone chain used by the Jiggle modification.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [damping](#class-skeletonmodification2djiggle-property-damping) | `0.75` |
| [Vector2](class_vector2.md#class-vector2) | [gravity](#class-skeletonmodification2djiggle-property-gravity) | `Vector2(0, 6)` |
| [int](class_int.md#class-int) | [jiggle\_data\_chain\_length](#class-skeletonmodification2djiggle-property-jiggle-data-chain-length) | `0` |
| [float](class_float.md#class-float) | [mass](#class-skeletonmodification2djiggle-property-mass) | `0.75` |
| [float](class_float.md#class-float) | [stiffness](#class-skeletonmodification2djiggle-property-stiffness) | `3.0` |
| [NodePath](class_nodepath.md#class-nodepath) | [target\_nodepath](#class-skeletonmodification2djiggle-property-target-nodepath) | `NodePath("")` |
| [bool](class_bool.md#class-bool) | [use\_gravity](#class-skeletonmodification2djiggle-property-use-gravity) | `false` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_collision\_mask](#class-skeletonmodification2djiggle-method-get-collision-mask)() const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_jiggle\_joint\_bone2d\_node](#class-skeletonmodification2djiggle-method-get-jiggle-joint-bone2d-node)(joint\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_jiggle\_joint\_bone\_index](#class-skeletonmodification2djiggle-method-get-jiggle-joint-bone-index)(joint\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_jiggle\_joint\_damping](#class-skeletonmodification2djiggle-method-get-jiggle-joint-damping)(joint\_idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_jiggle\_joint\_gravity](#class-skeletonmodification2djiggle-method-get-jiggle-joint-gravity)(joint\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_jiggle\_joint\_mass](#class-skeletonmodification2djiggle-method-get-jiggle-joint-mass)(joint\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_jiggle\_joint\_override](#class-skeletonmodification2djiggle-method-get-jiggle-joint-override)(joint\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_jiggle\_joint\_stiffness](#class-skeletonmodification2djiggle-method-get-jiggle-joint-stiffness)(joint\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_jiggle\_joint\_use\_gravity](#class-skeletonmodification2djiggle-method-get-jiggle-joint-use-gravity)(joint\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_use\_colliders](#class-skeletonmodification2djiggle-method-get-use-colliders)() const |
| void | [set\_collision\_mask](#class-skeletonmodification2djiggle-method-set-collision-mask)(collision\_mask: [int](class_int.md#class-int)) |
| void | [set\_jiggle\_joint\_bone2d\_node](#class-skeletonmodification2djiggle-method-set-jiggle-joint-bone2d-node)(joint\_idx: [int](class_int.md#class-int), bone2d\_node: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [set\_jiggle\_joint\_bone\_index](#class-skeletonmodification2djiggle-method-set-jiggle-joint-bone-index)(joint\_idx: [int](class_int.md#class-int), bone\_idx: [int](class_int.md#class-int)) |
| void | [set\_jiggle\_joint\_damping](#class-skeletonmodification2djiggle-method-set-jiggle-joint-damping)(joint\_idx: [int](class_int.md#class-int), damping: [float](class_float.md#class-float)) |
| void | [set\_jiggle\_joint\_gravity](#class-skeletonmodification2djiggle-method-set-jiggle-joint-gravity)(joint\_idx: [int](class_int.md#class-int), gravity: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_jiggle\_joint\_mass](#class-skeletonmodification2djiggle-method-set-jiggle-joint-mass)(joint\_idx: [int](class_int.md#class-int), mass: [float](class_float.md#class-float)) |
| void | [set\_jiggle\_joint\_override](#class-skeletonmodification2djiggle-method-set-jiggle-joint-override)(joint\_idx: [int](class_int.md#class-int), override: [bool](class_bool.md#class-bool)) |
| void | [set\_jiggle\_joint\_stiffness](#class-skeletonmodification2djiggle-method-set-jiggle-joint-stiffness)(joint\_idx: [int](class_int.md#class-int), stiffness: [float](class_float.md#class-float)) |
| void | [set\_jiggle\_joint\_use\_gravity](#class-skeletonmodification2djiggle-method-set-jiggle-joint-use-gravity)(joint\_idx: [int](class_int.md#class-int), use\_gravity: [bool](class_bool.md#class-bool)) |
| void | [set\_use\_colliders](#class-skeletonmodification2djiggle-method-set-use-colliders)(use\_colliders: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[float](class_float.md#class-float) **damping** = `0.75` [🔗](#class-skeletonmodification2djiggle-property-damping)

- void **set\_damping**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_damping**()


The default amount of damping applied to the Jiggle joints, if they are not overridden. Higher values lead to more of the calculated velocity being applied.

* * *

[Vector2](class_vector2.md#class-vector2) **gravity** = `Vector2(0, 6)` [🔗](#class-skeletonmodification2djiggle-property-gravity)

- void **set\_gravity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_gravity**()


The default amount of gravity applied to the Jiggle joints, if they are not overridden.

* * *

[int](class_int.md#class-int) **jiggle\_data\_chain\_length** = `0` [🔗](#class-skeletonmodification2djiggle-property-jiggle-data-chain-length)

- void **set\_jiggle\_data\_chain\_length**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_jiggle\_data\_chain\_length**()


The amount of Jiggle joints in the Jiggle modification.

* * *

[float](class_float.md#class-float) **mass** = `0.75` [🔗](#class-skeletonmodification2djiggle-property-mass)

- void **set\_mass**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mass**()


The default amount of mass assigned to the Jiggle joints, if they are not overridden. Higher values lead to faster movements and more overshooting.

* * *

[float](class_float.md#class-float) **stiffness** = `3.0` [🔗](#class-skeletonmodification2djiggle-property-stiffness)

- void **set\_stiffness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_stiffness**()


The default amount of stiffness assigned to the Jiggle joints, if they are not overridden. Higher values act more like springs, quickly moving into the correct position.

* * *

[NodePath](class_nodepath.md#class-nodepath) **target\_nodepath** = `NodePath("")` [🔗](#class-skeletonmodification2djiggle-property-target-nodepath)

- void **set\_target\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_target\_node**()


The NodePath to the node that is the target for the Jiggle modification. This node is what the Jiggle chain will attempt to rotate the bone chain to.

* * *

[bool](class_bool.md#class-bool) **use\_gravity** = `false` [🔗](#class-skeletonmodification2djiggle-property-use-gravity)

- void **set\_use\_gravity**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_gravity**()


Whether the gravity vector, [gravity](#class-skeletonmodification2djiggle-property-gravity), should be applied to the Jiggle joints, assuming they are not overriding the default settings.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_collision\_mask**() const [🔗](#class-skeletonmodification2djiggle-method-get-collision-mask)

Returns the collision mask used by the Jiggle modifier when collisions are enabled.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_jiggle\_joint\_bone2d\_node**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2djiggle-method-get-jiggle-joint-bone2d-node)

Returns the [Bone2D](class_bone2d.md#class-bone2d) node assigned to the Jiggle joint at `joint_idx`.

* * *

[int](class_int.md#class-int) **get\_jiggle\_joint\_bone\_index**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2djiggle-method-get-jiggle-joint-bone-index)

Returns the index of the [Bone2D](class_bone2d.md#class-bone2d) node assigned to the Jiggle joint at `joint_idx`.

* * *

[float](class_float.md#class-float) **get\_jiggle\_joint\_damping**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2djiggle-method-get-jiggle-joint-damping)

Returns the amount of damping of the Jiggle joint at `joint_idx`.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_jiggle\_joint\_gravity**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2djiggle-method-get-jiggle-joint-gravity)

Returns a [Vector2](class_vector2.md#class-vector2) representing the amount of gravity the Jiggle joint at `joint_idx` is influenced by.

* * *

[float](class_float.md#class-float) **get\_jiggle\_joint\_mass**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2djiggle-method-get-jiggle-joint-mass)

Returns the amount of mass of the jiggle joint at `joint_idx`.

* * *

[bool](class_bool.md#class-bool) **get\_jiggle\_joint\_override**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2djiggle-method-get-jiggle-joint-override)

Returns a boolean that indicates whether the joint at `joint_idx` is overriding the default Jiggle joint data defined in the modification.

* * *

[float](class_float.md#class-float) **get\_jiggle\_joint\_stiffness**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2djiggle-method-get-jiggle-joint-stiffness)

Returns the stiffness of the Jiggle joint at `joint_idx`.

* * *

[bool](class_bool.md#class-bool) **get\_jiggle\_joint\_use\_gravity**(joint\_idx: [int](class_int.md#class-int)) const [🔗](#class-skeletonmodification2djiggle-method-get-jiggle-joint-use-gravity)

Returns a boolean that indicates whether the joint at `joint_idx` is using gravity or not.

* * *

[bool](class_bool.md#class-bool) **get\_use\_colliders**() const [🔗](#class-skeletonmodification2djiggle-method-get-use-colliders)

Returns whether the jiggle modifier is taking physics colliders into account when solving.

* * *

void **set\_collision\_mask**(collision\_mask: [int](class_int.md#class-int)) [🔗](#class-skeletonmodification2djiggle-method-set-collision-mask)

Sets the collision mask that the Jiggle modifier will use when reacting to colliders, if the Jiggle modifier is set to take colliders into account.

* * *

void **set\_jiggle\_joint\_bone2d\_node**(joint\_idx: [int](class_int.md#class-int), bone2d\_node: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-skeletonmodification2djiggle-method-set-jiggle-joint-bone2d-node)

Sets the [Bone2D](class_bone2d.md#class-bone2d) node assigned to the Jiggle joint at `joint_idx`.

* * *

void **set\_jiggle\_joint\_bone\_index**(joint\_idx: [int](class_int.md#class-int), bone\_idx: [int](class_int.md#class-int)) [🔗](#class-skeletonmodification2djiggle-method-set-jiggle-joint-bone-index)

Sets the bone index, `bone_idx`, of the Jiggle joint at `joint_idx`. When possible, this will also update the `bone2d_node` of the Jiggle joint based on data provided by the linked skeleton.

* * *

void **set\_jiggle\_joint\_damping**(joint\_idx: [int](class_int.md#class-int), damping: [float](class_float.md#class-float)) [🔗](#class-skeletonmodification2djiggle-method-set-jiggle-joint-damping)

Sets the amount of damping of the Jiggle joint at `joint_idx`.

* * *

void **set\_jiggle\_joint\_gravity**(joint\_idx: [int](class_int.md#class-int), gravity: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-skeletonmodification2djiggle-method-set-jiggle-joint-gravity)

Sets the gravity vector of the Jiggle joint at `joint_idx`.

* * *

void **set\_jiggle\_joint\_mass**(joint\_idx: [int](class_int.md#class-int), mass: [float](class_float.md#class-float)) [🔗](#class-skeletonmodification2djiggle-method-set-jiggle-joint-mass)

Sets the of mass of the Jiggle joint at `joint_idx`.

* * *

void **set\_jiggle\_joint\_override**(joint\_idx: [int](class_int.md#class-int), override: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2djiggle-method-set-jiggle-joint-override)

Sets whether the Jiggle joint at `joint_idx` should override the default Jiggle joint settings. Setting this to `true` will make the joint use its own settings rather than the default ones attached to the modification.

* * *

void **set\_jiggle\_joint\_stiffness**(joint\_idx: [int](class_int.md#class-int), stiffness: [float](class_float.md#class-float)) [🔗](#class-skeletonmodification2djiggle-method-set-jiggle-joint-stiffness)

Sets the of stiffness of the Jiggle joint at `joint_idx`.

* * *

void **set\_jiggle\_joint\_use\_gravity**(joint\_idx: [int](class_int.md#class-int), use\_gravity: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2djiggle-method-set-jiggle-joint-use-gravity)

Sets whether the Jiggle joint at `joint_idx` should use gravity.

* * *

void **set\_use\_colliders**(use\_colliders: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2djiggle-method-set-use-colliders)

If `true`, the Jiggle modifier will take colliders into account, keeping them from entering into these collision objects.

[Previous](class_skeletonmodification2dfabrik.md "SkeletonModification2DFABRIK") [Next](class_skeletonmodification2dlookat.md "SkeletonModification2DLookAt")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeletonmodification2dfabrik.md "SkeletonModification2DFABRIK") [Next](class_skeletonmodification2dlookat.md "SkeletonModification2DLookAt")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).