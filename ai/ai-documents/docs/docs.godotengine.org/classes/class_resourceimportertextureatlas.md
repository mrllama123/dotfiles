---
title: ResourceImporterTextureAtlas — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimportertextureatlas.html
crawled_at: "2026-08-13T10:23:15+12:00"
content_hash: 05371848bd95287f85cdd5c107eaa3e898f779a8b34319df07f9ea611b806b3d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterTextureAtlas

* * *

# ResourceImporterTextureAtlas

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports a collection of textures from a PNG image into an optimized [AtlasTexture](class_atlastexture.md#class-atlastexture) for 2D rendering.

## Description

This imports a collection of textures from a PNG image into an [AtlasTexture](class_atlastexture.md#class-atlastexture) or 2D [ArrayMesh](class_arraymesh.md#class-arraymesh). This can be used to save memory when importing 2D animations from spritesheets. Texture atlases are only supported in 2D rendering, not 3D. See also [ResourceImporterTexture](class_resourceimportertexture.md#class-resourceimportertexture) and [ResourceImporterLayeredTexture](class_resourceimporterlayeredtexture.md#class-resourceimporterlayeredtexture).

**Note:** **ResourceImporterTextureAtlas** does not handle importing [TileSetAtlasSource](class_tilesetatlassource.md#class-tilesetatlassource), which is created using the [TileSet](class_tileset.md#class-tileset) editor instead.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [atlas\_file](#class-resourceimportertextureatlas-property-atlas-file) | `""` |
| [bool](class_bool.md#class-bool) | [crop\_to\_region](#class-resourceimportertextureatlas-property-crop-to-region) | `false` |
| [int](class_int.md#class-int) | [import\_mode](#class-resourceimportertextureatlas-property-import-mode) | `0` |
| [bool](class_bool.md#class-bool) | [trim\_alpha\_border\_from\_region](#class-resourceimportertextureatlas-property-trim-alpha-border-from-region) | `true` |

* * *

## Property Descriptions

[String](class_string.md#class-string) **atlas\_file** = `""` [🔗](#class-resourceimportertextureatlas-property-atlas-file)

Path to the atlas spritesheet. This _must_ be set to valid path to a PNG image. Otherwise, the atlas will fail to import.

* * *

[bool](class_bool.md#class-bool) **crop\_to\_region** = `false` [🔗](#class-resourceimportertextureatlas-property-crop-to-region)

If `true`, discards empty areas from the atlas. This only affects final sprite positioning, not storage. See also [trim\_alpha\_border\_from\_region](#class-resourceimportertextureatlas-property-trim-alpha-border-from-region).

**Note:** Only effective if [import\_mode](#class-resourceimportertextureatlas-property-import-mode) is **Region**.

* * *

[int](class_int.md#class-int) **import\_mode** = `0` [🔗](#class-resourceimportertextureatlas-property-import-mode)

**Region:** Imports the atlas in an [AtlasTexture](class_atlastexture.md#class-atlastexture) resource, which is rendered as a rectangle. This is fast to render, but transparent areas still have to be rendered if they can't be trimmed effectively by [trim\_alpha\_border\_from\_region](#class-resourceimportertextureatlas-property-trim-alpha-border-from-region). This can reduce performance when rendering large sprites on screen.

**Mesh:** Imports the atlas as an [ArrayMesh](class_arraymesh.md#class-arraymesh) resource, keeping the original bitmap visible (but rendered as a polygon). This can be used to reduce fill rate when rendering large transparent sprites, at the cost of slower rendering if there are little to no transparent areas in the sprite.

* * *

[bool](class_bool.md#class-bool) **trim\_alpha\_border\_from\_region** = `true` [🔗](#class-resourceimportertextureatlas-property-trim-alpha-border-from-region)

If `true`, trims the region to exclude fully transparent pixels using a clipping rectangle (which is never rotated). This can be used to save memory. See also [crop\_to\_region](#class-resourceimportertextureatlas-property-crop-to-region).

**Note:** Only effective if [import\_mode](#class-resourceimportertextureatlas-property-import-mode) is **Region**.

[Previous](class_resourceimportertexture.md "ResourceImporterTexture") [Next](class_resourceimporterwav.md "ResourceImporterWAV")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimportertexture.md "ResourceImporterTexture") [Next](class_resourceimporterwav.md "ResourceImporterWAV")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).