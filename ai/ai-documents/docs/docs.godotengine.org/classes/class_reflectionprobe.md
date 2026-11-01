---
title: ReflectionProbe — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_reflectionprobe.html
crawled_at: "2026-08-13T10:20:21+12:00"
content_hash: e7b1a760cc002bf3c9cf949373173091bf787d316a3da3cd53d1977fec45050e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ReflectionProbe

* * *

# ReflectionProbe

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Captures its surroundings to create fast, accurate reflections from a given point.

## Description

Captures its surroundings as a cubemap, and stores versions of it with increasing levels of blur to simulate different material roughnesses.

The **ReflectionProbe** is used to create high-quality reflections at a low performance cost (when [update\_mode](#class-reflectionprobe-property-update-mode) is [UPDATE\_ONCE](#class-reflectionprobe-constant-update-once)). **ReflectionProbe** s can be blended together and with the rest of the scene smoothly. **ReflectionProbe** s can also be combined with [VoxelGI](class_voxelgi.md#class-voxelgi), SDFGI ( [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)) and screen-space reflections ( [Environment.ssr\_enabled](class_environment.md#class-environment-property-ssr-enabled)) to get more accurate reflections in specific areas. **ReflectionProbe** s render all objects within their [cull\_mask](#class-reflectionprobe-property-cull-mask), so updating them can be quite expensive. It is best to update them once with the important static objects and then leave them as-is.

**Note:** Unlike [VoxelGI](class_voxelgi.md#class-voxelgi) and SDFGI, **ReflectionProbe** s only source their environment from a [WorldEnvironment](class_worldenvironment.md#class-worldenvironment) node. If you specify an [Environment](class_environment.md#class-environment) resource within a [Camera3D](class_camera3d.md#class-camera3d) node, it will be ignored by the **ReflectionProbe**. This can lead to incorrect lighting within the **ReflectionProbe**.

**Note:** When using the Mobile rendering method, only `8` reflection probes can be displayed on each mesh resource, while the Compatibility rendering method only supports up to `2` reflection probes on each mesh. Attempting to display more than `8` reflection probes on a single mesh resource using the Mobile renderer will result in reflection probes flickering in and out as the camera moves, while the Compatibility renderer will not render any additional probes if more than `2` reflection probes are being used.

**Note:** When using the Mobile rendering method, reflection probes will only correctly affect meshes whose visibility AABB intersects with the reflection probe's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, [GeometryInstance3D.extra\_cull\_margin](class_geometryinstance3d.md#class-geometryinstance3d-property-extra-cull-margin) must be increased on the mesh. Otherwise, the reflection probe may not be visible on the mesh.

## Tutorials

- [Reflection probes](../tutorials/3d/global_illumination/reflection_probes.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [ambient\_color](#class-reflectionprobe-property-ambient-color) | `Color(0, 0, 0, 1)` |
| [float](class_float.md#class-float) | [ambient\_color\_energy](#class-reflectionprobe-property-ambient-color-energy) | `1.0` |
| [AmbientMode](#enum-reflectionprobe-ambientmode) | [ambient\_mode](#class-reflectionprobe-property-ambient-mode) | `1` |
| [float](class_float.md#class-float) | [blend\_distance](#class-reflectionprobe-property-blend-distance) | `1.0` |
| [bool](class_bool.md#class-bool) | [box\_projection](#class-reflectionprobe-property-box-projection) | `false` |
| [int](class_int.md#class-int) | [cull\_mask](#class-reflectionprobe-property-cull-mask) | `1048575` |
| [bool](class_bool.md#class-bool) | [enable\_shadows](#class-reflectionprobe-property-enable-shadows) | `false` |
| [float](class_float.md#class-float) | [intensity](#class-reflectionprobe-property-intensity) | `1.0` |
| [bool](class_bool.md#class-bool) | [interior](#class-reflectionprobe-property-interior) | `false` |
| [float](class_float.md#class-float) | [max\_distance](#class-reflectionprobe-property-max-distance) | `0.0` |
| [float](class_float.md#class-float) | [mesh\_lod\_threshold](#class-reflectionprobe-property-mesh-lod-threshold) | `1.0` |
| [Vector3](class_vector3.md#class-vector3) | [origin\_offset](#class-reflectionprobe-property-origin-offset) | `Vector3(0, 0, 0)` |
| [int](class_int.md#class-int) | [reflection\_mask](#class-reflectionprobe-property-reflection-mask) | `1048575` |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-reflectionprobe-property-size) | `Vector3(20, 20, 20)` |
| [UpdateMode](#enum-reflectionprobe-updatemode) | [update\_mode](#class-reflectionprobe-property-update-mode) | `0` |

* * *

## Enumerations

enum **UpdateMode**: [🔗](#enum-reflectionprobe-updatemode)

[UpdateMode](#enum-reflectionprobe-updatemode) **UPDATE\_ONCE** = `0`

Update the probe once on the next frame (recommended for most objects). The corresponding radiance map will be generated over the following six frames. This takes more time to update than [UPDATE\_ALWAYS](#class-reflectionprobe-constant-update-always), but it has a lower performance cost and can result in higher-quality reflections. The ReflectionProbe is updated when its transform changes, but not when nearby geometry changes. You can force a **ReflectionProbe** update by moving the **ReflectionProbe** slightly in any direction.

[UpdateMode](#enum-reflectionprobe-updatemode) **UPDATE\_ALWAYS** = `1`

Update the probe every frame. This provides better results for fast-moving dynamic objects (such as cars). However, it has a significant performance cost. Due to the cost, it's recommended to only use one ReflectionProbe with [UPDATE\_ALWAYS](#class-reflectionprobe-constant-update-always) at most per scene. For all other use cases, use [UPDATE\_ONCE](#class-reflectionprobe-constant-update-once).

* * *

enum **AmbientMode**: [🔗](#enum-reflectionprobe-ambientmode)

[AmbientMode](#enum-reflectionprobe-ambientmode) **AMBIENT\_DISABLED** = `0`

Do not apply any ambient lighting inside the **ReflectionProbe**'s box defined by its [size](#class-reflectionprobe-property-size).

[AmbientMode](#enum-reflectionprobe-ambientmode) **AMBIENT\_ENVIRONMENT** = `1`

Apply automatically-sourced environment lighting inside the **ReflectionProbe**'s box defined by its [size](#class-reflectionprobe-property-size).

[AmbientMode](#enum-reflectionprobe-ambientmode) **AMBIENT\_COLOR** = `2`

Apply custom ambient lighting inside the **ReflectionProbe**'s box defined by its [size](#class-reflectionprobe-property-size). See [ambient\_color](#class-reflectionprobe-property-ambient-color) and [ambient\_color\_energy](#class-reflectionprobe-property-ambient-color-energy).

* * *

## Property Descriptions

[Color](class_color.md#class-color) **ambient\_color** = `Color(0, 0, 0, 1)` [🔗](#class-reflectionprobe-property-ambient-color)

- void **set\_ambient\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_ambient\_color**()


The custom ambient color to use within the **ReflectionProbe**'s box defined by its [size](#class-reflectionprobe-property-size). Only effective if [ambient\_mode](#class-reflectionprobe-property-ambient-mode) is [AMBIENT\_COLOR](#class-reflectionprobe-constant-ambient-color).

* * *

[float](class_float.md#class-float) **ambient\_color\_energy** = `1.0` [🔗](#class-reflectionprobe-property-ambient-color-energy)

- void **set\_ambient\_color\_energy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ambient\_color\_energy**()


The custom ambient color energy to use within the **ReflectionProbe**'s box defined by its [size](#class-reflectionprobe-property-size). Only effective if [ambient\_mode](#class-reflectionprobe-property-ambient-mode) is [AMBIENT\_COLOR](#class-reflectionprobe-constant-ambient-color).

* * *

[AmbientMode](#enum-reflectionprobe-ambientmode) **ambient\_mode** = `1` [🔗](#class-reflectionprobe-property-ambient-mode)

- void **set\_ambient\_mode**(value: [AmbientMode](#enum-reflectionprobe-ambientmode))

- [AmbientMode](#enum-reflectionprobe-ambientmode) **get\_ambient\_mode**()


The ambient color to use within the **ReflectionProbe**'s box defined by its [size](#class-reflectionprobe-property-size). The ambient color will smoothly blend with other **ReflectionProbe** s and the rest of the scene (outside the **ReflectionProbe**'s box defined by its [size](#class-reflectionprobe-property-size)).

* * *

[float](class_float.md#class-float) **blend\_distance** = `1.0` [🔗](#class-reflectionprobe-property-blend-distance)

- void **set\_blend\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_blend\_distance**()


Defines the distance in meters over which a probe blends into the scene.

* * *

[bool](class_bool.md#class-bool) **box\_projection** = `false` [🔗](#class-reflectionprobe-property-box-projection)

- void **set\_enable\_box\_projection**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_box\_projection\_enabled**()


If `true`, enables box projection. This makes reflections look more correct in rectangle-shaped rooms by offsetting the reflection center depending on the camera's location.

**Note:** To better fit rectangle-shaped rooms that are not aligned to the grid, you can rotate the **ReflectionProbe** node.

* * *

[int](class_int.md#class-int) **cull\_mask** = `1048575` [🔗](#class-reflectionprobe-property-cull-mask)

- void **set\_cull\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_cull\_mask**()


Sets the cull mask which determines what objects are drawn by this probe. Every [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) with a layer included in this cull mask will be rendered by the probe. It is best to only include large objects which are likely to take up a lot of space in the reflection in order to save on rendering cost.

This can also be used to prevent an object from reflecting upon itself (for instance, a **ReflectionProbe** centered on a vehicle).

* * *

[bool](class_bool.md#class-bool) **enable\_shadows** = `false` [🔗](#class-reflectionprobe-property-enable-shadows)

- void **set\_enable\_shadows**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **are\_shadows\_enabled**()


If `true`, computes shadows in the reflection probe. This makes the reflection probe slower to render; you may want to disable this if using the [UPDATE\_ALWAYS](#class-reflectionprobe-constant-update-always) [update\_mode](#class-reflectionprobe-property-update-mode).

* * *

[float](class_float.md#class-float) **intensity** = `1.0` [🔗](#class-reflectionprobe-property-intensity)

- void **set\_intensity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_intensity**()


Defines the reflection intensity. Intensity modulates the strength of the reflection.

* * *

[bool](class_bool.md#class-bool) **interior** = `false` [🔗](#class-reflectionprobe-property-interior)

- void **set\_as\_interior**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_set\_as\_interior**()


If `true`, reflections will ignore sky contribution.

* * *

[float](class_float.md#class-float) **max\_distance** = `0.0` [🔗](#class-reflectionprobe-property-max-distance)

- void **set\_max\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_distance**()


The maximum distance away from the **ReflectionProbe** an object can be before it is culled. Decrease this to improve performance, especially when using the [UPDATE\_ALWAYS](#class-reflectionprobe-constant-update-always) [update\_mode](#class-reflectionprobe-property-update-mode).

**Note:** The maximum reflection distance is always at least equal to the probe's extents. This means that decreasing [max\_distance](#class-reflectionprobe-property-max-distance) will not always cull objects from reflections, especially if the reflection probe's box defined by its [size](#class-reflectionprobe-property-size) is already large.

* * *

[float](class_float.md#class-float) **mesh\_lod\_threshold** = `1.0` [🔗](#class-reflectionprobe-property-mesh-lod-threshold)

- void **set\_mesh\_lod\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mesh\_lod\_threshold**()


The automatic LOD bias to use for meshes rendered within the **ReflectionProbe** (this is analog to [Viewport.mesh\_lod\_threshold](class_viewport.md#class-viewport-property-mesh-lod-threshold)). Higher values will use less detailed versions of meshes that have LOD variations generated. If set to `0.0`, automatic LOD is disabled. Increase [mesh\_lod\_threshold](#class-reflectionprobe-property-mesh-lod-threshold) to improve performance at the cost of geometry detail, especially when using the [UPDATE\_ALWAYS](#class-reflectionprobe-constant-update-always) [update\_mode](#class-reflectionprobe-property-update-mode).

**Note:** [mesh\_lod\_threshold](#class-reflectionprobe-property-mesh-lod-threshold) does not affect [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) visibility ranges (also known as "manual" LOD or hierarchical LOD).

* * *

[Vector3](class_vector3.md#class-vector3) **origin\_offset** = `Vector3(0, 0, 0)` [🔗](#class-reflectionprobe-property-origin-offset)

- void **set\_origin\_offset**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_origin\_offset**()


Sets the origin offset to be used when this **ReflectionProbe** is in [box\_projection](#class-reflectionprobe-property-box-projection) mode. This can be set to a non-zero value to ensure a reflection fits a rectangle-shaped room, while reducing the number of objects that "get in the way" of the reflection.

* * *

[int](class_int.md#class-int) **reflection\_mask** = `1048575` [🔗](#class-reflectionprobe-property-reflection-mask)

- void **set\_reflection\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_reflection\_mask**()


Sets the reflection mask which determines what objects have reflections applied from this probe. Every [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) with a layer included in this reflection mask will have reflections applied from this probe. See also [cull\_mask](#class-reflectionprobe-property-cull-mask), which can be used to exclude objects from appearing in the reflection while still making them affected by the **ReflectionProbe**.

* * *

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(20, 20, 20)` [🔗](#class-reflectionprobe-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The size of the reflection probe. The larger the size, the more space covered by the probe, which will lower the perceived resolution. It is best to keep the size only as large as you need it.

**Note:** To better fit areas that are not aligned to the grid, you can rotate the **ReflectionProbe** node.

* * *

[UpdateMode](#enum-reflectionprobe-updatemode) **update\_mode** = `0` [🔗](#class-reflectionprobe-property-update-mode)

- void **set\_update\_mode**(value: [UpdateMode](#enum-reflectionprobe-updatemode))

- [UpdateMode](#enum-reflectionprobe-updatemode) **get\_update\_mode**()


Sets how frequently the **ReflectionProbe** is updated. Can be [UPDATE\_ONCE](#class-reflectionprobe-constant-update-once) or [UPDATE\_ALWAYS](#class-reflectionprobe-constant-update-always).

[Previous](class_referencerect.md "ReferenceRect") [Next](class_remotetransform2d.md "RemoteTransform2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_referencerect.md "ReferenceRect") [Next](class_remotetransform2d.md "RemoteTransform2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).