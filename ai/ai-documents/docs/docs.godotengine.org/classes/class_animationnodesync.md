---
title: AnimationNodeSync — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodesync.html
crawled_at: "2026-08-13T10:29:55+12:00"
content_hash: 257fdd4c792cf062218c331087c10a3e4a488e33b7f5a7854fdc57ebe4e6120e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeSync

* * *

# AnimationNodeSync

**Inherits:** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [AnimationNodeAdd2](class_animationnodeadd2.md#class-animationnodeadd2), [AnimationNodeAdd3](class_animationnodeadd3.md#class-animationnodeadd3), [AnimationNodeBlend2](class_animationnodeblend2.md#class-animationnodeblend2), [AnimationNodeBlend3](class_animationnodeblend3.md#class-animationnodeblend3), [AnimationNodeOneShot](class_animationnodeoneshot.md#class-animationnodeoneshot), [AnimationNodeSub2](class_animationnodesub2.md#class-animationnodesub2), [AnimationNodeTransition](class_animationnodetransition.md#class-animationnodetransition)

Base class for [AnimationNode](class_animationnode.md#class-animationnode) s with multiple input ports that must be synchronized.

## Description

An animation node used to combine, mix, or blend two or more animations together while keeping them synchronized within an [AnimationTree](class_animationtree.md#class-animationtree).

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [sync](#class-animationnodesync-property-sync) | `false` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **sync** = `false` [🔗](#class-animationnodesync-property-sync)

- void **set\_use\_sync**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_sync**()


If `false`, the blended animations' frame are stopped when the blend value is `0`.

If `true`, forcing the blended animations to advance frame.

[Previous](class_animationnodesub2.md "AnimationNodeSub2") [Next](class_animationnodetimescale.md "AnimationNodeTimeScale")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodesub2.md "AnimationNodeSub2") [Next](class_animationnodetimescale.md "AnimationNodeTimeScale")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).