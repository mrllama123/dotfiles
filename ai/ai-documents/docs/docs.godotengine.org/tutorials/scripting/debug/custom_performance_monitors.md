---
title: Custom performance monitors — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/debug/custom_performance_monitors.html
crawled_at: "2026-08-13T10:21:16+12:00"
content_hash: 641c044e5f0558ea28b7dffbab1fad60f1e2cf3d6ea74d8ee3e1bff5db30f6e7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Scripting](../index.md)
  - [Debug](index.md)
  - Custom performance monitors
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/debug/custom_performance_monitors.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Custom performance monitors

## Introduction

As explained in the [Debugger panel](debugger_panel.md#doc-debugger-panel) documentation, Godot features a
**Debugger > Monitors** bottom panel that allows tracking various values with
graphs showing their evolution over time. The data for those graphs is sourced
from the engine's [Performance](../../../classes/class_performance.md#class-performance) singleton.

Since Godot 4.0, you can declare custom values to be displayed in the Monitors
tab. Example use cases for custom performance monitors include:

- Displaying performance metrics that are specific to your project. For
instance, in a voxel game, you could create a performance monitor to track the
number of chunks that are loaded every second.

- Displaying in-game metrics that are not strictly related to performance, but
are still useful to graph for debugging purposes. For instance, you could
track the number of enemies present in the game to make sure your spawning
mechanic works as intended.


## Creating a custom performance monitor

In this example, we'll create a custom performance monitor to track how many
enemies are present in the currently running project.

The main scene features a [Timer](../../../classes/class_timer.md#class-timer) node with the following script attached:

```
extends Timer

func _ready():
    # The slash delimiter is used to determine the category of the monitor.
    # If there is no slash in the monitor name, a generic "Custom" category
    # will be used instead.
    Performance.add_custom_monitor("game/enemies", get_enemy_count)
    timeout.connect(_on_timeout)
    # Spawn 20 enemies per second.
    wait_time = 0.05
    start()

func _on_timeout():
    var enemy = preload("res://enemy.tscn").instantiate()
    get_parent().add_child(enemy)

# This function is called every time the performance monitor is queried
# (this occurs once per second in the editor, more if called manually).
# The function must return a number greater than or equal to 0 (int or float).
func get_enemy_count():
    return get_tree().get_nodes_in_group("enemies").size()

```

The second parameter of
[Performance.add\_custom\_monitor](../../../classes/class_performance.md#class-performance-method-add-custom-monitor)
is a [Callable](../../../classes/class_callable.md#class-callable).

`enemy.tscn` is a scene with a Node2D root node and Timer child node. The
Node2D has the following script attached:

```
extends Node2D

func _ready():
    add_to_group("enemies")
    $Timer.timeout.connect(_on_timer_timeout)
    # Despawn enemies 2.5 seconds after they spawn.
    $Timer.wait_time = 2.5
    $Timer.start()

func _on_timer_timeout():
    queue_free()

```

In this example, since we spawn 20 enemies per second, and each enemy despawns
2.5 seconds after they spawn, we expect the number of enemies present in the
scene to stabilize to 50. We can make sure about this by looking at the graph.

To visualize the graph created from this custom performance monitor, run the
project, switch to the editor while the project is running and open **Debugger >**
**Monitors** at the bottom of the editor window. Scroll down to the newly
available **Game** section and check **Enemies**. You should see a graph
appearing as follows:

![Example editor graph from a custom performance monitor](../../../_images/custom_performance_monitors_graph_example.webp)

Example editor graph from a custom performance monitor

Note

The performance monitor handling code doesn't have to live in the same
script as the nodes themselves. You may choose to move the performance
monitor registration and getter function to an [autoload](../singletons_autoload.md#doc-singletons-autoload) instead.

## Querying a performance monitor in a project

If you wish to display the value of the performance monitor in the running
project's window (rather than the editor), use
`Performance.get_custom_monitor("category/name")` to fetch the value of the
custom monitor. You can display the value using a [Label](../../../classes/class_label.md#class-label),
[RichTextLabel](../../../classes/class_richtextlabel.md#class-richtextlabel), [Custom drawing in 2D](../../2d/custom_drawing_in_2d.md#doc-custom-drawing-in-2d), [3D text](../../3d/3d_text.md#doc-3d-text),
etc.

This method can be used in exported projects as well (debug and release mode),
which allows you to create visualizations outside the editor.

[Previous](the_profiler.md "The Profiler") [Next](../idle_and_physics_processing.md "Idle and Physics Processing")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](the_profiler.md "The Profiler") [Next](../idle_and_physics_processing.md "Idle and Physics Processing")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).