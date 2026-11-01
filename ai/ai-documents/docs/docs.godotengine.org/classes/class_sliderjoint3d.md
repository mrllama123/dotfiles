---
title: SliderJoint3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_sliderjoint3d.html
crawled_at: "2026-08-13T10:32:51+12:00"
content_hash: 313a1cb4b6791f1ce32f67d3ef60ea8e09cbf01a90127252e253a85332bf0e39
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SliderJoint3D

* * *

# SliderJoint3D

**Inherits:** [Joint3D](class_joint3d.md#class-joint3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A physics joint that restricts the movement of a 3D physics body along an axis relative to another physics body.

## Description

A physics joint that restricts the movement of a 3D physics body along an axis relative to another physics body. For example, Body A could be a [StaticBody3D](class_staticbody3d.md#class-staticbody3d) representing a piston base, while Body B could be a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) representing the piston head, moving up and down.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [angular\_limit/damping](#class-sliderjoint3d-property-angular-limit-damping) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit/lower\_angle](#class-sliderjoint3d-property-angular-limit-lower-angle) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit/restitution](#class-sliderjoint3d-property-angular-limit-restitution) | `0.7` |
| [float](class_float.md#class-float) | [angular\_limit/softness](#class-sliderjoint3d-property-angular-limit-softness) | `1.0` |
| [float](class_float.md#class-float) | [angular\_limit/upper\_angle](#class-sliderjoint3d-property-angular-limit-upper-angle) | `0.0` |
| [float](class_float.md#class-float) | [angular\_motion/damping](#class-sliderjoint3d-property-angular-motion-damping) | `1.0` |
| [float](class_float.md#class-float) | [angular\_motion/restitution](#class-sliderjoint3d-property-angular-motion-restitution) | `0.7` |
| [float](class_float.md#class-float) | [angular\_motion/softness](#class-sliderjoint3d-property-angular-motion-softness) | `1.0` |
| [float](class_float.md#class-float) | [angular\_ortho/damping](#class-sliderjoint3d-property-angular-ortho-damping) | `1.0` |
| [float](class_float.md#class-float) | [angular\_ortho/restitution](#class-sliderjoint3d-property-angular-ortho-restitution) | `0.7` |
| [float](class_float.md#class-float) | [angular\_ortho/softness](#class-sliderjoint3d-property-angular-ortho-softness) | `1.0` |
| [float](class_float.md#class-float) | [linear\_limit/damping](#class-sliderjoint3d-property-linear-limit-damping) | `1.0` |
| [float](class_float.md#class-float) | [linear\_limit/lower\_distance](#class-sliderjoint3d-property-linear-limit-lower-distance) | `-1.0` |
| [float](class_float.md#class-float) | [linear\_limit/restitution](#class-sliderjoint3d-property-linear-limit-restitution) | `0.7` |
| [float](class_float.md#class-float) | [linear\_limit/softness](#class-sliderjoint3d-property-linear-limit-softness) | `1.0` |
| [float](class_float.md#class-float) | [linear\_limit/upper\_distance](#class-sliderjoint3d-property-linear-limit-upper-distance) | `1.0` |
| [float](class_float.md#class-float) | [linear\_motion/damping](#class-sliderjoint3d-property-linear-motion-damping) | `0.0` |
| [float](class_float.md#class-float) | [linear\_motion/restitution](#class-sliderjoint3d-property-linear-motion-restitution) | `0.7` |
| [float](class_float.md#class-float) | [linear\_motion/softness](#class-sliderjoint3d-property-linear-motion-softness) | `1.0` |
| [float](class_float.md#class-float) | [linear\_ortho/damping](#class-sliderjoint3d-property-linear-ortho-damping) | `1.0` |
| [float](class_float.md#class-float) | [linear\_ortho/restitution](#class-sliderjoint3d-property-linear-ortho-restitution) | `0.7` |
| [float](class_float.md#class-float) | [linear\_ortho/softness](#class-sliderjoint3d-property-linear-ortho-softness) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_param](#class-sliderjoint3d-method-get-param)(param: [Param](#enum-sliderjoint3d-param)) const |
| void | [set\_param](#class-sliderjoint3d-method-set-param)(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **Param**: [🔗](#enum-sliderjoint3d-param)

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_LIMIT\_UPPER** = `0`

Constant for accessing [linear\_limit/upper\_distance](#class-sliderjoint3d-property-linear-limit-upper-distance). The maximum difference between the pivot points on their X axis before damping happens.

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_LIMIT\_LOWER** = `1`

Constant for accessing [linear\_limit/lower\_distance](#class-sliderjoint3d-property-linear-limit-lower-distance). The minimum difference between the pivot points on their X axis before damping happens.

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_LIMIT\_SOFTNESS** = `2`

Constant for accessing [linear\_limit/softness](#class-sliderjoint3d-property-linear-limit-softness). A factor applied to the movement across the slider axis once the limits get surpassed. The lower, the slower the movement.

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_LIMIT\_RESTITUTION** = `3`

Constant for accessing [linear\_limit/restitution](#class-sliderjoint3d-property-linear-limit-restitution). The amount of restitution once the limits are surpassed. The lower, the more velocity-energy gets lost.

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_LIMIT\_DAMPING** = `4`

Constant for accessing [linear\_limit/damping](#class-sliderjoint3d-property-linear-limit-damping). The amount of damping once the slider limits are surpassed.

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_MOTION\_SOFTNESS** = `5`

Constant for accessing [linear\_motion/softness](#class-sliderjoint3d-property-linear-motion-softness). A factor applied to the movement across the slider axis as long as the slider is in the limits. The lower, the slower the movement.

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_MOTION\_RESTITUTION** = `6`

Constant for accessing [linear\_motion/restitution](#class-sliderjoint3d-property-linear-motion-restitution). The amount of restitution inside the slider limits.

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_MOTION\_DAMPING** = `7`

Constant for accessing [linear\_motion/damping](#class-sliderjoint3d-property-linear-motion-damping). The amount of damping inside the slider limits.

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_ORTHOGONAL\_SOFTNESS** = `8`

Constant for accessing [linear\_ortho/softness](#class-sliderjoint3d-property-linear-ortho-softness). A factor applied to the movement across axes orthogonal to the slider.

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_ORTHOGONAL\_RESTITUTION** = `9`

Constant for accessing [linear\_motion/restitution](#class-sliderjoint3d-property-linear-motion-restitution). The amount of restitution when movement is across axes orthogonal to the slider.

[Param](#enum-sliderjoint3d-param) **PARAM\_LINEAR\_ORTHOGONAL\_DAMPING** = `10`

Constant for accessing [linear\_motion/damping](#class-sliderjoint3d-property-linear-motion-damping). The amount of damping when movement is across axes orthogonal to the slider.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_LIMIT\_UPPER** = `11`

Constant for accessing [angular\_limit/upper\_angle](#class-sliderjoint3d-property-angular-limit-upper-angle). The upper limit of rotation in the slider.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_LIMIT\_LOWER** = `12`

Constant for accessing [angular\_limit/lower\_angle](#class-sliderjoint3d-property-angular-limit-lower-angle). The lower limit of rotation in the slider.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_LIMIT\_SOFTNESS** = `13`

Constant for accessing [angular\_limit/softness](#class-sliderjoint3d-property-angular-limit-softness). A factor applied to the all rotation once the limit is surpassed.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_LIMIT\_RESTITUTION** = `14`

Constant for accessing [angular\_limit/restitution](#class-sliderjoint3d-property-angular-limit-restitution). The amount of restitution of the rotation when the limit is surpassed.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_LIMIT\_DAMPING** = `15`

Constant for accessing [angular\_limit/damping](#class-sliderjoint3d-property-angular-limit-damping). The amount of damping of the rotation when the limit is surpassed.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_MOTION\_SOFTNESS** = `16`

Constant for accessing [angular\_motion/softness](#class-sliderjoint3d-property-angular-motion-softness). A factor applied to the all rotation in the limits.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_MOTION\_RESTITUTION** = `17`

Constant for accessing [angular\_motion/restitution](#class-sliderjoint3d-property-angular-motion-restitution). The amount of restitution of the rotation in the limits.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_MOTION\_DAMPING** = `18`

Constant for accessing [angular\_motion/damping](#class-sliderjoint3d-property-angular-motion-damping). The amount of damping of the rotation in the limits.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_ORTHOGONAL\_SOFTNESS** = `19`

Constant for accessing [angular\_ortho/softness](#class-sliderjoint3d-property-angular-ortho-softness). A factor applied to the all rotation across axes orthogonal to the slider.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_ORTHOGONAL\_RESTITUTION** = `20`

Constant for accessing [angular\_ortho/restitution](#class-sliderjoint3d-property-angular-ortho-restitution). The amount of restitution of the rotation across axes orthogonal to the slider.

[Param](#enum-sliderjoint3d-param) **PARAM\_ANGULAR\_ORTHOGONAL\_DAMPING** = `21`

Constant for accessing [angular\_ortho/damping](#class-sliderjoint3d-property-angular-ortho-damping). The amount of damping of the rotation across axes orthogonal to the slider.

[Param](#enum-sliderjoint3d-param) **PARAM\_MAX** = `22`

Represents the size of the [Param](#enum-sliderjoint3d-param) enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **angular\_limit/damping** = `0.0` [🔗](#class-sliderjoint3d-property-angular-limit-damping)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of damping of the rotation when the limit is surpassed.

A lower damping value allows a rotation initiated by body A to travel to body B slower.

* * *

[float](class_float.md#class-float) **angular\_limit/lower\_angle** = `0.0` [🔗](#class-sliderjoint3d-property-angular-limit-lower-angle)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The lower limit of rotation in the slider.

* * *

[float](class_float.md#class-float) **angular\_limit/restitution** = `0.7` [🔗](#class-sliderjoint3d-property-angular-limit-restitution)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of restitution of the rotation when the limit is surpassed.

Does not affect damping.

* * *

[float](class_float.md#class-float) **angular\_limit/softness** = `1.0` [🔗](#class-sliderjoint3d-property-angular-limit-softness)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


A factor applied to the all rotation once the limit is surpassed.

Makes all rotation slower when between 0 and 1.

* * *

[float](class_float.md#class-float) **angular\_limit/upper\_angle** = `0.0` [🔗](#class-sliderjoint3d-property-angular-limit-upper-angle)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The upper limit of rotation in the slider.

* * *

[float](class_float.md#class-float) **angular\_motion/damping** = `1.0` [🔗](#class-sliderjoint3d-property-angular-motion-damping)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of damping of the rotation in the limits.

* * *

[float](class_float.md#class-float) **angular\_motion/restitution** = `0.7` [🔗](#class-sliderjoint3d-property-angular-motion-restitution)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of restitution of the rotation in the limits.

* * *

[float](class_float.md#class-float) **angular\_motion/softness** = `1.0` [🔗](#class-sliderjoint3d-property-angular-motion-softness)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


A factor applied to the all rotation in the limits.

* * *

[float](class_float.md#class-float) **angular\_ortho/damping** = `1.0` [🔗](#class-sliderjoint3d-property-angular-ortho-damping)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of damping of the rotation across axes orthogonal to the slider.

* * *

[float](class_float.md#class-float) **angular\_ortho/restitution** = `0.7` [🔗](#class-sliderjoint3d-property-angular-ortho-restitution)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of restitution of the rotation across axes orthogonal to the slider.

* * *

[float](class_float.md#class-float) **angular\_ortho/softness** = `1.0` [🔗](#class-sliderjoint3d-property-angular-ortho-softness)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


A factor applied to the all rotation across axes orthogonal to the slider.

* * *

[float](class_float.md#class-float) **linear\_limit/damping** = `1.0` [🔗](#class-sliderjoint3d-property-linear-limit-damping)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of damping that happens once the limit defined by [linear\_limit/lower\_distance](#class-sliderjoint3d-property-linear-limit-lower-distance) and [linear\_limit/upper\_distance](#class-sliderjoint3d-property-linear-limit-upper-distance) is surpassed.

* * *

[float](class_float.md#class-float) **linear\_limit/lower\_distance** = `-1.0` [🔗](#class-sliderjoint3d-property-linear-limit-lower-distance)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The minimum difference between the pivot points on their X axis before damping happens.

* * *

[float](class_float.md#class-float) **linear\_limit/restitution** = `0.7` [🔗](#class-sliderjoint3d-property-linear-limit-restitution)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of restitution once the limits are surpassed. The lower, the more velocity-energy gets lost.

* * *

[float](class_float.md#class-float) **linear\_limit/softness** = `1.0` [🔗](#class-sliderjoint3d-property-linear-limit-softness)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


A factor applied to the movement across the slider axis once the limits get surpassed. The lower, the slower the movement.

* * *

[float](class_float.md#class-float) **linear\_limit/upper\_distance** = `1.0` [🔗](#class-sliderjoint3d-property-linear-limit-upper-distance)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The maximum difference between the pivot points on their X axis before damping happens.

* * *

[float](class_float.md#class-float) **linear\_motion/damping** = `0.0` [🔗](#class-sliderjoint3d-property-linear-motion-damping)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of damping inside the slider limits.

* * *

[float](class_float.md#class-float) **linear\_motion/restitution** = `0.7` [🔗](#class-sliderjoint3d-property-linear-motion-restitution)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of restitution inside the slider limits.

* * *

[float](class_float.md#class-float) **linear\_motion/softness** = `1.0` [🔗](#class-sliderjoint3d-property-linear-motion-softness)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


A factor applied to the movement across the slider axis as long as the slider is in the limits. The lower, the slower the movement.

* * *

[float](class_float.md#class-float) **linear\_ortho/damping** = `1.0` [🔗](#class-sliderjoint3d-property-linear-ortho-damping)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of damping when movement is across axes orthogonal to the slider.

* * *

[float](class_float.md#class-float) **linear\_ortho/restitution** = `0.7` [🔗](#class-sliderjoint3d-property-linear-ortho-restitution)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


The amount of restitution when movement is across axes orthogonal to the slider.

* * *

[float](class_float.md#class-float) **linear\_ortho/softness** = `1.0` [🔗](#class-sliderjoint3d-property-linear-ortho-softness)

- void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const


A factor applied to the movement across axes orthogonal to the slider.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_param**(param: [Param](#enum-sliderjoint3d-param)) const [🔗](#class-sliderjoint3d-method-get-param)

Returns the value of the given parameter.

* * *

void **set\_param**(param: [Param](#enum-sliderjoint3d-param), value: [float](class_float.md#class-float)) [🔗](#class-sliderjoint3d-method-set-param)

Assigns `value` to the given parameter.

[Previous](class_slider.md "Slider") [Next](class_softbody3d.md "SoftBody3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_slider.md "Slider") [Next](class_softbody3d.md "SoftBody3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).