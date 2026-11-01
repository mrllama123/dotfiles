---
title: NavigationAgent3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationagent3d.html
crawled_at: "2026-08-13T10:27:44+12:00"
content_hash: 4142c91364133d23c2b4c1589157e38daf9215bfed14315aa1d1302f7b57fa6c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationAgent3D

* * *

# NavigationAgent3D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 3D agent used to pathfind to a position while avoiding obstacles.

## Description

A 3D agent used to pathfind to a position while avoiding static and dynamic obstacles. The calculation can be used by the parent node to dynamically move it along the path. Requires navigation data to work correctly.

Dynamic obstacles are avoided using RVO collision avoidance. Avoidance is computed before physics, so the pathfinding information can be used safely in the physics step.

**Note:** After setting the [target\_position](#class-navigationagent3d-property-target-position) property, the [get\_next\_path\_position()](#class-navigationagent3d-method-get-next-path-position) method must be used once every physics frame to update the internal path logic of the navigation agent. The vector position it returns should be used as the next movement position for the agent's parent node.

**Note:** Several methods of this class, such as [get\_next\_path\_position()](#class-navigationagent3d-method-get-next-path-position), can trigger a new path calculation. Calling these in your callback to an agent's signal, such as [waypoint\_reached](#class-navigationagent3d-signal-waypoint-reached), can cause infinite recursion. It is recommended to call these methods in the physics step or, alternatively, delay their call until the end of the frame (see [Object.call\_deferred()](class_object.md#class-object-method-call-deferred) or [Object.CONNECT\_DEFERRED](class_object.md#class-object-constant-connect-deferred)).

## Tutorials

- [Using NavigationAgents](../tutorials/navigation/navigation_using_navigationagents.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [avoidance\_enabled](#class-navigationagent3d-property-avoidance-enabled) | `false` |
| [int](class_int.md#class-int) | [avoidance\_layers](#class-navigationagent3d-property-avoidance-layers) | `1` |
| [int](class_int.md#class-int) | [avoidance\_mask](#class-navigationagent3d-property-avoidance-mask) | `1` |
| [float](class_float.md#class-float) | [avoidance\_priority](#class-navigationagent3d-property-avoidance-priority) | `1.0` |
| [bool](class_bool.md#class-bool) | [debug\_enabled](#class-navigationagent3d-property-debug-enabled) | `false` |
| [Color](class_color.md#class-color) | [debug\_path\_custom\_color](#class-navigationagent3d-property-debug-path-custom-color) | `Color(1, 1, 1, 1)` |
| [float](class_float.md#class-float) | [debug\_path\_custom\_point\_size](#class-navigationagent3d-property-debug-path-custom-point-size) | `4.0` |
| [bool](class_bool.md#class-bool) | [debug\_use\_custom](#class-navigationagent3d-property-debug-use-custom) | `false` |
| [float](class_float.md#class-float) | [height](#class-navigationagent3d-property-height) | `1.0` |
| [bool](class_bool.md#class-bool) | [keep\_y\_velocity](#class-navigationagent3d-property-keep-y-velocity) | `true` |
| [int](class_int.md#class-int) | [max\_neighbors](#class-navigationagent3d-property-max-neighbors) | `10` |
| [float](class_float.md#class-float) | [max\_speed](#class-navigationagent3d-property-max-speed) | `10.0` |
| [int](class_int.md#class-int) | [navigation\_layers](#class-navigationagent3d-property-navigation-layers) | `1` |
| [float](class_float.md#class-float) | [neighbor\_distance](#class-navigationagent3d-property-neighbor-distance) | `50.0` |
| [float](class_float.md#class-float) | [path\_desired\_distance](#class-navigationagent3d-property-path-desired-distance) | `1.0` |
| [float](class_float.md#class-float) | [path\_height\_offset](#class-navigationagent3d-property-path-height-offset) | `0.0` |
| [float](class_float.md#class-float) | [path\_max\_distance](#class-navigationagent3d-property-path-max-distance) | `5.0` |
| BitField\[ [PathMetadataFlags](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathmetadataflags)\] | [path\_metadata\_flags](#class-navigationagent3d-property-path-metadata-flags) | `7` |
| [PathPostProcessing](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathpostprocessing) | [path\_postprocessing](#class-navigationagent3d-property-path-postprocessing) | `0` |
| [float](class_float.md#class-float) | [path\_return\_max\_length](#class-navigationagent3d-property-path-return-max-length) | `0.0` |
| [float](class_float.md#class-float) | [path\_return\_max\_radius](#class-navigationagent3d-property-path-return-max-radius) | `0.0` |
| [float](class_float.md#class-float) | [path\_search\_max\_distance](#class-navigationagent3d-property-path-search-max-distance) | `0.0` |
| [int](class_int.md#class-int) | [path\_search\_max\_polygons](#class-navigationagent3d-property-path-search-max-polygons) | `4096` |
| [PathfindingAlgorithm](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathfindingalgorithm) | [pathfinding\_algorithm](#class-navigationagent3d-property-pathfinding-algorithm) | `0` |
| [float](class_float.md#class-float) | [radius](#class-navigationagent3d-property-radius) | `0.5` |
| [float](class_float.md#class-float) | [simplify\_epsilon](#class-navigationagent3d-property-simplify-epsilon) | `0.0` |
| [bool](class_bool.md#class-bool) | [simplify\_path](#class-navigationagent3d-property-simplify-path) | `false` |
| [float](class_float.md#class-float) | [target\_desired\_distance](#class-navigationagent3d-property-target-desired-distance) | `1.0` |
| [Vector3](class_vector3.md#class-vector3) | [target\_position](#class-navigationagent3d-property-target-position) | `Vector3(0, 0, 0)` |
| [float](class_float.md#class-float) | [time\_horizon\_agents](#class-navigationagent3d-property-time-horizon-agents) | `1.0` |
| [float](class_float.md#class-float) | [time\_horizon\_obstacles](#class-navigationagent3d-property-time-horizon-obstacles) | `0.0` |
| [bool](class_bool.md#class-bool) | [use\_3d\_avoidance](#class-navigationagent3d-property-use-3d-avoidance) | `false` |
| [Vector3](class_vector3.md#class-vector3) | [velocity](#class-navigationagent3d-property-velocity) | `Vector3(0, 0, 0)` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [distance\_to\_target](#class-navigationagent3d-method-distance-to-target)() const |
| [bool](class_bool.md#class-bool) | [get\_avoidance\_layer\_value](#class-navigationagent3d-method-get-avoidance-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_avoidance\_mask\_value](#class-navigationagent3d-method-get-avoidance-mask-value)(mask\_number: [int](class_int.md#class-int)) const |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [get\_current\_navigation\_path](#class-navigationagent3d-method-get-current-navigation-path)() const |
| [int](class_int.md#class-int) | [get\_current\_navigation\_path\_index](#class-navigationagent3d-method-get-current-navigation-path-index)() const |
| [NavigationPathQueryResult3D](class_navigationpathqueryresult3d.md#class-navigationpathqueryresult3d) | [get\_current\_navigation\_result](#class-navigationagent3d-method-get-current-navigation-result)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_final\_position](#class-navigationagent3d-method-get-final-position)() |
| [bool](class_bool.md#class-bool) | [get\_navigation\_layer\_value](#class-navigationagent3d-method-get-navigation-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_navigation\_map](#class-navigationagent3d-method-get-navigation-map)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_next\_path\_position](#class-navigationagent3d-method-get-next-path-position)() |
| [float](class_float.md#class-float) | [get\_path\_length](#class-navigationagent3d-method-get-path-length)() const |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-navigationagent3d-method-get-rid)() const |
| [bool](class_bool.md#class-bool) | [is\_navigation\_finished](#class-navigationagent3d-method-is-navigation-finished)() |
| [bool](class_bool.md#class-bool) | [is\_target\_reachable](#class-navigationagent3d-method-is-target-reachable)() |
| [bool](class_bool.md#class-bool) | [is\_target\_reached](#class-navigationagent3d-method-is-target-reached)() const |
| void | [set\_avoidance\_layer\_value](#class-navigationagent3d-method-set-avoidance-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_avoidance\_mask\_value](#class-navigationagent3d-method-set-avoidance-mask-value)(mask\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_navigation\_layer\_value](#class-navigationagent3d-method-set-navigation-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_navigation\_map](#class-navigationagent3d-method-set-navigation-map)(navigation\_map: [RID](class_rid.md#class-rid)) |
| void | [set\_velocity\_forced](#class-navigationagent3d-method-set-velocity-forced)(velocity: [Vector3](class_vector3.md#class-vector3)) |

* * *

## Signals

**link\_reached**(details: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-navigationagent3d-signal-link-reached)

Signals that the agent reached a navigation link. Emitted when the agent moves within [path\_desired\_distance](#class-navigationagent3d-property-path-desired-distance) of the next position of the path when that position is a navigation link.

The details dictionary may contain the following keys depending on the value of [path\_metadata\_flags](#class-navigationagent3d-property-path-metadata-flags):

- `position`: The start position of the link that was reached.

- `type`: Always [NavigationPathQueryResult3D.PATH\_SEGMENT\_TYPE\_LINK](class_navigationpathqueryresult3d.md#class-navigationpathqueryresult3d-constant-path-segment-type-link).

- `rid`: The [RID](class_rid.md#class-rid) of the link.

- `owner`: The object which manages the link (usually [NavigationLink3D](class_navigationlink3d.md#class-navigationlink3d)).

- `link_entry_position`: If `owner` is available and the owner is a [NavigationLink3D](class_navigationlink3d.md#class-navigationlink3d), it will contain the global position of the link's point the agent is entering.

- `link_exit_position`: If `owner` is available and the owner is a [NavigationLink3D](class_navigationlink3d.md#class-navigationlink3d), it will contain the global position of the link's point which the agent is exiting.


* * *

**navigation\_finished**() [🔗](#class-navigationagent3d-signal-navigation-finished)

Signals that the agent's navigation has finished. If the target is reachable, navigation ends when the target is reached. If the target is unreachable, navigation ends when the last waypoint of the path is reached. This signal is emitted only once per loaded path.

This signal will be emitted just after [target\_reached](#class-navigationagent3d-signal-target-reached) when the target is reachable.

* * *

**path\_changed**() [🔗](#class-navigationagent3d-signal-path-changed)

Emitted when the agent had to update the loaded path:

- because path was previously empty.

- because navigation map has changed.

- because agent pushed further away from the current path segment than the [path\_max\_distance](#class-navigationagent3d-property-path-max-distance).


* * *

**target\_reached**() [🔗](#class-navigationagent3d-signal-target-reached)

Signals that the agent reached the target, i.e. the agent moved within [target\_desired\_distance](#class-navigationagent3d-property-target-desired-distance) of the [target\_position](#class-navigationagent3d-property-target-position). This signal is emitted only once per loaded path.

This signal will be emitted just before [navigation\_finished](#class-navigationagent3d-signal-navigation-finished) when the target is reachable.

It may not always be possible to reach the target but it should always be possible to reach the final position. See [get\_final\_position()](#class-navigationagent3d-method-get-final-position).

* * *

**velocity\_computed**(safe\_velocity: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-navigationagent3d-signal-velocity-computed)

Notifies when the collision avoidance velocity is calculated. Emitted every update as long as [avoidance\_enabled](#class-navigationagent3d-property-avoidance-enabled) is `true` and the agent has a navigation map.

* * *

**waypoint\_reached**(details: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-navigationagent3d-signal-waypoint-reached)

Signals that the agent reached a waypoint. Emitted when the agent moves within [path\_desired\_distance](#class-navigationagent3d-property-path-desired-distance) of the next position of the path.

The details dictionary may contain the following keys depending on the value of [path\_metadata\_flags](#class-navigationagent3d-property-path-metadata-flags):

- `position`: The position of the waypoint that was reached.

- `type`: The type of navigation primitive (region or link) that contains this waypoint.

- `rid`: The [RID](class_rid.md#class-rid) of the containing navigation primitive (region or link).

- `owner`: The object which manages the containing navigation primitive (region or link).


* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **avoidance\_enabled** = `false` [🔗](#class-navigationagent3d-property-avoidance-enabled)

- void **set\_avoidance\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_avoidance\_enabled**()


If `true` the agent is registered for an RVO avoidance callback on the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d). When [velocity](#class-navigationagent3d-property-velocity) is set and the processing is completed a `safe_velocity` Vector3 is received with a signal connection to [velocity\_computed](#class-navigationagent3d-signal-velocity-computed). Avoidance processing with many registered agents has a significant performance cost and should only be enabled on agents that currently require it.

* * *

[int](class_int.md#class-int) **avoidance\_layers** = `1` [🔗](#class-navigationagent3d-property-avoidance-layers)

- void **set\_avoidance\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_avoidance\_layers**()


A bitfield determining the avoidance layers for this NavigationAgent. Other agents with a matching bit on the [avoidance\_mask](#class-navigationagent3d-property-avoidance-mask) will avoid this agent.

* * *

[int](class_int.md#class-int) **avoidance\_mask** = `1` [🔗](#class-navigationagent3d-property-avoidance-mask)

- void **set\_avoidance\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_avoidance\_mask**()


A bitfield determining what other avoidance agents and obstacles this NavigationAgent will avoid when a bit matches at least one of their [avoidance\_layers](#class-navigationagent3d-property-avoidance-layers).

* * *

[float](class_float.md#class-float) **avoidance\_priority** = `1.0` [🔗](#class-navigationagent3d-property-avoidance-priority)

- void **set\_avoidance\_priority**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_avoidance\_priority**()


The agent does not adjust the velocity for other agents that would match the [avoidance\_mask](#class-navigationagent3d-property-avoidance-mask) but have a lower [avoidance\_priority](#class-navigationagent3d-property-avoidance-priority). This in turn makes the other agents with lower priority adjust their velocities even more to avoid collision with this agent.

* * *

[bool](class_bool.md#class-bool) **debug\_enabled** = `false` [🔗](#class-navigationagent3d-property-debug-enabled)

- void **set\_debug\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_debug\_enabled**()


If `true` shows debug visuals for this agent.

* * *

[Color](class_color.md#class-color) **debug\_path\_custom\_color** = `Color(1, 1, 1, 1)` [🔗](#class-navigationagent3d-property-debug-path-custom-color)

- void **set\_debug\_path\_custom\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_debug\_path\_custom\_color**()


If [debug\_use\_custom](#class-navigationagent3d-property-debug-use-custom) is `true` uses this color for this agent instead of global color.

* * *

[float](class_float.md#class-float) **debug\_path\_custom\_point\_size** = `4.0` [🔗](#class-navigationagent3d-property-debug-path-custom-point-size)

- void **set\_debug\_path\_custom\_point\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_debug\_path\_custom\_point\_size**()


If [debug\_use\_custom](#class-navigationagent3d-property-debug-use-custom) is `true` uses this rasterized point size for rendering path points for this agent instead of global point size.

* * *

[bool](class_bool.md#class-bool) **debug\_use\_custom** = `false` [🔗](#class-navigationagent3d-property-debug-use-custom)

- void **set\_debug\_use\_custom**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_debug\_use\_custom**()


If `true` uses the defined [debug\_path\_custom\_color](#class-navigationagent3d-property-debug-path-custom-color) for this agent instead of global color.

* * *

[float](class_float.md#class-float) **height** = `1.0` [🔗](#class-navigationagent3d-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


The height of the avoidance agent. Agents will ignore other agents or obstacles that are above or below their current position + height in 2D avoidance. Does nothing in 3D avoidance which uses radius spheres alone.

* * *

[bool](class_bool.md#class-bool) **keep\_y\_velocity** = `true` [🔗](#class-navigationagent3d-property-keep-y-velocity)

- void **set\_keep\_y\_velocity**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_keep\_y\_velocity**()


If `true`, and the agent uses 2D avoidance, it will remember the set y-axis velocity and reapply it after the avoidance step. While 2D avoidance has no y-axis and simulates on a flat plane this setting can help to soften the most obvious clipping on uneven 3D geometry.

* * *

[int](class_int.md#class-int) **max\_neighbors** = `10` [🔗](#class-navigationagent3d-property-max-neighbors)

- void **set\_max\_neighbors**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_neighbors**()


The maximum number of neighbors for the agent to consider.

* * *

[float](class_float.md#class-float) **max\_speed** = `10.0` [🔗](#class-navigationagent3d-property-max-speed)

- void **set\_max\_speed**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_speed**()


The maximum speed that an agent can move.

* * *

[int](class_int.md#class-int) **navigation\_layers** = `1` [🔗](#class-navigationagent3d-property-navigation-layers)

- void **set\_navigation\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_navigation\_layers**()


A bitfield determining which navigation layers of navigation regions this agent will use to calculate a path. Changing it during runtime will clear the current navigation path and generate a new one, according to the new navigation layers.

* * *

[float](class_float.md#class-float) **neighbor\_distance** = `50.0` [🔗](#class-navigationagent3d-property-neighbor-distance)

- void **set\_neighbor\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_neighbor\_distance**()


The distance to search for other agents.

* * *

[float](class_float.md#class-float) **path\_desired\_distance** = `1.0` [🔗](#class-navigationagent3d-property-path-desired-distance)

- void **set\_path\_desired\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_desired\_distance**()


The distance threshold before a path point is considered to be reached. This allows agents to not have to hit a path point on the path exactly, but only to reach its general area. If this value is set too high, the NavigationAgent will skip points on the path, which can lead to it leaving the navigation mesh. If this value is set too low, the NavigationAgent will be stuck in a repath loop because it will constantly overshoot the distance to the next point on each physics frame update.

* * *

[float](class_float.md#class-float) **path\_height\_offset** = `0.0` [🔗](#class-navigationagent3d-property-path-height-offset)

- void **set\_path\_height\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_height\_offset**()


The height offset is subtracted from the y-axis value of any vector path position for this NavigationAgent. The NavigationAgent height offset does not change or influence the navigation mesh or pathfinding query result. Additional navigation maps that use regions with navigation meshes that the developer baked with appropriate agent radius or height values are required to support different-sized agents.

* * *

[float](class_float.md#class-float) **path\_max\_distance** = `5.0` [🔗](#class-navigationagent3d-property-path-max-distance)

- void **set\_path\_max\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_max\_distance**()


The maximum distance the agent is allowed away from the ideal path to the final position. This can happen due to trying to avoid collisions. When the maximum distance is exceeded, it recalculates the ideal path.

* * *

BitField\[ [PathMetadataFlags](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathmetadataflags)\] **path\_metadata\_flags** = `7` [🔗](#class-navigationagent3d-property-path-metadata-flags)

- void **set\_path\_metadata\_flags**(value: BitField\[ [PathMetadataFlags](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathmetadataflags)\])

- BitField\[ [PathMetadataFlags](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathmetadataflags)\] **get\_path\_metadata\_flags**()


Additional information to return with the navigation path.

* * *

[PathPostProcessing](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathpostprocessing) **path\_postprocessing** = `0` [🔗](#class-navigationagent3d-property-path-postprocessing)

- void **set\_path\_postprocessing**(value: [PathPostProcessing](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathpostprocessing))

- [PathPostProcessing](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathpostprocessing) **get\_path\_postprocessing**()


The path postprocessing applied to the raw path corridor found by the [pathfinding\_algorithm](#class-navigationagent3d-property-pathfinding-algorithm).

* * *

[float](class_float.md#class-float) **path\_return\_max\_length** = `0.0` [🔗](#class-navigationagent3d-property-path-return-max-length)

- void **set\_path\_return\_max\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_return\_max\_length**()


The maximum allowed length of the returned path in world units. A path will be clipped when going over this length.

* * *

[float](class_float.md#class-float) **path\_return\_max\_radius** = `0.0` [🔗](#class-navigationagent3d-property-path-return-max-radius)

- void **set\_path\_return\_max\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_return\_max\_radius**()


The maximum allowed radius in world units that the returned path can be from the path start. The path will be clipped when going over this radius. Compared to [path\_return\_max\_length](#class-navigationagent3d-property-path-return-max-length), this allows the agent to go that much further, if they need to walk around a corner.

**Note:** This will perform a sphere clip considering only the actual navigation mesh path points with the first path position being the sphere's center.

* * *

[float](class_float.md#class-float) **path\_search\_max\_distance** = `0.0` [🔗](#class-navigationagent3d-property-path-search-max-distance)

- void **set\_path\_search\_max\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_search\_max\_distance**()


The maximum distance a searched polygon can be away from the start polygon before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of `0` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

* * *

[int](class_int.md#class-int) **path\_search\_max\_polygons** = `4096` [🔗](#class-navigationagent3d-property-path-search-max-polygons)

- void **set\_path\_search\_max\_polygons**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_path\_search\_max\_polygons**()


The maximum number of polygons that are searched before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of `0` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

* * *

[PathfindingAlgorithm](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathfindingalgorithm) **pathfinding\_algorithm** = `0` [🔗](#class-navigationagent3d-property-pathfinding-algorithm)

- void **set\_pathfinding\_algorithm**(value: [PathfindingAlgorithm](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathfindingalgorithm))

- [PathfindingAlgorithm](class_navigationpathqueryparameters3d.md#enum-navigationpathqueryparameters3d-pathfindingalgorithm) **get\_pathfinding\_algorithm**()


The pathfinding algorithm used in the path query.

* * *

[float](class_float.md#class-float) **radius** = `0.5` [🔗](#class-navigationagent3d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The radius of the avoidance agent. This is the "body" of the avoidance agent and not the avoidance maneuver starting radius (which is controlled by [neighbor\_distance](#class-navigationagent3d-property-neighbor-distance)).

Does not affect normal pathfinding. To change an actor's pathfinding radius bake [NavigationMesh](class_navigationmesh.md#class-navigationmesh) resources with a different [NavigationMesh.agent\_radius](class_navigationmesh.md#class-navigationmesh-property-agent-radius) property and use different navigation maps for each actor size.

* * *

[float](class_float.md#class-float) **simplify\_epsilon** = `0.0` [🔗](#class-navigationagent3d-property-simplify-epsilon)

- void **set\_simplify\_epsilon**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_simplify\_epsilon**()


The path simplification amount in worlds units.

* * *

[bool](class_bool.md#class-bool) **simplify\_path** = `false` [🔗](#class-navigationagent3d-property-simplify-path)

- void **set\_simplify\_path**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_simplify\_path**()


If `true` a simplified version of the path will be returned with less critical path points removed. The simplification amount is controlled by [simplify\_epsilon](#class-navigationagent3d-property-simplify-epsilon). The simplification uses a variant of Ramer-Douglas-Peucker algorithm for curve point decimation.

Path simplification can be helpful to mitigate various path following issues that can arise with certain agent types and script behaviors. E.g. "steering" agents or avoidance in "open fields".

* * *

[float](class_float.md#class-float) **target\_desired\_distance** = `1.0` [🔗](#class-navigationagent3d-property-target-desired-distance)

- void **set\_target\_desired\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_target\_desired\_distance**()


The distance threshold before the target is considered to be reached. On reaching the target, [target\_reached](#class-navigationagent3d-signal-target-reached) is emitted and navigation ends (see [is\_navigation\_finished()](#class-navigationagent3d-method-is-navigation-finished) and [navigation\_finished](#class-navigationagent3d-signal-navigation-finished)).

You can make navigation end early by setting this property to a value greater than [path\_desired\_distance](#class-navigationagent3d-property-path-desired-distance) (navigation will end before reaching the last waypoint).

You can also make navigation end closer to the target than each individual path position by setting this property to a value lower than [path\_desired\_distance](#class-navigationagent3d-property-path-desired-distance) (navigation won't immediately end when reaching the last waypoint). However, if the value set is too low, the agent will be stuck in a repath loop because it will constantly overshoot the distance to the target on each physics frame update.

* * *

[Vector3](class_vector3.md#class-vector3) **target\_position** = `Vector3(0, 0, 0)` [🔗](#class-navigationagent3d-property-target-position)

- void **set\_target\_position**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_target\_position**()


If set, a new navigation path from the current agent position to the [target\_position](#class-navigationagent3d-property-target-position) is requested from the NavigationServer.

* * *

[float](class_float.md#class-float) **time\_horizon\_agents** = `1.0` [🔗](#class-navigationagent3d-property-time-horizon-agents)

- void **set\_time\_horizon\_agents**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_time\_horizon\_agents**()


The minimal amount of time for which this agent's velocities, that are computed with the collision avoidance algorithm, are safe with respect to other agents. The larger the number, the sooner the agent will respond to other agents, but less freedom in choosing its velocities. A too high value will slow down agents movement considerably. Must be positive.

* * *

[float](class_float.md#class-float) **time\_horizon\_obstacles** = `0.0` [🔗](#class-navigationagent3d-property-time-horizon-obstacles)

- void **set\_time\_horizon\_obstacles**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_time\_horizon\_obstacles**()


The minimal amount of time for which this agent's velocities, that are computed with the collision avoidance algorithm, are safe with respect to static avoidance obstacles. The larger the number, the sooner the agent will respond to static avoidance obstacles, but less freedom in choosing its velocities. A too high value will slow down agents movement considerably. Must be positive.

* * *

[bool](class_bool.md#class-bool) **use\_3d\_avoidance** = `false` [🔗](#class-navigationagent3d-property-use-3d-avoidance)

- void **set\_use\_3d\_avoidance**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_3d\_avoidance**()


If `true`, the agent calculates avoidance velocities in 3D omnidirectionally, e.g. for games that take place in air, underwater or space. Agents using 3D avoidance only avoid other agents using 3D avoidance, and react to radius-based avoidance obstacles. They ignore any vertex-based obstacles.

If `false`, the agent calculates avoidance velocities in 2D along the x and z-axes, ignoring the y-axis. Agents using 2D avoidance only avoid other agents using 2D avoidance, and react to radius-based avoidance obstacles or vertex-based avoidance obstacles. Other agents using 2D avoidance that are below or above their current position including [height](#class-navigationagent3d-property-height) are ignored.

* * *

[Vector3](class_vector3.md#class-vector3) **velocity** = `Vector3(0, 0, 0)` [🔗](#class-navigationagent3d-property-velocity)

- void **set\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_velocity**()


Sets the new wanted velocity for the agent. The avoidance simulation will try to fulfill this velocity if possible but will modify it to avoid collision with other agents and obstacles. When an agent is teleported to a new position, use [set\_velocity\_forced()](#class-navigationagent3d-method-set-velocity-forced) as well to reset the internal simulation velocity.

* * *

## Method Descriptions

[float](class_float.md#class-float) **distance\_to\_target**() const [🔗](#class-navigationagent3d-method-distance-to-target)

Returns the distance to the target position, using the agent's global position. The user must set [target\_position](#class-navigationagent3d-property-target-position) in order for this to be accurate.

* * *

[bool](class_bool.md#class-bool) **get\_avoidance\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-navigationagent3d-method-get-avoidance-layer-value)

Returns whether or not the specified layer of the [avoidance\_layers](#class-navigationagent3d-property-avoidance-layers) bitmask is enabled, given a `layer_number` between 1 and 32.

* * *

[bool](class_bool.md#class-bool) **get\_avoidance\_mask\_value**(mask\_number: [int](class_int.md#class-int)) const [🔗](#class-navigationagent3d-method-get-avoidance-mask-value)

Returns whether or not the specified mask of the [avoidance\_mask](#class-navigationagent3d-property-avoidance-mask) bitmask is enabled, given a `mask_number` between 1 and 32.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_current\_navigation\_path**() const [🔗](#class-navigationagent3d-method-get-current-navigation-path)

Returns this agent's current path from start to finish in global coordinates. The path only updates when the target position is changed or the agent requires a repath. The path array is not intended to be used in direct path movement as the agent has its own internal path logic that would get corrupted by changing the path array manually. Use the intended [get\_next\_path\_position()](#class-navigationagent3d-method-get-next-path-position) once every physics frame to receive the next path point for the agents movement as this function also updates the internal path logic.

* * *

[int](class_int.md#class-int) **get\_current\_navigation\_path\_index**() const [🔗](#class-navigationagent3d-method-get-current-navigation-path-index)

Returns which index the agent is currently on in the navigation path's [PackedVector3Array](class_packedvector3array.md#class-packedvector3array).

* * *

[NavigationPathQueryResult3D](class_navigationpathqueryresult3d.md#class-navigationpathqueryresult3d) **get\_current\_navigation\_result**() const [🔗](#class-navigationagent3d-method-get-current-navigation-result)

Returns the path query result for the path the agent is currently following.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_final\_position**() [🔗](#class-navigationagent3d-method-get-final-position)

Returns the reachable final position of the current navigation path in global coordinates. This position can change if the agent needs to update the navigation path which makes the agent emit the [path\_changed](#class-navigationagent3d-signal-path-changed) signal.

* * *

[bool](class_bool.md#class-bool) **get\_navigation\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-navigationagent3d-method-get-navigation-layer-value)

Returns whether or not the specified layer of the [navigation\_layers](#class-navigationagent3d-property-navigation-layers) bitmask is enabled, given a `layer_number` between 1 and 32.

* * *

[RID](class_rid.md#class-rid) **get\_navigation\_map**() const [🔗](#class-navigationagent3d-method-get-navigation-map)

Returns the [RID](class_rid.md#class-rid) of the navigation map for this NavigationAgent node. This function returns always the map set on the NavigationAgent node and not the map of the abstract agent on the NavigationServer. If the agent map is changed directly with the NavigationServer API the NavigationAgent node will not be aware of the map change. Use [set\_navigation\_map()](#class-navigationagent3d-method-set-navigation-map) to change the navigation map for the NavigationAgent and also update the agent on the NavigationServer.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_next\_path\_position**() [🔗](#class-navigationagent3d-method-get-next-path-position)

Returns the next position in global coordinates that can be moved to, making sure that there are no static objects in the way. If the agent does not have a navigation path, it will return the position of the agent's parent. The use of this function once every physics frame is required to update the internal path logic of the NavigationAgent.

* * *

[float](class_float.md#class-float) **get\_path\_length**() const [🔗](#class-navigationagent3d-method-get-path-length)

Returns the length of the currently calculated path. The returned value is `0.0`, if the path is still calculating or no calculation has been requested yet.

* * *

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-navigationagent3d-method-get-rid)

Returns the [RID](class_rid.md#class-rid) of this agent on the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

* * *

[bool](class_bool.md#class-bool) **is\_navigation\_finished**() [🔗](#class-navigationagent3d-method-is-navigation-finished)

Returns `true` if the agent's navigation has finished. If the target is reachable, navigation ends when the target is reached. If the target is unreachable, navigation ends when the last waypoint of the path is reached.

**Note:** While `true` prefer to stop calling update functions like [get\_next\_path\_position()](#class-navigationagent3d-method-get-next-path-position). This avoids jittering the standing agent due to calling repeated path updates.

* * *

[bool](class_bool.md#class-bool) **is\_target\_reachable**() [🔗](#class-navigationagent3d-method-is-target-reachable)

Returns `true` if [get\_final\_position()](#class-navigationagent3d-method-get-final-position) is within [target\_desired\_distance](#class-navigationagent3d-property-target-desired-distance) of the [target\_position](#class-navigationagent3d-property-target-position).

* * *

[bool](class_bool.md#class-bool) **is\_target\_reached**() const [🔗](#class-navigationagent3d-method-is-target-reached)

Returns `true` if the agent reached the target, i.e. the agent moved within [target\_desired\_distance](#class-navigationagent3d-property-target-desired-distance) of the [target\_position](#class-navigationagent3d-property-target-position). It may not always be possible to reach the target but it should always be possible to reach the final position. See [get\_final\_position()](#class-navigationagent3d-method-get-final-position).

* * *

void **set\_avoidance\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-navigationagent3d-method-set-avoidance-layer-value)

Based on `value`, enables or disables the specified layer in the [avoidance\_layers](#class-navigationagent3d-property-avoidance-layers) bitmask, given a `layer_number` between 1 and 32.

* * *

void **set\_avoidance\_mask\_value**(mask\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-navigationagent3d-method-set-avoidance-mask-value)

Based on `value`, enables or disables the specified mask in the [avoidance\_mask](#class-navigationagent3d-property-avoidance-mask) bitmask, given a `mask_number` between 1 and 32.

* * *

void **set\_navigation\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-navigationagent3d-method-set-navigation-layer-value)

Based on `value`, enables or disables the specified layer in the [navigation\_layers](#class-navigationagent3d-property-navigation-layers) bitmask, given a `layer_number` between 1 and 32.

* * *

void **set\_navigation\_map**(navigation\_map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationagent3d-method-set-navigation-map)

Sets the [RID](class_rid.md#class-rid) of the navigation map this NavigationAgent node should use and also updates the `agent` on the NavigationServer.

* * *

void **set\_velocity\_forced**(velocity: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-navigationagent3d-method-set-velocity-forced)

Replaces the internal velocity in the collision avoidance simulation with `velocity`. When an agent is teleported to a new position this function should be used in the same frame. If called frequently this function can get agents stuck.

[Previous](class_navigationagent2d.md "NavigationAgent2D") [Next](class_navigationlink2d.md "NavigationLink2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationagent2d.md "NavigationAgent2D") [Next](class_navigationlink2d.md "NavigationLink2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).