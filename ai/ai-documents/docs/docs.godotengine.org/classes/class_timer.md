---
title: Timer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_timer.html
crawled_at: "2026-08-13T10:27:05+12:00"
content_hash: 238e87065a62ec0809181110b9dd7b988785c15047e16b51b17052fa7d1966d5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Timer

* * *

# Timer

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A countdown timer.

## Description

The **Timer** node is a countdown timer and is the simplest way to handle time-based logic in the engine. When a timer reaches the end of its [wait\_time](#class-timer-property-wait-time), it will emit the [timeout](#class-timer-signal-timeout) signal.

After a timer enters the scene tree, it can be manually started with [start()](#class-timer-method-start). A timer node is also started automatically if [autostart](#class-timer-property-autostart) is `true`.

Without requiring much code, a timer node can be added and configured in the editor. The [timeout](#class-timer-signal-timeout) signal it emits can also be connected through the Node dock in the editor:

```
func _on_timer_timeout():
    print("Time to attack!")

```

**Note:** To create a one-shot timer without instantiating a node, use [SceneTree.create\_timer()](class_scenetree.md#class-scenetree-method-create-timer).

**Note:** Timers are affected by [Engine.time\_scale](class_engine.md#class-engine-property-time-scale) unless [ignore\_time\_scale](#class-timer-property-ignore-time-scale) is `true`. The higher the time scale, the sooner timers will end. How often a timer processes may depend on the framerate or [Engine.physics\_ticks\_per\_second](class_engine.md#class-engine-property-physics-ticks-per-second).

## Tutorials

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [autostart](#class-timer-property-autostart) | `false` |
| [bool](class_bool.md#class-bool) | [ignore\_time\_scale](#class-timer-property-ignore-time-scale) | `false` |
| [bool](class_bool.md#class-bool) | [one\_shot](#class-timer-property-one-shot) | `false` |
| [bool](class_bool.md#class-bool) | [paused](#class-timer-property-paused) |  |
| [TimerProcessCallback](#enum-timer-timerprocesscallback) | [process\_callback](#class-timer-property-process-callback) | `1` |
| [float](class_float.md#class-float) | [time\_left](#class-timer-property-time-left) |  |
| [float](class_float.md#class-float) | [wait\_time](#class-timer-property-wait-time) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [is\_stopped](#class-timer-method-is-stopped)() const |
| void | [start](#class-timer-method-start)(time\_sec: [float](class_float.md#class-float) = -1) |
| void | [stop](#class-timer-method-stop)() |

* * *

## Signals

**timeout**() [🔗](#class-timer-signal-timeout)

Emitted when the timer reaches the end.

* * *

## Enumerations

enum **TimerProcessCallback**: [🔗](#enum-timer-timerprocesscallback)

[TimerProcessCallback](#enum-timer-timerprocesscallback) **TIMER\_PROCESS\_PHYSICS** = `0`

Update the timer every physics process frame (see [Node.NOTIFICATION\_INTERNAL\_PHYSICS\_PROCESS](class_node.md#class-node-constant-notification-internal-physics-process)).

[TimerProcessCallback](#enum-timer-timerprocesscallback) **TIMER\_PROCESS\_IDLE** = `1`

Update the timer every process (rendered) frame (see [Node.NOTIFICATION\_INTERNAL\_PROCESS](class_node.md#class-node-constant-notification-internal-process)).

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **autostart** = `false` [🔗](#class-timer-property-autostart)

- void **set\_autostart**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_autostart**()


If `true`, the timer will start immediately when it enters the scene tree.

**Note:** After the timer enters the tree, this property is automatically set to `false`.

**Note:** This property does nothing when the timer is running in the editor.

* * *

[bool](class_bool.md#class-bool) **ignore\_time\_scale** = `false` [🔗](#class-timer-property-ignore-time-scale)

- void **set\_ignore\_time\_scale**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ignoring\_time\_scale**()


If `true`, the timer will ignore [Engine.time\_scale](class_engine.md#class-engine-property-time-scale) and update with the real, elapsed time.

* * *

[bool](class_bool.md#class-bool) **one\_shot** = `false` [🔗](#class-timer-property-one-shot)

- void **set\_one\_shot**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_one\_shot**()


If `true`, the timer will stop after reaching the end. Otherwise, as by default, the timer will automatically restart.

* * *

[bool](class_bool.md#class-bool) **paused** [🔗](#class-timer-property-paused)

- void **set\_paused**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_paused**()


If `true`, the timer is paused. A paused timer does not process until this property is set back to `false`, even when [start()](#class-timer-method-start) is called. See also [stop()](#class-timer-method-stop).

* * *

[TimerProcessCallback](#enum-timer-timerprocesscallback) **process\_callback** = `1` [🔗](#class-timer-property-process-callback)

- void **set\_timer\_process\_callback**(value: [TimerProcessCallback](#enum-timer-timerprocesscallback))

- [TimerProcessCallback](#enum-timer-timerprocesscallback) **get\_timer\_process\_callback**()


Specifies when the timer is updated during the main loop.

* * *

[float](class_float.md#class-float) **time\_left** [🔗](#class-timer-property-time-left)

- [float](class_float.md#class-float) **get\_time\_left**()


The timer's remaining time in seconds. This is always `0` if the timer is stopped.

**Note:** This property is read-only and cannot be modified. It is based on [wait\_time](#class-timer-property-wait-time).

* * *

[float](class_float.md#class-float) **wait\_time** = `1.0` [🔗](#class-timer-property-wait-time)

- void **set\_wait\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_wait\_time**()


The time required for the timer to end, in seconds. This property can also be set every time [start()](#class-timer-method-start) is called.

**Note:** Timers can only process once per physics or process frame (depending on the [process\_callback](#class-timer-property-process-callback)). An unstable framerate may cause the timer to end inconsistently, which is especially noticeable if the wait time is lower than roughly `0.05` seconds. For very short timers, it is recommended to write your own code instead of using a **Timer** node. Timers are also affected by [Engine.time\_scale](class_engine.md#class-engine-property-time-scale).

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **is\_stopped**() const [🔗](#class-timer-method-is-stopped)

Returns `true` if the timer is stopped or has not started.

* * *

void **start**(time\_sec: [float](class_float.md#class-float) = -1) [🔗](#class-timer-method-start)

Starts the timer, or resets the timer if it was started already. Fails if the timer is not inside the scene tree. If `time_sec` is greater than `0`, this value is used for the [wait\_time](#class-timer-property-wait-time).

**Note:** This method does not resume a paused timer. See [paused](#class-timer-property-paused).

* * *

void **stop**() [🔗](#class-timer-method-stop)

Stops the timer. See also [paused](#class-timer-property-paused). Unlike [start()](#class-timer-method-start), this can safely be called if the timer is not inside the scene tree.

**Note:** Calling [stop()](#class-timer-method-stop) does not emit the [timeout](#class-timer-signal-timeout) signal, as the timer is not considered to have timed out. If this is desired, use `$Timer.timeout.emit()` after calling [stop()](#class-timer-method-stop) to manually emit the signal.

[Previous](class_tilemaplayer.md "TileMapLayer") [Next](class_touchscreenbutton.md "TouchScreenButton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tilemaplayer.md "TileMapLayer") [Next](class_touchscreenbutton.md "TouchScreenButton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).