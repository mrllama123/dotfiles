---
title: AnimationNodeBlend2 — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodeblend2.html
crawled_at: "2026-08-13T10:30:09+12:00"
content_hash: 07f6a7d21b343a4d098b019be4527d30ee8930924f585fa8c44cc6afe6bf6734
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeBlend2

* * *

# AnimationNodeBlend2

**Inherits:** [AnimationNodeSync](class_animationnodesync.md#class-animationnodesync) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Blends two animations linearly inside of an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

## Description

A resource to add to an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree). Blends two animations linearly based on the amount value.

In general, the blend value should be in the `[0.0, 1.0]` range. Values outside of this range can blend amplified or inverted animations, however, [AnimationNodeAdd2](class_animationnodeadd2.md#class-animationnodeadd2) works better for this purpose.

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


[Previous](class_animationnodeanimation.md "AnimationNodeAnimation") [Next](class_animationnodeblend3.md "AnimationNodeBlend3")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodeanimation.md "AnimationNodeAnimation") [Next](class_animationnodeblend3.md "AnimationNodeBlend3")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).