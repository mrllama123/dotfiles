---
title: HeightMapShape3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_heightmapshape3d.html
crawled_at: "2026-08-13T10:40:57+12:00"
content_hash: 6cd92d0b74a1fe13aed1df5d77fb01aa9ac1041d51b84e58fe9a4b4a84bb936a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - HeightMapShape3D

* * *

# HeightMapShape3D

**Inherits:** [Shape3D](class_shape3d.md#class-shape3d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 3D height map shape used for physics collision.

## Description

A 3D heightmap shape, intended for use in physics. Usually used to provide a shape for a [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d). This type is most commonly used for terrain with vertices placed in a fixed width grid. Due to the nature of the heightmap, it cannot be used to model overhangs or caves, which would require multiple vertices at the same vertical location. Holes can be punched through the collision by assigning [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) to the height of the desired vertices (this is supported in both GodotPhysics3D and Jolt Physics). You could then insert meshes with their own separate collision to provide overhangs, caves, and so on.

**Performance:** **HeightMapShape3D** is faster to check collisions against than [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d), but it is significantly slower than primitive shapes like [BoxShape3D](class_boxshape3d.md#class-boxshape3d).

A heightmap collision shape can also be built by using an [Image](class_image.md#class-image) reference:

GDScript

```
var heightmap_texture = ResourceLoader.load("res://heightmap_image.exr")
var heightmap_image = heightmap_texture.get_image()
heightmap_image.convert(Image.FORMAT_RF)

var height_min = 0.0
var height_max = 10.0

update_map_data_from_image(heightmap_image, height_min, height_max)

```

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [map\_data](#class-heightmapshape3d-property-map-data) | `PackedFloat32Array(0, 0, 0, 0)` |
| [int](class_int.md#class-int) | [map\_depth](#class-heightmapshape3d-property-map-depth) | `2` |
| [int](class_int.md#class-int) | [map\_width](#class-heightmapshape3d-property-map-width) | `2` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_max\_height](#class-heightmapshape3d-method-get-max-height)() const |
| [float](class_float.md#class-float) | [get\_min\_height](#class-heightmapshape3d-method-get-min-height)() const |
| void | [update\_map\_data\_from\_image](#class-heightmapshape3d-method-update-map-data-from-image)(image: [Image](class_image.md#class-image), height\_min: [float](class_float.md#class-float), height\_max: [float](class_float.md#class-float)) |

* * *

## Property Descriptions

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **map\_data** = `PackedFloat32Array(0, 0, 0, 0)` [🔗](#class-heightmapshape3d-property-map-data)

- void **set\_map\_data**(value: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array))

- [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_map\_data**()


Height map data. The array's size must be equal to [map\_width](#class-heightmapshape3d-property-map-width) multiplied by [map\_depth](#class-heightmapshape3d-property-map-depth).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) for more details.

* * *

[int](class_int.md#class-int) **map\_depth** = `2` [🔗](#class-heightmapshape3d-property-map-depth)

- void **set\_map\_depth**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_map\_depth**()


Number of vertices in the depth of the height map. Changing this will resize the [map\_data](#class-heightmapshape3d-property-map-data).

* * *

[int](class_int.md#class-int) **map\_width** = `2` [🔗](#class-heightmapshape3d-property-map-width)

- void **set\_map\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_map\_width**()


Number of vertices in the width of the height map. Changing this will resize the [map\_data](#class-heightmapshape3d-property-map-data).

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_max\_height**() const [🔗](#class-heightmapshape3d-method-get-max-height)

Returns the largest height value found in [map\_data](#class-heightmapshape3d-property-map-data). Recalculates only when [map\_data](#class-heightmapshape3d-property-map-data) changes.

* * *

[float](class_float.md#class-float) **get\_min\_height**() const [🔗](#class-heightmapshape3d-method-get-min-height)

Returns the smallest height value found in [map\_data](#class-heightmapshape3d-property-map-data). Recalculates only when [map\_data](#class-heightmapshape3d-property-map-data) changes.

* * *

void **update\_map\_data\_from\_image**(image: [Image](class_image.md#class-image), height\_min: [float](class_float.md#class-float), height\_max: [float](class_float.md#class-float)) [🔗](#class-heightmapshape3d-method-update-map-data-from-image)

Updates [map\_data](#class-heightmapshape3d-property-map-data) with data read from an [Image](class_image.md#class-image) reference. Automatically resizes heightmap [map\_width](#class-heightmapshape3d-property-map-width) and [map\_depth](#class-heightmapshape3d-property-map-depth) to fit the full image width and height.

The image needs to be in either [Image.FORMAT\_RF](class_image.md#class-image-constant-format-rf) (32 bit), [Image.FORMAT\_RH](class_image.md#class-image-constant-format-rh) (16 bit), or [Image.FORMAT\_R8](class_image.md#class-image-constant-format-r8) (8 bit).

Each image pixel is read in as a float on the range from `0.0` (black pixel) to `1.0` (white pixel). This range value gets remapped to `height_min` and `height_max` to form the final height value.

**Note:** Using a heightmap with 16-bit or 32-bit data, stored in EXR or HDR format is recommended. Using 8-bit height data, or a format like PNG that Godot imports as 8-bit, will result in a terraced terrain.

[Previous](class_gradienttexture2d.md "GradientTexture2D") [Next](class_image.md "Image")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gradienttexture2d.md "GradientTexture2D") [Next](class_image.md "Image")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).