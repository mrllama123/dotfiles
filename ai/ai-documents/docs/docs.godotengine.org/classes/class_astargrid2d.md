---
title: AStarGrid2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_astargrid2d.html
crawled_at: "2026-08-13T10:22:21+12:00"
content_hash: 8c7327c784cfb2d96421af5246e2bba867a67eb07b2267941b3363d8281f9666
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AStarGrid2D

* * *

# AStarGrid2D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An implementation of A\* for finding the shortest path between two points on a partial 2D grid.

## Description

**AStarGrid2D** is a variant of [AStar2D](class_astar2d.md#class-astar2d) that is specialized for partial 2D grids. It is simpler to use because it doesn't require you to manually create points and connect them together. This class also supports multiple types of heuristics, modes for diagonal movement, and a jumping mode to speed up calculations.

To use **AStarGrid2D**, you only need to set the [region](#class-astargrid2d-property-region) of the grid, optionally set the [cell\_size](#class-astargrid2d-property-cell-size), and then call the [update()](#class-astargrid2d-method-update) method:

GDScriptC#

```
var astar_grid = AStarGrid2D.new()
astar_grid.region = Rect2i(0, 0, 32, 32)
astar_grid.cell_size = Vector2(16, 16)
astar_grid.update()
print(astar_grid.get_id_path(Vector2i(0, 0), Vector2i(3, 4))) # Prints [(0, 0), (1, 1), (2, 2), (3, 3), (3, 4)]
print(astar_grid.get_point_path(Vector2i(0, 0), Vector2i(3, 4))) # Prints [(0, 0), (16, 16), (32, 32), (48, 48), (48, 64)]

```

```
AStarGrid2D astarGrid = new AStarGrid2D();
astarGrid.Region = new Rect2I(0, 0, 32, 32);
astarGrid.CellSize = new Vector2I(16, 16);
astarGrid.Update();
GD.Print(astarGrid.GetIdPath(Vector2I.Zero, new Vector2I(3, 4))); // Prints [(0, 0), (1, 1), (2, 2), (3, 3), (3, 4)]
GD.Print(astarGrid.GetPointPath(Vector2I.Zero, new Vector2I(3, 4))); // Prints [(0, 0), (16, 16), (32, 32), (48, 48), (48, 64)]

```

To remove a point from the pathfinding grid, it must be set as "solid" with [set\_point\_solid()](#class-astargrid2d-method-set-point-solid).

## Tutorials

- [Grid-based Navigation with AStarGrid2D Demo](https://godotengine.org/asset-library/asset/2723)


## Properties

|     |     |     |
| --- | --- | --- |
| [CellShape](#enum-astargrid2d-cellshape) | [cell\_shape](#class-astargrid2d-property-cell-shape) | `0` |
| [Vector2](class_vector2.md#class-vector2) | [cell\_size](#class-astargrid2d-property-cell-size) | `Vector2(1, 1)` |
| [Heuristic](#enum-astargrid2d-heuristic) | [default\_compute\_heuristic](#class-astargrid2d-property-default-compute-heuristic) | `0` |
| [Heuristic](#enum-astargrid2d-heuristic) | [default\_estimate\_heuristic](#class-astargrid2d-property-default-estimate-heuristic) | `0` |
| [DiagonalMode](#enum-astargrid2d-diagonalmode) | [diagonal\_mode](#class-astargrid2d-property-diagonal-mode) | `0` |
| [bool](class_bool.md#class-bool) | [jumping\_enabled](#class-astargrid2d-property-jumping-enabled) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-astargrid2d-property-offset) | `Vector2(0, 0)` |
| [Rect2i](class_rect2i.md#class-rect2i) | [region](#class-astargrid2d-property-region) | `Rect2i(0, 0, 0, 0)` |
| [Vector2i](class_vector2i.md#class-vector2i) | [size](#class-astargrid2d-property-size) | `Vector2i(0, 0)` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [\_compute\_cost](#class-astargrid2d-private-method-compute-cost)(from\_id: [Vector2i](class_vector2i.md#class-vector2i), to\_id: [Vector2i](class_vector2i.md#class-vector2i)) virtualconst |
| [float](class_float.md#class-float) | [\_estimate\_cost](#class-astargrid2d-private-method-estimate-cost)(from\_id: [Vector2i](class_vector2i.md#class-vector2i), end\_id: [Vector2i](class_vector2i.md#class-vector2i)) virtualconst |
| void | [clear](#class-astargrid2d-method-clear)() |
| void | [fill\_solid\_region](#class-astargrid2d-method-fill-solid-region)(region: [Rect2i](class_rect2i.md#class-rect2i), solid: [bool](class_bool.md#class-bool) = true) |
| void | [fill\_weight\_scale\_region](#class-astargrid2d-method-fill-weight-scale-region)(region: [Rect2i](class_rect2i.md#class-rect2i), weight\_scale: [float](class_float.md#class-float)) |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [get\_id\_path](#class-astargrid2d-method-get-id-path)(from\_id: [Vector2i](class_vector2i.md#class-vector2i), to\_id: [Vector2i](class_vector2i.md#class-vector2i), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_point\_data\_in\_region](#class-astargrid2d-method-get-point-data-in-region)(region: [Rect2i](class_rect2i.md#class-rect2i)) const |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_point\_path](#class-astargrid2d-method-get-point-path)(from\_id: [Vector2i](class_vector2i.md#class-vector2i), to\_id: [Vector2i](class_vector2i.md#class-vector2i), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) |
| [Vector2](class_vector2.md#class-vector2) | [get\_point\_position](#class-astargrid2d-method-get-point-position)(id: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [float](class_float.md#class-float) | [get\_point\_weight\_scale](#class-astargrid2d-method-get-point-weight-scale)(id: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [bool](class_bool.md#class-bool) | [is\_dirty](#class-astargrid2d-method-is-dirty)() const |
| [bool](class_bool.md#class-bool) | [is\_in\_bounds](#class-astargrid2d-method-is-in-bounds)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_in\_boundsv](#class-astargrid2d-method-is-in-boundsv)(id: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [bool](class_bool.md#class-bool) | [is\_point\_solid](#class-astargrid2d-method-is-point-solid)(id: [Vector2i](class_vector2i.md#class-vector2i)) const |
| void | [set\_point\_solid](#class-astargrid2d-method-set-point-solid)(id: [Vector2i](class_vector2i.md#class-vector2i), solid: [bool](class_bool.md#class-bool) = true) |
| void | [set\_point\_weight\_scale](#class-astargrid2d-method-set-point-weight-scale)(id: [Vector2i](class_vector2i.md#class-vector2i), weight\_scale: [float](class_float.md#class-float)) |
| void | [update](#class-astargrid2d-method-update)() |

* * *

## Enumerations

enum **Heuristic**: [🔗](#enum-astargrid2d-heuristic)

[Heuristic](#enum-astargrid2d-heuristic) **HEURISTIC\_EUCLIDEAN** = `0`

The [Euclidean heuristic](https://en.wikipedia.org/wiki/Euclidean_distance) to be used for the pathfinding using the following formula:

```
dx = abs(to_id.x - from_id.x)
dy = abs(to_id.y - from_id.y)
result = sqrt(dx * dx + dy * dy)

```

**Note:** This is also the internal heuristic used in [AStar3D](class_astar3d.md#class-astar3d) and [AStar2D](class_astar2d.md#class-astar2d) by default (with the inclusion of possible z-axis coordinate).

[Heuristic](#enum-astargrid2d-heuristic) **HEURISTIC\_MANHATTAN** = `1`

The [Manhattan heuristic](https://en.wikipedia.org/wiki/Taxicab_geometry) to be used for the pathfinding using the following formula:

```
dx = abs(to_id.x - from_id.x)
dy = abs(to_id.y - from_id.y)
result = dx + dy

```

**Note:** This heuristic is intended to be used with 4-side orthogonal movements, provided by setting the [diagonal\_mode](#class-astargrid2d-property-diagonal-mode) to [DIAGONAL\_MODE\_NEVER](#class-astargrid2d-constant-diagonal-mode-never).

[Heuristic](#enum-astargrid2d-heuristic) **HEURISTIC\_OCTILE** = `2`

The Octile heuristic to be used for the pathfinding using the following formula:

```
dx = abs(to_id.x - from_id.x)
dy = abs(to_id.y - from_id.y)
f = sqrt(2) - 1
result = (dx < dy) ? f * dx + dy : f * dy + dx;

```

[Heuristic](#enum-astargrid2d-heuristic) **HEURISTIC\_CHEBYSHEV** = `3`

The [Chebyshev heuristic](https://en.wikipedia.org/wiki/Chebyshev_distance) to be used for the pathfinding using the following formula:

```
dx = abs(to_id.x - from_id.x)
dy = abs(to_id.y - from_id.y)
result = max(dx, dy)

```

[Heuristic](#enum-astargrid2d-heuristic) **HEURISTIC\_MAX** = `4`

Represents the size of the [Heuristic](#enum-astargrid2d-heuristic) enum.

* * *

enum **DiagonalMode**: [🔗](#enum-astargrid2d-diagonalmode)

[DiagonalMode](#enum-astargrid2d-diagonalmode) **DIAGONAL\_MODE\_ALWAYS** = `0`

The pathfinding algorithm will ignore solid neighbors around the target cell and allow passing using diagonals.

[DiagonalMode](#enum-astargrid2d-diagonalmode) **DIAGONAL\_MODE\_NEVER** = `1`

The pathfinding algorithm will ignore all diagonals and the way will be always orthogonal.

[DiagonalMode](#enum-astargrid2d-diagonalmode) **DIAGONAL\_MODE\_AT\_LEAST\_ONE\_WALKABLE** = `2`

The pathfinding algorithm will avoid using diagonals if at least two obstacles have been placed around the neighboring cells of the specific path segment.

[DiagonalMode](#enum-astargrid2d-diagonalmode) **DIAGONAL\_MODE\_ONLY\_IF\_NO\_OBSTACLES** = `3`

The pathfinding algorithm will avoid using diagonals if any obstacle has been placed around the neighboring cells of the specific path segment.

[DiagonalMode](#enum-astargrid2d-diagonalmode) **DIAGONAL\_MODE\_MAX** = `4`

Represents the size of the [DiagonalMode](#enum-astargrid2d-diagonalmode) enum.

* * *

enum **CellShape**: [🔗](#enum-astargrid2d-cellshape)

[CellShape](#enum-astargrid2d-cellshape) **CELL\_SHAPE\_SQUARE** = `0`

Rectangular cell shape.

[CellShape](#enum-astargrid2d-cellshape) **CELL\_SHAPE\_ISOMETRIC\_RIGHT** = `1`

Diamond cell shape (for isometric look). Cell coordinates layout where the horizontal axis goes up-right, and the vertical one goes down-right.

[CellShape](#enum-astargrid2d-cellshape) **CELL\_SHAPE\_ISOMETRIC\_DOWN** = `2`

Diamond cell shape (for isometric look). Cell coordinates layout where the horizontal axis goes down-right, and the vertical one goes down-left.

[CellShape](#enum-astargrid2d-cellshape) **CELL\_SHAPE\_MAX** = `3`

Represents the size of the [CellShape](#enum-astargrid2d-cellshape) enum.

* * *

## Property Descriptions

[CellShape](#enum-astargrid2d-cellshape) **cell\_shape** = `0` [🔗](#class-astargrid2d-property-cell-shape)

- void **set\_cell\_shape**(value: [CellShape](#enum-astargrid2d-cellshape))

- [CellShape](#enum-astargrid2d-cellshape) **get\_cell\_shape**()


The cell shape. Affects how the positions are placed in the grid. If changed, [update()](#class-astargrid2d-method-update) needs to be called before finding the next path.

* * *

[Vector2](class_vector2.md#class-vector2) **cell\_size** = `Vector2(1, 1)` [🔗](#class-astargrid2d-property-cell-size)

- void **set\_cell\_size**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_cell\_size**()


The size of the point cell which will be applied to calculate the resulting point position returned by [get\_point\_path()](#class-astargrid2d-method-get-point-path). If changed, [update()](#class-astargrid2d-method-update) needs to be called before finding the next path.

* * *

[Heuristic](#enum-astargrid2d-heuristic) **default\_compute\_heuristic** = `0` [🔗](#class-astargrid2d-property-default-compute-heuristic)

- void **set\_default\_compute\_heuristic**(value: [Heuristic](#enum-astargrid2d-heuristic))

- [Heuristic](#enum-astargrid2d-heuristic) **get\_default\_compute\_heuristic**()


The default [Heuristic](#enum-astargrid2d-heuristic) which will be used to calculate the cost between two points if [\_compute\_cost()](#class-astargrid2d-private-method-compute-cost) was not overridden.

* * *

[Heuristic](#enum-astargrid2d-heuristic) **default\_estimate\_heuristic** = `0` [🔗](#class-astargrid2d-property-default-estimate-heuristic)

- void **set\_default\_estimate\_heuristic**(value: [Heuristic](#enum-astargrid2d-heuristic))

- [Heuristic](#enum-astargrid2d-heuristic) **get\_default\_estimate\_heuristic**()


The default [Heuristic](#enum-astargrid2d-heuristic) which will be used to calculate the cost between the point and the end point if [\_estimate\_cost()](#class-astargrid2d-private-method-estimate-cost) was not overridden.

* * *

[DiagonalMode](#enum-astargrid2d-diagonalmode) **diagonal\_mode** = `0` [🔗](#class-astargrid2d-property-diagonal-mode)

- void **set\_diagonal\_mode**(value: [DiagonalMode](#enum-astargrid2d-diagonalmode))

- [DiagonalMode](#enum-astargrid2d-diagonalmode) **get\_diagonal\_mode**()


A specific [DiagonalMode](#enum-astargrid2d-diagonalmode) mode which will force the path to avoid or accept the specified diagonals.

* * *

[bool](class_bool.md#class-bool) **jumping\_enabled** = `false` [🔗](#class-astargrid2d-property-jumping-enabled)

- void **set\_jumping\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_jumping\_enabled**()


Enables or disables jumping to skip up the intermediate points and speeds up the searching algorithm.

**Note:** Currently, toggling it on disables the consideration of weight scaling in pathfinding.

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-astargrid2d-property-offset)

- void **set\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_offset**()


The offset of the grid which will be applied to calculate the resulting point position returned by [get\_point\_path()](#class-astargrid2d-method-get-point-path). If changed, [update()](#class-astargrid2d-method-update) needs to be called before finding the next path.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **region** = `Rect2i(0, 0, 0, 0)` [🔗](#class-astargrid2d-property-region)

- void **set\_region**(value: [Rect2i](class_rect2i.md#class-rect2i))

- [Rect2i](class_rect2i.md#class-rect2i) **get\_region**()


The region of grid cells available for pathfinding. If changed, [update()](#class-astargrid2d-method-update) needs to be called before finding the next path.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **size** = `Vector2i(0, 0)` [🔗](#class-astargrid2d-property-size)

- void **set\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_size**()


**Deprecated:** Use [region](#class-astargrid2d-property-region) instead.

The size of the grid (number of cells of size [cell\_size](#class-astargrid2d-property-cell-size) on each axis). If changed, [update()](#class-astargrid2d-method-update) needs to be called before finding the next path.

* * *

## Method Descriptions

[float](class_float.md#class-float) **\_compute\_cost**(from\_id: [Vector2i](class_vector2i.md#class-vector2i), to\_id: [Vector2i](class_vector2i.md#class-vector2i)) virtualconst [🔗](#class-astargrid2d-private-method-compute-cost)

Called when computing the cost between two connected points.

Note that this function is hidden in the default **AStarGrid2D** class.

* * *

[float](class_float.md#class-float) **\_estimate\_cost**(from\_id: [Vector2i](class_vector2i.md#class-vector2i), end\_id: [Vector2i](class_vector2i.md#class-vector2i)) virtualconst [🔗](#class-astargrid2d-private-method-estimate-cost)

Called when estimating the cost between a point and the path's ending point.

Note that this function is hidden in the default **AStarGrid2D** class.

* * *

void **clear**() [🔗](#class-astargrid2d-method-clear)

Clears the grid and sets the [region](#class-astargrid2d-property-region) to `Rect2i(0, 0, 0, 0)`.

* * *

void **fill\_solid\_region**(region: [Rect2i](class_rect2i.md#class-rect2i), solid: [bool](class_bool.md#class-bool) = true) [🔗](#class-astargrid2d-method-fill-solid-region)

Fills the given `region` on the grid with the specified value for the solid flag.

**Note:** Calling [update()](#class-astargrid2d-method-update) is not needed after the call of this function.

* * *

void **fill\_weight\_scale\_region**(region: [Rect2i](class_rect2i.md#class-rect2i), weight\_scale: [float](class_float.md#class-float)) [🔗](#class-astargrid2d-method-fill-weight-scale-region)

Fills the given `region` on the grid with the specified value for the weight scale.

**Note:** Calling [update()](#class-astargrid2d-method-update) is not needed after the call of this function.

* * *

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **get\_id\_path**(from\_id: [Vector2i](class_vector2i.md#class-vector2i), to\_id: [Vector2i](class_vector2i.md#class-vector2i), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) [🔗](#class-astargrid2d-method-get-id-path)

Returns an array with the IDs of the points that form the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.

If there is no valid path to the target, and `allow_partial_path` is `true`, returns a path to the point closest to the target that can be reached.

**Note:** When `allow_partial_path` is `true` and `to_id` is solid the search may take an unusually long time to finish.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_point\_data\_in\_region**(region: [Rect2i](class_rect2i.md#class-rect2i)) const [🔗](#class-astargrid2d-method-get-point-data-in-region)

Returns an array of dictionaries with point data ( `id`: [Vector2i](class_vector2i.md#class-vector2i), `position`: [Vector2](class_vector2.md#class-vector2), `solid`: [bool](class_bool.md#class-bool), `weight_scale`: [float](class_float.md#class-float)) within a `region`.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_point\_path**(from\_id: [Vector2i](class_vector2i.md#class-vector2i), to\_id: [Vector2i](class_vector2i.md#class-vector2i), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) [🔗](#class-astargrid2d-method-get-point-path)

Returns an array with the points that are in the path found by **AStarGrid2D** between the given points. The array is ordered from the starting point to the ending point of the path.

If there is no valid path to the target, and `allow_partial_path` is `true`, returns a path to the point closest to the target that can be reached.

**Note:** This method is not thread-safe; it can only be used from a single [Thread](class_thread.md#class-thread) at a given time. Consider using [Mutex](class_mutex.md#class-mutex) to ensure exclusive access to one thread to avoid race conditions.

Additionally, when `allow_partial_path` is `true` and `to_id` is solid the search may take an unusually long time to finish.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_point\_position**(id: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-astargrid2d-method-get-point-position)

Returns the position of the point associated with the given `id`.

* * *

[float](class_float.md#class-float) **get\_point\_weight\_scale**(id: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-astargrid2d-method-get-point-weight-scale)

Returns the weight scale of the point associated with the given `id`.

* * *

[bool](class_bool.md#class-bool) **is\_dirty**() const [🔗](#class-astargrid2d-method-is-dirty)

Indicates that the grid parameters were changed and [update()](#class-astargrid2d-method-update) needs to be called.

* * *

[bool](class_bool.md#class-bool) **is\_in\_bounds**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) const [🔗](#class-astargrid2d-method-is-in-bounds)

Returns `true` if the `x` and `y` is a valid grid coordinate (id), i.e. if it is inside [region](#class-astargrid2d-property-region). Equivalent to `region.has_point(Vector2i(x, y))`.

* * *

[bool](class_bool.md#class-bool) **is\_in\_boundsv**(id: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-astargrid2d-method-is-in-boundsv)

Returns `true` if the `id` vector is a valid grid coordinate, i.e. if it is inside [region](#class-astargrid2d-property-region). Equivalent to `region.has_point(id)`.

* * *

[bool](class_bool.md#class-bool) **is\_point\_solid**(id: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-astargrid2d-method-is-point-solid)

Returns `true` if a point is disabled for pathfinding. By default, all points are enabled.

* * *

void **set\_point\_solid**(id: [Vector2i](class_vector2i.md#class-vector2i), solid: [bool](class_bool.md#class-bool) = true) [🔗](#class-astargrid2d-method-set-point-solid)

Disables or enables the specified point for pathfinding. Useful for making an obstacle. By default, all points are enabled.

**Note:** Calling [update()](#class-astargrid2d-method-update) is not needed after the call of this function.

* * *

void **set\_point\_weight\_scale**(id: [Vector2i](class_vector2i.md#class-vector2i), weight\_scale: [float](class_float.md#class-float)) [🔗](#class-astargrid2d-method-set-point-weight-scale)

Sets the `weight_scale` for the point with the given `id`. The `weight_scale` is multiplied by the result of [\_compute\_cost()](#class-astargrid2d-private-method-compute-cost) when determining the overall cost of traveling across a segment from a neighboring point to this point.

**Note:** Calling [update()](#class-astargrid2d-method-update) is not needed after the call of this function.

* * *

void **update**() [🔗](#class-astargrid2d-method-update)

Updates the internal state of the grid according to the parameters to prepare it to search the path. Needs to be called if parameters like [region](#class-astargrid2d-property-region), [cell\_size](#class-astargrid2d-property-cell-size) or [offset](#class-astargrid2d-property-offset) are changed. [is\_dirty()](#class-astargrid2d-method-is-dirty) will return `true` if this is the case and this needs to be called.

**Note:** All point data (solidity and weight scale) will be cleared.

[Previous](class_astar3d.md "AStar3D") [Next](class_audioeffectinstance.md "AudioEffectInstance")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_astar3d.md "AStar3D") [Next](class_audioeffectinstance.md "AudioEffectInstance")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).