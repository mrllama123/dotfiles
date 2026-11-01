---
title: AnimationNodeAdd3 — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodeadd3.html
crawled_at: "2026-08-13T10:30:18+12:00"
content_hash: a42354bdddeaae0f5907ff8f4a025284d0731530cbb30a1414380590ee751430
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeAdd3

* * *

# AnimationNodeAdd3

**Inherits:** [AnimationNodeSync](class_animationnodesync.md#class-animationnodesync) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Blends two of three animations additively inside of an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

## Description

A resource to add to an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree). Blends two animations out of three additively out of three based on the amount value.

This animation node has three inputs:

- The base animation to add to

- A "-add" animation to blend with when the blend amount is negative

- A "+add" animation to blend with when the blend amount is positive


If the absolute value of the amount is greater than `1.0`, the animation connected to "in" port is blended with the amplified animation connected to "-add"/"+add" port.

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


[Previous](class_animationnodeadd2.md "AnimationNodeAdd2") [Next](class_animationnodeanimation.md "AnimationNodeAnimation")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodeadd2.md "AnimationNodeAdd2") [Next](class_animationnodeanimation.md "AnimationNodeAnimation")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).