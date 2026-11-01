---
title: AnimationNodeStateMachine — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodestatemachine.html
crawled_at: "2026-08-13T10:36:34+12:00"
content_hash: 24ed0d90fa2c97f60ff8d36c756447ae62862155113a681fc6497a651d2063dc
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeStateMachine

* * *

# AnimationNodeStateMachine

**Inherits:** [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A state machine with multiple [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) s, used by [AnimationTree](class_animationtree.md#class-animationtree).

## Description

Contains multiple [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) s representing animation states, connected in a graph. State transitions can be configured to happen automatically or via code, using a shortest-path algorithm. Retrieve the [AnimationNodeStateMachinePlayback](class_animationnodestatemachineplayback.md#class-animationnodestatemachineplayback) object from the [AnimationTree](class_animationtree.md#class-animationtree) node to control it programmatically.

GDScriptC#

```
var state_machine = $AnimationTree.get("parameters/playback")
state_machine.travel("some_state")

```

```
var stateMachine = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback") as AnimationNodeStateMachinePlayback;
stateMachine.Travel("some_state");

```

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_transition\_to\_self](#class-animationnodestatemachine-property-allow-transition-to-self) | `false` |
| [bool](class_bool.md#class-bool) | [reset\_ends](#class-animationnodestatemachine-property-reset-ends) | `false` |
| [StateMachineType](#enum-animationnodestatemachine-statemachinetype) | [state\_machine\_type](#class-animationnodestatemachine-property-state-machine-type) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_node](#class-animationnodestatemachine-method-add-node)(name: [StringName](class_stringname.md#class-stringname), node: [AnimationNode](class_animationnode.md#class-animationnode), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [add\_transition](#class-animationnodestatemachine-method-add-transition)(from: [StringName](class_stringname.md#class-stringname), to: [StringName](class_stringname.md#class-stringname), transition: [AnimationNodeStateMachineTransition](class_animationnodestatemachinetransition.md#class-animationnodestatemachinetransition)) |
| [Vector2](class_vector2.md#class-vector2) | [get\_graph\_offset](#class-animationnodestatemachine-method-get-graph-offset)() const |
| [AnimationNode](class_animationnode.md#class-animationnode) | [get\_node](#class-animationnodestatemachine-method-get-node)(name: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [get\_node\_list](#class-animationnodestatemachine-method-get-node-list)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_node\_name](#class-animationnodestatemachine-method-get-node-name)(node: [AnimationNode](class_animationnode.md#class-animationnode)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_node\_position](#class-animationnodestatemachine-method-get-node-position)(name: [StringName](class_stringname.md#class-stringname)) const |
| [AnimationNodeStateMachineTransition](class_animationnodestatemachinetransition.md#class-animationnodestatemachinetransition) | [get\_transition](#class-animationnodestatemachine-method-get-transition)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_transition\_count](#class-animationnodestatemachine-method-get-transition-count)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_transition\_from](#class-animationnodestatemachine-method-get-transition-from)(idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_transition\_to](#class-animationnodestatemachine-method-get-transition-to)(idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_node](#class-animationnodestatemachine-method-has-node)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_transition](#class-animationnodestatemachine-method-has-transition)(from: [StringName](class_stringname.md#class-stringname), to: [StringName](class_stringname.md#class-stringname)) const |
| void | [remove\_node](#class-animationnodestatemachine-method-remove-node)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_transition](#class-animationnodestatemachine-method-remove-transition)(from: [StringName](class_stringname.md#class-stringname), to: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_transition\_by\_index](#class-animationnodestatemachine-method-remove-transition-by-index)(idx: [int](class_int.md#class-int)) |
| void | [rename\_node](#class-animationnodestatemachine-method-rename-node)(name: [StringName](class_stringname.md#class-stringname), new\_name: [StringName](class_stringname.md#class-stringname)) |
| void | [replace\_node](#class-animationnodestatemachine-method-replace-node)(name: [StringName](class_stringname.md#class-stringname), node: [AnimationNode](class_animationnode.md#class-animationnode)) |
| void | [set\_graph\_offset](#class-animationnodestatemachine-method-set-graph-offset)(offset: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_node\_position](#class-animationnodestatemachine-method-set-node-position)(name: [StringName](class_stringname.md#class-stringname), position: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Enumerations

enum **StateMachineType**: [🔗](#enum-animationnodestatemachine-statemachinetype)

[StateMachineType](#enum-animationnodestatemachine-statemachinetype) **STATE\_MACHINE\_TYPE\_ROOT** = `0`

Seeking to the beginning is treated as playing from the start state. Transition to the end state is treated as exiting the state machine.

[StateMachineType](#enum-animationnodestatemachine-statemachinetype) **STATE\_MACHINE\_TYPE\_NESTED** = `1`

Seeking to the beginning is treated as seeking to the beginning of the animation in the current state. Transition to the end state, or the absence of transitions in each state, is treated as exiting the state machine.

[StateMachineType](#enum-animationnodestatemachine-statemachinetype) **STATE\_MACHINE\_TYPE\_GROUPED** = `2`

This is a grouped state machine that can be controlled from a parent state machine. It does not work independently. There must be a state machine with [state\_machine\_type](#class-animationnodestatemachine-property-state-machine-type) of [STATE\_MACHINE\_TYPE\_ROOT](#class-animationnodestatemachine-constant-state-machine-type-root) or [STATE\_MACHINE\_TYPE\_NESTED](#class-animationnodestatemachine-constant-state-machine-type-nested) in the parent or ancestor.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_transition\_to\_self** = `false` [🔗](#class-animationnodestatemachine-property-allow-transition-to-self)

- void **set\_allow\_transition\_to\_self**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_allow\_transition\_to\_self**()


If `true`, allows teleport to the self state with [AnimationNodeStateMachinePlayback.travel()](class_animationnodestatemachineplayback.md#class-animationnodestatemachineplayback-method-travel). When the reset option is enabled in [AnimationNodeStateMachinePlayback.travel()](class_animationnodestatemachineplayback.md#class-animationnodestatemachineplayback-method-travel), the animation is restarted. If `false`, nothing happens on the teleportation to the self state.

* * *

[bool](class_bool.md#class-bool) **reset\_ends** = `false` [🔗](#class-animationnodestatemachine-property-reset-ends)

- void **set\_reset\_ends**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **are\_ends\_reset**()


If `true`, treat the cross-fade to the start and end nodes as a blend with the RESET animation.

In most cases, when additional cross-fades are performed in the parent [AnimationNode](class_animationnode.md#class-animationnode) of the state machine, setting this property to `false` and matching the cross-fade time of the parent [AnimationNode](class_animationnode.md#class-animationnode) and the state machine's start node and end node gives good results.

* * *

[StateMachineType](#enum-animationnodestatemachine-statemachinetype) **state\_machine\_type** = `0` [🔗](#class-animationnodestatemachine-property-state-machine-type)

- void **set\_state\_machine\_type**(value: [StateMachineType](#enum-animationnodestatemachine-statemachinetype))

- [StateMachineType](#enum-animationnodestatemachine-statemachinetype) **get\_state\_machine\_type**()


This property can define the process of transitions for different use cases. See also [StateMachineType](#enum-animationnodestatemachine-statemachinetype).

* * *

## Method Descriptions

void **add\_node**(name: [StringName](class_stringname.md#class-stringname), node: [AnimationNode](class_animationnode.md#class-animationnode), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-animationnodestatemachine-method-add-node)

Adds a new animation node to the graph. The `position` is used for display in the editor.

* * *

void **add\_transition**(from: [StringName](class_stringname.md#class-stringname), to: [StringName](class_stringname.md#class-stringname), transition: [AnimationNodeStateMachineTransition](class_animationnodestatemachinetransition.md#class-animationnodestatemachinetransition)) [🔗](#class-animationnodestatemachine-method-add-transition)

Adds a transition between the given animation nodes.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_graph\_offset**() const [🔗](#class-animationnodestatemachine-method-get-graph-offset)

Returns the draw offset of the graph. Used for display in the editor.

* * *

[AnimationNode](class_animationnode.md#class-animationnode) **get\_node**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationnodestatemachine-method-get-node)

Returns the animation node with the given name.

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **get\_node\_list**() const [🔗](#class-animationnodestatemachine-method-get-node-list)

Returns a list containing the names of all animation nodes in this state machine.

* * *

[StringName](class_stringname.md#class-stringname) **get\_node\_name**(node: [AnimationNode](class_animationnode.md#class-animationnode)) const [🔗](#class-animationnodestatemachine-method-get-node-name)

Returns the given animation node's name.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_node\_position**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationnodestatemachine-method-get-node-position)

Returns the given animation node's coordinates. Used for display in the editor.

* * *

[AnimationNodeStateMachineTransition](class_animationnodestatemachinetransition.md#class-animationnodestatemachinetransition) **get\_transition**(idx: [int](class_int.md#class-int)) const [🔗](#class-animationnodestatemachine-method-get-transition)

Returns the given transition.

* * *

[int](class_int.md#class-int) **get\_transition\_count**() const [🔗](#class-animationnodestatemachine-method-get-transition-count)

Returns the number of connections in the graph.

* * *

[StringName](class_stringname.md#class-stringname) **get\_transition\_from**(idx: [int](class_int.md#class-int)) const [🔗](#class-animationnodestatemachine-method-get-transition-from)

Returns the given transition's start node.

* * *

[StringName](class_stringname.md#class-stringname) **get\_transition\_to**(idx: [int](class_int.md#class-int)) const [🔗](#class-animationnodestatemachine-method-get-transition-to)

Returns the given transition's end node.

* * *

[bool](class_bool.md#class-bool) **has\_node**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationnodestatemachine-method-has-node)

Returns `true` if the graph contains the given animation node.

* * *

[bool](class_bool.md#class-bool) **has\_transition**(from: [StringName](class_stringname.md#class-stringname), to: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationnodestatemachine-method-has-transition)

Returns `true` if there is a transition between the given animation nodes.

* * *

void **remove\_node**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationnodestatemachine-method-remove-node)

Deletes the given animation node from the graph.

* * *

void **remove\_transition**(from: [StringName](class_stringname.md#class-stringname), to: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationnodestatemachine-method-remove-transition)

Deletes the transition between the two specified animation nodes.

* * *

void **remove\_transition\_by\_index**(idx: [int](class_int.md#class-int)) [🔗](#class-animationnodestatemachine-method-remove-transition-by-index)

Deletes the given transition by index.

* * *

void **rename\_node**(name: [StringName](class_stringname.md#class-stringname), new\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationnodestatemachine-method-rename-node)

Renames the given animation node.

* * *

void **replace\_node**(name: [StringName](class_stringname.md#class-stringname), node: [AnimationNode](class_animationnode.md#class-animationnode)) [🔗](#class-animationnodestatemachine-method-replace-node)

Replaces the given animation node with a new animation node.

* * *

void **set\_graph\_offset**(offset: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-animationnodestatemachine-method-set-graph-offset)

Sets the draw offset of the graph. Used for display in the editor.

* * *

void **set\_node\_position**(name: [StringName](class_stringname.md#class-stringname), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-animationnodestatemachine-method-set-node-position)

Sets the animation node's coordinates. Used for display in the editor.

[Previous](class_animationnodeoutput.md "AnimationNodeOutput") [Next](class_animationnodestatemachineplayback.md "AnimationNodeStateMachinePlayback")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodeoutput.md "AnimationNodeOutput") [Next](class_animationnodestatemachineplayback.md "AnimationNodeStateMachinePlayback")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).