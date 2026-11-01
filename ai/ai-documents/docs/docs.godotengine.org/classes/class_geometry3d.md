---
title: Geometry3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_geometry3d.html
crawled_at: "2026-08-13T10:25:46+12:00"
content_hash: befe33faa6fe50404ac57868341e321cdc763d9e2147869a06ec892ab99d3417
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Geometry3D

* * *

# Geometry3D

**Inherits:** [Object](class_object.md#class-object)

Provides methods for some common 3D geometric operations.

## Description

Provides a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations in 3D.

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\] | [build\_box\_planes](#class-geometry3d-method-build-box-planes)(extents: [Vector3](class_vector3.md#class-vector3)) |
| [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\] | [build\_capsule\_planes](#class-geometry3d-method-build-capsule-planes)(radius: [float](class_float.md#class-float), height: [float](class_float.md#class-float), sides: [int](class_int.md#class-int), lats: [int](class_int.md#class-int), axis: [Axis](class_vector3.md#enum-vector3-axis) = 2) |
| [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\] | [build\_cylinder\_planes](#class-geometry3d-method-build-cylinder-planes)(radius: [float](class_float.md#class-float), height: [float](class_float.md#class-float), sides: [int](class_int.md#class-int), axis: [Axis](class_vector3.md#enum-vector3-axis) = 2) |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [clip\_polygon](#class-geometry3d-method-clip-polygon)(points: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), plane: [Plane](class_plane.md#class-plane)) |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [compute\_convex\_mesh\_points](#class-geometry3d-method-compute-convex-mesh-points)(planes: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\]) |
| [Vector3](class_vector3.md#class-vector3) | [get\_closest\_point\_to\_segment](#class-geometry3d-method-get-closest-point-to-segment)(point: [Vector3](class_vector3.md#class-vector3), s1: [Vector3](class_vector3.md#class-vector3), s2: [Vector3](class_vector3.md#class-vector3)) |
| [Vector3](class_vector3.md#class-vector3) | [get\_closest\_point\_to\_segment\_uncapped](#class-geometry3d-method-get-closest-point-to-segment-uncapped)(point: [Vector3](class_vector3.md#class-vector3), s1: [Vector3](class_vector3.md#class-vector3), s2: [Vector3](class_vector3.md#class-vector3)) |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [get\_closest\_points\_between\_segments](#class-geometry3d-method-get-closest-points-between-segments)(p1: [Vector3](class_vector3.md#class-vector3), p2: [Vector3](class_vector3.md#class-vector3), q1: [Vector3](class_vector3.md#class-vector3), q2: [Vector3](class_vector3.md#class-vector3)) |
| [Vector3](class_vector3.md#class-vector3) | [get\_triangle\_barycentric\_coords](#class-geometry3d-method-get-triangle-barycentric-coords)(point: [Vector3](class_vector3.md#class-vector3), a: [Vector3](class_vector3.md#class-vector3), b: [Vector3](class_vector3.md#class-vector3), c: [Vector3](class_vector3.md#class-vector3)) |
| [Variant](class_variant.md#class-variant) | [ray\_intersects\_triangle](#class-geometry3d-method-ray-intersects-triangle)(from: [Vector3](class_vector3.md#class-vector3), dir: [Vector3](class_vector3.md#class-vector3), a: [Vector3](class_vector3.md#class-vector3), b: [Vector3](class_vector3.md#class-vector3), c: [Vector3](class_vector3.md#class-vector3)) |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [segment\_intersects\_convex](#class-geometry3d-method-segment-intersects-convex)(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), planes: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\]) |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [segment\_intersects\_cylinder](#class-geometry3d-method-segment-intersects-cylinder)(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), height: [float](class_float.md#class-float), radius: [float](class_float.md#class-float)) |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [segment\_intersects\_sphere](#class-geometry3d-method-segment-intersects-sphere)(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), sphere\_position: [Vector3](class_vector3.md#class-vector3), sphere\_radius: [float](class_float.md#class-float)) |
| [Variant](class_variant.md#class-variant) | [segment\_intersects\_triangle](#class-geometry3d-method-segment-intersects-triangle)(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), a: [Vector3](class_vector3.md#class-vector3), b: [Vector3](class_vector3.md#class-vector3), c: [Vector3](class_vector3.md#class-vector3)) |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [tetrahedralize\_delaunay](#class-geometry3d-method-tetrahedralize-delaunay)(points: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array)) |

* * *

## Method Descriptions

[Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\] **build\_box\_planes**(extents: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-geometry3d-method-build-box-planes)

Returns an array with 6 [Plane](class_plane.md#class-plane) s that describe the sides of a box centered at the origin. The box size is defined by `extents`, which represents one (positive) corner of the box (i.e. half its actual size).

* * *

[Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\] **build\_capsule\_planes**(radius: [float](class_float.md#class-float), height: [float](class_float.md#class-float), sides: [int](class_int.md#class-int), lats: [int](class_int.md#class-int), axis: [Axis](class_vector3.md#enum-vector3-axis) = 2) [🔗](#class-geometry3d-method-build-capsule-planes)

Returns an array of [Plane](class_plane.md#class-plane) s closely bounding a faceted capsule centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the side part of the capsule, whereas `lats` gives the number of latitudinal steps at the bottom and top of the capsule. The parameter `axis` describes the axis along which the capsule is oriented (0 for X, 1 for Y, 2 for Z).

* * *

[Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\] **build\_cylinder\_planes**(radius: [float](class_float.md#class-float), height: [float](class_float.md#class-float), sides: [int](class_int.md#class-int), axis: [Axis](class_vector3.md#enum-vector3-axis) = 2) [🔗](#class-geometry3d-method-build-cylinder-planes)

Returns an array of [Plane](class_plane.md#class-plane) s closely bounding a faceted cylinder centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the round part of the cylinder. The parameter `axis` describes the axis along which the cylinder is oriented (0 for X, 1 for Y, 2 for Z).

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **clip\_polygon**(points: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), plane: [Plane](class_plane.md#class-plane)) [🔗](#class-geometry3d-method-clip-polygon)

Clips the polygon defined by the points in `points` against the `plane` and returns the points of the clipped polygon.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **compute\_convex\_mesh\_points**(planes: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\]) [🔗](#class-geometry3d-method-compute-convex-mesh-points)

Calculates and returns all the vertex points of a convex shape defined by an array of `planes`.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_closest\_point\_to\_segment**(point: [Vector3](class_vector3.md#class-vector3), s1: [Vector3](class_vector3.md#class-vector3), s2: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-geometry3d-method-get-closest-point-to-segment)

Returns the 3D point on the 3D segment ( `s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_closest\_point\_to\_segment\_uncapped**(point: [Vector3](class_vector3.md#class-vector3), s1: [Vector3](class_vector3.md#class-vector3), s2: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-geometry3d-method-get-closest-point-to-segment-uncapped)

Returns the 3D point on the 3D line defined by ( `s1`, `s2`) that is closest to `point`. The returned point can be inside the segment ( `s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_closest\_points\_between\_segments**(p1: [Vector3](class_vector3.md#class-vector3), p2: [Vector3](class_vector3.md#class-vector3), q1: [Vector3](class_vector3.md#class-vector3), q2: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-geometry3d-method-get-closest-points-between-segments)

Given the two 3D segments ( `p1`, `p2`) and ( `q1`, `q2`), finds those two points on the two segments that are closest to each other. Returns a [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) that contains this point on ( `p1`, `p2`) as well the accompanying point on ( `q1`, `q2`).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_triangle\_barycentric\_coords**(point: [Vector3](class_vector3.md#class-vector3), a: [Vector3](class_vector3.md#class-vector3), b: [Vector3](class_vector3.md#class-vector3), c: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-geometry3d-method-get-triangle-barycentric-coords)

Returns a [Vector3](class_vector3.md#class-vector3) containing weights based on how close a 3D position ( `point`) is to a triangle's different vertices ( `a`, `b` and `c`). This is useful for interpolating between the data of different vertices in a triangle. One example use case is using this to smoothly rotate over a mesh instead of relying solely on face normals.

[Here is a more detailed explanation of barycentric coordinates.](https://en.wikipedia.org/wiki/Barycentric_coordinate_system)

* * *

[Variant](class_variant.md#class-variant) **ray\_intersects\_triangle**(from: [Vector3](class_vector3.md#class-vector3), dir: [Vector3](class_vector3.md#class-vector3), a: [Vector3](class_vector3.md#class-vector3), b: [Vector3](class_vector3.md#class-vector3), c: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-geometry3d-method-ray-intersects-triangle)

Tests if the 3D ray starting at `from` with the direction of `dir` intersects the triangle specified by `a`, `b` and `c`. If yes, returns the point of intersection as [Vector3](class_vector3.md#class-vector3). If no intersection takes place, returns `null`.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **segment\_intersects\_convex**(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), planes: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\]) [🔗](#class-geometry3d-method-segment-intersects-convex)

Given a convex hull defined though the [Plane](class_plane.md#class-plane) s in the array `planes`, tests if the segment ( `from`, `to`) intersects with that hull. If an intersection is found, returns a [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) containing the point the intersection and the hull's normal. Otherwise, returns an empty array.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **segment\_intersects\_cylinder**(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), height: [float](class_float.md#class-float), radius: [float](class_float.md#class-float)) [🔗](#class-geometry3d-method-segment-intersects-cylinder)

Checks if the segment ( `from`, `to`) intersects the cylinder with height `height` that is centered at the origin and has radius `radius`. If no, returns an empty [PackedVector3Array](class_packedvector3array.md#class-packedvector3array). If an intersection takes place, the returned array contains the point of intersection and the cylinder's normal at the point of intersection.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **segment\_intersects\_sphere**(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), sphere\_position: [Vector3](class_vector3.md#class-vector3), sphere\_radius: [float](class_float.md#class-float)) [🔗](#class-geometry3d-method-segment-intersects-sphere)

Checks if the segment ( `from`, `to`) intersects the sphere that is located at `sphere_position` and has radius `sphere_radius`. If no, returns an empty [PackedVector3Array](class_packedvector3array.md#class-packedvector3array). If yes, returns a [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) containing the point of intersection and the sphere's normal at the point of intersection.

* * *

[Variant](class_variant.md#class-variant) **segment\_intersects\_triangle**(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), a: [Vector3](class_vector3.md#class-vector3), b: [Vector3](class_vector3.md#class-vector3), c: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-geometry3d-method-segment-intersects-triangle)

Tests if the segment ( `from`, `to`) intersects the triangle `a`, `b`, `c`. If yes, returns the point of intersection as [Vector3](class_vector3.md#class-vector3). If no intersection takes place, returns `null`.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **tetrahedralize\_delaunay**(points: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array)) [🔗](#class-geometry3d-method-tetrahedralize-delaunay)

Tetrahedralizes the volume specified by a discrete set of `points` in 3D space, ensuring that no point lies within the circumsphere of any resulting tetrahedron. The method returns a [PackedInt32Array](class_packedint32array.md#class-packedint32array) where each tetrahedron consists of four consecutive point indices into the `points` array (resulting in an array with `n * 4` elements, where `n` is the number of tetrahedra found). If the tetrahedralization is unsuccessful, an empty [PackedInt32Array](class_packedint32array.md#class-packedint32array) is returned.

[Previous](class_geometry2d.md "Geometry2D") [Next](class_gltfobjectmodelproperty.md "GLTFObjectModelProperty")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_geometry2d.md "Geometry2D") [Next](class_gltfobjectmodelproperty.md "GLTFObjectModelProperty")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).