---
title: AnimationTree — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationtree.html
crawled_at: "2026-08-13T10:36:29+12:00"
content_hash: ba60db5563d38e0b54ffdd1e17db120b892295d68f84a4f7ec196ffac9e74ece
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationTree

* * *

# AnimationTree

**Inherits:** [AnimationMixer](class_animationmixer.md#class-animationmixer) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node used for advanced animation transitions in an [AnimationPlayer](class_animationplayer.md#class-animationplayer).

## Description

A node used for advanced animation transitions in an [AnimationPlayer](class_animationplayer.md#class-animationplayer).

**Note:** When linked with an [AnimationPlayer](class_animationplayer.md#class-animationplayer), several properties and methods of the corresponding [AnimationPlayer](class_animationplayer.md#class-animationplayer) will not function as expected. Playback and transitions should be handled using only the **AnimationTree** and its constituent [AnimationNode](class_animationnode.md#class-animationnode)(s). The [AnimationPlayer](class_animationplayer.md#class-animationplayer) node should be used solely for adding, deleting, and editing animations.

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [NodePath](class_nodepath.md#class-nodepath) | [advance\_expression\_base\_node](#class-animationtree-property-advance-expression-base-node) | `NodePath(".")` |
| [NodePath](class_nodepath.md#class-nodepath) | [anim\_player](#class-animationtree-property-anim-player) | `NodePath("")` |
| [AnimationCallbackModeDiscrete](class_animationmixer.md#enum-animationmixer-animationcallbackmodediscrete) | callback\_mode\_discrete | `2` (overrides [AnimationMixer](class_animationmixer.md#class-animationmixer-property-callback-mode-discrete)) |
| [bool](class_bool.md#class-bool) | deterministic | `true` (overrides [AnimationMixer](class_animationmixer.md#class-animationmixer-property-deterministic)) |
| [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) | [tree\_root](#class-animationtree-property-tree-root) |  |

## Methods

|     |     |
| --- | --- |
| [AnimationProcessCallback](#enum-animationtree-animationprocesscallback) | [get\_process\_callback](#class-animationtree-method-get-process-callback)() const |
| void | [set\_process\_callback](#class-animationtree-method-set-process-callback)(mode: [AnimationProcessCallback](#enum-animationtree-animationprocesscallback)) |

* * *

## Signals

**animation\_player\_changed**() [🔗](#class-animationtree-signal-animation-player-changed)

Emitted when the [anim\_player](#class-animationtree-property-anim-player) is changed.

* * *

## Enumerations

enum **AnimationProcessCallback**: [🔗](#enum-animationtree-animationprocesscallback)

[AnimationProcessCallback](#enum-animationtree-animationprocesscallback) **ANIMATION\_PROCESS\_PHYSICS** = `0`

**Deprecated:** See [AnimationMixer.ANIMATION\_CALLBACK\_MODE\_PROCESS\_PHYSICS](class_animationmixer.md#class-animationmixer-constant-animation-callback-mode-process-physics).

[AnimationProcessCallback](#enum-animationtree-animationprocesscallback) **ANIMATION\_PROCESS\_IDLE** = `1`

**Deprecated:** See [AnimationMixer.ANIMATION\_CALLBACK\_MODE\_PROCESS\_IDLE](class_animationmixer.md#class-animationmixer-constant-animation-callback-mode-process-idle).

[AnimationProcessCallback](#enum-animationtree-animationprocesscallback) **ANIMATION\_PROCESS\_MANUAL** = `2`

**Deprecated:** See [AnimationMixer.ANIMATION\_CALLBACK\_MODE\_PROCESS\_MANUAL](class_animationmixer.md#class-animationmixer-constant-animation-callback-mode-process-manual).

* * *

## Property Descriptions

[NodePath](class_nodepath.md#class-nodepath) **advance\_expression\_base\_node** = `NodePath(".")` [🔗](#class-animationtree-property-advance-expression-base-node)

- void **set\_advance\_expression\_base\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_advance\_expression\_base\_node**()


The path to the [Node](class_node.md#class-node) used to evaluate the [AnimationNode](class_animationnode.md#class-animationnode) [Expression](class_expression.md#class-expression) if one is not explicitly specified internally.

* * *

[NodePath](class_nodepath.md#class-nodepath) **anim\_player** = `NodePath("")` [🔗](#class-animationtree-property-anim-player)

- void **set\_animation\_player**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_animation\_player**()


The path to the [AnimationPlayer](class_animationplayer.md#class-animationplayer) used for animating.

* * *

[AnimationRootNode](class_animationrootnode.md#class-animationrootnode) **tree\_root** [🔗](#class-animationtree-property-tree-root)

- void **set\_tree\_root**(value: [AnimationRootNode](class_animationrootnode.md#class-animationrootnode))

- [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) **get\_tree\_root**()


The root animation node of this **AnimationTree**. See [AnimationRootNode](class_animationrootnode.md#class-animationrootnode).

* * *

## Method Descriptions

[AnimationProcessCallback](#enum-animationtree-animationprocesscallback) **get\_process\_callback**() const [🔗](#class-animationtree-method-get-process-callback)

**Deprecated:** Use [AnimationMixer.callback\_mode\_process](class_animationmixer.md#class-animationmixer-property-callback-mode-process) instead.

Returns the process notification in which to update animations.

* * *

void **set\_process\_callback**(mode: [AnimationProcessCallback](#enum-animationtree-animationprocesscallback)) [🔗](#class-animationtree-method-set-process-callback)

**Deprecated:** Use [AnimationMixer.callback\_mode\_process](class_animationmixer.md#class-animationmixer-property-callback-mode-process) instead.

Sets the process notification in which to update animations.

[Previous](class_animationplayer.md "AnimationPlayer") [Next](class_area2d.md "Area2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationplayer.md "AnimationPlayer") [Next](class_area2d.md "Area2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).