---
title: TileSet — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tileset.html
crawled_at: "2026-08-13T10:36:23+12:00"
content_hash: ed3f85457681139318cddc6d13cb7b87228d14a751f06fee6dab9207f3d9384f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TileSet

* * *

# TileSet

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Tile library for tilemaps.

## Description

A TileSet is a library of tiles for a [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer). A TileSet handles a list of [TileSetSource](class_tilesetsource.md#class-tilesetsource), each of them storing a set of tiles.

Tiles can either be from a [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource), which renders tiles out of a texture with support for physics, navigation, etc., or from a [TileSetScenesCollectionSource](class_tilesetscenescollectionsource.md#class-tilesetscenescollectionsource), which exposes scene-based tiles.

Tiles are referenced by using three IDs: their source ID, their atlas coordinates ID, and their alternative tile ID.

A TileSet can be configured so that its tiles expose more or fewer properties. To do so, the TileSet resources use property layers, which you can add or remove depending on your needs.

For example, adding a physics layer allows giving collision shapes to your tiles. Each layer has dedicated properties (physics layer and mask), so you may add several TileSet physics layers for each type of collision you need.

See the functions to add new layers for more information.

## Tutorials

- [Using Tilemaps](../tutorials/2d/using_tilemaps.md)

- [2D Platformer Demo](https://godotengine.org/asset-library/asset/2727)

- [2D Isometric Demo](https://godotengine.org/asset-library/asset/2718)

- [2D Hexagonal Demo](https://godotengine.org/asset-library/asset/2717)

- [2D Grid-based Navigation with AStarGrid2D Demo](https://godotengine.org/asset-library/asset/2723)

- [2D Role Playing Game (RPG) Demo](https://godotengine.org/asset-library/asset/2729)

- [2D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2719)


## Properties

|     |     |     |
| --- | --- | --- |
| [TileLayout](#enum-tileset-tilelayout) | [tile\_layout](#class-tileset-property-tile-layout) | `0` |
| [TileOffsetAxis](#enum-tileset-tileoffsetaxis) | [tile\_offset\_axis](#class-tileset-property-tile-offset-axis) | `0` |
| [TileShape](#enum-tileset-tileshape) | [tile\_shape](#class-tileset-property-tile-shape) | `0` |
| [Vector2i](class_vector2i.md#class-vector2i) | [tile\_size](#class-tileset-property-tile-size) | `Vector2i(16, 16)` |
| [bool](class_bool.md#class-bool) | [uv\_clipping](#class-tileset-property-uv-clipping) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [add\_custom\_data\_layer](#class-tileset-method-add-custom-data-layer)(to\_position: [int](class_int.md#class-int) = -1) |
| void | [add\_navigation\_layer](#class-tileset-method-add-navigation-layer)(to\_position: [int](class_int.md#class-int) = -1) |
| void | [add\_occlusion\_layer](#class-tileset-method-add-occlusion-layer)(to\_position: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [add\_pattern](#class-tileset-method-add-pattern)(pattern: [TileMapPattern](class_tilemappattern.md#class-tilemappattern), index: [int](class_int.md#class-int) = -1) |
| void | [add\_physics\_layer](#class-tileset-method-add-physics-layer)(to\_position: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [add\_source](#class-tileset-method-add-source)(source: [TileSetSource](class_tilesetsource.md#class-tilesetsource), atlas\_source\_id\_override: [int](class_int.md#class-int) = -1) |
| void | [add\_terrain](#class-tileset-method-add-terrain)(terrain\_set: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int) = -1) |
| void | [add\_terrain\_set](#class-tileset-method-add-terrain-set)(to\_position: [int](class_int.md#class-int) = -1) |
| void | [cleanup\_invalid\_tile\_proxies](#class-tileset-method-cleanup-invalid-tile-proxies)() |
| void | [clear\_tile\_proxies](#class-tileset-method-clear-tile-proxies)() |
| [Array](class_array.md#class-array) | [get\_alternative\_level\_tile\_proxy](#class-tileset-method-get-alternative-level-tile-proxy)(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), alternative\_from: [int](class_int.md#class-int)) |
| [Array](class_array.md#class-array) | [get\_coords\_level\_tile\_proxy](#class-tileset-method-get-coords-level-tile-proxy)(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i)) |
| [int](class_int.md#class-int) | [get\_custom\_data\_layer\_by\_name](#class-tileset-method-get-custom-data-layer-by-name)(layer\_name: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [get\_custom\_data\_layer\_name](#class-tileset-method-get-custom-data-layer-name)(layer\_index: [int](class_int.md#class-int)) const |
| [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type) | [get\_custom\_data\_layer\_type](#class-tileset-method-get-custom-data-layer-type)(layer\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_custom\_data\_layers\_count](#class-tileset-method-get-custom-data-layers-count)() const |
| [bool](class_bool.md#class-bool) | [get\_navigation\_layer\_layer\_value](#class-tileset-method-get-navigation-layer-layer-value)(layer\_index: [int](class_int.md#class-int), layer\_number: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_navigation\_layer\_layers](#class-tileset-method-get-navigation-layer-layers)(layer\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_navigation\_layers\_count](#class-tileset-method-get-navigation-layers-count)() const |
| [int](class_int.md#class-int) | [get\_next\_source\_id](#class-tileset-method-get-next-source-id)() const |
| [int](class_int.md#class-int) | [get\_occlusion\_layer\_light\_mask](#class-tileset-method-get-occlusion-layer-light-mask)(layer\_index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_occlusion\_layer\_sdf\_collision](#class-tileset-method-get-occlusion-layer-sdf-collision)(layer\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_occlusion\_layers\_count](#class-tileset-method-get-occlusion-layers-count)() const |
| [TileMapPattern](class_tilemappattern.md#class-tilemappattern) | [get\_pattern](#class-tileset-method-get-pattern)(index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [get\_patterns\_count](#class-tileset-method-get-patterns-count)() |
| [int](class_int.md#class-int) | [get\_physics\_layer\_collision\_layer](#class-tileset-method-get-physics-layer-collision-layer)(layer\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_physics\_layer\_collision\_mask](#class-tileset-method-get-physics-layer-collision-mask)(layer\_index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_physics\_layer\_collision\_priority](#class-tileset-method-get-physics-layer-collision-priority)(layer\_index: [int](class_int.md#class-int)) const |
| [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) | [get\_physics\_layer\_physics\_material](#class-tileset-method-get-physics-layer-physics-material)(layer\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_physics\_layers\_count](#class-tileset-method-get-physics-layers-count)() const |
| [TileSetSource](class_tilesetsource.md#class-tilesetsource) | [get\_source](#class-tileset-method-get-source)(source\_id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_source\_count](#class-tileset-method-get-source-count)() const |
| [int](class_int.md#class-int) | [get\_source\_id](#class-tileset-method-get-source-id)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_source\_level\_tile\_proxy](#class-tileset-method-get-source-level-tile-proxy)(source\_from: [int](class_int.md#class-int)) |
| [Color](class_color.md#class-color) | [get\_terrain\_color](#class-tileset-method-get-terrain-color)(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_terrain\_name](#class-tileset-method-get-terrain-name)(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int)) const |
| [TerrainMode](#enum-tileset-terrainmode) | [get\_terrain\_set\_mode](#class-tileset-method-get-terrain-set-mode)(terrain\_set: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_terrain\_sets\_count](#class-tileset-method-get-terrain-sets-count)() const |
| [int](class_int.md#class-int) | [get\_terrains\_count](#class-tileset-method-get-terrains-count)(terrain\_set: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_alternative\_level\_tile\_proxy](#class-tileset-method-has-alternative-level-tile-proxy)(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), alternative\_from: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [has\_coords\_level\_tile\_proxy](#class-tileset-method-has-coords-level-tile-proxy)(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i)) |
| [bool](class_bool.md#class-bool) | [has\_custom\_data\_layer\_by\_name](#class-tileset-method-has-custom-data-layer-by-name)(layer\_name: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_source](#class-tileset-method-has-source)(source\_id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_source\_level\_tile\_proxy](#class-tileset-method-has-source-level-tile-proxy)(source\_from: [int](class_int.md#class-int)) |
| [Array](class_array.md#class-array) | [map\_tile\_proxy](#class-tileset-method-map-tile-proxy)(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), alternative\_from: [int](class_int.md#class-int)) const |
| void | [move\_custom\_data\_layer](#class-tileset-method-move-custom-data-layer)(layer\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) |
| void | [move\_navigation\_layer](#class-tileset-method-move-navigation-layer)(layer\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) |
| void | [move\_occlusion\_layer](#class-tileset-method-move-occlusion-layer)(layer\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) |
| void | [move\_physics\_layer](#class-tileset-method-move-physics-layer)(layer\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) |
| void | [move\_terrain](#class-tileset-method-move-terrain)(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) |
| void | [move\_terrain\_set](#class-tileset-method-move-terrain-set)(terrain\_set: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) |
| void | [remove\_alternative\_level\_tile\_proxy](#class-tileset-method-remove-alternative-level-tile-proxy)(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), alternative\_from: [int](class_int.md#class-int)) |
| void | [remove\_coords\_level\_tile\_proxy](#class-tileset-method-remove-coords-level-tile-proxy)(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [remove\_custom\_data\_layer](#class-tileset-method-remove-custom-data-layer)(layer\_index: [int](class_int.md#class-int)) |
| void | [remove\_navigation\_layer](#class-tileset-method-remove-navigation-layer)(layer\_index: [int](class_int.md#class-int)) |
| void | [remove\_occlusion\_layer](#class-tileset-method-remove-occlusion-layer)(layer\_index: [int](class_int.md#class-int)) |
| void | [remove\_pattern](#class-tileset-method-remove-pattern)(index: [int](class_int.md#class-int)) |
| void | [remove\_physics\_layer](#class-tileset-method-remove-physics-layer)(layer\_index: [int](class_int.md#class-int)) |
| void | [remove\_source](#class-tileset-method-remove-source)(source\_id: [int](class_int.md#class-int)) |
| void | [remove\_source\_level\_tile\_proxy](#class-tileset-method-remove-source-level-tile-proxy)(source\_from: [int](class_int.md#class-int)) |
| void | [remove\_terrain](#class-tileset-method-remove-terrain)(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int)) |
| void | [remove\_terrain\_set](#class-tileset-method-remove-terrain-set)(terrain\_set: [int](class_int.md#class-int)) |
| void | [set\_alternative\_level\_tile\_proxy](#class-tileset-method-set-alternative-level-tile-proxy)(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), alternative\_from: [int](class_int.md#class-int), source\_to: [int](class_int.md#class-int), coords\_to: [Vector2i](class_vector2i.md#class-vector2i), alternative\_to: [int](class_int.md#class-int)) |
| void | [set\_coords\_level\_tile\_proxy](#class-tileset-method-set-coords-level-tile-proxy)(p\_source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), source\_to: [int](class_int.md#class-int), coords\_to: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [set\_custom\_data\_layer\_name](#class-tileset-method-set-custom-data-layer-name)(layer\_index: [int](class_int.md#class-int), layer\_name: [String](class_string.md#class-string)) |
| void | [set\_custom\_data\_layer\_type](#class-tileset-method-set-custom-data-layer-type)(layer\_index: [int](class_int.md#class-int), layer\_type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type)) |
| void | [set\_navigation\_layer\_layer\_value](#class-tileset-method-set-navigation-layer-layer-value)(layer\_index: [int](class_int.md#class-int), layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_navigation\_layer\_layers](#class-tileset-method-set-navigation-layer-layers)(layer\_index: [int](class_int.md#class-int), layers: [int](class_int.md#class-int)) |
| void | [set\_occlusion\_layer\_light\_mask](#class-tileset-method-set-occlusion-layer-light-mask)(layer\_index: [int](class_int.md#class-int), light\_mask: [int](class_int.md#class-int)) |
| void | [set\_occlusion\_layer\_sdf\_collision](#class-tileset-method-set-occlusion-layer-sdf-collision)(layer\_index: [int](class_int.md#class-int), sdf\_collision: [bool](class_bool.md#class-bool)) |
| void | [set\_physics\_layer\_collision\_layer](#class-tileset-method-set-physics-layer-collision-layer)(layer\_index: [int](class_int.md#class-int), layer: [int](class_int.md#class-int)) |
| void | [set\_physics\_layer\_collision\_mask](#class-tileset-method-set-physics-layer-collision-mask)(layer\_index: [int](class_int.md#class-int), mask: [int](class_int.md#class-int)) |
| void | [set\_physics\_layer\_collision\_priority](#class-tileset-method-set-physics-layer-collision-priority)(layer\_index: [int](class_int.md#class-int), priority: [float](class_float.md#class-float)) |
| void | [set\_physics\_layer\_physics\_material](#class-tileset-method-set-physics-layer-physics-material)(layer\_index: [int](class_int.md#class-int), physics\_material: [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial)) |
| void | [set\_source\_id](#class-tileset-method-set-source-id)(source\_id: [int](class_int.md#class-int), new\_source\_id: [int](class_int.md#class-int)) |
| void | [set\_source\_level\_tile\_proxy](#class-tileset-method-set-source-level-tile-proxy)(source\_from: [int](class_int.md#class-int), source\_to: [int](class_int.md#class-int)) |
| void | [set\_terrain\_color](#class-tileset-method-set-terrain-color)(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_terrain\_name](#class-tileset-method-set-terrain-name)(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_terrain\_set\_mode](#class-tileset-method-set-terrain-set-mode)(terrain\_set: [int](class_int.md#class-int), mode: [TerrainMode](#enum-tileset-terrainmode)) |

* * *

## Enumerations

enum **TileShape**: [🔗](#enum-tileset-tileshape)

[TileShape](#enum-tileset-tileshape) **TILE\_SHAPE\_SQUARE** = `0`

Rectangular tile shape.

[TileShape](#enum-tileset-tileshape) **TILE\_SHAPE\_ISOMETRIC** = `1`

Diamond tile shape (for isometric look).

**Note:** Isometric **TileSet** works best if all sibling [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer) s and their parent inheriting from [Node2D](class_node2d.md#class-node2d) have Y-sort enabled.

[TileShape](#enum-tileset-tileshape) **TILE\_SHAPE\_HALF\_OFFSET\_SQUARE** = `2`

Rectangular tile shape with one row/column out of two offset by half a tile.

[TileShape](#enum-tileset-tileshape) **TILE\_SHAPE\_HEXAGON** = `3`

Hexagonal tile shape.

* * *

enum **TileLayout**: [🔗](#enum-tileset-tilelayout)

[TileLayout](#enum-tileset-tilelayout) **TILE\_LAYOUT\_STACKED** = `0`

Tile coordinates layout where both axis stay consistent with their respective local horizontal and vertical axis.

[TileLayout](#enum-tileset-tilelayout) **TILE\_LAYOUT\_STACKED\_OFFSET** = `1`

Same as [TILE\_LAYOUT\_STACKED](#class-tileset-constant-tile-layout-stacked), but the first half-offset is negative instead of positive.

[TileLayout](#enum-tileset-tilelayout) **TILE\_LAYOUT\_STAIRS\_RIGHT** = `2`

Tile coordinates layout where the horizontal axis stay horizontal, and the vertical one goes down-right.

[TileLayout](#enum-tileset-tilelayout) **TILE\_LAYOUT\_STAIRS\_DOWN** = `3`

Tile coordinates layout where the vertical axis stay vertical, and the horizontal one goes down-right.

[TileLayout](#enum-tileset-tilelayout) **TILE\_LAYOUT\_DIAMOND\_RIGHT** = `4`

Tile coordinates layout where the horizontal axis goes up-right, and the vertical one goes down-right.

[TileLayout](#enum-tileset-tilelayout) **TILE\_LAYOUT\_DIAMOND\_DOWN** = `5`

Tile coordinates layout where the horizontal axis goes down-right, and the vertical one goes down-left.

* * *

enum **TileOffsetAxis**: [🔗](#enum-tileset-tileoffsetaxis)

[TileOffsetAxis](#enum-tileset-tileoffsetaxis) **TILE\_OFFSET\_AXIS\_HORIZONTAL** = `0`

Horizontal half-offset.

[TileOffsetAxis](#enum-tileset-tileoffsetaxis) **TILE\_OFFSET\_AXIS\_VERTICAL** = `1`

Vertical half-offset.

* * *

enum **CellNeighbor**: [🔗](#enum-tileset-cellneighbor)

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_RIGHT\_SIDE** = `0`

Neighbor on the right side.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_RIGHT\_CORNER** = `1`

Neighbor in the right corner.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_BOTTOM\_RIGHT\_SIDE** = `2`

Neighbor on the bottom right side.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_BOTTOM\_RIGHT\_CORNER** = `3`

Neighbor in the bottom right corner.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_BOTTOM\_SIDE** = `4`

Neighbor on the bottom side.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_BOTTOM\_CORNER** = `5`

Neighbor in the bottom corner.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_BOTTOM\_LEFT\_SIDE** = `6`

Neighbor on the bottom left side.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_BOTTOM\_LEFT\_CORNER** = `7`

Neighbor in the bottom left corner.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_LEFT\_SIDE** = `8`

Neighbor on the left side.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_LEFT\_CORNER** = `9`

Neighbor in the left corner.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_TOP\_LEFT\_SIDE** = `10`

Neighbor on the top left side.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_TOP\_LEFT\_CORNER** = `11`

Neighbor in the top left corner.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_TOP\_SIDE** = `12`

Neighbor on the top side.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_TOP\_CORNER** = `13`

Neighbor in the top corner.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_TOP\_RIGHT\_SIDE** = `14`

Neighbor on the top right side.

[CellNeighbor](#enum-tileset-cellneighbor) **CELL\_NEIGHBOR\_TOP\_RIGHT\_CORNER** = `15`

Neighbor in the top right corner.

* * *

enum **TerrainMode**: [🔗](#enum-tileset-terrainmode)

[TerrainMode](#enum-tileset-terrainmode) **TERRAIN\_MODE\_MATCH\_CORNERS\_AND\_SIDES** = `0`

Requires both corners and side to match with neighboring tiles' terrains.

[TerrainMode](#enum-tileset-terrainmode) **TERRAIN\_MODE\_MATCH\_CORNERS** = `1`

Requires corners to match with neighboring tiles' terrains.

[TerrainMode](#enum-tileset-terrainmode) **TERRAIN\_MODE\_MATCH\_SIDES** = `2`

Requires sides to match with neighboring tiles' terrains.

* * *

## Property Descriptions

[TileLayout](#enum-tileset-tilelayout) **tile\_layout** = `0` [🔗](#class-tileset-property-tile-layout)

- void **set\_tile\_layout**(value: [TileLayout](#enum-tileset-tilelayout))

- [TileLayout](#enum-tileset-tilelayout) **get\_tile\_layout**()


For all half-offset shapes (Isometric, Hexagonal and Half-Offset square), changes the way tiles are indexed in the [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer) grid.

* * *

[TileOffsetAxis](#enum-tileset-tileoffsetaxis) **tile\_offset\_axis** = `0` [🔗](#class-tileset-property-tile-offset-axis)

- void **set\_tile\_offset\_axis**(value: [TileOffsetAxis](#enum-tileset-tileoffsetaxis))

- [TileOffsetAxis](#enum-tileset-tileoffsetaxis) **get\_tile\_offset\_axis**()


For all half-offset shapes (Isometric, Hexagonal and Half-Offset square), determines the offset axis.

* * *

[TileShape](#enum-tileset-tileshape) **tile\_shape** = `0` [🔗](#class-tileset-property-tile-shape)

- void **set\_tile\_shape**(value: [TileShape](#enum-tileset-tileshape))

- [TileShape](#enum-tileset-tileshape) **get\_tile\_shape**()


The tile shape.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **tile\_size** = `Vector2i(16, 16)` [🔗](#class-tileset-property-tile-size)

- void **set\_tile\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_tile\_size**()


The tile size, in pixels. For all tile shapes, this size corresponds to the encompassing rectangle of the tile shape. This is thus the minimal cell size required in an atlas.

* * *

[bool](class_bool.md#class-bool) **uv\_clipping** = `false` [🔗](#class-tileset-property-uv-clipping)

- void **set\_uv\_clipping**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_uv\_clipping**()


Enables/Disable uv clipping when rendering the tiles.

* * *

## Method Descriptions

void **add\_custom\_data\_layer**(to\_position: [int](class_int.md#class-int) = -1) [🔗](#class-tileset-method-add-custom-data-layer)

Adds a custom data layer to the TileSet at the given position `to_position` in the array. If `to_position` is -1, adds it at the end of the array.

Custom data layers allow assigning custom properties to atlas tiles.

* * *

void **add\_navigation\_layer**(to\_position: [int](class_int.md#class-int) = -1) [🔗](#class-tileset-method-add-navigation-layer)

Adds a navigation layer to the TileSet at the given position `to_position` in the array. If `to_position` is -1, adds it at the end of the array.

Navigation layers allow assigning a navigable area to atlas tiles.

* * *

void **add\_occlusion\_layer**(to\_position: [int](class_int.md#class-int) = -1) [🔗](#class-tileset-method-add-occlusion-layer)

Adds an occlusion layer to the TileSet at the given position `to_position` in the array. If `to_position` is -1, adds it at the end of the array.

Occlusion layers allow assigning occlusion polygons to atlas tiles.

* * *

[int](class_int.md#class-int) **add\_pattern**(pattern: [TileMapPattern](class_tilemappattern.md#class-tilemappattern), index: [int](class_int.md#class-int) = -1) [🔗](#class-tileset-method-add-pattern)

Adds a [TileMapPattern](class_tilemappattern.md#class-tilemappattern) to be stored in the TileSet resource. If provided, insert it at the given `index`.

* * *

void **add\_physics\_layer**(to\_position: [int](class_int.md#class-int) = -1) [🔗](#class-tileset-method-add-physics-layer)

Adds a physics layer to the TileSet at the given position `to_position` in the array. If `to_position` is -1, adds it at the end of the array.

Physics layers allow assigning collision polygons to atlas tiles.

* * *

[int](class_int.md#class-int) **add\_source**(source: [TileSetSource](class_tilesetsource.md#class-tilesetsource), atlas\_source\_id\_override: [int](class_int.md#class-int) = -1) [🔗](#class-tileset-method-add-source)

Adds a [TileSetSource](class_tilesetsource.md#class-tilesetsource) to the TileSet. If `atlas_source_id_override` is not -1, also set its source ID. Otherwise, a unique identifier is automatically generated.

The function returns the added source ID or -1 if the source could not be added.

**Warning:** A source cannot belong to two TileSets at the same time. If the added source was attached to another **TileSet**, it will be removed from that one.

* * *

void **add\_terrain**(terrain\_set: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int) = -1) [🔗](#class-tileset-method-add-terrain)

Adds a new terrain to the given terrain set `terrain_set` at the given position `to_position` in the array. If `to_position` is -1, adds it at the end of the array.

* * *

void **add\_terrain\_set**(to\_position: [int](class_int.md#class-int) = -1) [🔗](#class-tileset-method-add-terrain-set)

Adds a new terrain set at the given position `to_position` in the array. If `to_position` is -1, adds it at the end of the array.

* * *

void **cleanup\_invalid\_tile\_proxies**() [🔗](#class-tileset-method-cleanup-invalid-tile-proxies)

Clears tile proxies pointing to invalid tiles.

* * *

void **clear\_tile\_proxies**() [🔗](#class-tileset-method-clear-tile-proxies)

Clears all tile proxies.

* * *

[Array](class_array.md#class-array) **get\_alternative\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), alternative\_from: [int](class_int.md#class-int)) [🔗](#class-tileset-method-get-alternative-level-tile-proxy)

Returns the alternative-level proxy for the given identifiers. The returned array contains the three proxie's target identifiers (source ID, atlas coords ID and alternative tile ID).

If the TileSet has no proxy for the given identifiers, returns an empty Array.

* * *

[Array](class_array.md#class-array) **get\_coords\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tileset-method-get-coords-level-tile-proxy)

Returns the coordinate-level proxy for the given identifiers. The returned array contains the two target identifiers of the proxy (source ID and atlas coordinates ID).

If the TileSet has no proxy for the given identifiers, returns an empty Array.

* * *

[int](class_int.md#class-int) **get\_custom\_data\_layer\_by\_name**(layer\_name: [String](class_string.md#class-string)) const [🔗](#class-tileset-method-get-custom-data-layer-by-name)

Returns the index of the custom data layer identified by the given name.

* * *

[String](class_string.md#class-string) **get\_custom\_data\_layer\_name**(layer\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-custom-data-layer-name)

Returns the name of the custom data layer identified by the given index.

* * *

[Variant.Type](class_@globalscope.md#enum-globalscope-variant-type) **get\_custom\_data\_layer\_type**(layer\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-custom-data-layer-type)

Returns the type of the custom data layer identified by the given index.

* * *

[int](class_int.md#class-int) **get\_custom\_data\_layers\_count**() const [🔗](#class-tileset-method-get-custom-data-layers-count)

Returns the custom data layers count.

* * *

[bool](class_bool.md#class-bool) **get\_navigation\_layer\_layer\_value**(layer\_index: [int](class_int.md#class-int), layer\_number: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-navigation-layer-layer-value)

Returns whether or not the specified navigation layer of the TileSet navigation data layer identified by the given `layer_index` is enabled, given a navigation\_layers `layer_number` between 1 and 32.

* * *

[int](class_int.md#class-int) **get\_navigation\_layer\_layers**(layer\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-navigation-layer-layers)

Returns the navigation layers (as in the Navigation server) of the given TileSet navigation layer.

* * *

[int](class_int.md#class-int) **get\_navigation\_layers\_count**() const [🔗](#class-tileset-method-get-navigation-layers-count)

Returns the navigation layers count.

* * *

[int](class_int.md#class-int) **get\_next\_source\_id**() const [🔗](#class-tileset-method-get-next-source-id)

Returns a new unused source ID. This generated ID is the same that a call to [add\_source()](#class-tileset-method-add-source) would return.

* * *

[int](class_int.md#class-int) **get\_occlusion\_layer\_light\_mask**(layer\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-occlusion-layer-light-mask)

Returns the light mask of the occlusion layer.

* * *

[bool](class_bool.md#class-bool) **get\_occlusion\_layer\_sdf\_collision**(layer\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-occlusion-layer-sdf-collision)

Returns if the occluders from this layer use `sdf_collision`.

* * *

[int](class_int.md#class-int) **get\_occlusion\_layers\_count**() const [🔗](#class-tileset-method-get-occlusion-layers-count)

Returns the occlusion layers count.

* * *

[TileMapPattern](class_tilemappattern.md#class-tilemappattern) **get\_pattern**(index: [int](class_int.md#class-int) = -1) [🔗](#class-tileset-method-get-pattern)

Returns the [TileMapPattern](class_tilemappattern.md#class-tilemappattern) at the given `index`.

* * *

[int](class_int.md#class-int) **get\_patterns\_count**() [🔗](#class-tileset-method-get-patterns-count)

Returns the number of [TileMapPattern](class_tilemappattern.md#class-tilemappattern) this tile set handles.

* * *

[int](class_int.md#class-int) **get\_physics\_layer\_collision\_layer**(layer\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-physics-layer-collision-layer)

Returns the collision layer (as in the physics server) bodies on the given TileSet's physics layer are in.

* * *

[int](class_int.md#class-int) **get\_physics\_layer\_collision\_mask**(layer\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-physics-layer-collision-mask)

Returns the collision mask of bodies on the given TileSet's physics layer.

* * *

[float](class_float.md#class-float) **get\_physics\_layer\_collision\_priority**(layer\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-physics-layer-collision-priority)

Returns the collision priority of bodies on the given TileSet's physics layer.

* * *

[PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) **get\_physics\_layer\_physics\_material**(layer\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-physics-layer-physics-material)

Returns the physics material of bodies on the given TileSet's physics layer.

* * *

[int](class_int.md#class-int) **get\_physics\_layers\_count**() const [🔗](#class-tileset-method-get-physics-layers-count)

Returns the physics layers count.

* * *

[TileSetSource](class_tilesetsource.md#class-tilesetsource) **get\_source**(source\_id: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-source)

Returns the [TileSetSource](class_tilesetsource.md#class-tilesetsource) with ID `source_id`.

* * *

[int](class_int.md#class-int) **get\_source\_count**() const [🔗](#class-tileset-method-get-source-count)

Returns the number of [TileSetSource](class_tilesetsource.md#class-tilesetsource) in this TileSet.

* * *

[int](class_int.md#class-int) **get\_source\_id**(index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-source-id)

Returns the source ID for source with index `index`.

* * *

[int](class_int.md#class-int) **get\_source\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int)) [🔗](#class-tileset-method-get-source-level-tile-proxy)

Returns the source-level proxy for the given source identifier.

If the TileSet has no proxy for the given identifier, returns -1.

* * *

[Color](class_color.md#class-color) **get\_terrain\_color**(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-terrain-color)

Returns a terrain's color.

* * *

[String](class_string.md#class-string) **get\_terrain\_name**(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-terrain-name)

Returns a terrain's name.

* * *

[TerrainMode](#enum-tileset-terrainmode) **get\_terrain\_set\_mode**(terrain\_set: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-terrain-set-mode)

Returns a terrain set mode.

* * *

[int](class_int.md#class-int) **get\_terrain\_sets\_count**() const [🔗](#class-tileset-method-get-terrain-sets-count)

Returns the terrain sets count.

* * *

[int](class_int.md#class-int) **get\_terrains\_count**(terrain\_set: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-get-terrains-count)

Returns the number of terrains in the given terrain set.

* * *

[bool](class_bool.md#class-bool) **has\_alternative\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), alternative\_from: [int](class_int.md#class-int)) [🔗](#class-tileset-method-has-alternative-level-tile-proxy)

Returns if there is an alternative-level proxy for the given identifiers.

* * *

[bool](class_bool.md#class-bool) **has\_coords\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tileset-method-has-coords-level-tile-proxy)

Returns if there is a coodinates-level proxy for the given identifiers.

* * *

[bool](class_bool.md#class-bool) **has\_custom\_data\_layer\_by\_name**(layer\_name: [String](class_string.md#class-string)) const [🔗](#class-tileset-method-has-custom-data-layer-by-name)

Returns if there is a custom data layer named `layer_name`.

* * *

[bool](class_bool.md#class-bool) **has\_source**(source\_id: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-has-source)

Returns if this TileSet has a source for the given source ID.

* * *

[bool](class_bool.md#class-bool) **has\_source\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int)) [🔗](#class-tileset-method-has-source-level-tile-proxy)

Returns if there is a source-level proxy for the given source ID.

* * *

[Array](class_array.md#class-array) **map\_tile\_proxy**(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), alternative\_from: [int](class_int.md#class-int)) const [🔗](#class-tileset-method-map-tile-proxy)

According to the configured proxies, maps the provided identifiers to a new set of identifiers. The source ID, atlas coordinates ID and alternative tile ID are returned as a 3 elements Array.

This function first look for matching alternative-level proxies, then coordinates-level proxies, then source-level proxies.

If no proxy corresponding to provided identifiers are found, returns the same values the ones used as arguments.

* * *

void **move\_custom\_data\_layer**(layer\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) [🔗](#class-tileset-method-move-custom-data-layer)

Moves the custom data layer at index `layer_index` to the given position `to_position` in the array. Also updates the atlas tiles accordingly.

* * *

void **move\_navigation\_layer**(layer\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) [🔗](#class-tileset-method-move-navigation-layer)

Moves the navigation layer at index `layer_index` to the given position `to_position` in the array. Also updates the atlas tiles accordingly.

* * *

void **move\_occlusion\_layer**(layer\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) [🔗](#class-tileset-method-move-occlusion-layer)

Moves the occlusion layer at index `layer_index` to the given position `to_position` in the array. Also updates the atlas tiles accordingly.

* * *

void **move\_physics\_layer**(layer\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) [🔗](#class-tileset-method-move-physics-layer)

Moves the physics layer at index `layer_index` to the given position `to_position` in the array. Also updates the atlas tiles accordingly.

* * *

void **move\_terrain**(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) [🔗](#class-tileset-method-move-terrain)

Moves the terrain at index `terrain_index` for terrain set `terrain_set` to the given position `to_position` in the array. Also updates the atlas tiles accordingly.

* * *

void **move\_terrain\_set**(terrain\_set: [int](class_int.md#class-int), to\_position: [int](class_int.md#class-int)) [🔗](#class-tileset-method-move-terrain-set)

Moves the terrain set at index `terrain_set` to the given position `to_position` in the array. Also updates the atlas tiles accordingly.

* * *

void **remove\_alternative\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), alternative\_from: [int](class_int.md#class-int)) [🔗](#class-tileset-method-remove-alternative-level-tile-proxy)

Removes an alternative-level proxy for the given identifiers.

* * *

void **remove\_coords\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tileset-method-remove-coords-level-tile-proxy)

Removes a coordinates-level proxy for the given identifiers.

* * *

void **remove\_custom\_data\_layer**(layer\_index: [int](class_int.md#class-int)) [🔗](#class-tileset-method-remove-custom-data-layer)

Removes the custom data layer at index `layer_index`. Also updates the atlas tiles accordingly.

* * *

void **remove\_navigation\_layer**(layer\_index: [int](class_int.md#class-int)) [🔗](#class-tileset-method-remove-navigation-layer)

Removes the navigation layer at index `layer_index`. Also updates the atlas tiles accordingly.

* * *

void **remove\_occlusion\_layer**(layer\_index: [int](class_int.md#class-int)) [🔗](#class-tileset-method-remove-occlusion-layer)

Removes the occlusion layer at index `layer_index`. Also updates the atlas tiles accordingly.

* * *

void **remove\_pattern**(index: [int](class_int.md#class-int)) [🔗](#class-tileset-method-remove-pattern)

Remove the [TileMapPattern](class_tilemappattern.md#class-tilemappattern) at the given index.

* * *

void **remove\_physics\_layer**(layer\_index: [int](class_int.md#class-int)) [🔗](#class-tileset-method-remove-physics-layer)

Removes the physics layer at index `layer_index`. Also updates the atlas tiles accordingly.

* * *

void **remove\_source**(source\_id: [int](class_int.md#class-int)) [🔗](#class-tileset-method-remove-source)

Removes the source with the given source ID.

* * *

void **remove\_source\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int)) [🔗](#class-tileset-method-remove-source-level-tile-proxy)

Removes a source-level tile proxy.

* * *

void **remove\_terrain**(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int)) [🔗](#class-tileset-method-remove-terrain)

Removes the terrain at index `terrain_index` in the given terrain set `terrain_set`. Also updates the atlas tiles accordingly.

* * *

void **remove\_terrain\_set**(terrain\_set: [int](class_int.md#class-int)) [🔗](#class-tileset-method-remove-terrain-set)

Removes the terrain set at index `terrain_set`. Also updates the atlas tiles accordingly.

* * *

void **set\_alternative\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), alternative\_from: [int](class_int.md#class-int), source\_to: [int](class_int.md#class-int), coords\_to: [Vector2i](class_vector2i.md#class-vector2i), alternative\_to: [int](class_int.md#class-int)) [🔗](#class-tileset-method-set-alternative-level-tile-proxy)

Create an alternative-level proxy for the given identifiers. A proxy will map set of tile identifiers to another set of identifiers.

Proxied tiles can be automatically replaced in TileMapLayer nodes using the editor.

* * *

void **set\_coords\_level\_tile\_proxy**(p\_source\_from: [int](class_int.md#class-int), coords\_from: [Vector2i](class_vector2i.md#class-vector2i), source\_to: [int](class_int.md#class-int), coords\_to: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tileset-method-set-coords-level-tile-proxy)

Creates a coordinates-level proxy for the given identifiers. A proxy will map set of tile identifiers to another set of identifiers. The alternative tile ID is kept the same when using coordinates-level proxies.

Proxied tiles can be automatically replaced in TileMapLayer nodes using the editor.

* * *

void **set\_custom\_data\_layer\_name**(layer\_index: [int](class_int.md#class-int), layer\_name: [String](class_string.md#class-string)) [🔗](#class-tileset-method-set-custom-data-layer-name)

Sets the name of the custom data layer identified by the given index. Names are identifiers of the layer therefore if the name is already taken it will fail and raise an error.

* * *

void **set\_custom\_data\_layer\_type**(layer\_index: [int](class_int.md#class-int), layer\_type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type)) [🔗](#class-tileset-method-set-custom-data-layer-type)

Sets the type of the custom data layer identified by the given index.

* * *

void **set\_navigation\_layer\_layer\_value**(layer\_index: [int](class_int.md#class-int), layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-tileset-method-set-navigation-layer-layer-value)

Based on `value`, enables or disables the specified navigation layer of the TileSet navigation data layer identified by the given `layer_index`, given a navigation\_layers `layer_number` between 1 and 32.

* * *

void **set\_navigation\_layer\_layers**(layer\_index: [int](class_int.md#class-int), layers: [int](class_int.md#class-int)) [🔗](#class-tileset-method-set-navigation-layer-layers)

Sets the navigation layers (as in the navigation server) for navigation regions in the given TileSet navigation layer.

* * *

void **set\_occlusion\_layer\_light\_mask**(layer\_index: [int](class_int.md#class-int), light\_mask: [int](class_int.md#class-int)) [🔗](#class-tileset-method-set-occlusion-layer-light-mask)

Sets the occlusion layer (as in the rendering server) for occluders in the given TileSet occlusion layer.

* * *

void **set\_occlusion\_layer\_sdf\_collision**(layer\_index: [int](class_int.md#class-int), sdf\_collision: [bool](class_bool.md#class-bool)) [🔗](#class-tileset-method-set-occlusion-layer-sdf-collision)

Enables or disables SDF collision for occluders in the given TileSet occlusion layer.

* * *

void **set\_physics\_layer\_collision\_layer**(layer\_index: [int](class_int.md#class-int), layer: [int](class_int.md#class-int)) [🔗](#class-tileset-method-set-physics-layer-collision-layer)

Sets the collision layer (as in the physics server) for bodies in the given TileSet physics layer.

* * *

void **set\_physics\_layer\_collision\_mask**(layer\_index: [int](class_int.md#class-int), mask: [int](class_int.md#class-int)) [🔗](#class-tileset-method-set-physics-layer-collision-mask)

Sets the collision mask for bodies in the given TileSet physics layer.

* * *

void **set\_physics\_layer\_collision\_priority**(layer\_index: [int](class_int.md#class-int), priority: [float](class_float.md#class-float)) [🔗](#class-tileset-method-set-physics-layer-collision-priority)

Sets the collision priority for bodies in the given TileSet physics layer.

* * *

void **set\_physics\_layer\_physics\_material**(layer\_index: [int](class_int.md#class-int), physics\_material: [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial)) [🔗](#class-tileset-method-set-physics-layer-physics-material)

Sets the physics material for bodies in the given TileSet physics layer.

* * *

void **set\_source\_id**(source\_id: [int](class_int.md#class-int), new\_source\_id: [int](class_int.md#class-int)) [🔗](#class-tileset-method-set-source-id)

Changes a source's ID.

* * *

void **set\_source\_level\_tile\_proxy**(source\_from: [int](class_int.md#class-int), source\_to: [int](class_int.md#class-int)) [🔗](#class-tileset-method-set-source-level-tile-proxy)

Creates a source-level proxy for the given source ID. A proxy will map set of tile identifiers to another set of identifiers. Both the atlas coordinates ID and the alternative tile ID are kept the same when using source-level proxies.

Proxied tiles can be automatically replaced in TileMapLayer nodes using the editor.

* * *

void **set\_terrain\_color**(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-tileset-method-set-terrain-color)

Sets a terrain's color. This color is used for identifying the different terrains in the TileSet editor.

* * *

void **set\_terrain\_name**(terrain\_set: [int](class_int.md#class-int), terrain\_index: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-tileset-method-set-terrain-name)

Sets a terrain's name.

* * *

void **set\_terrain\_set\_mode**(terrain\_set: [int](class_int.md#class-int), mode: [TerrainMode](#enum-tileset-terrainmode)) [🔗](#class-tileset-method-set-terrain-set-mode)

Sets a terrain mode. Each mode determines which bits of a tile shape is used to match the neighboring tiles' terrains.

[Previous](class_tilemappattern.md "TileMapPattern") [Next](class_tilesetatlassource.md "TileSetAtlasSource")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tilemappattern.md "TileMapPattern") [Next](class_tilesetatlassource.md "TileSetAtlasSource")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).