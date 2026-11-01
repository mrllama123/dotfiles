---
title: AnimationNodeAnimation — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodeanimation.html
crawled_at: "2026-08-13T10:38:20+12:00"
content_hash: a9302d4766131f3322597fb11d2b797ce7a5cb7856b1b748d46055ef2771fe13
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeAnimation

* * *

# AnimationNodeAnimation

**Inherits:** [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An input animation for an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

## Description

A resource to add to an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree). Only has one output port using the [animation](#class-animationnodeanimation-property-animation) property. Used as an input for [AnimationNode](class_animationnode.md#class-animationnode) s that blend animations together.

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [advance\_on\_start](#class-animationnodeanimation-property-advance-on-start) | `false` |
| [StringName](class_stringname.md#class-stringname) | [animation](#class-animationnodeanimation-property-animation) | `&""` |
| [LoopMode](class_animation.md#enum-animation-loopmode) | [loop\_mode](#class-animationnodeanimation-property-loop-mode) |  |
| [PlayMode](#enum-animationnodeanimation-playmode) | [play\_mode](#class-animationnodeanimation-property-play-mode) | `0` |
| [float](class_float.md#class-float) | [start\_offset](#class-animationnodeanimation-property-start-offset) |  |
| [bool](class_bool.md#class-bool) | [stretch\_time\_scale](#class-animationnodeanimation-property-stretch-time-scale) |  |
| [float](class_float.md#class-float) | [timeline\_length](#class-animationnodeanimation-property-timeline-length) |  |
| [bool](class_bool.md#class-bool) | [use\_custom\_timeline](#class-animationnodeanimation-property-use-custom-timeline) | `false` |

* * *

## Enumerations

enum **PlayMode**: [🔗](#enum-animationnodeanimation-playmode)

[PlayMode](#enum-animationnodeanimation-playmode) **PLAY\_MODE\_FORWARD** = `0`

Plays animation in forward direction.

[PlayMode](#enum-animationnodeanimation-playmode) **PLAY\_MODE\_BACKWARD** = `1`

Plays animation in backward direction.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **advance\_on\_start** = `false` [🔗](#class-animationnodeanimation-property-advance-on-start)

- void **set\_advance\_on\_start**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_advance\_on\_start**()


If `true`, on receiving a request to play an animation from the start, the first frame is not drawn, but only processed, and playback starts from the next frame.

See also the notes of [AnimationPlayer.play()](class_animationplayer.md#class-animationplayer-method-play).

* * *

[StringName](class_stringname.md#class-stringname) **animation** = `&""` [🔗](#class-animationnodeanimation-property-animation)

- void **set\_animation**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_animation**()


Animation to use as an output. It is one of the animations provided by [AnimationTree.anim\_player](class_animationtree.md#class-animationtree-property-anim-player).

* * *

[LoopMode](class_animation.md#enum-animation-loopmode) **loop\_mode** [🔗](#class-animationnodeanimation-property-loop-mode)

- void **set\_loop\_mode**(value: [LoopMode](class_animation.md#enum-animation-loopmode))

- [LoopMode](class_animation.md#enum-animation-loopmode) **get\_loop\_mode**()


If [use\_custom\_timeline](#class-animationnodeanimation-property-use-custom-timeline) is `true`, override the loop settings of the original [Animation](class_animation.md#class-animation) resource with the value.

**Note:** If the [Animation.loop\_mode](class_animation.md#class-animation-property-loop-mode) isn't set to looping, the [Animation.track\_set\_interpolation\_loop\_wrap()](class_animation.md#class-animation-method-track-set-interpolation-loop-wrap) option will not be respected. If you cannot get the expected behavior, consider duplicating the [Animation](class_animation.md#class-animation) resource and changing the loop settings.

* * *

[PlayMode](#enum-animationnodeanimation-playmode) **play\_mode** = `0` [🔗](#class-animationnodeanimation-property-play-mode)

- void **set\_play\_mode**(value: [PlayMode](#enum-animationnodeanimation-playmode))

- [PlayMode](#enum-animationnodeanimation-playmode) **get\_play\_mode**()


Determines the playback direction of the animation.

* * *

[float](class_float.md#class-float) **start\_offset** [🔗](#class-animationnodeanimation-property-start-offset)

- void **set\_start\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_start\_offset**()


If [use\_custom\_timeline](#class-animationnodeanimation-property-use-custom-timeline) is `true`, offset the start position of the animation.

This is useful for adjusting which foot steps first in 3D walking animations.

* * *

[bool](class_bool.md#class-bool) **stretch\_time\_scale** [🔗](#class-animationnodeanimation-property-stretch-time-scale)

- void **set\_stretch\_time\_scale**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_stretching\_time\_scale**()


If `true`, scales the time so that the length specified in [timeline\_length](#class-animationnodeanimation-property-timeline-length) is one cycle.

This is useful for matching the periods of walking and running animations.

If `false`, the original animation length is respected. If you set the loop to [loop\_mode](#class-animationnodeanimation-property-loop-mode), the animation will loop in [timeline\_length](#class-animationnodeanimation-property-timeline-length).

* * *

[float](class_float.md#class-float) **timeline\_length** [🔗](#class-animationnodeanimation-property-timeline-length)

- void **set\_timeline\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_timeline\_length**()


If [use\_custom\_timeline](#class-animationnodeanimation-property-use-custom-timeline) is `true`, offset the start position of the animation.

* * *

[bool](class_bool.md#class-bool) **use\_custom\_timeline** = `false` [🔗](#class-animationnodeanimation-property-use-custom-timeline)

- void **set\_use\_custom\_timeline**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_custom\_timeline**()


If `true`, [AnimationNode](class_animationnode.md#class-animationnode) provides an animation based on the [Animation](class_animation.md#class-animation) resource with some parameters adjusted.

[Previous](class_animationnodeadd3.md "AnimationNodeAdd3") [Next](class_animationnodeblend2.md "AnimationNodeBlend2")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodeadd3.md "AnimationNodeAdd3") [Next](class_animationnodeblend2.md "AnimationNodeBlend2")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).