---
title: AnimationNodeSub2 — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodesub2.html
crawled_at: "2026-08-13T10:31:41+12:00"
content_hash: 69ca1e9f0d292307a61f15144448b7a76450e79790a97f2e8490f88404fdbd8e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeSub2

* * *

# AnimationNodeSub2

**Inherits:** [AnimationNodeSync](class_animationnodesync.md#class-animationnodesync) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Blends two animations subtractively inside of an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

## Description

A resource to add to an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree). Blends two animations subtractively based on the amount value.

This animation node is usually used for pre-calculation to cancel out any extra poses from the animation for the "add" animation source in [AnimationNodeAdd2](class_animationnodeadd2.md#class-animationnodeadd2) or [AnimationNodeAdd3](class_animationnodeadd3.md#class-animationnodeadd3).

In general, the blend value should be in the `[0.0, 1.0]` range, but values outside of this range can be used for amplified or inverted animations.

**Note:** This calculation is different from using a negative value in [AnimationNodeAdd2](class_animationnodeadd2.md#class-animationnodeadd2), since the transformation matrices do not satisfy the commutative law. **AnimationNodeSub2** multiplies the transformation matrix of the inverted animation from the left side, while negative [AnimationNodeAdd2](class_animationnodeadd2.md#class-animationnodeadd2) multiplies it from the right side.

## Tutorials

- [AnimationTree](../tutorials/animation/animation_tree.md)


[Previous](class_animationnodestatemachinetransition.md "AnimationNodeStateMachineTransition") [Next](class_animationnodesync.md "AnimationNodeSync")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodestatemachinetransition.md "AnimationNodeStateMachineTransition") [Next](class_animationnodesync.md "AnimationNodeSync")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).