---
title: AnimationNodeStateMachineTransition — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodestatemachinetransition.html
crawled_at: "2026-08-13T10:20:43+12:00"
content_hash: 33237b10536479a907eac97724f52725dfe8ea4e39cd79f212c3d7211d602a1b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeStateMachineTransition

* * *

# AnimationNodeStateMachineTransition

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A transition within an [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine) connecting two [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) s.

## Description

The path generated when using [AnimationNodeStateMachinePlayback.travel()](class_animationnodestatemachineplayback.md#class-animationnodestatemachineplayback-method-travel) is limited to the nodes connected by **AnimationNodeStateMachineTransition**.

You can set the timing and conditions of the transition in detail.

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [StringName](class_stringname.md#class-stringname) | [advance\_condition](#class-animationnodestatemachinetransition-property-advance-condition) | `&""` |
| [String](class_string.md#class-string) | [advance\_expression](#class-animationnodestatemachinetransition-property-advance-expression) | `""` |
| [AdvanceMode](#enum-animationnodestatemachinetransition-advancemode) | [advance\_mode](#class-animationnodestatemachinetransition-property-advance-mode) | `1` |
| [bool](class_bool.md#class-bool) | [break\_loop\_at\_end](#class-animationnodestatemachinetransition-property-break-loop-at-end) | `false` |
| [int](class_int.md#class-int) | [priority](#class-animationnodestatemachinetransition-property-priority) | `1` |
| [bool](class_bool.md#class-bool) | [reset](#class-animationnodestatemachinetransition-property-reset) | `true` |
| [SwitchMode](#enum-animationnodestatemachinetransition-switchmode) | [switch\_mode](#class-animationnodestatemachinetransition-property-switch-mode) | `0` |
| [Curve](class_curve.md#class-curve) | [xfade\_curve](#class-animationnodestatemachinetransition-property-xfade-curve) |  |
| [float](class_float.md#class-float) | [xfade\_time](#class-animationnodestatemachinetransition-property-xfade-time) | `0.0` |

* * *

## Signals

**advance\_condition\_changed**() [🔗](#class-animationnodestatemachinetransition-signal-advance-condition-changed)

Emitted when [advance\_condition](#class-animationnodestatemachinetransition-property-advance-condition) is changed.

* * *

## Enumerations

enum **SwitchMode**: [🔗](#enum-animationnodestatemachinetransition-switchmode)

[SwitchMode](#enum-animationnodestatemachinetransition-switchmode) **SWITCH\_MODE\_IMMEDIATE** = `0`

Switch to the next state immediately. The current state will end and blend into the beginning of the new one.

[SwitchMode](#enum-animationnodestatemachinetransition-switchmode) **SWITCH\_MODE\_SYNC** = `1`

Switch to the next state immediately, but will seek the new state to the playback position of the old state.

[SwitchMode](#enum-animationnodestatemachinetransition-switchmode) **SWITCH\_MODE\_AT\_END** = `2`

Wait for the current state playback to end, then switch to the beginning of the next state animation.

* * *

enum **AdvanceMode**: [🔗](#enum-animationnodestatemachinetransition-advancemode)

[AdvanceMode](#enum-animationnodestatemachinetransition-advancemode) **ADVANCE\_MODE\_DISABLED** = `0`

Don't use this transition.

[AdvanceMode](#enum-animationnodestatemachinetransition-advancemode) **ADVANCE\_MODE\_ENABLED** = `1`

Only use this transition during [AnimationNodeStateMachinePlayback.travel()](class_animationnodestatemachineplayback.md#class-animationnodestatemachineplayback-method-travel).

[AdvanceMode](#enum-animationnodestatemachinetransition-advancemode) **ADVANCE\_MODE\_AUTO** = `2`

Automatically use this transition if the [advance\_condition](#class-animationnodestatemachinetransition-property-advance-condition) and [advance\_expression](#class-animationnodestatemachinetransition-property-advance-expression) checks are `true` (if assigned).

* * *

## Property Descriptions

[StringName](class_stringname.md#class-stringname) **advance\_condition** = `&""` [🔗](#class-animationnodestatemachinetransition-property-advance-condition)

- void **set\_advance\_condition**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_advance\_condition**()


Turn on auto advance when this condition is set. The provided name will become a boolean parameter on the [AnimationTree](class_animationtree.md#class-animationtree) that can be controlled from code (see [Using AnimationTree](../tutorials/animation/animation_tree.md#controlling-from-code)). For example, if [AnimationTree.tree\_root](class_animationtree.md#class-animationtree-property-tree-root) is an [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine) and [advance\_condition](#class-animationnodestatemachinetransition-property-advance-condition) is set to `"idle"`:

GDScriptC#

```
$animation_tree.set("parameters/conditions/idle", is_on_floor and (linear_velocity.x == 0))

```

```
GetNode<AnimationTree>("animation_tree").Set("parameters/conditions/idle", IsOnFloor && (LinearVelocity.X == 0));

```

* * *

[String](class_string.md#class-string) **advance\_expression** = `""` [🔗](#class-animationnodestatemachinetransition-property-advance-expression)

- void **set\_advance\_expression**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_advance\_expression**()


Use an expression as a condition for state machine transitions. It is possible to create complex animation advance conditions for switching between states and gives much greater flexibility for creating complex state machines by directly interfacing with the script code.

* * *

[AdvanceMode](#enum-animationnodestatemachinetransition-advancemode) **advance\_mode** = `1` [🔗](#class-animationnodestatemachinetransition-property-advance-mode)

- void **set\_advance\_mode**(value: [AdvanceMode](#enum-animationnodestatemachinetransition-advancemode))

- [AdvanceMode](#enum-animationnodestatemachinetransition-advancemode) **get\_advance\_mode**()


Determines whether the transition should be disabled, enabled when using [AnimationNodeStateMachinePlayback.travel()](class_animationnodestatemachineplayback.md#class-animationnodestatemachineplayback-method-travel), or traversed automatically if the [advance\_condition](#class-animationnodestatemachinetransition-property-advance-condition) and [advance\_expression](#class-animationnodestatemachinetransition-property-advance-expression) checks are `true` (if assigned).

* * *

[bool](class_bool.md#class-bool) **break\_loop\_at\_end** = `false` [🔗](#class-animationnodestatemachinetransition-property-break-loop-at-end)

- void **set\_break\_loop\_at\_end**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_loop\_broken\_at\_end**()


If `true`, breaks the loop at the end of the loop cycle for transition, even if the animation is looping.

* * *

[int](class_int.md#class-int) **priority** = `1` [🔗](#class-animationnodestatemachinetransition-property-priority)

- void **set\_priority**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_priority**()


Lower priority transitions are preferred when travelling through the tree via [AnimationNodeStateMachinePlayback.travel()](class_animationnodestatemachineplayback.md#class-animationnodestatemachineplayback-method-travel) or [advance\_mode](#class-animationnodestatemachinetransition-property-advance-mode) is set to [ADVANCE\_MODE\_AUTO](#class-animationnodestatemachinetransition-constant-advance-mode-auto).

* * *

[bool](class_bool.md#class-bool) **reset** = `true` [🔗](#class-animationnodestatemachinetransition-property-reset)

- void **set\_reset**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_reset**()


If `true`, the destination animation is played back from the beginning when switched.

* * *

[SwitchMode](#enum-animationnodestatemachinetransition-switchmode) **switch\_mode** = `0` [🔗](#class-animationnodestatemachinetransition-property-switch-mode)

- void **set\_switch\_mode**(value: [SwitchMode](#enum-animationnodestatemachinetransition-switchmode))

- [SwitchMode](#enum-animationnodestatemachinetransition-switchmode) **get\_switch\_mode**()


The transition type.

* * *

[Curve](class_curve.md#class-curve) **xfade\_curve** [🔗](#class-animationnodestatemachinetransition-property-xfade-curve)

- void **set\_xfade\_curve**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_xfade\_curve**()


Ease curve for better control over cross-fade between this state and the next. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **xfade\_time** = `0.0` [🔗](#class-animationnodestatemachinetransition-property-xfade-time)

- void **set\_xfade\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_xfade\_time**()


The time to cross-fade between this state and the next.

**Note:** [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine) transitions the current state immediately after the start of the fading. The precise remaining time can only be inferred from the main animation. When [AnimationNodeOutput](class_animationnodeoutput.md#class-animationnodeoutput) is considered as the most upstream, so the [xfade\_time](#class-animationnodestatemachinetransition-property-xfade-time) is not scaled depending on the downstream delta. See also [AnimationNodeOneShot.fadeout\_time](class_animationnodeoneshot.md#class-animationnodeoneshot-property-fadeout-time).

[Previous](class_animationnodestatemachineplayback.md "AnimationNodeStateMachinePlayback") [Next](class_animationnodesub2.md "AnimationNodeSub2")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodestatemachineplayback.md "AnimationNodeStateMachinePlayback") [Next](class_animationnodesub2.md "AnimationNodeSub2")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).