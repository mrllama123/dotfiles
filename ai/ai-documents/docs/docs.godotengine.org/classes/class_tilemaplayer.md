---
title: TileMapLayer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tilemaplayer.html
crawled_at: "2026-08-13T10:28:42+12:00"
content_hash: e99bd9e2044ef65a5b757578ebba6134c202b7c5af8fc2c4e52e7742b6c2f706
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TileMapLayer

* * *

# TileMapLayer

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Node for 2D tile-based maps.

## Description

Node for 2D tile-based maps. A **TileMapLayer** uses a [TileSet](class_tileset.md#class-tileset) which contain a list of tiles which are used to create grid-based maps. Unlike the [TileMap](class_tilemap.md#class-tilemap) node, which is deprecated, **TileMapLayer** has only one layer of tiles. You can use several **TileMapLayer** to achieve the same result as a [TileMap](class_tilemap.md#class-tilemap) node.

For performance reasons, all TileMap updates are batched at the end of a frame. Notably, this means that scene tiles from a [TileSetScenesCollectionSource](class_tilesetscenescollectionsource.md#class-tilesetscenescollectionsource) are initialized after their parent. This is only queued when inside the scene tree.

To force an update earlier on, call [update\_internals()](#class-tilemaplayer-method-update-internals).

**Note:** For performance and compatibility reasons, the coordinates serialized by **TileMapLayer** are limited to 16-bit signed integers, i.e. the range for X and Y coordinates is from `-32768` to `32767`. When saving tile data, tiles outside this range are wrapped.

## Tutorials

- [Using Tilemaps](../tutorials/2d/using_tilemaps.md)

- [2D Platformer Demo](https://godotengine.org/asset-library/asset/2727)

- [2D Isometric Demo](https://godotengine.org/asset-library/asset/2718)

- [2D Hexagonal Demo](https://godotengine.org/asset-library/asset/2717)

- [2D Grid-based Navigation with AStarGrid2D Demo](https://godotengine.org/asset-library/asset/2723)

- [2D Role Playing Game (RPG) Demo](https://godotengine.org/asset-library/asset/2729)

- [2D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2719)

- [2D Dynamic TileMap Layers Demo](https://godotengine.org/asset-library/asset/2713)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [collision\_enabled](#class-tilemaplayer-property-collision-enabled) | `true` |
| [DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode) | [collision\_visibility\_mode](#class-tilemaplayer-property-collision-visibility-mode) | `0` |
| [bool](class_bool.md#class-bool) | [enabled](#class-tilemaplayer-property-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [navigation\_enabled](#class-tilemaplayer-property-navigation-enabled) | `true` |
| [DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode) | [navigation\_visibility\_mode](#class-tilemaplayer-property-navigation-visibility-mode) | `0` |
| [bool](class_bool.md#class-bool) | [occlusion\_enabled](#class-tilemaplayer-property-occlusion-enabled) | `true` |
| [int](class_int.md#class-int) | [physics\_quadrant\_size](#class-tilemaplayer-property-physics-quadrant-size) | `16` |
| [int](class_int.md#class-int) | [rendering\_quadrant\_size](#class-tilemaplayer-property-rendering-quadrant-size) | `16` |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [tile\_map\_data](#class-tilemaplayer-property-tile-map-data) | `PackedByteArray()` |
| [TileSet](class_tileset.md#class-tileset) | [tile\_set](#class-tilemaplayer-property-tile-set) |  |
| [bool](class_bool.md#class-bool) | [use\_kinematic\_bodies](#class-tilemaplayer-property-use-kinematic-bodies) | `false` |
| [bool](class_bool.md#class-bool) | [x\_draw\_order\_reversed](#class-tilemaplayer-property-x-draw-order-reversed) | `false` |
| [int](class_int.md#class-int) | [y\_sort\_origin](#class-tilemaplayer-property-y-sort-origin) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [\_tile\_data\_runtime\_update](#class-tilemaplayer-private-method-tile-data-runtime-update)(coords: [Vector2i](class_vector2i.md#class-vector2i), tile\_data: [TileData](class_tiledata.md#class-tiledata)) virtual |
| void | [\_update\_cells](#class-tilemaplayer-private-method-update-cells)(coords: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\], forced\_cleanup: [bool](class_bool.md#class-bool)) virtual |
| [bool](class_bool.md#class-bool) | [\_use\_tile\_data\_runtime\_update](#class-tilemaplayer-private-method-use-tile-data-runtime-update)(coords: [Vector2i](class_vector2i.md#class-vector2i)) virtual |
| void | [clear](#class-tilemaplayer-method-clear)() |
| void | [erase\_cell](#class-tilemaplayer-method-erase-cell)(coords: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [fix\_invalid\_tiles](#class-tilemaplayer-method-fix-invalid-tiles)() |
| [int](class_int.md#class-int) | [get\_cell\_alternative\_tile](#class-tilemaplayer-method-get-cell-alternative-tile)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_cell\_atlas\_coords](#class-tilemaplayer-method-get-cell-atlas-coords)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [int](class_int.md#class-int) | [get\_cell\_source\_id](#class-tilemaplayer-method-get-cell-source-id)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [TileData](class_tiledata.md#class-tiledata) | [get\_cell\_tile\_data](#class-tilemaplayer-method-get-cell-tile-data)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_coords\_for\_body\_rid](#class-tilemaplayer-method-get-coords-for-body-rid)(body: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [get\_navigation\_map](#class-tilemaplayer-method-get-navigation-map)() const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_neighbor\_cell](#class-tilemaplayer-method-get-neighbor-cell)(coords: [Vector2i](class_vector2i.md#class-vector2i), neighbor: [CellNeighbor](class_tileset.md#enum-tileset-cellneighbor)) const |
| [TileMapPattern](class_tilemappattern.md#class-tilemappattern) | [get\_pattern](#class-tilemaplayer-method-get-pattern)(coords\_array: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\]) |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_surrounding\_cells](#class-tilemaplayer-method-get-surrounding-cells)(coords: [Vector2i](class_vector2i.md#class-vector2i)) |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_used\_cells](#class-tilemaplayer-method-get-used-cells)() const |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_used\_cells\_by\_id](#class-tilemaplayer-method-get-used-cells-by-id)(source\_id: [int](class_int.md#class-int) = -1, atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), alternative\_tile: [int](class_int.md#class-int) = -1) const |
| [Rect2i](class_rect2i.md#class-rect2i) | [get\_used\_rect](#class-tilemaplayer-method-get-used-rect)() const |
| [bool](class_bool.md#class-bool) | [has\_body\_rid](#class-tilemaplayer-method-has-body-rid)(body: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [is\_cell\_flipped\_h](#class-tilemaplayer-method-is-cell-flipped-h)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [bool](class_bool.md#class-bool) | [is\_cell\_flipped\_v](#class-tilemaplayer-method-is-cell-flipped-v)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [bool](class_bool.md#class-bool) | [is\_cell\_transposed](#class-tilemaplayer-method-is-cell-transposed)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [local\_to\_map](#class-tilemaplayer-method-local-to-map)(local\_position: [Vector2](class_vector2.md#class-vector2)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [map\_pattern](#class-tilemaplayer-method-map-pattern)(position\_in\_tilemap: [Vector2i](class_vector2i.md#class-vector2i), coords\_in\_pattern: [Vector2i](class_vector2i.md#class-vector2i), pattern: [TileMapPattern](class_tilemappattern.md#class-tilemappattern)) |
| [Vector2](class_vector2.md#class-vector2) | [map\_to\_local](#class-tilemaplayer-method-map-to-local)(map\_position: [Vector2i](class_vector2i.md#class-vector2i)) const |
| void | [notify\_runtime\_tile\_data\_update](#class-tilemaplayer-method-notify-runtime-tile-data-update)() |
| void | [set\_cell](#class-tilemaplayer-method-set-cell)(coords: [Vector2i](class_vector2i.md#class-vector2i), source\_id: [int](class_int.md#class-int) = -1, atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), alternative\_tile: [int](class_int.md#class-int) = 0) |
| void | [set\_cells\_terrain\_connect](#class-tilemaplayer-method-set-cells-terrain-connect)(cells: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\], terrain\_set: [int](class_int.md#class-int), terrain: [int](class_int.md#class-int), ignore\_empty\_terrains: [bool](class_bool.md#class-bool) = true) |
| void | [set\_cells\_terrain\_path](#class-tilemaplayer-method-set-cells-terrain-path)(path: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\], terrain\_set: [int](class_int.md#class-int), terrain: [int](class_int.md#class-int), ignore\_empty\_terrains: [bool](class_bool.md#class-bool) = true) |
| void | [set\_navigation\_map](#class-tilemaplayer-method-set-navigation-map)(map: [RID](class_rid.md#class-rid)) |
| void | [set\_pattern](#class-tilemaplayer-method-set-pattern)(position: [Vector2i](class_vector2i.md#class-vector2i), pattern: [TileMapPattern](class_tilemappattern.md#class-tilemappattern)) |
| void | [update\_internals](#class-tilemaplayer-method-update-internals)() |

* * *

## Signals

**changed**() [🔗](#class-tilemaplayer-signal-changed)

Emitted when this **TileMapLayer**'s properties changes. This includes modified cells, properties, or changes made to its assigned [TileSet](class_tileset.md#class-tileset).

**Note:** This signal may be emitted very often when batch-modifying a **TileMapLayer**. Avoid executing complex processing in a connected function, and consider delaying it to the end of the frame instead (i.e. calling [Object.call\_deferred()](class_object.md#class-object-method-call-deferred)).

* * *

## Enumerations

enum **DebugVisibilityMode**: [🔗](#enum-tilemaplayer-debugvisibilitymode)

[DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode) **DEBUG\_VISIBILITY\_MODE\_DEFAULT** = `0`

Hide the collisions or navigation debug shapes in the editor, and use the debug settings to determine their visibility in game (i.e. [SceneTree.debug\_collisions\_hint](class_scenetree.md#class-scenetree-property-debug-collisions-hint) or [SceneTree.debug\_navigation\_hint](class_scenetree.md#class-scenetree-property-debug-navigation-hint)).

[DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode) **DEBUG\_VISIBILITY\_MODE\_FORCE\_HIDE** = `2`

Always hide the collisions or navigation debug shapes.

[DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode) **DEBUG\_VISIBILITY\_MODE\_FORCE\_SHOW** = `1`

Always show the collisions or navigation debug shapes.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collision\_enabled** = `true` [🔗](#class-tilemaplayer-property-collision-enabled)

- void **set\_collision\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collision\_enabled**()


Enable or disable collisions.

* * *

[DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode) **collision\_visibility\_mode** = `0` [🔗](#class-tilemaplayer-property-collision-visibility-mode)

- void **set\_collision\_visibility\_mode**(value: [DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode))

- [DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode) **get\_collision\_visibility\_mode**()


Show or hide the **TileMapLayer**'s collision shapes. If set to [DEBUG\_VISIBILITY\_MODE\_DEFAULT](#class-tilemaplayer-constant-debug-visibility-mode-default), this depends on the show collision debug settings.

* * *

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-tilemaplayer-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


If `false`, disables this **TileMapLayer** completely (rendering, collision, navigation, scene tiles, etc.)

* * *

[bool](class_bool.md#class-bool) **navigation\_enabled** = `true` [🔗](#class-tilemaplayer-property-navigation-enabled)

- void **set\_navigation\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_navigation\_enabled**()


If `true`, navigation regions are enabled.

* * *

[DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode) **navigation\_visibility\_mode** = `0` [🔗](#class-tilemaplayer-property-navigation-visibility-mode)

- void **set\_navigation\_visibility\_mode**(value: [DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode))

- [DebugVisibilityMode](#enum-tilemaplayer-debugvisibilitymode) **get\_navigation\_visibility\_mode**()


Show or hide the **TileMapLayer**'s navigation meshes. If set to [DEBUG\_VISIBILITY\_MODE\_DEFAULT](#class-tilemaplayer-constant-debug-visibility-mode-default), this depends on the show navigation debug settings.

* * *

[bool](class_bool.md#class-bool) **occlusion\_enabled** = `true` [🔗](#class-tilemaplayer-property-occlusion-enabled)

- void **set\_occlusion\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_occlusion\_enabled**()


Enable or disable light occlusion.

* * *

[int](class_int.md#class-int) **physics\_quadrant\_size** = `16` [🔗](#class-tilemaplayer-property-physics-quadrant-size)

- void **set\_physics\_quadrant\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_physics\_quadrant\_size**()


The **TileMapLayer**'s physics quadrant size. Within a physics quadrant, cells with similar physics properties are grouped together and their collision shapes get merged. [physics\_quadrant\_size](#class-tilemaplayer-property-physics-quadrant-size) defines the length of a square's side, in the map's coordinate system, that forms the quadrant. Thus, the default quadrant size groups together `16 * 16 = 256` tiles.

**Note:** As quadrants are created according to the map's coordinate system, the quadrant's "square shape" might not look like square in the **TileMapLayer**'s local coordinate system.

**Note:** This impacts the value returned by [get\_coords\_for\_body\_rid()](#class-tilemaplayer-method-get-coords-for-body-rid).

* * *

[int](class_int.md#class-int) **rendering\_quadrant\_size** = `16` [🔗](#class-tilemaplayer-property-rendering-quadrant-size)

- void **set\_rendering\_quadrant\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_rendering\_quadrant\_size**()


The **TileMapLayer**'s rendering quadrant size. A quadrant is a group of tiles to be drawn together on a single canvas item, for optimization purposes. [rendering\_quadrant\_size](#class-tilemaplayer-property-rendering-quadrant-size) defines the length of a square's side, in the map's coordinate system, that forms the quadrant. Thus, the default quadrant size groups together `16 * 16 = 256` tiles.

The quadrant size does not apply on a Y-sorted **TileMapLayer**, as tiles are grouped by Y position instead in that case.

**Note:** As quadrants are created according to the map's coordinate system, the quadrant's "square shape" might not look like square in the **TileMapLayer**'s local coordinate system.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **tile\_map\_data** = `PackedByteArray()` [🔗](#class-tilemaplayer-property-tile-map-data)

- void **set\_tile\_map\_data\_from\_array**(value: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_tile\_map\_data\_as\_array**()


The raw tile map data as a byte array.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

[TileSet](class_tileset.md#class-tileset) **tile\_set** [🔗](#class-tilemaplayer-property-tile-set)

- void **set\_tile\_set**(value: [TileSet](class_tileset.md#class-tileset))

- [TileSet](class_tileset.md#class-tileset) **get\_tile\_set**()


The [TileSet](class_tileset.md#class-tileset) used by this layer. The textures, collisions, and additional behavior of all available tiles are stored here.

* * *

[bool](class_bool.md#class-bool) **use\_kinematic\_bodies** = `false` [🔗](#class-tilemaplayer-property-use-kinematic-bodies)

- void **set\_use\_kinematic\_bodies**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_kinematic\_bodies**()


If `true`, this **TileMapLayer** collision shapes will be instantiated as kinematic bodies. This can be needed for moving **TileMapLayer** nodes (i.e. moving platforms).

* * *

[bool](class_bool.md#class-bool) **x\_draw\_order\_reversed** = `false` [🔗](#class-tilemaplayer-property-x-draw-order-reversed)

- void **set\_x\_draw\_order\_reversed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_x\_draw\_order\_reversed**()


If [CanvasItem.y\_sort\_enabled](class_canvasitem.md#class-canvasitem-property-y-sort-enabled) is enabled, setting this to `true` will reverse the order the tiles are drawn on the X-axis.

* * *

[int](class_int.md#class-int) **y\_sort\_origin** = `0` [🔗](#class-tilemaplayer-property-y-sort-origin)

- void **set\_y\_sort\_origin**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_y\_sort\_origin**()


This Y-sort origin value is added to each tile's Y-sort origin value. This allows, for example, to fake a different height level. This can be useful for top-down view games.

* * *

## Method Descriptions

void **\_tile\_data\_runtime\_update**(coords: [Vector2i](class_vector2i.md#class-vector2i), tile\_data: [TileData](class_tiledata.md#class-tiledata)) virtual [🔗](#class-tilemaplayer-private-method-tile-data-runtime-update)

Called with a [TileData](class_tiledata.md#class-tiledata) object about to be used internally by the **TileMapLayer**, allowing its modification at runtime.

This method is only called if [\_use\_tile\_data\_runtime\_update()](#class-tilemaplayer-private-method-use-tile-data-runtime-update) is implemented and returns `true` for the given tile `coords`.

**Warning:** The `tile_data` object's sub-resources are the same as the one in the TileSet. Modifying them might impact the whole TileSet. Instead, make sure to duplicate those resources.

**Note:** If the properties of `tile_data` object should change over time, use [notify\_runtime\_tile\_data\_update()](#class-tilemaplayer-method-notify-runtime-tile-data-update) to notify the **TileMapLayer** it needs an update.

* * *

void **\_update\_cells**(coords: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\], forced\_cleanup: [bool](class_bool.md#class-bool)) virtual [🔗](#class-tilemaplayer-private-method-update-cells)

Called when this **TileMapLayer**'s cells need an internal update. This update may be caused from individual cells being modified or by a change in the [tile\_set](#class-tilemaplayer-property-tile-set) (causing all cells to be queued for an update). The first call to this function is always for initializing all the **TileMapLayer**'s cells. `coords` contains the coordinates of all modified cells, roughly in the order they were modified. `forced_cleanup` is `true` when the **TileMapLayer**'s internals should be fully cleaned up. This is the case when:

- The layer is disabled;

- The layer is not visible;

- [tile\_set](#class-tilemaplayer-property-tile-set) is set to `null`;

- The node is removed from the tree;

- The node is freed.


Note that any internal update happening while one of these conditions is verified is considered to be a "cleanup". See also [update\_internals()](#class-tilemaplayer-method-update-internals).

**Warning:** Implementing this method may degrade the **TileMapLayer**'s performance.

* * *

[bool](class_bool.md#class-bool) **\_use\_tile\_data\_runtime\_update**(coords: [Vector2i](class_vector2i.md#class-vector2i)) virtual [🔗](#class-tilemaplayer-private-method-use-tile-data-runtime-update)

Should return `true` if the tile at coordinates `coords` requires a runtime update.

**Warning:** Make sure this function only returns `true` when needed. Any tile processed at runtime without a need for it will imply a significant performance penalty.

**Note:** If the result of this function should change, use [notify\_runtime\_tile\_data\_update()](#class-tilemaplayer-method-notify-runtime-tile-data-update) to notify the **TileMapLayer** it needs an update.

* * *

void **clear**() [🔗](#class-tilemaplayer-method-clear)

Clears all cells.

* * *

void **erase\_cell**(coords: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tilemaplayer-method-erase-cell)

Erases the cell at coordinates `coords`.

* * *

void **fix\_invalid\_tiles**() [🔗](#class-tilemaplayer-method-fix-invalid-tiles)

Clears cells containing tiles that do not exist in the [tile\_set](#class-tilemaplayer-property-tile-set).

* * *

[int](class_int.md#class-int) **get\_cell\_alternative\_tile**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemaplayer-method-get-cell-alternative-tile)

Returns the tile alternative ID of the cell at coordinates `coords`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_cell\_atlas\_coords**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemaplayer-method-get-cell-atlas-coords)

Returns the tile atlas coordinates ID of the cell at coordinates `coords`. Returns `Vector2i(-1, -1)` if the cell does not exist.

* * *

[int](class_int.md#class-int) **get\_cell\_source\_id**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemaplayer-method-get-cell-source-id)

Returns the tile source ID of the cell at coordinates `coords`. Returns `-1` if the cell does not exist.

* * *

[TileData](class_tiledata.md#class-tiledata) **get\_cell\_tile\_data**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemaplayer-method-get-cell-tile-data)

Returns the [TileData](class_tiledata.md#class-tiledata) object associated with the given cell, or `null` if the cell does not exist or is not a [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource).

```
func get_clicked_tile_power():
    var clicked_cell = tile_map_layer.local_to_map(tile_map_layer.get_local_mouse_position())
    var data = tile_map_layer.get_cell_tile_data(clicked_cell)
    if data:
        return data.get_custom_data("power")
    else:
        return 0

```

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_coords\_for\_body\_rid**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-tilemaplayer-method-get-coords-for-body-rid)

Returns the coordinates of the physics quadrant (see [physics\_quadrant\_size](#class-tilemaplayer-property-physics-quadrant-size)) for given physics body [RID](class_rid.md#class-rid). Such an [RID](class_rid.md#class-rid) can be retrieved from [KinematicCollision2D.get\_collider\_rid()](class_kinematiccollision2d.md#class-kinematiccollision2d-method-get-collider-rid), when colliding with a tile.

* * *

[RID](class_rid.md#class-rid) **get\_navigation\_map**() const [🔗](#class-tilemaplayer-method-get-navigation-map)

Returns the [RID](class_rid.md#class-rid) of the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) navigation used by this **TileMapLayer**.

By default this returns the default [World2D](class_world2d.md#class-world2d) navigation map, unless a custom map was provided using [set\_navigation\_map()](#class-tilemaplayer-method-set-navigation-map).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_neighbor\_cell**(coords: [Vector2i](class_vector2i.md#class-vector2i), neighbor: [CellNeighbor](class_tileset.md#enum-tileset-cellneighbor)) const [🔗](#class-tilemaplayer-method-get-neighbor-cell)

Returns the neighboring cell to the one at coordinates `coords`, identified by the `neighbor` direction. This method takes into account the different layouts a TileMap can take.

* * *

[TileMapPattern](class_tilemappattern.md#class-tilemappattern) **get\_pattern**(coords\_array: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\]) [🔗](#class-tilemaplayer-method-get-pattern)

Creates and returns a new [TileMapPattern](class_tilemappattern.md#class-tilemappattern) from the given array of cells. See also [set\_pattern()](#class-tilemaplayer-method-set-pattern).

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_surrounding\_cells**(coords: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tilemaplayer-method-get-surrounding-cells)

Returns the list of all neighboring cells to the one at `coords`. Any neighboring cell is one that is touching edges, so for a square cell 4 cells would be returned, for a hexagon 6 cells are returned.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_used\_cells**() const [🔗](#class-tilemaplayer-method-get-used-cells)

Returns a [Vector2i](class_vector2i.md#class-vector2i) array with the positions of all cells containing a tile. A cell is considered empty if its source identifier equals `-1`, its atlas coordinate identifier is `Vector2(-1, -1)` and its alternative identifier is `-1`.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_used\_cells\_by\_id**(source\_id: [int](class_int.md#class-int) = -1, atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), alternative\_tile: [int](class_int.md#class-int) = -1) const [🔗](#class-tilemaplayer-method-get-used-cells-by-id)

Returns a [Vector2i](class_vector2i.md#class-vector2i) array with the positions of all cells containing a tile. Tiles may be filtered according to their source ( `source_id`), their atlas coordinates ( `atlas_coords`), or alternative id ( `alternative_tile`).

If a parameter has its value set to the default one, this parameter is not used to filter a cell. Thus, if all parameters have their respective default values, this method returns the same result as [get\_used\_cells()](#class-tilemaplayer-method-get-used-cells).

A cell is considered empty if its source identifier equals `-1`, its atlas coordinate identifier is `Vector2(-1, -1)` and its alternative identifier is `-1`.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **get\_used\_rect**() const [🔗](#class-tilemaplayer-method-get-used-rect)

Returns a rectangle enclosing the used (non-empty) tiles of the map.

* * *

[bool](class_bool.md#class-bool) **has\_body\_rid**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-tilemaplayer-method-has-body-rid)

Returns whether the provided `body` [RID](class_rid.md#class-rid) belongs to one of this **TileMapLayer**'s cells.

* * *

[bool](class_bool.md#class-bool) **is\_cell\_flipped\_h**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemaplayer-method-is-cell-flipped-h)

Returns `true` if the cell at coordinates `coords` is flipped horizontally. The result is valid only for atlas sources.

* * *

[bool](class_bool.md#class-bool) **is\_cell\_flipped\_v**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemaplayer-method-is-cell-flipped-v)

Returns `true` if the cell at coordinates `coords` is flipped vertically. The result is valid only for atlas sources.

* * *

[bool](class_bool.md#class-bool) **is\_cell\_transposed**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemaplayer-method-is-cell-transposed)

Returns `true` if the cell at coordinates `coords` is transposed. The result is valid only for atlas sources.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **local\_to\_map**(local\_position: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-tilemaplayer-method-local-to-map)

Returns the map coordinates of the cell containing the given `local_position`. If `local_position` is in global coordinates, consider using [Node2D.to\_local()](class_node2d.md#class-node2d-method-to-local) before passing it to this method. See also [map\_to\_local()](#class-tilemaplayer-method-map-to-local).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **map\_pattern**(position\_in\_tilemap: [Vector2i](class_vector2i.md#class-vector2i), coords\_in\_pattern: [Vector2i](class_vector2i.md#class-vector2i), pattern: [TileMapPattern](class_tilemappattern.md#class-tilemappattern)) [🔗](#class-tilemaplayer-method-map-pattern)

Returns for the given coordinates `coords_in_pattern` in a [TileMapPattern](class_tilemappattern.md#class-tilemappattern) the corresponding cell coordinates if the pattern was pasted at the `position_in_tilemap` coordinates (see [set\_pattern()](#class-tilemaplayer-method-set-pattern)). This mapping is required as in half-offset tile shapes, the mapping might not work by calculating `position_in_tile_map + coords_in_pattern`.

* * *

[Vector2](class_vector2.md#class-vector2) **map\_to\_local**(map\_position: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemaplayer-method-map-to-local)

Returns the centered position of a cell in the **TileMapLayer**'s local coordinate space. To convert the returned value into global coordinates, use [Node2D.to\_global()](class_node2d.md#class-node2d-method-to-global). See also [local\_to\_map()](#class-tilemaplayer-method-local-to-map).

**Note:** This may not correspond to the visual position of the tile, i.e. it ignores the [TileData.texture\_origin](class_tiledata.md#class-tiledata-property-texture-origin) property of individual tiles.

* * *

void **notify\_runtime\_tile\_data\_update**() [🔗](#class-tilemaplayer-method-notify-runtime-tile-data-update)

Notifies the **TileMapLayer** node that calls to [\_use\_tile\_data\_runtime\_update()](#class-tilemaplayer-private-method-use-tile-data-runtime-update) or [\_tile\_data\_runtime\_update()](#class-tilemaplayer-private-method-tile-data-runtime-update) will lead to different results. This will thus trigger a **TileMapLayer** update.

**Warning:** Updating the **TileMapLayer** is computationally expensive and may impact performance. Try to limit the number of calls to this function to avoid unnecessary update.

**Note:** This does not trigger a direct update of the **TileMapLayer**, the update will be done at the end of the frame as usual (unless you call [update\_internals()](#class-tilemaplayer-method-update-internals)).

* * *

void **set\_cell**(coords: [Vector2i](class_vector2i.md#class-vector2i), source\_id: [int](class_int.md#class-int) = -1, atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), alternative\_tile: [int](class_int.md#class-int) = 0) [🔗](#class-tilemaplayer-method-set-cell)

Sets the tile identifiers for the cell at coordinates `coords`. Each tile of the [TileSet](class_tileset.md#class-tileset) is identified using three parts:

- The source identifier `source_id` identifies a [TileSetSource](class_tilesetsource.md#class-tilesetsource) identifier. See [TileSet.set\_source\_id()](class_tileset.md#class-tileset-method-set-source-id),

- The atlas coordinate identifier `atlas_coords` identifies a tile coordinates in the atlas (if the source is a [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource)). For [TileSetScenesCollectionSource](class_tilesetscenescollectionsource.md#class-tilesetscenescollectionsource) it should always be `Vector2i(0, 0)`,

- The alternative tile identifier `alternative_tile` identifies a tile alternative in the atlas (if the source is a [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource)), and the scene for a [TileSetScenesCollectionSource](class_tilesetscenescollectionsource.md#class-tilesetscenescollectionsource).


If `source_id` is set to `-1`, `atlas_coords` to `Vector2i(-1, -1)`, or `alternative_tile` to `-1`, the cell will be erased. An erased cell gets **all** its identifiers automatically set to their respective invalid values, namely `-1`, `Vector2i(-1, -1)` and `-1`.

* * *

void **set\_cells\_terrain\_connect**(cells: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\], terrain\_set: [int](class_int.md#class-int), terrain: [int](class_int.md#class-int), ignore\_empty\_terrains: [bool](class_bool.md#class-bool) = true) [🔗](#class-tilemaplayer-method-set-cells-terrain-connect)

Update all the cells in the `cells` coordinates array so that they use the given `terrain` for the given `terrain_set`. If an updated cell has the same terrain as one of its neighboring cells, this function tries to join the two. This function might update neighboring tiles if needed to create correct terrain transitions.

If `ignore_empty_terrains` is `true`, empty terrains will be ignored when trying to find the best fitting tile for the given terrain constraints.

**Note:** To work correctly, this method requires the **TileMapLayer**'s TileSet to have terrains set up with all required terrain combinations. Otherwise, it may produce unexpected results.

* * *

void **set\_cells\_terrain\_path**(path: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\], terrain\_set: [int](class_int.md#class-int), terrain: [int](class_int.md#class-int), ignore\_empty\_terrains: [bool](class_bool.md#class-bool) = true) [🔗](#class-tilemaplayer-method-set-cells-terrain-path)

Update all the cells in the `path` coordinates array so that they use the given `terrain` for the given `terrain_set`. The function will also connect two successive cell in the path with the same terrain. This function might update neighboring tiles if needed to create correct terrain transitions.

If `ignore_empty_terrains` is `true`, empty terrains will be ignored when trying to find the best fitting tile for the given terrain constraints.

**Note:** To work correctly, this method requires the **TileMapLayer**'s TileSet to have terrains set up with all required terrain combinations. Otherwise, it may produce unexpected results.

* * *

void **set\_navigation\_map**(map: [RID](class_rid.md#class-rid)) [🔗](#class-tilemaplayer-method-set-navigation-map)

Sets a custom `map` as a [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) navigation map. If not set, uses the default [World2D](class_world2d.md#class-world2d) navigation map instead.

* * *

void **set\_pattern**(position: [Vector2i](class_vector2i.md#class-vector2i), pattern: [TileMapPattern](class_tilemappattern.md#class-tilemappattern)) [🔗](#class-tilemaplayer-method-set-pattern)

Pastes the [TileMapPattern](class_tilemappattern.md#class-tilemappattern) at the given `position` in the tile map. See also [get\_pattern()](#class-tilemaplayer-method-get-pattern).

* * *

void **update\_internals**() [🔗](#class-tilemaplayer-method-update-internals)

Triggers a direct update of the **TileMapLayer**. Usually, calling this function is not needed, as **TileMapLayer** node updates automatically when one of its properties or cells is modified.

However, for performance reasons, those updates are batched and delayed to the end of the frame. Calling this function will force the **TileMapLayer** to update right away instead.

**Warning:** Updating the **TileMapLayer** is computationally expensive and may impact performance. Try to limit the number of updates and how many tiles they impact.

[Previous](class_tilemap.md "TileMap") [Next](class_timer.md "Timer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tilemap.md "TileMap") [Next](class_timer.md "Timer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).