---
title: AnimatableBody3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animatablebody3d.html
crawled_at: "2026-08-13T10:26:36+12:00"
content_hash: 1286dcd3f2428d26f3bae55a4150e9fac414dbcd61f803a5aa15e644cdc5448b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimatableBody3D

* * *

# AnimatableBody3D

**Inherits:** [StaticBody3D](class_staticbody3d.md#class-staticbody3d) **<** [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) **<** [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 3D physics body that can't be moved by external forces. When moved manually, it affects other bodies in its path.

## Description

An animatable 3D physics body. It can't be moved by external forces or contacts, but can be moved manually by other means such as code, [AnimationMixer](class_animationmixer.md#class-animationmixer) s (with [AnimationMixer.callback\_mode\_process](class_animationmixer.md#class-animationmixer-property-callback-mode-process) set to [AnimationMixer.ANIMATION\_CALLBACK\_MODE\_PROCESS\_PHYSICS](class_animationmixer.md#class-animationmixer-constant-animation-callback-mode-process-physics)), and [RemoteTransform3D](class_remotetransform3d.md#class-remotetransform3d).

When **AnimatableBody3D** is moved, its linear and angular velocity are estimated and used to affect other physics bodies in its path. This makes it useful for moving platforms, doors, and other moving objects.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Troubleshooting physics issues](../tutorials/physics/troubleshooting_physics_issues.md)

- [3D Physics Tests Demo](https://godotengine.org/asset-library/asset/2747)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [sync\_to\_physics](#class-animatablebody3d-property-sync-to-physics) | `true` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **sync\_to\_physics** = `true` [🔗](#class-animatablebody3d-property-sync-to-physics)

- void **set\_sync\_to\_physics**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_sync\_to\_physics\_enabled**()


If `true`, the body's movement will be synchronized to the physics frame. This is useful when animating movement via [AnimationPlayer](class_animationplayer.md#class-animationplayer), for example on moving platforms. Do **not** use together with [PhysicsBody3D.move\_and\_collide()](class_physicsbody3d.md#class-physicsbody3d-method-move-and-collide).

[Previous](class_animatablebody2d.md "AnimatableBody2D") [Next](class_animatedsprite2d.md "AnimatedSprite2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animatablebody2d.md "AnimatableBody2D") [Next](class_animatedsprite2d.md "AnimatedSprite2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).