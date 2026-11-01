---
title: HingeJoint3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_hingejoint3d.html
crawled_at: "2026-08-13T10:29:51+12:00"
content_hash: 13bc3e12c491a317682ec8f1885f21dd8f4555b484be5ee014290ef000ef31f2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - HingeJoint3D

* * *

# HingeJoint3D

**Inherits:** [Joint3D](class_joint3d.md#class-joint3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A physics joint that restricts the rotation of a 3D physics body around an axis relative to another physics body.

## Description

A physics joint that restricts the rotation of a 3D physics body around an axis relative to another physics body. For example, Body A can be a [StaticBody3D](class_staticbody3d.md#class-staticbody3d) representing a door hinge that a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) rotates around.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [angular\_limit/bias](#class-hingejoint3d-property-angular-limit-bias) | `0.3` |
| [bool](class_bool.md#class-bool) | [angular\_limit/enable](#class-hingejoint3d-property-angular-limit-enable) | `false` |
| [float](class_float.md#class-float) | [angular\_limit/lower](#class-hingejoint3d-property-angular-limit-lower) | `-1.5707964` |
| [float](class_float.md#class-float) | [angular\_limit/relaxation](#class-hingejoint3d-property-angular-limit-relaxation) | `1.0` |
| [float](class_float.md#class-float) | [angular\_limit/softness](#class-hingejoint3d-property-angular-limit-softness) | `0.9` |
| [float](class_float.md#class-float) | [angular\_limit/upper](#class-hingejoint3d-property-angular-limit-upper) | `1.5707964` |
| [bool](class_bool.md#class-bool) | [motor/enable](#class-hingejoint3d-property-motor-enable) | `false` |
| [float](class_float.md#class-float) | [motor/max\_impulse](#class-hingejoint3d-property-motor-max-impulse) | `1.0` |
| [float](class_float.md#class-float) | [motor/target\_velocity](#class-hingejoint3d-property-motor-target-velocity) | `1.0` |
| [float](class_float.md#class-float) | [params/bias](#class-hingejoint3d-property-params-bias) | `0.3` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [get\_flag](#class-hingejoint3d-method-get-flag)(flag: [Flag](#enum-hingejoint3d-flag)) const |
| [float](class_float.md#class-float) | [get\_param](#class-hingejoint3d-method-get-param)(param: [Param](#enum-hingejoint3d-param)) const |
| void | [set\_flag](#class-hingejoint3d-method-set-flag)(flag: [Flag](#enum-hingejoint3d-flag), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_param](#class-hingejoint3d-method-set-param)(param: [Param](#enum-hingejoint3d-param), value: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **Param**: [🔗](#enum-hingejoint3d-param)

[Param](#enum-hingejoint3d-param) **PARAM\_BIAS** = `0`

The speed with which the two bodies get pulled together when they move in different directions.

[Param](#enum-hingejoint3d-param) **PARAM\_LIMIT\_UPPER** = `1`

The maximum rotation. Only active if [angular\_limit/enable](#class-hingejoint3d-property-angular-limit-enable) is `true`.

[Param](#enum-hingejoint3d-param) **PARAM\_LIMIT\_LOWER** = `2`

The minimum rotation. Only active if [angular\_limit/enable](#class-hingejoint3d-property-angular-limit-enable) is `true`.

[Param](#enum-hingejoint3d-param) **PARAM\_LIMIT\_BIAS** = `3`

The speed with which the rotation across the axis perpendicular to the hinge gets corrected.

[Param](#enum-hingejoint3d-param) **PARAM\_LIMIT\_SOFTNESS** = `4`

**Deprecated:** This property is never used by the engine and is kept for compatibility purpose.

[Param](#enum-hingejoint3d-param) **PARAM\_LIMIT\_RELAXATION** = `5`

The lower this value, the more the rotation gets slowed down.

[Param](#enum-hingejoint3d-param) **PARAM\_MOTOR\_TARGET\_VELOCITY** = `6`

Target speed for the motor.

[Param](#enum-hingejoint3d-param) **PARAM\_MOTOR\_MAX\_IMPULSE** = `7`

Maximum acceleration for the motor.

[Param](#enum-hingejoint3d-param) **PARAM\_MAX** = `8`

Represents the size of the [Param](#enum-hingejoint3d-param) enum.

* * *

enum **Flag**: [🔗](#enum-hingejoint3d-flag)

[Flag](#enum-hingejoint3d-flag) **FLAG\_USE\_LIMIT** = `0`

If `true`, the hinges maximum and minimum rotation, defined by [angular\_limit/lower](#class-hingejoint3d-property-angular-limit-lower) and [angular\_limit/upper](#class-hingejoint3d-property-angular-limit-upper) has effects.

[Flag](#enum-hingejoint3d-flag) **FLAG\_ENABLE\_MOTOR** = `1`

When activated, a motor turns the hinge.

[Flag](#enum-hingejoint3d-flag) **FLAG\_MAX** = `2`

Represents the size of the [Flag](#enum-hingejoint3d-flag) enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **angular\_limit/bias** = `0.3` [🔗](#class-hingejoint3d-property-angular-limit-bias)

- void **set\_param**(param: [Param](#enum-hingejoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-hingejoint3d-param)) const


The speed with which the rotation across the axis perpendicular to the hinge gets corrected.

* * *

[bool](class_bool.md#class-bool) **angular\_limit/enable** = `false` [🔗](#class-hingejoint3d-property-angular-limit-enable)

- void **set\_flag**(flag: [Flag](#enum-hingejoint3d-flag), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flag](#enum-hingejoint3d-flag)) const


If `true`, the hinges maximum and minimum rotation, defined by [angular\_limit/lower](#class-hingejoint3d-property-angular-limit-lower) and [angular\_limit/upper](#class-hingejoint3d-property-angular-limit-upper) has effects.

* * *

[float](class_float.md#class-float) **angular\_limit/lower** = `-1.5707964` [🔗](#class-hingejoint3d-property-angular-limit-lower)

- void **set\_param**(param: [Param](#enum-hingejoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-hingejoint3d-param)) const


The minimum rotation. Only active if [angular\_limit/enable](#class-hingejoint3d-property-angular-limit-enable) is `true`.

* * *

[float](class_float.md#class-float) **angular\_limit/relaxation** = `1.0` [🔗](#class-hingejoint3d-property-angular-limit-relaxation)

- void **set\_param**(param: [Param](#enum-hingejoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-hingejoint3d-param)) const


The lower this value, the more the rotation gets slowed down.

* * *

[float](class_float.md#class-float) **angular\_limit/softness** = `0.9` [🔗](#class-hingejoint3d-property-angular-limit-softness)

- void **set\_param**(param: [Param](#enum-hingejoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-hingejoint3d-param)) const


**Deprecated:** This property is never set by the engine and is kept for compatibility purposes.

* * *

[float](class_float.md#class-float) **angular\_limit/upper** = `1.5707964` [🔗](#class-hingejoint3d-property-angular-limit-upper)

- void **set\_param**(param: [Param](#enum-hingejoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-hingejoint3d-param)) const


The maximum rotation. Only active if [angular\_limit/enable](#class-hingejoint3d-property-angular-limit-enable) is `true`.

* * *

[bool](class_bool.md#class-bool) **motor/enable** = `false` [🔗](#class-hingejoint3d-property-motor-enable)

- void **set\_flag**(flag: [Flag](#enum-hingejoint3d-flag), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flag](#enum-hingejoint3d-flag)) const


When activated, a motor turns the hinge.

* * *

[float](class_float.md#class-float) **motor/max\_impulse** = `1.0` [🔗](#class-hingejoint3d-property-motor-max-impulse)

- void **set\_param**(param: [Param](#enum-hingejoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-hingejoint3d-param)) const


Maximum acceleration for the motor.

* * *

[float](class_float.md#class-float) **motor/target\_velocity** = `1.0` [🔗](#class-hingejoint3d-property-motor-target-velocity)

- void **set\_param**(param: [Param](#enum-hingejoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-hingejoint3d-param)) const


Target speed for the motor.

* * *

[float](class_float.md#class-float) **params/bias** = `0.3` [🔗](#class-hingejoint3d-property-params-bias)

- void **set\_param**(param: [Param](#enum-hingejoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-hingejoint3d-param)) const


The speed with which the two bodies get pulled together when they move in different directions.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **get\_flag**(flag: [Flag](#enum-hingejoint3d-flag)) const [🔗](#class-hingejoint3d-method-get-flag)

Returns the value of the specified flag.

* * *

[float](class_float.md#class-float) **get\_param**(param: [Param](#enum-hingejoint3d-param)) const [🔗](#class-hingejoint3d-method-get-param)

Returns the value of the specified parameter.

* * *

void **set\_flag**(flag: [Flag](#enum-hingejoint3d-flag), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-hingejoint3d-method-set-flag)

If `true`, enables the specified flag.

* * *

void **set\_param**(param: [Param](#enum-hingejoint3d-param), value: [float](class_float.md#class-float)) [🔗](#class-hingejoint3d-method-set-param)

Sets the value of the specified parameter.

[Previous](class_hflowcontainer.md "HFlowContainer") [Next](class_hscrollbar.md "HScrollBar")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_hflowcontainer.md "HFlowContainer") [Next](class_hscrollbar.md "HScrollBar")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).