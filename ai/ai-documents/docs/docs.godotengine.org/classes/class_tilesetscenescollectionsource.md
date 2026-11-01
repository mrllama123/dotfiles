---
title: TileSetScenesCollectionSource — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tilesetscenescollectionsource.html
crawled_at: "2026-08-13T10:24:36+12:00"
content_hash: 08613d04b7a7039ca165eb17818bf36a264e4579db9785a1735ec0dc6401def3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TileSetScenesCollectionSource

* * *

# TileSetScenesCollectionSource

**Inherits:** [TileSetSource](class_tilesetsource.md#class-tilesetsource) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Exposes a set of scenes as tiles for a [TileSet](class_tileset.md#class-tileset) resource.

## Description

When placed on a [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer), tiles from **TileSetScenesCollectionSource** will automatically instantiate an associated scene at the cell's position in the TileMapLayer.

Scenes are instantiated as children of the [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer) after it enters the tree, at the end of the frame (their creation is deferred). If you add/remove a scene tile in the [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer) that is already inside the tree, the [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer) will automatically instantiate/free the scene accordingly.

**Note:** Scene tiles all occupy one tile slot and instead use alternate tile ID to identify scene index. [TileSetSource.get\_tiles\_count()](class_tilesetsource.md#class-tilesetsource-method-get-tiles-count) will always return `1`. Use [get\_scene\_tiles\_count()](#class-tilesetscenescollectionsource-method-get-scene-tiles-count) to get a number of scenes in a **TileSetScenesCollectionSource**.

Use this code if you want to find the scene path at a given tile in [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer):

GDScriptC#

```
var source_id = tile_map_layer.get_cell_source_id(Vector2i(x, y))
if source_id > -1:
    var scene_source = tile_map_layer.tile_set.get_source(source_id)
    if scene_source is TileSetScenesCollectionSource:
        var alt_id = tile_map_layer.get_cell_alternative_tile(Vector2i(x, y))
        # The assigned PackedScene.
        var scene = scene_source.get_scene_tile_scene(alt_id)

```

```
int sourceId = tileMapLayer.GetCellSourceId(new Vector2I(x, y));
if (sourceId > -1)
{
    TileSetSource source = tileMapLayer.TileSet.GetSource(sourceId);
    if (source is TileSetScenesCollectionSource sceneSource)
    {
        int altId = tileMapLayer.GetCellAlternativeTile(new Vector2I(x, y));
        // The assigned PackedScene.
        PackedScene scene = sceneSource.GetSceneTileScene(altId);
    }
}

```

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [create\_scene\_tile](#class-tilesetscenescollectionsource-method-create-scene-tile)(packed\_scene: [PackedScene](class_packedscene.md#class-packedscene), id\_override: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [get\_next\_scene\_tile\_id](#class-tilesetscenescollectionsource-method-get-next-scene-tile-id)() const |
| [bool](class_bool.md#class-bool) | [get\_scene\_tile\_display\_placeholder](#class-tilesetscenescollectionsource-method-get-scene-tile-display-placeholder)(id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_scene\_tile\_id](#class-tilesetscenescollectionsource-method-get-scene-tile-id)(index: [int](class_int.md#class-int)) |
| [PackedScene](class_packedscene.md#class-packedscene) | [get\_scene\_tile\_scene](#class-tilesetscenescollectionsource-method-get-scene-tile-scene)(id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_scene\_tiles\_count](#class-tilesetscenescollectionsource-method-get-scene-tiles-count)() |
| [bool](class_bool.md#class-bool) | [has\_scene\_tile\_id](#class-tilesetscenescollectionsource-method-has-scene-tile-id)(id: [int](class_int.md#class-int)) |
| void | [remove\_scene\_tile](#class-tilesetscenescollectionsource-method-remove-scene-tile)(id: [int](class_int.md#class-int)) |
| void | [set\_scene\_tile\_display\_placeholder](#class-tilesetscenescollectionsource-method-set-scene-tile-display-placeholder)(id: [int](class_int.md#class-int), display\_placeholder: [bool](class_bool.md#class-bool)) |
| void | [set\_scene\_tile\_id](#class-tilesetscenescollectionsource-method-set-scene-tile-id)(id: [int](class_int.md#class-int), new\_id: [int](class_int.md#class-int)) |
| void | [set\_scene\_tile\_scene](#class-tilesetscenescollectionsource-method-set-scene-tile-scene)(id: [int](class_int.md#class-int), packed\_scene: [PackedScene](class_packedscene.md#class-packedscene)) |

* * *

## Method Descriptions

[int](class_int.md#class-int) **create\_scene\_tile**(packed\_scene: [PackedScene](class_packedscene.md#class-packedscene), id\_override: [int](class_int.md#class-int) = -1) [🔗](#class-tilesetscenescollectionsource-method-create-scene-tile)

Creates a scene-based tile out of the given scene.

Returns a newly generated unique ID.

* * *

[int](class_int.md#class-int) **get\_next\_scene\_tile\_id**() const [🔗](#class-tilesetscenescollectionsource-method-get-next-scene-tile-id)

Returns the scene ID a following call to [create\_scene\_tile()](#class-tilesetscenescollectionsource-method-create-scene-tile) would return.

* * *

[bool](class_bool.md#class-bool) **get\_scene\_tile\_display\_placeholder**(id: [int](class_int.md#class-int)) const [🔗](#class-tilesetscenescollectionsource-method-get-scene-tile-display-placeholder)

Returns whether the scene tile with `id` displays a placeholder in the editor.

* * *

[int](class_int.md#class-int) **get\_scene\_tile\_id**(index: [int](class_int.md#class-int)) [🔗](#class-tilesetscenescollectionsource-method-get-scene-tile-id)

Returns the scene tile ID of the scene tile at `index`.

* * *

[PackedScene](class_packedscene.md#class-packedscene) **get\_scene\_tile\_scene**(id: [int](class_int.md#class-int)) const [🔗](#class-tilesetscenescollectionsource-method-get-scene-tile-scene)

Returns the [PackedScene](class_packedscene.md#class-packedscene) resource of scene tile with `id`.

* * *

[int](class_int.md#class-int) **get\_scene\_tiles\_count**() [🔗](#class-tilesetscenescollectionsource-method-get-scene-tiles-count)

Returns the number or scene tiles this TileSet source has.

* * *

[bool](class_bool.md#class-bool) **has\_scene\_tile\_id**(id: [int](class_int.md#class-int)) [🔗](#class-tilesetscenescollectionsource-method-has-scene-tile-id)

Returns whether this TileSet source has a scene tile with `id`.

* * *

void **remove\_scene\_tile**(id: [int](class_int.md#class-int)) [🔗](#class-tilesetscenescollectionsource-method-remove-scene-tile)

Remove the scene tile with `id`.

* * *

void **set\_scene\_tile\_display\_placeholder**(id: [int](class_int.md#class-int), display\_placeholder: [bool](class_bool.md#class-bool)) [🔗](#class-tilesetscenescollectionsource-method-set-scene-tile-display-placeholder)

Sets whether or not the scene tile with `id` should display a placeholder in the editor. This might be useful for scenes that are not visible.

* * *

void **set\_scene\_tile\_id**(id: [int](class_int.md#class-int), new\_id: [int](class_int.md#class-int)) [🔗](#class-tilesetscenescollectionsource-method-set-scene-tile-id)

Changes a scene tile's ID from `id` to `new_id`. This will fail if there is already a tile with an ID equal to `new_id`.

* * *

void **set\_scene\_tile\_scene**(id: [int](class_int.md#class-int), packed\_scene: [PackedScene](class_packedscene.md#class-packedscene)) [🔗](#class-tilesetscenescollectionsource-method-set-scene-tile-scene)

Assigns a [PackedScene](class_packedscene.md#class-packedscene) resource to the scene tile with `id`. This will fail if the scene does not extend [CanvasItem](class_canvasitem.md#class-canvasitem), as positioning properties are needed to place the scene on the [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer).

[Previous](class_tilesetatlassource.md "TileSetAtlasSource") [Next](class_tilesetsource.md "TileSetSource")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tilesetatlassource.md "TileSetAtlasSource") [Next](class_tilesetsource.md "TileSetSource")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).