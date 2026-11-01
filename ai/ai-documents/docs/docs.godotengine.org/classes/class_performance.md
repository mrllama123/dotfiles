---
title: Performance — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_performance.html
crawled_at: "2026-08-13T10:36:05+12:00"
content_hash: dc5a65fc6e3944bd504e775457d6626bbfdf60453d7eadcf3545a865b1a746f9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Performance

* * *

# Performance

**Inherits:** [Object](class_object.md#class-object)

Exposes performance-related data.

## Description

This class provides access to a number of different monitors related to performance, such as memory usage, draw calls, and FPS. These are the same as the values displayed in the **Monitor** tab in the editor's **Debugger** panel. By using the [get\_monitor()](#class-performance-method-get-monitor) method of this class, you can access this data from your code.

You can add custom monitors using the [add\_custom\_monitor()](#class-performance-method-add-custom-monitor) method. Custom monitors are available in **Monitor** tab in the editor's **Debugger** panel together with built-in monitors.

**Note:** Some of the built-in monitors are only available in debug mode and will always return `0` when used in a project exported in release mode.

**Note:** Some of the built-in monitors are not updated in real-time for performance reasons, so there may be a delay of up to 1 second between changes.

**Note:** Custom monitors do not support negative values. Negative values are clamped to 0.

## Methods

|     |     |
| --- | --- |
| void | [add\_custom\_monitor](#class-performance-method-add-custom-monitor)(id: [StringName](class_stringname.md#class-stringname), callable: [Callable](class_callable.md#class-callable), arguments: [Array](class_array.md#class-array) = \[\]) |
| [Variant](class_variant.md#class-variant) | [get\_custom\_monitor](#class-performance-method-get-custom-monitor)(id: [StringName](class_stringname.md#class-stringname)) |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [get\_custom\_monitor\_names](#class-performance-method-get-custom-monitor-names)() |
| [float](class_float.md#class-float) | [get\_monitor](#class-performance-method-get-monitor)(monitor: [Monitor](#enum-performance-monitor)) const |
| [int](class_int.md#class-int) | [get\_monitor\_modification\_time](#class-performance-method-get-monitor-modification-time)() |
| [bool](class_bool.md#class-bool) | [has\_custom\_monitor](#class-performance-method-has-custom-monitor)(id: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_custom\_monitor](#class-performance-method-remove-custom-monitor)(id: [StringName](class_stringname.md#class-stringname)) |

* * *

## Enumerations

enum **Monitor**: [🔗](#enum-performance-monitor)

[Monitor](#enum-performance-monitor) **TIME\_FPS** = `0`

The number of frames rendered in the last second. This metric is only updated once per second, even if queried more often. _Higher is better._

[Monitor](#enum-performance-monitor) **TIME\_PROCESS** = `1`

Time it took to complete one frame, in seconds. _Lower is better._

[Monitor](#enum-performance-monitor) **TIME\_PHYSICS\_PROCESS** = `2`

Time it took to complete one physics frame, in seconds. _Lower is better._

[Monitor](#enum-performance-monitor) **TIME\_NAVIGATION\_PROCESS** = `3`

Time it took to complete one navigation step, in seconds. This includes navigation map updates as well as agent avoidance calculations. _Lower is better._

[Monitor](#enum-performance-monitor) **MEMORY\_STATIC** = `4`

Static memory currently used, in bytes. Not available in release builds. _Lower is better._

[Monitor](#enum-performance-monitor) **MEMORY\_STATIC\_MAX** = `5`

Available static memory. Not available in release builds. _Lower is better._

[Monitor](#enum-performance-monitor) **MEMORY\_MESSAGE\_BUFFER\_MAX** = `6`

Largest amount of memory the message queue buffer has used, in bytes. The message queue is used for deferred functions calls and notifications. _Lower is better._

[Monitor](#enum-performance-monitor) **OBJECT\_COUNT** = `7`

Number of objects currently instantiated (including nodes). _Lower is better._

[Monitor](#enum-performance-monitor) **OBJECT\_RESOURCE\_COUNT** = `8`

Number of resources currently used. _Lower is better._

[Monitor](#enum-performance-monitor) **OBJECT\_NODE\_COUNT** = `9`

Number of nodes currently instantiated in the scene tree. This also includes the root node. _Lower is better._

[Monitor](#enum-performance-monitor) **OBJECT\_ORPHAN\_NODE\_COUNT** = `10`

Number of orphan nodes, i.e. nodes which are not parented to a node of the scene tree. _Lower is better._

[Monitor](#enum-performance-monitor) **RENDER\_TOTAL\_OBJECTS\_IN\_FRAME** = `11`

The total number of objects in the last rendered frame. This metric doesn't include culled objects (either via hiding nodes, frustum culling or occlusion culling). _Lower is better._

[Monitor](#enum-performance-monitor) **RENDER\_TOTAL\_PRIMITIVES\_IN\_FRAME** = `12`

The total number of vertices or indices rendered in the last rendered frame. This metric doesn't include primitives from culled objects (either via hiding nodes, frustum culling or occlusion culling). Due to the depth prepass and shadow passes, the number of primitives is always higher than the actual number of vertices in the scene (typically double or triple the original vertex count). _Lower is better._

[Monitor](#enum-performance-monitor) **RENDER\_TOTAL\_DRAW\_CALLS\_IN\_FRAME** = `13`

The total number of draw calls performed in the last rendered frame. This metric doesn't include culled objects (either via hiding nodes, frustum culling or occlusion culling), since they do not result in draw calls. _Lower is better._

[Monitor](#enum-performance-monitor) **RENDER\_VIDEO\_MEM\_USED** = `14`

The amount of video memory used (texture and vertex memory combined, in bytes). Since this metric also includes miscellaneous allocations, this value is always greater than the sum of [RENDER\_TEXTURE\_MEM\_USED](#class-performance-constant-render-texture-mem-used) and [RENDER\_BUFFER\_MEM\_USED](#class-performance-constant-render-buffer-mem-used). _Lower is better._

[Monitor](#enum-performance-monitor) **RENDER\_TEXTURE\_MEM\_USED** = `15`

The amount of texture memory used (in bytes). _Lower is better._

[Monitor](#enum-performance-monitor) **RENDER\_BUFFER\_MEM\_USED** = `16`

The amount of render buffer memory used (in bytes). _Lower is better._

[Monitor](#enum-performance-monitor) **PHYSICS\_2D\_ACTIVE\_OBJECTS** = `17`

Number of active [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d) nodes in the game. _Lower is better._

[Monitor](#enum-performance-monitor) **PHYSICS\_2D\_COLLISION\_PAIRS** = `18`

Number of collision pairs in the 2D physics engine. _Lower is better._

[Monitor](#enum-performance-monitor) **PHYSICS\_2D\_ISLAND\_COUNT** = `19`

Number of islands in the 2D physics engine. _Lower is better._

[Monitor](#enum-performance-monitor) **PHYSICS\_3D\_ACTIVE\_OBJECTS** = `20`

Number of active [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) and [VehicleBody3D](class_vehiclebody3d.md#class-vehiclebody3d) nodes in the game. _Lower is better._

[Monitor](#enum-performance-monitor) **PHYSICS\_3D\_COLLISION\_PAIRS** = `21`

Number of collision pairs in the 3D physics engine. _Lower is better._

[Monitor](#enum-performance-monitor) **PHYSICS\_3D\_ISLAND\_COUNT** = `22`

Number of islands in the 3D physics engine. _Lower is better._

[Monitor](#enum-performance-monitor) **AUDIO\_OUTPUT\_LATENCY** = `23`

Output latency of the [AudioServer](class_audioserver.md#class-audioserver). Equivalent to calling [AudioServer.get\_output\_latency()](class_audioserver.md#class-audioserver-method-get-output-latency), it is not recommended to call this every frame.

[Monitor](#enum-performance-monitor) **NAVIGATION\_ACTIVE\_MAPS** = `24`

Number of active navigation maps in [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) and [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d). This also includes the two empty default navigation maps created by World2D and World3D.

[Monitor](#enum-performance-monitor) **NAVIGATION\_REGION\_COUNT** = `25`

Number of active navigation regions in [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) and [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_AGENT\_COUNT** = `26`

Number of active navigation agents processing avoidance in [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) and [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_LINK\_COUNT** = `27`

Number of active navigation links in [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) and [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_POLYGON\_COUNT** = `28`

Number of navigation mesh polygons in [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) and [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_EDGE\_COUNT** = `29`

Number of navigation mesh polygon edges in [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) and [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_EDGE\_MERGE\_COUNT** = `30`

Number of navigation mesh polygon edges that were merged due to edge key overlap in [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) and [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_EDGE\_CONNECTION\_COUNT** = `31`

Number of polygon edges that are considered connected by edge proximity [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) and [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_EDGE\_FREE\_COUNT** = `32`

Number of navigation mesh polygon edges that could not be merged in [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) and [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d). The edges still may be connected by edge proximity or with links.

[Monitor](#enum-performance-monitor) **NAVIGATION\_OBSTACLE\_COUNT** = `33`

Number of active navigation obstacles in the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) and [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **PIPELINE\_COMPILATIONS\_CANVAS** = `34`

Number of pipeline compilations that were triggered by the 2D canvas renderer.

[Monitor](#enum-performance-monitor) **PIPELINE\_COMPILATIONS\_MESH** = `35`

Number of pipeline compilations that were triggered by loading meshes. These compilations will show up as longer loading times the first time a user runs the game and the pipeline is required.

[Monitor](#enum-performance-monitor) **PIPELINE\_COMPILATIONS\_SURFACE** = `36`

Number of pipeline compilations that were triggered by building the surface cache before rendering the scene. These compilations will show up as a stutter when loading a scene the first time a user runs the game and the pipeline is required.

[Monitor](#enum-performance-monitor) **PIPELINE\_COMPILATIONS\_DRAW** = `37`

Number of pipeline compilations that were triggered while drawing the scene. These compilations will show up as stutters during gameplay the first time a user runs the game and the pipeline is required.

[Monitor](#enum-performance-monitor) **PIPELINE\_COMPILATIONS\_SPECIALIZATION** = `38`

Number of pipeline compilations that were triggered to optimize the current scene. These compilations are done in the background and should not cause any stutters whatsoever.

[Monitor](#enum-performance-monitor) **NAVIGATION\_2D\_ACTIVE\_MAPS** = `39`

Number of active navigation maps in the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d). This also includes the two empty default navigation maps created by World2D.

[Monitor](#enum-performance-monitor) **NAVIGATION\_2D\_REGION\_COUNT** = `40`

Number of active navigation regions in the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_2D\_AGENT\_COUNT** = `41`

Number of active navigation agents processing avoidance in the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_2D\_LINK\_COUNT** = `42`

Number of active navigation links in the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_2D\_POLYGON\_COUNT** = `43`

Number of navigation mesh polygons in the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_2D\_EDGE\_COUNT** = `44`

Number of navigation mesh polygon edges in the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_2D\_EDGE\_MERGE\_COUNT** = `45`

Number of navigation mesh polygon edges that were merged due to edge key overlap in the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_2D\_EDGE\_CONNECTION\_COUNT** = `46`

Number of polygon edges that are considered connected by edge proximity [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_2D\_EDGE\_FREE\_COUNT** = `47`

Number of navigation mesh polygon edges that could not be merged in the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d). The edges still may be connected by edge proximity or with links.

[Monitor](#enum-performance-monitor) **NAVIGATION\_2D\_OBSTACLE\_COUNT** = `48`

Number of active navigation obstacles in the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_3D\_ACTIVE\_MAPS** = `49`

Number of active navigation maps in the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d). This also includes the two empty default navigation maps created by World3D.

[Monitor](#enum-performance-monitor) **NAVIGATION\_3D\_REGION\_COUNT** = `50`

Number of active navigation regions in the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_3D\_AGENT\_COUNT** = `51`

Number of active navigation agents processing avoidance in the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_3D\_LINK\_COUNT** = `52`

Number of active navigation links in the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_3D\_POLYGON\_COUNT** = `53`

Number of navigation mesh polygons in the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_3D\_EDGE\_COUNT** = `54`

Number of navigation mesh polygon edges in the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_3D\_EDGE\_MERGE\_COUNT** = `55`

Number of navigation mesh polygon edges that were merged due to edge key overlap in the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_3D\_EDGE\_CONNECTION\_COUNT** = `56`

Number of polygon edges that are considered connected by edge proximity [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **NAVIGATION\_3D\_EDGE\_FREE\_COUNT** = `57`

Number of navigation mesh polygon edges that could not be merged in the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d). The edges still may be connected by edge proximity or with links.

[Monitor](#enum-performance-monitor) **NAVIGATION\_3D\_OBSTACLE\_COUNT** = `58`

Number of active navigation obstacles in the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

[Monitor](#enum-performance-monitor) **MONITOR\_MAX** = `59`

Represents the size of the [Monitor](#enum-performance-monitor) enum.

* * *

## Method Descriptions

void **add\_custom\_monitor**(id: [StringName](class_stringname.md#class-stringname), callable: [Callable](class_callable.md#class-callable), arguments: [Array](class_array.md#class-array) = \[\]) [🔗](#class-performance-method-add-custom-monitor)

Adds a custom monitor with the name `id`. You can specify the category of the monitor using slash delimiters in `id` (for example: `"Game/NumberOfNPCs"`). If there is more than one slash delimiter, then the default category is used. The default category is `"Custom"`. Prints an error if given `id` is already present.

GDScriptC#

```
func _ready():
    var monitor_value = Callable(self, "get_monitor_value")

    # Adds monitor with name "MyName" to category "MyCategory".
    Performance.add_custom_monitor("MyCategory/MyMonitor", monitor_value)

    # Adds monitor with name "MyName" to category "Custom".
    # Note: "MyCategory/MyMonitor" and "MyMonitor" have same name but different IDs, so the code is valid.
    Performance.add_custom_monitor("MyMonitor", monitor_value)

    # Adds monitor with name "MyName" to category "Custom".
    # Note: "MyMonitor" and "Custom/MyMonitor" have same name and same category but different IDs, so the code is valid.
    Performance.add_custom_monitor("Custom/MyMonitor", monitor_value)

    # Adds monitor with name "MyCategoryOne/MyCategoryTwo/MyMonitor" to category "Custom".
    Performance.add_custom_monitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitor_value)

func get_monitor_value():
    return randi() % 25

```

```
public override void _Ready()
{
    var monitorValue = new Callable(this, MethodName.GetMonitorValue);

    // Adds monitor with name "MyName" to category "MyCategory".
    Performance.AddCustomMonitor("MyCategory/MyMonitor", monitorValue);
    // Adds monitor with name "MyName" to category "Custom".
    // Note: "MyCategory/MyMonitor" and "MyMonitor" have same name but different ids so the code is valid.
    Performance.AddCustomMonitor("MyMonitor", monitorValue);

    // Adds monitor with name "MyName" to category "Custom".
    // Note: "MyMonitor" and "Custom/MyMonitor" have same name and same category but different ids so the code is valid.
    Performance.AddCustomMonitor("Custom/MyMonitor", monitorValue);

    // Adds monitor with name "MyCategoryOne/MyCategoryTwo/MyMonitor" to category "Custom".
    Performance.AddCustomMonitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitorValue);
}

public int GetMonitorValue()
{
    return GD.Randi() % 25;
}

```

The debugger calls the callable to get the value of custom monitor. The callable must return a zero or positive integer or floating-point number.

Callables are called with arguments supplied in argument array.

* * *

[Variant](class_variant.md#class-variant) **get\_custom\_monitor**(id: [StringName](class_stringname.md#class-stringname)) [🔗](#class-performance-method-get-custom-monitor)

Returns the value of custom monitor with given `id`. The callable is called to get the value of custom monitor. See also [has\_custom\_monitor()](#class-performance-method-has-custom-monitor). Prints an error if the given `id` is absent.

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **get\_custom\_monitor\_names**() [🔗](#class-performance-method-get-custom-monitor-names)

Returns the names of active custom monitors in an [Array](class_array.md#class-array).

* * *

[float](class_float.md#class-float) **get\_monitor**(monitor: [Monitor](#enum-performance-monitor)) const [🔗](#class-performance-method-get-monitor)

Returns the value of one of the available built-in monitors. You should provide one of the [Monitor](#enum-performance-monitor) constants as the argument, like this:

GDScriptC#

```
print(Performance.get_monitor(Performance.TIME_FPS)) # Prints the FPS to the console.

```

```
GD.Print(Performance.GetMonitor(Performance.Monitor.TimeFps)); // Prints the FPS to the console.

```

See [get\_custom\_monitor()](#class-performance-method-get-custom-monitor) to query custom performance monitors' values.

* * *

[int](class_int.md#class-int) **get\_monitor\_modification\_time**() [🔗](#class-performance-method-get-monitor-modification-time)

Returns the last tick in which custom monitor was added/removed (in microseconds since the engine started). This is set to [Time.get\_ticks\_usec()](class_time.md#class-time-method-get-ticks-usec) when the monitor is updated.

* * *

[bool](class_bool.md#class-bool) **has\_custom\_monitor**(id: [StringName](class_stringname.md#class-stringname)) [🔗](#class-performance-method-has-custom-monitor)

Returns `true` if custom monitor with the given `id` is present, `false` otherwise.

* * *

void **remove\_custom\_monitor**(id: [StringName](class_stringname.md#class-stringname)) [🔗](#class-performance-method-remove-custom-monitor)

Removes the custom monitor with given `id`. Prints an error if the given `id` is already absent.

[Previous](class_pckpacker.md "PCKPacker") [Next](class_physicsdirectbodystate2d.md "PhysicsDirectBodyState2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_pckpacker.md "PCKPacker") [Next](class_physicsdirectbodystate2d.md "PhysicsDirectBodyState2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).