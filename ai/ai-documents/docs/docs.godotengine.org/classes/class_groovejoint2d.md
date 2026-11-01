---
title: GrooveJoint2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_groovejoint2d.html
crawled_at: "2026-08-13T10:24:14+12:00"
content_hash: 0052511e2327706628b93ab856a7113b2f38586d528e0634b51bc9f38d4e21c9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GrooveJoint2D

* * *

# GrooveJoint2D

**Inherits:** [Joint2D](class_joint2d.md#class-joint2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A physics joint that restricts the movement of two 2D physics bodies to a fixed axis.

## Description

A physics joint that restricts the movement of two 2D physics bodies to a fixed axis. For example, a [StaticBody2D](class_staticbody2d.md#class-staticbody2d) representing a piston base can be attached to a [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d) representing the piston head, moving up and down.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [initial\_offset](#class-groovejoint2d-property-initial-offset) | `25.0` |
| [float](class_float.md#class-float) | [length](#class-groovejoint2d-property-length) | `50.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **initial\_offset** = `25.0` [🔗](#class-groovejoint2d-property-initial-offset)

- void **set\_initial\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_initial\_offset**()


The body B's initial anchor position defined by the joint's origin and a local offset [initial\_offset](#class-groovejoint2d-property-initial-offset) along the joint's Y axis (along the groove).

* * *

[float](class_float.md#class-float) **length** = `50.0` [🔗](#class-groovejoint2d-property-length)

- void **set\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_length**()


The groove's length. The groove is from the joint's origin towards [length](#class-groovejoint2d-property-length) along the joint's local Y axis.

[Previous](class_gridmapeditorplugin.md "GridMapEditorPlugin") [Next](class_hboxcontainer.md "HBoxContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gridmapeditorplugin.md "GridMapEditorPlugin") [Next](class_hboxcontainer.md "HBoxContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).