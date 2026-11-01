---
title: DampedSpringJoint2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_dampedspringjoint2d.html
crawled_at: "2026-08-13T10:24:54+12:00"
content_hash: 9260ab275f51da597b419695430e46b8d8c24c55a10cfe90ac654f9bad3510e9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - DampedSpringJoint2D

* * *

# DampedSpringJoint2D

**Inherits:** [Joint2D](class_joint2d.md#class-joint2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A physics joint that connects two 2D physics bodies with a spring-like force.

## Description

A physics joint that connects two 2D physics bodies with a spring-like force. This behaves like a spring that always wants to stretch to a given length.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [damping](#class-dampedspringjoint2d-property-damping) | `1.0` |
| [float](class_float.md#class-float) | [length](#class-dampedspringjoint2d-property-length) | `50.0` |
| [float](class_float.md#class-float) | [rest\_length](#class-dampedspringjoint2d-property-rest-length) | `0.0` |
| [float](class_float.md#class-float) | [stiffness](#class-dampedspringjoint2d-property-stiffness) | `20.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **damping** = `1.0` [🔗](#class-dampedspringjoint2d-property-damping)

- void **set\_damping**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_damping**()


The spring joint's damping ratio. A value between `0` and `1`. When the two bodies move into different directions the system tries to align them to the spring axis again. A high [damping](#class-dampedspringjoint2d-property-damping) value forces the attached bodies to align faster.

* * *

[float](class_float.md#class-float) **length** = `50.0` [🔗](#class-dampedspringjoint2d-property-length)

- void **set\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_length**()


The spring joint's maximum length. The two attached bodies cannot stretch it past this value.

* * *

[float](class_float.md#class-float) **rest\_length** = `0.0` [🔗](#class-dampedspringjoint2d-property-rest-length)

- void **set\_rest\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rest\_length**()


When the bodies attached to the spring joint move they stretch or squash it. The joint always tries to resize towards this length.

* * *

[float](class_float.md#class-float) **stiffness** = `20.0` [🔗](#class-dampedspringjoint2d-property-stiffness)

- void **set\_stiffness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_stiffness**()


The higher the value, the less the bodies attached to the joint will deform it. The joint applies an opposing force to the bodies, the product of the stiffness multiplied by the size difference from its resting length.

[Previous](class_csgtorus3d.md "CSGTorus3D") [Next](class_decal.md "Decal")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_csgtorus3d.md "CSGTorus3D") [Next](class_decal.md "Decal")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).