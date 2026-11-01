---
title: SubtweenTweener — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_subtweentweener.html
crawled_at: "2026-08-13T10:37:44+12:00"
content_hash: 6f9eb55d7a80b0a80dc6674db5a71acab4ec404a814f68317a337b63eaf30613
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SubtweenTweener

* * *

# SubtweenTweener

**Inherits:** [Tweener](class_tweener.md#class-tweener) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Runs a [Tween](class_tween.md#class-tween) nested within another [Tween](class_tween.md#class-tween).

## Description

**SubtweenTweener** is used to execute a [Tween](class_tween.md#class-tween) as one step in a sequence defined by another [Tween](class_tween.md#class-tween). See [Tween.tween\_subtween()](class_tween.md#class-tween-method-tween-subtween) for more usage information.

**Note:** [Tween.tween\_subtween()](class_tween.md#class-tween-method-tween-subtween) is the only correct way to create **SubtweenTweener**. Any **SubtweenTweener** created manually will not function correctly.

## Methods

|     |     |
| --- | --- |
| [SubtweenTweener](#class-subtweentweener) | [set\_delay](#class-subtweentweener-method-set-delay)(delay: [float](class_float.md#class-float)) |

* * *

## Method Descriptions

[SubtweenTweener](#class-subtweentweener) **set\_delay**(delay: [float](class_float.md#class-float)) [🔗](#class-subtweentweener-method-set-delay)

Sets the time in seconds after which the **SubtweenTweener** will start running the subtween. By default there's no delay.

[Previous](class_streampeertls.md "StreamPeerTLS") [Next](class_surfacetool.md "SurfaceTool")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_streampeertls.md "StreamPeerTLS") [Next](class_surfacetool.md "SurfaceTool")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).