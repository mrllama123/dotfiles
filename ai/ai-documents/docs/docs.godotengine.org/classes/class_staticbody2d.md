---
title: StaticBody2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_staticbody2d.html
crawled_at: "2026-08-13T10:41:38+12:00"
content_hash: e654ab2b3c67d3f83bd3ba1fb463900e1b0c4a4fc3fd68d9208758e4095086e4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StaticBody2D

* * *

# StaticBody2D

**Inherits:** [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) **<** [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [AnimatableBody2D](class_animatablebody2d.md#class-animatablebody2d)

A 2D physics body that can't be moved by external forces. When moved manually, it doesn't affect other bodies in its path.

## Description

A static 2D physics body. It can't be moved by external forces or contacts, but can be moved manually by other means such as code, [AnimationMixer](class_animationmixer.md#class-animationmixer) s (with [AnimationMixer.callback\_mode\_process](class_animationmixer.md#class-animationmixer-property-callback-mode-process) set to [AnimationMixer.ANIMATION\_CALLBACK\_MODE\_PROCESS\_PHYSICS](class_animationmixer.md#class-animationmixer-constant-animation-callback-mode-process-physics)), and [RemoteTransform2D](class_remotetransform2d.md#class-remotetransform2d).

When **StaticBody2D** is moved, it is teleported to its new position without affecting other physics bodies in its path. If this is not desired, use [AnimatableBody2D](class_animatablebody2d.md#class-animatablebody2d) instead.

**StaticBody2D** is useful for completely static objects like floors and walls, as well as moving surfaces like conveyor belts and circular revolving platforms (by using [constant\_linear\_velocity](#class-staticbody2d-property-constant-linear-velocity) and [constant\_angular\_velocity](#class-staticbody2d-property-constant-angular-velocity)).

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Troubleshooting physics issues](../tutorials/physics/troubleshooting_physics_issues.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [constant\_angular\_velocity](#class-staticbody2d-property-constant-angular-velocity) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [constant\_linear\_velocity](#class-staticbody2d-property-constant-linear-velocity) | `Vector2(0, 0)` |
| [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) | [physics\_material\_override](#class-staticbody2d-property-physics-material-override) |  |

* * *

## Property Descriptions

[float](class_float.md#class-float) **constant\_angular\_velocity** = `0.0` [🔗](#class-staticbody2d-property-constant-angular-velocity)

- void **set\_constant\_angular\_velocity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_constant\_angular\_velocity**()


The body's constant angular velocity. This does not rotate the body, but affects touching bodies, as if it were rotating.

* * *

[Vector2](class_vector2.md#class-vector2) **constant\_linear\_velocity** = `Vector2(0, 0)` [🔗](#class-staticbody2d-property-constant-linear-velocity)

- void **set\_constant\_linear\_velocity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_constant\_linear\_velocity**()


The body's constant linear velocity. This does not move the body, but affects touching bodies, as if it were moving.

* * *

[PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) **physics\_material\_override** [🔗](#class-staticbody2d-property-physics-material-override)

- void **set\_physics\_material\_override**(value: [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial))

- [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) **get\_physics\_material\_override**()


The physics material override for the body.

If a material is assigned to this property, it will be used instead of any other physics material, such as an inherited one.

[Previous](class_spritebase3d.md "SpriteBase3D") [Next](class_staticbody3d.md "StaticBody3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_spritebase3d.md "SpriteBase3D") [Next](class_staticbody3d.md "StaticBody3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).