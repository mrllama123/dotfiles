---
title: VoxelGI — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_voxelgi.html
crawled_at: "2026-08-13T10:25:12+12:00"
content_hash: ce3853d924ee672b55fdc2a41883cb5ffd4ccb5a4b0c1f72d38caf2ec61c3258
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VoxelGI

* * *

# VoxelGI

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Real-time global illumination (GI) probe.

## Description

**VoxelGI** s are used to provide high-quality real-time indirect light and reflections to scenes. They precompute the effect of objects that emit light and the effect of static geometry to simulate the behavior of complex light in real-time. **VoxelGI** s need to be baked before having a visible effect. However, once baked, dynamic objects will receive light from them. Furthermore, lights can be fully dynamic or baked.

**Note:** **VoxelGI** is only supported in the Forward+ rendering method, not Mobile or Compatibility.

**Procedural generation:** **VoxelGI** can be baked in an exported project, which makes it suitable for procedurally generated or user-built levels as long as all the geometry is generated in advance. For games where geometry is generated at any time during gameplay, SDFGI is more suitable (see [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)).

**Performance:** **VoxelGI** is relatively demanding on the GPU and is not suited to low-end hardware such as integrated graphics (consider [LightmapGI](class_lightmapgi.md#class-lightmapgi) instead). To improve performance, adjust [ProjectSettings.rendering/global\_illumination/voxel\_gi/quality](class_projectsettings.md#class-projectsettings-property-rendering-global-illumination-voxel-gi-quality) and enable [ProjectSettings.rendering/global\_illumination/gi/use\_half\_resolution](class_projectsettings.md#class-projectsettings-property-rendering-global-illumination-gi-use-half-resolution) in the Project Settings. To provide a fallback for low-end hardware, consider adding an option to disable **VoxelGI** in your project's options menus. A **VoxelGI** node can be disabled by hiding it.

**Note:** Meshes should have sufficiently thick walls to avoid light leaks (avoid one-sided walls). For interior levels, enclose your level geometry in a sufficiently large box and bridge the loops to close the mesh. To further prevent light leaks, you can also strategically place temporary [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) nodes with their [GeometryInstance3D.gi\_mode](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-mode) set to [GeometryInstance3D.GI\_MODE\_STATIC](class_geometryinstance3d.md#class-geometryinstance3d-constant-gi-mode-static). These temporary nodes can then be hidden after baking the **VoxelGI** node.

## Tutorials

- [Using Voxel global illumination](../tutorials/3d/global_illumination/using_voxel_gi.md)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [CameraAttributes](class_cameraattributes.md#class-cameraattributes) | [camera\_attributes](#class-voxelgi-property-camera-attributes) |  |
| [VoxelGIData](class_voxelgidata.md#class-voxelgidata) | [data](#class-voxelgi-property-data) |  |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-voxelgi-property-size) | `Vector3(20, 20, 20)` |
| [Subdiv](#enum-voxelgi-subdiv) | [subdiv](#class-voxelgi-property-subdiv) | `1` |

## Methods

|     |     |
| --- | --- |
| void | [bake](#class-voxelgi-method-bake)(from\_node: [Node](class_node.md#class-node) = null, create\_visual\_debug: [bool](class_bool.md#class-bool) = false) |
| void | [debug\_bake](#class-voxelgi-method-debug-bake)() |

* * *

## Enumerations

enum **Subdiv**: [🔗](#enum-voxelgi-subdiv)

[Subdiv](#enum-voxelgi-subdiv) **SUBDIV\_64** = `0`

Use 64 subdivisions. This is the lowest quality setting, but the fastest. Use it if you can, but especially use it on lower-end hardware.

[Subdiv](#enum-voxelgi-subdiv) **SUBDIV\_128** = `1`

Use 128 subdivisions. This is the default quality setting.

[Subdiv](#enum-voxelgi-subdiv) **SUBDIV\_256** = `2`

Use 256 subdivisions.

[Subdiv](#enum-voxelgi-subdiv) **SUBDIV\_512** = `3`

Use 512 subdivisions. This is the highest quality setting, but the slowest. On lower-end hardware, this could cause the GPU to stall.

[Subdiv](#enum-voxelgi-subdiv) **SUBDIV\_MAX** = `4`

Represents the size of the [Subdiv](#enum-voxelgi-subdiv) enum.

* * *

## Property Descriptions

[CameraAttributes](class_cameraattributes.md#class-cameraattributes) **camera\_attributes** [🔗](#class-voxelgi-property-camera-attributes)

- void **set\_camera\_attributes**(value: [CameraAttributes](class_cameraattributes.md#class-cameraattributes))

- [CameraAttributes](class_cameraattributes.md#class-cameraattributes) **get\_camera\_attributes**()


The [CameraAttributes](class_cameraattributes.md#class-cameraattributes) resource that specifies exposure levels to bake at. Auto-exposure and non exposure properties will be ignored. Exposure settings should be used to reduce the dynamic range present when baking. If exposure is too high, the **VoxelGI** will have banding artifacts or may have over-exposure artifacts.

* * *

[VoxelGIData](class_voxelgidata.md#class-voxelgidata) **data** [🔗](#class-voxelgi-property-data)

- void **set\_probe\_data**(value: [VoxelGIData](class_voxelgidata.md#class-voxelgidata))

- [VoxelGIData](class_voxelgidata.md#class-voxelgidata) **get\_probe\_data**()


The [VoxelGIData](class_voxelgidata.md#class-voxelgidata) resource that holds the data for this **VoxelGI**.

* * *

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(20, 20, 20)` [🔗](#class-voxelgi-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The size of the area covered by the **VoxelGI**. If you make the size larger without increasing the subdivisions with [subdiv](#class-voxelgi-property-subdiv), the size of each cell will increase and result in lower detailed lighting.

**Note:** Size is clamped to 1.0 unit or more on each axis.

* * *

[Subdiv](#enum-voxelgi-subdiv) **subdiv** = `1` [🔗](#class-voxelgi-property-subdiv)

- void **set\_subdiv**(value: [Subdiv](#enum-voxelgi-subdiv))

- [Subdiv](#enum-voxelgi-subdiv) **get\_subdiv**()


Number of times to subdivide the grid that the **VoxelGI** operates on. A higher number results in finer detail and thus higher visual quality, while lower numbers result in better performance.

* * *

## Method Descriptions

void **bake**(from\_node: [Node](class_node.md#class-node) = null, create\_visual\_debug: [bool](class_bool.md#class-bool) = false) [🔗](#class-voxelgi-method-bake)

Bakes the effect from all [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) s marked with [GeometryInstance3D.GI\_MODE\_STATIC](class_geometryinstance3d.md#class-geometryinstance3d-constant-gi-mode-static) and [Light3D](class_light3d.md#class-light3d) s marked with either [Light3D.BAKE\_STATIC](class_light3d.md#class-light3d-constant-bake-static) or [Light3D.BAKE\_DYNAMIC](class_light3d.md#class-light3d-constant-bake-dynamic). If `create_visual_debug` is `true`, after baking the light, this will generate a [MultiMesh](class_multimesh.md#class-multimesh) that has a cube representing each solid cell with each cube colored to the cell's albedo color. This can be used to visualize the **VoxelGI**'s data and debug any issues that may be occurring.

**Note:** [bake()](#class-voxelgi-method-bake) works from the editor and in exported projects. This makes it suitable for procedurally generated or user-built levels. Baking a **VoxelGI** node generally takes from 5 to 20 seconds in most scenes. Reducing [subdiv](#class-voxelgi-property-subdiv) can speed up baking.

**Note:** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) s and [Light3D](class_light3d.md#class-light3d) s must be fully ready before [bake()](#class-voxelgi-method-bake) is called. If you are procedurally creating those and some meshes or lights are missing from your baked **VoxelGI**, use `call_deferred("bake")` instead of calling [bake()](#class-voxelgi-method-bake) directly.

* * *

void **debug\_bake**() [🔗](#class-voxelgi-method-debug-bake)

Calls [bake()](#class-voxelgi-method-bake) with `create_visual_debug` enabled.

[Previous](class_visualinstance3d.md "VisualInstance3D") [Next](class_vscrollbar.md "VScrollBar")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualinstance3d.md "VisualInstance3D") [Next](class_vscrollbar.md "VScrollBar")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).