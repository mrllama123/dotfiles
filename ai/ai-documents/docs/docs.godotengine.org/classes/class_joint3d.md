---
title: Joint3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_joint3d.html
crawled_at: "2026-08-13T10:42:15+12:00"
content_hash: 1caca39328466624683f7fcd972e9ca4c583c52f865ff465d19dece3ffa89455
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Joint3D

* * *

# Joint3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [ConeTwistJoint3D](class_conetwistjoint3d.md#class-conetwistjoint3d), [Generic6DOFJoint3D](class_generic6dofjoint3d.md#class-generic6dofjoint3d), [HingeJoint3D](class_hingejoint3d.md#class-hingejoint3d), [PinJoint3D](class_pinjoint3d.md#class-pinjoint3d), [SliderJoint3D](class_sliderjoint3d.md#class-sliderjoint3d)

Abstract base class for all 3D physics joints.

## Description

Abstract base class for all joints in 3D physics. 3D joints bind together two physics bodies ( [node\_a](#class-joint3d-property-node-a) and [node\_b](#class-joint3d-property-node-b)) and apply a constraint. If only one body is defined, it is attached to a fixed [StaticBody3D](class_staticbody3d.md#class-staticbody3d) without collision shapes.

## Tutorials

- [3D Truck Town Demo](https://godotengine.org/asset-library/asset/2752)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [exclude\_nodes\_from\_collision](#class-joint3d-property-exclude-nodes-from-collision) | `true` |
| [NodePath](class_nodepath.md#class-nodepath) | [node\_a](#class-joint3d-property-node-a) | `NodePath("")` |
| [NodePath](class_nodepath.md#class-nodepath) | [node\_b](#class-joint3d-property-node-b) | `NodePath("")` |
| [int](class_int.md#class-int) | [solver\_priority](#class-joint3d-property-solver-priority) | `1` |

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-joint3d-method-get-rid)() const |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **exclude\_nodes\_from\_collision** = `true` [🔗](#class-joint3d-property-exclude-nodes-from-collision)

- void **set\_exclude\_nodes\_from\_collision**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_exclude\_nodes\_from\_collision**()


If `true`, the two bodies bound together do not collide with each other.

* * *

[NodePath](class_nodepath.md#class-nodepath) **node\_a** = `NodePath("")` [🔗](#class-joint3d-property-node-a)

- void **set\_node\_a**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_node\_a**()


Path to the first node (A) attached to the joint. The node must inherit [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d).

If left empty and [node\_b](#class-joint3d-property-node-b) is set, the body is attached to a fixed [StaticBody3D](class_staticbody3d.md#class-staticbody3d) without collision shapes.

* * *

[NodePath](class_nodepath.md#class-nodepath) **node\_b** = `NodePath("")` [🔗](#class-joint3d-property-node-b)

- void **set\_node\_b**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_node\_b**()


Path to the second node (B) attached to the joint. The node must inherit [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d).

If left empty and [node\_a](#class-joint3d-property-node-a) is set, the body is attached to a fixed [StaticBody3D](class_staticbody3d.md#class-staticbody3d) without collision shapes.

* * *

[int](class_int.md#class-int) **solver\_priority** = `1` [🔗](#class-joint3d-property-solver-priority)

- void **set\_solver\_priority**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_solver\_priority**()


The priority used to define which solver is executed first for multiple joints. The lower the value, the higher the priority.

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-joint3d-method-get-rid)

Returns the joint's internal [RID](class_rid.md#class-rid) from the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d).

[Previous](class_joint2d.md "Joint2D") [Next](class_label.md "Label")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_joint2d.md "Joint2D") [Next](class_label.md "Label")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).