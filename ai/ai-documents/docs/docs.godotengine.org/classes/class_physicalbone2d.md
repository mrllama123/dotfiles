---
title: PhysicalBone2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicalbone2d.html
crawled_at: "2026-08-13T10:31:42+12:00"
content_hash: 26bdb721506106c2bc4a164bd3912ec784abd736e2a6f4eb92636b918faab691
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicalBone2D

* * *

# PhysicalBone2D

**Inherits:** [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d) **<** [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) **<** [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d)-derived node used to make [Bone2D](class_bone2d.md#class-bone2d) s in a [Skeleton2D](class_skeleton2d.md#class-skeleton2d) react to physics.

## Description

The **PhysicalBone2D** node is a [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d)-based node that can be used to make [Bone2D](class_bone2d.md#class-bone2d) s in a [Skeleton2D](class_skeleton2d.md#class-skeleton2d) react to physics.

**Note:** To make the [Bone2D](class_bone2d.md#class-bone2d) s visually follow the **PhysicalBone2D** node, use a [SkeletonModification2DPhysicalBones](class_skeletonmodification2dphysicalbones.md#class-skeletonmodification2dphysicalbones) modification on the [Skeleton2D](class_skeleton2d.md#class-skeleton2d) parent.

**Note:** The **PhysicalBone2D** node does not automatically create a [Joint2D](class_joint2d.md#class-joint2d) node to keep **PhysicalBone2D** nodes together. They must be created manually. For most cases, you want to use a [PinJoint2D](class_pinjoint2d.md#class-pinjoint2d) node. The **PhysicalBone2D** node will automatically configure the [Joint2D](class_joint2d.md#class-joint2d) node once it's been added as a child node.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [auto\_configure\_joint](#class-physicalbone2d-property-auto-configure-joint) | `true` |
| [int](class_int.md#class-int) | [bone2d\_index](#class-physicalbone2d-property-bone2d-index) | `-1` |
| [NodePath](class_nodepath.md#class-nodepath) | [bone2d\_nodepath](#class-physicalbone2d-property-bone2d-nodepath) | `NodePath("")` |
| [bool](class_bool.md#class-bool) | [follow\_bone\_when\_simulating](#class-physicalbone2d-property-follow-bone-when-simulating) | `false` |
| [bool](class_bool.md#class-bool) | [simulate\_physics](#class-physicalbone2d-property-simulate-physics) | `false` |

## Methods

|     |     |
| --- | --- |
| [Joint2D](class_joint2d.md#class-joint2d) | [get\_joint](#class-physicalbone2d-method-get-joint)() const |
| [bool](class_bool.md#class-bool) | [is\_simulating\_physics](#class-physicalbone2d-method-is-simulating-physics)() const |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **auto\_configure\_joint** = `true` [🔗](#class-physicalbone2d-property-auto-configure-joint)

- void **set\_auto\_configure\_joint**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_auto\_configure\_joint**()


If `true`, the **PhysicalBone2D** will automatically configure the first [Joint2D](class_joint2d.md#class-joint2d) child node. The automatic configuration is limited to setting up the node properties and positioning the [Joint2D](class_joint2d.md#class-joint2d).

* * *

[int](class_int.md#class-int) **bone2d\_index** = `-1` [🔗](#class-physicalbone2d-property-bone2d-index)

- void **set\_bone2d\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bone2d\_index**()


The index of the [Bone2D](class_bone2d.md#class-bone2d) that this **PhysicalBone2D** should simulate.

* * *

[NodePath](class_nodepath.md#class-nodepath) **bone2d\_nodepath** = `NodePath("")` [🔗](#class-physicalbone2d-property-bone2d-nodepath)

- void **set\_bone2d\_nodepath**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_bone2d\_nodepath**()


The [NodePath](class_nodepath.md#class-nodepath) to the [Bone2D](class_bone2d.md#class-bone2d) that this **PhysicalBone2D** should simulate.

* * *

[bool](class_bool.md#class-bool) **follow\_bone\_when\_simulating** = `false` [🔗](#class-physicalbone2d-property-follow-bone-when-simulating)

- void **set\_follow\_bone\_when\_simulating**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_follow\_bone\_when\_simulating**()


If `true`, the **PhysicalBone2D** will keep the transform of the bone it is bound to when simulating physics.

* * *

[bool](class_bool.md#class-bool) **simulate\_physics** = `false` [🔗](#class-physicalbone2d-property-simulate-physics)

- void **set\_simulate\_physics**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_simulate\_physics**()


If `true`, the **PhysicalBone2D** will start simulating using physics. If `false`, the **PhysicalBone2D** will follow the transform of the [Bone2D](class_bone2d.md#class-bone2d) node.

**Note:** To have the [Bone2D](class_bone2d.md#class-bone2d) s visually follow the **PhysicalBone2D**, use a [SkeletonModification2DPhysicalBones](class_skeletonmodification2dphysicalbones.md#class-skeletonmodification2dphysicalbones) modification on the [Skeleton2D](class_skeleton2d.md#class-skeleton2d) node with the [Bone2D](class_bone2d.md#class-bone2d) nodes.

* * *

## Method Descriptions

[Joint2D](class_joint2d.md#class-joint2d) **get\_joint**() const [🔗](#class-physicalbone2d-method-get-joint)

Returns the first [Joint2D](class_joint2d.md#class-joint2d) child node, if one exists. This is mainly a helper function to make it easier to get the [Joint2D](class_joint2d.md#class-joint2d) that the **PhysicalBone2D** is autoconfiguring.

* * *

[bool](class_bool.md#class-bool) **is\_simulating\_physics**() const [🔗](#class-physicalbone2d-method-is-simulating-physics)

Returns a boolean that indicates whether the **PhysicalBone2D** is running and simulating using the Godot 2D physics engine. When `true`, the PhysicalBone2D node is using physics.

[Previous](class_pathfollow3d.md "PathFollow3D") [Next](class_physicalbone3d.md "PhysicalBone3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_pathfollow3d.md "PathFollow3D") [Next](class_physicalbone3d.md "PhysicalBone3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).