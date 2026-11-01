---
title: NavigationServer2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationserver2d.html
crawled_at: "2026-08-13T10:35:09+12:00"
content_hash: b3fe5f6d2f53dcc320ce6cfbd2e6b03c728d15def244adc9a38c612c429c9788
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationServer2D

* * *

# NavigationServer2D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Object](class_object.md#class-object)

A server interface for low-level 2D navigation access.

## Description

NavigationServer2D is the server that handles navigation maps, regions and agents. It does not handle A\* navigation from [AStar2D](class_astar2d.md#class-astar2d) or [AStarGrid2D](class_astargrid2d.md#class-astargrid2d).

Maps are divided into regions, which are composed of navigation polygons. Together, they define the traversable areas in the 2D world.

**Note:** Most **NavigationServer2D** changes take effect after the next physics frame and not immediately. This includes all changes made to maps, regions or agents by navigation-related nodes in the scene tree or made through scripts.

For two regions to be connected to each other, they must share a similar edge. An edge is considered connected to another if both of its two vertices are at a distance less than `edge_connection_margin` to the respective other edge's vertex.

You may assign navigation layers to regions with [region\_set\_navigation\_layers()](#class-navigationserver2d-method-region-set-navigation-layers), which then can be checked upon when requesting a path with [map\_get\_path()](#class-navigationserver2d-method-map-get-path). This can be used to allow or deny certain areas for some objects.

To use the collision avoidance system, you may use agents. You can set an agent's target velocity, then the servers will emit a callback with a modified velocity.

**Note:** The collision avoidance system ignores regions. Using the modified velocity directly may move an agent outside of the traversable area. This is a limitation of the collision avoidance system, any more complex situation may require the use of the physics engine.

This server keeps tracks of any call and executes them during the sync phase. This means that you can request any change to the map, using any thread, without worrying.

## Tutorials

- [Using NavigationServer](../tutorials/navigation/navigation_using_navigationservers.md)

- [Navigation Polygon 2D Demo](https://godotengine.org/asset-library/asset/2722)


## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [agent\_create](#class-navigationserver2d-method-agent-create)() |
| [bool](class_bool.md#class-bool) | [agent\_get\_avoidance\_enabled](#class-navigationserver2d-method-agent-get-avoidance-enabled)(agent: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [agent\_get\_avoidance\_layers](#class-navigationserver2d-method-agent-get-avoidance-layers)(agent: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [agent\_get\_avoidance\_mask](#class-navigationserver2d-method-agent-get-avoidance-mask)(agent: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [agent\_get\_avoidance\_priority](#class-navigationserver2d-method-agent-get-avoidance-priority)(agent: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [agent\_get\_map](#class-navigationserver2d-method-agent-get-map)(agent: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [agent\_get\_max\_neighbors](#class-navigationserver2d-method-agent-get-max-neighbors)(agent: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [agent\_get\_max\_speed](#class-navigationserver2d-method-agent-get-max-speed)(agent: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [agent\_get\_neighbor\_distance](#class-navigationserver2d-method-agent-get-neighbor-distance)(agent: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [agent\_get\_paused](#class-navigationserver2d-method-agent-get-paused)(agent: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [agent\_get\_position](#class-navigationserver2d-method-agent-get-position)(agent: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [agent\_get\_radius](#class-navigationserver2d-method-agent-get-radius)(agent: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [agent\_get\_time\_horizon\_agents](#class-navigationserver2d-method-agent-get-time-horizon-agents)(agent: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [agent\_get\_time\_horizon\_obstacles](#class-navigationserver2d-method-agent-get-time-horizon-obstacles)(agent: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [agent\_get\_velocity](#class-navigationserver2d-method-agent-get-velocity)(agent: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [agent\_has\_avoidance\_callback](#class-navigationserver2d-method-agent-has-avoidance-callback)(agent: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [agent\_is\_map\_changed](#class-navigationserver2d-method-agent-is-map-changed)(agent: [RID](class_rid.md#class-rid)) const |
| void | [agent\_set\_avoidance\_callback](#class-navigationserver2d-method-agent-set-avoidance-callback)(agent: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) |
| void | [agent\_set\_avoidance\_enabled](#class-navigationserver2d-method-agent-set-avoidance-enabled)(agent: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [agent\_set\_avoidance\_layers](#class-navigationserver2d-method-agent-set-avoidance-layers)(agent: [RID](class_rid.md#class-rid), layers: [int](class_int.md#class-int)) |
| void | [agent\_set\_avoidance\_mask](#class-navigationserver2d-method-agent-set-avoidance-mask)(agent: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [agent\_set\_avoidance\_priority](#class-navigationserver2d-method-agent-set-avoidance-priority)(agent: [RID](class_rid.md#class-rid), priority: [float](class_float.md#class-float)) |
| void | [agent\_set\_map](#class-navigationserver2d-method-agent-set-map)(agent: [RID](class_rid.md#class-rid), map: [RID](class_rid.md#class-rid)) |
| void | [agent\_set\_max\_neighbors](#class-navigationserver2d-method-agent-set-max-neighbors)(agent: [RID](class_rid.md#class-rid), count: [int](class_int.md#class-int)) |
| void | [agent\_set\_max\_speed](#class-navigationserver2d-method-agent-set-max-speed)(agent: [RID](class_rid.md#class-rid), max\_speed: [float](class_float.md#class-float)) |
| void | [agent\_set\_neighbor\_distance](#class-navigationserver2d-method-agent-set-neighbor-distance)(agent: [RID](class_rid.md#class-rid), distance: [float](class_float.md#class-float)) |
| void | [agent\_set\_paused](#class-navigationserver2d-method-agent-set-paused)(agent: [RID](class_rid.md#class-rid), paused: [bool](class_bool.md#class-bool)) |
| void | [agent\_set\_position](#class-navigationserver2d-method-agent-set-position)(agent: [RID](class_rid.md#class-rid), position: [Vector2](class_vector2.md#class-vector2)) |
| void | [agent\_set\_radius](#class-navigationserver2d-method-agent-set-radius)(agent: [RID](class_rid.md#class-rid), radius: [float](class_float.md#class-float)) |
| void | [agent\_set\_time\_horizon\_agents](#class-navigationserver2d-method-agent-set-time-horizon-agents)(agent: [RID](class_rid.md#class-rid), time\_horizon: [float](class_float.md#class-float)) |
| void | [agent\_set\_time\_horizon\_obstacles](#class-navigationserver2d-method-agent-set-time-horizon-obstacles)(agent: [RID](class_rid.md#class-rid), time\_horizon: [float](class_float.md#class-float)) |
| void | [agent\_set\_velocity](#class-navigationserver2d-method-agent-set-velocity)(agent: [RID](class_rid.md#class-rid), velocity: [Vector2](class_vector2.md#class-vector2)) |
| void | [agent\_set\_velocity\_forced](#class-navigationserver2d-method-agent-set-velocity-forced)(agent: [RID](class_rid.md#class-rid), velocity: [Vector2](class_vector2.md#class-vector2)) |
| void | [bake\_from\_source\_geometry\_data](#class-navigationserver2d-method-bake-from-source-geometry-data)(navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon), source\_geometry\_data: [NavigationMeshSourceGeometryData2D](class_navigationmeshsourcegeometrydata2d.md#class-navigationmeshsourcegeometrydata2d), callback: [Callable](class_callable.md#class-callable) = Callable()) |
| void | [bake\_from\_source\_geometry\_data\_async](#class-navigationserver2d-method-bake-from-source-geometry-data-async)(navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon), source\_geometry\_data: [NavigationMeshSourceGeometryData2D](class_navigationmeshsourcegeometrydata2d.md#class-navigationmeshsourcegeometrydata2d), callback: [Callable](class_callable.md#class-callable) = Callable()) |
| void | [free\_rid](#class-navigationserver2d-method-free-rid)(rid: [RID](class_rid.md#class-rid)) |
| [bool](class_bool.md#class-bool) | [get\_debug\_enabled](#class-navigationserver2d-method-get-debug-enabled)() const |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [get\_maps](#class-navigationserver2d-method-get-maps)() const |
| [int](class_int.md#class-int) | [get\_process\_info](#class-navigationserver2d-method-get-process-info)(process\_info: [ProcessInfo](#enum-navigationserver2d-processinfo)) const |
| [bool](class_bool.md#class-bool) | [is\_baking\_navigation\_polygon](#class-navigationserver2d-method-is-baking-navigation-polygon)(navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon)) const |
| [RID](class_rid.md#class-rid) | [link\_create](#class-navigationserver2d-method-link-create)() |
| [bool](class_bool.md#class-bool) | [link\_get\_enabled](#class-navigationserver2d-method-link-get-enabled)(link: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [link\_get\_end\_position](#class-navigationserver2d-method-link-get-end-position)(link: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [link\_get\_enter\_cost](#class-navigationserver2d-method-link-get-enter-cost)(link: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [link\_get\_iteration\_id](#class-navigationserver2d-method-link-get-iteration-id)(link: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [link\_get\_map](#class-navigationserver2d-method-link-get-map)(link: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [link\_get\_navigation\_layers](#class-navigationserver2d-method-link-get-navigation-layers)(link: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [link\_get\_owner\_id](#class-navigationserver2d-method-link-get-owner-id)(link: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [link\_get\_start\_position](#class-navigationserver2d-method-link-get-start-position)(link: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [link\_get\_travel\_cost](#class-navigationserver2d-method-link-get-travel-cost)(link: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [link\_is\_bidirectional](#class-navigationserver2d-method-link-is-bidirectional)(link: [RID](class_rid.md#class-rid)) const |
| void | [link\_set\_bidirectional](#class-navigationserver2d-method-link-set-bidirectional)(link: [RID](class_rid.md#class-rid), bidirectional: [bool](class_bool.md#class-bool)) |
| void | [link\_set\_enabled](#class-navigationserver2d-method-link-set-enabled)(link: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [link\_set\_end\_position](#class-navigationserver2d-method-link-set-end-position)(link: [RID](class_rid.md#class-rid), position: [Vector2](class_vector2.md#class-vector2)) |
| void | [link\_set\_enter\_cost](#class-navigationserver2d-method-link-set-enter-cost)(link: [RID](class_rid.md#class-rid), enter\_cost: [float](class_float.md#class-float)) |
| void | [link\_set\_map](#class-navigationserver2d-method-link-set-map)(link: [RID](class_rid.md#class-rid), map: [RID](class_rid.md#class-rid)) |
| void | [link\_set\_navigation\_layers](#class-navigationserver2d-method-link-set-navigation-layers)(link: [RID](class_rid.md#class-rid), navigation\_layers: [int](class_int.md#class-int)) |
| void | [link\_set\_owner\_id](#class-navigationserver2d-method-link-set-owner-id)(link: [RID](class_rid.md#class-rid), owner\_id: [int](class_int.md#class-int)) |
| void | [link\_set\_start\_position](#class-navigationserver2d-method-link-set-start-position)(link: [RID](class_rid.md#class-rid), position: [Vector2](class_vector2.md#class-vector2)) |
| void | [link\_set\_travel\_cost](#class-navigationserver2d-method-link-set-travel-cost)(link: [RID](class_rid.md#class-rid), travel\_cost: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [map\_create](#class-navigationserver2d-method-map-create)() |
| void | [map\_force\_update](#class-navigationserver2d-method-map-force-update)(map: [RID](class_rid.md#class-rid)) |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [map\_get\_agents](#class-navigationserver2d-method-map-get-agents)(map: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [map\_get\_cell\_size](#class-navigationserver2d-method-map-get-cell-size)(map: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [map\_get\_closest\_point](#class-navigationserver2d-method-map-get-closest-point)(map: [RID](class_rid.md#class-rid), to\_point: [Vector2](class_vector2.md#class-vector2)) const |
| [RID](class_rid.md#class-rid) | [map\_get\_closest\_point\_owner](#class-navigationserver2d-method-map-get-closest-point-owner)(map: [RID](class_rid.md#class-rid), to\_point: [Vector2](class_vector2.md#class-vector2)) const |
| [float](class_float.md#class-float) | [map\_get\_edge\_connection\_margin](#class-navigationserver2d-method-map-get-edge-connection-margin)(map: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [map\_get\_iteration\_id](#class-navigationserver2d-method-map-get-iteration-id)(map: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [map\_get\_link\_connection\_radius](#class-navigationserver2d-method-map-get-link-connection-radius)(map: [RID](class_rid.md#class-rid)) const |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [map\_get\_links](#class-navigationserver2d-method-map-get-links)(map: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [map\_get\_merge\_rasterizer\_cell\_scale](#class-navigationserver2d-method-map-get-merge-rasterizer-cell-scale)(map: [RID](class_rid.md#class-rid)) const |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [map\_get\_obstacles](#class-navigationserver2d-method-map-get-obstacles)(map: [RID](class_rid.md#class-rid)) const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [map\_get\_path](#class-navigationserver2d-method-map-get-path)(map: [RID](class_rid.md#class-rid), origin: [Vector2](class_vector2.md#class-vector2), destination: [Vector2](class_vector2.md#class-vector2), optimize: [bool](class_bool.md#class-bool), navigation\_layers: [int](class_int.md#class-int) = 1) |
| [Vector2](class_vector2.md#class-vector2) | [map\_get\_random\_point](#class-navigationserver2d-method-map-get-random-point)(map: [RID](class_rid.md#class-rid), navigation\_layers: [int](class_int.md#class-int), uniformly: [bool](class_bool.md#class-bool)) const |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [map\_get\_regions](#class-navigationserver2d-method-map-get-regions)(map: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [map\_get\_use\_async\_iterations](#class-navigationserver2d-method-map-get-use-async-iterations)(map: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [map\_get\_use\_edge\_connections](#class-navigationserver2d-method-map-get-use-edge-connections)(map: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [map\_is\_active](#class-navigationserver2d-method-map-is-active)(map: [RID](class_rid.md#class-rid)) const |
| void | [map\_set\_active](#class-navigationserver2d-method-map-set-active)(map: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) |
| void | [map\_set\_cell\_size](#class-navigationserver2d-method-map-set-cell-size)(map: [RID](class_rid.md#class-rid), cell\_size: [float](class_float.md#class-float)) |
| void | [map\_set\_edge\_connection\_margin](#class-navigationserver2d-method-map-set-edge-connection-margin)(map: [RID](class_rid.md#class-rid), margin: [float](class_float.md#class-float)) |
| void | [map\_set\_link\_connection\_radius](#class-navigationserver2d-method-map-set-link-connection-radius)(map: [RID](class_rid.md#class-rid), radius: [float](class_float.md#class-float)) |
| void | [map\_set\_merge\_rasterizer\_cell\_scale](#class-navigationserver2d-method-map-set-merge-rasterizer-cell-scale)(map: [RID](class_rid.md#class-rid), scale: [float](class_float.md#class-float)) |
| void | [map\_set\_use\_async\_iterations](#class-navigationserver2d-method-map-set-use-async-iterations)(map: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [map\_set\_use\_edge\_connections](#class-navigationserver2d-method-map-set-use-edge-connections)(map: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| [RID](class_rid.md#class-rid) | [obstacle\_create](#class-navigationserver2d-method-obstacle-create)() |
| [bool](class_bool.md#class-bool) | [obstacle\_get\_avoidance\_enabled](#class-navigationserver2d-method-obstacle-get-avoidance-enabled)(obstacle: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [obstacle\_get\_avoidance\_layers](#class-navigationserver2d-method-obstacle-get-avoidance-layers)(obstacle: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [obstacle\_get\_map](#class-navigationserver2d-method-obstacle-get-map)(obstacle: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [obstacle\_get\_paused](#class-navigationserver2d-method-obstacle-get-paused)(obstacle: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [obstacle\_get\_position](#class-navigationserver2d-method-obstacle-get-position)(obstacle: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [obstacle\_get\_radius](#class-navigationserver2d-method-obstacle-get-radius)(obstacle: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [obstacle\_get\_velocity](#class-navigationserver2d-method-obstacle-get-velocity)(obstacle: [RID](class_rid.md#class-rid)) const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [obstacle\_get\_vertices](#class-navigationserver2d-method-obstacle-get-vertices)(obstacle: [RID](class_rid.md#class-rid)) const |
| void | [obstacle\_set\_avoidance\_enabled](#class-navigationserver2d-method-obstacle-set-avoidance-enabled)(obstacle: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [obstacle\_set\_avoidance\_layers](#class-navigationserver2d-method-obstacle-set-avoidance-layers)(obstacle: [RID](class_rid.md#class-rid), layers: [int](class_int.md#class-int)) |
| void | [obstacle\_set\_map](#class-navigationserver2d-method-obstacle-set-map)(obstacle: [RID](class_rid.md#class-rid), map: [RID](class_rid.md#class-rid)) |
| void | [obstacle\_set\_paused](#class-navigationserver2d-method-obstacle-set-paused)(obstacle: [RID](class_rid.md#class-rid), paused: [bool](class_bool.md#class-bool)) |
| void | [obstacle\_set\_position](#class-navigationserver2d-method-obstacle-set-position)(obstacle: [RID](class_rid.md#class-rid), position: [Vector2](class_vector2.md#class-vector2)) |
| void | [obstacle\_set\_radius](#class-navigationserver2d-method-obstacle-set-radius)(obstacle: [RID](class_rid.md#class-rid), radius: [float](class_float.md#class-float)) |
| void | [obstacle\_set\_velocity](#class-navigationserver2d-method-obstacle-set-velocity)(obstacle: [RID](class_rid.md#class-rid), velocity: [Vector2](class_vector2.md#class-vector2)) |
| void | [obstacle\_set\_vertices](#class-navigationserver2d-method-obstacle-set-vertices)(obstacle: [RID](class_rid.md#class-rid), vertices: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| void | [parse\_source\_geometry\_data](#class-navigationserver2d-method-parse-source-geometry-data)(navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon), source\_geometry\_data: [NavigationMeshSourceGeometryData2D](class_navigationmeshsourcegeometrydata2d.md#class-navigationmeshsourcegeometrydata2d), root\_node: [Node](class_node.md#class-node), callback: [Callable](class_callable.md#class-callable) = Callable()) |
| void | [query\_path](#class-navigationserver2d-method-query-path)(parameters: [NavigationPathQueryParameters2D](class_navigationpathqueryparameters2d.md#class-navigationpathqueryparameters2d), result: [NavigationPathQueryResult2D](class_navigationpathqueryresult2d.md#class-navigationpathqueryresult2d), callback: [Callable](class_callable.md#class-callable) = Callable()) |
| [RID](class_rid.md#class-rid) | [region\_create](#class-navigationserver2d-method-region-create)() |
| [Rect2](class_rect2.md#class-rect2) | [region\_get\_bounds](#class-navigationserver2d-method-region-get-bounds)(region: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [region\_get\_closest\_point](#class-navigationserver2d-method-region-get-closest-point)(region: [RID](class_rid.md#class-rid), to\_point: [Vector2](class_vector2.md#class-vector2)) const |
| [Vector2](class_vector2.md#class-vector2) | [region\_get\_connection\_pathway\_end](#class-navigationserver2d-method-region-get-connection-pathway-end)(region: [RID](class_rid.md#class-rid), connection: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [region\_get\_connection\_pathway\_start](#class-navigationserver2d-method-region-get-connection-pathway-start)(region: [RID](class_rid.md#class-rid), connection: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [region\_get\_connections\_count](#class-navigationserver2d-method-region-get-connections-count)(region: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [region\_get\_enabled](#class-navigationserver2d-method-region-get-enabled)(region: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [region\_get\_enter\_cost](#class-navigationserver2d-method-region-get-enter-cost)(region: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [region\_get\_iteration\_id](#class-navigationserver2d-method-region-get-iteration-id)(region: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [region\_get\_map](#class-navigationserver2d-method-region-get-map)(region: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [region\_get\_navigation\_layers](#class-navigationserver2d-method-region-get-navigation-layers)(region: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [region\_get\_owner\_id](#class-navigationserver2d-method-region-get-owner-id)(region: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [region\_get\_random\_point](#class-navigationserver2d-method-region-get-random-point)(region: [RID](class_rid.md#class-rid), navigation\_layers: [int](class_int.md#class-int), uniformly: [bool](class_bool.md#class-bool)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [region\_get\_transform](#class-navigationserver2d-method-region-get-transform)(region: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [region\_get\_travel\_cost](#class-navigationserver2d-method-region-get-travel-cost)(region: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [region\_get\_use\_async\_iterations](#class-navigationserver2d-method-region-get-use-async-iterations)(region: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [region\_get\_use\_edge\_connections](#class-navigationserver2d-method-region-get-use-edge-connections)(region: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [region\_owns\_point](#class-navigationserver2d-method-region-owns-point)(region: [RID](class_rid.md#class-rid), point: [Vector2](class_vector2.md#class-vector2)) const |
| void | [region\_set\_enabled](#class-navigationserver2d-method-region-set-enabled)(region: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [region\_set\_enter\_cost](#class-navigationserver2d-method-region-set-enter-cost)(region: [RID](class_rid.md#class-rid), enter\_cost: [float](class_float.md#class-float)) |
| void | [region\_set\_map](#class-navigationserver2d-method-region-set-map)(region: [RID](class_rid.md#class-rid), map: [RID](class_rid.md#class-rid)) |
| void | [region\_set\_navigation\_layers](#class-navigationserver2d-method-region-set-navigation-layers)(region: [RID](class_rid.md#class-rid), navigation\_layers: [int](class_int.md#class-int)) |
| void | [region\_set\_navigation\_polygon](#class-navigationserver2d-method-region-set-navigation-polygon)(region: [RID](class_rid.md#class-rid), navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon)) |
| void | [region\_set\_owner\_id](#class-navigationserver2d-method-region-set-owner-id)(region: [RID](class_rid.md#class-rid), owner\_id: [int](class_int.md#class-int)) |
| void | [region\_set\_transform](#class-navigationserver2d-method-region-set-transform)(region: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [region\_set\_travel\_cost](#class-navigationserver2d-method-region-set-travel-cost)(region: [RID](class_rid.md#class-rid), travel\_cost: [float](class_float.md#class-float)) |
| void | [region\_set\_use\_async\_iterations](#class-navigationserver2d-method-region-set-use-async-iterations)(region: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [region\_set\_use\_edge\_connections](#class-navigationserver2d-method-region-set-use-edge-connections)(region: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_active](#class-navigationserver2d-method-set-active)(active: [bool](class_bool.md#class-bool)) |
| void | [set\_debug\_enabled](#class-navigationserver2d-method-set-debug-enabled)(enabled: [bool](class_bool.md#class-bool)) |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [simplify\_path](#class-navigationserver2d-method-simplify-path)(path: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), epsilon: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [source\_geometry\_parser\_create](#class-navigationserver2d-method-source-geometry-parser-create)() |
| void | [source\_geometry\_parser\_set\_callback](#class-navigationserver2d-method-source-geometry-parser-set-callback)(parser: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) |

* * *

## Signals

**avoidance\_debug\_changed**() [🔗](#class-navigationserver2d-signal-avoidance-debug-changed)

Emitted when avoidance debug settings are changed. Only available in debug builds.

* * *

**map\_changed**(map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationserver2d-signal-map-changed)

Emitted when a navigation map is updated, when a region moves or is modified.

* * *

**navigation\_debug\_changed**() [🔗](#class-navigationserver2d-signal-navigation-debug-changed)

Emitted when navigation debug settings are changed. Only available in debug builds.

* * *

## Enumerations

enum **ProcessInfo**: [🔗](#enum-navigationserver2d-processinfo)

[ProcessInfo](#enum-navigationserver2d-processinfo) **INFO\_ACTIVE\_MAPS** = `0`

Constant to get the number of active navigation maps.

[ProcessInfo](#enum-navigationserver2d-processinfo) **INFO\_REGION\_COUNT** = `1`

Constant to get the number of active navigation regions.

[ProcessInfo](#enum-navigationserver2d-processinfo) **INFO\_AGENT\_COUNT** = `2`

Constant to get the number of active navigation agents processing avoidance.

[ProcessInfo](#enum-navigationserver2d-processinfo) **INFO\_LINK\_COUNT** = `3`

Constant to get the number of active navigation links.

[ProcessInfo](#enum-navigationserver2d-processinfo) **INFO\_POLYGON\_COUNT** = `4`

Constant to get the number of navigation mesh polygons.

[ProcessInfo](#enum-navigationserver2d-processinfo) **INFO\_EDGE\_COUNT** = `5`

Constant to get the number of navigation mesh polygon edges.

[ProcessInfo](#enum-navigationserver2d-processinfo) **INFO\_EDGE\_MERGE\_COUNT** = `6`

Constant to get the number of navigation mesh polygon edges that were merged due to edge key overlap.

[ProcessInfo](#enum-navigationserver2d-processinfo) **INFO\_EDGE\_CONNECTION\_COUNT** = `7`

Constant to get the number of navigation mesh polygon edges that are considered connected by edge proximity.

[ProcessInfo](#enum-navigationserver2d-processinfo) **INFO\_EDGE\_FREE\_COUNT** = `8`

Constant to get the number of navigation mesh polygon edges that could not be merged but may be still connected by edge proximity or with links.

[ProcessInfo](#enum-navigationserver2d-processinfo) **INFO\_OBSTACLE\_COUNT** = `9`

Constant to get the number of active navigation obstacles.

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **agent\_create**() [🔗](#class-navigationserver2d-method-agent-create)

Creates the agent.

* * *

[bool](class_bool.md#class-bool) **agent\_get\_avoidance\_enabled**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-avoidance-enabled)

Return `true` if the specified `agent` uses avoidance.

* * *

[int](class_int.md#class-int) **agent\_get\_avoidance\_layers**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-avoidance-layers)

Returns the `avoidance_layers` bitmask of the specified `agent`.

* * *

[int](class_int.md#class-int) **agent\_get\_avoidance\_mask**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-avoidance-mask)

Returns the `avoidance_mask` bitmask of the specified `agent`.

* * *

[float](class_float.md#class-float) **agent\_get\_avoidance\_priority**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-avoidance-priority)

Returns the `avoidance_priority` of the specified `agent`.

* * *

[RID](class_rid.md#class-rid) **agent\_get\_map**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-map)

Returns the navigation map [RID](class_rid.md#class-rid) the requested `agent` is currently assigned to.

* * *

[int](class_int.md#class-int) **agent\_get\_max\_neighbors**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-max-neighbors)

Returns the maximum number of other agents the specified `agent` takes into account in the navigation.

* * *

[float](class_float.md#class-float) **agent\_get\_max\_speed**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-max-speed)

Returns the maximum speed of the specified `agent`.

* * *

[float](class_float.md#class-float) **agent\_get\_neighbor\_distance**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-neighbor-distance)

Returns the maximum distance to other agents the specified `agent` takes into account in the navigation.

* * *

[bool](class_bool.md#class-bool) **agent\_get\_paused**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-paused)

Returns `true` if the specified `agent` is paused.

* * *

[Vector2](class_vector2.md#class-vector2) **agent\_get\_position**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-position)

Returns the position of the specified `agent` in world space.

* * *

[float](class_float.md#class-float) **agent\_get\_radius**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-radius)

Returns the radius of the specified `agent`.

* * *

[float](class_float.md#class-float) **agent\_get\_time\_horizon\_agents**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-time-horizon-agents)

Returns the minimal amount of time for which the specified `agent`'s velocities that are computed by the simulation are safe with respect to other agents.

* * *

[float](class_float.md#class-float) **agent\_get\_time\_horizon\_obstacles**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-time-horizon-obstacles)

Returns the minimal amount of time for which the specified `agent`'s velocities that are computed by the simulation are safe with respect to static avoidance obstacles.

* * *

[Vector2](class_vector2.md#class-vector2) **agent\_get\_velocity**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-get-velocity)

Returns the velocity of the specified `agent`.

* * *

[bool](class_bool.md#class-bool) **agent\_has\_avoidance\_callback**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-has-avoidance-callback)

Return `true` if the specified `agent` has an avoidance callback.

* * *

[bool](class_bool.md#class-bool) **agent\_is\_map\_changed**(agent: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-agent-is-map-changed)

Returns `true` if the map got changed the previous frame.

* * *

void **agent\_set\_avoidance\_callback**(agent: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-navigationserver2d-method-agent-set-avoidance-callback)

Sets the callback [Callable](class_callable.md#class-callable) that gets called after each avoidance processing step for the `agent`. The calculated `safe_velocity` will be dispatched with a signal to the object just before the physics calculations.

**Note:** Created callbacks are always processed independently of the SceneTree state as long as the agent is on a navigation map and not freed. To disable the dispatch of a callback from an agent use [agent\_set\_avoidance\_callback()](#class-navigationserver2d-method-agent-set-avoidance-callback) again with an empty [Callable](class_callable.md#class-callable).

* * *

void **agent\_set\_avoidance\_enabled**(agent: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-agent-set-avoidance-enabled)

If `enabled` is `true`, the specified `agent` uses avoidance.

* * *

void **agent\_set\_avoidance\_layers**(agent: [RID](class_rid.md#class-rid), layers: [int](class_int.md#class-int)) [🔗](#class-navigationserver2d-method-agent-set-avoidance-layers)

Set the agent's `avoidance_layers` bitmask.

* * *

void **agent\_set\_avoidance\_mask**(agent: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-navigationserver2d-method-agent-set-avoidance-mask)

Set the agent's `avoidance_mask` bitmask.

* * *

void **agent\_set\_avoidance\_priority**(agent: [RID](class_rid.md#class-rid), priority: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-agent-set-avoidance-priority)

Set the agent's `avoidance_priority` with a `priority` between 0.0 (lowest priority) to 1.0 (highest priority).

The specified `agent` does not adjust the velocity for other agents that would match the `avoidance_mask` but have a lower `avoidance_priority`. This in turn makes the other agents with lower priority adjust their velocities even more to avoid collision with this agent.

* * *

void **agent\_set\_map**(agent: [RID](class_rid.md#class-rid), map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationserver2d-method-agent-set-map)

Puts the agent in the map.

* * *

void **agent\_set\_max\_neighbors**(agent: [RID](class_rid.md#class-rid), count: [int](class_int.md#class-int)) [🔗](#class-navigationserver2d-method-agent-set-max-neighbors)

Sets the maximum number of other agents the agent takes into account in the navigation. The larger this number, the longer the running time of the simulation. If the number is too low, the simulation will not be safe.

* * *

void **agent\_set\_max\_speed**(agent: [RID](class_rid.md#class-rid), max\_speed: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-agent-set-max-speed)

Sets the maximum speed of the agent. Must be positive.

* * *

void **agent\_set\_neighbor\_distance**(agent: [RID](class_rid.md#class-rid), distance: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-agent-set-neighbor-distance)

Sets the maximum distance to other agents this agent takes into account in the navigation. The larger this number, the longer the running time of the simulation. If the number is too low, the simulation will not be safe.

* * *

void **agent\_set\_paused**(agent: [RID](class_rid.md#class-rid), paused: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-agent-set-paused)

If `paused` is `true` the specified `agent` will not be processed. For example, it will not calculate avoidance velocities or receive avoidance callbacks.

* * *

void **agent\_set\_position**(agent: [RID](class_rid.md#class-rid), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-navigationserver2d-method-agent-set-position)

Sets the position of the agent in world space.

* * *

void **agent\_set\_radius**(agent: [RID](class_rid.md#class-rid), radius: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-agent-set-radius)

Sets the radius of the agent.

* * *

void **agent\_set\_time\_horizon\_agents**(agent: [RID](class_rid.md#class-rid), time\_horizon: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-agent-set-time-horizon-agents)

The minimal amount of time for which the agent's velocities that are computed by the simulation are safe with respect to other agents. The larger this number, the sooner this agent will respond to the presence of other agents, but the less freedom this agent has in choosing its velocities. A too high value will slow down agents movement considerably. Must be positive.

* * *

void **agent\_set\_time\_horizon\_obstacles**(agent: [RID](class_rid.md#class-rid), time\_horizon: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-agent-set-time-horizon-obstacles)

The minimal amount of time for which the agent's velocities that are computed by the simulation are safe with respect to static avoidance obstacles. The larger this number, the sooner this agent will respond to the presence of static avoidance obstacles, but the less freedom this agent has in choosing its velocities. A too high value will slow down agents movement considerably. Must be positive.

* * *

void **agent\_set\_velocity**(agent: [RID](class_rid.md#class-rid), velocity: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-navigationserver2d-method-agent-set-velocity)

Sets `velocity` as the new wanted velocity for the specified `agent`. The avoidance simulation will try to fulfill this velocity if possible but will modify it to avoid collision with other agent's and obstacles. When an agent is teleported to a new position far away use [agent\_set\_velocity\_forced()](#class-navigationserver2d-method-agent-set-velocity-forced) instead to reset the internal velocity state.

* * *

void **agent\_set\_velocity\_forced**(agent: [RID](class_rid.md#class-rid), velocity: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-navigationserver2d-method-agent-set-velocity-forced)

Replaces the internal velocity in the collision avoidance simulation with `velocity` for the specified `agent`. When an agent is teleported to a new position far away this function should be used in the same frame. If called frequently this function can get agents stuck.

* * *

void **bake\_from\_source\_geometry\_data**(navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon), source\_geometry\_data: [NavigationMeshSourceGeometryData2D](class_navigationmeshsourcegeometrydata2d.md#class-navigationmeshsourcegeometrydata2d), callback: [Callable](class_callable.md#class-callable) = Callable()) [🔗](#class-navigationserver2d-method-bake-from-source-geometry-data)

Bakes the provided `navigation_polygon` with the data from the provided `source_geometry_data`. After the process is finished the optional `callback` will be called.

* * *

void **bake\_from\_source\_geometry\_data\_async**(navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon), source\_geometry\_data: [NavigationMeshSourceGeometryData2D](class_navigationmeshsourcegeometrydata2d.md#class-navigationmeshsourcegeometrydata2d), callback: [Callable](class_callable.md#class-callable) = Callable()) [🔗](#class-navigationserver2d-method-bake-from-source-geometry-data-async)

Bakes the provided `navigation_polygon` with the data from the provided `source_geometry_data` as an async task running on a background thread. After the process is finished the optional `callback` will be called.

* * *

void **free\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-navigationserver2d-method-free-rid)

Destroys the given RID.

* * *

[bool](class_bool.md#class-bool) **get\_debug\_enabled**() const [🔗](#class-navigationserver2d-method-get-debug-enabled)

Returns `true` when the NavigationServer has debug enabled.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_maps**() const [🔗](#class-navigationserver2d-method-get-maps)

Returns all created navigation map [RID](class_rid.md#class-rid) s on the NavigationServer. This returns both 2D and 3D created navigation maps as there is technically no distinction between them.

* * *

[int](class_int.md#class-int) **get\_process\_info**(process\_info: [ProcessInfo](#enum-navigationserver2d-processinfo)) const [🔗](#class-navigationserver2d-method-get-process-info)

Returns information about the current state of the NavigationServer.

* * *

[bool](class_bool.md#class-bool) **is\_baking\_navigation\_polygon**(navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon)) const [🔗](#class-navigationserver2d-method-is-baking-navigation-polygon)

Returns `true` when the provided navigation polygon is being baked on a background thread.

* * *

[RID](class_rid.md#class-rid) **link\_create**() [🔗](#class-navigationserver2d-method-link-create)

Create a new link between two positions on a map.

* * *

[bool](class_bool.md#class-bool) **link\_get\_enabled**(link: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-link-get-enabled)

Returns `true` if the specified `link` is enabled.

* * *

[Vector2](class_vector2.md#class-vector2) **link\_get\_end\_position**(link: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-link-get-end-position)

Returns the ending position of this `link`.

* * *

[float](class_float.md#class-float) **link\_get\_enter\_cost**(link: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-link-get-enter-cost)

Returns the enter cost of this `link`.

* * *

[int](class_int.md#class-int) **link\_get\_iteration\_id**(link: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-link-get-iteration-id)

Returns the current iteration ID of the navigation link. Every time the navigation link changes and synchronizes, the iteration ID increases. An iteration ID of `0` means the navigation link has never synchronized.

**Note:** The iteration ID will wrap around to `1` after reaching its range limit.

* * *

[RID](class_rid.md#class-rid) **link\_get\_map**(link: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-link-get-map)

Returns the navigation map [RID](class_rid.md#class-rid) the requested `link` is currently assigned to.

* * *

[int](class_int.md#class-int) **link\_get\_navigation\_layers**(link: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-link-get-navigation-layers)

Returns the navigation layers for this `link`.

* * *

[int](class_int.md#class-int) **link\_get\_owner\_id**(link: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-link-get-owner-id)

Returns the `ObjectID` of the object which manages this link.

* * *

[Vector2](class_vector2.md#class-vector2) **link\_get\_start\_position**(link: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-link-get-start-position)

Returns the starting position of this `link`.

* * *

[float](class_float.md#class-float) **link\_get\_travel\_cost**(link: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-link-get-travel-cost)

Returns the travel cost of this `link`.

* * *

[bool](class_bool.md#class-bool) **link\_is\_bidirectional**(link: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-link-is-bidirectional)

Returns whether this `link` can be travelled in both directions.

* * *

void **link\_set\_bidirectional**(link: [RID](class_rid.md#class-rid), bidirectional: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-link-set-bidirectional)

Sets whether this `link` can be travelled in both directions.

* * *

void **link\_set\_enabled**(link: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-link-set-enabled)

If `enabled` is `true`, the specified `link` will contribute to its current navigation map.

* * *

void **link\_set\_end\_position**(link: [RID](class_rid.md#class-rid), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-navigationserver2d-method-link-set-end-position)

Sets the exit position for the `link`.

* * *

void **link\_set\_enter\_cost**(link: [RID](class_rid.md#class-rid), enter\_cost: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-link-set-enter-cost)

Sets the `enter_cost` for this `link`.

* * *

void **link\_set\_map**(link: [RID](class_rid.md#class-rid), map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationserver2d-method-link-set-map)

Sets the navigation map [RID](class_rid.md#class-rid) for the link.

* * *

void **link\_set\_navigation\_layers**(link: [RID](class_rid.md#class-rid), navigation\_layers: [int](class_int.md#class-int)) [🔗](#class-navigationserver2d-method-link-set-navigation-layers)

Set the links's navigation layers. This allows selecting links from a path request (when using [map\_get\_path()](#class-navigationserver2d-method-map-get-path)).

* * *

void **link\_set\_owner\_id**(link: [RID](class_rid.md#class-rid), owner\_id: [int](class_int.md#class-int)) [🔗](#class-navigationserver2d-method-link-set-owner-id)

Set the `ObjectID` of the object which manages this link.

* * *

void **link\_set\_start\_position**(link: [RID](class_rid.md#class-rid), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-navigationserver2d-method-link-set-start-position)

Sets the entry position for this `link`.

* * *

void **link\_set\_travel\_cost**(link: [RID](class_rid.md#class-rid), travel\_cost: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-link-set-travel-cost)

Sets the `travel_cost` for this `link`.

* * *

[RID](class_rid.md#class-rid) **map\_create**() [🔗](#class-navigationserver2d-method-map-create)

Create a new map.

* * *

void **map\_force\_update**(map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationserver2d-method-map-force-update)

**Deprecated:** This method is no longer supported, as it is incompatible with asynchronous updates. It can only be used in a single-threaded context, at your own risk.

This function immediately forces synchronization of the specified navigation `map` [RID](class_rid.md#class-rid). By default navigation maps are only synchronized at the end of each physics frame. This function can be used to immediately (re)calculate all the navigation meshes and region connections of the navigation map. This makes it possible to query a navigation path for a changed map immediately and in the same frame (multiple times if needed).

Due to technical restrictions the current NavigationServer command queue will be flushed. This means all already queued update commands for this physics frame will be executed, even those intended for other maps, regions and agents not part of the specified map. The expensive computation of the navigation meshes and region connections of a map will only be done for the specified map. Other maps will receive the normal synchronization at the end of the physics frame. Should the specified map receive changes after the forced update it will update again as well when the other maps receive their update.

Avoidance processing and dispatch of the `safe_velocity` signals is unaffected by this function and continues to happen for all maps and agents at the end of the physics frame.

**Note:** With great power comes great responsibility. This function should only be used by users that really know what they are doing and have a good reason for it. Forcing an immediate update of a navigation map requires locking the NavigationServer and flushing the entire NavigationServer command queue. Not only can this severely impact the performance of a game but it can also introduce bugs if used inappropriately without much foresight.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **map\_get\_agents**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-agents)

Returns all navigation agents [RID](class_rid.md#class-rid) s that are currently assigned to the requested navigation `map`.

* * *

[float](class_float.md#class-float) **map\_get\_cell\_size**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-cell-size)

Returns the map cell size used to rasterize the navigation mesh vertices.

* * *

[Vector2](class_vector2.md#class-vector2) **map\_get\_closest\_point**(map: [RID](class_rid.md#class-rid), to\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-navigationserver2d-method-map-get-closest-point)

Returns the navigation mesh surface point closest to the provided `to_point` on the navigation `map`.

* * *

[RID](class_rid.md#class-rid) **map\_get\_closest\_point\_owner**(map: [RID](class_rid.md#class-rid), to\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-navigationserver2d-method-map-get-closest-point-owner)

Returns the owner region RID for the navigation mesh surface point closest to the provided `to_point` on the navigation `map`.

* * *

[float](class_float.md#class-float) **map\_get\_edge\_connection\_margin**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-edge-connection-margin)

Returns the edge connection margin of the map. The edge connection margin is a distance used to connect two regions.

* * *

[int](class_int.md#class-int) **map\_get\_iteration\_id**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-iteration-id)

Returns the current iteration id of the navigation map. Every time the navigation map changes and synchronizes the iteration id increases. An iteration id of 0 means the navigation map has never synchronized.

**Note:** The iteration id will wrap back to 1 after reaching its range limit.

* * *

[float](class_float.md#class-float) **map\_get\_link\_connection\_radius**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-link-connection-radius)

Returns the link connection radius of the map. This distance is the maximum range any link will search for navigation mesh polygons to connect to.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **map\_get\_links**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-links)

Returns all navigation link [RID](class_rid.md#class-rid) s that are currently assigned to the requested navigation `map`.

* * *

[float](class_float.md#class-float) **map\_get\_merge\_rasterizer\_cell\_scale**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-merge-rasterizer-cell-scale)

Returns map's internal merge rasterizer cell scale.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **map\_get\_obstacles**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-obstacles)

Returns all navigation obstacle [RID](class_rid.md#class-rid) s that are currently assigned to the requested navigation `map`.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **map\_get\_path**(map: [RID](class_rid.md#class-rid), origin: [Vector2](class_vector2.md#class-vector2), destination: [Vector2](class_vector2.md#class-vector2), optimize: [bool](class_bool.md#class-bool), navigation\_layers: [int](class_int.md#class-int) = 1) [🔗](#class-navigationserver2d-method-map-get-path)

Returns the navigation path to reach the destination from the origin. `navigation_layers` is a bitmask of all region navigation layers that are allowed to be in the path.

* * *

[Vector2](class_vector2.md#class-vector2) **map\_get\_random\_point**(map: [RID](class_rid.md#class-rid), navigation\_layers: [int](class_int.md#class-int), uniformly: [bool](class_bool.md#class-bool)) const [🔗](#class-navigationserver2d-method-map-get-random-point)

Returns a random position picked from all map region polygons with matching `navigation_layers`.

If `uniformly` is `true`, all map regions, polygons, and faces are weighted by their surface area (slower).

If `uniformly` is `false`, just a random region and a random polygon are picked (faster).

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **map\_get\_regions**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-regions)

Returns all navigation regions [RID](class_rid.md#class-rid) s that are currently assigned to the requested navigation `map`.

* * *

[bool](class_bool.md#class-bool) **map\_get\_use\_async\_iterations**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-use-async-iterations)

Returns `true` if the `map` synchronization uses an async process that runs on a background thread.

* * *

[bool](class_bool.md#class-bool) **map\_get\_use\_edge\_connections**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-get-use-edge-connections)

Returns whether the navigation `map` allows navigation regions to use edge connections to connect with other navigation regions within proximity of the navigation map edge connection margin.

* * *

[bool](class_bool.md#class-bool) **map\_is\_active**(map: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-map-is-active)

Returns `true` if the map is active.

* * *

void **map\_set\_active**(map: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-map-set-active)

Sets the map active.

* * *

void **map\_set\_cell\_size**(map: [RID](class_rid.md#class-rid), cell\_size: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-map-set-cell-size)

Sets the map cell size used to rasterize the navigation mesh vertices. Must match with the cell size of the used navigation meshes.

* * *

void **map\_set\_edge\_connection\_margin**(map: [RID](class_rid.md#class-rid), margin: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-map-set-edge-connection-margin)

Set the map edge connection margin used to weld the compatible region edges.

* * *

void **map\_set\_link\_connection\_radius**(map: [RID](class_rid.md#class-rid), radius: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-map-set-link-connection-radius)

Set the map's link connection radius used to connect links to navigation polygons.

* * *

void **map\_set\_merge\_rasterizer\_cell\_scale**(map: [RID](class_rid.md#class-rid), scale: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-map-set-merge-rasterizer-cell-scale)

Set the map's internal merge rasterizer cell scale used to control merging sensitivity.

* * *

void **map\_set\_use\_async\_iterations**(map: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-map-set-use-async-iterations)

If `enabled` is `true` the `map` synchronization uses an async process that runs on a background thread.

* * *

void **map\_set\_use\_edge\_connections**(map: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-map-set-use-edge-connections)

Set the navigation `map` edge connection use. If `enabled` is `true`, the navigation map allows navigation regions to use edge connections to connect with other navigation regions within proximity of the navigation map edge connection margin.

* * *

[RID](class_rid.md#class-rid) **obstacle\_create**() [🔗](#class-navigationserver2d-method-obstacle-create)

Creates a new navigation obstacle.

* * *

[bool](class_bool.md#class-bool) **obstacle\_get\_avoidance\_enabled**(obstacle: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-obstacle-get-avoidance-enabled)

Returns `true` if the provided `obstacle` has avoidance enabled.

* * *

[int](class_int.md#class-int) **obstacle\_get\_avoidance\_layers**(obstacle: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-obstacle-get-avoidance-layers)

Returns the `avoidance_layers` bitmask of the specified `obstacle`.

* * *

[RID](class_rid.md#class-rid) **obstacle\_get\_map**(obstacle: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-obstacle-get-map)

Returns the navigation map [RID](class_rid.md#class-rid) the requested `obstacle` is currently assigned to.

* * *

[bool](class_bool.md#class-bool) **obstacle\_get\_paused**(obstacle: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-obstacle-get-paused)

Returns `true` if the specified `obstacle` is paused.

* * *

[Vector2](class_vector2.md#class-vector2) **obstacle\_get\_position**(obstacle: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-obstacle-get-position)

Returns the position of the specified `obstacle` in world space.

* * *

[float](class_float.md#class-float) **obstacle\_get\_radius**(obstacle: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-obstacle-get-radius)

Returns the radius of the specified dynamic `obstacle`.

* * *

[Vector2](class_vector2.md#class-vector2) **obstacle\_get\_velocity**(obstacle: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-obstacle-get-velocity)

Returns the velocity of the specified dynamic `obstacle`.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **obstacle\_get\_vertices**(obstacle: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-obstacle-get-vertices)

Returns the outline vertices for the specified `obstacle`.

* * *

void **obstacle\_set\_avoidance\_enabled**(obstacle: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-obstacle-set-avoidance-enabled)

If `enabled` is `true`, the provided `obstacle` affects avoidance using agents.

* * *

void **obstacle\_set\_avoidance\_layers**(obstacle: [RID](class_rid.md#class-rid), layers: [int](class_int.md#class-int)) [🔗](#class-navigationserver2d-method-obstacle-set-avoidance-layers)

Set the obstacles's `avoidance_layers` bitmask.

* * *

void **obstacle\_set\_map**(obstacle: [RID](class_rid.md#class-rid), map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationserver2d-method-obstacle-set-map)

Sets the navigation map [RID](class_rid.md#class-rid) for the obstacle.

* * *

void **obstacle\_set\_paused**(obstacle: [RID](class_rid.md#class-rid), paused: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-obstacle-set-paused)

If `paused` is `true` the specified `obstacle` will not be processed. For example, it will no longer affect avoidance velocities.

* * *

void **obstacle\_set\_position**(obstacle: [RID](class_rid.md#class-rid), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-navigationserver2d-method-obstacle-set-position)

Sets the position of the obstacle in world space.

* * *

void **obstacle\_set\_radius**(obstacle: [RID](class_rid.md#class-rid), radius: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-obstacle-set-radius)

Sets the radius of the dynamic obstacle.

* * *

void **obstacle\_set\_velocity**(obstacle: [RID](class_rid.md#class-rid), velocity: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-navigationserver2d-method-obstacle-set-velocity)

Sets `velocity` of the dynamic `obstacle`. Allows other agents to better predict the movement of the dynamic obstacle. Only works in combination with the radius of the obstacle.

* * *

void **obstacle\_set\_vertices**(obstacle: [RID](class_rid.md#class-rid), vertices: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-navigationserver2d-method-obstacle-set-vertices)

Sets the outline vertices for the obstacle. If the vertices are winded in clockwise order agents will be pushed in by the obstacle, else they will be pushed out.

* * *

void **parse\_source\_geometry\_data**(navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon), source\_geometry\_data: [NavigationMeshSourceGeometryData2D](class_navigationmeshsourcegeometrydata2d.md#class-navigationmeshsourcegeometrydata2d), root\_node: [Node](class_node.md#class-node), callback: [Callable](class_callable.md#class-callable) = Callable()) [🔗](#class-navigationserver2d-method-parse-source-geometry-data)

Parses the [SceneTree](class_scenetree.md#class-scenetree) for source geometry according to the properties of `navigation_polygon`. Updates the provided `source_geometry_data` resource with the resulting data. The resource can then be used to bake a navigation mesh with [bake\_from\_source\_geometry\_data()](#class-navigationserver2d-method-bake-from-source-geometry-data). After the process is finished the optional `callback` will be called.

**Note:** This function needs to run on the main thread or with a deferred call as the SceneTree is not thread-safe.

**Performance:** While convenient, reading data arrays from [Mesh](class_mesh.md#class-mesh) resources can affect the frame rate negatively. The data needs to be received from the GPU, stalling the [RenderingServer](class_renderingserver.md#class-renderingserver) in the process. For performance prefer the use of e.g. collision shapes or creating the data arrays entirely in code.

* * *

void **query\_path**(parameters: [NavigationPathQueryParameters2D](class_navigationpathqueryparameters2d.md#class-navigationpathqueryparameters2d), result: [NavigationPathQueryResult2D](class_navigationpathqueryresult2d.md#class-navigationpathqueryresult2d), callback: [Callable](class_callable.md#class-callable) = Callable()) [🔗](#class-navigationserver2d-method-query-path)

Queries a path in a given navigation map. Start and target position and other parameters are defined through [NavigationPathQueryParameters2D](class_navigationpathqueryparameters2d.md#class-navigationpathqueryparameters2d). Updates the provided [NavigationPathQueryResult2D](class_navigationpathqueryresult2d.md#class-navigationpathqueryresult2d) result object with the path among other results requested by the query. After the process is finished the optional `callback` will be called.

* * *

[RID](class_rid.md#class-rid) **region\_create**() [🔗](#class-navigationserver2d-method-region-create)

Creates a new region.

* * *

[Rect2](class_rect2.md#class-rect2) **region\_get\_bounds**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-bounds)

Returns the axis-aligned rectangle for the `region`'s transformed navigation mesh.

* * *

[Vector2](class_vector2.md#class-vector2) **region\_get\_closest\_point**(region: [RID](class_rid.md#class-rid), to\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-navigationserver2d-method-region-get-closest-point)

Returns the navigation mesh surface point closest to the provided `to_point` on the navigation `region`.

* * *

[Vector2](class_vector2.md#class-vector2) **region\_get\_connection\_pathway\_end**(region: [RID](class_rid.md#class-rid), connection: [int](class_int.md#class-int)) const [🔗](#class-navigationserver2d-method-region-get-connection-pathway-end)

Returns the ending point of a connection door. `connection` is an index between 0 and the return value of [region\_get\_connections\_count()](#class-navigationserver2d-method-region-get-connections-count).

* * *

[Vector2](class_vector2.md#class-vector2) **region\_get\_connection\_pathway\_start**(region: [RID](class_rid.md#class-rid), connection: [int](class_int.md#class-int)) const [🔗](#class-navigationserver2d-method-region-get-connection-pathway-start)

Returns the starting point of a connection door. `connection` is an index between 0 and the return value of [region\_get\_connections\_count()](#class-navigationserver2d-method-region-get-connections-count).

* * *

[int](class_int.md#class-int) **region\_get\_connections\_count**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-connections-count)

Returns how many connections this `region` has with other regions in the map.

* * *

[bool](class_bool.md#class-bool) **region\_get\_enabled**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-enabled)

Returns `true` if the specified `region` is enabled.

* * *

[float](class_float.md#class-float) **region\_get\_enter\_cost**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-enter-cost)

Returns the enter cost of this `region`.

* * *

[int](class_int.md#class-int) **region\_get\_iteration\_id**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-iteration-id)

Returns the current iteration ID of the navigation region. Every time the navigation region changes and synchronizes, the iteration ID increases. An iteration ID of `0` means the navigation region has never synchronized.

**Note:** The iteration ID will wrap around to `1` after reaching its range limit.

* * *

[RID](class_rid.md#class-rid) **region\_get\_map**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-map)

Returns the navigation map [RID](class_rid.md#class-rid) the requested `region` is currently assigned to.

* * *

[int](class_int.md#class-int) **region\_get\_navigation\_layers**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-navigation-layers)

Returns the region's navigation layers.

* * *

[int](class_int.md#class-int) **region\_get\_owner\_id**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-owner-id)

Returns the `ObjectID` of the object which manages this region.

* * *

[Vector2](class_vector2.md#class-vector2) **region\_get\_random\_point**(region: [RID](class_rid.md#class-rid), navigation\_layers: [int](class_int.md#class-int), uniformly: [bool](class_bool.md#class-bool)) const [🔗](#class-navigationserver2d-method-region-get-random-point)

Returns a random position picked from all region polygons with matching `navigation_layers`.

If `uniformly` is `true`, all region polygons and faces are weighted by their surface area (slower).

If `uniformly` is `false`, just a random polygon and face is picked (faster).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **region\_get\_transform**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-transform)

Returns the global transformation of this `region`.

* * *

[float](class_float.md#class-float) **region\_get\_travel\_cost**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-travel-cost)

Returns the travel cost of this `region`.

* * *

[bool](class_bool.md#class-bool) **region\_get\_use\_async\_iterations**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-use-async-iterations)

Returns `true` if the `region` uses an async synchronization process that runs on a background thread.

* * *

[bool](class_bool.md#class-bool) **region\_get\_use\_edge\_connections**(region: [RID](class_rid.md#class-rid)) const [🔗](#class-navigationserver2d-method-region-get-use-edge-connections)

Returns whether the navigation `region` is set to use edge connections to connect with other navigation regions within proximity of the navigation map edge connection margin.

* * *

[bool](class_bool.md#class-bool) **region\_owns\_point**(region: [RID](class_rid.md#class-rid), point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-navigationserver2d-method-region-owns-point)

Returns `true` if the provided `point` in world space is currently owned by the provided navigation `region`. Owned in this context means that one of the region's navigation mesh polygon faces has a possible position at the closest distance to this point compared to all other navigation meshes from other navigation regions that are also registered on the navigation map of the provided region.

If multiple navigation meshes have positions at equal distance the navigation region whose polygons are processed first wins the ownership. Polygons are processed in the same order that navigation regions were registered on the NavigationServer.

**Note:** If navigation meshes from different navigation regions overlap (which should be avoided in general) the result might not be what is expected.

* * *

void **region\_set\_enabled**(region: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-region-set-enabled)

If `enabled` is `true` the specified `region` will contribute to its current navigation map.

* * *

void **region\_set\_enter\_cost**(region: [RID](class_rid.md#class-rid), enter\_cost: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-region-set-enter-cost)

Sets the `enter_cost` for this `region`.

* * *

void **region\_set\_map**(region: [RID](class_rid.md#class-rid), map: [RID](class_rid.md#class-rid)) [🔗](#class-navigationserver2d-method-region-set-map)

Sets the map for the region.

* * *

void **region\_set\_navigation\_layers**(region: [RID](class_rid.md#class-rid), navigation\_layers: [int](class_int.md#class-int)) [🔗](#class-navigationserver2d-method-region-set-navigation-layers)

Set the region's navigation layers. This allows selecting regions from a path request (when using [map\_get\_path()](#class-navigationserver2d-method-map-get-path)).

* * *

void **region\_set\_navigation\_polygon**(region: [RID](class_rid.md#class-rid), navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon)) [🔗](#class-navigationserver2d-method-region-set-navigation-polygon)

Sets the `navigation_polygon` for the region.

* * *

void **region\_set\_owner\_id**(region: [RID](class_rid.md#class-rid), owner\_id: [int](class_int.md#class-int)) [🔗](#class-navigationserver2d-method-region-set-owner-id)

Set the `ObjectID` of the object which manages this region.

* * *

void **region\_set\_transform**(region: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-navigationserver2d-method-region-set-transform)

Sets the global transformation for the region.

* * *

void **region\_set\_travel\_cost**(region: [RID](class_rid.md#class-rid), travel\_cost: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-region-set-travel-cost)

Sets the `travel_cost` for this `region`.

* * *

void **region\_set\_use\_async\_iterations**(region: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-region-set-use-async-iterations)

If `enabled` is `true` the `region` uses an async synchronization process that runs on a background thread.

* * *

void **region\_set\_use\_edge\_connections**(region: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-region-set-use-edge-connections)

If `enabled` is `true`, the navigation `region` will use edge connections to connect with other navigation regions within proximity of the navigation map edge connection margin.

* * *

void **set\_active**(active: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-set-active)

Control activation of this server.

* * *

void **set\_debug\_enabled**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-navigationserver2d-method-set-debug-enabled)

If `true` enables debug mode on the NavigationServer.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **simplify\_path**(path: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), epsilon: [float](class_float.md#class-float)) [🔗](#class-navigationserver2d-method-simplify-path)

Returns a simplified version of `path` with less critical path points removed. The simplification amount is in worlds units and controlled by `epsilon`. The simplification uses a variant of Ramer-Douglas-Peucker algorithm for curve point decimation.

Path simplification can be helpful to mitigate various path following issues that can arise with certain agent types and script behaviors. E.g. "steering" agents or avoidance in "open fields".

* * *

[RID](class_rid.md#class-rid) **source\_geometry\_parser\_create**() [🔗](#class-navigationserver2d-method-source-geometry-parser-create)

Creates a new source geometry parser. If a [Callable](class_callable.md#class-callable) is set for the parser with [source\_geometry\_parser\_set\_callback()](#class-navigationserver2d-method-source-geometry-parser-set-callback) the callback will be called for every single node that gets parsed whenever [parse\_source\_geometry\_data()](#class-navigationserver2d-method-parse-source-geometry-data) is used.

* * *

void **source\_geometry\_parser\_set\_callback**(parser: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-navigationserver2d-method-source-geometry-parser-set-callback)

Sets the `callback` [Callable](class_callable.md#class-callable) for the specific source geometry `parser`. The [Callable](class_callable.md#class-callable) will receive a call with the following parameters:

- `navigation_mesh` \- The [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon) reference used to define the parse settings. Do NOT edit or add directly to the navigation mesh.

- `source_geometry_data` \- The [NavigationMeshSourceGeometryData2D](class_navigationmeshsourcegeometrydata2d.md#class-navigationmeshsourcegeometrydata2d) reference. Add custom source geometry for navigation mesh baking to this object.

- `node` \- The [Node](class_node.md#class-node) that is parsed.


[Previous](class_navigationpathqueryresult3d.md "NavigationPathQueryResult3D") [Next](class_navigationserver3d.md "NavigationServer3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationpathqueryresult3d.md "NavigationPathQueryResult3D") [Next](class_navigationserver3d.md "NavigationServer3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).