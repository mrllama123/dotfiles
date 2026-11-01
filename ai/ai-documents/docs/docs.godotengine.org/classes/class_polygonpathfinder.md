---
title: PolygonPathFinder — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_polygonpathfinder.html
crawled_at: "2026-08-13T10:22:12+12:00"
content_hash: 523cd885e70e4c0414708e30175df0db0f2e16b036b8f152b8795baf6e84ca13
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PolygonPathFinder

* * *

# PolygonPathFinder

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

There is currently no description for this class. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

## Methods

|     |     |
| --- | --- |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [find\_path](#class-polygonpathfinder-method-find-path)(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2)) |
| [Rect2](class_rect2.md#class-rect2) | [get\_bounds](#class-polygonpathfinder-method-get-bounds)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_closest\_point](#class-polygonpathfinder-method-get-closest-point)(point: [Vector2](class_vector2.md#class-vector2)) const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_intersections](#class-polygonpathfinder-method-get-intersections)(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2)) const |
| [float](class_float.md#class-float) | [get\_point\_penalty](#class-polygonpathfinder-method-get-point-penalty)(idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_point\_inside](#class-polygonpathfinder-method-is-point-inside)(point: [Vector2](class_vector2.md#class-vector2)) const |
| void | [set\_point\_penalty](#class-polygonpathfinder-method-set-point-penalty)(idx: [int](class_int.md#class-int), penalty: [float](class_float.md#class-float)) |
| void | [setup](#class-polygonpathfinder-method-setup)(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), connections: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |

* * *

## Method Descriptions

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **find\_path**(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-polygonpathfinder-method-find-path)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Rect2](class_rect2.md#class-rect2) **get\_bounds**() const [🔗](#class-polygonpathfinder-method-get-bounds)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector2](class_vector2.md#class-vector2) **get\_closest\_point**(point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-polygonpathfinder-method-get-closest-point)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_intersections**(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-polygonpathfinder-method-get-intersections)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **get\_point\_penalty**(idx: [int](class_int.md#class-int)) const [🔗](#class-polygonpathfinder-method-get-point-penalty)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **is\_point\_inside**(point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-polygonpathfinder-method-is-point-inside)

Returns `true` if `point` falls inside the polygon area.

GDScriptC#

```
var polygon_path_finder = PolygonPathFinder.new()
var points = [Vector2(0.0, 0.0), Vector2(1.0, 0.0), Vector2(0.0, 1.0)]
var connections = [0, 1, 1, 2, 2, 0]
polygon_path_finder.setup(points, connections)
print(polygon_path_finder.is_point_inside(Vector2(0.2, 0.2))) # Prints true
print(polygon_path_finder.is_point_inside(Vector2(1.0, 1.0))) # Prints false

```

```
var polygonPathFinder = new PolygonPathFinder();
Vector2[] points =
[
    new Vector2(0.0f, 0.0f),
    new Vector2(1.0f, 0.0f),
    new Vector2(0.0f, 1.0f)
];
int[] connections = [0, 1, 1, 2, 2, 0];
polygonPathFinder.Setup(points, connections);
GD.Print(polygonPathFinder.IsPointInside(new Vector2(0.2f, 0.2f))); // Prints True
GD.Print(polygonPathFinder.IsPointInside(new Vector2(1.0f, 1.0f))); // Prints False

```

* * *

void **set\_point\_penalty**(idx: [int](class_int.md#class-int), penalty: [float](class_float.md#class-float)) [🔗](#class-polygonpathfinder-method-set-point-penalty)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **setup**(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), connections: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-polygonpathfinder-method-setup)

Sets up **PolygonPathFinder** with an array of points that define the vertices of the polygon, and an array of indices that determine the edges of the polygon.

The length of `connections` must be even, returns an error if odd.

GDScriptC#

```
var polygon_path_finder = PolygonPathFinder.new()
var points = [Vector2(0.0, 0.0), Vector2(1.0, 0.0), Vector2(0.0, 1.0)]
var connections = [0, 1, 1, 2, 2, 0]
polygon_path_finder.setup(points, connections)

```

```
var polygonPathFinder = new PolygonPathFinder();
Vector2[] points =
[
    new Vector2(0.0f, 0.0f),
    new Vector2(1.0f, 0.0f),
    new Vector2(0.0f, 1.0f)
];
int[] connections = [0, 1, 1, 2, 2, 0];
polygonPathFinder.Setup(points, connections);

```

[Previous](class_polygonoccluder3d.md "PolygonOccluder3D") [Next](class_portablecompressedtexture2d.md "PortableCompressedTexture2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_polygonoccluder3d.md "PolygonOccluder3D") [Next](class_portablecompressedtexture2d.md "PortableCompressedTexture2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).