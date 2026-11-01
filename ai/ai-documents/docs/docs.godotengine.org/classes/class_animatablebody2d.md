---
title: AnimatableBody2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animatablebody2d.html
crawled_at: "2026-08-13T10:28:26+12:00"
content_hash: 1a8309de88742468c74bc66af1d6aa195eb95438b79aaa5b96114297076abe0e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimatableBody2D

* * *

# AnimatableBody2D

**Inherits:** [StaticBody2D](class_staticbody2d.md#class-staticbody2d) **<** [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) **<** [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 2D physics body that can't be moved by external forces. When moved manually, it affects other bodies in its path.

## Description

An animatable 2D physics body. It can't be moved by external forces or contacts, but can be moved manually by other means such as code, [AnimationMixer](class_animationmixer.md#class-animationmixer) s (with [AnimationMixer.callback\_mode\_process](class_animationmixer.md#class-animationmixer-property-callback-mode-process) set to [AnimationMixer.ANIMATION\_CALLBACK\_MODE\_PROCESS\_PHYSICS](class_animationmixer.md#class-animationmixer-constant-animation-callback-mode-process-physics)), and [RemoteTransform2D](class_remotetransform2d.md#class-remotetransform2d).

When **AnimatableBody2D** is moved, its linear and angular velocity are estimated and used to affect other physics bodies in its path. This makes it useful for moving platforms, doors, and other moving objects.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Troubleshooting physics issues](../tutorials/physics/troubleshooting_physics_issues.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [sync\_to\_physics](#class-animatablebody2d-property-sync-to-physics) | `true` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **sync\_to\_physics** = `true` [🔗](#class-animatablebody2d-property-sync-to-physics)

- void **set\_sync\_to\_physics**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_sync\_to\_physics\_enabled**()


If `true`, the body's movement will be synchronized to the physics frame. This is useful when animating movement via [AnimationPlayer](class_animationplayer.md#class-animationplayer), for example on moving platforms. Do **not** use together with [PhysicsBody2D.move\_and\_collide()](class_physicsbody2d.md#class-physicsbody2d-method-move-and-collide).

[Previous](class_aimmodifier3d.md "AimModifier3D") [Next](class_animatablebody3d.md "AnimatableBody3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_aimmodifier3d.md "AimModifier3D") [Next](class_animatablebody3d.md "AnimatableBody3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).