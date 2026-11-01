---
title: PhysicalBone3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicalbone3d.html
crawled_at: "2026-08-13T10:23:49+12:00"
content_hash: f784168c2008f95c9fd8d425aa3f8d7c50f8b0d752e749592656bdf63e488c54
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicalBone3D

* * *

# PhysicalBone3D

**Inherits:** [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) **<** [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A physics body used to make bones in a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) react to physics.

## Description

The **PhysicalBone3D** node is a physics body that can be used to make bones in a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) react to physics.

**Note:** In order to detect physical bones with raycasts, the [SkeletonModifier3D.active](class_skeletonmodifier3d.md#class-skeletonmodifier3d-property-active) property of the parent [PhysicalBoneSimulator3D](class_physicalbonesimulator3d.md#class-physicalbonesimulator3d) must be `true` and the [Skeleton3D](class_skeleton3d.md#class-skeleton3d)'s bone must be assigned to **PhysicalBone3D** correctly; it means that [get\_bone\_id()](#class-physicalbone3d-method-get-bone-id) should return a valid id ( `>= 0`).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [angular\_damp](#class-physicalbone3d-property-angular-damp) | `0.0` |
| [DampMode](#enum-physicalbone3d-dampmode) | [angular\_damp\_mode](#class-physicalbone3d-property-angular-damp-mode) | `0` |
| [Vector3](class_vector3.md#class-vector3) | [angular\_velocity](#class-physicalbone3d-property-angular-velocity) | `Vector3(0, 0, 0)` |
| [Transform3D](class_transform3d.md#class-transform3d) | [body\_offset](#class-physicalbone3d-property-body-offset) | `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` |
| [float](class_float.md#class-float) | [bounce](#class-physicalbone3d-property-bounce) | `0.0` |
| [bool](class_bool.md#class-bool) | [can\_sleep](#class-physicalbone3d-property-can-sleep) | `true` |
| [bool](class_bool.md#class-bool) | [custom\_integrator](#class-physicalbone3d-property-custom-integrator) | `false` |
| [float](class_float.md#class-float) | [friction](#class-physicalbone3d-property-friction) | `1.0` |
| [float](class_float.md#class-float) | [gravity\_scale](#class-physicalbone3d-property-gravity-scale) | `1.0` |
| [Transform3D](class_transform3d.md#class-transform3d) | [joint\_offset](#class-physicalbone3d-property-joint-offset) | `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [joint\_rotation](#class-physicalbone3d-property-joint-rotation) | `Vector3(0, 0, 0)` |
| [JointType](#enum-physicalbone3d-jointtype) | [joint\_type](#class-physicalbone3d-property-joint-type) | `0` |
| [float](class_float.md#class-float) | [linear\_damp](#class-physicalbone3d-property-linear-damp) | `0.0` |
| [DampMode](#enum-physicalbone3d-dampmode) | [linear\_damp\_mode](#class-physicalbone3d-property-linear-damp-mode) | `0` |
| [Vector3](class_vector3.md#class-vector3) | [linear\_velocity](#class-physicalbone3d-property-linear-velocity) | `Vector3(0, 0, 0)` |
| [float](class_float.md#class-float) | [mass](#class-physicalbone3d-property-mass) | `1.0` |

## Methods

|     |     |
| --- | --- |
| void | [\_integrate\_forces](#class-physicalbone3d-private-method-integrate-forces)(state: [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d)) virtual |
| void | [apply\_central\_impulse](#class-physicalbone3d-method-apply-central-impulse)(impulse: [Vector3](class_vector3.md#class-vector3)) |
| void | [apply\_impulse](#class-physicalbone3d-method-apply-impulse)(impulse: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) |
| [int](class_int.md#class-int) | [get\_bone\_id](#class-physicalbone3d-method-get-bone-id)() const |
| [bool](class_bool.md#class-bool) | [get\_simulate\_physics](#class-physicalbone3d-method-get-simulate-physics)() |
| [bool](class_bool.md#class-bool) | [is\_simulating\_physics](#class-physicalbone3d-method-is-simulating-physics)() |

* * *

## Enumerations

enum **DampMode**: [🔗](#enum-physicalbone3d-dampmode)

[DampMode](#enum-physicalbone3d-dampmode) **DAMP\_MODE\_COMBINE** = `0`

In this mode, the body's damping value is added to any value set in areas or the default value.

[DampMode](#enum-physicalbone3d-dampmode) **DAMP\_MODE\_REPLACE** = `1`

In this mode, the body's damping value replaces any value set in areas or the default value.

* * *

enum **JointType**: [🔗](#enum-physicalbone3d-jointtype)

[JointType](#enum-physicalbone3d-jointtype) **JOINT\_TYPE\_NONE** = `0`

No joint is applied to the PhysicsBone3D.

[JointType](#enum-physicalbone3d-jointtype) **JOINT\_TYPE\_PIN** = `1`

A pin joint is applied to the PhysicsBone3D.

[JointType](#enum-physicalbone3d-jointtype) **JOINT\_TYPE\_CONE** = `2`

A cone joint is applied to the PhysicsBone3D.

[JointType](#enum-physicalbone3d-jointtype) **JOINT\_TYPE\_HINGE** = `3`

A hinge joint is applied to the PhysicsBone3D.

[JointType](#enum-physicalbone3d-jointtype) **JOINT\_TYPE\_SLIDER** = `4`

A slider joint is applied to the PhysicsBone3D.

[JointType](#enum-physicalbone3d-jointtype) **JOINT\_TYPE\_6DOF** = `5`

A 6 degrees of freedom joint is applied to the PhysicsBone3D.

* * *

## Property Descriptions

[float](class_float.md#class-float) **angular\_damp** = `0.0` [🔗](#class-physicalbone3d-property-angular-damp)

- void **set\_angular\_damp**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_angular\_damp**()


Damps the body's rotation. By default, the body will use the [ProjectSettings.physics/3d/default\_angular\_damp](class_projectsettings.md#class-projectsettings-property-physics-3d-default-angular-damp) project setting or any value override set by an [Area3D](class_area3d.md#class-area3d) the body is in. Depending on [angular\_damp\_mode](#class-physicalbone3d-property-angular-damp-mode), you can set [angular\_damp](#class-physicalbone3d-property-angular-damp) to be added to or to replace the body's damping value.

See [ProjectSettings.physics/3d/default\_angular\_damp](class_projectsettings.md#class-projectsettings-property-physics-3d-default-angular-damp) for more details about damping.

* * *

[DampMode](#enum-physicalbone3d-dampmode) **angular\_damp\_mode** = `0` [🔗](#class-physicalbone3d-property-angular-damp-mode)

- void **set\_angular\_damp\_mode**(value: [DampMode](#enum-physicalbone3d-dampmode))

- [DampMode](#enum-physicalbone3d-dampmode) **get\_angular\_damp\_mode**()


Defines how [angular\_damp](#class-physicalbone3d-property-angular-damp) is applied.

* * *

[Vector3](class_vector3.md#class-vector3) **angular\_velocity** = `Vector3(0, 0, 0)` [🔗](#class-physicalbone3d-property-angular-velocity)

- void **set\_angular\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_angular\_velocity**()


The PhysicalBone3D's rotational velocity in _radians_ per second.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **body\_offset** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-physicalbone3d-property-body-offset)

- void **set\_body\_offset**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_body\_offset**()


Sets the body's transform.

* * *

[float](class_float.md#class-float) **bounce** = `0.0` [🔗](#class-physicalbone3d-property-bounce)

- void **set\_bounce**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bounce**()


The body's bounciness. Values range from `0` (no bounce) to `1` (full bounciness).

**Note:** Even with [bounce](#class-physicalbone3d-property-bounce) set to `1.0`, some energy will be lost over time due to linear and angular damping. To have a **PhysicalBone3D** that preserves all its energy over time, set [bounce](#class-physicalbone3d-property-bounce) to `1.0`, [linear\_damp\_mode](#class-physicalbone3d-property-linear-damp-mode) to [DAMP\_MODE\_REPLACE](#class-physicalbone3d-constant-damp-mode-replace), [linear\_damp](#class-physicalbone3d-property-linear-damp) to `0.0`, [angular\_damp\_mode](#class-physicalbone3d-property-angular-damp-mode) to [DAMP\_MODE\_REPLACE](#class-physicalbone3d-constant-damp-mode-replace), and [angular\_damp](#class-physicalbone3d-property-angular-damp) to `0.0`.

* * *

[bool](class_bool.md#class-bool) **can\_sleep** = `true` [🔗](#class-physicalbone3d-property-can-sleep)

- void **set\_can\_sleep**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_able\_to\_sleep**()


If `true`, the body is deactivated when there is no movement, so it will not take part in the simulation until it is awakened by an external force.

* * *

[bool](class_bool.md#class-bool) **custom\_integrator** = `false` [🔗](#class-physicalbone3d-property-custom-integrator)

- void **set\_use\_custom\_integrator**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_custom\_integrator**()


If `true`, the standard force integration (like gravity or damping) will be disabled for this body. Other than collision response, the body will only move as determined by the [\_integrate\_forces()](#class-physicalbone3d-private-method-integrate-forces) method, if that virtual method is overridden.

Setting this property will call the method [PhysicsServer3D.body\_set\_omit\_force\_integration()](class_physicsserver3d.md#class-physicsserver3d-method-body-set-omit-force-integration) internally.

* * *

[float](class_float.md#class-float) **friction** = `1.0` [🔗](#class-physicalbone3d-property-friction)

- void **set\_friction**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_friction**()


The body's friction, from `0` (frictionless) to `1` (max friction).

* * *

[float](class_float.md#class-float) **gravity\_scale** = `1.0` [🔗](#class-physicalbone3d-property-gravity-scale)

- void **set\_gravity\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_gravity\_scale**()


This is multiplied by [ProjectSettings.physics/3d/default\_gravity](class_projectsettings.md#class-projectsettings-property-physics-3d-default-gravity) to produce this body's gravity. For example, a value of `1.0` will apply normal gravity, `2.0` will apply double the gravity, and `0.5` will apply half the gravity to this body.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **joint\_offset** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-physicalbone3d-property-joint-offset)

- void **set\_joint\_offset**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_joint\_offset**()


Sets the joint's transform.

* * *

[Vector3](class_vector3.md#class-vector3) **joint\_rotation** = `Vector3(0, 0, 0)` [🔗](#class-physicalbone3d-property-joint-rotation)

- void **set\_joint\_rotation**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_joint\_rotation**()


Sets the joint's rotation in radians.

* * *

[JointType](#enum-physicalbone3d-jointtype) **joint\_type** = `0` [🔗](#class-physicalbone3d-property-joint-type)

- void **set\_joint\_type**(value: [JointType](#enum-physicalbone3d-jointtype))

- [JointType](#enum-physicalbone3d-jointtype) **get\_joint\_type**()


Sets the joint type.

* * *

[float](class_float.md#class-float) **linear\_damp** = `0.0` [🔗](#class-physicalbone3d-property-linear-damp)

- void **set\_linear\_damp**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_linear\_damp**()


Damps the body's movement. By default, the body will use [ProjectSettings.physics/3d/default\_linear\_damp](class_projectsettings.md#class-projectsettings-property-physics-3d-default-linear-damp) or any value override set by an [Area3D](class_area3d.md#class-area3d) the body is in. Depending on [linear\_damp\_mode](#class-physicalbone3d-property-linear-damp-mode), [linear\_damp](#class-physicalbone3d-property-linear-damp) may be added to or replace the body's damping value.

See [ProjectSettings.physics/3d/default\_linear\_damp](class_projectsettings.md#class-projectsettings-property-physics-3d-default-linear-damp) for more details about damping.

* * *

[DampMode](#enum-physicalbone3d-dampmode) **linear\_damp\_mode** = `0` [🔗](#class-physicalbone3d-property-linear-damp-mode)

- void **set\_linear\_damp\_mode**(value: [DampMode](#enum-physicalbone3d-dampmode))

- [DampMode](#enum-physicalbone3d-dampmode) **get\_linear\_damp\_mode**()


Defines how [linear\_damp](#class-physicalbone3d-property-linear-damp) is applied.

* * *

[Vector3](class_vector3.md#class-vector3) **linear\_velocity** = `Vector3(0, 0, 0)` [🔗](#class-physicalbone3d-property-linear-velocity)

- void **set\_linear\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_linear\_velocity**()


The body's linear velocity in units per second. Can be used sporadically, but **don't set this every frame**, because physics may run in another thread and runs at a different granularity. Use [\_integrate\_forces()](#class-physicalbone3d-private-method-integrate-forces) as your process loop for precise control of the body state.

* * *

[float](class_float.md#class-float) **mass** = `1.0` [🔗](#class-physicalbone3d-property-mass)

- void **set\_mass**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mass**()


The body's mass.

* * *

## Method Descriptions

void **\_integrate\_forces**(state: [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d)) virtual [🔗](#class-physicalbone3d-private-method-integrate-forces)

Called during physics processing, allowing you to read and safely modify the simulation state for the object. By default, it is called before the standard force integration, but the [custom\_integrator](#class-physicalbone3d-property-custom-integrator) property allows you to disable the standard force integration and do fully custom force integration for a body.

* * *

void **apply\_central\_impulse**(impulse: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicalbone3d-method-apply-central-impulse)

Applies a directional impulse without affecting rotation.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_integrate\_forces" functions otherwise).

This is equivalent to using [apply\_impulse()](#class-physicalbone3d-method-apply-impulse) at the body's center of mass.

* * *

void **apply\_impulse**(impulse: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) [🔗](#class-physicalbone3d-method-apply-impulse)

Applies a positioned impulse to the PhysicsBone3D.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_integrate\_forces" functions otherwise).

`position` is the offset from the PhysicsBone3D origin in global coordinates.

* * *

[int](class_int.md#class-int) **get\_bone\_id**() const [🔗](#class-physicalbone3d-method-get-bone-id)

Returns the unique identifier of the PhysicsBone3D.

* * *

[bool](class_bool.md#class-bool) **get\_simulate\_physics**() [🔗](#class-physicalbone3d-method-get-simulate-physics)

Returns `true` if the PhysicsBone3D is allowed to simulate physics.

* * *

[bool](class_bool.md#class-bool) **is\_simulating\_physics**() [🔗](#class-physicalbone3d-method-is-simulating-physics)

Returns `true` if the PhysicsBone3D is currently simulating physics.

[Previous](class_physicalbone2d.md "PhysicalBone2D") [Next](class_physicalbonesimulator3d.md "PhysicalBoneSimulator3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicalbone2d.md "PhysicalBone2D") [Next](class_physicalbonesimulator3d.md "PhysicalBoneSimulator3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).