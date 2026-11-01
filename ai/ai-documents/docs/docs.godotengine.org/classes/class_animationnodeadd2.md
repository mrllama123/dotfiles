---
title: AnimationNodeAdd2 — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodeadd2.html
crawled_at: "2026-08-13T10:34:25+12:00"
content_hash: aa7505eb7f462e3e592a55e3393aef4d7ec18e48758d4f764a6ecc962dcfda9d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeAdd2

* * *

# AnimationNodeAdd2

**Inherits:** [AnimationNodeSync](class_animationnodesync.md#class-animationnodesync) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Blends two animations additively inside of an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

## Description

A resource to add to an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree). Blends two animations additively based on the amount value.

If the amount is greater than `1.0`, the animation connected to "in" port is blended with the amplified animation connected to "add" port.

If the amount is less than `0.0`, the animation connected to "in" port is blended with the inverted animation connected to "add" port.

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


[Previous](class_animationnode.md "AnimationNode") [Next](class_animationnodeadd3.md "AnimationNodeAdd3")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnode.md "AnimationNode") [Next](class_animationnodeadd3.md "AnimationNodeAdd3")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).