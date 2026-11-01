---
title: PinJoint2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_pinjoint2d.html
crawled_at: "2026-08-13T10:34:33+12:00"
content_hash: 6548dca02ed5674bc3b90c115f56105615df958f13c298b1cf29b94b6878f18d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PinJoint2D

* * *

# PinJoint2D

**Inherits:** [Joint2D](class_joint2d.md#class-joint2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A physics joint that attaches two 2D physics bodies at a single point, allowing them to freely rotate.

## Description

A physics joint that attaches two 2D physics bodies at a single point, allowing them to freely rotate. For example, a [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d) can be attached to a [StaticBody2D](class_staticbody2d.md#class-staticbody2d) to create a pendulum or a seesaw.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [angular\_limit\_enabled](#class-pinjoint2d-property-angular-limit-enabled) | `false` |
| [float](class_float.md#class-float) | [angular\_limit\_lower](#class-pinjoint2d-property-angular-limit-lower) | `0.0` |
| [float](class_float.md#class-float) | [angular\_limit\_upper](#class-pinjoint2d-property-angular-limit-upper) | `0.0` |
| [bool](class_bool.md#class-bool) | [motor\_enabled](#class-pinjoint2d-property-motor-enabled) | `false` |
| [float](class_float.md#class-float) | [motor\_target\_velocity](#class-pinjoint2d-property-motor-target-velocity) | `0.0` |
| [float](class_float.md#class-float) | [softness](#class-pinjoint2d-property-softness) | `0.0` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **angular\_limit\_enabled** = `false` [🔗](#class-pinjoint2d-property-angular-limit-enabled)

- void **set\_angular\_limit\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_angular\_limit\_enabled**()


If `true`, the pin maximum and minimum rotation, defined by [angular\_limit\_lower](#class-pinjoint2d-property-angular-limit-lower) and [angular\_limit\_upper](#class-pinjoint2d-property-angular-limit-upper) are applied.

* * *

[float](class_float.md#class-float) **angular\_limit\_lower** = `0.0` [🔗](#class-pinjoint2d-property-angular-limit-lower)

- void **set\_angular\_limit\_lower**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_angular\_limit\_lower**()


The minimum rotation. Only active if [angular\_limit\_enabled](#class-pinjoint2d-property-angular-limit-enabled) is `true`.

* * *

[float](class_float.md#class-float) **angular\_limit\_upper** = `0.0` [🔗](#class-pinjoint2d-property-angular-limit-upper)

- void **set\_angular\_limit\_upper**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_angular\_limit\_upper**()


The maximum rotation. Only active if [angular\_limit\_enabled](#class-pinjoint2d-property-angular-limit-enabled) is `true`.

* * *

[bool](class_bool.md#class-bool) **motor\_enabled** = `false` [🔗](#class-pinjoint2d-property-motor-enabled)

- void **set\_motor\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_motor\_enabled**()


When activated, a motor turns the pin.

* * *

[float](class_float.md#class-float) **motor\_target\_velocity** = `0.0` [🔗](#class-pinjoint2d-property-motor-target-velocity)

- void **set\_motor\_target\_velocity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_motor\_target\_velocity**()


Target speed for the motor. In radians per second.

* * *

[float](class_float.md#class-float) **softness** = `0.0` [🔗](#class-pinjoint2d-property-softness)

- void **set\_softness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_softness**()


The higher this value, the more the bond to the pinned partner can flex.

[Previous](class_physicsbody3d.md "PhysicsBody3D") [Next](class_pinjoint3d.md "PinJoint3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsbody3d.md "PhysicsBody3D") [Next](class_pinjoint3d.md "PinJoint3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).