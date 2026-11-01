---
title: AnimationNodeStateMachinePlayback — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodestatemachineplayback.html
crawled_at: "2026-08-13T10:21:41+12:00"
content_hash: 76595e62988618117aa488b57328aa1b87f5cdc0e146f6083d01540a45dcbbc5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeStateMachinePlayback

* * *

# AnimationNodeStateMachinePlayback

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides playback control for an [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine).

## Description

Allows control of [AnimationTree](class_animationtree.md#class-animationtree) state machines created with [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine). Retrieve with `$AnimationTree.get("parameters/playback")`.

GDScriptC#

```
var state_machine = $AnimationTree.get("parameters/playback")
state_machine.travel("some_state")

```

```
var stateMachine = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback").As<AnimationNodeStateMachinePlayback>();
stateMachine.Travel("some_state");

```

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `true` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_current\_length](#class-animationnodestatemachineplayback-method-get-current-length)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_current\_node](#class-animationnodestatemachineplayback-method-get-current-node)() const |
| [float](class_float.md#class-float) | [get\_current\_play\_position](#class-animationnodestatemachineplayback-method-get-current-play-position)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_fading\_from\_node](#class-animationnodestatemachineplayback-method-get-fading-from-node)() const |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [get\_travel\_path](#class-animationnodestatemachineplayback-method-get-travel-path)() const |
| [bool](class_bool.md#class-bool) | [is\_playing](#class-animationnodestatemachineplayback-method-is-playing)() const |
| void | [next](#class-animationnodestatemachineplayback-method-next)() |
| void | [start](#class-animationnodestatemachineplayback-method-start)(node: [StringName](class_stringname.md#class-stringname), reset: [bool](class_bool.md#class-bool) = true) |
| void | [stop](#class-animationnodestatemachineplayback-method-stop)() |
| void | [travel](#class-animationnodestatemachineplayback-method-travel)(to\_node: [StringName](class_stringname.md#class-stringname), reset\_on\_teleport: [bool](class_bool.md#class-bool) = true) |

* * *

## Signals

**state\_finished**(state: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationnodestatemachineplayback-signal-state-finished)

Emitted when the `state` finishes playback. If `state` is a state machine set to grouped mode, its signals are passed through with its name prefixed.

If there is a crossfade, this will be fired when the influence of the [get\_fading\_from\_node()](#class-animationnodestatemachineplayback-method-get-fading-from-node) animation is no longer present.

* * *

**state\_started**(state: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationnodestatemachineplayback-signal-state-started)

Emitted when the `state` starts playback. If `state` is a state machine set to grouped mode, its signals are passed through with its name prefixed.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_current\_length**() const [🔗](#class-animationnodestatemachineplayback-method-get-current-length)

Returns the current state length.

**Note:** It is possible that any [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) can be nodes as well as animations. This means that there can be multiple animations within a single state. Which animation length has priority depends on the nodes connected inside it. Also, if a transition does not reset, the remaining length at that point will be returned.

* * *

[StringName](class_stringname.md#class-stringname) **get\_current\_node**() const [🔗](#class-animationnodestatemachineplayback-method-get-current-node)

Returns the currently playing animation state.

**Note:** When using a cross-fade, the current state changes to the next state immediately after the cross-fade begins.

* * *

[float](class_float.md#class-float) **get\_current\_play\_position**() const [🔗](#class-animationnodestatemachineplayback-method-get-current-play-position)

Returns the playback position within the current animation state.

* * *

[StringName](class_stringname.md#class-stringname) **get\_fading\_from\_node**() const [🔗](#class-animationnodestatemachineplayback-method-get-fading-from-node)

Returns the starting state of currently fading animation.

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **get\_travel\_path**() const [🔗](#class-animationnodestatemachineplayback-method-get-travel-path)

Returns the current travel path as computed internally by the A\* algorithm.

* * *

[bool](class_bool.md#class-bool) **is\_playing**() const [🔗](#class-animationnodestatemachineplayback-method-is-playing)

Returns `true` if an animation is playing.

* * *

void **next**() [🔗](#class-animationnodestatemachineplayback-method-next)

If there is a next path by travel or auto advance, immediately transitions from the current state to the next state.

* * *

void **start**(node: [StringName](class_stringname.md#class-stringname), reset: [bool](class_bool.md#class-bool) = true) [🔗](#class-animationnodestatemachineplayback-method-start)

Starts playing the given animation.

If `reset` is `true`, the animation is played from the beginning.

* * *

void **stop**() [🔗](#class-animationnodestatemachineplayback-method-stop)

Stops the currently playing animation.

* * *

void **travel**(to\_node: [StringName](class_stringname.md#class-stringname), reset\_on\_teleport: [bool](class_bool.md#class-bool) = true) [🔗](#class-animationnodestatemachineplayback-method-travel)

Transitions from the current state to another one, following the shortest path.

If the path does not connect from the current state, the animation will play after the state teleports.

If `reset_on_teleport` is `true`, the animation is played from the beginning when the travel cause a teleportation.

[Previous](class_animationnodestatemachine.md "AnimationNodeStateMachine") [Next](class_animationnodestatemachinetransition.md "AnimationNodeStateMachineTransition")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodestatemachine.md "AnimationNodeStateMachine") [Next](class_animationnodestatemachinetransition.md "AnimationNodeStateMachineTransition")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).