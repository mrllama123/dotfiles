---
title: SceneTreeTimer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scenetreetimer.html
crawled_at: "2026-08-13T10:39:36+12:00"
content_hash: a684af9b1cdef59808a92cda9286db82a7d8a4751ca75f6a219a42d3c51a8ba2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SceneTreeTimer

* * *

# SceneTreeTimer

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

One-shot timer.

## Description

A one-shot timer managed by the scene tree, which emits [timeout](#class-scenetreetimer-signal-timeout) on completion. See also [SceneTree.create\_timer()](class_scenetree.md#class-scenetree-method-create-timer).

As opposed to [Timer](class_timer.md#class-timer), it does not require the instantiation of a node. Commonly used to create a one-shot delay timer as in the following example:

GDScriptC#

```
func some_function():
    print("Timer started.")
    await get_tree().create_timer(1.0).timeout
    print("Timer ended.")

```

```
public async Task SomeFunction()
{
    GD.Print("Timer started.");
    await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
    GD.Print("Timer ended.");
}

```

The timer will be dereferenced after its time elapses. To preserve the timer, you can keep a reference to it. See [RefCounted](class_refcounted.md#class-refcounted).

**Note:** The timer is processed after all of the nodes in the current frame, i.e. node's [Node.\_process()](class_node.md#class-node-private-method-process) method would be called before the timer (or [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) if `process_in_physics` in [SceneTree.create\_timer()](class_scenetree.md#class-scenetree-method-create-timer) has been set to `true`).

## Properties

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [time\_left](#class-scenetreetimer-property-time-left) |

* * *

## Signals

**timeout**() [🔗](#class-scenetreetimer-signal-timeout)

Emitted when the timer reaches 0.

* * *

## Property Descriptions

[float](class_float.md#class-float) **time\_left** [🔗](#class-scenetreetimer-property-time-left)

- void **set\_time\_left**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_time\_left**()


The time remaining (in seconds).

[Previous](class_scenetree.md "SceneTree") [Next](class_scriptbacktrace.md "ScriptBacktrace")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scenetree.md "SceneTree") [Next](class_scriptbacktrace.md "ScriptBacktrace")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).