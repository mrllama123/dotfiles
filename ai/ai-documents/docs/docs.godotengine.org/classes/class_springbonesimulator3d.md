---
title: SpringBoneSimulator3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_springbonesimulator3d.html
crawled_at: "2026-08-13T10:22:45+12:00"
content_hash: e9d7aa6d2d0a1a3f531c0efb0ec5a6efc2440debf1e6de90f24f8a1dbe090717
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SpringBoneSimulator3D

* * *

# SpringBoneSimulator3D

**Inherits:** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) to apply inertial wavering to bone chains.

## Description

This [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) can be used to wiggle hair, cloth, and tails. This modifier behaves differently from [PhysicalBoneSimulator3D](class_physicalbonesimulator3d.md#class-physicalbonesimulator3d) as it attempts to return the original pose after modification.

If you setup [set\_root\_bone()](#class-springbonesimulator3d-method-set-root-bone) and [set\_end\_bone()](#class-springbonesimulator3d-method-set-end-bone), it is treated as one bone chain. Note that it does not support a branched chain like Y-shaped chains.

When a bone chain is created, an array is generated from the bones that exist in between and listed in the joint list.

Several properties can be applied to each joint, such as [set\_joint\_stiffness()](#class-springbonesimulator3d-method-set-joint-stiffness), [set\_joint\_drag()](#class-springbonesimulator3d-method-set-joint-drag), and [set\_joint\_gravity()](#class-springbonesimulator3d-method-set-joint-gravity).

For simplicity, you can set values to all joints at the same time by using a [Curve](class_curve.md#class-curve). If you want to specify detailed values individually, set [set\_individual\_config()](#class-springbonesimulator3d-method-set-individual-config) to `true`.

For physical simulation, **SpringBoneSimulator3D** can have children as self-standing collisions that are not related to [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d), see also [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d).

**Warning:** A scaled **SpringBoneSimulator3D** will likely not behave as expected. Make sure that the parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d) and its bones are not scaled.

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [external\_force](#class-springbonesimulator3d-property-external-force) | `Vector3(0, 0, 0)` |
| [int](class_int.md#class-int) | [setting\_count](#class-springbonesimulator3d-property-setting-count) | `0` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [are\_all\_child\_collisions\_enabled](#class-springbonesimulator3d-method-are-all-child-collisions-enabled)(index: [int](class_int.md#class-int)) const |
| void | [clear\_collisions](#class-springbonesimulator3d-method-clear-collisions)(index: [int](class_int.md#class-int)) |
| void | [clear\_exclude\_collisions](#class-springbonesimulator3d-method-clear-exclude-collisions)(index: [int](class_int.md#class-int)) |
| void | [clear\_settings](#class-springbonesimulator3d-method-clear-settings)() |
| [int](class_int.md#class-int) | [get\_center\_bone](#class-springbonesimulator3d-method-get-center-bone)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_center\_bone\_name](#class-springbonesimulator3d-method-get-center-bone-name)(index: [int](class_int.md#class-int)) const |
| [CenterFrom](#enum-springbonesimulator3d-centerfrom) | [get\_center\_from](#class-springbonesimulator3d-method-get-center-from)(index: [int](class_int.md#class-int)) const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_center\_node](#class-springbonesimulator3d-method-get-center-node)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_collision\_count](#class-springbonesimulator3d-method-get-collision-count)(index: [int](class_int.md#class-int)) const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_collision\_path](#class-springbonesimulator3d-method-get-collision-path)(index: [int](class_int.md#class-int), collision: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_drag](#class-springbonesimulator3d-method-get-drag)(index: [int](class_int.md#class-int)) const |
| [Curve](class_curve.md#class-curve) | [get\_drag\_damping\_curve](#class-springbonesimulator3d-method-get-drag-damping-curve)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_end\_bone](#class-springbonesimulator3d-method-get-end-bone)(index: [int](class_int.md#class-int)) const |
| [BoneDirection](#enum-springbonesimulator3d-bonedirection) | [get\_end\_bone\_direction](#class-springbonesimulator3d-method-get-end-bone-direction)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_end\_bone\_length](#class-springbonesimulator3d-method-get-end-bone-length)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_end\_bone\_name](#class-springbonesimulator3d-method-get-end-bone-name)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_exclude\_collision\_count](#class-springbonesimulator3d-method-get-exclude-collision-count)(index: [int](class_int.md#class-int)) const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_exclude\_collision\_path](#class-springbonesimulator3d-method-get-exclude-collision-path)(index: [int](class_int.md#class-int), collision: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_gravity](#class-springbonesimulator3d-method-get-gravity)(index: [int](class_int.md#class-int)) const |
| [Curve](class_curve.md#class-curve) | [get\_gravity\_damping\_curve](#class-springbonesimulator3d-method-get-gravity-damping-curve)(index: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_gravity\_direction](#class-springbonesimulator3d-method-get-gravity-direction)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_joint\_bone](#class-springbonesimulator3d-method-get-joint-bone)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_joint\_bone\_name](#class-springbonesimulator3d-method-get-joint-bone-name)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_joint\_count](#class-springbonesimulator3d-method-get-joint-count)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_joint\_drag](#class-springbonesimulator3d-method-get-joint-drag)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_joint\_gravity](#class-springbonesimulator3d-method-get-joint-gravity)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_joint\_gravity\_direction](#class-springbonesimulator3d-method-get-joint-gravity-direction)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_joint\_radius](#class-springbonesimulator3d-method-get-joint-radius)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const |
| [RotationAxis](#enum-springbonesimulator3d-rotationaxis) | [get\_joint\_rotation\_axis](#class-springbonesimulator3d-method-get-joint-rotation-axis)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_joint\_rotation\_axis\_vector](#class-springbonesimulator3d-method-get-joint-rotation-axis-vector)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_joint\_stiffness](#class-springbonesimulator3d-method-get-joint-stiffness)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_radius](#class-springbonesimulator3d-method-get-radius)(index: [int](class_int.md#class-int)) const |
| [Curve](class_curve.md#class-curve) | [get\_radius\_damping\_curve](#class-springbonesimulator3d-method-get-radius-damping-curve)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_root\_bone](#class-springbonesimulator3d-method-get-root-bone)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_root\_bone\_name](#class-springbonesimulator3d-method-get-root-bone-name)(index: [int](class_int.md#class-int)) const |
| [RotationAxis](#enum-springbonesimulator3d-rotationaxis) | [get\_rotation\_axis](#class-springbonesimulator3d-method-get-rotation-axis)(index: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_rotation\_axis\_vector](#class-springbonesimulator3d-method-get-rotation-axis-vector)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_stiffness](#class-springbonesimulator3d-method-get-stiffness)(index: [int](class_int.md#class-int)) const |
| [Curve](class_curve.md#class-curve) | [get\_stiffness\_damping\_curve](#class-springbonesimulator3d-method-get-stiffness-damping-curve)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_config\_individual](#class-springbonesimulator3d-method-is-config-individual)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_end\_bone\_extended](#class-springbonesimulator3d-method-is-end-bone-extended)(index: [int](class_int.md#class-int)) const |
| void | [reset](#class-springbonesimulator3d-method-reset)() |
| void | [set\_center\_bone](#class-springbonesimulator3d-method-set-center-bone)(index: [int](class_int.md#class-int), bone: [int](class_int.md#class-int)) |
| void | [set\_center\_bone\_name](#class-springbonesimulator3d-method-set-center-bone-name)(index: [int](class_int.md#class-int), bone\_name: [String](class_string.md#class-string)) |
| void | [set\_center\_from](#class-springbonesimulator3d-method-set-center-from)(index: [int](class_int.md#class-int), center\_from: [CenterFrom](#enum-springbonesimulator3d-centerfrom)) |
| void | [set\_center\_node](#class-springbonesimulator3d-method-set-center-node)(index: [int](class_int.md#class-int), node\_path: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [set\_collision\_count](#class-springbonesimulator3d-method-set-collision-count)(index: [int](class_int.md#class-int), count: [int](class_int.md#class-int)) |
| void | [set\_collision\_path](#class-springbonesimulator3d-method-set-collision-path)(index: [int](class_int.md#class-int), collision: [int](class_int.md#class-int), node\_path: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [set\_drag](#class-springbonesimulator3d-method-set-drag)(index: [int](class_int.md#class-int), drag: [float](class_float.md#class-float)) |
| void | [set\_drag\_damping\_curve](#class-springbonesimulator3d-method-set-drag-damping-curve)(index: [int](class_int.md#class-int), curve: [Curve](class_curve.md#class-curve)) |
| void | [set\_enable\_all\_child\_collisions](#class-springbonesimulator3d-method-set-enable-all-child-collisions)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_end\_bone](#class-springbonesimulator3d-method-set-end-bone)(index: [int](class_int.md#class-int), bone: [int](class_int.md#class-int)) |
| void | [set\_end\_bone\_direction](#class-springbonesimulator3d-method-set-end-bone-direction)(index: [int](class_int.md#class-int), bone\_direction: [BoneDirection](#enum-springbonesimulator3d-bonedirection)) |
| void | [set\_end\_bone\_length](#class-springbonesimulator3d-method-set-end-bone-length)(index: [int](class_int.md#class-int), length: [float](class_float.md#class-float)) |
| void | [set\_end\_bone\_name](#class-springbonesimulator3d-method-set-end-bone-name)(index: [int](class_int.md#class-int), bone\_name: [String](class_string.md#class-string)) |
| void | [set\_exclude\_collision\_count](#class-springbonesimulator3d-method-set-exclude-collision-count)(index: [int](class_int.md#class-int), count: [int](class_int.md#class-int)) |
| void | [set\_exclude\_collision\_path](#class-springbonesimulator3d-method-set-exclude-collision-path)(index: [int](class_int.md#class-int), collision: [int](class_int.md#class-int), node\_path: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [set\_extend\_end\_bone](#class-springbonesimulator3d-method-set-extend-end-bone)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_gravity](#class-springbonesimulator3d-method-set-gravity)(index: [int](class_int.md#class-int), gravity: [float](class_float.md#class-float)) |
| void | [set\_gravity\_damping\_curve](#class-springbonesimulator3d-method-set-gravity-damping-curve)(index: [int](class_int.md#class-int), curve: [Curve](class_curve.md#class-curve)) |
| void | [set\_gravity\_direction](#class-springbonesimulator3d-method-set-gravity-direction)(index: [int](class_int.md#class-int), gravity\_direction: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_individual\_config](#class-springbonesimulator3d-method-set-individual-config)(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_joint\_drag](#class-springbonesimulator3d-method-set-joint-drag)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), drag: [float](class_float.md#class-float)) |
| void | [set\_joint\_gravity](#class-springbonesimulator3d-method-set-joint-gravity)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), gravity: [float](class_float.md#class-float)) |
| void | [set\_joint\_gravity\_direction](#class-springbonesimulator3d-method-set-joint-gravity-direction)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), gravity\_direction: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_joint\_radius](#class-springbonesimulator3d-method-set-joint-radius)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), radius: [float](class_float.md#class-float)) |
| void | [set\_joint\_rotation\_axis](#class-springbonesimulator3d-method-set-joint-rotation-axis)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), axis: [RotationAxis](#enum-springbonesimulator3d-rotationaxis)) |
| void | [set\_joint\_rotation\_axis\_vector](#class-springbonesimulator3d-method-set-joint-rotation-axis-vector)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), vector: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_joint\_stiffness](#class-springbonesimulator3d-method-set-joint-stiffness)(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), stiffness: [float](class_float.md#class-float)) |
| void | [set\_radius](#class-springbonesimulator3d-method-set-radius)(index: [int](class_int.md#class-int), radius: [float](class_float.md#class-float)) |
| void | [set\_radius\_damping\_curve](#class-springbonesimulator3d-method-set-radius-damping-curve)(index: [int](class_int.md#class-int), curve: [Curve](class_curve.md#class-curve)) |
| void | [set\_root\_bone](#class-springbonesimulator3d-method-set-root-bone)(index: [int](class_int.md#class-int), bone: [int](class_int.md#class-int)) |
| void | [set\_root\_bone\_name](#class-springbonesimulator3d-method-set-root-bone-name)(index: [int](class_int.md#class-int), bone\_name: [String](class_string.md#class-string)) |
| void | [set\_rotation\_axis](#class-springbonesimulator3d-method-set-rotation-axis)(index: [int](class_int.md#class-int), axis: [RotationAxis](#enum-springbonesimulator3d-rotationaxis)) |
| void | [set\_rotation\_axis\_vector](#class-springbonesimulator3d-method-set-rotation-axis-vector)(index: [int](class_int.md#class-int), vector: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_stiffness](#class-springbonesimulator3d-method-set-stiffness)(index: [int](class_int.md#class-int), stiffness: [float](class_float.md#class-float)) |
| void | [set\_stiffness\_damping\_curve](#class-springbonesimulator3d-method-set-stiffness-damping-curve)(index: [int](class_int.md#class-int), curve: [Curve](class_curve.md#class-curve)) |

* * *

## Enumerations

enum **BoneDirection**: [🔗](#enum-springbonesimulator3d-bonedirection)

[BoneDirection](#enum-springbonesimulator3d-bonedirection) **BONE\_DIRECTION\_PLUS\_X** = `0`

Enumerated value for the +X axis.

[BoneDirection](#enum-springbonesimulator3d-bonedirection) **BONE\_DIRECTION\_MINUS\_X** = `1`

Enumerated value for the -X axis.

[BoneDirection](#enum-springbonesimulator3d-bonedirection) **BONE\_DIRECTION\_PLUS\_Y** = `2`

Enumerated value for the +Y axis.

[BoneDirection](#enum-springbonesimulator3d-bonedirection) **BONE\_DIRECTION\_MINUS\_Y** = `3`

Enumerated value for the -Y axis.

[BoneDirection](#enum-springbonesimulator3d-bonedirection) **BONE\_DIRECTION\_PLUS\_Z** = `4`

Enumerated value for the +Z axis.

[BoneDirection](#enum-springbonesimulator3d-bonedirection) **BONE\_DIRECTION\_MINUS\_Z** = `5`

Enumerated value for the -Z axis.

[BoneDirection](#enum-springbonesimulator3d-bonedirection) **BONE\_DIRECTION\_FROM\_PARENT** = `6`

Enumerated value for the axis from a parent bone to the child bone.

* * *

enum **CenterFrom**: [🔗](#enum-springbonesimulator3d-centerfrom)

[CenterFrom](#enum-springbonesimulator3d-centerfrom) **CENTER\_FROM\_WORLD\_ORIGIN** = `0`

The world origin is defined as center.

[CenterFrom](#enum-springbonesimulator3d-centerfrom) **CENTER\_FROM\_NODE** = `1`

The [Node3D](class_node3d.md#class-node3d) specified by [set\_center\_node()](#class-springbonesimulator3d-method-set-center-node) is defined as center.

If [Node3D](class_node3d.md#class-node3d) is not found, the parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d) is treated as center.

[CenterFrom](#enum-springbonesimulator3d-centerfrom) **CENTER\_FROM\_BONE** = `2`

The bone pose origin of the parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d) specified by [set\_center\_bone()](#class-springbonesimulator3d-method-set-center-bone) is defined as center.

If [Node3D](class_node3d.md#class-node3d) is not found, the parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d) is treated as center.

* * *

enum **RotationAxis**: [🔗](#enum-springbonesimulator3d-rotationaxis)

[RotationAxis](#enum-springbonesimulator3d-rotationaxis) **ROTATION\_AXIS\_X** = `0`

Enumerated value for the rotation of the X axis.

[RotationAxis](#enum-springbonesimulator3d-rotationaxis) **ROTATION\_AXIS\_Y** = `1`

Enumerated value for the rotation of the Y axis.

[RotationAxis](#enum-springbonesimulator3d-rotationaxis) **ROTATION\_AXIS\_Z** = `2`

Enumerated value for the rotation of the Z axis.

[RotationAxis](#enum-springbonesimulator3d-rotationaxis) **ROTATION\_AXIS\_ALL** = `3`

Enumerated value for the unconstrained rotation.

[RotationAxis](#enum-springbonesimulator3d-rotationaxis) **ROTATION\_AXIS\_CUSTOM** = `4`

Enumerated value for an optional rotation axis. See also [set\_joint\_rotation\_axis\_vector()](#class-springbonesimulator3d-method-set-joint-rotation-axis-vector).

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **external\_force** = `Vector3(0, 0, 0)` [🔗](#class-springbonesimulator3d-property-external-force)

- void **set\_external\_force**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_external\_force**()


The constant force that always affected bones. It is equal to the result when the parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d) moves at this speed in the opposite direction.

This is useful for effects such as wind and anti-gravity.

* * *

[int](class_int.md#class-int) **setting\_count** = `0` [🔗](#class-springbonesimulator3d-property-setting-count)

- void **set\_setting\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_setting\_count**()


The number of settings.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **are\_all\_child\_collisions\_enabled**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-are-all-child-collisions-enabled)

Returns `true` if all child [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d) s are contained in the collision list at `index` in the settings.

* * *

void **clear\_collisions**(index: [int](class_int.md#class-int)) [🔗](#class-springbonesimulator3d-method-clear-collisions)

Clears all collisions from the collision list at `index` in the settings when [are\_all\_child\_collisions\_enabled()](#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `false`.

* * *

void **clear\_exclude\_collisions**(index: [int](class_int.md#class-int)) [🔗](#class-springbonesimulator3d-method-clear-exclude-collisions)

Clears all exclude collisions from the collision list at `index` in the settings when [are\_all\_child\_collisions\_enabled()](#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `true`.

* * *

void **clear\_settings**() [🔗](#class-springbonesimulator3d-method-clear-settings)

Clears all settings.

* * *

[int](class_int.md#class-int) **get\_center\_bone**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-center-bone)

Returns the center bone index of the bone chain.

* * *

[String](class_string.md#class-string) **get\_center\_bone\_name**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-center-bone-name)

Returns the center bone name of the bone chain.

* * *

[CenterFrom](#enum-springbonesimulator3d-centerfrom) **get\_center\_from**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-center-from)

Returns what the center originates from in the bone chain.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_center\_node**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-center-node)

Returns the center node path of the bone chain.

* * *

[int](class_int.md#class-int) **get\_collision\_count**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-collision-count)

Returns the collision count of the bone chain's collision list when [are\_all\_child\_collisions\_enabled()](#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `false`.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_collision\_path**(index: [int](class_int.md#class-int), collision: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-collision-path)

Returns the node path of the [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d) at `collision` in the bone chain's collision list when [are\_all\_child\_collisions\_enabled()](#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `false`.

* * *

[float](class_float.md#class-float) **get\_drag**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-drag)

Returns the drag force damping curve of the bone chain.

* * *

[Curve](class_curve.md#class-curve) **get\_drag\_damping\_curve**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-drag-damping-curve)

Returns the drag force damping curve of the bone chain.

* * *

[int](class_int.md#class-int) **get\_end\_bone**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-end-bone)

Returns the end bone index of the bone chain.

* * *

[BoneDirection](#enum-springbonesimulator3d-bonedirection) **get\_end\_bone\_direction**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-end-bone-direction)

Returns the end bone's tail direction of the bone chain when [is\_end\_bone\_extended()](#class-springbonesimulator3d-method-is-end-bone-extended) is `true`.

* * *

[float](class_float.md#class-float) **get\_end\_bone\_length**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-end-bone-length)

Returns the end bone's tail length of the bone chain when [is\_end\_bone\_extended()](#class-springbonesimulator3d-method-is-end-bone-extended) is `true`.

* * *

[String](class_string.md#class-string) **get\_end\_bone\_name**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-end-bone-name)

Returns the end bone name of the bone chain.

* * *

[int](class_int.md#class-int) **get\_exclude\_collision\_count**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-exclude-collision-count)

Returns the exclude collision count of the bone chain's exclude collision list when [are\_all\_child\_collisions\_enabled()](#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `true`.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_exclude\_collision\_path**(index: [int](class_int.md#class-int), collision: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-exclude-collision-path)

Returns the node path of the [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d) at `collision` in the bone chain's exclude collision list when [are\_all\_child\_collisions\_enabled()](#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `true`.

* * *

[float](class_float.md#class-float) **get\_gravity**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-gravity)

Returns the gravity amount of the bone chain.

* * *

[Curve](class_curve.md#class-curve) **get\_gravity\_damping\_curve**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-gravity-damping-curve)

Returns the gravity amount damping curve of the bone chain.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_gravity\_direction**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-gravity-direction)

Returns the gravity direction of the bone chain.

* * *

[int](class_int.md#class-int) **get\_joint\_bone**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-joint-bone)

Returns the bone index at `joint` in the bone chain's joint list.

* * *

[String](class_string.md#class-string) **get\_joint\_bone\_name**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-joint-bone-name)

Returns the bone name at `joint` in the bone chain's joint list.

* * *

[int](class_int.md#class-int) **get\_joint\_count**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-joint-count)

Returns the joint count of the bone chain's joint list.

* * *

[float](class_float.md#class-float) **get\_joint\_drag**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-joint-drag)

Returns the drag force at `joint` in the bone chain's joint list.

* * *

[float](class_float.md#class-float) **get\_joint\_gravity**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-joint-gravity)

Returns the gravity amount at `joint` in the bone chain's joint list.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_joint\_gravity\_direction**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-joint-gravity-direction)

Returns the gravity direction at `joint` in the bone chain's joint list.

* * *

[float](class_float.md#class-float) **get\_joint\_radius**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-joint-radius)

Returns the radius at `joint` in the bone chain's joint list.

* * *

[RotationAxis](#enum-springbonesimulator3d-rotationaxis) **get\_joint\_rotation\_axis**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-joint-rotation-axis)

Returns the rotation axis at `joint` in the bone chain's joint list.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_joint\_rotation\_axis\_vector**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-joint-rotation-axis-vector)

Returns the rotation axis vector for the specified joint in the bone chain. This vector represents the axis around which the joint can rotate. It is determined based on the rotation axis set for the joint.

If [get\_joint\_rotation\_axis()](#class-springbonesimulator3d-method-get-joint-rotation-axis) is [ROTATION\_AXIS\_ALL](#class-springbonesimulator3d-constant-rotation-axis-all), this method returns `Vector3(0, 0, 0)`.

* * *

[float](class_float.md#class-float) **get\_joint\_stiffness**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-joint-stiffness)

Returns the stiffness force at `joint` in the bone chain's joint list.

* * *

[float](class_float.md#class-float) **get\_radius**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-radius)

Returns the joint radius of the bone chain.

* * *

[Curve](class_curve.md#class-curve) **get\_radius\_damping\_curve**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-radius-damping-curve)

Returns the joint radius damping curve of the bone chain.

* * *

[int](class_int.md#class-int) **get\_root\_bone**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-root-bone)

Returns the root bone index of the bone chain.

* * *

[String](class_string.md#class-string) **get\_root\_bone\_name**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-root-bone-name)

Returns the root bone name of the bone chain.

* * *

[RotationAxis](#enum-springbonesimulator3d-rotationaxis) **get\_rotation\_axis**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-rotation-axis)

Returns the rotation axis of the bone chain.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_rotation\_axis\_vector**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-rotation-axis-vector)

Returns the rotation axis vector of the bone chain. This vector represents the axis around which the bone chain can rotate. It is determined based on the rotation axis set for the bone chain.

If [get\_rotation\_axis()](#class-springbonesimulator3d-method-get-rotation-axis) is [ROTATION\_AXIS\_ALL](#class-springbonesimulator3d-constant-rotation-axis-all), this method returns `Vector3(0, 0, 0)`.

* * *

[float](class_float.md#class-float) **get\_stiffness**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-stiffness)

Returns the stiffness force of the bone chain.

* * *

[Curve](class_curve.md#class-curve) **get\_stiffness\_damping\_curve**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-get-stiffness-damping-curve)

Returns the stiffness force damping curve of the bone chain.

* * *

[bool](class_bool.md#class-bool) **is\_config\_individual**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-is-config-individual)

Returns `true` if the config can be edited individually for each joint.

* * *

[bool](class_bool.md#class-bool) **is\_end\_bone\_extended**(index: [int](class_int.md#class-int)) const [🔗](#class-springbonesimulator3d-method-is-end-bone-extended)

Returns `true` if the end bone is extended to have the tail.

* * *

void **reset**() [🔗](#class-springbonesimulator3d-method-reset)

Resets a simulating state with respect to the current bone pose.

It is useful to prevent the simulation result getting violent. For example, calling this immediately after a call to [AnimationPlayer.play()](class_animationplayer.md#class-animationplayer-method-play) without a fading, or within the previous [SkeletonModifier3D.modification\_processed](class_skeletonmodifier3d.md#class-skeletonmodifier3d-signal-modification-processed) signal if it's condition changes significantly.

* * *

void **set\_center\_bone**(index: [int](class_int.md#class-int), bone: [int](class_int.md#class-int)) [🔗](#class-springbonesimulator3d-method-set-center-bone)

Sets the center bone index of the bone chain.

* * *

void **set\_center\_bone\_name**(index: [int](class_int.md#class-int), bone\_name: [String](class_string.md#class-string)) [🔗](#class-springbonesimulator3d-method-set-center-bone-name)

Sets the center bone name of the bone chain.

* * *

void **set\_center\_from**(index: [int](class_int.md#class-int), center\_from: [CenterFrom](#enum-springbonesimulator3d-centerfrom)) [🔗](#class-springbonesimulator3d-method-set-center-from)

Sets what the center originates from in the bone chain.

Bone movement is calculated based on the difference in relative distance between center and bone in the previous and next frames.

For example, if the parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d) is used as the center, the bones are considered to have not moved if the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) moves in the world.

In this case, only a change in the bone pose is considered to be a bone movement.

* * *

void **set\_center\_node**(index: [int](class_int.md#class-int), node\_path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-springbonesimulator3d-method-set-center-node)

Sets the center node path of the bone chain.

* * *

void **set\_collision\_count**(index: [int](class_int.md#class-int), count: [int](class_int.md#class-int)) [🔗](#class-springbonesimulator3d-method-set-collision-count)

Sets the number of collisions in the collision list at `index` in the settings when [are\_all\_child\_collisions\_enabled()](#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `false`.

* * *

void **set\_collision\_path**(index: [int](class_int.md#class-int), collision: [int](class_int.md#class-int), node\_path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-springbonesimulator3d-method-set-collision-path)

Sets the node path of the [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d) at `collision` in the bone chain's collision list when [are\_all\_child\_collisions\_enabled()](#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `false`.

* * *

void **set\_drag**(index: [int](class_int.md#class-int), drag: [float](class_float.md#class-float)) [🔗](#class-springbonesimulator3d-method-set-drag)

Sets the drag force of the bone chain. The greater the value, the more suppressed the wiggling.

The value is scaled by [set\_drag\_damping\_curve()](#class-springbonesimulator3d-method-set-drag-damping-curve) and cached in each joint setting in the joint list.

* * *

void **set\_drag\_damping\_curve**(index: [int](class_int.md#class-int), curve: [Curve](class_curve.md#class-curve)) [🔗](#class-springbonesimulator3d-method-set-drag-damping-curve)

Sets the drag force damping curve of the bone chain.

* * *

void **set\_enable\_all\_child\_collisions**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-springbonesimulator3d-method-set-enable-all-child-collisions)

If `enabled` is `true`, all child [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d) s are colliding and [set\_exclude\_collision\_path()](#class-springbonesimulator3d-method-set-exclude-collision-path) is enabled as an exclusion list at `index` in the settings.

If `enabled` is `false`, you need to manually register all valid collisions with [set\_collision\_path()](#class-springbonesimulator3d-method-set-collision-path).

* * *

void **set\_end\_bone**(index: [int](class_int.md#class-int), bone: [int](class_int.md#class-int)) [🔗](#class-springbonesimulator3d-method-set-end-bone)

Sets the end bone index of the bone chain.

* * *

void **set\_end\_bone\_direction**(index: [int](class_int.md#class-int), bone\_direction: [BoneDirection](#enum-springbonesimulator3d-bonedirection)) [🔗](#class-springbonesimulator3d-method-set-end-bone-direction)

Sets the end bone tail direction of the bone chain when [is\_end\_bone\_extended()](#class-springbonesimulator3d-method-is-end-bone-extended) is `true`.

* * *

void **set\_end\_bone\_length**(index: [int](class_int.md#class-int), length: [float](class_float.md#class-float)) [🔗](#class-springbonesimulator3d-method-set-end-bone-length)

Sets the end bone tail length of the bone chain when [is\_end\_bone\_extended()](#class-springbonesimulator3d-method-is-end-bone-extended) is `true`.

* * *

void **set\_end\_bone\_name**(index: [int](class_int.md#class-int), bone\_name: [String](class_string.md#class-string)) [🔗](#class-springbonesimulator3d-method-set-end-bone-name)

Sets the end bone name of the bone chain.

**Note:** End bone must be the root bone or a child of the root bone. If they are the same, the tail must be extended by [set\_extend\_end\_bone()](#class-springbonesimulator3d-method-set-extend-end-bone) to jiggle the bone.

* * *

void **set\_exclude\_collision\_count**(index: [int](class_int.md#class-int), count: [int](class_int.md#class-int)) [🔗](#class-springbonesimulator3d-method-set-exclude-collision-count)

Sets the number of exclude collisions in the exclude collision list at `index` in the settings when [are\_all\_child\_collisions\_enabled()](#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `true`.

* * *

void **set\_exclude\_collision\_path**(index: [int](class_int.md#class-int), collision: [int](class_int.md#class-int), node\_path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-springbonesimulator3d-method-set-exclude-collision-path)

Sets the node path of the [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d) at `collision` in the bone chain's exclude collision list when [are\_all\_child\_collisions\_enabled()](#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `true`.

* * *

void **set\_extend\_end\_bone**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-springbonesimulator3d-method-set-extend-end-bone)

If `enabled` is `true`, the end bone is extended to have the tail.

The extended tail config is allocated to the last element in the joint list.

In other words, if you set `enabled` is `false`, the config of last element in the joint list has no effect in the simulated result.

* * *

void **set\_gravity**(index: [int](class_int.md#class-int), gravity: [float](class_float.md#class-float)) [🔗](#class-springbonesimulator3d-method-set-gravity)

Sets the gravity amount of the bone chain. This value is not an acceleration, but a constant velocity of movement in [set\_gravity\_direction()](#class-springbonesimulator3d-method-set-gravity-direction).

If `gravity` is not `0`, the modified pose will not return to the original pose since it is always affected by gravity.

The value is scaled by [set\_gravity\_damping\_curve()](#class-springbonesimulator3d-method-set-gravity-damping-curve) and cached in each joint setting in the joint list.

* * *

void **set\_gravity\_damping\_curve**(index: [int](class_int.md#class-int), curve: [Curve](class_curve.md#class-curve)) [🔗](#class-springbonesimulator3d-method-set-gravity-damping-curve)

Sets the gravity amount damping curve of the bone chain.

* * *

void **set\_gravity\_direction**(index: [int](class_int.md#class-int), gravity\_direction: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-springbonesimulator3d-method-set-gravity-direction)

Sets the gravity direction of the bone chain. This value is internally normalized and then multiplied by [set\_gravity()](#class-springbonesimulator3d-method-set-gravity).

The value is cached in each joint setting in the joint list.

* * *

void **set\_individual\_config**(index: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-springbonesimulator3d-method-set-individual-config)

If `enabled` is `true`, the config can be edited individually for each joint.

* * *

void **set\_joint\_drag**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), drag: [float](class_float.md#class-float)) [🔗](#class-springbonesimulator3d-method-set-joint-drag)

Sets the drag force at `joint` in the bone chain's joint list when [is\_config\_individual()](#class-springbonesimulator3d-method-is-config-individual) is `true`.

* * *

void **set\_joint\_gravity**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), gravity: [float](class_float.md#class-float)) [🔗](#class-springbonesimulator3d-method-set-joint-gravity)

Sets the gravity amount at `joint` in the bone chain's joint list when [is\_config\_individual()](#class-springbonesimulator3d-method-is-config-individual) is `true`.

* * *

void **set\_joint\_gravity\_direction**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), gravity\_direction: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-springbonesimulator3d-method-set-joint-gravity-direction)

Sets the gravity direction at `joint` in the bone chain's joint list when [is\_config\_individual()](#class-springbonesimulator3d-method-is-config-individual) is `true`.

* * *

void **set\_joint\_radius**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), radius: [float](class_float.md#class-float)) [🔗](#class-springbonesimulator3d-method-set-joint-radius)

Sets the joint radius at `joint` in the bone chain's joint list when [is\_config\_individual()](#class-springbonesimulator3d-method-is-config-individual) is `true`.

* * *

void **set\_joint\_rotation\_axis**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), axis: [RotationAxis](#enum-springbonesimulator3d-rotationaxis)) [🔗](#class-springbonesimulator3d-method-set-joint-rotation-axis)

Sets the rotation axis at `joint` in the bone chain's joint list when [is\_config\_individual()](#class-springbonesimulator3d-method-is-config-individual) is `true`.

The axes are based on the [Skeleton3D.get\_bone\_rest()](class_skeleton3d.md#class-skeleton3d-method-get-bone-rest)'s space, if `axis` is [ROTATION\_AXIS\_CUSTOM](#class-springbonesimulator3d-constant-rotation-axis-custom), you can specify any axis.

**Note:** The rotation axis and the forward vector shouldn't be colinear to avoid unintended rotation since **SpringBoneSimulator3D** does not factor in twisting forces.

* * *

void **set\_joint\_rotation\_axis\_vector**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), vector: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-springbonesimulator3d-method-set-joint-rotation-axis-vector)

Sets the rotation axis vector for the specified joint in the bone chain.

This vector is normalized by an internal process and represents the axis around which the bone chain can rotate.

If the vector length is `0`, it is considered synonymous with [ROTATION\_AXIS\_ALL](#class-springbonesimulator3d-constant-rotation-axis-all).

* * *

void **set\_joint\_stiffness**(index: [int](class_int.md#class-int), joint: [int](class_int.md#class-int), stiffness: [float](class_float.md#class-float)) [🔗](#class-springbonesimulator3d-method-set-joint-stiffness)

Sets the stiffness force at `joint` in the bone chain's joint list when [is\_config\_individual()](#class-springbonesimulator3d-method-is-config-individual) is `true`.

* * *

void **set\_radius**(index: [int](class_int.md#class-int), radius: [float](class_float.md#class-float)) [🔗](#class-springbonesimulator3d-method-set-radius)

Sets the joint radius of the bone chain. It is used to move and slide with the [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d) in the collision list.

The value is scaled by [set\_radius\_damping\_curve()](#class-springbonesimulator3d-method-set-radius-damping-curve) and cached in each joint setting in the joint list.

* * *

void **set\_radius\_damping\_curve**(index: [int](class_int.md#class-int), curve: [Curve](class_curve.md#class-curve)) [🔗](#class-springbonesimulator3d-method-set-radius-damping-curve)

Sets the joint radius damping curve of the bone chain.

* * *

void **set\_root\_bone**(index: [int](class_int.md#class-int), bone: [int](class_int.md#class-int)) [🔗](#class-springbonesimulator3d-method-set-root-bone)

Sets the root bone index of the bone chain.

* * *

void **set\_root\_bone\_name**(index: [int](class_int.md#class-int), bone\_name: [String](class_string.md#class-string)) [🔗](#class-springbonesimulator3d-method-set-root-bone-name)

Sets the root bone name of the bone chain.

* * *

void **set\_rotation\_axis**(index: [int](class_int.md#class-int), axis: [RotationAxis](#enum-springbonesimulator3d-rotationaxis)) [🔗](#class-springbonesimulator3d-method-set-rotation-axis)

Sets the rotation axis of the bone chain. If set to a specific axis, it acts like a hinge joint. The value is cached in each joint setting in the joint list.

The axes are based on the [Skeleton3D.get\_bone\_rest()](class_skeleton3d.md#class-skeleton3d-method-get-bone-rest)'s space, if `axis` is [ROTATION\_AXIS\_CUSTOM](#class-springbonesimulator3d-constant-rotation-axis-custom), you can specify any axis.

**Note:** The rotation axis vector and the forward vector shouldn't be colinear to avoid unintended rotation since **SpringBoneSimulator3D** does not factor in twisting forces.

* * *

void **set\_rotation\_axis\_vector**(index: [int](class_int.md#class-int), vector: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-springbonesimulator3d-method-set-rotation-axis-vector)

Sets the rotation axis vector of the bone chain. The value is cached in each joint setting in the joint list.

This vector is normalized by an internal process and represents the axis around which the bone chain can rotate.

If the vector length is `0`, it is considered synonymous with [ROTATION\_AXIS\_ALL](#class-springbonesimulator3d-constant-rotation-axis-all).

* * *

void **set\_stiffness**(index: [int](class_int.md#class-int), stiffness: [float](class_float.md#class-float)) [🔗](#class-springbonesimulator3d-method-set-stiffness)

Sets the stiffness force of the bone chain. The greater the value, the faster it recovers to its initial pose.

If `stiffness` is `0`, the modified pose will not return to the original pose.

The value is scaled by [set\_stiffness\_damping\_curve()](#class-springbonesimulator3d-method-set-stiffness-damping-curve) and cached in each joint setting in the joint list.

* * *

void **set\_stiffness\_damping\_curve**(index: [int](class_int.md#class-int), curve: [Curve](class_curve.md#class-curve)) [🔗](#class-springbonesimulator3d-method-set-stiffness-damping-curve)

Sets the stiffness force damping curve of the bone chain.

[Previous](class_springbonecollisionsphere3d.md "SpringBoneCollisionSphere3D") [Next](class_sprite2d.md "Sprite2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_springbonecollisionsphere3d.md "SpringBoneCollisionSphere3D") [Next](class_sprite2d.md "Sprite2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).