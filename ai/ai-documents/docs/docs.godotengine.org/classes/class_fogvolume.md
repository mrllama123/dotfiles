---
title: FogVolume — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_fogvolume.html
crawled_at: "2026-08-13T10:22:34+12:00"
content_hash: e2a3698a86c2732c8b4fb023f8e645e6cf90c6ad99bf388f4b9ed688c9bbb4e2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FogVolume

* * *

# FogVolume

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A region that contributes to the default volumetric fog from the world environment.

## Description

**FogVolume** s are used to add localized fog into the global volumetric fog effect. **FogVolume** s can also remove volumetric fog from specific areas if using a [FogMaterial](class_fogmaterial.md#class-fogmaterial) with a negative [FogMaterial.density](class_fogmaterial.md#class-fogmaterial-property-density).

Performance of **FogVolume** s is directly related to their relative size on the screen and the complexity of their attached [FogMaterial](class_fogmaterial.md#class-fogmaterial). It is best to keep **FogVolume** s relatively small and simple where possible.

**Note:** **FogVolume** s only have a visible effect if [Environment.volumetric\_fog\_enabled](class_environment.md#class-environment-property-volumetric-fog-enabled) is `true`. If you don't want fog to be globally visible (but only within **FogVolume** nodes), set [Environment.volumetric\_fog\_density](class_environment.md#class-environment-property-volumetric-fog-density) to `0.0`.

## Tutorials

- [Volumetric fog and fog volumes](../tutorials/3d/volumetric_fog.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Material](class_material.md#class-material) | [material](#class-fogvolume-property-material) |  |
| [FogVolumeShape](class_renderingserver.md#enum-renderingserver-fogvolumeshape) | [shape](#class-fogvolume-property-shape) | `3` |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-fogvolume-property-size) | `Vector3(2, 2, 2)` |

* * *

## Property Descriptions

[Material](class_material.md#class-material) **material** [🔗](#class-fogvolume-property-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


The [Material](class_material.md#class-material) used by the **FogVolume**. Can be either a built-in [FogMaterial](class_fogmaterial.md#class-fogmaterial) or a custom [ShaderMaterial](class_shadermaterial.md#class-shadermaterial).

* * *

[FogVolumeShape](class_renderingserver.md#enum-renderingserver-fogvolumeshape) **shape** = `3` [🔗](#class-fogvolume-property-shape)

- void **set\_shape**(value: [FogVolumeShape](class_renderingserver.md#enum-renderingserver-fogvolumeshape))

- [FogVolumeShape](class_renderingserver.md#enum-renderingserver-fogvolumeshape) **get\_shape**()


The shape of the **FogVolume**. This can be set to either [RenderingServer.FOG\_VOLUME\_SHAPE\_ELLIPSOID](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-ellipsoid), [RenderingServer.FOG\_VOLUME\_SHAPE\_CONE](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-cone), [RenderingServer.FOG\_VOLUME\_SHAPE\_CYLINDER](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-cylinder), [RenderingServer.FOG\_VOLUME\_SHAPE\_BOX](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-box) or [RenderingServer.FOG\_VOLUME\_SHAPE\_WORLD](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-world).

* * *

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(2, 2, 2)` [🔗](#class-fogvolume-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The size of the **FogVolume** when [shape](#class-fogvolume-property-shape) is [RenderingServer.FOG\_VOLUME\_SHAPE\_ELLIPSOID](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-ellipsoid), [RenderingServer.FOG\_VOLUME\_SHAPE\_CONE](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-cone), [RenderingServer.FOG\_VOLUME\_SHAPE\_CYLINDER](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-cylinder) or [RenderingServer.FOG\_VOLUME\_SHAPE\_BOX](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-box).

**Note:** Thin fog volumes may appear to flicker when the camera moves or rotates. This can be alleviated by increasing [ProjectSettings.rendering/environment/volumetric\_fog/volume\_depth](class_projectsettings.md#class-projectsettings-property-rendering-environment-volumetric-fog-volume-depth) (at a performance cost) or by decreasing [Environment.volumetric\_fog\_length](class_environment.md#class-environment-property-volumetric-fog-length) (at no performance cost, but at the cost of lower fog range). Alternatively, the **FogVolume** can be made thicker and use a lower density in the [material](#class-fogvolume-property-material).

**Note:** If [shape](#class-fogvolume-property-shape) is [RenderingServer.FOG\_VOLUME\_SHAPE\_CONE](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-cone) or [RenderingServer.FOG\_VOLUME\_SHAPE\_CYLINDER](class_renderingserver.md#class-renderingserver-constant-fog-volume-shape-cylinder), the cone/cylinder will be adjusted to fit within the size. Non-uniform scaling of cone/cylinder shapes via the [size](#class-fogvolume-property-size) property is not supported, but you can scale the **FogVolume** node instead.

[Previous](class_flowcontainer.md "FlowContainer") [Next](class_foldablecontainer.md "FoldableContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_flowcontainer.md "FlowContainer") [Next](class_foldablecontainer.md "FoldableContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).