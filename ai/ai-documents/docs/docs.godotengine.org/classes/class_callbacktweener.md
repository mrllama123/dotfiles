---
title: CallbackTweener — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_callbacktweener.html
crawled_at: "2026-08-13T10:18:09+12:00"
content_hash: 8315832b4e38001ac162b4b24d309262b705134301656e8c00fc5eb0989aacf7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CallbackTweener

* * *

# CallbackTweener

**Inherits:** [Tweener](class_tweener.md#class-tweener) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Calls the specified method after optional delay.

## Description

**CallbackTweener** is used to call a method in a tweening sequence. See [Tween.tween\_callback()](class_tween.md#class-tween-method-tween-callback) for more usage information.

The tweener will finish automatically if the callback's target object is freed.

**Note:** [Tween.tween\_callback()](class_tween.md#class-tween-method-tween-callback) is the only correct way to create **CallbackTweener**. Any **CallbackTweener** created manually will not function correctly.

## Methods

|     |     |
| --- | --- |
| [CallbackTweener](#class-callbacktweener) | [set\_delay](#class-callbacktweener-method-set-delay)(delay: [float](class_float.md#class-float)) |

* * *

## Method Descriptions

[CallbackTweener](#class-callbacktweener) **set\_delay**(delay: [float](class_float.md#class-float)) [🔗](#class-callbacktweener-method-set-delay)

Makes the callback call delayed by given time in seconds.

**Example:** Call [Node.queue\_free()](class_node.md#class-node-method-queue-free) after 2 seconds:

```
var tween = get_tree().create_tween()
tween.tween_callback(queue_free).set_delay(2)

```

[Previous](class_audiostreamplaybacksynchronized.md "AudioStreamPlaybackSynchronized") [Next](class_camerafeed.md "CameraFeed")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamplaybacksynchronized.md "AudioStreamPlaybackSynchronized") [Next](class_camerafeed.md "CameraFeed")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).