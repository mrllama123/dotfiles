---
title: TileData — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tiledata.html
crawled_at: "2026-08-13T10:25:56+12:00"
content_hash: b30f3252636529234b55b5186a500c93068f960e0c8e2cdaf9125b4b19c9194f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TileData

* * *

# TileData

**Inherits:** [Object](class_object.md#class-object)

Settings for a single tile in a [TileSet](class_tileset.md#class-tileset).

## Description

**TileData** object represents a single tile in a [TileSet](class_tileset.md#class-tileset). It is usually edited using the tileset editor, but it can be modified at runtime using [TileMapLayer.\_tile\_data\_runtime\_update()](class_tilemaplayer.md#class-tilemaplayer-private-method-tile-data-runtime-update).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [flip\_h](#class-tiledata-property-flip-h) | `false` |
| [bool](class_bool.md#class-bool) | [flip\_v](#class-tiledata-property-flip-v) | `false` |
| [Material](class_material.md#class-material) | [material](#class-tiledata-property-material) |  |
| [Color](class_color.md#class-color) | [modulate](#class-tiledata-property-modulate) | `Color(1, 1, 1, 1)` |
| [float](class_float.md#class-float) | [probability](#class-tiledata-property-probability) | `1.0` |
| [int](class_int.md#class-int) | [terrain](#class-tiledata-property-terrain) | `-1` |
| [int](class_int.md#class-int) | [terrain\_set](#class-tiledata-property-terrain-set) | `-1` |
| [Vector2i](class_vector2i.md#class-vector2i) | [texture\_origin](#class-tiledata-property-texture-origin) | `Vector2i(0, 0)` |
| [bool](class_bool.md#class-bool) | [transpose](#class-tiledata-property-transpose) | `false` |
| [int](class_int.md#class-int) | [y\_sort\_origin](#class-tiledata-property-y-sort-origin) | `0` |
| [int](class_int.md#class-int) | [z\_index](#class-tiledata-property-z-index) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_collision\_polygon](#class-tiledata-method-add-collision-polygon)(layer\_id: [int](class_int.md#class-int)) |
| void | [add\_occluder\_polygon](#class-tiledata-method-add-occluder-polygon)(layer\_id: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [get\_collision\_polygon\_one\_way\_margin](#class-tiledata-method-get-collision-polygon-one-way-margin)(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int)) const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_collision\_polygon\_points](#class-tiledata-method-get-collision-polygon-points)(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_collision\_polygons\_count](#class-tiledata-method-get-collision-polygons-count)(layer\_id: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_constant\_angular\_velocity](#class-tiledata-method-get-constant-angular-velocity)(layer\_id: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_constant\_linear\_velocity](#class-tiledata-method-get-constant-linear-velocity)(layer\_id: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_custom\_data](#class-tiledata-method-get-custom-data)(layer\_name: [String](class_string.md#class-string)) const |
| [Variant](class_variant.md#class-variant) | [get\_custom\_data\_by\_layer\_id](#class-tiledata-method-get-custom-data-by-layer-id)(layer\_id: [int](class_int.md#class-int)) const |
| [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon) | [get\_navigation\_polygon](#class-tiledata-method-get-navigation-polygon)(layer\_id: [int](class_int.md#class-int), flip\_h: [bool](class_bool.md#class-bool) = false, flip\_v: [bool](class_bool.md#class-bool) = false, transpose: [bool](class_bool.md#class-bool) = false) const |
| [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d) | [get\_occluder](#class-tiledata-method-get-occluder)(layer\_id: [int](class_int.md#class-int), flip\_h: [bool](class_bool.md#class-bool) = false, flip\_v: [bool](class_bool.md#class-bool) = false, transpose: [bool](class_bool.md#class-bool) = false) const |
| [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d) | [get\_occluder\_polygon](#class-tiledata-method-get-occluder-polygon)(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int), flip\_h: [bool](class_bool.md#class-bool) = false, flip\_v: [bool](class_bool.md#class-bool) = false, transpose: [bool](class_bool.md#class-bool) = false) const |
| [int](class_int.md#class-int) | [get\_occluder\_polygons\_count](#class-tiledata-method-get-occluder-polygons-count)(layer\_id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_terrain\_peering\_bit](#class-tiledata-method-get-terrain-peering-bit)(peering\_bit: [CellNeighbor](class_tileset.md#enum-tileset-cellneighbor)) const |
| [bool](class_bool.md#class-bool) | [has\_custom\_data](#class-tiledata-method-has-custom-data)(layer\_name: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_collision\_polygon\_one\_way](#class-tiledata-method-is-collision-polygon-one-way)(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_valid\_terrain\_peering\_bit](#class-tiledata-method-is-valid-terrain-peering-bit)(peering\_bit: [CellNeighbor](class_tileset.md#enum-tileset-cellneighbor)) const |
| void | [remove\_collision\_polygon](#class-tiledata-method-remove-collision-polygon)(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int)) |
| void | [remove\_occluder\_polygon](#class-tiledata-method-remove-occluder-polygon)(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int)) |
| void | [set\_collision\_polygon\_one\_way](#class-tiledata-method-set-collision-polygon-one-way)(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int), one\_way: [bool](class_bool.md#class-bool)) |
| void | [set\_collision\_polygon\_one\_way\_margin](#class-tiledata-method-set-collision-polygon-one-way-margin)(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int), one\_way\_margin: [float](class_float.md#class-float)) |
| void | [set\_collision\_polygon\_points](#class-tiledata-method-set-collision-polygon-points)(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int), polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| void | [set\_collision\_polygons\_count](#class-tiledata-method-set-collision-polygons-count)(layer\_id: [int](class_int.md#class-int), polygons\_count: [int](class_int.md#class-int)) |
| void | [set\_constant\_angular\_velocity](#class-tiledata-method-set-constant-angular-velocity)(layer\_id: [int](class_int.md#class-int), velocity: [float](class_float.md#class-float)) |
| void | [set\_constant\_linear\_velocity](#class-tiledata-method-set-constant-linear-velocity)(layer\_id: [int](class_int.md#class-int), velocity: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_custom\_data](#class-tiledata-method-set-custom-data)(layer\_name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) |
| void | [set\_custom\_data\_by\_layer\_id](#class-tiledata-method-set-custom-data-by-layer-id)(layer\_id: [int](class_int.md#class-int), value: [Variant](class_variant.md#class-variant)) |
| void | [set\_navigation\_polygon](#class-tiledata-method-set-navigation-polygon)(layer\_id: [int](class_int.md#class-int), navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon)) |
| void | [set\_occluder](#class-tiledata-method-set-occluder)(layer\_id: [int](class_int.md#class-int), occluder\_polygon: [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d)) |
| void | [set\_occluder\_polygon](#class-tiledata-method-set-occluder-polygon)(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int), polygon: [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d)) |
| void | [set\_occluder\_polygons\_count](#class-tiledata-method-set-occluder-polygons-count)(layer\_id: [int](class_int.md#class-int), polygons\_count: [int](class_int.md#class-int)) |
| void | [set\_terrain\_peering\_bit](#class-tiledata-method-set-terrain-peering-bit)(peering\_bit: [CellNeighbor](class_tileset.md#enum-tileset-cellneighbor), terrain: [int](class_int.md#class-int)) |

* * *

## Signals

**changed**() [🔗](#class-tiledata-signal-changed)

Emitted when any of the properties are changed.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **flip\_h** = `false` [🔗](#class-tiledata-property-flip-h)

- void **set\_flip\_h**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flip\_h**()


If `true`, the tile will have its texture flipped horizontally.

* * *

[bool](class_bool.md#class-bool) **flip\_v** = `false` [🔗](#class-tiledata-property-flip-v)

- void **set\_flip\_v**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flip\_v**()


If `true`, the tile will have its texture flipped vertically.

* * *

[Material](class_material.md#class-material) **material** [🔗](#class-tiledata-property-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


The [Material](class_material.md#class-material) to use for this **TileData**. This can be a [CanvasItemMaterial](class_canvasitemmaterial.md#class-canvasitemmaterial) to use the default shader, or a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) to use a custom shader.

* * *

[Color](class_color.md#class-color) **modulate** = `Color(1, 1, 1, 1)` [🔗](#class-tiledata-property-modulate)

- void **set\_modulate**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_modulate**()


Color modulation of the tile.

* * *

[float](class_float.md#class-float) **probability** = `1.0` [🔗](#class-tiledata-property-probability)

- void **set\_probability**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_probability**()


Relative probability of this tile being selected when drawing a pattern of random tiles.

* * *

[int](class_int.md#class-int) **terrain** = `-1` [🔗](#class-tiledata-property-terrain)

- void **set\_terrain**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_terrain**()


ID of the terrain from the terrain set that the tile uses.

* * *

[int](class_int.md#class-int) **terrain\_set** = `-1` [🔗](#class-tiledata-property-terrain-set)

- void **set\_terrain\_set**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_terrain\_set**()


ID of the terrain set that the tile uses.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **texture\_origin** = `Vector2i(0, 0)` [🔗](#class-tiledata-property-texture-origin)

- void **set\_texture\_origin**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_texture\_origin**()


Offsets the position of where the tile is drawn.

* * *

[bool](class_bool.md#class-bool) **transpose** = `false` [🔗](#class-tiledata-property-transpose)

- void **set\_transpose**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_transpose**()


If `true`, the tile will display transposed, i.e. with horizontal and vertical texture UVs swapped.

* * *

[int](class_int.md#class-int) **y\_sort\_origin** = `0` [🔗](#class-tiledata-property-y-sort-origin)

- void **set\_y\_sort\_origin**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_y\_sort\_origin**()


Vertical point of the tile used for determining y-sorted order.

* * *

[int](class_int.md#class-int) **z\_index** = `0` [🔗](#class-tiledata-property-z-index)

- void **set\_z\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_z\_index**()


Ordering index of this tile, relative to [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer).

* * *

## Method Descriptions

void **add\_collision\_polygon**(layer\_id: [int](class_int.md#class-int)) [🔗](#class-tiledata-method-add-collision-polygon)

Adds a collision polygon to the tile on the given TileSet physics layer.

* * *

void **add\_occluder\_polygon**(layer\_id: [int](class_int.md#class-int)) [🔗](#class-tiledata-method-add-occluder-polygon)

Adds an occlusion polygon to the tile on the TileSet occlusion layer with index `layer_id`.

* * *

[float](class_float.md#class-float) **get\_collision\_polygon\_one\_way\_margin**(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int)) const [🔗](#class-tiledata-method-get-collision-polygon-one-way-margin)

Returns the one-way margin (for one-way platforms) of the polygon at index `polygon_index` for TileSet physics layer with index `layer_id`.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_collision\_polygon\_points**(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int)) const [🔗](#class-tiledata-method-get-collision-polygon-points)

Returns the points of the polygon at index `polygon_index` for TileSet physics layer with index `layer_id`.

* * *

[int](class_int.md#class-int) **get\_collision\_polygons\_count**(layer\_id: [int](class_int.md#class-int)) const [🔗](#class-tiledata-method-get-collision-polygons-count)

Returns how many polygons the tile has for TileSet physics layer with index `layer_id`.

* * *

[float](class_float.md#class-float) **get\_constant\_angular\_velocity**(layer\_id: [int](class_int.md#class-int)) const [🔗](#class-tiledata-method-get-constant-angular-velocity)

Returns the constant angular velocity applied to objects colliding with this tile.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_constant\_linear\_velocity**(layer\_id: [int](class_int.md#class-int)) const [🔗](#class-tiledata-method-get-constant-linear-velocity)

Returns the constant linear velocity applied to objects colliding with this tile.

* * *

[Variant](class_variant.md#class-variant) **get\_custom\_data**(layer\_name: [String](class_string.md#class-string)) const [🔗](#class-tiledata-method-get-custom-data)

Returns the custom data value for custom data layer named `layer_name`. To check if a custom data layer exists, use [has\_custom\_data()](#class-tiledata-method-has-custom-data).

* * *

[Variant](class_variant.md#class-variant) **get\_custom\_data\_by\_layer\_id**(layer\_id: [int](class_int.md#class-int)) const [🔗](#class-tiledata-method-get-custom-data-by-layer-id)

Returns the custom data value for custom data layer with index `layer_id`.

* * *

[NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon) **get\_navigation\_polygon**(layer\_id: [int](class_int.md#class-int), flip\_h: [bool](class_bool.md#class-bool) = false, flip\_v: [bool](class_bool.md#class-bool) = false, transpose: [bool](class_bool.md#class-bool) = false) const [🔗](#class-tiledata-method-get-navigation-polygon)

Returns the navigation polygon of the tile for the TileSet navigation layer with index `layer_id`.

`flip_h`, `flip_v`, and `transpose` allow transforming the returned polygon.

* * *

[OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d) **get\_occluder**(layer\_id: [int](class_int.md#class-int), flip\_h: [bool](class_bool.md#class-bool) = false, flip\_v: [bool](class_bool.md#class-bool) = false, transpose: [bool](class_bool.md#class-bool) = false) const [🔗](#class-tiledata-method-get-occluder)

**Deprecated:** Use [get\_occluder\_polygon()](#class-tiledata-method-get-occluder-polygon) instead.

Returns the occluder polygon of the tile for the TileSet occlusion layer with index `layer_id`.

`flip_h`, `flip_v`, and `transpose` allow transforming the returned polygon.

* * *

[OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d) **get\_occluder\_polygon**(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int), flip\_h: [bool](class_bool.md#class-bool) = false, flip\_v: [bool](class_bool.md#class-bool) = false, transpose: [bool](class_bool.md#class-bool) = false) const [🔗](#class-tiledata-method-get-occluder-polygon)

Returns the occluder polygon at index `polygon_index` from the TileSet occlusion layer with index `layer_id`.

The `flip_h`, `flip_v`, and `transpose` parameters can be `true` to transform the returned polygon.

* * *

[int](class_int.md#class-int) **get\_occluder\_polygons\_count**(layer\_id: [int](class_int.md#class-int)) const [🔗](#class-tiledata-method-get-occluder-polygons-count)

Returns the number of occluder polygons of the tile in the TileSet occlusion layer with index `layer_id`.

* * *

[int](class_int.md#class-int) **get\_terrain\_peering\_bit**(peering\_bit: [CellNeighbor](class_tileset.md#enum-tileset-cellneighbor)) const [🔗](#class-tiledata-method-get-terrain-peering-bit)

Returns the tile's terrain bit for the given `peering_bit` direction. To check that a direction is valid, use [is\_valid\_terrain\_peering\_bit()](#class-tiledata-method-is-valid-terrain-peering-bit).

* * *

[bool](class_bool.md#class-bool) **has\_custom\_data**(layer\_name: [String](class_string.md#class-string)) const [🔗](#class-tiledata-method-has-custom-data)

Returns whether there exists a custom data layer named `layer_name`.

* * *

[bool](class_bool.md#class-bool) **is\_collision\_polygon\_one\_way**(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int)) const [🔗](#class-tiledata-method-is-collision-polygon-one-way)

Returns whether one-way collisions are enabled for the polygon at index `polygon_index` for TileSet physics layer with index `layer_id`.

* * *

[bool](class_bool.md#class-bool) **is\_valid\_terrain\_peering\_bit**(peering\_bit: [CellNeighbor](class_tileset.md#enum-tileset-cellneighbor)) const [🔗](#class-tiledata-method-is-valid-terrain-peering-bit)

Returns whether the given `peering_bit` direction is valid for this tile.

* * *

void **remove\_collision\_polygon**(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int)) [🔗](#class-tiledata-method-remove-collision-polygon)

Removes the polygon at index `polygon_index` for TileSet physics layer with index `layer_id`.

* * *

void **remove\_occluder\_polygon**(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int)) [🔗](#class-tiledata-method-remove-occluder-polygon)

Removes the polygon at index `polygon_index` for TileSet occlusion layer with index `layer_id`.

* * *

void **set\_collision\_polygon\_one\_way**(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int), one\_way: [bool](class_bool.md#class-bool)) [🔗](#class-tiledata-method-set-collision-polygon-one-way)

Enables/disables one-way collisions on the polygon at index `polygon_index` for TileSet physics layer with index `layer_id`.

* * *

void **set\_collision\_polygon\_one\_way\_margin**(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int), one\_way\_margin: [float](class_float.md#class-float)) [🔗](#class-tiledata-method-set-collision-polygon-one-way-margin)

Sets the one-way margin (for one-way platforms) of the polygon at index `polygon_index` for TileSet physics layer with index `layer_id`.

* * *

void **set\_collision\_polygon\_points**(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int), polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-tiledata-method-set-collision-polygon-points)

Sets the points of the polygon at index `polygon_index` for TileSet physics layer with index `layer_id`.

* * *

void **set\_collision\_polygons\_count**(layer\_id: [int](class_int.md#class-int), polygons\_count: [int](class_int.md#class-int)) [🔗](#class-tiledata-method-set-collision-polygons-count)

Sets the polygons count for TileSet physics layer with index `layer_id`.

* * *

void **set\_constant\_angular\_velocity**(layer\_id: [int](class_int.md#class-int), velocity: [float](class_float.md#class-float)) [🔗](#class-tiledata-method-set-constant-angular-velocity)

Sets the constant angular velocity. This does not rotate the tile. This angular velocity is applied to objects colliding with this tile.

* * *

void **set\_constant\_linear\_velocity**(layer\_id: [int](class_int.md#class-int), velocity: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-tiledata-method-set-constant-linear-velocity)

Sets the constant linear velocity. This does not move the tile. This linear velocity is applied to objects colliding with this tile. This is useful to create conveyor belts.

* * *

void **set\_custom\_data**(layer\_name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) [🔗](#class-tiledata-method-set-custom-data)

Sets the tile's custom data value for the TileSet custom data layer with name `layer_name`.

* * *

void **set\_custom\_data\_by\_layer\_id**(layer\_id: [int](class_int.md#class-int), value: [Variant](class_variant.md#class-variant)) [🔗](#class-tiledata-method-set-custom-data-by-layer-id)

Sets the tile's custom data value for the TileSet custom data layer with index `layer_id`.

* * *

void **set\_navigation\_polygon**(layer\_id: [int](class_int.md#class-int), navigation\_polygon: [NavigationPolygon](class_navigationpolygon.md#class-navigationpolygon)) [🔗](#class-tiledata-method-set-navigation-polygon)

Sets the navigation polygon for the TileSet navigation layer with index `layer_id`.

* * *

void **set\_occluder**(layer\_id: [int](class_int.md#class-int), occluder\_polygon: [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d)) [🔗](#class-tiledata-method-set-occluder)

**Deprecated:** Use [set\_occluder\_polygon()](#class-tiledata-method-set-occluder-polygon) instead.

Sets the occluder for the TileSet occlusion layer with index `layer_id`.

* * *

void **set\_occluder\_polygon**(layer\_id: [int](class_int.md#class-int), polygon\_index: [int](class_int.md#class-int), polygon: [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d)) [🔗](#class-tiledata-method-set-occluder-polygon)

Sets the occluder for polygon with index `polygon_index` in the TileSet occlusion layer with index `layer_id`.

* * *

void **set\_occluder\_polygons\_count**(layer\_id: [int](class_int.md#class-int), polygons\_count: [int](class_int.md#class-int)) [🔗](#class-tiledata-method-set-occluder-polygons-count)

Sets the occluder polygon count in the TileSet occlusion layer with index `layer_id`.

* * *

void **set\_terrain\_peering\_bit**(peering\_bit: [CellNeighbor](class_tileset.md#enum-tileset-cellneighbor), terrain: [int](class_int.md#class-int)) [🔗](#class-tiledata-method-set-terrain-peering-bit)

Sets the tile's terrain bit for the given `peering_bit` direction. To check that a direction is valid, use [is\_valid\_terrain\_peering\_bit()](#class-tiledata-method-is-valid-terrain-peering-bit).

[Previous](class_thread.md "Thread") [Next](class_time.md "Time")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_thread.md "Thread") [Next](class_time.md "Time")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).