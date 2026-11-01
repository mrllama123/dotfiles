---
title: AStar3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_astar3d.html
crawled_at: "2026-08-13T10:39:53+12:00"
content_hash: 741059ad0c045b94013a2b6744c2a3e7a331335028795653e55580cf59698312
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AStar3D

* * *

# AStar3D

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An implementation of A\* for finding the shortest path between two vertices on a connected graph in 3D space.

## Description

A\* (A star) is a computer algorithm used in pathfinding and graph traversal, the process of plotting short paths among vertices (points), passing through a given set of edges (segments). It enjoys widespread use due to its performance and accuracy. Godot's A\* implementation uses points in 3D space and Euclidean distances by default.

You must add points manually with [add\_point()](#class-astar3d-method-add-point) and create segments manually with [connect\_points()](#class-astar3d-method-connect-points). Once done, you can test if there is a path between two points with the [are\_points\_connected()](#class-astar3d-method-are-points-connected) function, get a path containing indices by [get\_id\_path()](#class-astar3d-method-get-id-path), or one containing actual coordinates with [get\_point\_path()](#class-astar3d-method-get-point-path).

It is also possible to use non-Euclidean distances. To do so, create a script that extends **AStar3D** and override the methods [\_compute\_cost()](#class-astar3d-private-method-compute-cost) and [\_estimate\_cost()](#class-astar3d-private-method-estimate-cost). Both should take two point IDs and return the distance between the corresponding points.

**Example:** Use Manhattan distance instead of Euclidean distance:

GDScriptC#

```
class_name MyAStar3D
extends AStar3D

func _compute_cost(u, v):
    var u_pos = get_point_position(u)
    var v_pos = get_point_position(v)
    return abs(u_pos.x - v_pos.x) + abs(u_pos.y - v_pos.y) + abs(u_pos.z - v_pos.z)

func _estimate_cost(u, v):
    var u_pos = get_point_position(u)
    var v_pos = get_point_position(v)
    return abs(u_pos.x - v_pos.x) + abs(u_pos.y - v_pos.y) + abs(u_pos.z - v_pos.z)

```

```
using Godot;

[GlobalClass]
public partial class MyAStar3D : AStar3D
{
    public override float _ComputeCost(long fromId, long toId)
    {
        Vector3 fromPoint = GetPointPosition(fromId);
        Vector3 toPoint = GetPointPosition(toId);

        return Mathf.Abs(fromPoint.X - toPoint.X) + Mathf.Abs(fromPoint.Y - toPoint.Y) + Mathf.Abs(fromPoint.Z - toPoint.Z);
    }

    public override float _EstimateCost(long fromId, long toId)
    {
        Vector3 fromPoint = GetPointPosition(fromId);
        Vector3 toPoint = GetPointPosition(toId);
        return Mathf.Abs(fromPoint.X - toPoint.X) + Mathf.Abs(fromPoint.Y - toPoint.Y) + Mathf.Abs(fromPoint.Z - toPoint.Z);
    }
}

```

[\_estimate\_cost()](#class-astar3d-private-method-estimate-cost) should return a lower bound of the distance, i.e. `_estimate_cost(u, v) <= _compute_cost(u, v)`. This serves as a hint to the algorithm because the custom [\_compute\_cost()](#class-astar3d-private-method-compute-cost) might be computation-heavy. If this is not the case, make [\_estimate\_cost()](#class-astar3d-private-method-estimate-cost) return the same value as [\_compute\_cost()](#class-astar3d-private-method-compute-cost) to provide the algorithm with the most accurate information.

If the default [\_estimate\_cost()](#class-astar3d-private-method-estimate-cost) and [\_compute\_cost()](#class-astar3d-private-method-compute-cost) methods are used, or if the supplied [\_estimate\_cost()](#class-astar3d-private-method-estimate-cost) method returns a lower bound of the cost, then the paths returned by A\* will be the lowest-cost paths. Here, the cost of a path equals the sum of the [\_compute\_cost()](#class-astar3d-private-method-compute-cost) results of all segments in the path multiplied by the `weight_scale` s of the endpoints of the respective segments. If the default methods are used and the `weight_scale` s of all points are set to `1.0`, then this equals the sum of Euclidean distances of all segments in the path.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [neighbor\_filter\_enabled](#class-astar3d-property-neighbor-filter-enabled) | `false` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [\_compute\_cost](#class-astar3d-private-method-compute-cost)(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int)) virtualconst |
| [float](class_float.md#class-float) | [\_estimate\_cost](#class-astar3d-private-method-estimate-cost)(from\_id: [int](class_int.md#class-int), end\_id: [int](class_int.md#class-int)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_filter\_neighbor](#class-astar3d-private-method-filter-neighbor)(from\_id: [int](class_int.md#class-int), neighbor\_id: [int](class_int.md#class-int)) virtualconst |
| void | [add\_point](#class-astar3d-method-add-point)(id: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3), weight\_scale: [float](class_float.md#class-float) = 1.0) |
| [bool](class_bool.md#class-bool) | [are\_points\_connected](#class-astar3d-method-are-points-connected)(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) const |
| void | [clear](#class-astar3d-method-clear)() |
| void | [connect\_points](#class-astar3d-method-connect-points)(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) |
| void | [disconnect\_points](#class-astar3d-method-disconnect-points)(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) |
| [int](class_int.md#class-int) | [get\_available\_point\_id](#class-astar3d-method-get-available-point-id)() const |
| [int](class_int.md#class-int) | [get\_closest\_point](#class-astar3d-method-get-closest-point)(to\_position: [Vector3](class_vector3.md#class-vector3), include\_disabled: [bool](class_bool.md#class-bool) = false) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_closest\_position\_in\_segment](#class-astar3d-method-get-closest-position-in-segment)(to\_position: [Vector3](class_vector3.md#class-vector3)) const |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [get\_id\_path](#class-astar3d-method-get-id-path)(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) |
| [int](class_int.md#class-int) | [get\_point\_capacity](#class-astar3d-method-get-point-capacity)() const |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [get\_point\_connections](#class-astar3d-method-get-point-connections)(id: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_point\_count](#class-astar3d-method-get-point-count)() const |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [get\_point\_ids](#class-astar3d-method-get-point-ids)() |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [get\_point\_path](#class-astar3d-method-get-point-path)(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) |
| [Vector3](class_vector3.md#class-vector3) | [get\_point\_position](#class-astar3d-method-get-point-position)(id: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_point\_weight\_scale](#class-astar3d-method-get-point-weight-scale)(id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_point](#class-astar3d-method-has-point)(id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_point\_disabled](#class-astar3d-method-is-point-disabled)(id: [int](class_int.md#class-int)) const |
| void | [remove\_point](#class-astar3d-method-remove-point)(id: [int](class_int.md#class-int)) |
| void | [reserve\_space](#class-astar3d-method-reserve-space)(num\_nodes: [int](class_int.md#class-int)) |
| void | [set\_point\_disabled](#class-astar3d-method-set-point-disabled)(id: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool) = true) |
| void | [set\_point\_position](#class-astar3d-method-set-point-position)(id: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_point\_weight\_scale](#class-astar3d-method-set-point-weight-scale)(id: [int](class_int.md#class-int), weight\_scale: [float](class_float.md#class-float)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **neighbor\_filter\_enabled** = `false` [🔗](#class-astar3d-property-neighbor-filter-enabled)

- void **set\_neighbor\_filter\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_neighbor\_filter\_enabled**()


If `true` enables the filtering of neighbors via [\_filter\_neighbor()](#class-astar3d-private-method-filter-neighbor).

* * *

## Method Descriptions

[float](class_float.md#class-float) **\_compute\_cost**(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int)) virtualconst [🔗](#class-astar3d-private-method-compute-cost)

Called when computing the cost between two connected points.

Note that this function is hidden in the default **AStar3D** class.

* * *

[float](class_float.md#class-float) **\_estimate\_cost**(from\_id: [int](class_int.md#class-int), end\_id: [int](class_int.md#class-int)) virtualconst [🔗](#class-astar3d-private-method-estimate-cost)

Called when estimating the cost between a point and the path's ending point.

Note that this function is hidden in the default **AStar3D** class.

* * *

[bool](class_bool.md#class-bool) **\_filter\_neighbor**(from\_id: [int](class_int.md#class-int), neighbor\_id: [int](class_int.md#class-int)) virtualconst [🔗](#class-astar3d-private-method-filter-neighbor)

Called when neighboring point enters processing and if [neighbor\_filter\_enabled](#class-astar3d-property-neighbor-filter-enabled) is `true`. If `true` is returned the point will not be processed.

Note that this function is hidden in the default **AStar3D** class.

* * *

void **add\_point**(id: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3), weight\_scale: [float](class_float.md#class-float) = 1.0) [🔗](#class-astar3d-method-add-point)

Adds a new point at the given position with the given identifier. The `id` must be 0 or larger, and the `weight_scale` must be 0.0 or greater.

The `weight_scale` is multiplied by the result of [\_compute\_cost()](#class-astar3d-private-method-compute-cost) when determining the overall cost of traveling across a segment from a neighboring point to this point. Thus, all else being equal, the algorithm prefers points with lower `weight_scale` s to form a path.

GDScriptC#

```
var astar = AStar3D.new()
astar.add_point(1, Vector3(1, 0, 0), 4) # Adds the point (1, 0, 0) with weight_scale 4 and id 1

```

```
var astar = new AStar3D();
astar.AddPoint(1, new Vector3(1, 0, 0), 4); // Adds the point (1, 0, 0) with weight_scale 4 and id 1

```

If there already exists a point for the given `id`, its position and weight scale are updated to the given values.

* * *

[bool](class_bool.md#class-bool) **are\_points\_connected**(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) const [🔗](#class-astar3d-method-are-points-connected)

Returns whether the two given points are directly connected by a segment. If `bidirectional` is `false`, returns whether movement from `id` to `to_id` is possible through this segment.

* * *

void **clear**() [🔗](#class-astar3d-method-clear)

Clears all the points and segments.

* * *

void **connect\_points**(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) [🔗](#class-astar3d-method-connect-points)

Creates a segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is allowed, not the reverse direction.

GDScriptC#

```
var astar = AStar3D.new()
astar.add_point(1, Vector3(1, 1, 0))
astar.add_point(2, Vector3(0, 5, 0))
astar.connect_points(1, 2, false)

```

```
var astar = new AStar3D();
astar.AddPoint(1, new Vector3(1, 1, 0));
astar.AddPoint(2, new Vector3(0, 5, 0));
astar.ConnectPoints(1, 2, false);

```

* * *

void **disconnect\_points**(id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), bidirectional: [bool](class_bool.md#class-bool) = true) [🔗](#class-astar3d-method-disconnect-points)

Deletes the segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is prevented, and a unidirectional segment possibly remains.

* * *

[int](class_int.md#class-int) **get\_available\_point\_id**() const [🔗](#class-astar3d-method-get-available-point-id)

Returns the next available point ID with no point associated to it.

* * *

[int](class_int.md#class-int) **get\_closest\_point**(to\_position: [Vector3](class_vector3.md#class-vector3), include\_disabled: [bool](class_bool.md#class-bool) = false) const [🔗](#class-astar3d-method-get-closest-point)

Returns the ID of the closest point to `to_position`, optionally taking disabled points into account. Returns `-1` if there are no points in the points pool.

**Note:** If several points are the closest to `to_position`, the one with the smallest ID will be returned, ensuring a deterministic result.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_closest\_position\_in\_segment**(to\_position: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-astar3d-method-get-closest-position-in-segment)

Returns the closest position to `to_position` that resides inside a segment between two connected points.

GDScriptC#

```
var astar = AStar3D.new()
astar.add_point(1, Vector3(0, 0, 0))
astar.add_point(2, Vector3(0, 5, 0))
astar.connect_points(1, 2)
var res = astar.get_closest_position_in_segment(Vector3(3, 3, 0)) # Returns (0, 3, 0)

```

```
var astar = new AStar3D();
astar.AddPoint(1, new Vector3(0, 0, 0));
astar.AddPoint(2, new Vector3(0, 5, 0));
astar.ConnectPoints(1, 2);
Vector3 res = astar.GetClosestPositionInSegment(new Vector3(3, 3, 0)); // Returns (0, 3, 0)

```

The result is in the segment that goes from `y = 0` to `y = 5`. It's the closest position in the segment to the given point.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **get\_id\_path**(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) [🔗](#class-astar3d-method-get-id-path)

Returns an array with the IDs of the points that form the path found by AStar3D between the given points. The array is ordered from the starting point to the ending point of the path.

If there is no valid path to the target, and `allow_partial_path` is `true`, returns a path to the point closest to the target that can be reached.

**Note:** When `allow_partial_path` is `true` and `to_id` is disabled the search may take an unusually long time to finish.

GDScriptC#

```
var astar = AStar3D.new()
astar.add_point(1, Vector3(0, 0, 0))
astar.add_point(2, Vector3(0, 1, 0), 1) # Default weight is 1
astar.add_point(3, Vector3(1, 1, 0))
astar.add_point(4, Vector3(2, 0, 0))

astar.connect_points(1, 2, false)
astar.connect_points(2, 3, false)
astar.connect_points(4, 3, false)
astar.connect_points(1, 4, false)

var res = astar.get_id_path(1, 3) # Returns [1, 2, 3]

```

```
var astar = new AStar3D();
astar.AddPoint(1, new Vector3(0, 0, 0));
astar.AddPoint(2, new Vector3(0, 1, 0), 1); // Default weight is 1
astar.AddPoint(3, new Vector3(1, 1, 0));
astar.AddPoint(4, new Vector3(2, 0, 0));
astar.ConnectPoints(1, 2, false);
astar.ConnectPoints(2, 3, false);
astar.ConnectPoints(4, 3, false);
astar.ConnectPoints(1, 4, false);
long[] res = astar.GetIdPath(1, 3); // Returns [1, 2, 3]

```

If you change the 2nd point's weight to 3, then the result will be `[1, 4, 3]` instead, because now even though the distance is longer, it's "easier" to get through point 4 than through point 2.

* * *

[int](class_int.md#class-int) **get\_point\_capacity**() const [🔗](#class-astar3d-method-get-point-capacity)

Returns the capacity of the structure backing the points, useful in conjunction with [reserve\_space()](#class-astar3d-method-reserve-space).

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **get\_point\_connections**(id: [int](class_int.md#class-int)) [🔗](#class-astar3d-method-get-point-connections)

Returns an array with the IDs of the points that form the connection with the given point.

GDScriptC#

```
var astar = AStar3D.new()
astar.add_point(1, Vector3(0, 0, 0))
astar.add_point(2, Vector3(0, 1, 0))
astar.add_point(3, Vector3(1, 1, 0))
astar.add_point(4, Vector3(2, 0, 0))

astar.connect_points(1, 2, true)
astar.connect_points(1, 3, true)

var neighbors = astar.get_point_connections(1) # Returns [2, 3]

```

```
var astar = new AStar3D();
astar.AddPoint(1, new Vector3(0, 0, 0));
astar.AddPoint(2, new Vector3(0, 1, 0));
astar.AddPoint(3, new Vector3(1, 1, 0));
astar.AddPoint(4, new Vector3(2, 0, 0));
astar.ConnectPoints(1, 2, true);
astar.ConnectPoints(1, 3, true);

long[] neighbors = astar.GetPointConnections(1); // Returns [2, 3]

```

* * *

[int](class_int.md#class-int) **get\_point\_count**() const [🔗](#class-astar3d-method-get-point-count)

Returns the number of points currently in the points pool.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **get\_point\_ids**() [🔗](#class-astar3d-method-get-point-ids)

Returns an array of all point IDs.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_point\_path**(from\_id: [int](class_int.md#class-int), to\_id: [int](class_int.md#class-int), allow\_partial\_path: [bool](class_bool.md#class-bool) = false) [🔗](#class-astar3d-method-get-point-path)

Returns an array with the points that are in the path found by AStar3D between the given points. The array is ordered from the starting point to the ending point of the path.

If there is no valid path to the target, and `allow_partial_path` is `true`, returns a path to the point closest to the target that can be reached.

**Note:** This method is not thread-safe; it can only be used from a single [Thread](class_thread.md#class-thread) at a given time. Consider using [Mutex](class_mutex.md#class-mutex) to ensure exclusive access to one thread to avoid race conditions.

Additionally, when `allow_partial_path` is `true` and `to_id` is disabled the search may take an unusually long time to finish.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_point\_position**(id: [int](class_int.md#class-int)) const [🔗](#class-astar3d-method-get-point-position)

Returns the position of the point associated with the given `id`.

* * *

[float](class_float.md#class-float) **get\_point\_weight\_scale**(id: [int](class_int.md#class-int)) const [🔗](#class-astar3d-method-get-point-weight-scale)

Returns the weight scale of the point associated with the given `id`.

* * *

[bool](class_bool.md#class-bool) **has\_point**(id: [int](class_int.md#class-int)) const [🔗](#class-astar3d-method-has-point)

Returns whether a point associated with the given `id` exists.

* * *

[bool](class_bool.md#class-bool) **is\_point\_disabled**(id: [int](class_int.md#class-int)) const [🔗](#class-astar3d-method-is-point-disabled)

Returns whether a point is disabled or not for pathfinding. By default, all points are enabled.

* * *

void **remove\_point**(id: [int](class_int.md#class-int)) [🔗](#class-astar3d-method-remove-point)

Removes the point associated with the given `id` from the points pool.

* * *

void **reserve\_space**(num\_nodes: [int](class_int.md#class-int)) [🔗](#class-astar3d-method-reserve-space)

Reserves space internally for `num_nodes` points. Useful if you're adding a known large number of points at once, such as points on a grid.

* * *

void **set\_point\_disabled**(id: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool) = true) [🔗](#class-astar3d-method-set-point-disabled)

Disables or enables the specified point for pathfinding. Useful for making a temporary obstacle.

* * *

void **set\_point\_position**(id: [int](class_int.md#class-int), position: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-astar3d-method-set-point-position)

Sets the `position` for the point with the given `id`.

* * *

void **set\_point\_weight\_scale**(id: [int](class_int.md#class-int), weight\_scale: [float](class_float.md#class-float)) [🔗](#class-astar3d-method-set-point-weight-scale)

Sets the `weight_scale` for the point with the given `id`. The `weight_scale` is multiplied by the result of [\_compute\_cost()](#class-astar3d-private-method-compute-cost) when determining the overall cost of traveling across a segment from a neighboring point to this point.

[Previous](class_astar2d.md "AStar2D") [Next](class_astargrid2d.md "AStarGrid2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_astar2d.md "AStar2D") [Next](class_astargrid2d.md "AStarGrid2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).