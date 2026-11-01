---
title: PinJoint3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_pinjoint3d.html
crawled_at: "2026-08-13T10:37:46+12:00"
content_hash: 5ccf629ed6353ce9149c5d867b6a07efac1de14e90b0b07d88666cf1dabcfbee
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PinJoint3D

* * *

# PinJoint3D

**Inherits:** [Joint3D](class_joint3d.md#class-joint3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A physics joint that attaches two 3D physics bodies at a single point, allowing them to freely rotate.

## Description

A physics joint that attaches two 3D physics bodies at a single point, allowing them to freely rotate. For example, a [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) can be attached to a [StaticBody3D](class_staticbody3d.md#class-staticbody3d) to create a pendulum or a seesaw.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [params/bias](#class-pinjoint3d-property-params-bias) | `0.3` |
| [float](class_float.md#class-float) | [params/damping](#class-pinjoint3d-property-params-damping) | `1.0` |
| [float](class_float.md#class-float) | [params/impulse\_clamp](#class-pinjoint3d-property-params-impulse-clamp) | `0.0` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_param](#class-pinjoint3d-method-get-param)(param: [Param](#enum-pinjoint3d-param)) const |
| void | [set\_param](#class-pinjoint3d-method-set-param)(param: [Param](#enum-pinjoint3d-param), value: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **Param**: [🔗](#enum-pinjoint3d-param)

[Param](#enum-pinjoint3d-param) **PARAM\_BIAS** = `0`

The force with which the pinned objects stay in positional relation to each other. The higher, the stronger.

[Param](#enum-pinjoint3d-param) **PARAM\_DAMPING** = `1`

The force with which the pinned objects stay in velocity relation to each other. The higher, the stronger.

[Param](#enum-pinjoint3d-param) **PARAM\_IMPULSE\_CLAMP** = `2`

If above 0, this value is the maximum value for an impulse that this Joint3D produces.

* * *

## Property Descriptions

[float](class_float.md#class-float) **params/bias** = `0.3` [🔗](#class-pinjoint3d-property-params-bias)

- void **set\_param**(param: [Param](#enum-pinjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-pinjoint3d-param)) const


The force with which the pinned objects stay in positional relation to each other. The higher, the stronger.

* * *

[float](class_float.md#class-float) **params/damping** = `1.0` [🔗](#class-pinjoint3d-property-params-damping)

- void **set\_param**(param: [Param](#enum-pinjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-pinjoint3d-param)) const


The force with which the pinned objects stay in velocity relation to each other. The higher, the stronger.

* * *

[float](class_float.md#class-float) **params/impulse\_clamp** = `0.0` [🔗](#class-pinjoint3d-property-params-impulse-clamp)

- void **set\_param**(param: [Param](#enum-pinjoint3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-pinjoint3d-param)) const


If above 0, this value is the maximum value for an impulse that this Joint3D produces.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_param**(param: [Param](#enum-pinjoint3d-param)) const [🔗](#class-pinjoint3d-method-get-param)

Returns the value of the specified parameter.

* * *

void **set\_param**(param: [Param](#enum-pinjoint3d-param), value: [float](class_float.md#class-float)) [🔗](#class-pinjoint3d-method-set-param)

Sets the value of the specified parameter.

[Previous](class_pinjoint2d.md "PinJoint2D") [Next](class_pointlight2d.md "PointLight2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_pinjoint2d.md "PinJoint2D") [Next](class_pointlight2d.md "PointLight2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).