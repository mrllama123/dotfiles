---
title: NavigationObstacle2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationobstacle2d.html
crawled_at: "2026-08-13T10:19:04+12:00"
content_hash: 1bb0d5fa2a4c7ae291da179560edd8dfd904ff87107347e73a1deee0068e1ba8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationObstacle2D

* * *

# NavigationObstacle2D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

2D obstacle used to affect navigation mesh baking or constrain velocities of avoidance controlled agents.

## Description

An obstacle needs a navigation map and outline [vertices](#class-navigationobstacle2d-property-vertices) defined to work correctly. The outlines can not cross or overlap.

Obstacles can be included in the navigation mesh baking process when [affect\_navigation\_mesh](#class-navigationobstacle2d-property-affect-navigation-mesh) is enabled. They do not add walkable geometry, instead their role is to discard other source geometry inside the shape. This can be used to prevent navigation mesh from appearing in unwanted places. If [carve\_navigation\_mesh](#class-navigationobstacle2d-property-carve-navigation-mesh) is enabled the baked shape will not be affected by offsets of the navigation mesh baking, e.g. the agent radius.

With [avoidance\_enabled](#class-navigationobstacle2d-property-avoidance-enabled) the obstacle can constrain the avoidance velocities of avoidance using agents. If the obstacle's vertices are wound in clockwise order, avoidance agents will be pushed in by the obstacle, otherwise, avoidance agents will be pushed out. Obstacles using vertices and avoidance can warp to a new position but should not be moved every single frame as each change requires a rebuild of the avoidance map.

## Tutorials

- [Using NavigationObstacles](../tutorials/navigation/navigation_using_navigationobstacles.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [affect\_navigation\_mesh](#class-navigationobstacle2d-property-affect-navigation-mesh) | `false` |
| [bool](class_bool.md#class-bool) | [avoidance\_enabled](#class-navigationobstacle2d-property-avoidance-enabled) | `true` |
| [int](class_int.md#class-int) | [avoidance\_layers](#class-navigationobstacle2d-property-avoidance-layers) | `1` |
| [bool](class_bool.md#class-bool) | [carve\_navigation\_mesh](#class-navigationobstacle2d-property-carve-navigation-mesh) | `false` |
| [float](class_float.md#class-float) | [radius](#class-navigationobstacle2d-property-radius) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [velocity](#class-navigationobstacle2d-property-velocity) | `Vector2(0, 0)` |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [vertices](#class-navigationobstacle2d-property-vertices) | `PackedVector2Array()` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [get\_avoidance\_layer\_value](#class-navigationobstacle2d-method-get-avoidance-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_navigation\_map](#class-navigationobstacle2d-method-get-navigation-map)() const |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-navigationobstacle2d-method-get-rid)() const |
| void | [set\_avoidance\_layer\_value](#class-navigationobstacle2d-method-set-avoidance-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_navigation\_map](#class-navigationobstacle2d-method-set-navigation-map)(navigation\_map: [RID](class_rid.md#class-rid)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **affect\_navigation\_mesh** = `false` [🔗](#class-navigationobstacle2d-property-affect-navigation-mesh)

- void **set\_affect\_navigation\_mesh**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_affect\_navigation\_mesh**()


If enabled and parsed in a navigation mesh baking process the obstacle will discard source geometry inside its [vertices](#class-navigationobstacle2d-property-vertices) defined shape.

* * *

[bool](class_bool.md#class-bool) **avoidance\_enabled** = `true` [🔗](#class-navigationobstacle2d-property-avoidance-enabled)

- void **set\_avoidance\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_avoidance\_enabled**()


If `true` the obstacle affects avoidance using agents.

* * *

[int](class_int.md#class-int) **avoidance\_layers** = `1` [🔗](#class-navigationobstacle2d-property-avoidance-layers)

- void **set\_avoidance\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_avoidance\_layers**()


A bitfield determining the avoidance layers for this obstacle. Agents with a matching bit on the their avoidance mask will avoid this obstacle.

* * *

[bool](class_bool.md#class-bool) **carve\_navigation\_mesh** = `false` [🔗](#class-navigationobstacle2d-property-carve-navigation-mesh)

- void **set\_carve\_navigation\_mesh**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_carve\_navigation\_mesh**()


If enabled the obstacle vertices will carve into the baked navigation mesh with the shape unaffected by additional offsets (e.g. agent radius).

It will still be affected by further postprocessing of the baking process, like edge and polygon simplification.

Requires [affect\_navigation\_mesh](#class-navigationobstacle2d-property-affect-navigation-mesh) to be enabled.

* * *

[float](class_float.md#class-float) **radius** = `0.0` [🔗](#class-navigationobstacle2d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


Sets the avoidance radius for the obstacle.

* * *

[Vector2](class_vector2.md#class-vector2) **velocity** = `Vector2(0, 0)` [🔗](#class-navigationobstacle2d-property-velocity)

- void **set\_velocity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_velocity**()


Sets the wanted velocity for the obstacle so other agent's can better predict the obstacle if it is moved with a velocity regularly (every frame) instead of warped to a new position. Does only affect avoidance for the obstacles [radius](#class-navigationobstacle2d-property-radius). Does nothing for the obstacles static vertices.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **vertices** = `PackedVector2Array()` [🔗](#class-navigationobstacle2d-property-vertices)

- void **set\_vertices**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_vertices**()


The outline vertices of the obstacle. If the vertices are winded in clockwise order agents will be pushed in by the obstacle, else they will be pushed out. Outlines can not be crossed or overlap. Should the vertices using obstacle be warped to a new position agent's can not predict this movement and may get trapped inside the obstacle.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **get\_avoidance\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-navigationobstacle2d-method-get-avoidance-layer-value)

Returns whether or not the specified layer of the [avoidance\_layers](#class-navigationobstacle2d-property-avoidance-layers) bitmask is enabled, given a `layer_number` between 1 and 32.

* * *

[RID](class_rid.md#class-rid) **get\_navigation\_map**() const [🔗](#class-navigationobstacle2d-method-get-navigation-map)

Returns the [RID](class_rid.md#class-rid) of the navigation map for this NavigationObstacle node. This function returns always the map set on the NavigationObstacle node and not the map of the abstract obstacle on the NavigationServer. If the obstacle map is changed directly with the NavigationServer API the NavigationObstacle node will not be aware of the map change. Use [set\_navigation\_map()](#class-navigationobstacle2d-method-set-navigation-map) to change the navigation map for the NavigationObstacle and also update the obstacle on the NavigationServer.

* * *

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-navigationobstacle2d-method-get-rid)

Returns the [RID](class_rid.md#class-rid) of this obstacle on the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

* * *

void **set\_avoidance\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-navigationobstacle2d-method-set-avoidance-layer-value)

Based on `value`, enables or disables the specified layer in the [avoidance\_layers](#class-navigationobstacle2d-property-avoidance-layers) bitmask, given a `layer_number` between 1 and 32.

* * *

void **set\_navigation\_map**(navigation\_map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationobstacle2d-method-set-navigation-map)

Sets the [RID](class_rid.md#class-rid) of the navigation map this NavigationObstacle node should use and also updates the `obstacle` on the NavigationServer.

[Previous](class_navigationlink3d.md "NavigationLink3D") [Next](class_navigationobstacle3d.md "NavigationObstacle3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationlink3d.md "NavigationLink3D") [Next](class_navigationobstacle3d.md "NavigationObstacle3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).