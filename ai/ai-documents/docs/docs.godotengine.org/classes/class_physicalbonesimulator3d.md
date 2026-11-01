---
title: PhysicalBoneSimulator3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicalbonesimulator3d.html
crawled_at: "2026-08-13T10:18:33+12:00"
content_hash: b0992b9a313995b9871415318ee75513d73c4dbae6e2a02ee9084301b04c80ac
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicalBoneSimulator3D

* * *

# PhysicalBoneSimulator3D

**Inherits:** [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Node that can be the parent of [PhysicalBone3D](class_physicalbone3d.md#class-physicalbone3d) and can apply the simulation results to [Skeleton3D](class_skeleton3d.md#class-skeleton3d).

## Description

Node that can be the parent of [PhysicalBone3D](class_physicalbone3d.md#class-physicalbone3d) and can apply the simulation results to [Skeleton3D](class_skeleton3d.md#class-skeleton3d).

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [is\_simulating\_physics](#class-physicalbonesimulator3d-method-is-simulating-physics)() const |
| void | [physical\_bones\_add\_collision\_exception](#class-physicalbonesimulator3d-method-physical-bones-add-collision-exception)(exception: [RID](class_rid.md#class-rid)) |
| void | [physical\_bones\_remove\_collision\_exception](#class-physicalbonesimulator3d-method-physical-bones-remove-collision-exception)(exception: [RID](class_rid.md#class-rid)) |
| void | [physical\_bones\_start\_simulation](#class-physicalbonesimulator3d-method-physical-bones-start-simulation)(bones: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) |
| void | [physical\_bones\_stop\_simulation](#class-physicalbonesimulator3d-method-physical-bones-stop-simulation)() |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **is\_simulating\_physics**() const [🔗](#class-physicalbonesimulator3d-method-is-simulating-physics)

Returns a boolean that indicates whether the **PhysicalBoneSimulator3D** is running and simulating.

* * *

void **physical\_bones\_add\_collision\_exception**(exception: [RID](class_rid.md#class-rid)) [🔗](#class-physicalbonesimulator3d-method-physical-bones-add-collision-exception)

Adds a collision exception to the physical bone.

Works just like the [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) node.

* * *

void **physical\_bones\_remove\_collision\_exception**(exception: [RID](class_rid.md#class-rid)) [🔗](#class-physicalbonesimulator3d-method-physical-bones-remove-collision-exception)

Removes a collision exception to the physical bone.

Works just like the [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) node.

* * *

void **physical\_bones\_start\_simulation**(bones: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) [🔗](#class-physicalbonesimulator3d-method-physical-bones-start-simulation)

Tells the [PhysicalBone3D](class_physicalbone3d.md#class-physicalbone3d) nodes in the Skeleton to start simulating and reacting to the physics world.

Optionally, a list of bone names can be passed-in, allowing only the passed-in bones to be simulated.

* * *

void **physical\_bones\_stop\_simulation**() [🔗](#class-physicalbonesimulator3d-method-physical-bones-stop-simulation)

Tells the [PhysicalBone3D](class_physicalbone3d.md#class-physicalbone3d) nodes in the Skeleton to stop simulating.

[Previous](class_physicalbone3d.md "PhysicalBone3D") [Next](class_physicsbody2d.md "PhysicsBody2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicalbone3d.md "PhysicalBone3D") [Next](class_physicsbody2d.md "PhysicsBody2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).