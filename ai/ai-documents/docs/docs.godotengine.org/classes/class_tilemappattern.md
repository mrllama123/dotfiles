---
title: TileMapPattern — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tilemappattern.html
crawled_at: "2026-08-13T10:18:10+12:00"
content_hash: 042dbf9da6f8e6c2c648e6fef8dc377be375a4bf73b2cdf84e47191df55657c9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TileMapPattern

* * *

# TileMapPattern

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds a pattern to be copied from or pasted into [TileMap](class_tilemap.md#class-tilemap) s.

## Description

This resource holds a set of cells to help bulk manipulations of [TileMap](class_tilemap.md#class-tilemap).

A pattern always starts at the `(0, 0)` coordinates and cannot have cells with negative coordinates.

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_cell\_alternative\_tile](#class-tilemappattern-method-get-cell-alternative-tile)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_cell\_atlas\_coords](#class-tilemappattern-method-get-cell-atlas-coords)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [int](class_int.md#class-int) | [get\_cell\_source\_id](#class-tilemappattern-method-get-cell-source-id)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_size](#class-tilemappattern-method-get-size)() const |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_used\_cells](#class-tilemappattern-method-get-used-cells)() const |
| [bool](class_bool.md#class-bool) | [has\_cell](#class-tilemappattern-method-has-cell)(coords: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-tilemappattern-method-is-empty)() const |
| void | [remove\_cell](#class-tilemappattern-method-remove-cell)(coords: [Vector2i](class_vector2i.md#class-vector2i), update\_size: [bool](class_bool.md#class-bool)) |
| void | [set\_cell](#class-tilemappattern-method-set-cell)(coords: [Vector2i](class_vector2i.md#class-vector2i), source\_id: [int](class_int.md#class-int) = -1, atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), alternative\_tile: [int](class_int.md#class-int) = -1) |
| void | [set\_size](#class-tilemappattern-method-set-size)(size: [Vector2i](class_vector2i.md#class-vector2i)) |

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_cell\_alternative\_tile**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemappattern-method-get-cell-alternative-tile)

Returns the tile alternative ID of the cell at `coords`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_cell\_atlas\_coords**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemappattern-method-get-cell-atlas-coords)

Returns the tile atlas coordinates ID of the cell at `coords`.

* * *

[int](class_int.md#class-int) **get\_cell\_source\_id**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemappattern-method-get-cell-source-id)

Returns the tile source ID of the cell at `coords`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_size**() const [🔗](#class-tilemappattern-method-get-size)

Returns the size, in cells, of the pattern.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_used\_cells**() const [🔗](#class-tilemappattern-method-get-used-cells)

Returns the list of used cell coordinates in the pattern.

* * *

[bool](class_bool.md#class-bool) **has\_cell**(coords: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-tilemappattern-method-has-cell)

Returns whether the pattern has a tile at the given coordinates.

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-tilemappattern-method-is-empty)

Returns whether the pattern is empty or not.

* * *

void **remove\_cell**(coords: [Vector2i](class_vector2i.md#class-vector2i), update\_size: [bool](class_bool.md#class-bool)) [🔗](#class-tilemappattern-method-remove-cell)

Remove the cell at the given coordinates.

* * *

void **set\_cell**(coords: [Vector2i](class_vector2i.md#class-vector2i), source\_id: [int](class_int.md#class-int) = -1, atlas\_coords: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(-1, -1), alternative\_tile: [int](class_int.md#class-int) = -1) [🔗](#class-tilemappattern-method-set-cell)

Sets the tile identifiers for the cell at coordinates `coords`. See [TileMap.set\_cell()](class_tilemap.md#class-tilemap-method-set-cell).

* * *

void **set\_size**(size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-tilemappattern-method-set-size)

Sets the size of the pattern.

[Previous](class_theme.md "Theme") [Next](class_tileset.md "TileSet")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_theme.md "Theme") [Next](class_tileset.md "TileSet")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).