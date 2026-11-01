---
title: NavigationRegion2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationregion2d.html
crawled_at: "2026-08-13T10:32:03+12:00"
content_hash: 63b3b91f97c99cb6d60e5de970b973b61004350dca6c45be61af8e90379515f6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationRegion2D

* * *

# NavigationRegion2D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A traversable 2D region that [NavigationAgent2D](class_navigationagent2d.md#class-navigationagent2d) s can use for pathfinding.

## Description

A traversable 2D region based on a [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon) that [NavigationAgent2D](class_navigationagent2d.md#class-navigationagent2d) s can use for pathfinding.

Two regions can be connected to each other if they share a similar edge. You can set the minimum distance between two vertices required to connect two edges by using [NavigationServer2D.map\_set\_edge\_connection\_margin()](class_navigationserver2d.md#class-navigationserver2d-method-map-set-edge-connection-margin).

**Note:** Overlapping two regions' navigation polygons is not enough for connecting two regions. They must share a similar edge.

The pathfinding cost of entering a region from another region can be controlled with the [enter\_cost](#class-navigationregion2d-property-enter-cost) value.

**Note:** This value is not added to the path cost when the start position is already inside this region.

The pathfinding cost of traveling distances inside this region can be controlled with the [travel\_cost](#class-navigationregion2d-property-travel-cost) multiplier.

**Note:** This node caches changes to its properties, so if you make changes to the underlying region [RID](class_rid.md#class-rid) in [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d), they will not be reflected in this node's properties.

## Tutorials

- [Using NavigationRegions](../tutorials/navigation/navigation_using_navigationregions.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [enabled](#class-navigationregion2d-property-enabled) | `true` |
| [float](class_float.md#class-float) | [enter\_cost](#class-navigationregion2d-property-enter-cost) | `0.0` |
| [int](class_int.md#class-int) | [navigation\_layers](#class-navigationregion2d-property-navigation-layers) | `1` |
| [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon) | [navigation\_polygon](#class-navigationregion2d-property-navigation-polygon) |  |
| [float](class_float.md#class-float) | [travel\_cost](#class-navigationregion2d-property-travel-cost) | `1.0` |
| [bool](class_bool.md#class-bool) | [use\_edge\_connections](#class-navigationregion2d-property-use-edge-connections) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [bake\_navigation\_polygon](#class-navigationregion2d-method-bake-navigation-polygon)(on\_thread: [bool](class_bool.md#class-bool) = true) |
| [Rect2](class_rect2.md#class-rect2) | [get\_bounds](#class-navigationregion2d-method-get-bounds)() const |
| [bool](class_bool.md#class-bool) | [get\_navigation\_layer\_value](#class-navigationregion2d-method-get-navigation-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_navigation\_map](#class-navigationregion2d-method-get-navigation-map)() const |
| [RID](class_rid.md#class-rid) | [get\_region\_rid](#class-navigationregion2d-method-get-region-rid)() const |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-navigationregion2d-method-get-rid)() const |
| [bool](class_bool.md#class-bool) | [is\_baking](#class-navigationregion2d-method-is-baking)() const |
| void | [set\_navigation\_layer\_value](#class-navigationregion2d-method-set-navigation-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_navigation\_map](#class-navigationregion2d-method-set-navigation-map)(navigation\_map: [RID](class_rid.md#class-rid)) |

* * *

## Signals

**bake\_finished**() [🔗](#class-navigationregion2d-signal-bake-finished)

Emitted when a navigation polygon bake operation is completed.

* * *

**navigation\_polygon\_changed**() [🔗](#class-navigationregion2d-signal-navigation-polygon-changed)

Emitted when the used navigation polygon is replaced or changes to the internals of the current navigation polygon are committed.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-navigationregion2d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


Determines if the **NavigationRegion2D** is enabled or disabled.

* * *

[float](class_float.md#class-float) **enter\_cost** = `0.0` [🔗](#class-navigationregion2d-property-enter-cost)

- void **set\_enter\_cost**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_enter\_cost**()


When pathfinding enters this region's navigation mesh from another regions navigation mesh the [enter\_cost](#class-navigationregion2d-property-enter-cost) value is added to the path distance for determining the shortest path.

* * *

[int](class_int.md#class-int) **navigation\_layers** = `1` [🔗](#class-navigationregion2d-property-navigation-layers)

- void **set\_navigation\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_navigation\_layers**()


A bitfield determining all navigation layers the region belongs to. These navigation layers can be checked upon when requesting a path with [NavigationServer2D.map\_get\_path()](class_navigationserver2d.md#class-navigationserver2d-method-map-get-path).

* * *

[NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon) **navigation\_polygon** [🔗](#class-navigationregion2d-property-navigation-polygon)

- void **set\_navigation\_polygon**(value: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon))

- [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon) **get\_navigation\_polygon**()


The [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon) resource to use.

* * *

[float](class_float.md#class-float) **travel\_cost** = `1.0` [🔗](#class-navigationregion2d-property-travel-cost)

- void **set\_travel\_cost**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_travel\_cost**()


When pathfinding moves inside this region's navigation mesh the traveled distances are multiplied with [travel\_cost](#class-navigationregion2d-property-travel-cost) for determining the shortest path.

* * *

[bool](class_bool.md#class-bool) **use\_edge\_connections** = `true` [🔗](#class-navigationregion2d-property-use-edge-connections)

- void **set\_use\_edge\_connections**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_edge\_connections**()


If enabled the navigation region will use edge connections to connect with other navigation regions within proximity of the navigation map edge connection margin.

* * *

## Method Descriptions

void **bake\_navigation\_polygon**(on\_thread: [bool](class_bool.md#class-bool) = true) [🔗](#class-navigationregion2d-method-bake-navigation-polygon)

Bakes the [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon). If `on_thread` is set to `true` (default), the baking is done on a separate thread.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_bounds**() const [🔗](#class-navigationregion2d-method-get-bounds)

Returns the axis-aligned rectangle for the region's transformed navigation mesh.

* * *

[bool](class_bool.md#class-bool) **get\_navigation\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-navigationregion2d-method-get-navigation-layer-value)

Returns whether or not the specified layer of the [navigation\_layers](#class-navigationregion2d-property-navigation-layers) bitmask is enabled, given a `layer_number` between 1 and 32.

* * *

[RID](class_rid.md#class-rid) **get\_navigation\_map**() const [🔗](#class-navigationregion2d-method-get-navigation-map)

Returns the current navigation map [RID](class_rid.md#class-rid) used by this region.

* * *

[RID](class_rid.md#class-rid) **get\_region\_rid**() const [🔗](#class-navigationregion2d-method-get-region-rid)

**Deprecated:** Use [get\_rid()](#class-navigationregion2d-method-get-rid) instead.

Returns the [RID](class_rid.md#class-rid) of this region on the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

* * *

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-navigationregion2d-method-get-rid)

Returns the [RID](class_rid.md#class-rid) of this region on the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d). Combined with [NavigationServer2D.map\_get\_closest\_point\_owner()](class_navigationserver2d.md#class-navigationserver2d-method-map-get-closest-point-owner) can be used to identify the **NavigationRegion2D** closest to a point on the merged navigation map.

* * *

[bool](class_bool.md#class-bool) **is\_baking**() const [🔗](#class-navigationregion2d-method-is-baking)

Returns `true` when the [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon) is being baked on a background thread.

* * *

void **set\_navigation\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-navigationregion2d-method-set-navigation-layer-value)

Based on `value`, enables or disables the specified layer in the [navigation\_layers](#class-navigationregion2d-property-navigation-layers) bitmask, given a `layer_number` between 1 and 32.

* * *

void **set\_navigation\_map**(navigation\_map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationregion2d-method-set-navigation-map)

Sets the [RID](class_rid.md#class-rid) of the navigation map this region should use. By default the region will automatically join the [World2D](class_world2d.md#class-world2d) default navigation map so this function is only required to override the default map.

[Previous](class_navigationobstacle3d.md "NavigationObstacle3D") [Next](class_navigationregion3d.md "NavigationRegion3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationobstacle3d.md "NavigationObstacle3D") [Next](class_navigationregion3d.md "NavigationRegion3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).