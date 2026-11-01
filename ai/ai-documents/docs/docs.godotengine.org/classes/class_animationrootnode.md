---
title: AnimationRootNode — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationrootnode.html
crawled_at: "2026-08-13T10:39:07+12:00"
content_hash: 9fceba700061bab445427435101d02520a08566765b628400ae64547887ab42b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationRootNode

* * *

# AnimationRootNode

**Inherits:** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [AnimationNodeAnimation](class_animationnodeanimation.md#class-animationnodeanimation), [AnimationNodeBlendSpace1D](class_animationnodeblendspace1d.md#class-animationnodeblendspace1d), [AnimationNodeBlendSpace2D](class_animationnodeblendspace2d.md#class-animationnodeblendspace2d), [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree), [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine)

Base class for [AnimationNode](class_animationnode.md#class-animationnode) s that hold one or multiple composite animations. Usually used for [AnimationTree.tree\_root](class_animationtree.md#class-animationtree-property-tree-root).

## Description

**AnimationRootNode** is a base class for [AnimationNode](class_animationnode.md#class-animationnode) s that hold a complete animation. A complete animation refers to the output of an [AnimationNodeOutput](class_animationnodeoutput.md#class-animationnodeoutput) in an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree) or the output of another **AnimationRootNode**. Used for [AnimationTree.tree\_root](class_animationtree.md#class-animationtree-property-tree-root) or in other **AnimationRootNode** s.

Examples of built-in root nodes include [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree) (allows blending nodes between each other using various modes), [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine) (allows to configure blending and transitions between nodes using a state machine pattern), [AnimationNodeBlendSpace2D](class_animationnodeblendspace2d.md#class-animationnodeblendspace2d) (allows linear blending between **three** [AnimationNode](class_animationnode.md#class-animationnode) s), [AnimationNodeBlendSpace1D](class_animationnodeblendspace1d.md#class-animationnodeblendspace1d) (allows linear blending only between **two** [AnimationNode](class_animationnode.md#class-animationnode) s).

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


[Previous](class_animationnodetransition.md "AnimationNodeTransition") [Next](class_arraymesh.md "ArrayMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodetransition.md "AnimationNodeTransition") [Next](class_arraymesh.md "ArrayMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).