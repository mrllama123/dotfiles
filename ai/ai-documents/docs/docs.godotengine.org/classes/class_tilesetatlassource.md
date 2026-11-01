---
title: TileSetAtlasSource — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tilesetatlassource.html
crawled_at: "2026-08-13T10:21:35+12:00"
content_hash: 4721d2cc719e95ce540966511f1384108ff22dff1505e8bb21f40fb9171f7af6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TileSetAtlasSource

* * *

# TileSetAtlasSource

**Inherits:** [TileSetSource](class_tilesetsource.md#class-tilesetsource) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Exposes a 2D atlas texture as a set of tiles for a [TileSet](class_tileset.md#class-tileset) resource.

## Description

An atlas is a grid of tiles laid out on a texture. Each tile in the grid must be exposed using [create\_tile()](#class-tilesetatlassource-method-create-tile). Those tiles are then indexed using their coordinates in the grid.

Each tile can also have a size in the grid coordinates, making it more or less cells in the atlas.

Alternatives version of a tile can be created using [create\_alternative\_tile()](#class-tilesetatlassource-method-create-alternative-tile), which are then indexed using an alternative ID. The main tile (the one in the grid), is accessed with an alternative ID equal to 0.

Each tile alternate has a set of properties that is defined by the source's [TileSet](class_tileset.md#class-tileset) layers. Those properties are stored in a TileData object that can be accessed and modified using [get\_tile\_data()](#class-tilesetatlassource-method-get-tile-data).

As TileData properties are stored directly in the TileSetAtlasSource resource, their properties might also be set using `TileSetAtlasSource.set("<coords_x>:<coords_y>/<alternative_id>/<tile_data_property>")`.

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2i](class_vector2i.md#class-vector2i) | [margins](#class-tilesetatlassource-property-margins) | `Vector2i(0, 0)` |
| [Vector2i](class_vector2i.md#class-vector2i) | [separation](#class-tilesetatlassource-property-separation) | `Vector2i(0, 0)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-tilesetatlassource-property-texture) |  |
| [Vector2i](class_vector2i.md#class-vector2i) | [texture\_region\_size](#class-tilesetatlassource-property-texture-region-size) | `Vector2i(16, 16)` |
| [bool](class_bool.md#class-bool) | [use\_texture\_padding](#class-tilesetatlassource-property-use-texture-padding) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [clear\_tiles\_outside\_texture](#class-tilesetatlassource-method-clear-tiles-outside-texture)() |
| [int](class_int.md#class-int) | [create\_alternative\_tile](#class-tilesetatlassource-method-create-alternative-tile)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), alternative\_id\_override: [int](class_int.md#class-int) = -1) |
| void | [create\_tile](#class-tilesetatlassource-method-create-tile)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), size: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(1, 1)) |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_atlas\_grid\_size](#class-tilesetatlassource-method-get-atlas-grid-size)() const |
| [int](class_int.md#class-int) | [get\_next\_alternative\_tile\_id](#class-tilesetatlassource-method-get-next-alternative-tile-id)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_runtime\_texture](#class-tilesetatlassource-method-get-runtime-texture)() const |
| [Rect2i](class_rect2i.md#class-rect2i) | [get\_runtime\_tile\_texture\_region](#class-tilesetatlassource-method-get-runtime-tile-texture-region)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frame: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_tile\_animation\_columns](#class-tilesetatlassource-method-get-tile-animation-columns)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [float](class_float.md#class-float) | [get\_tile\_animation\_frame\_duration](#class-tilesetatlassource-method-get-tile-animation-frame-duration)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frame\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_tile\_animation\_frames\_count](#class-tilesetatlassource-method-get-tile-animation-frames-count)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [TileAnimationMode](#enum-tilesetatlassource-tileanimationmode) | [get\_tile\_animation\_mode](#class-tilesetatlassource-method-get-tile-animation-mode)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_tile\_animation\_separation](#class-tilesetatlassource-method-get-tile-animation-separation)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [float](class_float.md#class-float) | [get\_tile\_animation\_speed](#class-tilesetatlassource-method-get-tile-animation-speed)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [float](class_float.md#class-float) | [get\_tile\_animation\_total\_duration](#class-tilesetatlassource-method-get-tile-animation-total-duration)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_tile\_at\_coords](#class-tilesetatlassource-method-get-tile-at-coords)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [TileData](class_tiledata.md#class-tiledata) | [get\_tile\_data](#class-tilesetatlassource-method-get-tile-data)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), alternative\_tile: [int](class_int.md#class-int)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_tile\_size\_in\_atlas](#class-tilesetatlassource-method-get-tile-size-in-atlas)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Rect2i](class_rect2i.md#class-rect2i) | [get\_tile\_texture\_region](#class-tilesetatlassource-method-get-tile-texture-region)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frame: [int](class_int.md#class-int) = 0) const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_tiles\_to\_be\_removed\_on\_change](#class-tilesetatlassource-method-get-tiles-to-be-removed-on-change)(texture: [Texture2D](class_texture2d.md#class-texture2d), margins: [Vector2i](class_vector2i.md#class-vector2i), separation: [Vector2i](class_vector2i.md#class-vector2i), texture\_region\_size: [Vector2i](class_vector2i.md#class-vector2i)) |
| [bool](class_bool.md#class-bool) | [has\_room\_for\_tile](#class-tilesetatlassource-method-has-room-for-tile)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), size: [Vector2i](class_vector2i.md#class-vector2i), animation\_columns: [int](class_int.md#class-int), animation\_separation: [Vector2i](class_vector2i.md#class-vector2i), frames\_count: [int](class_int.md#class-int), ignored\_tile: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1)) const |
| [bool](class_bool.md#class-bool) | [has\_tiles\_outside\_texture](#class-tilesetatlassource-method-has-tiles-outside-texture)() const |
| void | [move\_tile\_in\_atlas](#class-tilesetatlassource-method-move-tile-in-atlas)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), new\_atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), new\_size: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1)) |
| void | [remove\_alternative\_tile](#class-tilesetatlassource-method-remove-alternative-tile)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), alternative\_tile: [int](class_int.md#class-int)) |
| void | [remove\_tile](#class-tilesetatlassource-method-remove-tile)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [set\_alternative\_tile\_id](#class-tilesetatlassource-method-set-alternative-tile-id)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), alternative\_tile: [int](class_int.md#class-int), new\_id: [int](class_int.md#class-int)) |
| void | [set\_tile\_animation\_columns](#class-tilesetatlassource-method-set-tile-animation-columns)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frame\_columns: [int](class_int.md#class-int)) |
| void | [set\_tile\_animation\_frame\_duration](#class-tilesetatlassource-method-set-tile-animation-frame-duration)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frame\_index: [int](class_int.md#class-int), duration: [float](class_float.md#class-float)) |
| void | [set\_tile\_animation\_frames\_count](#class-tilesetatlassource-method-set-tile-animation-frames-count)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frames\_count: [int](class_int.md#class-int)) |
| void | [set\_tile\_animation\_mode](#class-tilesetatlassource-method-set-tile-animation-mode)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), mode: [TileAnimationMode](#enum-tilesetatlassource-tileanimationmode)) |
| void | [set\_tile\_animation\_separation](#class-tilesetatlassource-method-set-tile-animation-separation)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), separation: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [set\_tile\_animation\_speed](#class-tilesetatlassource-method-set-tile-animation-speed)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), speed: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **TileAnimationMode**: [🔗](#enum-tilesetatlassource-tileanimationmode)

[TileAnimationMode](#enum-tilesetatlassource-tileanimationmode) **TILE\_ANIMATION\_MODE\_DEFAULT** = `0`

Tile animations start at same time, looking identical.

[TileAnimationMode](#enum-tilesetatlassource-tileanimationmode) **TILE\_ANIMATION\_MODE\_RANDOM\_START\_TIMES** = `1`

Tile animations start at random times, looking varied.

[TileAnimationMode](#enum-tilesetatlassource-tileanimationmode) **TILE\_ANIMATION\_MODE\_MAX** = `2`

Represents the size of the [TileAnimationMode](#enum-tilesetatlassource-tileanimationmode) enum.

* * *

## Constants

**TRANSFORM\_FLIP\_H** = `4096` [🔗](#class-tilesetatlassource-constant-transform-flip-h)

Represents cell's horizontal flip flag. Should be used directly with [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer) to flip placed tiles by altering their alternative IDs.

```
var alternate_id = $TileMapLayer.get_cell_alternative_tile(Vector2i(2, 2))
if not alternate_id & TileSetAtlasSource.TRANSFORM_FLIP_H:
    # If tile is not already flipped, flip it.
    $TileMapLayer.set_cell(Vector2i(2, 2), source_id, atlas_coords, alternate_id | TileSetAtlasSource.TRANSFORM_FLIP_H)

```

**Note:** These transformations can be combined to do the equivalent of 0, 90, 180, and 270 degree rotations, as shown below:

```
enum TileTransform {
    ROTATE_0 = 0,
    ROTATE_90 = TileSetAtlasSource.TRANSFORM_TRANSPOSE | TileSetAtlasSource.TRANSFORM_FLIP_H,
    ROTATE_180 = TileSetAtlasSource.TRANSFORM_FLIP_H | TileSetAtlasSource.TRANSFORM_FLIP_V,
    ROTATE_270 = TileSetAtlasSource.TRANSFORM_TRANSPOSE | TileSetAtlasSource.TRANSFORM_FLIP_V,
}

```

**TRANSFORM\_FLIP\_V** = `8192` [🔗](#class-tilesetatlassource-constant-transform-flip-v)

Represents cell's vertical flip flag. See [TRANSFORM\_FLIP\_H](#class-tilesetatlassource-constant-transform-flip-h) for usage.

**TRANSFORM\_TRANSPOSE** = `16384` [🔗](#class-tilesetatlassource-constant-transform-transpose)

Represents cell's transposed flag. See [TRANSFORM\_FLIP\_H](#class-tilesetatlassource-constant-transform-flip-h) for usage.

* * *

## Property Descriptions

[Vector2i](class_vector2i.md#class-vector2i) **margins** = `Vector2i(0, 0)` [🔗](#class-tilesetatlassource-property-margins)

- void **set\_margins**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_margins**()


Margins, in pixels, to offset the origin of the grid in the texture.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **separation** = `Vector2i(0, 0)` [🔗](#class-tilesetatlassource-property-separation)

- void **set\_separation**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_separation**()


Separation, in pixels, between each tile texture region of the grid.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-tilesetatlassource-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


The atlas texture.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **texture\_region\_size** = `Vector2i(16, 16)` [🔗](#class-tilesetatlassource-property-texture-region-size)

- void **set\_texture\_region\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_texture\_region\_size**()


The base tile size in the texture (in pixel). This size must be bigger than or equal to the TileSet's `tile_size` value.

* * *

[bool](class_bool.md#class-bool) **use\_texture\_padding** = `true` [🔗](#class-tilesetatlassource-property-use-texture-padding)

- void **set\_use\_texture\_padding**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_texture\_padding**()


If `true`, generates an internal texture with an additional one pixel padding around each tile. Texture padding avoids a common artifact where lines appear between tiles.

Disabling this setting might lead a small performance improvement, as generating the internal texture requires both memory and processing time when the TileSetAtlasSource resource is modified.

* * *

## Method Descriptions

void **clear\_tiles\_outside\_texture**() [🔗](#class-tilesetatlassource-method-clear-tiles-outside-texture)

Removes all tiles that don't fit the available texture area. This method iterates over all the source's tiles, so it's advised to use [has\_tiles\_outside\_texture()](#class-tilesetatlassource-method-has-tiles-outside-texture) beforehand.

* * *

[int](class_int.md#class-int) **create\_alternative\_tile**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), alternative\_id\_override: [int](class_int.md#class-int) = -1) [🔗](#class-tilesetatlassource-method-create-alternative-tile)

Creates an alternative tile for the tile at coordinates `atlas_coords`. If `alternative_id_override` is -1, give it an automatically generated unique ID, or assigns it the given ID otherwise.

Returns the new alternative identifier, or -1 if the alternative could not be created with a provided `alternative_id_override`.

* * *

void **create\_tile**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), size: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(1, 1)) [🔗](#class-tilesetatlassource-method-create-tile)

Creates a new tile at coordinates `atlas_coords` with the given `size`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_atlas\_grid\_size**() const [🔗](#class-tilesetatlassource-method-get-atlas-grid-size)

Returns the atlas grid size, which depends on how many tiles can fit in the texture. It thus depends on the [texture](#class-tilesetatlassource-property-texture)'s size, the atlas [margins](#class-tilesetatlassource-property-margins), and the tiles' [texture\_region\_size](#class-tilesetatlassource-property-texture-region-size).

* * *

[int](class_int.md#class-int) **get\_next\_alternative\_tile\_id**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetatlassource-method-get-next-alternative-tile-id)

Returns the alternative ID a following call to [create\_alternative\_tile()](#class-tilesetatlassource-method-create-alternative-tile) would return.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_runtime\_texture**() const [🔗](#class-tilesetatlassource-method-get-runtime-texture)

If [use\_texture\_padding](#class-tilesetatlassource-property-use-texture-padding) is `false`, returns [texture](#class-tilesetatlassource-property-texture). Otherwise, returns and internal [ImageTexture](class_imagetexture.md#class-imagetexture) created that includes the padding.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **get\_runtime\_tile\_texture\_region**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frame: [int](class_int.md#class-int)) const [🔗](#class-tilesetatlassource-method-get-runtime-tile-texture-region)

Returns the region of the tile at coordinates `atlas_coords` for the given `frame` inside the texture returned by [get\_runtime\_texture()](#class-tilesetatlassource-method-get-runtime-texture).

**Note:** If [use\_texture\_padding](#class-tilesetatlassource-property-use-texture-padding) is `false`, returns the same as [get\_tile\_texture\_region()](#class-tilesetatlassource-method-get-tile-texture-region).

* * *

[int](class_int.md#class-int) **get\_tile\_animation\_columns**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetatlassource-method-get-tile-animation-columns)

Returns how many columns the tile at `atlas_coords` has in its animation layout.

* * *

[float](class_float.md#class-float) **get\_tile\_animation\_frame\_duration**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frame\_index: [int](class_int.md#class-int)) const [🔗](#class-tilesetatlassource-method-get-tile-animation-frame-duration)

Returns the animation frame duration of frame `frame_index` for the tile at coordinates `atlas_coords`.

* * *

[int](class_int.md#class-int) **get\_tile\_animation\_frames\_count**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetatlassource-method-get-tile-animation-frames-count)

Returns how many animation frames has the tile at coordinates `atlas_coords`.

* * *

[TileAnimationMode](#enum-tilesetatlassource-tileanimationmode) **get\_tile\_animation\_mode**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetatlassource-method-get-tile-animation-mode)

Returns the tile animation mode of the tile at `atlas_coords`. See also [set\_tile\_animation\_mode()](#class-tilesetatlassource-method-set-tile-animation-mode).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_tile\_animation\_separation**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetatlassource-method-get-tile-animation-separation)

Returns the separation (as in the atlas grid) between each frame of an animated tile at coordinates `atlas_coords`.

* * *

[float](class_float.md#class-float) **get\_tile\_animation\_speed**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetatlassource-method-get-tile-animation-speed)

Returns the animation speed of the tile at coordinates `atlas_coords`.

* * *

[float](class_float.md#class-float) **get\_tile\_animation\_total\_duration**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetatlassource-method-get-tile-animation-total-duration)

Returns the sum of the sum of the frame durations of the tile at coordinates `atlas_coords`. This value needs to be divided by the animation speed to get the actual animation loop duration.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_tile\_at\_coords**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetatlassource-method-get-tile-at-coords)

If there is a tile covering the `atlas_coords` coordinates, returns the top-left coordinates of the tile (thus its coordinate ID). Returns `Vector2i(-1, -1)` otherwise.

* * *

[TileData](class_tiledata.md#class-tiledata) **get\_tile\_data**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), alternative\_tile: [int](class_int.md#class-int)) const [🔗](#class-tilesetatlassource-method-get-tile-data)

Returns the [TileData](class_tiledata.md#class-tiledata) object for the given atlas coordinates and alternative ID.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_tile\_size\_in\_atlas**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetatlassource-method-get-tile-size-in-atlas)

Returns the size of the tile (in the grid coordinates system) at coordinates `atlas_coords`.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **get\_tile\_texture\_region**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frame: [int](class_int.md#class-int) = 0) const [🔗](#class-tilesetatlassource-method-get-tile-texture-region)

Returns a tile's texture region in the atlas texture. For animated tiles, a `frame` argument might be provided for the different frames of the animation.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_tiles\_to\_be\_removed\_on\_change**(texture: [Texture2D](class_texture2d.md#class-texture2d), margins: [Vector2i](class_vector2i.md#class-vector2i), separation: [Vector2i](class_vector2i.md#class-vector2i), texture\_region\_size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tilesetatlassource-method-get-tiles-to-be-removed-on-change)

Returns an array of tiles coordinates ID that will be automatically removed when modifying one or several of those properties: `texture`, `margins`, `separation` or `texture_region_size`. This can be used to undo changes that would have caused tiles data loss.

* * *

[bool](class_bool.md#class-bool) **has\_room\_for\_tile**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), size: [Vector2i](class_vector2i.md#class-vector2i), animation\_columns: [int](class_int.md#class-int), animation\_separation: [Vector2i](class_vector2i.md#class-vector2i), frames\_count: [int](class_int.md#class-int), ignored\_tile: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1)) const [🔗](#class-tilesetatlassource-method-has-room-for-tile)

Returns whether there is enough room in an atlas to create/modify a tile with the given properties. If `ignored_tile` is provided, act as is the given tile was not present in the atlas. This may be used when you want to modify a tile's properties.

* * *

[bool](class_bool.md#class-bool) **has\_tiles\_outside\_texture**() const [🔗](#class-tilesetatlassource-method-has-tiles-outside-texture)

Checks if the source has any tiles that don't fit the texture area (either partially or completely).

* * *

void **move\_tile\_in\_atlas**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), new\_atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), new\_size: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1)) [🔗](#class-tilesetatlassource-method-move-tile-in-atlas)

Move the tile and its alternatives at the `atlas_coords` coordinates to the `new_atlas_coords` coordinates with the `new_size` size. This functions will fail if a tile is already present in the given area.

If `new_atlas_coords` is `Vector2i(-1, -1)`, keeps the tile's coordinates. If `new_size` is `Vector2i(-1, -1)`, keeps the tile's size.

To avoid an error, first check if a move is possible using [has\_room\_for\_tile()](#class-tilesetatlassource-method-has-room-for-tile).

* * *

void **remove\_alternative\_tile**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), alternative\_tile: [int](class_int.md#class-int)) [🔗](#class-tilesetatlassource-method-remove-alternative-tile)

Remove a tile's alternative with alternative ID `alternative_tile`.

Calling this function with `alternative_tile` equals to 0 will fail, as the base tile alternative cannot be removed.

* * *

void **remove\_tile**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tilesetatlassource-method-remove-tile)

Remove a tile and its alternative at coordinates `atlas_coords`.

* * *

void **set\_alternative\_tile\_id**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), alternative\_tile: [int](class_int.md#class-int), new\_id: [int](class_int.md#class-int)) [🔗](#class-tilesetatlassource-method-set-alternative-tile-id)

Change a tile's alternative ID from `alternative_tile` to `new_id`.

Calling this function with `new_id` of 0 will fail, as the base tile alternative cannot be moved.

* * *

void **set\_tile\_animation\_columns**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frame\_columns: [int](class_int.md#class-int)) [🔗](#class-tilesetatlassource-method-set-tile-animation-columns)

Sets the number of columns in the animation layout of the tile at coordinates `atlas_coords`. If set to 0, then the different frames of the animation are laid out as a single horizontal line in the atlas.

* * *

void **set\_tile\_animation\_frame\_duration**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frame\_index: [int](class_int.md#class-int), duration: [float](class_float.md#class-float)) [🔗](#class-tilesetatlassource-method-set-tile-animation-frame-duration)

Sets the animation frame `duration` of frame `frame_index` for the tile at coordinates `atlas_coords`.

* * *

void **set\_tile\_animation\_frames\_count**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), frames\_count: [int](class_int.md#class-int)) [🔗](#class-tilesetatlassource-method-set-tile-animation-frames-count)

Sets how many animation frames the tile at coordinates `atlas_coords` has.

* * *

void **set\_tile\_animation\_mode**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), mode: [TileAnimationMode](#enum-tilesetatlassource-tileanimationmode)) [🔗](#class-tilesetatlassource-method-set-tile-animation-mode)

Sets the tile animation mode of the tile at `atlas_coords` to `mode`. See also [get\_tile\_animation\_mode()](#class-tilesetatlassource-method-get-tile-animation-mode).

* * *

void **set\_tile\_animation\_separation**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), separation: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tilesetatlassource-method-set-tile-animation-separation)

Sets the margin (in grid tiles) between each tile in the animation layout of the tile at coordinates `atlas_coords` has.

* * *

void **set\_tile\_animation\_speed**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), speed: [float](class_float.md#class-float)) [🔗](#class-tilesetatlassource-method-set-tile-animation-speed)

Sets the animation speed of the tile at coordinates `atlas_coords` has.

[Previous](class_tileset.md "TileSet") [Next](class_tilesetscenescollectionsource.md "TileSetScenesCollectionSource")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tileset.md "TileSet") [Next](class_tilesetscenescollectionsource.md "TileSetScenesCollectionSource")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).