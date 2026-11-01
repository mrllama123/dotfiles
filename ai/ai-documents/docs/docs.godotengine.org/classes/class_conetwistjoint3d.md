---
title: ConeTwistJoint3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_conetwistjoint3d.html
crawled_at: "2026-08-13T10:31:43+12:00"
content_hash: 771ae140f3a457e2b8c0f7684aab5bbdb4c057eb5ab2efad5289527913caa003
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ConeTwistJoint3D

* * *

# ConeTwistJoint3D

**Inherits:** [Joint3D](class_joint3d.md#class-joint3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A physics joint that connects two 3D physics bodies in a way that simulates a ball-and-socket joint.

## Description

A physics joint that connects two 3D physics bodies in a way that simulates a ball-and-socket joint. The twist axis is initiated as the X axis of the **ConeTwistJoint3D**. Once the physics bodies swing, the twist axis is calculated as the middle of the X axes of the joint in the local space of the two physics bodies. Useful for limbs like shoulders and hips, lamps hanging off a ceiling, etc.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [bias](#class-conetwistjoint3d-property-bias) | `0.3` |
| [float](class_float.md#class-float) | [relaxation](#class-conetwistjoint3d-property-relaxation) | `1.0` |
| [float](class_float.md#class-float) | [softness](#class-conetwistjoint3d-property-softness) | `0.8` |
| [float](class_float.md#class-float) | [swing\_span](#class-conetwistjoint3d-property-swing-span) | `0.7853982` |
| [float](class_float.md#class-float) | [twist\_span](#class-conetwistjoint3d-property-twist-span) | `3.1415927` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_param](#class-conetwistjoint3d-method-get-param)(param: [Param](#enum-conetwistjoint3d-param)) const |
| void | [set\_param](#class-conetwistjoint3d-method-set-param)(param: [Param](#enum-conetwistjoint3d-param), value: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **Param**: [🔗](#enum-conetwistjoint3d-param)

[Param](#enum-conetwistjoint3d-param) **PARAM\_SWING\_SPAN** = `0`

Swing is rotation from side to side, around the axis perpendicular to the twist axis.

The swing span defines, how much rotation will not get corrected along the swing axis.

Could be defined as looseness in the **ConeTwistJoint3D**.

If below 0.05, this behavior is locked.

[Param](#enum-conetwistjoint3d-param) **PARAM\_TWIST\_SPAN** = `1`

Twist is the rotation around the twist axis, this value defined how far the joint can twist.

Twist is locked if below 0.05.

[Param](#enum-conetwistjoint3d-param) **PARAM\_BIAS** = `2`

The speed with which the swing or twist will take place.

The higher, the faster.

[Param](#enum-conetwistjoint3d-param) **PARAM\_SOFTNESS** = `3`

The ease with which the joint starts to twist. If it's too low, it takes more force to start twisting the joint.

[Param](#enum-conetwistjoint3d-param) **PARAM\_RELAXATION** = `4`

Defines, how fast the swing- and twist-speed-difference on both sides gets synced.

[Param](#enum-conetwistjoint3d-param) **PARAM\_MAX** = `5`

Represents the size of the [Param](#enum-conetwistjoint3d-param) enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **bias** = `0.3` [🔗](#class-conetwistjoint3d-property-bias)

- void **set\_param**(param: [Param](#enum-conetwistjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-conetwistjoint3d-param)) const


The speed with which the swing or twist will take place.

The higher, the faster.

* * *

[float](class_float.md#class-float) **relaxation** = `1.0` [🔗](#class-conetwistjoint3d-property-relaxation)

- void **set\_param**(param: [Param](#enum-conetwistjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-conetwistjoint3d-param)) const


Defines, how fast the swing- and twist-speed-difference on both sides gets synced.

* * *

[float](class_float.md#class-float) **softness** = `0.8` [🔗](#class-conetwistjoint3d-property-softness)

- void **set\_param**(param: [Param](#enum-conetwistjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-conetwistjoint3d-param)) const


The ease with which the joint starts to twist. If it's too low, it takes more force to start twisting the joint.

* * *

[float](class_float.md#class-float) **swing\_span** = `0.7853982` [🔗](#class-conetwistjoint3d-property-swing-span)

- void **set\_param**(param: [Param](#enum-conetwistjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-conetwistjoint3d-param)) const


Swing is rotation from side to side, around the axis perpendicular to the twist axis.

The swing span defines, how much rotation will not get corrected along the swing axis.

Could be defined as looseness in the **ConeTwistJoint3D**.

If below 0.05, this behavior is locked.

* * *

[float](class_float.md#class-float) **twist\_span** = `3.1415927` [🔗](#class-conetwistjoint3d-property-twist-span)

- void **set\_param**(param: [Param](#enum-conetwistjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-conetwistjoint3d-param)) const


Twist is the rotation around the twist axis, this value defined how far the joint can twist.

Twist is locked if below 0.05.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_param**(param: [Param](#enum-conetwistjoint3d-param)) const [🔗](#class-conetwistjoint3d-method-get-param)

Returns the value of the specified parameter.

* * *

void **set\_param**(param: [Param](#enum-conetwistjoint3d-param), value: [float](class_float.md#class-float)) [🔗](#class-conetwistjoint3d-method-set-param)

Sets the value of the specified parameter.

[Previous](class_colorrect.md "ColorRect") [Next](class_confirmationdialog.md "ConfirmationDialog")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_colorrect.md "ColorRect") [Next](class_confirmationdialog.md "ConfirmationDialog")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).