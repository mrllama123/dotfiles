---
title: NavigationRegion3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationregion3d.html
crawled_at: "2026-08-13T10:38:31+12:00"
content_hash: 8dbdfbe8342cb05b852518a7f225002da9b5721996a8732ddb0aeffb19aee404
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationRegion3D

* * *

# NavigationRegion3D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A traversable 3D region that [NavigationAgent3D](class_navigationagent3d.md#class-navigationagent3d) s can use for pathfinding.

## Description

A traversable 3D region based on a [NavigationMesh](class_navigationmesh.md#class-navigationmesh) that [NavigationAgent3D](class_navigationagent3d.md#class-navigationagent3d) s can use for pathfinding.

Two regions can be connected to each other if they share a similar edge. You can set the minimum distance between two vertices required to connect two edges by using [NavigationServer3D.map\_set\_edge\_connection\_margin()](class_navigationserver3d.md#class-navigationserver3d-method-map-set-edge-connection-margin).

**Note:** Overlapping two regions' navigation meshes is not enough for connecting two regions. They must share a similar edge.

The cost of entering this region from another region can be controlled with the [enter\_cost](#class-navigationregion3d-property-enter-cost) value.

**Note:** This value is not added to the path cost when the start position is already inside this region.

The cost of traveling distances inside this region can be controlled with the [travel\_cost](#class-navigationregion3d-property-travel-cost) multiplier.

**Note:** This node caches changes to its properties, so if you make changes to the underlying region [RID](class_rid.md#class-rid) in [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d), they will not be reflected in this node's properties.

## Tutorials

- [Using NavigationRegions](../tutorials/navigation/navigation_using_navigationregions.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [enabled](#class-navigationregion3d-property-enabled) | `true` |
| [float](class_float.md#class-float) | [enter\_cost](#class-navigationregion3d-property-enter-cost) | `0.0` |
| [int](class_int.md#class-int) | [navigation\_layers](#class-navigationregion3d-property-navigation-layers) | `1` |
| [NavigationMesh](class_navigationmesh.md#class-navigationmesh) | [navigation\_mesh](#class-navigationregion3d-property-navigation-mesh) |  |
| [float](class_float.md#class-float) | [travel\_cost](#class-navigationregion3d-property-travel-cost) | `1.0` |
| [bool](class_bool.md#class-bool) | [use\_edge\_connections](#class-navigationregion3d-property-use-edge-connections) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [bake\_navigation\_mesh](#class-navigationregion3d-method-bake-navigation-mesh)(on\_thread: [bool](class_bool.md#class-bool) = true) |
| [AABB](class_aabb.md#class-aabb) | [get\_bounds](#class-navigationregion3d-method-get-bounds)() const |
| [bool](class_bool.md#class-bool) | [get\_navigation\_layer\_value](#class-navigationregion3d-method-get-navigation-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_navigation\_map](#class-navigationregion3d-method-get-navigation-map)() const |
| [RID](class_rid.md#class-rid) | [get\_region\_rid](#class-navigationregion3d-method-get-region-rid)() const |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-navigationregion3d-method-get-rid)() const |
| [bool](class_bool.md#class-bool) | [is\_baking](#class-navigationregion3d-method-is-baking)() const |
| void | [set\_navigation\_layer\_value](#class-navigationregion3d-method-set-navigation-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_navigation\_map](#class-navigationregion3d-method-set-navigation-map)(navigation\_map: [RID](class_rid.md#class-rid)) |

* * *

## Signals

**bake\_finished**() [🔗](#class-navigationregion3d-signal-bake-finished)

Notifies when the navigation mesh bake operation is completed.

* * *

**navigation\_mesh\_changed**() [🔗](#class-navigationregion3d-signal-navigation-mesh-changed)

Notifies when the [NavigationMesh](class_navigationmesh.md#class-navigationmesh) has changed.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-navigationregion3d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


Determines if the **NavigationRegion3D** is enabled or disabled.

* * *

[float](class_float.md#class-float) **enter\_cost** = `0.0` [🔗](#class-navigationregion3d-property-enter-cost)

- void **set\_enter\_cost**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_enter\_cost**()


When pathfinding enters this region's navigation mesh from another regions navigation mesh the [enter\_cost](#class-navigationregion3d-property-enter-cost) value is added to the path distance for determining the shortest path.

* * *

[int](class_int.md#class-int) **navigation\_layers** = `1` [🔗](#class-navigationregion3d-property-navigation-layers)

- void **set\_navigation\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_navigation\_layers**()


A bitfield determining all navigation layers the region belongs to. These navigation layers can be checked upon when requesting a path with [NavigationServer3D.map\_get\_path()](class_navigationserver3d.md#class-navigationserver3d-method-map-get-path).

* * *

[NavigationMesh](class_navigationmesh.md#class-navigationmesh) **navigation\_mesh** [🔗](#class-navigationregion3d-property-navigation-mesh)

- void **set\_navigation\_mesh**(value: [NavigationMesh](class_navigationmesh.md#class-navigationmesh))

- [NavigationMesh](class_navigationmesh.md#class-navigationmesh) **get\_navigation\_mesh**()


The [NavigationMesh](class_navigationmesh.md#class-navigationmesh) resource to use.

* * *

[float](class_float.md#class-float) **travel\_cost** = `1.0` [🔗](#class-navigationregion3d-property-travel-cost)

- void **set\_travel\_cost**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_travel\_cost**()


When pathfinding moves inside this region's navigation mesh the traveled distances are multiplied with [travel\_cost](#class-navigationregion3d-property-travel-cost) for determining the shortest path.

* * *

[bool](class_bool.md#class-bool) **use\_edge\_connections** = `true` [🔗](#class-navigationregion3d-property-use-edge-connections)

- void **set\_use\_edge\_connections**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_edge\_connections**()


If enabled the navigation region will use edge connections to connect with other navigation regions within proximity of the navigation map edge connection margin.

* * *

## Method Descriptions

void **bake\_navigation\_mesh**(on\_thread: [bool](class_bool.md#class-bool) = true) [🔗](#class-navigationregion3d-method-bake-navigation-mesh)

Bakes the [NavigationMesh](class_navigationmesh.md#class-navigationmesh). If `on_thread` is set to `true` (default), the baking is done on a separate thread. Baking on separate thread is useful because navigation baking is not a cheap operation. When it is completed, it automatically sets the new [NavigationMesh](class_navigationmesh.md#class-navigationmesh). Please note that baking on separate thread may be very slow if geometry is parsed from meshes as async access to each mesh involves heavy synchronization. Also, please note that baking on a separate thread is automatically disabled on operating systems that cannot use threads (such as Web with threads disabled).

* * *

[AABB](class_aabb.md#class-aabb) **get\_bounds**() const [🔗](#class-navigationregion3d-method-get-bounds)

Returns the axis-aligned bounding box for the region's transformed navigation mesh.

* * *

[bool](class_bool.md#class-bool) **get\_navigation\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-navigationregion3d-method-get-navigation-layer-value)

Returns whether or not the specified layer of the [navigation\_layers](#class-navigationregion3d-property-navigation-layers) bitmask is enabled, given a `layer_number` between 1 and 32.

* * *

[RID](class_rid.md#class-rid) **get\_navigation\_map**() const [🔗](#class-navigationregion3d-method-get-navigation-map)

Returns the current navigation map [RID](class_rid.md#class-rid) used by this region.

* * *

[RID](class_rid.md#class-rid) **get\_region\_rid**() const [🔗](#class-navigationregion3d-method-get-region-rid)

**Deprecated:** Use [get\_rid()](#class-navigationregion3d-method-get-rid) instead.

Returns the [RID](class_rid.md#class-rid) of this region on the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

* * *

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-navigationregion3d-method-get-rid)

Returns the [RID](class_rid.md#class-rid) of this region on the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d). Combined with [NavigationServer3D.map\_get\_closest\_point\_owner()](class_navigationserver3d.md#class-navigationserver3d-method-map-get-closest-point-owner) can be used to identify the **NavigationRegion3D** closest to a point on the merged navigation map.

* * *

[bool](class_bool.md#class-bool) **is\_baking**() const [🔗](#class-navigationregion3d-method-is-baking)

Returns `true` when the [NavigationMesh](class_navigationmesh.md#class-navigationmesh) is being baked on a background thread.

* * *

void **set\_navigation\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-navigationregion3d-method-set-navigation-layer-value)

Based on `value`, enables or disables the specified layer in the [navigation\_layers](#class-navigationregion3d-property-navigation-layers) bitmask, given a `layer_number` between 1 and 32.

* * *

void **set\_navigation\_map**(navigation\_map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationregion3d-method-set-navigation-map)

Sets the [RID](class_rid.md#class-rid) of the navigation map this region should use. By default the region will automatically join the [World3D](class_world3d.md#class-world3d) default navigation map so this function is only required to override the default map.

[Previous](class_navigationregion2d.md "NavigationRegion2D") [Next](class_ninepatchrect.md "NinePatchRect")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationregion2d.md "NavigationRegion2D") [Next](class_ninepatchrect.md "NinePatchRect")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).