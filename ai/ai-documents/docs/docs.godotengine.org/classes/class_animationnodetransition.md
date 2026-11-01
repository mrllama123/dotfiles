---
title: AnimationNodeTransition — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodetransition.html
crawled_at: "2026-08-13T10:22:22+12:00"
content_hash: b9112e9f6fbef2a7776836e496ad2e065dd465751fd4c48ce02e7a363f6b8ecf
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeTransition

* * *

# AnimationNodeTransition

**Inherits:** [AnimationNodeSync](class_animationnodesync.md#class-animationnodesync) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A transition within an [AnimationTree](class_animationtree.md#class-animationtree) connecting two [AnimationNode](class_animationnode.md#class-animationnode) s.

## Description

Simple state machine for cases which don't require a more advanced [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine). Animations can be connected to the inputs and transition times can be specified.

After setting the request and changing the animation playback, the transition node automatically clears the request on the next process frame by setting its `transition_request` value to empty.

**Note:** When using a cross-fade, `current_state` and `current_index` change to the next state immediately after the cross-fade begins.

GDScriptC#

```
# Play child animation connected to "state_2" port.
animation_tree.set("parameters/Transition/transition_request", "state_2")
# Alternative syntax (same result as above).
animation_tree["parameters/Transition/transition_request"] = "state_2"

# Get current state name (read-only).
animation_tree.get("parameters/Transition/current_state")
# Alternative syntax (same result as above).
animation_tree["parameters/Transition/current_state"]

# Get current state index (read-only).
animation_tree.get("parameters/Transition/current_index")
# Alternative syntax (same result as above).
animation_tree["parameters/Transition/current_index"]

```

```
// Play child animation connected to "state_2" port.
animationTree.Set("parameters/Transition/transition_request", "state_2");

// Get current state name (read-only).
animationTree.Get("parameters/Transition/current_state");

// Get current state index (read-only).
animationTree.Get("parameters/Transition/current_index");

```

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_transition\_to\_self](#class-animationnodetransition-property-allow-transition-to-self) | `false` |
| [int](class_int.md#class-int) | [input\_count](#class-animationnodetransition-property-input-count) | `0` |
| [Curve](class_curve.md#class-curve) | [xfade\_curve](#class-animationnodetransition-property-xfade-curve) |  |
| [float](class_float.md#class-float) | [xfade\_time](#class-animationnodetransition-property-xfade-time) | `0.0` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [is\_input\_loop\_broken\_at\_end](#class-animationnodetransition-method-is-input-loop-broken-at-end)(input: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_input\_reset](#class-animationnodetransition-method-is-input-reset)(input: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_input\_set\_as\_auto\_advance](#class-animationnodetransition-method-is-input-set-as-auto-advance)(input: [int](class_int.md#class-int)) const |
| void | [set\_input\_as\_auto\_advance](#class-animationnodetransition-method-set-input-as-auto-advance)(input: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_input\_break\_loop\_at\_end](#class-animationnodetransition-method-set-input-break-loop-at-end)(input: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_input\_reset](#class-animationnodetransition-method-set-input-reset)(input: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_transition\_to\_self** = `false` [🔗](#class-animationnodetransition-property-allow-transition-to-self)

- void **set\_allow\_transition\_to\_self**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_allow\_transition\_to\_self**()


If `true`, allows transition to the self state. When the reset option is enabled in input, the animation is restarted. If `false`, nothing happens on the transition to the self state.

* * *

[int](class_int.md#class-int) **input\_count** = `0` [🔗](#class-animationnodetransition-property-input-count)

- void **set\_input\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_input\_count**()


The number of enabled input ports for this animation node.

* * *

[Curve](class_curve.md#class-curve) **xfade\_curve** [🔗](#class-animationnodetransition-property-xfade-curve)

- void **set\_xfade\_curve**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_xfade\_curve**()


Determines how cross-fading between animations is eased. If empty, the transition will be linear. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **xfade\_time** = `0.0` [🔗](#class-animationnodetransition-property-xfade-time)

- void **set\_xfade\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_xfade\_time**()


Cross-fading time (in seconds) between each animation connected to the inputs.

**Note:** **AnimationNodeTransition** transitions the current state immediately after the start of the fading. The precise remaining time can only be inferred from the main animation. When [AnimationNodeOutput](class_animationnodeoutput.md#class-animationnodeoutput) is considered as the most upstream, so the [xfade\_time](#class-animationnodetransition-property-xfade-time) is not scaled depending on the downstream delta. See also [AnimationNodeOneShot.fadeout\_time](class_animationnodeoneshot.md#class-animationnodeoneshot-property-fadeout-time).

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **is\_input\_loop\_broken\_at\_end**(input: [int](class_int.md#class-int)) const [🔗](#class-animationnodetransition-method-is-input-loop-broken-at-end)

Returns whether the animation breaks the loop at the end of the loop cycle for transition.

* * *

[bool](class_bool.md#class-bool) **is\_input\_reset**(input: [int](class_int.md#class-int)) const [🔗](#class-animationnodetransition-method-is-input-reset)

Returns whether the animation restarts when the animation transitions from the other animation.

* * *

[bool](class_bool.md#class-bool) **is\_input\_set\_as\_auto\_advance**(input: [int](class_int.md#class-int)) const [🔗](#class-animationnodetransition-method-is-input-set-as-auto-advance)

Returns `true` if auto-advance is enabled for the given `input` index.

* * *

void **set\_input\_as\_auto\_advance**(input: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-animationnodetransition-method-set-input-as-auto-advance)

Enables or disables auto-advance for the given `input` index. If enabled, state changes to the next input after playing the animation once. If enabled for the last input state, it loops to the first.

* * *

void **set\_input\_break\_loop\_at\_end**(input: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-animationnodetransition-method-set-input-break-loop-at-end)

If `true`, breaks the loop at the end of the loop cycle for transition, even if the animation is looping.

* * *

void **set\_input\_reset**(input: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-animationnodetransition-method-set-input-reset)

If `true`, the destination animation is restarted when the animation transitions.

[Previous](class_animationnodetimeseek.md "AnimationNodeTimeSeek") [Next](class_animationrootnode.md "AnimationRootNode")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodetimeseek.md "AnimationNodeTimeSeek") [Next](class_animationrootnode.md "AnimationRootNode")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).