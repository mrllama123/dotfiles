---
title: StaticBody3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_staticbody3d.html
crawled_at: "2026-08-13T10:39:49+12:00"
content_hash: a802278cbe67e22086556c5d14ca9425c79ef3ed0c69974672592c2e7682e029
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StaticBody3D

* * *

# StaticBody3D

**Inherits:** [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) **<** [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [AnimatableBody3D](class_animatablebody3d.md#class-animatablebody3d)

A 3D physics body that can't be moved by external forces. When moved manually, it doesn't affect other bodies in its path.

## Description

A static 3D physics body. It can't be moved by external forces or contacts, but can be moved manually by other means such as code, [AnimationMixer](class_animationmixer.md#class-animationmixer) s (with [AnimationMixer.callback\_mode\_process](class_animationmixer.md#class-animationmixer-property-callback-mode-process) set to [AnimationMixer.ANIMATION\_CALLBACK\_MODE\_PROCESS\_PHYSICS](class_animationmixer.md#class-animationmixer-constant-animation-callback-mode-process-physics)), and [RemoteTransform3D](class_remotetransform3d.md#class-remotetransform3d).

When **StaticBody3D** is moved, it is teleported to its new position without affecting other physics bodies in its path. If this is not desired, use [AnimatableBody3D](class_animatablebody3d.md#class-animatablebody3d) instead.

**StaticBody3D** is useful for completely static objects like floors and walls, as well as moving surfaces like conveyor belts and circular revolving platforms (by using [constant\_linear\_velocity](#class-staticbody3d-property-constant-linear-velocity) and [constant\_angular\_velocity](#class-staticbody3d-property-constant-angular-velocity)).

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Troubleshooting physics issues](../tutorials/physics/troubleshooting_physics_issues.md)

- [3D Physics Tests Demo](https://godotengine.org/asset-library/asset/2747)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [constant\_angular\_velocity](#class-staticbody3d-property-constant-angular-velocity) | `Vector3(0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [constant\_linear\_velocity](#class-staticbody3d-property-constant-linear-velocity) | `Vector3(0, 0, 0)` |
| [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) | [physics\_material\_override](#class-staticbody3d-property-physics-material-override) |  |

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **constant\_angular\_velocity** = `Vector3(0, 0, 0)` [🔗](#class-staticbody3d-property-constant-angular-velocity)

- void **set\_constant\_angular\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_constant\_angular\_velocity**()


The body's constant angular velocity. This does not rotate the body, but affects touching bodies, as if it were rotating.

* * *

[Vector3](class_vector3.md#class-vector3) **constant\_linear\_velocity** = `Vector3(0, 0, 0)` [🔗](#class-staticbody3d-property-constant-linear-velocity)

- void **set\_constant\_linear\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_constant\_linear\_velocity**()


The body's constant linear velocity. This does not move the body, but affects touching bodies, as if it were moving.

* * *

[PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) **physics\_material\_override** [🔗](#class-staticbody3d-property-physics-material-override)

- void **set\_physics\_material\_override**(value: [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial))

- [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) **get\_physics\_material\_override**()


The physics material override for the body.

If a material is assigned to this property, it will be used instead of any other physics material, such as an inherited one.

[Previous](class_staticbody2d.md "StaticBody2D") [Next](class_statusindicator.md "StatusIndicator")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_staticbody2d.md "StaticBody2D") [Next](class_statusindicator.md "StatusIndicator")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).