---
title: Joint2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_joint2d.html
crawled_at: "2026-08-13T10:34:36+12:00"
content_hash: b6e0f93b3d836377a2044627095cedf61fa3dfbacc53f58019bdd9805b1fbeb8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Joint2D

* * *

# Joint2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [DampedSpringJoint2D](class_dampedspringjoint2d.md#class-dampedspringjoint2d), [GrooveJoint2D](class_groovejoint2d.md#class-groovejoint2d), [PinJoint2D](class_pinjoint2d.md#class-pinjoint2d)

Abstract base class for all 2D physics joints.

## Description

Abstract base class for all joints in 2D physics. 2D joints bind together two physics bodies ( [node\_a](#class-joint2d-property-node-a) and [node\_b](#class-joint2d-property-node-b)) and apply a constraint.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [bias](#class-joint2d-property-bias) | `0.0` |
| [bool](class_bool.md#class-bool) | [disable\_collision](#class-joint2d-property-disable-collision) | `true` |
| [NodePath](class_nodepath.md#class-nodepath) | [node\_a](#class-joint2d-property-node-a) | `NodePath("")` |
| [NodePath](class_nodepath.md#class-nodepath) | [node\_b](#class-joint2d-property-node-b) | `NodePath("")` |

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-joint2d-method-get-rid)() const |

* * *

## Property Descriptions

[float](class_float.md#class-float) **bias** = `0.0` [🔗](#class-joint2d-property-bias)

- void **set\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bias**()


When [node\_a](#class-joint2d-property-node-a) and [node\_b](#class-joint2d-property-node-b) move in different directions the [bias](#class-joint2d-property-bias) controls how fast the joint pulls them back to their original position. The lower the [bias](#class-joint2d-property-bias) the more the two bodies can pull on the joint.

When set to `0`, the default value from [ProjectSettings.physics/2d/solver/default\_constraint\_bias](class_projectsettings.md#class-projectsettings-property-physics-2d-solver-default-constraint-bias) is used.

* * *

[bool](class_bool.md#class-bool) **disable\_collision** = `true` [🔗](#class-joint2d-property-disable-collision)

- void **set\_exclude\_nodes\_from\_collision**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_exclude\_nodes\_from\_collision**()


If `true`, the two bodies bound together do not collide with each other.

* * *

[NodePath](class_nodepath.md#class-nodepath) **node\_a** = `NodePath("")` [🔗](#class-joint2d-property-node-a)

- void **set\_node\_a**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_node\_a**()


Path to the first body (A) attached to the joint. The node must inherit [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d).

* * *

[NodePath](class_nodepath.md#class-nodepath) **node\_b** = `NodePath("")` [🔗](#class-joint2d-property-node-b)

- void **set\_node\_b**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_node\_b**()


Path to the second body (B) attached to the joint. The node must inherit [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d).

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-joint2d-method-get-rid)

Returns the joint's internal [RID](class_rid.md#class-rid) from the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d).

[Previous](class_itemlist.md "ItemList") [Next](class_joint3d.md "Joint3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_itemlist.md "ItemList") [Next](class_joint3d.md "Joint3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).