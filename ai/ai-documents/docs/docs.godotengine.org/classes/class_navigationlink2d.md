---
title: NavigationLink2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationlink2d.html
crawled_at: "2026-08-13T10:32:21+12:00"
content_hash: c932f58160cb86a610e2af2e18fb413e487a43e85c73b003dafc58d054ec3b00
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationLink2D

* * *

# NavigationLink2D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A link between two positions on [NavigationRegion2D](class_navigationregion2d.md#class-navigationregion2d) s that agents can be routed through.

## Description

A link between two positions on [NavigationRegion2D](class_navigationregion2d.md#class-navigationregion2d) s that agents can be routed through. These positions can be on the same [NavigationRegion2D](class_navigationregion2d.md#class-navigationregion2d) or on two different ones. Links are useful to express navigation methods other than traveling along the surface of the navigation polygon, such as ziplines, teleporters, or gaps that can be jumped across.

## Tutorials

- [Using NavigationLinks](../tutorials/navigation/navigation_using_navigationlinks.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [bidirectional](#class-navigationlink2d-property-bidirectional) | `true` |
| [bool](class_bool.md#class-bool) | [enabled](#class-navigationlink2d-property-enabled) | `true` |
| [Vector2](class_vector2.md#class-vector2) | [end\_position](#class-navigationlink2d-property-end-position) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [enter\_cost](#class-navigationlink2d-property-enter-cost) | `0.0` |
| [int](class_int.md#class-int) | [navigation\_layers](#class-navigationlink2d-property-navigation-layers) | `1` |
| [Vector2](class_vector2.md#class-vector2) | [start\_position](#class-navigationlink2d-property-start-position) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [travel\_cost](#class-navigationlink2d-property-travel-cost) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [get\_global\_end\_position](#class-navigationlink2d-method-get-global-end-position)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_global\_start\_position](#class-navigationlink2d-method-get-global-start-position)() const |
| [bool](class_bool.md#class-bool) | [get\_navigation\_layer\_value](#class-navigationlink2d-method-get-navigation-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_navigation\_map](#class-navigationlink2d-method-get-navigation-map)() const |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-navigationlink2d-method-get-rid)() const |
| void | [set\_global\_end\_position](#class-navigationlink2d-method-set-global-end-position)(position: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_global\_start\_position](#class-navigationlink2d-method-set-global-start-position)(position: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_navigation\_layer\_value](#class-navigationlink2d-method-set-navigation-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_navigation\_map](#class-navigationlink2d-method-set-navigation-map)(navigation\_map: [RID](class_rid.md#class-rid)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **bidirectional** = `true` [🔗](#class-navigationlink2d-property-bidirectional)

- void **set\_bidirectional**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_bidirectional**()


Whether this link can be traveled in both directions or only from [start\_position](#class-navigationlink2d-property-start-position) to [end\_position](#class-navigationlink2d-property-end-position).

* * *

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-navigationlink2d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


Whether this link is currently active. If `false`, [NavigationServer2D.map\_get\_path()](class_navigationserver2d.md#class-navigationserver2d-method-map-get-path) will ignore this link.

* * *

[Vector2](class_vector2.md#class-vector2) **end\_position** = `Vector2(0, 0)` [🔗](#class-navigationlink2d-property-end-position)

- void **set\_end\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_end\_position**()


Ending position of the link.

This position will search out the nearest polygon in the navigation mesh to attach to.

The distance the link will search is controlled by [NavigationServer2D.map\_set\_link\_connection\_radius()](class_navigationserver2d.md#class-navigationserver2d-method-map-set-link-connection-radius).

* * *

[float](class_float.md#class-float) **enter\_cost** = `0.0` [🔗](#class-navigationlink2d-property-enter-cost)

- void **set\_enter\_cost**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_enter\_cost**()


When pathfinding enters this link from another regions navigation mesh the [enter\_cost](#class-navigationlink2d-property-enter-cost) value is added to the path distance for determining the shortest path.

* * *

[int](class_int.md#class-int) **navigation\_layers** = `1` [🔗](#class-navigationlink2d-property-navigation-layers)

- void **set\_navigation\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_navigation\_layers**()


A bitfield determining all navigation layers the link belongs to. These navigation layers will be checked when requesting a path with [NavigationServer2D.map\_get\_path()](class_navigationserver2d.md#class-navigationserver2d-method-map-get-path).

* * *

[Vector2](class_vector2.md#class-vector2) **start\_position** = `Vector2(0, 0)` [🔗](#class-navigationlink2d-property-start-position)

- void **set\_start\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_start\_position**()


Starting position of the link.

This position will search out the nearest polygon in the navigation mesh to attach to.

The distance the link will search is controlled by [NavigationServer2D.map\_set\_link\_connection\_radius()](class_navigationserver2d.md#class-navigationserver2d-method-map-set-link-connection-radius).

* * *

[float](class_float.md#class-float) **travel\_cost** = `1.0` [🔗](#class-navigationlink2d-property-travel-cost)

- void **set\_travel\_cost**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_travel\_cost**()


When pathfinding moves along the link the traveled distance is multiplied with [travel\_cost](#class-navigationlink2d-property-travel-cost) for determining the shortest path.

* * *

## Method Descriptions

[Vector2](class_vector2.md#class-vector2) **get\_global\_end\_position**() const [🔗](#class-navigationlink2d-method-get-global-end-position)

Returns the [end\_position](#class-navigationlink2d-property-end-position) that is relative to the link as a global position.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_global\_start\_position**() const [🔗](#class-navigationlink2d-method-get-global-start-position)

Returns the [start\_position](#class-navigationlink2d-property-start-position) that is relative to the link as a global position.

* * *

[bool](class_bool.md#class-bool) **get\_navigation\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-navigationlink2d-method-get-navigation-layer-value)

Returns whether or not the specified layer of the [navigation\_layers](#class-navigationlink2d-property-navigation-layers) bitmask is enabled, given a `layer_number` between 1 and 32.

* * *

[RID](class_rid.md#class-rid) **get\_navigation\_map**() const [🔗](#class-navigationlink2d-method-get-navigation-map)

Returns the current navigation map [RID](class_rid.md#class-rid) used by this link.

* * *

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-navigationlink2d-method-get-rid)

Returns the [RID](class_rid.md#class-rid) of this link on the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

* * *

void **set\_global\_end\_position**(position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-navigationlink2d-method-set-global-end-position)

Sets the [end\_position](#class-navigationlink2d-property-end-position) that is relative to the link from a global `position`.

* * *

void **set\_global\_start\_position**(position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-navigationlink2d-method-set-global-start-position)

Sets the [start\_position](#class-navigationlink2d-property-start-position) that is relative to the link from a global `position`.

* * *

void **set\_navigation\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-navigationlink2d-method-set-navigation-layer-value)

Based on `value`, enables or disables the specified layer in the [navigation\_layers](#class-navigationlink2d-property-navigation-layers) bitmask, given a `layer_number` between 1 and 32.

* * *

void **set\_navigation\_map**(navigation\_map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationlink2d-method-set-navigation-map)

Sets the [RID](class_rid.md#class-rid) of the navigation map this link should use. By default the link will automatically join the [World2D](class_world2d.md#class-world2d) default navigation map so this function is only required to override the default map.

[Previous](class_navigationagent3d.md "NavigationAgent3D") [Next](class_navigationlink3d.md "NavigationLink3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationagent3d.md "NavigationAgent3D") [Next](class_navigationlink3d.md "NavigationLink3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).