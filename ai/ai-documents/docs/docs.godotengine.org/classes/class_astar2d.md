---
title: AStar2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_astar2d.html
crawled_at: "2026-08-13T10:41:51+12:00"
content_hash: f7130ca4abec8a3a38eed1da9c2c4d87515206ddf5b3927ab1ed02cc7bc82fb0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AStar2D

* * *

# AStar2D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An implementation of A\* for finding the shortest path between two vertices on a connected graph in 2D space.

## Description

An implementation of the A\* algorithm, used to find the shortest path between two vertices on a connected graph in 2D space.

See [AStar3D](class_astar3d.md#class-astar3d) for a more thorough explanation on how to use this class. **AStar2D** is a wrapper for [AStar3D](class_astar3d.md#class-astar3d) that enforces 2D coordinates.

## Tutorials

- [Grid-based Navigation with AStarGrid2D Demo](https://godotengine.org/asset-library/asset/2723)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [neighbor\_filter\_enabled](#class-astar2d-property-neighbor-filter-enabled) | `false` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [\_compute\_cost](#class-astar2d-private-method-compute-cost)(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int)) virtualconst |
| [float](class_float.md#class-float) | [\_estimate\_cost](#class-astar2d-private-method-estimate-cost)(from\_id: [int](class_int.md#class-int), end\_id: [int](class_int.md#class-int)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_filter\_neighbor](#class-astar2d-private-method-filter-neighbor)(from\_id: [int](class_int.md#class-int), neighbor\_id: [int](class_int.md#class-int)) virtualconst |
| void | [add\_point](#class-astar2d-method-add-point)(id: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2), weight\_scale: [float](class_float.md#class-float) = 1.0) |
| [bool](class_bool.md#class-bool) | [are\_points\_connected](#class-astar2d-method-are-points-connected)(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) const |
| void | [clear](#class-astar2d-method-clear)() |
| void | [connect\_points](#class-astar2d-method-connect-points)(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) |
| void | [disconnect\_points](#class-astar2d-method-disconnect-points)(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) |
| [int](class_int.md#class-int) | [get\_available\_point\_id](#class-astar2d-method-get-available-point-id)() const |
| [int](class_int.md#class-int) | [get\_closest\_point](#class-astar2d-method-get-closest-point)(to\_position: [Vector2](class_vector2.md#class-vector2), include\_disabled: [bool](class_bool.md#class-bool) = false) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_closest\_position\_in\_segment](#class-astar2d-method-get-closest-position-in-segment)(to\_position: [Vector2](class_vector2.md#class-vector2)) const |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [get\_id\_path](#class-astar2d-method-get-id-path)(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) |
| [int](class_int.md#class-int) | [get\_point\_capacity](#class-astar2d-method-get-point-capacity)() const |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [get\_point\_connections](#class-astar2d-method-get-point-connections)(id: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_point\_count](#class-astar2d-method-get-point-count)() const |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [get\_point\_ids](#class-astar2d-method-get-point-ids)() |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_point\_path](#class-astar2d-method-get-point-path)(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) |
| [Vector2](class_vector2.md#class-vector2) | [get\_point\_position](#class-astar2d-method-get-point-position)(id: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_point\_weight\_scale](#class-astar2d-method-get-point-weight-scale)(id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_point](#class-astar2d-method-has-point)(id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_point\_disabled](#class-astar2d-method-is-point-disabled)(id: [int](class_int.md#class-int)) const |
| void | [remove\_point](#class-astar2d-method-remove-point)(id: [int](class_int.md#class-int)) |
| void | [reserve\_space](#class-astar2d-method-reserve-space)(num\_nodes: [int](class_int.md#class-int)) |
| void | [set\_point\_disabled](#class-astar2d-method-set-point-disabled)(id: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool) = true) |
| void | [set\_point\_position](#class-astar2d-method-set-point-position)(id: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_point\_weight\_scale](#class-astar2d-method-set-point-weight-scale)(id: [int](class_int.md#class-int), weight\_scale: [float](class_float.md#class-float)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **neighbor\_filter\_enabled** = `false` [🔗](#class-astar2d-property-neighbor-filter-enabled)

- void **set\_neighbor\_filter\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_neighbor\_filter\_enabled**()


If `true` enables the filtering of neighbors via [\_filter\_neighbor()](#class-astar2d-private-method-filter-neighbor).

* * *

## Method Descriptions

[float](class_float.md#class-float) **\_compute\_cost**(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int)) virtualconst [🔗](#class-astar2d-private-method-compute-cost)

Called when computing the cost between two connected points.

Note that this function is hidden in the default **AStar2D** class.

* * *

[float](class_float.md#class-float) **\_estimate\_cost**(from\_id: [int](class_int.md#class-int), end\_id: [int](class_int.md#class-int)) virtualconst [🔗](#class-astar2d-private-method-estimate-cost)

Called when estimating the cost between a point and the path's ending point.

Note that this function is hidden in the default **AStar2D** class.

* * *

[bool](class_bool.md#class-bool) **\_filter\_neighbor**(from\_id: [int](class_int.md#class-int), neighbor\_id: [int](class_int.md#class-int)) virtualconst [🔗](#class-astar2d-private-method-filter-neighbor)

Called when neighboring enters processing and if [neighbor\_filter\_enabled](#class-astar2d-property-neighbor-filter-enabled) is `true`. If `true` is returned the point will not be processed.

Note that this function is hidden in the default **AStar2D** class.

* * *

void **add\_point**(id: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2), weight\_scale: [float](class_float.md#class-float) = 1.0) [🔗](#class-astar2d-method-add-point)

Adds a new point at the given position with the given identifier. The `id` must be 0 or larger, and the `weight_scale` must be 0.0 or greater.

The `weight_scale` is multiplied by the result of [\_compute\_cost()](#class-astar2d-private-method-compute-cost) when determining the overall cost of traveling across a segment from a neighboring point to this point. Thus, all else being equal, the algorithm prefers points with lower `weight_scale` s to form a path.

GDScriptC#

```
var astar = AStar2D.new()
astar.add_point(1, Vector2(1, 0), 4) # Adds the point (1, 0) with weight_scale 4 and id 1

```

```
var astar = new AStar2D();
astar.AddPoint(1, new Vector2(1, 0), 4); // Adds the point (1, 0) with weight_scale 4 and id 1

```

If there already exists a point for the given `id`, its position and weight scale are updated to the given values.

* * *

[bool](class_bool.md#class-bool) **are\_points\_connected**(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) const [🔗](#class-astar2d-method-are-points-connected)

Returns whether there is a connection/segment between the given points. If `bidirectional` is `false`, returns whether movement from `id` to `to_id` is possible through this segment.

* * *

void **clear**() [🔗](#class-astar2d-method-clear)

Clears all the points and segments.

* * *

void **connect\_points**(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) [🔗](#class-astar2d-method-connect-points)

Creates a segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is allowed, not the reverse direction.

GDScriptC#

```
var astar = AStar2D.new()
astar.add_point(1, Vector2(1, 1))
astar.add_point(2, Vector2(0, 5))
astar.connect_points(1, 2, false)

```

```
var astar = new AStar2D();
astar.AddPoint(1, new Vector2(1, 1));
astar.AddPoint(2, new Vector2(0, 5));
astar.ConnectPoints(1, 2, false);

```

* * *

void **disconnect\_points**(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) [🔗](#class-astar2d-method-disconnect-points)

Deletes the segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is prevented, and a unidirectional segment possibly remains.

* * *

[int](class_int.md#class-int) **get\_available\_point\_id**() const [🔗](#class-astar2d-method-get-available-point-id)

Returns the next available point ID with no point associated to it.

* * *

[int](class_int.md#class-int) **get\_closest\_point**(to\_position: [Vector2](class_vector2.md#class-vector2), include\_disabled: [bool](class_bool.md#class-bool) = false) const [🔗](#class-astar2d-method-get-closest-point)

Returns the ID of the closest point to `to_position`, optionally taking disabled points into account. Returns `-1` if there are no points in the points pool.

**Note:** If several points are the closest to `to_position`, the one with the smallest ID will be returned, ensuring a deterministic result.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_closest\_position\_in\_segment**(to\_position: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-astar2d-method-get-closest-position-in-segment)

Returns the closest position to `to_position` that resides inside a segment between two connected points.

GDScriptC#

```
var astar = AStar2D.new()
astar.add_point(1, Vector2(0, 0))
astar.add_point(2, Vector2(0, 5))
astar.connect_points(1, 2)
var res = astar.get_closest_position_in_segment(Vector2(3, 3)) # Returns (0, 3)

```

```
var astar = new AStar2D();
astar.AddPoint(1, new Vector2(0, 0));
astar.AddPoint(2, new Vector2(0, 5));
astar.ConnectPoints(1, 2);
Vector2 res = astar.GetClosestPositionInSegment(new Vector2(3, 3)); // Returns (0, 3)

```

The result is in the segment that goes from `y = 0` to `y = 5`. It's the closest position in the segment to the given point.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **get\_id\_path**(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) [🔗](#class-astar2d-method-get-id-path)

Returns an array with the IDs of the points that form the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.

If there is no valid path to the target, and `allow_partial_path` is `true`, returns a path to the point closest to the target that can be reached.

**Note:** When `allow_partial_path` is `true` and `to_id` is disabled the search may take an unusually long time to finish.

GDScriptC#

```
var astar = AStar2D.new()
astar.add_point(1, Vector2(0, 0))
astar.add_point(2, Vector2(0, 1), 1) # Default weight is 1
astar.add_point(3, Vector2(1, 1))
astar.add_point(4, Vector2(2, 0))

astar.connect_points(1, 2, false)
astar.connect_points(2, 3, false)
astar.connect_points(4, 3, false)
astar.connect_points(1, 4, false)

var res = astar.get_id_path(1, 3) # Returns [1, 2, 3]

```

```
var astar = new AStar2D();
astar.AddPoint(1, new Vector2(0, 0));
astar.AddPoint(2, new Vector2(0, 1), 1); // Default weight is 1
astar.AddPoint(3, new Vector2(1, 1));
astar.AddPoint(4, new Vector2(2, 0));

astar.ConnectPoints(1, 2, false);
astar.ConnectPoints(2, 3, false);
astar.ConnectPoints(4, 3, false);
astar.ConnectPoints(1, 4, false);
long[] res = astar.GetIdPath(1, 3); // Returns [1, 2, 3]

```

If you change the 2nd point's weight to 3, then the result will be `[1, 4, 3]` instead, because now even though the distance is longer, it's "easier" to get through point 4 than through point 2.

* * *

[int](class_int.md#class-int) **get\_point\_capacity**() const [🔗](#class-astar2d-method-get-point-capacity)

Returns the capacity of the structure backing the points, useful in conjunction with [reserve\_space()](#class-astar2d-method-reserve-space).

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **get\_point\_connections**(id: [int](class_int.md#class-int)) [🔗](#class-astar2d-method-get-point-connections)

Returns an array with the IDs of the points that form the connection with the given point.

GDScriptC#

```
var astar = AStar2D.new()
astar.add_point(1, Vector2(0, 0))
astar.add_point(2, Vector2(0, 1))
astar.add_point(3, Vector2(1, 1))
astar.add_point(4, Vector2(2, 0))

astar.connect_points(1, 2, true)
astar.connect_points(1, 3, true)

var neighbors = astar.get_point_connections(1) # Returns [2, 3]

```

```
var astar = new AStar2D();
astar.AddPoint(1, new Vector2(0, 0));
astar.AddPoint(2, new Vector2(0, 1));
astar.AddPoint(3, new Vector2(1, 1));
astar.AddPoint(4, new Vector2(2, 0));

astar.ConnectPoints(1, 2, true);
astar.ConnectPoints(1, 3, true);

long[] neighbors = astar.GetPointConnections(1); // Returns [2, 3]

```

* * *

[int](class_int.md#class-int) **get\_point\_count**() const [🔗](#class-astar2d-method-get-point-count)

Returns the number of points currently in the points pool.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **get\_point\_ids**() [🔗](#class-astar2d-method-get-point-ids)

Returns an array of all point IDs.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_point\_path**(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) [🔗](#class-astar2d-method-get-point-path)

Returns an array with the points that are in the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.

If there is no valid path to the target, and `allow_partial_path` is `true`, returns a path to the point closest to the target that can be reached.

**Note:** This method is not thread-safe; it can only be used from a single [Thread](class_thread.md#class-thread) at a given time. Consider using [Mutex](class_mutex.md#class-mutex) to ensure exclusive access to one thread to avoid race conditions.

Additionally, when `allow_partial_path` is `true` and `to_id` is disabled the search may take an unusually long time to finish.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_point\_position**(id: [int](class_int.md#class-int)) const [🔗](#class-astar2d-method-get-point-position)

Returns the position of the point associated with the given `id`.

* * *

[float](class_float.md#class-float) **get\_point\_weight\_scale**(id: [int](class_int.md#class-int)) const [🔗](#class-astar2d-method-get-point-weight-scale)

Returns the weight scale of the point associated with the given `id`.

* * *

[bool](class_bool.md#class-bool) **has\_point**(id: [int](class_int.md#class-int)) const [🔗](#class-astar2d-method-has-point)

Returns whether a point associated with the given `id` exists.

* * *

[bool](class_bool.md#class-bool) **is\_point\_disabled**(id: [int](class_int.md#class-int)) const [🔗](#class-astar2d-method-is-point-disabled)

Returns whether a point is disabled or not for pathfinding. By default, all points are enabled.

* * *

void **remove\_point**(id: [int](class_int.md#class-int)) [🔗](#class-astar2d-method-remove-point)

Removes the point associated with the given `id` from the points pool.

* * *

void **reserve\_space**(num\_nodes: [int](class_int.md#class-int)) [🔗](#class-astar2d-method-reserve-space)

Reserves space internally for `num_nodes` points. Useful if you're adding a known large number of points at once, such as points on a grid.

* * *

void **set\_point\_disabled**(id: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool) = true) [🔗](#class-astar2d-method-set-point-disabled)

Disables or enables the specified point for pathfinding. Useful for making a temporary obstacle.

* * *

void **set\_point\_position**(id: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-astar2d-method-set-point-position)

Sets the `position` for the point with the given `id`.

* * *

void **set\_point\_weight\_scale**(id: [int](class_int.md#class-int), weight\_scale: [float](class_float.md#class-float)) [🔗](#class-astar2d-method-set-point-weight-scale)

Sets the `weight_scale` for the point with the given `id`. The `weight_scale` is multiplied by the result of [\_compute\_cost()](#class-astar2d-private-method-compute-cost) when determining the overall cost of traveling across a segment from a neighboring point to this point.

[Previous](class_aescontext.md "AESContext") [Next](class_astar3d.md "AStar3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_aescontext.md "AESContext") [Next](class_astar3d.md "AStar3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).