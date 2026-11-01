---
title: Generic6DOFJoint3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_generic6dofjoint3d.html
crawled_at: "2026-08-13T10:41:45+12:00"
content_hash: 588e1a900137afd0ea27b1f966e583e574d51100f4a915329deb7e34cc9f2933
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Generic6DOFJoint3D

* * *

# Generic6DOFJoint3D

**Inherits:** [Joint3D](class_joint3d.md#class-joint3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A physics joint that allows for complex movement and rotation between two 3D physics bodies.

## Description

The **Generic6DOFJoint3D** (6 Degrees Of Freedom) joint allows for implementing custom types of joints by locking the rotation and translation of certain axes.

The first 3 DOF represent the linear motion of the physics bodies and the last 3 DOF represent the angular motion of the physics bodies. Each axis can be either locked, or limited.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [angular\_limit\_x/damping](#class-generic6dofjoint3d-property-angular-limit-x-damping) | `1.0` |
| [bool](class_bool.md#class-bool) | [angular\_limit\_x/enabled](#class-generic6dofjoint3d-property-angular-limit-x-enabled) | `true` |
| [float](class_float.md#class-float) | [angular\_limit\_x/erp](#class-generic6dofjoint3d-property-angular-limit-x-erp) | `0.5` |
| [float](class_float.md#class-float) | [angular\_limit\_x/force\_limit](#class-generic6dofjoint3d-property-angular-limit-x-force-limit) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_x/lower\_angle](#class-generic6dofjoint3d-property-angular-limit-x-lower-angle) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_x/restitution](#class-generic6dofjoint3d-property-angular-limit-x-restitution) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_x/softness](#class-generic6dofjoint3d-property-angular-limit-x-softness) | `0.5` |
| [float](class_float.md#class-float) | [angular\_limit\_x/upper\_angle](#class-generic6dofjoint3d-property-angular-limit-x-upper-angle) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_y/damping](#class-generic6dofjoint3d-property-angular-limit-y-damping) | `1.0` |
| [bool](class_bool.md#class-bool) | [angular\_limit\_y/enabled](#class-generic6dofjoint3d-property-angular-limit-y-enabled) | `true` |
| [float](class_float.md#class-float) | [angular\_limit\_y/erp](#class-generic6dofjoint3d-property-angular-limit-y-erp) | `0.5` |
| [float](class_float.md#class-float) | [angular\_limit\_y/force\_limit](#class-generic6dofjoint3d-property-angular-limit-y-force-limit) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_y/lower\_angle](#class-generic6dofjoint3d-property-angular-limit-y-lower-angle) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_y/restitution](#class-generic6dofjoint3d-property-angular-limit-y-restitution) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_y/softness](#class-generic6dofjoint3d-property-angular-limit-y-softness) | `0.5` |
| [float](class_float.md#class-float) | [angular\_limit\_y/upper\_angle](#class-generic6dofjoint3d-property-angular-limit-y-upper-angle) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_z/damping](#class-generic6dofjoint3d-property-angular-limit-z-damping) | `1.0` |
| [bool](class_bool.md#class-bool) | [angular\_limit\_z/enabled](#class-generic6dofjoint3d-property-angular-limit-z-enabled) | `true` |
| [float](class_float.md#class-float) | [angular\_limit\_z/erp](#class-generic6dofjoint3d-property-angular-limit-z-erp) | `0.5` |
| [float](class_float.md#class-float) | [angular\_limit\_z/force\_limit](#class-generic6dofjoint3d-property-angular-limit-z-force-limit) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_z/lower\_angle](#class-generic6dofjoint3d-property-angular-limit-z-lower-angle) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_z/restitution](#class-generic6dofjoint3d-property-angular-limit-z-restitution) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_z/softness](#class-generic6dofjoint3d-property-angular-limit-z-softness) | `0.5` |
| [float](class_float.md#class-float) | [angular\_limit\_z/upper\_angle](#class-generic6dofjoint3d-property-angular-limit-z-upper-angle) | `0.0` |
| [bool](class_bool.md#class-bool) | [angular\_motor\_x/enabled](#class-generic6dofjoint3d-property-angular-motor-x-enabled) | `false` |
| [float](class_float.md#class-float) | [angular\_motor\_x/force\_limit](#class-generic6dofjoint3d-property-angular-motor-x-force-limit) | `300.0` |
| [float](class_float.md#class-float) | [angular\_motor\_x/target\_velocity](#class-generic6dofjoint3d-property-angular-motor-x-target-velocity) | `0.0` |
| [bool](class_bool.md#class-bool) | [angular\_motor\_y/enabled](#class-generic6dofjoint3d-property-angular-motor-y-enabled) | `false` |
| [float](class_float.md#class-float) | [angular\_motor\_y/force\_limit](#class-generic6dofjoint3d-property-angular-motor-y-force-limit) | `300.0` |
| [float](class_float.md#class-float) | [angular\_motor\_y/target\_velocity](#class-generic6dofjoint3d-property-angular-motor-y-target-velocity) | `0.0` |
| [bool](class_bool.md#class-bool) | [angular\_motor\_z/enabled](#class-generic6dofjoint3d-property-angular-motor-z-enabled) | `false` |
| [float](class_float.md#class-float) | [angular\_motor\_z/force\_limit](#class-generic6dofjoint3d-property-angular-motor-z-force-limit) | `300.0` |
| [float](class_float.md#class-float) | [angular\_motor\_z/target\_velocity](#class-generic6dofjoint3d-property-angular-motor-z-target-velocity) | `0.0` |
| [float](class_float.md#class-float) | [angular\_spring\_x/damping](#class-generic6dofjoint3d-property-angular-spring-x-damping) | `0.0` |
| [bool](class_bool.md#class-bool) | [angular\_spring\_x/enabled](#class-generic6dofjoint3d-property-angular-spring-x-enabled) | `false` |
| [float](class_float.md#class-float) | [angular\_spring\_x/equilibrium\_point](#class-generic6dofjoint3d-property-angular-spring-x-equilibrium-point) | `0.0` |
| [float](class_float.md#class-float) | [angular\_spring\_x/stiffness](#class-generic6dofjoint3d-property-angular-spring-x-stiffness) | `0.0` |
| [float](class_float.md#class-float) | [angular\_spring\_y/damping](#class-generic6dofjoint3d-property-angular-spring-y-damping) | `0.0` |
| [bool](class_bool.md#class-bool) | [angular\_spring\_y/enabled](#class-generic6dofjoint3d-property-angular-spring-y-enabled) | `false` |
| [float](class_float.md#class-float) | [angular\_spring\_y/equilibrium\_point](#class-generic6dofjoint3d-property-angular-spring-y-equilibrium-point) | `0.0` |
| [float](class_float.md#class-float) | [angular\_spring\_y/stiffness](#class-generic6dofjoint3d-property-angular-spring-y-stiffness) | `0.0` |
| [float](class_float.md#class-float) | [angular\_spring\_z/damping](#class-generic6dofjoint3d-property-angular-spring-z-damping) | `0.0` |
| [bool](class_bool.md#class-bool) | [angular\_spring\_z/enabled](#class-generic6dofjoint3d-property-angular-spring-z-enabled) | `false` |
| [float](class_float.md#class-float) | [angular\_spring\_z/equilibrium\_point](#class-generic6dofjoint3d-property-angular-spring-z-equilibrium-point) | `0.0` |
| [float](class_float.md#class-float) | [angular\_spring\_z/stiffness](#class-generic6dofjoint3d-property-angular-spring-z-stiffness) | `0.0` |
| [float](class_float.md#class-float) | [linear\_limit\_x/damping](#class-generic6dofjoint3d-property-linear-limit-x-damping) | `1.0` |
| [bool](class_bool.md#class-bool) | [linear\_limit\_x/enabled](#class-generic6dofjoint3d-property-linear-limit-x-enabled) | `true` |
| [float](class_float.md#class-float) | [linear\_limit\_x/lower\_distance](#class-generic6dofjoint3d-property-linear-limit-x-lower-distance) | `0.0` |
| [float](class_float.md#class-float) | [linear\_limit\_x/restitution](#class-generic6dofjoint3d-property-linear-limit-x-restitution) | `0.5` |
| [float](class_float.md#class-float) | [linear\_limit\_x/softness](#class-generic6dofjoint3d-property-linear-limit-x-softness) | `0.7` |
| [float](class_float.md#class-float) | [linear\_limit\_x/upper\_distance](#class-generic6dofjoint3d-property-linear-limit-x-upper-distance) | `0.0` |
| [float](class_float.md#class-float) | [linear\_limit\_y/damping](#class-generic6dofjoint3d-property-linear-limit-y-damping) | `1.0` |
| [bool](class_bool.md#class-bool) | [linear\_limit\_y/enabled](#class-generic6dofjoint3d-property-linear-limit-y-enabled) | `true` |
| [float](class_float.md#class-float) | [linear\_limit\_y/lower\_distance](#class-generic6dofjoint3d-property-linear-limit-y-lower-distance) | `0.0` |
| [float](class_float.md#class-float) | [linear\_limit\_y/restitution](#class-generic6dofjoint3d-property-linear-limit-y-restitution) | `0.5` |
| [float](class_float.md#class-float) | [linear\_limit\_y/softness](#class-generic6dofjoint3d-property-linear-limit-y-softness) | `0.7` |
| [float](class_float.md#class-float) | [linear\_limit\_y/upper\_distance](#class-generic6dofjoint3d-property-linear-limit-y-upper-distance) | `0.0` |
| [float](class_float.md#class-float) | [linear\_limit\_z/damping](#class-generic6dofjoint3d-property-linear-limit-z-damping) | `1.0` |
| [bool](class_bool.md#class-bool) | [linear\_limit\_z/enabled](#class-generic6dofjoint3d-property-linear-limit-z-enabled) | `true` |
| [float](class_float.md#class-float) | [linear\_limit\_z/lower\_distance](#class-generic6dofjoint3d-property-linear-limit-z-lower-distance) | `0.0` |
| [float](class_float.md#class-float) | [linear\_limit\_z/restitution](#class-generic6dofjoint3d-property-linear-limit-z-restitution) | `0.5` |
| [float](class_float.md#class-float) | [linear\_limit\_z/softness](#class-generic6dofjoint3d-property-linear-limit-z-softness) | `0.7` |
| [float](class_float.md#class-float) | [linear\_limit\_z/upper\_distance](#class-generic6dofjoint3d-property-linear-limit-z-upper-distance) | `0.0` |
| [bool](class_bool.md#class-bool) | [linear\_motor\_x/enabled](#class-generic6dofjoint3d-property-linear-motor-x-enabled) | `false` |
| [float](class_float.md#class-float) | [linear\_motor\_x/force\_limit](#class-generic6dofjoint3d-property-linear-motor-x-force-limit) | `0.0` |
| [float](class_float.md#class-float) | [linear\_motor\_x/target\_velocity](#class-generic6dofjoint3d-property-linear-motor-x-target-velocity) | `0.0` |
| [bool](class_bool.md#class-bool) | [linear\_motor\_y/enabled](#class-generic6dofjoint3d-property-linear-motor-y-enabled) | `false` |
| [float](class_float.md#class-float) | [linear\_motor\_y/force\_limit](#class-generic6dofjoint3d-property-linear-motor-y-force-limit) | `0.0` |
| [float](class_float.md#class-float) | [linear\_motor\_y/target\_velocity](#class-generic6dofjoint3d-property-linear-motor-y-target-velocity) | `0.0` |
| [bool](class_bool.md#class-bool) | [linear\_motor\_z/enabled](#class-generic6dofjoint3d-property-linear-motor-z-enabled) | `false` |
| [float](class_float.md#class-float) | [linear\_motor\_z/force\_limit](#class-generic6dofjoint3d-property-linear-motor-z-force-limit) | `0.0` |
| [float](class_float.md#class-float) | [linear\_motor\_z/target\_velocity](#class-generic6dofjoint3d-property-linear-motor-z-target-velocity) | `0.0` |
| [float](class_float.md#class-float) | [linear\_spring\_x/damping](#class-generic6dofjoint3d-property-linear-spring-x-damping) | `0.01` |
| [bool](class_bool.md#class-bool) | [linear\_spring\_x/enabled](#class-generic6dofjoint3d-property-linear-spring-x-enabled) | `false` |
| [float](class_float.md#class-float) | [linear\_spring\_x/equilibrium\_point](#class-generic6dofjoint3d-property-linear-spring-x-equilibrium-point) | `0.0` |
| [float](class_float.md#class-float) | [linear\_spring\_x/stiffness](#class-generic6dofjoint3d-property-linear-spring-x-stiffness) | `0.01` |
| [float](class_float.md#class-float) | [linear\_spring\_y/damping](#class-generic6dofjoint3d-property-linear-spring-y-damping) | `0.01` |
| [bool](class_bool.md#class-bool) | [linear\_spring\_y/enabled](#class-generic6dofjoint3d-property-linear-spring-y-enabled) | `false` |
| [float](class_float.md#class-float) | [linear\_spring\_y/equilibrium\_point](#class-generic6dofjoint3d-property-linear-spring-y-equilibrium-point) | `0.0` |
| [float](class_float.md#class-float) | [linear\_spring\_y/stiffness](#class-generic6dofjoint3d-property-linear-spring-y-stiffness) | `0.01` |
| [float](class_float.md#class-float) | [linear\_spring\_z/damping](#class-generic6dofjoint3d-property-linear-spring-z-damping) | `0.01` |
| [bool](class_bool.md#class-bool) | [linear\_spring\_z/enabled](#class-generic6dofjoint3d-property-linear-spring-z-enabled) | `false` |
| [float](class_float.md#class-float) | [linear\_spring\_z/equilibrium\_point](#class-generic6dofjoint3d-property-linear-spring-z-equilibrium-point) | `0.0` |
| [float](class_float.md#class-float) | [linear\_spring\_z/stiffness](#class-generic6dofjoint3d-property-linear-spring-z-stiffness) | `0.01` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [get\_flag\_x](#class-generic6dofjoint3d-method-get-flag-x)(flag: [Flag](#enum-generic6dofjoint3d-flag)) const |
| [bool](class_bool.md#class-bool) | [get\_flag\_y](#class-generic6dofjoint3d-method-get-flag-y)(flag: [Flag](#enum-generic6dofjoint3d-flag)) const |
| [bool](class_bool.md#class-bool) | [get\_flag\_z](#class-generic6dofjoint3d-method-get-flag-z)(flag: [Flag](#enum-generic6dofjoint3d-flag)) const |
| [float](class_float.md#class-float) | [get\_param\_x](#class-generic6dofjoint3d-method-get-param-x)(param: [Param](#enum-generic6dofjoint3d-param)) const |
| [float](class_float.md#class-float) | [get\_param\_y](#class-generic6dofjoint3d-method-get-param-y)(param: [Param](#enum-generic6dofjoint3d-param)) const |
| [float](class_float.md#class-float) | [get\_param\_z](#class-generic6dofjoint3d-method-get-param-z)(param: [Param](#enum-generic6dofjoint3d-param)) const |
| void | [set\_flag\_x](#class-generic6dofjoint3d-method-set-flag-x)(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool)) |
| void | [set\_flag\_y](#class-generic6dofjoint3d-method-set-flag-y)(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool)) |
| void | [set\_flag\_z](#class-generic6dofjoint3d-method-set-flag-z)(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool)) |
| void | [set\_param\_x](#class-generic6dofjoint3d-method-set-param-x)(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float)) |
| void | [set\_param\_y](#class-generic6dofjoint3d-method-set-param-y)(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float)) |
| void | [set\_param\_z](#class-generic6dofjoint3d-method-set-param-z)(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **Param**: [🔗](#enum-generic6dofjoint3d-param)

[Param](#enum-generic6dofjoint3d-param) **PARAM\_LINEAR\_LOWER\_LIMIT** = `0`

The minimum difference between the pivot points' axes.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_LINEAR\_UPPER\_LIMIT** = `1`

The maximum difference between the pivot points' axes.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_LINEAR\_LIMIT\_SOFTNESS** = `2`

A factor applied to the movement across the axes. The lower, the slower the movement.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_LINEAR\_RESTITUTION** = `3`

The amount of restitution on the axes' movement. The lower, the more momentum gets lost.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_LINEAR\_DAMPING** = `4`

The amount of damping that happens at the linear motion across the axes.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_LINEAR\_MOTOR\_TARGET\_VELOCITY** = `5`

The velocity the linear motor will try to reach.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_LINEAR\_MOTOR\_FORCE\_LIMIT** = `6`

The maximum force the linear motor will apply while trying to reach the velocity target.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_LINEAR\_SPRING\_STIFFNESS** = `7`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Param](#enum-generic6dofjoint3d-param) **PARAM\_LINEAR\_SPRING\_DAMPING** = `8`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Param](#enum-generic6dofjoint3d-param) **PARAM\_LINEAR\_SPRING\_EQUILIBRIUM\_POINT** = `9`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_LOWER\_LIMIT** = `10`

The minimum rotation in negative direction to break loose and rotate around the axes.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_UPPER\_LIMIT** = `11`

The minimum rotation in positive direction to break loose and rotate around the axes.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_LIMIT\_SOFTNESS** = `12`

The speed of all rotations across the axes.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_DAMPING** = `13`

The amount of rotational damping across the axes. The lower, the more damping occurs.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_RESTITUTION** = `14`

The amount of rotational restitution across the axes. The lower, the more restitution occurs.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_FORCE\_LIMIT** = `15`

The maximum amount of force that can occur, when rotating around the axes.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_ERP** = `16`

When rotating across the axes, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_MOTOR\_TARGET\_VELOCITY** = `17`

Target speed for the motor at the axes.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_MOTOR\_FORCE\_LIMIT** = `18`

Maximum acceleration for the motor at the axes.

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_SPRING\_STIFFNESS** = `19`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_SPRING\_DAMPING** = `20`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Param](#enum-generic6dofjoint3d-param) **PARAM\_ANGULAR\_SPRING\_EQUILIBRIUM\_POINT** = `21`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Param](#enum-generic6dofjoint3d-param) **PARAM\_MAX** = `22`

Represents the size of the [Param](#enum-generic6dofjoint3d-param) enum.

* * *

enum **Flag**: [🔗](#enum-generic6dofjoint3d-flag)

[Flag](#enum-generic6dofjoint3d-flag) **FLAG\_ENABLE\_LINEAR\_LIMIT** = `0`

If enabled, linear motion is possible within the given limits.

[Flag](#enum-generic6dofjoint3d-flag) **FLAG\_ENABLE\_ANGULAR\_LIMIT** = `1`

If enabled, rotational motion is possible within the given limits.

[Flag](#enum-generic6dofjoint3d-flag) **FLAG\_ENABLE\_LINEAR\_SPRING** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Flag](#enum-generic6dofjoint3d-flag) **FLAG\_ENABLE\_ANGULAR\_SPRING** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Flag](#enum-generic6dofjoint3d-flag) **FLAG\_ENABLE\_MOTOR** = `4`

If enabled, there is a rotational motor across these axes.

[Flag](#enum-generic6dofjoint3d-flag) **FLAG\_ENABLE\_LINEAR\_MOTOR** = `5`

If enabled, there is a linear motor across these axes.

[Flag](#enum-generic6dofjoint3d-flag) **FLAG\_MAX** = `6`

Represents the size of the [Flag](#enum-generic6dofjoint3d-flag) enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **angular\_limit\_x/damping** = `1.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-x-damping)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of rotational damping across the X axis.

The lower, the longer an impulse from one side takes to travel to the other side.

* * *

[bool](class_bool.md#class-bool) **angular\_limit\_x/enabled** = `true` [🔗](#class-generic6dofjoint3d-property-angular-limit-x-enabled)

- void **set\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, rotation across the X axis is limited.

* * *

[float](class_float.md#class-float) **angular\_limit\_x/erp** = `0.5` [🔗](#class-generic6dofjoint3d-property-angular-limit-x-erp)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


When rotating across the X axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.

* * *

[float](class_float.md#class-float) **angular\_limit\_x/force\_limit** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-x-force-limit)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The maximum amount of force that can occur, when rotating around the X axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_x/lower\_angle** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-x-lower-angle)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The minimum rotation in negative direction to break loose and rotate around the X axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_x/restitution** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-x-restitution)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of rotational restitution across the X axis. The lower, the more restitution occurs.

* * *

[float](class_float.md#class-float) **angular\_limit\_x/softness** = `0.5` [🔗](#class-generic6dofjoint3d-property-angular-limit-x-softness)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The speed of all rotations across the X axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_x/upper\_angle** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-x-upper-angle)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The minimum rotation in positive direction to break loose and rotate around the X axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_y/damping** = `1.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-y-damping)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of rotational damping across the Y axis. The lower, the more damping occurs.

* * *

[bool](class_bool.md#class-bool) **angular\_limit\_y/enabled** = `true` [🔗](#class-generic6dofjoint3d-property-angular-limit-y-enabled)

- void **set\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, rotation across the Y axis is limited.

* * *

[float](class_float.md#class-float) **angular\_limit\_y/erp** = `0.5` [🔗](#class-generic6dofjoint3d-property-angular-limit-y-erp)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


When rotating across the Y axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.

* * *

[float](class_float.md#class-float) **angular\_limit\_y/force\_limit** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-y-force-limit)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The maximum amount of force that can occur, when rotating around the Y axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_y/lower\_angle** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-y-lower-angle)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The minimum rotation in negative direction to break loose and rotate around the Y axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_y/restitution** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-y-restitution)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of rotational restitution across the Y axis. The lower, the more restitution occurs.

* * *

[float](class_float.md#class-float) **angular\_limit\_y/softness** = `0.5` [🔗](#class-generic6dofjoint3d-property-angular-limit-y-softness)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The speed of all rotations across the Y axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_y/upper\_angle** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-y-upper-angle)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The minimum rotation in positive direction to break loose and rotate around the Y axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_z/damping** = `1.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-z-damping)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of rotational damping across the Z axis. The lower, the more damping occurs.

* * *

[bool](class_bool.md#class-bool) **angular\_limit\_z/enabled** = `true` [🔗](#class-generic6dofjoint3d-property-angular-limit-z-enabled)

- void **set\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, rotation across the Z axis is limited.

* * *

[float](class_float.md#class-float) **angular\_limit\_z/erp** = `0.5` [🔗](#class-generic6dofjoint3d-property-angular-limit-z-erp)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


When rotating across the Z axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.

* * *

[float](class_float.md#class-float) **angular\_limit\_z/force\_limit** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-z-force-limit)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The maximum amount of force that can occur, when rotating around the Z axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_z/lower\_angle** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-z-lower-angle)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The minimum rotation in negative direction to break loose and rotate around the Z axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_z/restitution** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-z-restitution)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of rotational restitution across the Z axis. The lower, the more restitution occurs.

* * *

[float](class_float.md#class-float) **angular\_limit\_z/softness** = `0.5` [🔗](#class-generic6dofjoint3d-property-angular-limit-z-softness)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The speed of all rotations across the Z axis.

* * *

[float](class_float.md#class-float) **angular\_limit\_z/upper\_angle** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-limit-z-upper-angle)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The minimum rotation in positive direction to break loose and rotate around the Z axis.

* * *

[bool](class_bool.md#class-bool) **angular\_motor\_x/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-angular-motor-x-enabled)

- void **set\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, a rotating motor at the X axis is enabled.

* * *

[float](class_float.md#class-float) **angular\_motor\_x/force\_limit** = `300.0` [🔗](#class-generic6dofjoint3d-property-angular-motor-x-force-limit)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


Maximum acceleration for the motor at the X axis.

* * *

[float](class_float.md#class-float) **angular\_motor\_x/target\_velocity** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-motor-x-target-velocity)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


Target speed for the motor at the X axis.

* * *

[bool](class_bool.md#class-bool) **angular\_motor\_y/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-angular-motor-y-enabled)

- void **set\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, a rotating motor at the Y axis is enabled.

* * *

[float](class_float.md#class-float) **angular\_motor\_y/force\_limit** = `300.0` [🔗](#class-generic6dofjoint3d-property-angular-motor-y-force-limit)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


Maximum acceleration for the motor at the Y axis.

* * *

[float](class_float.md#class-float) **angular\_motor\_y/target\_velocity** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-motor-y-target-velocity)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


Target speed for the motor at the Y axis.

* * *

[bool](class_bool.md#class-bool) **angular\_motor\_z/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-angular-motor-z-enabled)

- void **set\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, a rotating motor at the Z axis is enabled.

* * *

[float](class_float.md#class-float) **angular\_motor\_z/force\_limit** = `300.0` [🔗](#class-generic6dofjoint3d-property-angular-motor-z-force-limit)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


Maximum acceleration for the motor at the Z axis.

* * *

[float](class_float.md#class-float) **angular\_motor\_z/target\_velocity** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-motor-z-target-velocity)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


Target speed for the motor at the Z axis.

* * *

[float](class_float.md#class-float) **angular\_spring\_x/damping** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-spring-x-damping)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **angular\_spring\_x/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-angular-spring-x-enabled)

- void **set\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **angular\_spring\_x/equilibrium\_point** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-spring-x-equilibrium-point)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **angular\_spring\_x/stiffness** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-spring-x-stiffness)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **angular\_spring\_y/damping** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-spring-y-damping)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **angular\_spring\_y/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-angular-spring-y-enabled)

- void **set\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **angular\_spring\_y/equilibrium\_point** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-spring-y-equilibrium-point)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **angular\_spring\_y/stiffness** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-spring-y-stiffness)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **angular\_spring\_z/damping** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-spring-z-damping)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **angular\_spring\_z/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-angular-spring-z-enabled)

- void **set\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **angular\_spring\_z/equilibrium\_point** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-spring-z-equilibrium-point)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **angular\_spring\_z/stiffness** = `0.0` [🔗](#class-generic6dofjoint3d-property-angular-spring-z-stiffness)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **linear\_limit\_x/damping** = `1.0` [🔗](#class-generic6dofjoint3d-property-linear-limit-x-damping)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of damping that happens at the X motion.

* * *

[bool](class_bool.md#class-bool) **linear\_limit\_x/enabled** = `true` [🔗](#class-generic6dofjoint3d-property-linear-limit-x-enabled)

- void **set\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, the linear motion across the X axis is limited.

* * *

[float](class_float.md#class-float) **linear\_limit\_x/lower\_distance** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-limit-x-lower-distance)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The minimum difference between the pivot points' X axis.

* * *

[float](class_float.md#class-float) **linear\_limit\_x/restitution** = `0.5` [🔗](#class-generic6dofjoint3d-property-linear-limit-x-restitution)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of restitution on the X axis movement. The lower, the more momentum gets lost.

* * *

[float](class_float.md#class-float) **linear\_limit\_x/softness** = `0.7` [🔗](#class-generic6dofjoint3d-property-linear-limit-x-softness)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


A factor applied to the movement across the X axis. The lower, the slower the movement.

* * *

[float](class_float.md#class-float) **linear\_limit\_x/upper\_distance** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-limit-x-upper-distance)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The maximum difference between the pivot points' X axis.

* * *

[float](class_float.md#class-float) **linear\_limit\_y/damping** = `1.0` [🔗](#class-generic6dofjoint3d-property-linear-limit-y-damping)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of damping that happens at the Y motion.

* * *

[bool](class_bool.md#class-bool) **linear\_limit\_y/enabled** = `true` [🔗](#class-generic6dofjoint3d-property-linear-limit-y-enabled)

- void **set\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, the linear motion across the Y axis is limited.

* * *

[float](class_float.md#class-float) **linear\_limit\_y/lower\_distance** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-limit-y-lower-distance)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The minimum difference between the pivot points' Y axis.

* * *

[float](class_float.md#class-float) **linear\_limit\_y/restitution** = `0.5` [🔗](#class-generic6dofjoint3d-property-linear-limit-y-restitution)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of restitution on the Y axis movement. The lower, the more momentum gets lost.

* * *

[float](class_float.md#class-float) **linear\_limit\_y/softness** = `0.7` [🔗](#class-generic6dofjoint3d-property-linear-limit-y-softness)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


A factor applied to the movement across the Y axis. The lower, the slower the movement.

* * *

[float](class_float.md#class-float) **linear\_limit\_y/upper\_distance** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-limit-y-upper-distance)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The maximum difference between the pivot points' Y axis.

* * *

[float](class_float.md#class-float) **linear\_limit\_z/damping** = `1.0` [🔗](#class-generic6dofjoint3d-property-linear-limit-z-damping)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of damping that happens at the Z motion.

* * *

[bool](class_bool.md#class-bool) **linear\_limit\_z/enabled** = `true` [🔗](#class-generic6dofjoint3d-property-linear-limit-z-enabled)

- void **set\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, the linear motion across the Z axis is limited.

* * *

[float](class_float.md#class-float) **linear\_limit\_z/lower\_distance** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-limit-z-lower-distance)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The minimum difference between the pivot points' Z axis.

* * *

[float](class_float.md#class-float) **linear\_limit\_z/restitution** = `0.5` [🔗](#class-generic6dofjoint3d-property-linear-limit-z-restitution)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The amount of restitution on the Z axis movement. The lower, the more momentum gets lost.

* * *

[float](class_float.md#class-float) **linear\_limit\_z/softness** = `0.7` [🔗](#class-generic6dofjoint3d-property-linear-limit-z-softness)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


A factor applied to the movement across the Z axis. The lower, the slower the movement.

* * *

[float](class_float.md#class-float) **linear\_limit\_z/upper\_distance** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-limit-z-upper-distance)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The maximum difference between the pivot points' Z axis.

* * *

[bool](class_bool.md#class-bool) **linear\_motor\_x/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-linear-motor-x-enabled)

- void **set\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, then there is a linear motor on the X axis. It will attempt to reach the target velocity while staying within the force limits.

* * *

[float](class_float.md#class-float) **linear\_motor\_x/force\_limit** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-motor-x-force-limit)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The maximum force the linear motor can apply on the X axis while trying to reach the target velocity.

* * *

[float](class_float.md#class-float) **linear\_motor\_x/target\_velocity** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-motor-x-target-velocity)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


The speed that the linear motor will attempt to reach on the X axis.

* * *

[bool](class_bool.md#class-bool) **linear\_motor\_y/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-linear-motor-y-enabled)

- void **set\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, then there is a linear motor on the Y axis. It will attempt to reach the target velocity while staying within the force limits.

* * *

[float](class_float.md#class-float) **linear\_motor\_y/force\_limit** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-motor-y-force-limit)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The maximum force the linear motor can apply on the Y axis while trying to reach the target velocity.

* * *

[float](class_float.md#class-float) **linear\_motor\_y/target\_velocity** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-motor-y-target-velocity)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


The speed that the linear motor will attempt to reach on the Y axis.

* * *

[bool](class_bool.md#class-bool) **linear\_motor\_z/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-linear-motor-z-enabled)

- void **set\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


If `true`, then there is a linear motor on the Z axis. It will attempt to reach the target velocity while staying within the force limits.

* * *

[float](class_float.md#class-float) **linear\_motor\_z/force\_limit** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-motor-z-force-limit)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The maximum force the linear motor can apply on the Z axis while trying to reach the target velocity.

* * *

[float](class_float.md#class-float) **linear\_motor\_z/target\_velocity** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-motor-z-target-velocity)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


The speed that the linear motor will attempt to reach on the Z axis.

* * *

[float](class_float.md#class-float) **linear\_spring\_x/damping** = `0.01` [🔗](#class-generic6dofjoint3d-property-linear-spring-x-damping)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **linear\_spring\_x/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-linear-spring-x-enabled)

- void **set\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **linear\_spring\_x/equilibrium\_point** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-spring-x-equilibrium-point)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **linear\_spring\_x/stiffness** = `0.01` [🔗](#class-generic6dofjoint3d-property-linear-spring-x-stiffness)

- void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **linear\_spring\_y/damping** = `0.01` [🔗](#class-generic6dofjoint3d-property-linear-spring-y-damping)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **linear\_spring\_y/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-linear-spring-y-enabled)

- void **set\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **linear\_spring\_y/equilibrium\_point** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-spring-y-equilibrium-point)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **linear\_spring\_y/stiffness** = `0.01` [🔗](#class-generic6dofjoint3d-property-linear-spring-y-stiffness)

- void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **linear\_spring\_z/damping** = `0.01` [🔗](#class-generic6dofjoint3d-property-linear-spring-z-damping)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **linear\_spring\_z/enabled** = `false` [🔗](#class-generic6dofjoint3d-property-linear-spring-z-enabled)

- void **set\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **linear\_spring\_z/equilibrium\_point** = `0.0` [🔗](#class-generic6dofjoint3d-property-linear-spring-z-equilibrium-point)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **linear\_spring\_z/stiffness** = `0.01` [🔗](#class-generic6dofjoint3d-property-linear-spring-z-stiffness)

- void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **get\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const [🔗](#class-generic6dofjoint3d-method-get-flag-x)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **get\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const [🔗](#class-generic6dofjoint3d-method-get-flag-y)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **get\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag)) const [🔗](#class-generic6dofjoint3d-method-get-flag-z)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **get\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param)) const [🔗](#class-generic6dofjoint3d-method-get-param-x)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **get\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param)) const [🔗](#class-generic6dofjoint3d-method-get-param-y)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **get\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param)) const [🔗](#class-generic6dofjoint3d-method-get-param-z)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_flag\_x**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool)) [🔗](#class-generic6dofjoint3d-method-set-flag-x)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_flag\_y**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool)) [🔗](#class-generic6dofjoint3d-method-set-flag-y)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_flag\_z**(flag: [Flag](#enum-generic6dofjoint3d-flag), value: [bool](class_bool.md#class-bool)) [🔗](#class-generic6dofjoint3d-method-set-flag-z)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_param\_x**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float)) [🔗](#class-generic6dofjoint3d-method-set-param-x)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_param\_y**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float)) [🔗](#class-generic6dofjoint3d-method-set-param-y)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_param\_z**(param: [Param](#enum-generic6dofjoint3d-param), value: [float](class_float.md#class-float)) [🔗](#class-generic6dofjoint3d-method-set-param-z)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_foldablecontainer.md "FoldableContainer") [Next](class_geometryinstance3d.md "GeometryInstance3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_foldablecontainer.md "FoldableContainer") [Next](class_geometryinstance3d.md "GeometryInstance3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).