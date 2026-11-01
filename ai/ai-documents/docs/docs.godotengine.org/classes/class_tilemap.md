---
title: TileMap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tilemap.html
crawled_at: "2026-08-13T10:37:31+12:00"
content_hash: a8a91da6738b9d8f415c4bad99314e0f364ea9ea37c979bf05482d43c18ef9ce
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TileMap

* * *

# TileMap

**Deprecated:** Use multiple [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer) nodes instead. To convert a TileMap to a set of TileMapLayer nodes, open the TileMap bottom panel with the node selected, click the toolbox icon in the top-right corner and choose 'Extract TileMap layers as individual TileMapLayer nodes'.

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Node for 2D tile-based maps.

## Description

Node for 2D tile-based maps. Tilemaps use a [TileSet](class_tileset.md#class-tileset) which contain a list of tiles which are used to create grid-based maps. A TileMap may have several layers, layouting tiles on top of each other.

For performance reasons, all TileMap updates are batched at the end of a frame. Notably, this means that scene tiles from a [TileSetScenesCollectionSource](class_tilesetscenescollectionsource.md#class-tilesetscenescollectionsource) may be initialized after their parent. This is only queued when inside the scene tree.

To force an update earlier on, call [update\_internals()](#class-tilemap-method-update-internals).

**Note:** For performance and compatibility reasons, the coordinates serialized by **TileMap** are limited to 16-bit signed integers, i.e. the range for X and Y coordinates is from `-32768` to `32767`. When saving tile data, tiles outside this range are wrapped.

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
| [bool](class_bool.md#class-bool) | [collision\_animatable](#class-tilemap-property-collision-animatable) | `false` |
| [VisibilityMode](#enum-tilemap-visibilitymode) | [collision\_visibility\_mode](#class-tilemap-property-collision-visibility-mode) | `0` |
| [VisibilityMode](#enum-tilemap-visibilitymode) | [navigation\_visibility\_mode](#class-tilemap-property-navigation-visibility-mode) | `0` |
| [int](class_int.md#class-int) | [rendering\_quadrant\_size](#class-tilemap-property-rendering-quadrant-size) | `16` |
| [TileSet](class_tileset.md#class-tileset) | [tile\_set](#class-tilemap-property-tile-set) |  |

## Methods

|     |     |
| --- | --- |
| void | [\_tile\_data\_runtime\_update](#class-tilemap-private-method-tile-data-runtime-update)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), tile\_data: [TileData](class_tiledata.md#class-tiledata)) virtual |
| [bool](class_bool.md#class-bool) | [\_use\_tile\_data\_runtime\_update](#class-tilemap-private-method-use-tile-data-runtime-update)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i)) virtual |
| void | [add\_layer](#class-tilemap-method-add-layer)(to\_position: [int](class_int.md#class-int)) |
| void | [clear](#class-tilemap-method-clear)() |
| void | [clear\_layer](#class-tilemap-method-clear-layer)(layer: [int](class_int.md#class-int)) |
| void | [erase\_cell](#class-tilemap-method-erase-cell)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [fix\_invalid\_tiles](#class-tilemap-method-fix-invalid-tiles)() |
| void | [force\_update](#class-tilemap-method-force-update)(layer: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [get\_cell\_alternative\_tile](#class-tilemap-method-get-cell-alternative-tile)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_cell\_atlas\_coords](#class-tilemap-method-get-cell-atlas-coords)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const |
| [int](class_int.md#class-int) | [get\_cell\_source\_id](#class-tilemap-method-get-cell-source-id)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const |
| [TileData](class_tiledata.md#class-tiledata) | [get\_cell\_tile\_data](#class-tilemap-method-get-cell-tile-data)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_coords\_for\_body\_rid](#class-tilemap-method-get-coords-for-body-rid)(body: [RID](class_rid.md#class-rid)) |
| [int](class_int.md#class-int) | [get\_layer\_for\_body\_rid](#class-tilemap-method-get-layer-for-body-rid)(body: [RID](class_rid.md#class-rid)) |
| [Color](class_color.md#class-color) | [get\_layer\_modulate](#class-tilemap-method-get-layer-modulate)(layer: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_layer\_name](#class-tilemap-method-get-layer-name)(layer: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_layer\_navigation\_map](#class-tilemap-method-get-layer-navigation-map)(layer: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_layer\_y\_sort\_origin](#class-tilemap-method-get-layer-y-sort-origin)(layer: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_layer\_z\_index](#class-tilemap-method-get-layer-z-index)(layer: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_layers\_count](#class-tilemap-method-get-layers-count)() const |
| [RID](class_rid.md#class-rid) | [get\_navigation\_map](#class-tilemap-method-get-navigation-map)(layer: [int](class_int.md#class-int)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_neighbor\_cell](#class-tilemap-method-get-neighbor-cell)(coords: [Vector2i](class_vector2i.md#class-vector2i), neighbor: [CellNeighbor](class_tileset.md#enum-tileset-cellneighbor)) const |
| [TileMapPattern](class_tilemappattern.md#class-tilemappattern) | [get\_pattern](#class-tilemap-method-get-pattern)(layer: [int](class_int.md#class-int), coords\_array: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\]) |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_surrounding\_cells](#class-tilemap-method-get-surrounding-cells)(coords: [Vector2i](class_vector2i.md#class-vector2i)) |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_used\_cells](#class-tilemap-method-get-used-cells)(layer: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_used\_cells\_by\_id](#class-tilemap-method-get-used-cells-by-id)(layer: [int](class_int.md#class-int), source\_id: [int](class_int.md#class-int) = -1, atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), alternative\_tile: [int](class_int.md#class-int) = -1) const |
| [Rect2i](class_rect2i.md#class-rect2i) | [get\_used\_rect](#class-tilemap-method-get-used-rect)() const |
| [bool](class_bool.md#class-bool) | [is\_cell\_flipped\_h](#class-tilemap-method-is-cell-flipped-h)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_cell\_flipped\_v](#class-tilemap-method-is-cell-flipped-v)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_cell\_transposed](#class-tilemap-method-is-cell-transposed)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_layer\_enabled](#class-tilemap-method-is-layer-enabled)(layer: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_layer\_navigation\_enabled](#class-tilemap-method-is-layer-navigation-enabled)(layer: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_layer\_y\_sort\_enabled](#class-tilemap-method-is-layer-y-sort-enabled)(layer: [int](class_int.md#class-int)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [local\_to\_map](#class-tilemap-method-local-to-map)(local\_position: [Vector2](class_vector2.md#class-vector2)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [map\_pattern](#class-tilemap-method-map-pattern)(position\_in\_tilemap: [Vector2i](class_vector2i.md#class-vector2i), coords\_in\_pattern: [Vector2i](class_vector2i.md#class-vector2i), pattern: [TileMapPattern](class_tilemappattern.md#class-tilemappattern)) |
| [Vector2](class_vector2.md#class-vector2) | [map\_to\_local](#class-tilemap-method-map-to-local)(map\_position: [Vector2i](class_vector2i.md#class-vector2i)) const |
| void | [move\_layer](#class-tilemap-method-move-layer)(layer: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) |
| void | [notify\_runtime\_tile\_data\_update](#class-tilemap-method-notify-runtime-tile-data-update)(layer: [int](class_int.md#class-int) = -1) |
| void | [remove\_layer](#class-tilemap-method-remove-layer)(layer: [int](class_int.md#class-int)) |
| void | [set\_cell](#class-tilemap-method-set-cell)(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), source\_id: [int](class_int.md#class-int) = -1, atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), alternative\_tile: [int](class_int.md#class-int) = 0) |
| void | [set\_cells\_terrain\_connect](#class-tilemap-method-set-cells-terrain-connect)(layer: [int](class_int.md#class-int), cells: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\], terrain\_set: [int](class_int.md#class-int), terrain: [int](class_int.md#class-int), ignore\_empty\_terrains: [bool](class_bool.md#class-bool) = true) |
| void | [set\_cells\_terrain\_path](#class-tilemap-method-set-cells-terrain-path)(layer: [int](class_int.md#class-int), path: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\], terrain\_set: [int](class_int.md#class-int), terrain: [int](class_int.md#class-int), ignore\_empty\_terrains: [bool](class_bool.md#class-bool) = true) |
| void | [set\_layer\_enabled](#class-tilemap-method-set-layer-enabled)(layer: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_layer\_modulate](#class-tilemap-method-set-layer-modulate)(layer: [int](class_int.md#class-int), modulate: [Color](class_color.md#class-color)) |
| void | [set\_layer\_name](#class-tilemap-method-set-layer-name)(layer: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_layer\_navigation\_enabled](#class-tilemap-method-set-layer-navigation-enabled)(layer: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_layer\_navigation\_map](#class-tilemap-method-set-layer-navigation-map)(layer: [int](class_int.md#class-int), map: [RID](class_rid.md#class-rid)) |
| void | [set\_layer\_y\_sort\_enabled](#class-tilemap-method-set-layer-y-sort-enabled)(layer: [int](class_int.md#class-int), y\_sort\_enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_layer\_y\_sort\_origin](#class-tilemap-method-set-layer-y-sort-origin)(layer: [int](class_int.md#class-int), y\_sort\_origin: [int](class_int.md#class-int)) |
| void | [set\_layer\_z\_index](#class-tilemap-method-set-layer-z-index)(layer: [int](class_int.md#class-int), z\_index: [int](class_int.md#class-int)) |
| void | [set\_navigation\_map](#class-tilemap-method-set-navigation-map)(layer: [int](class_int.md#class-int), map: [RID](class_rid.md#class-rid)) |
| void | [set\_pattern](#class-tilemap-method-set-pattern)(layer: [int](class_int.md#class-int), position: [Vector2i](class_vector2i.md#class-vector2i), pattern: [TileMapPattern](class_tilemappattern.md#class-tilemappattern)) |
| void | [update\_internals](#class-tilemap-method-update-internals)() |

* * *

## Signals

**changed**() [🔗](#class-tilemap-signal-changed)

Emitted when the [TileSet](class_tileset.md#class-tileset) of this TileMap changes.

* * *

## Enumerations

enum **VisibilityMode**: [🔗](#enum-tilemap-visibilitymode)

[VisibilityMode](#enum-tilemap-visibilitymode) **VISIBILITY\_MODE\_DEFAULT** = `0`

Use the debug settings to determine visibility.

[VisibilityMode](#enum-tilemap-visibilitymode) **VISIBILITY\_MODE\_FORCE\_HIDE** = `2`

Always hide.

[VisibilityMode](#enum-tilemap-visibilitymode) **VISIBILITY\_MODE\_FORCE\_SHOW** = `1`

Always show.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **collision\_animatable** = `false` [🔗](#class-tilemap-property-collision-animatable)

- void **set\_collision\_animatable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collision\_animatable**()


If enabled, the TileMap will see its collisions synced to the physics tick and change its collision type from static to kinematic. This is required to create TileMap-based moving platform.

**Note:** Enabling [collision\_animatable](#class-tilemap-property-collision-animatable) may have a small performance impact, only do it if the TileMap is moving and has colliding tiles.

* * *

[VisibilityMode](#enum-tilemap-visibilitymode) **collision\_visibility\_mode** = `0` [🔗](#class-tilemap-property-collision-visibility-mode)

- void **set\_collision\_visibility\_mode**(value: [VisibilityMode](#enum-tilemap-visibilitymode))

- [VisibilityMode](#enum-tilemap-visibilitymode) **get\_collision\_visibility\_mode**()


Show or hide the TileMap's collision shapes. If set to [VISIBILITY\_MODE\_DEFAULT](#class-tilemap-constant-visibility-mode-default), this depends on the show collision debug settings.

* * *

[VisibilityMode](#enum-tilemap-visibilitymode) **navigation\_visibility\_mode** = `0` [🔗](#class-tilemap-property-navigation-visibility-mode)

- void **set\_navigation\_visibility\_mode**(value: [VisibilityMode](#enum-tilemap-visibilitymode))

- [VisibilityMode](#enum-tilemap-visibilitymode) **get\_navigation\_visibility\_mode**()


Show or hide the TileMap's navigation meshes. If set to [VISIBILITY\_MODE\_DEFAULT](#class-tilemap-constant-visibility-mode-default), this depends on the show navigation debug settings.

* * *

[int](class_int.md#class-int) **rendering\_quadrant\_size** = `16` [🔗](#class-tilemap-property-rendering-quadrant-size)

- void **set\_rendering\_quadrant\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_rendering\_quadrant\_size**()


The TileMap's quadrant size. A quadrant is a group of tiles to be drawn together on a single canvas item, for optimization purposes. [rendering\_quadrant\_size](#class-tilemap-property-rendering-quadrant-size) defines the length of a square's side, in the map's coordinate system, that forms the quadrant. Thus, the default quadrant size groups together `16 * 16 = 256` tiles.

The quadrant size does not apply on Y-sorted layers, as tiles are grouped by Y position instead in that case.

**Note:** As quadrants are created according to the map's coordinate system, the quadrant's "square shape" might not look like square in the TileMap's local coordinate system.

* * *

[TileSet](class_tileset.md#class-tileset) **tile\_set** [🔗](#class-tilemap-property-tile-set)

- void **set\_tileset**(value: [TileSet](class_tileset.md#class-tileset))

- [TileSet](class_tileset.md#class-tileset) **get\_tileset**()


The [TileSet](class_tileset.md#class-tileset) used by this **TileMap**. The textures, collisions, and additional behavior of all available tiles are stored here.

* * *

## Method Descriptions

void **\_tile\_data\_runtime\_update**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), tile\_data: [TileData](class_tiledata.md#class-tiledata)) virtual [🔗](#class-tilemap-private-method-tile-data-runtime-update)

Called with a TileData object about to be used internally by the TileMap, allowing its modification at runtime.

This method is only called if [\_use\_tile\_data\_runtime\_update()](#class-tilemap-private-method-use-tile-data-runtime-update) is implemented and returns `true` for the given tile `coords` and `layer`.

**Warning:** The `tile_data` object's sub-resources are the same as the one in the TileSet. Modifying them might impact the whole TileSet. Instead, make sure to duplicate those resources.

**Note:** If the properties of `tile_data` object should change over time, use [notify\_runtime\_tile\_data\_update()](#class-tilemap-method-notify-runtime-tile-data-update) to notify the TileMap it needs an update.

* * *

[bool](class_bool.md#class-bool) **\_use\_tile\_data\_runtime\_update**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i)) virtual [🔗](#class-tilemap-private-method-use-tile-data-runtime-update)

Should return `true` if the tile at coordinates `coords` on layer `layer` requires a runtime update.

**Warning:** Make sure this function only return `true` when needed. Any tile processed at runtime without a need for it will imply a significant performance penalty.

**Note:** If the result of this function should changed, use [notify\_runtime\_tile\_data\_update()](#class-tilemap-method-notify-runtime-tile-data-update) to notify the TileMap it needs an update.

* * *

void **add\_layer**(to\_position: [int](class_int.md#class-int)) [🔗](#class-tilemap-method-add-layer)

Adds a layer at the given position `to_position` in the array. If `to_position` is negative, the position is counted from the end, with `-1` adding the layer at the end of the array.

* * *

void **clear**() [🔗](#class-tilemap-method-clear)

Clears all cells.

* * *

void **clear\_layer**(layer: [int](class_int.md#class-int)) [🔗](#class-tilemap-method-clear-layer)

Clears all cells on the given layer.

If `layer` is negative, the layers are accessed from the last one.

* * *

void **erase\_cell**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tilemap-method-erase-cell)

Erases the cell on layer `layer` at coordinates `coords`.

If `layer` is negative, the layers are accessed from the last one.

* * *

void **fix\_invalid\_tiles**() [🔗](#class-tilemap-method-fix-invalid-tiles)

Clears cells that do not exist in the tileset.

* * *

void **force\_update**(layer: [int](class_int.md#class-int) = -1) [🔗](#class-tilemap-method-force-update)

**Deprecated:** Use [notify\_runtime\_tile\_data\_update()](#class-tilemap-method-notify-runtime-tile-data-update) and/or [update\_internals()](#class-tilemap-method-update-internals) instead.

Forces the TileMap and the layer `layer` to update.

* * *

[int](class_int.md#class-int) **get\_cell\_alternative\_tile**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const [🔗](#class-tilemap-method-get-cell-alternative-tile)

Returns the tile alternative ID of the cell on layer `layer` at `coords`.

If `use_proxies` is `false`, ignores the [TileSet](class_tileset.md#class-tileset)'s tile proxies, returning the raw alternative identifier. See [TileSet.map\_tile\_proxy()](class_tileset.md#class-tileset-method-map-tile-proxy).

If `layer` is negative, the layers are accessed from the last one.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_cell\_atlas\_coords**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const [🔗](#class-tilemap-method-get-cell-atlas-coords)

Returns the tile atlas coordinates ID of the cell on layer `layer` at coordinates `coords`. Returns `Vector2i(-1, -1)` if the cell does not exist.

If `use_proxies` is `false`, ignores the [TileSet](class_tileset.md#class-tileset)'s tile proxies, returning the raw atlas coordinate identifier. See [TileSet.map\_tile\_proxy()](class_tileset.md#class-tileset-method-map-tile-proxy).

If `layer` is negative, the layers are accessed from the last one.

* * *

[int](class_int.md#class-int) **get\_cell\_source\_id**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const [🔗](#class-tilemap-method-get-cell-source-id)

Returns the tile source ID of the cell on layer `layer` at coordinates `coords`. Returns `-1` if the cell does not exist.

If `use_proxies` is `false`, ignores the [TileSet](class_tileset.md#class-tileset)'s tile proxies, returning the raw source identifier. See [TileSet.map\_tile\_proxy()](class_tileset.md#class-tileset-method-map-tile-proxy).

If `layer` is negative, the layers are accessed from the last one.

* * *

[TileData](class_tiledata.md#class-tiledata) **get\_cell\_tile\_data**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const [🔗](#class-tilemap-method-get-cell-tile-data)

Returns the [TileData](class_tiledata.md#class-tiledata) object associated with the given cell, or `null` if the cell does not exist or is not a [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource).

If `layer` is negative, the layers are accessed from the last one.

```
func get_clicked_tile_power():
    var clicked_cell = tile_map.local_to_map(tile_map.get_local_mouse_position())
    var data = tile_map.get_cell_tile_data(0, clicked_cell)
    if data:
        return data.get_custom_data("power")
    else:
        return 0

```

If `use_proxies` is `false`, ignores the [TileSet](class_tileset.md#class-tileset)'s tile proxies. See [TileSet.map\_tile\_proxy()](class_tileset.md#class-tileset-method-map-tile-proxy).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_coords\_for\_body\_rid**(body: [RID](class_rid.md#class-rid)) [🔗](#class-tilemap-method-get-coords-for-body-rid)

Returns the coordinates of the tile for given physics body RID. Such RID can be retrieved from [KinematicCollision2D.get\_collider\_rid()](class_kinematiccollision2d.md#class-kinematiccollision2d-method-get-collider-rid), when colliding with a tile.

* * *

[int](class_int.md#class-int) **get\_layer\_for\_body\_rid**(body: [RID](class_rid.md#class-rid)) [🔗](#class-tilemap-method-get-layer-for-body-rid)

Returns the tilemap layer of the tile for given physics body RID. Such RID can be retrieved from [KinematicCollision2D.get\_collider\_rid()](class_kinematiccollision2d.md#class-kinematiccollision2d-method-get-collider-rid), when colliding with a tile.

* * *

[Color](class_color.md#class-color) **get\_layer\_modulate**(layer: [int](class_int.md#class-int)) const [🔗](#class-tilemap-method-get-layer-modulate)

Returns a TileMap layer's modulate.

If `layer` is negative, the layers are accessed from the last one.

* * *

[String](class_string.md#class-string) **get\_layer\_name**(layer: [int](class_int.md#class-int)) const [🔗](#class-tilemap-method-get-layer-name)

Returns a TileMap layer's name.

If `layer` is negative, the layers are accessed from the last one.

* * *

[RID](class_rid.md#class-rid) **get\_layer\_navigation\_map**(layer: [int](class_int.md#class-int)) const [🔗](#class-tilemap-method-get-layer-navigation-map)

Returns the [RID](class_rid.md#class-rid) of the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) navigation map assigned to the specified TileMap layer `layer`.

By default the TileMap uses the default [World2D](class_world2d.md#class-world2d) navigation map for the first TileMap layer. For each additional TileMap layer a new navigation map is created for the additional layer.

In order to make [NavigationAgent2D](class_navigationagent2d.md#class-navigationagent2d) switch between TileMap layer navigation maps use [NavigationAgent2D.set\_navigation\_map()](class_navigationagent2d.md#class-navigationagent2d-method-set-navigation-map) with the navigation map received from [get\_layer\_navigation\_map()](#class-tilemap-method-get-layer-navigation-map).

If `layer` is negative, the layers are accessed from the last one.

* * *

[int](class_int.md#class-int) **get\_layer\_y\_sort\_origin**(layer: [int](class_int.md#class-int)) const [🔗](#class-tilemap-method-get-layer-y-sort-origin)

Returns a TileMap layer's Y sort origin.

If `layer` is negative, the layers are accessed from the last one.

* * *

[int](class_int.md#class-int) **get\_layer\_z\_index**(layer: [int](class_int.md#class-int)) const [🔗](#class-tilemap-method-get-layer-z-index)

Returns a TileMap layer's Z-index value.

If `layer` is negative, the layers are accessed from the last one.

* * *

[int](class_int.md#class-int) **get\_layers\_count**() const [🔗](#class-tilemap-method-get-layers-count)

Returns the number of layers in the TileMap.

* * *

[RID](class_rid.md#class-rid) **get\_navigation\_map**(layer: [int](class_int.md#class-int)) const [🔗](#class-tilemap-method-get-navigation-map)

**Deprecated:** Use [get\_layer\_navigation\_map()](#class-tilemap-method-get-layer-navigation-map) instead.

Returns the [RID](class_rid.md#class-rid) of the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) navigation map assigned to the specified TileMap layer `layer`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_neighbor\_cell**(coords: [Vector2i](class_vector2i.md#class-vector2i), neighbor: [CellNeighbor](class_tileset.md#enum-tileset-cellneighbor)) const [🔗](#class-tilemap-method-get-neighbor-cell)

Returns the neighboring cell to the one at coordinates `coords`, identified by the `neighbor` direction. This method takes into account the different layouts a TileMap can take.

* * *

[TileMapPattern](class_tilemappattern.md#class-tilemappattern) **get\_pattern**(layer: [int](class_int.md#class-int), coords\_array: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\]) [🔗](#class-tilemap-method-get-pattern)

Creates a new [TileMapPattern](class_tilemappattern.md#class-tilemappattern) from the given layer and set of cells.

If `layer` is negative, the layers are accessed from the last one.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_surrounding\_cells**(coords: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tilemap-method-get-surrounding-cells)

Returns the list of all neighbourings cells to the one at `coords`.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_used\_cells**(layer: [int](class_int.md#class-int)) const [🔗](#class-tilemap-method-get-used-cells)

Returns a [Vector2i](class_vector2i.md#class-vector2i) array with the positions of all cells containing a tile in the given layer. A cell is considered empty if its source identifier equals -1, its atlas coordinates identifiers is `Vector2(-1, -1)` and its alternative identifier is -1.

If `layer` is negative, the layers are accessed from the last one.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_used\_cells\_by\_id**(layer: [int](class_int.md#class-int), source\_id: [int](class_int.md#class-int) = -1, atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), alternative\_tile: [int](class_int.md#class-int) = -1) const [🔗](#class-tilemap-method-get-used-cells-by-id)

Returns a [Vector2i](class_vector2i.md#class-vector2i) array with the positions of all cells containing a tile in the given layer. Tiles may be filtered according to their source ( `source_id`), their atlas coordinates ( `atlas_coords`) or alternative id ( `alternative_tile`).

If a parameter has its value set to the default one, this parameter is not used to filter a cell. Thus, if all parameters have their respective default value, this method returns the same result as [get\_used\_cells()](#class-tilemap-method-get-used-cells).

A cell is considered empty if its source identifier equals -1, its atlas coordinates identifiers is `Vector2(-1, -1)` and its alternative identifier is -1.

If `layer` is negative, the layers are accessed from the last one.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **get\_used\_rect**() const [🔗](#class-tilemap-method-get-used-rect)

Returns a rectangle enclosing the used (non-empty) tiles of the map, including all layers.

* * *

[bool](class_bool.md#class-bool) **is\_cell\_flipped\_h**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const [🔗](#class-tilemap-method-is-cell-flipped-h)

Returns `true` if the cell on layer `layer` at coordinates `coords` is flipped horizontally. The result is valid only for atlas sources.

* * *

[bool](class_bool.md#class-bool) **is\_cell\_flipped\_v**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const [🔗](#class-tilemap-method-is-cell-flipped-v)

Returns `true` if the cell on layer `layer` at coordinates `coords` is flipped vertically. The result is valid only for atlas sources.

* * *

[bool](class_bool.md#class-bool) **is\_cell\_transposed**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), use\_proxies: [bool](class_bool.md#class-bool) = false) const [🔗](#class-tilemap-method-is-cell-transposed)

Returns `true` if the cell on layer `layer` at coordinates `coords` is transposed. The result is valid only for atlas sources.

* * *

[bool](class_bool.md#class-bool) **is\_layer\_enabled**(layer: [int](class_int.md#class-int)) const [🔗](#class-tilemap-method-is-layer-enabled)

Returns if a layer is enabled.

If `layer` is negative, the layers are accessed from the last one.

* * *

[bool](class_bool.md#class-bool) **is\_layer\_navigation\_enabled**(layer: [int](class_int.md#class-int)) const [🔗](#class-tilemap-method-is-layer-navigation-enabled)

Returns if a layer's built-in navigation regions generation is enabled.

* * *

[bool](class_bool.md#class-bool) **is\_layer\_y\_sort\_enabled**(layer: [int](class_int.md#class-int)) const [🔗](#class-tilemap-method-is-layer-y-sort-enabled)

Returns if a layer Y-sorts its tiles.

If `layer` is negative, the layers are accessed from the last one.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **local\_to\_map**(local\_position: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-tilemap-method-local-to-map)

Returns the map coordinates of the cell containing the given `local_position`. If `local_position` is in global coordinates, consider using [Node2D.to\_local()](class_node2d.md#class-node2d-method-to-local) before passing it to this method. See also [map\_to\_local()](#class-tilemap-method-map-to-local).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **map\_pattern**(position\_in\_tilemap: [Vector2i](class_vector2i.md#class-vector2i), coords\_in\_pattern: [Vector2i](class_vector2i.md#class-vector2i), pattern: [TileMapPattern](class_tilemappattern.md#class-tilemappattern)) [🔗](#class-tilemap-method-map-pattern)

Returns for the given coordinate `coords_in_pattern` in a [TileMapPattern](class_tilemappattern.md#class-tilemappattern) the corresponding cell coordinates if the pattern was pasted at the `position_in_tilemap` coordinates (see [set\_pattern()](#class-tilemap-method-set-pattern)). This mapping is required as in half-offset tile shapes, the mapping might not work by calculating `position_in_tile_map + coords_in_pattern`.

* * *

[Vector2](class_vector2.md#class-vector2) **map\_to\_local**(map\_position: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemap-method-map-to-local)

Returns the centered position of a cell in the TileMap's local coordinate space. To convert the returned value into global coordinates, use [Node2D.to\_global()](class_node2d.md#class-node2d-method-to-global). See also [local\_to\_map()](#class-tilemap-method-local-to-map).

**Note:** This may not correspond to the visual position of the tile, i.e. it ignores the [TileData.texture\_origin](class_tiledata.md#class-tiledata-property-texture-origin) property of individual tiles.

* * *

void **move\_layer**(layer: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) [🔗](#class-tilemap-method-move-layer)

Moves the layer at index `layer` to the given position `to_position` in the array.

* * *

void **notify\_runtime\_tile\_data\_update**(layer: [int](class_int.md#class-int) = -1) [🔗](#class-tilemap-method-notify-runtime-tile-data-update)

Notifies the TileMap node that calls to [\_use\_tile\_data\_runtime\_update()](#class-tilemap-private-method-use-tile-data-runtime-update) or [\_tile\_data\_runtime\_update()](#class-tilemap-private-method-tile-data-runtime-update) will lead to different results. This will thus trigger a TileMap update.

If `layer` is provided, only notifies changes for the given layer. Providing the `layer` argument (when applicable) is usually preferred for performance reasons.

**Warning:** Updating the TileMap is computationally expensive and may impact performance. Try to limit the number of calls to this function to avoid unnecessary update.

**Note:** This does not trigger a direct update of the TileMap, the update will be done at the end of the frame as usual (unless you call [update\_internals()](#class-tilemap-method-update-internals)).

* * *

void **remove\_layer**(layer: [int](class_int.md#class-int)) [🔗](#class-tilemap-method-remove-layer)

Removes the layer at index `layer`.

* * *

void **set\_cell**(layer: [int](class_int.md#class-int), coords: [Vector2i](class_vector2i.md#class-vector2i), source\_id: [int](class_int.md#class-int) = -1, atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), alternative\_tile: [int](class_int.md#class-int) = 0) [🔗](#class-tilemap-method-set-cell)

Sets the tile identifiers for the cell on layer `layer` at coordinates `coords`. Each tile of the [TileSet](class_tileset.md#class-tileset) is identified using three parts:

- The source identifier `source_id` identifies a [TileSetSource](class_tilesetsource.md#class-tilesetsource) identifier. See [TileSet.set\_source\_id()](class_tileset.md#class-tileset-method-set-source-id),

- The atlas coordinates identifier `atlas_coords` identifies a tile coordinates in the atlas (if the source is a [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource)). For [TileSetScenesCollectionSource](class_tilesetscenescollectionsource.md#class-tilesetscenescollectionsource) it should always be `Vector2i(0, 0)`),

- The alternative tile identifier `alternative_tile` identifies a tile alternative in the atlas (if the source is a [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource)), and the scene for a [TileSetScenesCollectionSource](class_tilesetscenescollectionsource.md#class-tilesetscenescollectionsource).


If `source_id` is set to `-1`, `atlas_coords` to `Vector2i(-1, -1)` or `alternative_tile` to `-1`, the cell will be erased. An erased cell gets **all** its identifiers automatically set to their respective invalid values, namely `-1`, `Vector2i(-1, -1)` and `-1`.

If `layer` is negative, the layers are accessed from the last one.

* * *

void **set\_cells\_terrain\_connect**(layer: [int](class_int.md#class-int), cells: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\], terrain\_set: [int](class_int.md#class-int), terrain: [int](class_int.md#class-int), ignore\_empty\_terrains: [bool](class_bool.md#class-bool) = true) [🔗](#class-tilemap-method-set-cells-terrain-connect)

Update all the cells in the `cells` coordinates array so that they use the given `terrain` for the given `terrain_set`. If an updated cell has the same terrain as one of its neighboring cells, this function tries to join the two. This function might update neighboring tiles if needed to create correct terrain transitions.

If `ignore_empty_terrains` is `true`, empty terrains will be ignored when trying to find the best fitting tile for the given terrain constraints.

If `layer` is negative, the layers are accessed from the last one.

**Note:** To work correctly, this method requires the TileMap's TileSet to have terrains set up with all required terrain combinations. Otherwise, it may produce unexpected results.

* * *

void **set\_cells\_terrain\_path**(layer: [int](class_int.md#class-int), path: [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\], terrain\_set: [int](class_int.md#class-int), terrain: [int](class_int.md#class-int), ignore\_empty\_terrains: [bool](class_bool.md#class-bool) = true) [🔗](#class-tilemap-method-set-cells-terrain-path)

Update all the cells in the `path` coordinates array so that they use the given `terrain` for the given `terrain_set`. The function will also connect two successive cell in the path with the same terrain. This function might update neighboring tiles if needed to create correct terrain transitions.

If `ignore_empty_terrains` is `true`, empty terrains will be ignored when trying to find the best fitting tile for the given terrain constraints.

If `layer` is negative, the layers are accessed from the last one.

**Note:** To work correctly, this method requires the TileMap's TileSet to have terrains set up with all required terrain combinations. Otherwise, it may produce unexpected results.

* * *

void **set\_layer\_enabled**(layer: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-tilemap-method-set-layer-enabled)

Enables or disables the layer `layer`. A disabled layer is not processed at all (no rendering, no physics, etc.).

If `layer` is negative, the layers are accessed from the last one.

* * *

void **set\_layer\_modulate**(layer: [int](class_int.md#class-int), modulate: [Color](class_color.md#class-color)) [🔗](#class-tilemap-method-set-layer-modulate)

Sets a layer's color. It will be multiplied by tile's color and TileMap's modulate.

If `layer` is negative, the layers are accessed from the last one.

* * *

void **set\_layer\_name**(layer: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-tilemap-method-set-layer-name)

Sets a layer's name. This is mostly useful in the editor.

If `layer` is negative, the layers are accessed from the last one.

* * *

void **set\_layer\_navigation\_enabled**(layer: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-tilemap-method-set-layer-navigation-enabled)

Enables or disables a layer's built-in navigation regions generation. Disable this if you need to bake navigation regions from a TileMap using a [NavigationRegion2D](class_navigationregion2d.md#class-navigationregion2d) node.

* * *

void **set\_layer\_navigation\_map**(layer: [int](class_int.md#class-int), map: [RID](class_rid.md#class-rid)) [🔗](#class-tilemap-method-set-layer-navigation-map)

Assigns `map` as a [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) navigation map for the specified TileMap layer `layer`.

By default the TileMap uses the default [World2D](class_world2d.md#class-world2d) navigation map for the first TileMap layer. For each additional TileMap layer a new navigation map is created for the additional layer.

In order to make [NavigationAgent2D](class_navigationagent2d.md#class-navigationagent2d) switch between TileMap layer navigation maps use [NavigationAgent2D.set\_navigation\_map()](class_navigationagent2d.md#class-navigationagent2d-method-set-navigation-map) with the navigation map received from [get\_layer\_navigation\_map()](#class-tilemap-method-get-layer-navigation-map).

If `layer` is negative, the layers are accessed from the last one.

* * *

void **set\_layer\_y\_sort\_enabled**(layer: [int](class_int.md#class-int), y\_sort\_enabled: [bool](class_bool.md#class-bool)) [🔗](#class-tilemap-method-set-layer-y-sort-enabled)

Enables or disables a layer's Y-sorting. If a layer is Y-sorted, the layer will behave as a CanvasItem node where each of its tile gets Y-sorted.

Y-sorted layers should usually be on different Z-index values than not Y-sorted layers, otherwise, each of those layer will be Y-sorted as whole with the Y-sorted one. This is usually an undesired behavior.

If `layer` is negative, the layers are accessed from the last one.

* * *

void **set\_layer\_y\_sort\_origin**(layer: [int](class_int.md#class-int), y\_sort\_origin: [int](class_int.md#class-int)) [🔗](#class-tilemap-method-set-layer-y-sort-origin)

Sets a layer's Y-sort origin value. This Y-sort origin value is added to each tile's Y-sort origin value.

This allows, for example, to fake a different height level on each layer. This can be useful for top-down view games.

If `layer` is negative, the layers are accessed from the last one.

* * *

void **set\_layer\_z\_index**(layer: [int](class_int.md#class-int), z\_index: [int](class_int.md#class-int)) [🔗](#class-tilemap-method-set-layer-z-index)

Sets a layers Z-index value. This Z-index is added to each tile's Z-index value.

If `layer` is negative, the layers are accessed from the last one.

* * *

void **set\_navigation\_map**(layer: [int](class_int.md#class-int), map: [RID](class_rid.md#class-rid)) [🔗](#class-tilemap-method-set-navigation-map)

**Deprecated:** Use [set\_layer\_navigation\_map()](#class-tilemap-method-set-layer-navigation-map) instead.

Assigns `map` as a [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) navigation map for the specified TileMap layer `layer`.

* * *

void **set\_pattern**(layer: [int](class_int.md#class-int), position: [Vector2i](class_vector2i.md#class-vector2i), pattern: [TileMapPattern](class_tilemappattern.md#class-tilemappattern)) [🔗](#class-tilemap-method-set-pattern)

Paste the given [TileMapPattern](class_tilemappattern.md#class-tilemappattern) at the given `position` and `layer` in the tile map.

If `layer` is negative, the layers are accessed from the last one.

* * *

void **update\_internals**() [🔗](#class-tilemap-method-update-internals)

Triggers a direct update of the TileMap. Usually, calling this function is not needed, as TileMap node updates automatically when one of its properties or cells is modified.

However, for performance reasons, those updates are batched and delayed to the end of the frame. Calling this function will force the TileMap to update right away instead.

**Warning:** Updating the TileMap is computationally expensive and may impact performance. Try to limit the number of updates and how many tiles they impact.

[Previous](class_texturerect.md "TextureRect") [Next](class_tilemaplayer.md "TileMapLayer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_texturerect.md "TextureRect") [Next](class_tilemaplayer.md "TileMapLayer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).