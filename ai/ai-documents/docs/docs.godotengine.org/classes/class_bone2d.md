---
title: Bone2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_bone2d.html
crawled_at: "2026-08-13T10:29:35+12:00"
content_hash: 3088a7a7b691cada6ea60b95ed7dc140f6ee3e25ece3e6731d462d26458693bf
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Bone2D

* * *

# Bone2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A joint used with [Skeleton2D](class_skeleton2d.md#class-skeleton2d) to control and animate other nodes.

## Description

A hierarchy of **Bone2D** s can be bound to a [Skeleton2D](class_skeleton2d.md#class-skeleton2d) to control and animate other [Node2D](class_node2d.md#class-node2d) nodes.

You can use **Bone2D** and [Skeleton2D](class_skeleton2d.md#class-skeleton2d) nodes to animate 2D meshes created with the [Polygon2D](class_polygon2d.md#class-polygon2d) UV editor.

Each bone has a [rest](#class-bone2d-property-rest) transform that you can reset to with [apply\_rest()](#class-bone2d-method-apply-rest). These rest poses are relative to the bone's parent.

If in the editor, you can set the rest pose of an entire skeleton using a menu option, from the code, you need to iterate over the bones to set their individual rest poses.

## Properties

|     |     |     |
| --- | --- | --- |
| [Transform2D](class_transform2d.md#class-transform2d) | [rest](#class-bone2d-property-rest) | `Transform2D(0, 0, 0, 0, 0, 0)` |

## Methods

|     |     |
| --- | --- |
| void | [apply\_rest](#class-bone2d-method-apply-rest)() |
| [bool](class_bool.md#class-bool) | [get\_autocalculate\_length\_and\_angle](#class-bone2d-method-get-autocalculate-length-and-angle)() const |
| [float](class_float.md#class-float) | [get\_bone\_angle](#class-bone2d-method-get-bone-angle)() const |
| [int](class_int.md#class-int) | [get\_index\_in\_skeleton](#class-bone2d-method-get-index-in-skeleton)() const |
| [float](class_float.md#class-float) | [get\_length](#class-bone2d-method-get-length)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_skeleton\_rest](#class-bone2d-method-get-skeleton-rest)() const |
| void | [set\_autocalculate\_length\_and\_angle](#class-bone2d-method-set-autocalculate-length-and-angle)(auto\_calculate: [bool](class_bool.md#class-bool)) |
| void | [set\_bone\_angle](#class-bone2d-method-set-bone-angle)(angle: [float](class_float.md#class-float)) |
| void | [set\_length](#class-bone2d-method-set-length)(length: [float](class_float.md#class-float)) |

* * *

## Property Descriptions

[Transform2D](class_transform2d.md#class-transform2d) **rest** = `Transform2D(0, 0, 0, 0, 0, 0)` [🔗](#class-bone2d-property-rest)

- void **set\_rest**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_rest**()


Rest transform of the bone. You can reset the node's transforms to this value using [apply\_rest()](#class-bone2d-method-apply-rest).

* * *

## Method Descriptions

void **apply\_rest**() [🔗](#class-bone2d-method-apply-rest)

Resets the bone to the rest pose. This is equivalent to setting [Node2D.transform](class_node2d.md#class-node2d-property-transform) to [rest](#class-bone2d-property-rest).

* * *

[bool](class_bool.md#class-bool) **get\_autocalculate\_length\_and\_angle**() const [🔗](#class-bone2d-method-get-autocalculate-length-and-angle)

Returns whether this **Bone2D** is going to autocalculate its length and bone angle using its first **Bone2D** child node, if one exists. If there are no **Bone2D** children, then it cannot autocalculate these values and will print a warning.

* * *

[float](class_float.md#class-float) **get\_bone\_angle**() const [🔗](#class-bone2d-method-get-bone-angle)

Returns the angle of the bone in the **Bone2D**.

**Note:** This is different from the **Bone2D**'s rotation. The bone's angle is the rotation of the bone shown by the gizmo, which is unaffected by the **Bone2D**'s [Node2D.transform](class_node2d.md#class-node2d-property-transform).

* * *

[int](class_int.md#class-int) **get\_index\_in\_skeleton**() const [🔗](#class-bone2d-method-get-index-in-skeleton)

Returns the node's index as part of the entire skeleton. See [Skeleton2D](class_skeleton2d.md#class-skeleton2d).

* * *

[float](class_float.md#class-float) **get\_length**() const [🔗](#class-bone2d-method-get-length)

Returns the length of the bone in the **Bone2D** node.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_skeleton\_rest**() const [🔗](#class-bone2d-method-get-skeleton-rest)

Returns the node's [rest](#class-bone2d-property-rest) [Transform2D](class_transform2d.md#class-transform2d) if it doesn't have a parent, or its rest pose relative to its parent.

* * *

void **set\_autocalculate\_length\_and\_angle**(auto\_calculate: [bool](class_bool.md#class-bool)) [🔗](#class-bone2d-method-set-autocalculate-length-and-angle)

When set to `true`, the **Bone2D** node will attempt to automatically calculate the bone angle and length using the first child **Bone2D** node, if one exists. If none exist, the **Bone2D** cannot automatically calculate these values and will print a warning.

* * *

void **set\_bone\_angle**(angle: [float](class_float.md#class-float)) [🔗](#class-bone2d-method-set-bone-angle)

Sets the bone angle for the **Bone2D**. This is typically set to the rotation from the **Bone2D** to a child **Bone2D** node.

**Note:** This is different from the **Bone2D**'s rotation. The bone's angle is the rotation of the bone shown by the gizmo, which is unaffected by the **Bone2D**'s [Node2D.transform](class_node2d.md#class-node2d-property-transform).

* * *

void **set\_length**(length: [float](class_float.md#class-float)) [🔗](#class-bone2d-method-set-length)

Sets the length of the bone in the **Bone2D**.

[Previous](class_basebutton.md "BaseButton") [Next](class_boneattachment3d.md "BoneAttachment3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_basebutton.md "BaseButton") [Next](class_boneattachment3d.md "BoneAttachment3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).