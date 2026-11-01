---
title: SkeletonIK3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonik3d.html
crawled_at: "2026-08-13T10:29:34+12:00"
content_hash: df2da8d8f3da44a556002230153d2bb5fc646485ac3b2debd4a5f60a5a28cc0e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonIK3D

* * *

# SkeletonIK3D

**Deprecated:** This class may be changed or removed in future versions.

**Inherits:** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node used to rotate all bones of a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) bone chain a way that places the end bone at a desired 3D position.

## Description

SkeletonIK3D is used to rotate all bones of a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) bone chain a way that places the end bone at a desired 3D position. A typical scenario for IK in games is to place a character's feet on the ground or a character's hands on a currently held object. SkeletonIK uses FabrikInverseKinematic internally to solve the bone chain and applies the results to the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) `bones_global_pose_override` property for all affected bones in the chain. If fully applied, this overwrites any bone transform from [Animation](class_animation.md#class-animation) s or bone custom poses set by users. The applied amount can be controlled with the [SkeletonModifier3D.influence](class_skeletonmodifier3d.md#class-skeletonmodifier3d-property-influence) property.

```
# Apply IK effect automatically on every new frame (not the current)
skeleton_ik_node.start()

# Apply IK effect only on the current frame
skeleton_ik_node.start(true)

# Stop IK effect and reset bones_global_pose_override on Skeleton
skeleton_ik_node.stop()

# Apply full IK effect
skeleton_ik_node.set_influence(1.0)

# Apply half IK effect
skeleton_ik_node.set_influence(0.5)

# Apply zero IK effect (a value at or below 0.01 also removes bones_global_pose_override on Skeleton)
skeleton_ik_node.set_influence(0.0)

```

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [interpolation](#class-skeletonik3d-property-interpolation) |  |
| [Vector3](class_vector3.md#class-vector3) | [magnet](#class-skeletonik3d-property-magnet) | `Vector3(0, 0, 0)` |
| [int](class_int.md#class-int) | [max\_iterations](#class-skeletonik3d-property-max-iterations) | `10` |
| [float](class_float.md#class-float) | [min\_distance](#class-skeletonik3d-property-min-distance) | `0.01` |
| [bool](class_bool.md#class-bool) | [override\_tip\_basis](#class-skeletonik3d-property-override-tip-basis) | `true` |
| [StringName](class_stringname.md#class-stringname) | [root\_bone](#class-skeletonik3d-property-root-bone) | `&""` |
| [Transform3D](class_transform3d.md#class-transform3d) | [target](#class-skeletonik3d-property-target) | `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` |
| [NodePath](class_nodepath.md#class-nodepath) | [target\_node](#class-skeletonik3d-property-target-node) | `NodePath("")` |
| [StringName](class_stringname.md#class-stringname) | [tip\_bone](#class-skeletonik3d-property-tip-bone) | `&""` |
| [bool](class_bool.md#class-bool) | [use\_magnet](#class-skeletonik3d-property-use-magnet) | `false` |

## Methods

|     |     |
| --- | --- |
| [Skeleton3D](class_skeleton3d.md#class-skeleton3d) | [get\_parent\_skeleton](#class-skeletonik3d-method-get-parent-skeleton)() const |
| [bool](class_bool.md#class-bool) | [is\_running](#class-skeletonik3d-method-is-running)() |
| void | [start](#class-skeletonik3d-method-start)(one\_time: [bool](class_bool.md#class-bool) = false) |
| void | [stop](#class-skeletonik3d-method-stop)() |

* * *

## Property Descriptions

[float](class_float.md#class-float) **interpolation** [🔗](#class-skeletonik3d-property-interpolation)

- void **set\_interpolation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_interpolation**()


**Deprecated:** Use [SkeletonModifier3D.influence](class_skeletonmodifier3d.md#class-skeletonmodifier3d-property-influence) instead.

Interpolation value for how much the IK results are applied to the current skeleton bone chain. A value of `1.0` will overwrite all skeleton bone transforms completely while a value of `0.0` will visually disable the SkeletonIK.

* * *

[Vector3](class_vector3.md#class-vector3) **magnet** = `Vector3(0, 0, 0)` [🔗](#class-skeletonik3d-property-magnet)

- void **set\_magnet\_position**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_magnet\_position**()


Secondary target position (first is [target](#class-skeletonik3d-property-target) property or [target\_node](#class-skeletonik3d-property-target-node)) for the IK chain. Use magnet position (pole target) to control the bending of the IK chain. Only works if the bone chain has more than 2 bones. The middle chain bone position will be linearly interpolated with the magnet position.

* * *

[int](class_int.md#class-int) **max\_iterations** = `10` [🔗](#class-skeletonik3d-property-max-iterations)

- void **set\_max\_iterations**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_iterations**()


Number of iteration loops used by the IK solver to produce more accurate (and elegant) bone chain results.

* * *

[float](class_float.md#class-float) **min\_distance** = `0.01` [🔗](#class-skeletonik3d-property-min-distance)

- void **set\_min\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_min\_distance**()


The minimum distance between bone and goal target. If the distance is below this value, the IK solver stops further iterations.

* * *

[bool](class_bool.md#class-bool) **override\_tip\_basis** = `true` [🔗](#class-skeletonik3d-property-override-tip-basis)

- void **set\_override\_tip\_basis**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_override\_tip\_basis**()


If `true` overwrites the rotation of the tip bone with the rotation of the [target](#class-skeletonik3d-property-target) (or [target\_node](#class-skeletonik3d-property-target-node) if defined).

* * *

[StringName](class_stringname.md#class-stringname) **root\_bone** = `&""` [🔗](#class-skeletonik3d-property-root-bone)

- void **set\_root\_bone**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_root\_bone**()


The name of the current root bone, the first bone in the IK chain.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **target** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-skeletonik3d-property-target)

- void **set\_target\_transform**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_target\_transform**()


First target of the IK chain where the tip bone is placed and, if [override\_tip\_basis](#class-skeletonik3d-property-override-tip-basis) is `true`, how the tip bone is rotated. If a [target\_node](#class-skeletonik3d-property-target-node) path is available the nodes transform is used instead and this property is ignored.

* * *

[NodePath](class_nodepath.md#class-nodepath) **target\_node** = `NodePath("")` [🔗](#class-skeletonik3d-property-target-node)

- void **set\_target\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_target\_node**()


Target node [NodePath](class_nodepath.md#class-nodepath) for the IK chain. If available, the node's current [Transform3D](class_transform3d.md#class-transform3d) is used instead of the [target](#class-skeletonik3d-property-target) property.

* * *

[StringName](class_stringname.md#class-stringname) **tip\_bone** = `&""` [🔗](#class-skeletonik3d-property-tip-bone)

- void **set\_tip\_bone**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_tip\_bone**()


The name of the current tip bone, the last bone in the IK chain placed at the [target](#class-skeletonik3d-property-target) transform (or [target\_node](#class-skeletonik3d-property-target-node) if defined).

* * *

[bool](class_bool.md#class-bool) **use\_magnet** = `false` [🔗](#class-skeletonik3d-property-use-magnet)

- void **set\_use\_magnet**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_magnet**()


If `true`, instructs the IK solver to consider the secondary magnet target (pole target) when calculating the bone chain. Use the magnet position (pole target) to control the bending of the IK chain.

* * *

## Method Descriptions

[Skeleton3D](class_skeleton3d.md#class-skeleton3d) **get\_parent\_skeleton**() const [🔗](#class-skeletonik3d-method-get-parent-skeleton)

Returns the parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node that was present when SkeletonIK entered the scene tree. Returns `null` if the parent node was not a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node when SkeletonIK3D entered the scene tree.

* * *

[bool](class_bool.md#class-bool) **is\_running**() [🔗](#class-skeletonik3d-method-is-running)

Returns `true` if SkeletonIK is applying IK effects on continues frames to the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) bones. Returns `false` if SkeletonIK is stopped or [start()](#class-skeletonik3d-method-start) was used with the `one_time` parameter set to `true`.

* * *

void **start**(one\_time: [bool](class_bool.md#class-bool) = false) [🔗](#class-skeletonik3d-method-start)

Starts applying IK effects on each frame to the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) bones but will only take effect starting on the next frame. If `one_time` is `true`, this will take effect immediately but also reset on the next frame.

* * *

void **stop**() [🔗](#class-skeletonik3d-method-stop)

Stops applying IK effects on each frame to the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) bones and also calls [Skeleton3D.clear\_bones\_global\_pose\_override()](class_skeleton3d.md#class-skeleton3d-method-clear-bones-global-pose-override) to remove existing overrides on all bones.

[Previous](class_skeleton3d.md "Skeleton3D") [Next](class_skeletonmodifier3d.md "SkeletonModifier3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skeleton3d.md "Skeleton3D") [Next](class_skeletonmodifier3d.md "SkeletonModifier3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).