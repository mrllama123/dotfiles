---
title: CSGPolygon3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_csgpolygon3d.html
crawled_at: "2026-08-13T10:29:02+12:00"
content_hash: af4eb03942c73897fde4362bc9549c9eabb536920d20520337e2ecb4c0447a71
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CSGPolygon3D

* * *

# CSGPolygon3D

**Inherits:** [CSGPrimitive3D](class_csgprimitive3d.md#class-csgprimitive3d) **<** [CSGShape3D](class_csgshape3d.md#class-csgshape3d) **<** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Extrudes a 2D polygon shape to create a 3D mesh.

## Description

An array of 2D points is extruded to quickly and easily create a variety of 3D meshes. See also [CSGMesh3D](class_csgmesh3d.md#class-csgmesh3d) for using 3D meshes as CSG nodes.

**Note:** CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) with a [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh). Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.

## Tutorials

- [Prototyping levels with CSG](../tutorials/3d/csg_tools.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [depth](#class-csgpolygon3d-property-depth) | `1.0` |
| [Material](class_material.md#class-material) | [material](#class-csgpolygon3d-property-material) |  |
| [Mode](#enum-csgpolygon3d-mode) | [mode](#class-csgpolygon3d-property-mode) | `0` |
| [bool](class_bool.md#class-bool) | [path\_continuous\_u](#class-csgpolygon3d-property-path-continuous-u) |  |
| [float](class_float.md#class-float) | [path\_interval](#class-csgpolygon3d-property-path-interval) |  |
| [PathIntervalType](#enum-csgpolygon3d-pathintervaltype) | [path\_interval\_type](#class-csgpolygon3d-property-path-interval-type) |  |
| [bool](class_bool.md#class-bool) | [path\_joined](#class-csgpolygon3d-property-path-joined) |  |
| [bool](class_bool.md#class-bool) | [path\_local](#class-csgpolygon3d-property-path-local) |  |
| [NodePath](class_nodepath.md#class-nodepath) | [path\_node](#class-csgpolygon3d-property-path-node) |  |
| [PathRotation](#enum-csgpolygon3d-pathrotation) | [path\_rotation](#class-csgpolygon3d-property-path-rotation) |  |
| [bool](class_bool.md#class-bool) | [path\_rotation\_accurate](#class-csgpolygon3d-property-path-rotation-accurate) |  |
| [float](class_float.md#class-float) | [path\_simplify\_angle](#class-csgpolygon3d-property-path-simplify-angle) |  |
| [float](class_float.md#class-float) | [path\_u\_distance](#class-csgpolygon3d-property-path-u-distance) |  |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [polygon](#class-csgpolygon3d-property-polygon) | `PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)` |
| [bool](class_bool.md#class-bool) | [smooth\_faces](#class-csgpolygon3d-property-smooth-faces) | `false` |
| [float](class_float.md#class-float) | [spin\_degrees](#class-csgpolygon3d-property-spin-degrees) |  |
| [int](class_int.md#class-int) | [spin\_sides](#class-csgpolygon3d-property-spin-sides) |  |

* * *

## Enumerations

enum **Mode**: [🔗](#enum-csgpolygon3d-mode)

[Mode](#enum-csgpolygon3d-mode) **MODE\_DEPTH** = `0`

The [polygon](#class-csgpolygon3d-property-polygon) shape is extruded along the negative Z axis.

[Mode](#enum-csgpolygon3d-mode) **MODE\_SPIN** = `1`

The [polygon](#class-csgpolygon3d-property-polygon) shape is extruded by rotating it around the Y axis.

[Mode](#enum-csgpolygon3d-mode) **MODE\_PATH** = `2`

The [polygon](#class-csgpolygon3d-property-polygon) shape is extruded along the [Path3D](class_path3d.md#class-path3d) specified in [path\_node](#class-csgpolygon3d-property-path-node).

* * *

enum **PathRotation**: [🔗](#enum-csgpolygon3d-pathrotation)

[PathRotation](#enum-csgpolygon3d-pathrotation) **PATH\_ROTATION\_POLYGON** = `0`

The [polygon](#class-csgpolygon3d-property-polygon) shape is not rotated.

**Note:** Requires the path Z coordinates to continually decrease to ensure viable shapes.

[PathRotation](#enum-csgpolygon3d-pathrotation) **PATH\_ROTATION\_PATH** = `1`

The [polygon](#class-csgpolygon3d-property-polygon) shape is rotated along the path, but it is not rotated around the path axis.

**Note:** Requires the path Z coordinates to continually decrease to ensure viable shapes.

[PathRotation](#enum-csgpolygon3d-pathrotation) **PATH\_ROTATION\_PATH\_FOLLOW** = `2`

The [polygon](#class-csgpolygon3d-property-polygon) shape follows the path and its rotations around the path axis.

* * *

enum **PathIntervalType**: [🔗](#enum-csgpolygon3d-pathintervaltype)

[PathIntervalType](#enum-csgpolygon3d-pathintervaltype) **PATH\_INTERVAL\_DISTANCE** = `0`

When [mode](#class-csgpolygon3d-property-mode) is set to [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), [path\_interval](#class-csgpolygon3d-property-path-interval) will determine the distance, in meters, each interval of the path will extrude.

[PathIntervalType](#enum-csgpolygon3d-pathintervaltype) **PATH\_INTERVAL\_SUBDIVIDE** = `1`

When [mode](#class-csgpolygon3d-property-mode) is set to [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), [path\_interval](#class-csgpolygon3d-property-path-interval) will subdivide the polygons along the path.

* * *

## Property Descriptions

[float](class_float.md#class-float) **depth** = `1.0` [🔗](#class-csgpolygon3d-property-depth)

- void **set\_depth**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_DEPTH](#class-csgpolygon3d-constant-mode-depth), the depth of the extrusion.

* * *

[Material](class_material.md#class-material) **material** [🔗](#class-csgpolygon3d-property-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


Material to use for the resulting mesh. The UV maps the top half of the material to the extruded shape (U along the length of the extrusions and V around the outline of the [polygon](#class-csgpolygon3d-property-polygon)), the bottom-left quarter to the front end face, and the bottom-right quarter to the back end face.

* * *

[Mode](#enum-csgpolygon3d-mode) **mode** = `0` [🔗](#class-csgpolygon3d-property-mode)

- void **set\_mode**(value: [Mode](#enum-csgpolygon3d-mode))

- [Mode](#enum-csgpolygon3d-mode) **get\_mode**()


The [mode](#class-csgpolygon3d-property-mode) used to extrude the [polygon](#class-csgpolygon3d-property-polygon).

* * *

[bool](class_bool.md#class-bool) **path\_continuous\_u** [🔗](#class-csgpolygon3d-property-path-continuous-u)

- void **set\_path\_continuous\_u**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_path\_continuous\_u**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), by default, the top half of the [material](#class-csgpolygon3d-property-material) is stretched along the entire length of the extruded shape. If `false` the top half of the material is repeated every step of the extrusion.

* * *

[float](class_float.md#class-float) **path\_interval** [🔗](#class-csgpolygon3d-property-path-interval)

- void **set\_path\_interval**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_interval**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), the path interval or ratio of path points to extrusions.

* * *

[PathIntervalType](#enum-csgpolygon3d-pathintervaltype) **path\_interval\_type** [🔗](#class-csgpolygon3d-property-path-interval-type)

- void **set\_path\_interval\_type**(value: [PathIntervalType](#enum-csgpolygon3d-pathintervaltype))

- [PathIntervalType](#enum-csgpolygon3d-pathintervaltype) **get\_path\_interval\_type**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), this will determine if the interval should be by distance ( [PATH\_INTERVAL\_DISTANCE](#class-csgpolygon3d-constant-path-interval-distance)) or subdivision fractions ( [PATH\_INTERVAL\_SUBDIVIDE](#class-csgpolygon3d-constant-path-interval-subdivide)).

* * *

[bool](class_bool.md#class-bool) **path\_joined** [🔗](#class-csgpolygon3d-property-path-joined)

- void **set\_path\_joined**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_path\_joined**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), if `true` the ends of the path are joined, by adding an extrusion between the last and first points of the path.

* * *

[bool](class_bool.md#class-bool) **path\_local** [🔗](#class-csgpolygon3d-property-path-local)

- void **set\_path\_local**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_path\_local**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), if `true` the [Transform3D](class_transform3d.md#class-transform3d) of the **CSGPolygon3D** is used as the starting point for the extrusions, not the [Transform3D](class_transform3d.md#class-transform3d) of the [path\_node](#class-csgpolygon3d-property-path-node).

* * *

[NodePath](class_nodepath.md#class-nodepath) **path\_node** [🔗](#class-csgpolygon3d-property-path-node)

- void **set\_path\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_path\_node**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), the location of the [Path3D](class_path3d.md#class-path3d) object used to extrude the [polygon](#class-csgpolygon3d-property-polygon).

* * *

[PathRotation](#enum-csgpolygon3d-pathrotation) **path\_rotation** [🔗](#class-csgpolygon3d-property-path-rotation)

- void **set\_path\_rotation**(value: [PathRotation](#enum-csgpolygon3d-pathrotation))

- [PathRotation](#enum-csgpolygon3d-pathrotation) **get\_path\_rotation**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), the path rotation method used to rotate the [polygon](#class-csgpolygon3d-property-polygon) as it is extruded.

* * *

[bool](class_bool.md#class-bool) **path\_rotation\_accurate** [🔗](#class-csgpolygon3d-property-path-rotation-accurate)

- void **set\_path\_rotation\_accurate**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_path\_rotation\_accurate**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), if `true` the polygon will be rotated according to the proper tangent of the path at the sampled points. If `false` an approximation is used, which decreases in accuracy as the number of subdivisions decreases.

* * *

[float](class_float.md#class-float) **path\_simplify\_angle** [🔗](#class-csgpolygon3d-property-path-simplify-angle)

- void **set\_path\_simplify\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_simplify\_angle**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), extrusions that are less than this angle, will be merged together to reduce polygon count.

* * *

[float](class_float.md#class-float) **path\_u\_distance** [🔗](#class-csgpolygon3d-property-path-u-distance)

- void **set\_path\_u\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_u\_distance**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_PATH](#class-csgpolygon3d-constant-mode-path), this is the distance along the path, in meters, the texture coordinates will tile. When set to 0, texture coordinates will match geometry exactly with no tiling.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **polygon** = `PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)` [🔗](#class-csgpolygon3d-property-polygon)

- void **set\_polygon**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_polygon**()


The point array that defines the 2D polygon that is extruded. This can be a convex or concave polygon with 3 or more points. The polygon must _not_ have any intersecting edges. Otherwise, triangulation will fail and no mesh will be generated.

**Note:** If only 1 or 2 points are defined in [polygon](#class-csgpolygon3d-property-polygon), no mesh will be generated.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

* * *

[bool](class_bool.md#class-bool) **smooth\_faces** = `false` [🔗](#class-csgpolygon3d-property-smooth-faces)

- void **set\_smooth\_faces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_smooth\_faces**()


If `true`, applies smooth shading to the extrusions.

* * *

[float](class_float.md#class-float) **spin\_degrees** [🔗](#class-csgpolygon3d-property-spin-degrees)

- void **set\_spin\_degrees**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_spin\_degrees**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_SPIN](#class-csgpolygon3d-constant-mode-spin), the total number of degrees the [polygon](#class-csgpolygon3d-property-polygon) is rotated when extruding.

* * *

[int](class_int.md#class-int) **spin\_sides** [🔗](#class-csgpolygon3d-property-spin-sides)

- void **set\_spin\_sides**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_spin\_sides**()


When [mode](#class-csgpolygon3d-property-mode) is [MODE\_SPIN](#class-csgpolygon3d-constant-mode-spin), the number of extrusions made.

[Previous](class_csgmesh3d.md "CSGMesh3D") [Next](class_csgprimitive3d.md "CSGPrimitive3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_csgmesh3d.md "CSGMesh3D") [Next](class_csgprimitive3d.md "CSGPrimitive3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).