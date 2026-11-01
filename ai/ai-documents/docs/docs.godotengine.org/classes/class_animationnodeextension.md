---
title: AnimationNodeExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodeextension.html
crawled_at: "2026-08-13T10:33:04+12:00"
content_hash: 5db4c76f9a03844802002900cf4fb8cd210fae1cab9442bd92d626fdab3cfe0d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeExtension

* * *

# AnimationNodeExtension

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Base class for extending [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) s from GDScript, C#, or C++.

## Description

**AnimationNodeExtension** exposes the APIs of [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) to allow users to extend it from GDScript, C#, or C++. This class is not meant to be used directly, but to be extended by other classes. It is used to create custom nodes for the [AnimationTree](class_animationtree.md#class-animationtree) system.

## Methods

|     |     |
| --- | --- |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [\_process\_animation\_node](#class-animationnodeextension-private-method-process-animation-node)(playback\_info: [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array), test\_only: [bool](class_bool.md#class-bool)) virtualrequired |
| [float](class_float.md#class-float) | [get\_remaining\_time](#class-animationnodeextension-method-get-remaining-time)(node\_info: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), break\_loop: [bool](class_bool.md#class-bool)) static |
| [bool](class_bool.md#class-bool) | [is\_looping](#class-animationnodeextension-method-is-looping)(node\_info: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) static |

* * *

## Method Descriptions

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **\_process\_animation\_node**(playback\_info: [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array), test\_only: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-animationnodeextension-private-method-process-animation-node)

A version of the [AnimationNode.\_process()](class_animationnode.md#class-animationnode-private-method-process) method that is meant to be overridden by custom nodes. It returns a [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) with the processed animation data.

The [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) parameter contains the playback information, containing the following values encoded as floating point numbers (in order): playback time and delta, start and end times, whether a seek was requested (encoded as a float greater than `0`), whether the seek request was externally requested (encoded as a float greater than `0`), the current [LoopedFlag](class_animation.md#enum-animation-loopedflag) (encoded as a float), and the current blend weight.

The function must return a [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) of the node's time info, containing the following values (in order): animation length, time position, delta, [LoopMode](class_animation.md#enum-animation-loopmode) (encoded as a float), whether the animation is about to end (encoded as a float greater than `0`) and whether the animation is infinite (encoded as a float greater than `0`). All values must be included in the returned array.

* * *

[float](class_float.md#class-float) **get\_remaining\_time**(node\_info: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), break\_loop: [bool](class_bool.md#class-bool)) static [🔗](#class-animationnodeextension-method-get-remaining-time)

Returns the animation's remaining time for the given node info. For looping animations, it will only return the remaining time if `break_loop` is `true`, a large integer value will be returned otherwise.

* * *

[bool](class_bool.md#class-bool) **is\_looping**(node\_info: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) static [🔗](#class-animationnodeextension-method-is-looping)

Returns `true` if the animation for the given `node_info` is looping.

[Previous](class_animationnodeblendtree.md "AnimationNodeBlendTree") [Next](class_animationnodeoneshot.md "AnimationNodeOneShot")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodeblendtree.md "AnimationNodeBlendTree") [Next](class_animationnodeoneshot.md "AnimationNodeOneShot")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).