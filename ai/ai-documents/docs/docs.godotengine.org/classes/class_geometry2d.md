---
title: Geometry2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_geometry2d.html
crawled_at: "2026-08-13T10:42:57+12:00"
content_hash: 8e588ea2c91762f1ee059cf20dfb116d1239a3552f0fc53109c778134a7385ba
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Geometry2D

* * *

# Geometry2D

**Inherits:** [Object](class_object.md#class-object)

Provides methods for some common 2D geometric operations.

## Description

Provides a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations in 2D.

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] | [bresenham\_line](#class-geometry2d-method-bresenham-line)(from: [Vector2i](class_vector2i.md#class-vector2i), to: [Vector2i](class_vector2i.md#class-vector2i)) |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [clip\_polygons](#class-geometry2d-method-clip-polygons)(polygon\_a: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon\_b: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [clip\_polyline\_with\_polygon](#class-geometry2d-method-clip-polyline-with-polygon)(polyline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [convex\_hull](#class-geometry2d-method-convex-hull)(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [decompose\_polygon\_in\_convex](#class-geometry2d-method-decompose-polygon-in-convex)(polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [exclude\_polygons](#class-geometry2d-method-exclude-polygons)(polygon\_a: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon\_b: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [Vector2](class_vector2.md#class-vector2) | [get\_closest\_point\_to\_segment](#class-geometry2d-method-get-closest-point-to-segment)(point: [Vector2](class_vector2.md#class-vector2), s1: [Vector2](class_vector2.md#class-vector2), s2: [Vector2](class_vector2.md#class-vector2)) |
| [Vector2](class_vector2.md#class-vector2) | [get\_closest\_point\_to\_segment\_uncapped](#class-geometry2d-method-get-closest-point-to-segment-uncapped)(point: [Vector2](class_vector2.md#class-vector2), s1: [Vector2](class_vector2.md#class-vector2), s2: [Vector2](class_vector2.md#class-vector2)) |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_closest\_points\_between\_segments](#class-geometry2d-method-get-closest-points-between-segments)(p1: [Vector2](class_vector2.md#class-vector2), q1: [Vector2](class_vector2.md#class-vector2), p2: [Vector2](class_vector2.md#class-vector2), q2: [Vector2](class_vector2.md#class-vector2)) |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [intersect\_polygons](#class-geometry2d-method-intersect-polygons)(polygon\_a: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon\_b: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [intersect\_polyline\_with\_polygon](#class-geometry2d-method-intersect-polyline-with-polygon)(polyline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [bool](class_bool.md#class-bool) | [is\_point\_in\_circle](#class-geometry2d-method-is-point-in-circle)(point: [Vector2](class_vector2.md#class-vector2), circle\_position: [Vector2](class_vector2.md#class-vector2), circle\_radius: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [is\_point\_in\_polygon](#class-geometry2d-method-is-point-in-polygon)(point: [Vector2](class_vector2.md#class-vector2), polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [bool](class_bool.md#class-bool) | [is\_polygon\_clockwise](#class-geometry2d-method-is-polygon-clockwise)(polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [Variant](class_variant.md#class-variant) | [line\_intersects\_line](#class-geometry2d-method-line-intersects-line)(from\_a: [Vector2](class_vector2.md#class-vector2), dir\_a: [Vector2](class_vector2.md#class-vector2), from\_b: [Vector2](class_vector2.md#class-vector2), dir\_b: [Vector2](class_vector2.md#class-vector2)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [make\_atlas](#class-geometry2d-method-make-atlas)(sizes: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [merge\_polygons](#class-geometry2d-method-merge-polygons)(polygon\_a: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon\_b: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [offset\_polygon](#class-geometry2d-method-offset-polygon)(polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), delta: [float](class_float.md#class-float), join\_type: [PolyJoinType](#enum-geometry2d-polyjointype) = 0) |
| [Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] | [offset\_polyline](#class-geometry2d-method-offset-polyline)(polyline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), delta: [float](class_float.md#class-float), join\_type: [PolyJoinType](#enum-geometry2d-polyjointype) = 0, end\_type: [PolyEndType](#enum-geometry2d-polyendtype) = 3) |
| [bool](class_bool.md#class-bool) | [point\_is\_inside\_triangle](#class-geometry2d-method-point-is-inside-triangle)(point: [Vector2](class_vector2.md#class-vector2), a: [Vector2](class_vector2.md#class-vector2), b: [Vector2](class_vector2.md#class-vector2), c: [Vector2](class_vector2.md#class-vector2)) const |
| [float](class_float.md#class-float) | [segment\_intersects\_circle](#class-geometry2d-method-segment-intersects-circle)(segment\_from: [Vector2](class_vector2.md#class-vector2), segment\_to: [Vector2](class_vector2.md#class-vector2), circle\_position: [Vector2](class_vector2.md#class-vector2), circle\_radius: [float](class_float.md#class-float)) |
| [Variant](class_variant.md#class-variant) | [segment\_intersects\_segment](#class-geometry2d-method-segment-intersects-segment)(from\_a: [Vector2](class_vector2.md#class-vector2), to\_a: [Vector2](class_vector2.md#class-vector2), from\_b: [Vector2](class_vector2.md#class-vector2), to\_b: [Vector2](class_vector2.md#class-vector2)) |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [triangulate\_delaunay](#class-geometry2d-method-triangulate-delaunay)(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [triangulate\_polygon](#class-geometry2d-method-triangulate-polygon)(polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |

* * *

## Enumerations

enum **PolyBooleanOperation**: [🔗](#enum-geometry2d-polybooleanoperation)

[PolyBooleanOperation](#enum-geometry2d-polybooleanoperation) **OPERATION\_UNION** = `0`

Create regions where either subject or clip polygons (or both) are filled.

[PolyBooleanOperation](#enum-geometry2d-polybooleanoperation) **OPERATION\_DIFFERENCE** = `1`

Create regions where subject polygons are filled except where clip polygons are filled.

[PolyBooleanOperation](#enum-geometry2d-polybooleanoperation) **OPERATION\_INTERSECTION** = `2`

Create regions where both subject and clip polygons are filled.

[PolyBooleanOperation](#enum-geometry2d-polybooleanoperation) **OPERATION\_XOR** = `3`

Create regions where either subject or clip polygons are filled but not where both are filled.

* * *

enum **PolyJoinType**: [🔗](#enum-geometry2d-polyjointype)

[PolyJoinType](#enum-geometry2d-polyjointype) **JOIN\_SQUARE** = `0`

Squaring is applied uniformally at all convex edge joins at `1 * delta`.

[PolyJoinType](#enum-geometry2d-polyjointype) **JOIN\_ROUND** = `1`

While flattened paths can never perfectly trace an arc, they are approximated by a series of arc chords.

[PolyJoinType](#enum-geometry2d-polyjointype) **JOIN\_MITER** = `2`

There's a necessary limit to mitered joins since offsetting edges that join at very acute angles will produce excessively long and narrow "spikes". For any given edge join, when miter offsetting would exceed that maximum distance, "square" joining is applied.

* * *

enum **PolyEndType**: [🔗](#enum-geometry2d-polyendtype)

[PolyEndType](#enum-geometry2d-polyendtype) **END\_POLYGON** = `0`

Endpoints are joined using the [PolyJoinType](#enum-geometry2d-polyjointype) value and the path filled as a polygon.

[PolyEndType](#enum-geometry2d-polyendtype) **END\_JOINED** = `1`

Endpoints are joined using the [PolyJoinType](#enum-geometry2d-polyjointype) value and the path filled as a polyline.

[PolyEndType](#enum-geometry2d-polyendtype) **END\_BUTT** = `2`

Endpoints are squared off with no extension.

[PolyEndType](#enum-geometry2d-polyendtype) **END\_SQUARE** = `3`

Endpoints are squared off and extended by `delta` units.

[PolyEndType](#enum-geometry2d-polyendtype) **END\_ROUND** = `4`

Endpoints are rounded off and extended by `delta` units.

* * *

## Method Descriptions

[Array](class_array.md#class-array)\[ [Vector2i](class_vector2i.md#class-vector2i)\] **bresenham\_line**(from: [Vector2i](class_vector2i.md#class-vector2i), to: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-geometry2d-method-bresenham-line)

Returns the [Bresenham line](https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm) between the `from` and `to` points. A Bresenham line is a series of pixels that draws a line and is always 1-pixel thick on every row and column of the drawing (never more, never less).

Example code to draw a line between two [Marker2D](class_marker2d.md#class-marker2d) nodes using a series of [CanvasItem.draw\_rect()](class_canvasitem.md#class-canvasitem-method-draw-rect) calls:

```
func _draw():
    for pixel in Geometry2D.bresenham_line($MarkerA.position, $MarkerB.position):
        draw_rect(Rect2(pixel, Vector2.ONE), Color.WHITE)

```

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **clip\_polygons**(polygon\_a: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon\_b: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-clip-polygons)

Clips `polygon_a` against `polygon_b` and returns an array of clipped polygons. This performs [OPERATION\_DIFFERENCE](#class-geometry2d-constant-operation-difference) between polygons. Returns an empty array if `polygon_b` completely overlaps `polygon_a`.

If `polygon_b` is enclosed by `polygon_a`, returns an outer polygon (boundary) and inner polygon (hole) which could be distinguished by calling [is\_polygon\_clockwise()](#class-geometry2d-method-is-polygon-clockwise).

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **clip\_polyline\_with\_polygon**(polyline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-clip-polyline-with-polygon)

Clips `polyline` against `polygon` and returns an array of clipped polylines. This performs [OPERATION\_DIFFERENCE](#class-geometry2d-constant-operation-difference) between the polyline and the polygon. This operation can be thought of as cutting a line with a closed shape.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **convex\_hull**(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-convex-hull)

Given an array of [Vector2](class_vector2.md#class-vector2) s, returns the convex hull as a list of points in counterclockwise order. The last point is the same as the first one.

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **decompose\_polygon\_in\_convex**(polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-decompose-polygon-in-convex)

Decomposes the `polygon` into multiple convex hulls and returns an array of [PackedVector2Array](class_packedvector2array.md#class-packedvector2array).

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **exclude\_polygons**(polygon\_a: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon\_b: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-exclude-polygons)

Mutually excludes common area defined by intersection of `polygon_a` and `polygon_b` (see [intersect\_polygons()](#class-geometry2d-method-intersect-polygons)) and returns an array of excluded polygons. This performs [OPERATION\_XOR](#class-geometry2d-constant-operation-xor) between polygons. In other words, returns all but common area between polygons.

The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling [is\_polygon\_clockwise()](#class-geometry2d-method-is-polygon-clockwise).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_closest\_point\_to\_segment**(point: [Vector2](class_vector2.md#class-vector2), s1: [Vector2](class_vector2.md#class-vector2), s2: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-geometry2d-method-get-closest-point-to-segment)

Returns the 2D point on the 2D segment ( `s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_closest\_point\_to\_segment\_uncapped**(point: [Vector2](class_vector2.md#class-vector2), s1: [Vector2](class_vector2.md#class-vector2), s2: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-geometry2d-method-get-closest-point-to-segment-uncapped)

Returns the 2D point on the 2D line defined by ( `s1`, `s2`) that is closest to `point`. The returned point can be inside the segment ( `s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_closest\_points\_between\_segments**(p1: [Vector2](class_vector2.md#class-vector2), q1: [Vector2](class_vector2.md#class-vector2), p2: [Vector2](class_vector2.md#class-vector2), q2: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-geometry2d-method-get-closest-points-between-segments)

Given the two 2D segments ( `p1`, `q1`) and ( `p2`, `q2`), finds those two points on the two segments that are closest to each other. Returns a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) that contains this point on ( `p1`, `q1`) as well the accompanying point on ( `p2`, `q2`).

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **intersect\_polygons**(polygon\_a: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon\_b: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-intersect-polygons)

Intersects `polygon_a` with `polygon_b` and returns an array of intersected polygons. This performs [OPERATION\_INTERSECTION](#class-geometry2d-constant-operation-intersection) between polygons. In other words, returns common area shared by polygons. Returns an empty array if no intersection occurs.

The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling [is\_polygon\_clockwise()](#class-geometry2d-method-is-polygon-clockwise).

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **intersect\_polyline\_with\_polygon**(polyline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-intersect-polyline-with-polygon)

Intersects `polyline` with `polygon` and returns an array of intersected polylines. This performs [OPERATION\_INTERSECTION](#class-geometry2d-constant-operation-intersection) between the polyline and the polygon. This operation can be thought of as chopping a line with a closed shape.

* * *

[bool](class_bool.md#class-bool) **is\_point\_in\_circle**(point: [Vector2](class_vector2.md#class-vector2), circle\_position: [Vector2](class_vector2.md#class-vector2), circle\_radius: [float](class_float.md#class-float)) [🔗](#class-geometry2d-method-is-point-in-circle)

Returns `true` if `point` is inside the circle or if it's located exactly _on_ the circle's boundary, otherwise returns `false`.

* * *

[bool](class_bool.md#class-bool) **is\_point\_in\_polygon**(point: [Vector2](class_vector2.md#class-vector2), polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-is-point-in-polygon)

Returns `true` if `point` is inside `polygon` or if it's located exactly _on_ polygon's boundary, otherwise returns `false`.

* * *

[bool](class_bool.md#class-bool) **is\_polygon\_clockwise**(polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-is-polygon-clockwise)

Returns `true` if `polygon`'s vertices are ordered in clockwise order, otherwise returns `false`.

**Note:** Assumes a Cartesian coordinate system where `+x` is right and `+y` is up. If using screen coordinates ( `+y` is down), the result will need to be flipped (i.e. a `true` result will indicate counter-clockwise).

* * *

[Variant](class_variant.md#class-variant) **line\_intersects\_line**(from\_a: [Vector2](class_vector2.md#class-vector2), dir\_a: [Vector2](class_vector2.md#class-vector2), from\_b: [Vector2](class_vector2.md#class-vector2), dir\_b: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-geometry2d-method-line-intersects-line)

Returns the point of intersection between the two lines ( `from_a`, `dir_a`) and ( `from_b`, `dir_b`). Returns a [Vector2](class_vector2.md#class-vector2), or `null` if the lines are parallel.

`from` and `dir` are _not_ endpoints of a line segment or ray but the slope ( `dir`) and a known point ( `from`) on that line.

GDScriptC#

```
var from_a = Vector2.ZERO
var dir_a = Vector2.RIGHT
var from_b = Vector2.DOWN

# Returns Vector2(1, 0)
Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2(1, -1))
# Returns Vector2(-1, 0)
Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2(-1, -1))
# Returns null
Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2.RIGHT)

```

```
var fromA = Vector2.Zero;
var dirA = Vector2.Right;
var fromB = Vector2.Down;

// Returns new Vector2(1, 0)
Geometry2D.LineIntersectsLine(fromA, dirA, fromB, new Vector2(1, -1));
// Returns new Vector2(-1, 0)
Geometry2D.LineIntersectsLine(fromA, dirA, fromB, new Vector2(-1, -1));
// Returns null
Geometry2D.LineIntersectsLine(fromA, dirA, fromB, Vector2.Right);

```

* * *

[Dictionary](class_dictionary.md#class-dictionary) **make\_atlas**(sizes: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-make-atlas)

Given an array of [Vector2](class_vector2.md#class-vector2) s representing tiles, builds an atlas. The returned dictionary has two keys: `points` is a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) that specifies the positions of each tile, `size` contains the overall size of the whole atlas as [Vector2i](class_vector2i.md#class-vector2i).

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **merge\_polygons**(polygon\_a: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), polygon\_b: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-merge-polygons)

Merges (combines) `polygon_a` and `polygon_b` and returns an array of merged polygons. This performs [OPERATION\_UNION](#class-geometry2d-constant-operation-union) between polygons.

The operation may result in an outer polygon (boundary) and multiple inner polygons (holes) produced which could be distinguished by calling [is\_polygon\_clockwise()](#class-geometry2d-method-is-polygon-clockwise).

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **offset\_polygon**(polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), delta: [float](class_float.md#class-float), join\_type: [PolyJoinType](#enum-geometry2d-polyjointype) = 0) [🔗](#class-geometry2d-method-offset-polygon)

Inflates or deflates `polygon` by `delta` units (pixels). If `delta` is positive, makes the polygon grow outward. If `delta` is negative, shrinks the polygon inward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. Returns an empty array if `delta` is negative and the absolute value of it approximately exceeds the minimum bounding rectangle dimensions of the polygon.

Each polygon's vertices will be rounded as determined by `join_type`.

The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling [is\_polygon\_clockwise()](#class-geometry2d-method-is-polygon-clockwise).

**Note:** To translate the polygon's vertices specifically, multiply them to a [Transform2D](class_transform2d.md#class-transform2d):

GDScriptC#

```
var polygon = PackedVector2Array([Vector2(0, 0), Vector2(100, 0), Vector2(100, 100), Vector2(0, 100)])
var offset = Vector2(50, 50)
polygon = Transform2D(0, offset) * polygon
print(polygon) # Prints [(50.0, 50.0), (150.0, 50.0), (150.0, 150.0), (50.0, 150.0)]

```

```
Vector2[] polygon = [new Vector2(0, 0), new Vector2(100, 0), new Vector2(100, 100), new Vector2(0, 100)];
var offset = new Vector2(50, 50);
polygon = new Transform2D(0, offset) * polygon;
GD.Print((Variant)polygon); // Prints [(50, 50), (150, 50), (150, 150), (50, 150)]

```

* * *

[Array](class_array.md#class-array)\[ [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)\] **offset\_polyline**(polyline: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), delta: [float](class_float.md#class-float), join\_type: [PolyJoinType](#enum-geometry2d-polyjointype) = 0, end\_type: [PolyEndType](#enum-geometry2d-polyendtype) = 3) [🔗](#class-geometry2d-method-offset-polyline)

Inflates or deflates `polyline` by `delta` units (pixels), producing polygons. If `delta` is positive, makes the polyline grow outward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. If `delta` is negative, returns an empty array.

Each polygon's vertices will be rounded as determined by `join_type`.

Each polygon's endpoints will be rounded as determined by `end_type`.

The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling [is\_polygon\_clockwise()](#class-geometry2d-method-is-polygon-clockwise).

* * *

[bool](class_bool.md#class-bool) **point\_is\_inside\_triangle**(point: [Vector2](class_vector2.md#class-vector2), a: [Vector2](class_vector2.md#class-vector2), b: [Vector2](class_vector2.md#class-vector2), c: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-geometry2d-method-point-is-inside-triangle)

Returns if `point` is inside the triangle specified by `a`, `b` and `c`.

* * *

[float](class_float.md#class-float) **segment\_intersects\_circle**(segment\_from: [Vector2](class_vector2.md#class-vector2), segment\_to: [Vector2](class_vector2.md#class-vector2), circle\_position: [Vector2](class_vector2.md#class-vector2), circle\_radius: [float](class_float.md#class-float)) [🔗](#class-geometry2d-method-segment-intersects-circle)

Given the 2D segment ( `segment_from`, `segment_to`), returns the position on the segment (as a number between 0 and 1) at which the segment hits the circle that is located at position `circle_position` and has radius `circle_radius`. If the segment does not intersect the circle, -1 is returned (this is also the case if the line extending the segment would intersect the circle, but the segment does not).

* * *

[Variant](class_variant.md#class-variant) **segment\_intersects\_segment**(from\_a: [Vector2](class_vector2.md#class-vector2), to\_a: [Vector2](class_vector2.md#class-vector2), from\_b: [Vector2](class_vector2.md#class-vector2), to\_b: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-geometry2d-method-segment-intersects-segment)

Checks if the two segments ( `from_a`, `to_a`) and ( `from_b`, `to_b`) intersect. If yes, return the point of intersection as [Vector2](class_vector2.md#class-vector2). If no intersection takes place, returns `null`.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **triangulate\_delaunay**(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-triangulate-delaunay)

Triangulates the area specified by discrete set of `points` such that no point is inside the circumcircle of any resulting triangle. Returns a [PackedInt32Array](class_packedint32array.md#class-packedint32array) where each triangle consists of three consecutive point indices into `points` (i.e. the returned array will have `n * 3` elements, with `n` being the number of found triangles). If the triangulation did not succeed, an empty [PackedInt32Array](class_packedint32array.md#class-packedint32array) is returned.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **triangulate\_polygon**(polygon: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-geometry2d-method-triangulate-polygon)

Triangulates the polygon specified by the points in `polygon`. Returns a [PackedInt32Array](class_packedint32array.md#class-packedint32array) where each triangle consists of three consecutive point indices into `polygon` (i.e. the returned array will have `n * 3` elements, with `n` being the number of found triangles). Output triangles will always be counter clockwise, and the contour will be flipped if it's clockwise. If the triangulation did not succeed, an empty [PackedInt32Array](class_packedint32array.md#class-packedint32array) is returned.

[Previous](class_gdextensionmanager.md "GDExtensionManager") [Next](class_geometry3d.md "Geometry3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gdextensionmanager.md "GDExtensionManager") [Next](class_geometry3d.md "Geometry3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).