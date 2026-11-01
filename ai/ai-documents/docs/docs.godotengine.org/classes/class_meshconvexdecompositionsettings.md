---
title: MeshConvexDecompositionSettings — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_meshconvexdecompositionsettings.html
crawled_at: "2026-08-13T10:33:08+12:00"
content_hash: 927c3a1ffb0ed479ba53ccb8aa5fc5caf32acdb449a7d1127181f9d180f16b9f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MeshConvexDecompositionSettings

* * *

# MeshConvexDecompositionSettings

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Parameters to be used with a [Mesh](class_mesh.md#class-mesh) convex decomposition operation.

## Description

Parameters to be used with a [Mesh](class_mesh.md#class-mesh) convex decomposition operation.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [convex\_hull\_approximation](#class-meshconvexdecompositionsettings-property-convex-hull-approximation) | `true` |
| [int](class_int.md#class-int) | [convex\_hull\_downsampling](#class-meshconvexdecompositionsettings-property-convex-hull-downsampling) | `4` |
| [float](class_float.md#class-float) | [max\_concavity](#class-meshconvexdecompositionsettings-property-max-concavity) | `1.0` |
| [int](class_int.md#class-int) | [max\_convex\_hulls](#class-meshconvexdecompositionsettings-property-max-convex-hulls) | `1` |
| [int](class_int.md#class-int) | [max\_num\_vertices\_per\_convex\_hull](#class-meshconvexdecompositionsettings-property-max-num-vertices-per-convex-hull) | `32` |
| [float](class_float.md#class-float) | [min\_volume\_per\_convex\_hull](#class-meshconvexdecompositionsettings-property-min-volume-per-convex-hull) | `0.0001` |
| [Mode](#enum-meshconvexdecompositionsettings-mode) | [mode](#class-meshconvexdecompositionsettings-property-mode) | `0` |
| [bool](class_bool.md#class-bool) | [normalize\_mesh](#class-meshconvexdecompositionsettings-property-normalize-mesh) | `false` |
| [int](class_int.md#class-int) | [plane\_downsampling](#class-meshconvexdecompositionsettings-property-plane-downsampling) | `4` |
| [bool](class_bool.md#class-bool) | [project\_hull\_vertices](#class-meshconvexdecompositionsettings-property-project-hull-vertices) | `true` |
| [int](class_int.md#class-int) | [resolution](#class-meshconvexdecompositionsettings-property-resolution) | `10000` |
| [float](class_float.md#class-float) | [revolution\_axes\_clipping\_bias](#class-meshconvexdecompositionsettings-property-revolution-axes-clipping-bias) | `0.05` |
| [float](class_float.md#class-float) | [symmetry\_planes\_clipping\_bias](#class-meshconvexdecompositionsettings-property-symmetry-planes-clipping-bias) | `0.05` |

* * *

## Enumerations

enum **Mode**: [🔗](#enum-meshconvexdecompositionsettings-mode)

[Mode](#enum-meshconvexdecompositionsettings-mode) **CONVEX\_DECOMPOSITION\_MODE\_VOXEL** = `0`

Constant for voxel-based approximate convex decomposition.

[Mode](#enum-meshconvexdecompositionsettings-mode) **CONVEX\_DECOMPOSITION\_MODE\_TETRAHEDRON** = `1`

Constant for tetrahedron-based approximate convex decomposition.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **convex\_hull\_approximation** = `true` [🔗](#class-meshconvexdecompositionsettings-property-convex-hull-approximation)

- void **set\_convex\_hull\_approximation**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_convex\_hull\_approximation**()


If `true`, uses approximation for computing convex hulls.

* * *

[int](class_int.md#class-int) **convex\_hull\_downsampling** = `4` [🔗](#class-meshconvexdecompositionsettings-property-convex-hull-downsampling)

- void **set\_convex\_hull\_downsampling**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_convex\_hull\_downsampling**()


Controls the precision of the convex-hull generation process during the clipping plane selection stage. Ranges from `1` to `16`.

* * *

[float](class_float.md#class-float) **max\_concavity** = `1.0` [🔗](#class-meshconvexdecompositionsettings-property-max-concavity)

- void **set\_max\_concavity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_concavity**()


Maximum concavity. Ranges from `0.0` to `1.0`.

* * *

[int](class_int.md#class-int) **max\_convex\_hulls** = `1` [🔗](#class-meshconvexdecompositionsettings-property-max-convex-hulls)

- void **set\_max\_convex\_hulls**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_convex\_hulls**()


The maximum number of convex hulls to produce from the merge operation.

* * *

[int](class_int.md#class-int) **max\_num\_vertices\_per\_convex\_hull** = `32` [🔗](#class-meshconvexdecompositionsettings-property-max-num-vertices-per-convex-hull)

- void **set\_max\_num\_vertices\_per\_convex\_hull**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_num\_vertices\_per\_convex\_hull**()


Controls the maximum number of triangles per convex-hull. Ranges from `4` to `1024`.

* * *

[float](class_float.md#class-float) **min\_volume\_per\_convex\_hull** = `0.0001` [🔗](#class-meshconvexdecompositionsettings-property-min-volume-per-convex-hull)

- void **set\_min\_volume\_per\_convex\_hull**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_min\_volume\_per\_convex\_hull**()


Controls the adaptive sampling of the generated convex-hulls. Ranges from `0.0` to `0.01`.

* * *

[Mode](#enum-meshconvexdecompositionsettings-mode) **mode** = `0` [🔗](#class-meshconvexdecompositionsettings-property-mode)

- void **set\_mode**(value: [Mode](#enum-meshconvexdecompositionsettings-mode))

- [Mode](#enum-meshconvexdecompositionsettings-mode) **get\_mode**()


Mode for the approximate convex decomposition.

* * *

[bool](class_bool.md#class-bool) **normalize\_mesh** = `false` [🔗](#class-meshconvexdecompositionsettings-property-normalize-mesh)

- void **set\_normalize\_mesh**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_normalize\_mesh**()


If `true`, normalizes the mesh before applying the convex decomposition.

* * *

[int](class_int.md#class-int) **plane\_downsampling** = `4` [🔗](#class-meshconvexdecompositionsettings-property-plane-downsampling)

- void **set\_plane\_downsampling**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_plane\_downsampling**()


Controls the granularity of the search for the "best" clipping plane. Ranges from `1` to `16`.

* * *

[bool](class_bool.md#class-bool) **project\_hull\_vertices** = `true` [🔗](#class-meshconvexdecompositionsettings-property-project-hull-vertices)

- void **set\_project\_hull\_vertices**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_project\_hull\_vertices**()


If `true`, projects output convex hull vertices onto the original source mesh to increase floating-point accuracy of the results.

* * *

[int](class_int.md#class-int) **resolution** = `10000` [🔗](#class-meshconvexdecompositionsettings-property-resolution)

- void **set\_resolution**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_resolution**()


Maximum number of voxels generated during the voxelization stage.

* * *

[float](class_float.md#class-float) **revolution\_axes\_clipping\_bias** = `0.05` [🔗](#class-meshconvexdecompositionsettings-property-revolution-axes-clipping-bias)

- void **set\_revolution\_axes\_clipping\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_revolution\_axes\_clipping\_bias**()


Controls the bias toward clipping along revolution axes. Ranges from `0.0` to `1.0`.

* * *

[float](class_float.md#class-float) **symmetry\_planes\_clipping\_bias** = `0.05` [🔗](#class-meshconvexdecompositionsettings-property-symmetry-planes-clipping-bias)

- void **set\_symmetry\_planes\_clipping\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_symmetry\_planes\_clipping\_bias**()


Controls the bias toward clipping along symmetry planes. Ranges from `0.0` to `1.0`.

[Previous](class_marshalls.md "Marshalls") [Next](class_meshdatatool.md "MeshDataTool")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_marshalls.md "Marshalls") [Next](class_meshdatatool.md "MeshDataTool")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).