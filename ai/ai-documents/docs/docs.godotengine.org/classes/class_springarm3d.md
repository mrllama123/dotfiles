---
title: SpringArm3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_springarm3d.html
crawled_at: "2026-08-13T10:38:21+12:00"
content_hash: 384b7c4c21f2a75693c284acaf3e5d017d78654322a33e534eec95735154acbf
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SpringArm3D

* * *

# SpringArm3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 3D raycast that dynamically moves its children near the collision point.

## Description

**SpringArm3D** casts a ray or a shape along its Z axis and moves all its direct children to the collision point, with an optional margin. This is useful for 3rd person cameras that move closer to the player when inside a tight space (you may need to exclude the player's collider from the **SpringArm3D**'s collision check).

## Tutorials

- [Third-person camera with spring arm](../tutorials/3d/spring_arm.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [collision\_mask](#class-springarm3d-property-collision-mask) | `1` |
| [float](class_float.md#class-float) | [margin](#class-springarm3d-property-margin) | `0.01` |
| [Shape3D](class_shape3d.md#class-shape3d) | [shape](#class-springarm3d-property-shape) |  |
| [float](class_float.md#class-float) | [spring\_length](#class-springarm3d-property-spring-length) | `1.0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_excluded\_object](#class-springarm3d-method-add-excluded-object)(RID: [RID](class_rid.md#class-rid)) |
| void | [clear\_excluded\_objects](#class-springarm3d-method-clear-excluded-objects)() |
| [float](class_float.md#class-float) | [get\_hit\_length](#class-springarm3d-method-get-hit-length)() |
| [bool](class_bool.md#class-bool) | [remove\_excluded\_object](#class-springarm3d-method-remove-excluded-object)(RID: [RID](class_rid.md#class-rid)) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **collision\_mask** = `1` [🔗](#class-springarm3d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The layers against which the collision check shall be done. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[float](class_float.md#class-float) **margin** = `0.01` [🔗](#class-springarm3d-property-margin)

- void **set\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_margin**()


When the collision check is made, a candidate length for the SpringArm3D is given.

The margin is then subtracted to this length and the translation is applied to the child objects of the SpringArm3D.

This margin is useful for when the SpringArm3D has a [Camera3D](class_camera3d.md#class-camera3d) as a child node: without the margin, the [Camera3D](class_camera3d.md#class-camera3d) would be placed on the exact point of collision, while with the margin the [Camera3D](class_camera3d.md#class-camera3d) would be placed close to the point of collision.

* * *

[Shape3D](class_shape3d.md#class-shape3d) **shape** [🔗](#class-springarm3d-property-shape)

- void **set\_shape**(value: [Shape3D](class_shape3d.md#class-shape3d))

- [Shape3D](class_shape3d.md#class-shape3d) **get\_shape**()


The [Shape3D](class_shape3d.md#class-shape3d) to use for the SpringArm3D.

When the shape is set, the SpringArm3D will cast the [Shape3D](class_shape3d.md#class-shape3d) on its z axis instead of performing a ray cast.

* * *

[float](class_float.md#class-float) **spring\_length** = `1.0` [🔗](#class-springarm3d-property-spring-length)

- void **set\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_length**()


The maximum extent of the SpringArm3D. This is used as a length for both the ray and the shape cast used internally to calculate the desired position of the SpringArm3D's child nodes.

To know more about how to perform a shape cast or a ray cast, please consult the [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) documentation.

* * *

## Method Descriptions

void **add\_excluded\_object**(RID: [RID](class_rid.md#class-rid)) [🔗](#class-springarm3d-method-add-excluded-object)

Adds the [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) object with the given [RID](class_rid.md#class-rid) to the list of [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) objects excluded from the collision check.

* * *

void **clear\_excluded\_objects**() [🔗](#class-springarm3d-method-clear-excluded-objects)

Clears the list of [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) objects excluded from the collision check.

* * *

[float](class_float.md#class-float) **get\_hit\_length**() [🔗](#class-springarm3d-method-get-hit-length)

Returns the spring arm's current length.

* * *

[bool](class_bool.md#class-bool) **remove\_excluded\_object**(RID: [RID](class_rid.md#class-rid)) [🔗](#class-springarm3d-method-remove-excluded-object)

Removes the given [RID](class_rid.md#class-rid) from the list of [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) objects excluded from the collision check.

[Previous](class_spotlight3d.md "SpotLight3D") [Next](class_springbonecollision3d.md "SpringBoneCollision3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_spotlight3d.md "SpotLight3D") [Next](class_springbonecollision3d.md "SpringBoneCollision3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).