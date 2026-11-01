---
title: NavigationObstacle3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationobstacle3d.html
crawled_at: "2026-08-13T10:41:39+12:00"
content_hash: 0b3d3f41766d6171e0a4c38dfed714056dda242adc6a468f3ec2fddf9d06f4d7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationObstacle3D

* * *

# NavigationObstacle3D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

3D obstacle used to affect navigation mesh baking or constrain velocities of avoidance controlled agents.

## Description

An obstacle needs a navigation map and outline [vertices](#class-navigationobstacle3d-property-vertices) defined to work correctly. The outlines can not cross or overlap and are restricted to a plane projection. This means the y-axis of the vertices is ignored, instead the obstacle's global y-axis position is used for placement. The projected shape is extruded by the obstacles height along the y-axis.

Obstacles can be included in the navigation mesh baking process when [affect\_navigation\_mesh](#class-navigationobstacle3d-property-affect-navigation-mesh) is enabled. They do not add walkable geometry, instead their role is to discard other source geometry inside the shape. This can be used to prevent navigation mesh from appearing in unwanted places, e.g. inside "solid" geometry or on top of it. If [carve\_navigation\_mesh](#class-navigationobstacle3d-property-carve-navigation-mesh) is enabled the baked shape will not be affected by offsets of the navigation mesh baking, e.g. the agent radius.

With [avoidance\_enabled](#class-navigationobstacle3d-property-avoidance-enabled) the obstacle can constrain the avoidance velocities of avoidance using agents. If the obstacle's vertices are wound in clockwise order, avoidance agents will be pushed in by the obstacle, otherwise, avoidance agents will be pushed out. Obstacles using vertices and avoidance can warp to a new position but should not be moved every single frame as each change requires a rebuild of the avoidance map.

## Tutorials

- [Using NavigationObstacles](../tutorials/navigation/navigation_using_navigationobstacles.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [affect\_navigation\_mesh](#class-navigationobstacle3d-property-affect-navigation-mesh) | `false` |
| [bool](class_bool.md#class-bool) | [avoidance\_enabled](#class-navigationobstacle3d-property-avoidance-enabled) | `true` |
| [int](class_int.md#class-int) | [avoidance\_layers](#class-navigationobstacle3d-property-avoidance-layers) | `1` |
| [bool](class_bool.md#class-bool) | [carve\_navigation\_mesh](#class-navigationobstacle3d-property-carve-navigation-mesh) | `false` |
| [float](class_float.md#class-float) | [height](#class-navigationobstacle3d-property-height) | `1.0` |
| [float](class_float.md#class-float) | [radius](#class-navigationobstacle3d-property-radius) | `0.0` |
| [bool](class_bool.md#class-bool) | [use\_3d\_avoidance](#class-navigationobstacle3d-property-use-3d-avoidance) | `false` |
| [Vector3](class_vector3.md#class-vector3) | [velocity](#class-navigationobstacle3d-property-velocity) | `Vector3(0, 0, 0)` |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [vertices](#class-navigationobstacle3d-property-vertices) | `PackedVector3Array()` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [get\_avoidance\_layer\_value](#class-navigationobstacle3d-method-get-avoidance-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_navigation\_map](#class-navigationobstacle3d-method-get-navigation-map)() const |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-navigationobstacle3d-method-get-rid)() const |
| void | [set\_avoidance\_layer\_value](#class-navigationobstacle3d-method-set-avoidance-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_navigation\_map](#class-navigationobstacle3d-method-set-navigation-map)(navigation\_map: [RID](class_rid.md#class-rid)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **affect\_navigation\_mesh** = `false` [🔗](#class-navigationobstacle3d-property-affect-navigation-mesh)

- void **set\_affect\_navigation\_mesh**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_affect\_navigation\_mesh**()


If enabled and parsed in a navigation mesh baking process the obstacle will discard source geometry inside its [vertices](#class-navigationobstacle3d-property-vertices) and [height](#class-navigationobstacle3d-property-height) defined shape.

* * *

[bool](class_bool.md#class-bool) **avoidance\_enabled** = `true` [🔗](#class-navigationobstacle3d-property-avoidance-enabled)

- void **set\_avoidance\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_avoidance\_enabled**()


If `true` the obstacle affects avoidance using agents.

* * *

[int](class_int.md#class-int) **avoidance\_layers** = `1` [🔗](#class-navigationobstacle3d-property-avoidance-layers)

- void **set\_avoidance\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_avoidance\_layers**()


A bitfield determining the avoidance layers for this obstacle. Agents with a matching bit on the their avoidance mask will avoid this obstacle.

* * *

[bool](class_bool.md#class-bool) **carve\_navigation\_mesh** = `false` [🔗](#class-navigationobstacle3d-property-carve-navigation-mesh)

- void **set\_carve\_navigation\_mesh**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_carve\_navigation\_mesh**()


If enabled the obstacle vertices will carve into the baked navigation mesh with the shape unaffected by additional offsets (e.g. agent radius).

It will still be affected by further postprocessing of the baking process, like edge and polygon simplification.

Requires [affect\_navigation\_mesh](#class-navigationobstacle3d-property-affect-navigation-mesh) to be enabled.

* * *

[float](class_float.md#class-float) **height** = `1.0` [🔗](#class-navigationobstacle3d-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


Sets the obstacle height used in 2D avoidance. 2D avoidance using agent's ignore obstacles that are below or above them.

* * *

[float](class_float.md#class-float) **radius** = `0.0` [🔗](#class-navigationobstacle3d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


Sets the avoidance radius for the obstacle.

* * *

[bool](class_bool.md#class-bool) **use\_3d\_avoidance** = `false` [🔗](#class-navigationobstacle3d-property-use-3d-avoidance)

- void **set\_use\_3d\_avoidance**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_3d\_avoidance**()


If `true` the obstacle affects 3D avoidance using agent's with obstacle [radius](#class-navigationobstacle3d-property-radius).

If `false` the obstacle affects 2D avoidance using agent's with both obstacle [vertices](#class-navigationobstacle3d-property-vertices) as well as obstacle [radius](#class-navigationobstacle3d-property-radius).

* * *

[Vector3](class_vector3.md#class-vector3) **velocity** = `Vector3(0, 0, 0)` [🔗](#class-navigationobstacle3d-property-velocity)

- void **set\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_velocity**()


Sets the wanted velocity for the obstacle so other agent's can better predict the obstacle if it is moved with a velocity regularly (every frame) instead of warped to a new position. Does only affect avoidance for the obstacles [radius](#class-navigationobstacle3d-property-radius). Does nothing for the obstacles static vertices.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **vertices** = `PackedVector3Array()` [🔗](#class-navigationobstacle3d-property-vertices)

- void **set\_vertices**(value: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array))

- [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_vertices**()


The outline vertices of the obstacle. If the vertices are winded in clockwise order agents will be pushed in by the obstacle, else they will be pushed out. Outlines can not be crossed or overlap. Should the vertices using obstacle be warped to a new position agent's can not predict this movement and may get trapped inside the obstacle.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) for more details.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **get\_avoidance\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-navigationobstacle3d-method-get-avoidance-layer-value)

Returns whether or not the specified layer of the [avoidance\_layers](#class-navigationobstacle3d-property-avoidance-layers) bitmask is enabled, given a `layer_number` between 1 and 32.

* * *

[RID](class_rid.md#class-rid) **get\_navigation\_map**() const [🔗](#class-navigationobstacle3d-method-get-navigation-map)

Returns the [RID](class_rid.md#class-rid) of the navigation map for this NavigationObstacle node. This function returns always the map set on the NavigationObstacle node and not the map of the abstract obstacle on the NavigationServer. If the obstacle map is changed directly with the NavigationServer API the NavigationObstacle node will not be aware of the map change. Use [set\_navigation\_map()](#class-navigationobstacle3d-method-set-navigation-map) to change the navigation map for the NavigationObstacle and also update the obstacle on the NavigationServer.

* * *

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-navigationobstacle3d-method-get-rid)

Returns the [RID](class_rid.md#class-rid) of this obstacle on the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

* * *

void **set\_avoidance\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-navigationobstacle3d-method-set-avoidance-layer-value)

Based on `value`, enables or disables the specified layer in the [avoidance\_layers](#class-navigationobstacle3d-property-avoidance-layers) bitmask, given a `layer_number` between 1 and 32.

* * *

void **set\_navigation\_map**(navigation\_map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationobstacle3d-method-set-navigation-map)

Sets the [RID](class_rid.md#class-rid) of the navigation map this NavigationObstacle node should use and also updates the `obstacle` on the NavigationServer.

[Previous](class_navigationobstacle2d.md "NavigationObstacle2D") [Next](class_navigationregion2d.md "NavigationRegion2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationobstacle2d.md "NavigationObstacle2D") [Next](class_navigationregion2d.md "NavigationRegion2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).