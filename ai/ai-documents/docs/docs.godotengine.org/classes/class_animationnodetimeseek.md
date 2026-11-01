---
title: AnimationNodeTimeSeek — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodetimeseek.html
crawled_at: "2026-08-13T10:39:15+12:00"
content_hash: ec73bad704c4e8b2319a239ac86eb831cec6b13312d201593fcaf44d4d86077d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeTimeSeek

* * *

# AnimationNodeTimeSeek

**Inherits:** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A time-seeking animation node used in [AnimationTree](class_animationtree.md#class-animationtree).

## Description

This animation node can be used to cause a seek command to happen to any sub-children of the animation graph. Use to play an [Animation](class_animation.md#class-animation) from the start or a certain playback position inside the [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

After setting the time and changing the animation playback, the time seek node automatically goes into sleep mode on the next process frame by setting its `seek_request` value to `-1.0`.

GDScriptC#

```
# Play child animation from the start.
animation_tree.set("parameters/TimeSeek/seek_request", 0.0)
# Alternative syntax (same result as above).
animation_tree["parameters/TimeSeek/seek_request"] = 0.0

# Play child animation from 12 second timestamp.
animation_tree.set("parameters/TimeSeek/seek_request", 12.0)
# Alternative syntax (same result as above).
animation_tree["parameters/TimeSeek/seek_request"] = 12.0

```

```
// Play child animation from the start.
animationTree.Set("parameters/TimeSeek/seek_request", 0.0);

// Play child animation from 12 second timestamp.
animationTree.Set("parameters/TimeSeek/seek_request", 12.0);

```

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [explicit\_elapse](#class-animationnodetimeseek-property-explicit-elapse) | `true` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **explicit\_elapse** = `true` [🔗](#class-animationnodetimeseek-property-explicit-elapse)

- void **set\_explicit\_elapse**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_explicit\_elapse**()


If `true`, some processes are executed to handle keys between seeks, such as calculating root motion and finding the nearest discrete key.

[Previous](class_animationnodetimescale.md "AnimationNodeTimeScale") [Next](class_animationnodetransition.md "AnimationNodeTransition")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodetimescale.md "AnimationNodeTimeScale") [Next](class_animationnodetransition.md "AnimationNodeTransition")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).