---
title: TileSetSource — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tilesetsource.html
crawled_at: "2026-08-13T10:19:26+12:00"
content_hash: e0dc4527749860fba027eae15e1c68823bc89fc91e84b0b059c1780416b1159a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TileSetSource

* * *

# TileSetSource

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource), [TileSetScenesCollectionSource](class_tilesetscenescollectionsource.md#class-tilesetscenescollectionsource)

Exposes a set of tiles for a [TileSet](class_tileset.md#class-tileset) resource.

## Description

Exposes a set of tiles for a [TileSet](class_tileset.md#class-tileset) resource.

Tiles in a source are indexed with two IDs, coordinates ID (of type Vector2i) and an alternative ID (of type int), named according to their use in the [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource) class.

Depending on the TileSet source type, those IDs might have restrictions on their values, this is why the base **TileSetSource** class only exposes getters for them.

You can iterate over all tiles exposed by a TileSetSource by first iterating over coordinates IDs using [get\_tiles\_count()](#class-tilesetsource-method-get-tiles-count) and [get\_tile\_id()](#class-tilesetsource-method-get-tile-id), then over alternative IDs using [get\_alternative\_tiles\_count()](#class-tilesetsource-method-get-alternative-tiles-count) and [get\_alternative\_tile\_id()](#class-tilesetsource-method-get-alternative-tile-id).

**Warning:** **TileSetSource** can only be added to one TileSet at the same time. Calling [TileSet.add\_source()](class_tileset.md#class-tileset-method-add-source) on a second [TileSet](class_tileset.md#class-tileset) will remove the source from the first one.

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_alternative\_tile\_id](#class-tilesetsource-method-get-alternative-tile-id)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_alternative\_tiles\_count](#class-tilesetsource-method-get-alternative-tiles-count)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_tile\_id](#class-tilesetsource-method-get-tile-id)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_tiles\_count](#class-tilesetsource-method-get-tiles-count)() const |
| [bool](class_bool.md#class-bool) | [has\_alternative\_tile](#class-tilesetsource-method-has-alternative-tile)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), alternative\_tile: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_tile](#class-tilesetsource-method-has-tile)(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const |

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_alternative\_tile\_id**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), index: [int](class_int.md#class-int)) const [🔗](#class-tilesetsource-method-get-alternative-tile-id)

Returns the alternative ID for the tile with coordinates ID `atlas_coords` at index `index`.

* * *

[int](class_int.md#class-int) **get\_alternative\_tiles\_count**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetsource-method-get-alternative-tiles-count)

Returns the number of alternatives tiles for the coordinates ID `atlas_coords`.

For [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource), this always return at least 1, as the base tile with ID 0 is always part of the alternatives list.

Returns -1 if there is not tile at the given coords.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_tile\_id**(index: [int](class_int.md#class-int)) const [🔗](#class-tilesetsource-method-get-tile-id)

Returns the tile coordinates ID of the tile with index `index`.

* * *

[int](class_int.md#class-int) **get\_tiles\_count**() const [🔗](#class-tilesetsource-method-get-tiles-count)

Returns how many tiles this atlas source defines (not including alternative tiles).

* * *

[bool](class_bool.md#class-bool) **has\_alternative\_tile**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i), alternative\_tile: [int](class_int.md#class-int)) const [🔗](#class-tilesetsource-method-has-alternative-tile)

Returns if the base tile at coordinates `atlas_coords` has an alternative with ID `alternative_tile`.

* * *

[bool](class_bool.md#class-bool) **has\_tile**(atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilesetsource-method-has-tile)

Returns if this atlas has a tile with coordinates ID `atlas_coords`.

[Previous](class_tilesetscenescollectionsource.md "TileSetScenesCollectionSource") [Next](class_torusmesh.md "TorusMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tilesetscenescollectionsource.md "TileSetScenesCollectionSource") [Next](class_torusmesh.md "TorusMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).