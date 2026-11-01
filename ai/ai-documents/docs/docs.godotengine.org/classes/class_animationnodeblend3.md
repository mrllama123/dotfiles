---
title: AnimationNodeBlend3 — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodeblend3.html
crawled_at: "2026-08-13T10:21:42+12:00"
content_hash: f9ac4ba265ffc9f1f086dad2b515e847a53898419f530f8365659afd112e2d16
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeBlend3

* * *

# AnimationNodeBlend3

**Inherits:** [AnimationNodeSync](class_animationnodesync.md#class-animationnodesync) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Blends two of three animations linearly inside of an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

## Description

A resource to add to an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree). Blends two animations out of three linearly out of three based on the amount value.

This animation node has three inputs:

- The base animation to blend with

- A "-blend" animation to blend with when the blend amount is negative value

- A "+blend" animation to blend with when the blend amount is positive value


In general, the blend value should be in the `[-1.0, 1.0]` range. Values outside of this range can blend amplified animations, however, [AnimationNodeAdd3](class_animationnodeadd3.md#class-animationnodeadd3) works better for this purpose.

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


[Previous](class_animationnodeblend2.md "AnimationNodeBlend2") [Next](class_animationnodeblendspace1d.md "AnimationNodeBlendSpace1D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodeblend2.md "AnimationNodeBlend2") [Next](class_animationnodeblendspace1d.md "AnimationNodeBlendSpace1D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).