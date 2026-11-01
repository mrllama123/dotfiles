---
title: FogMaterial — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_fogmaterial.html
crawled_at: "2026-08-13T10:39:22+12:00"
content_hash: 2539c820058062df497a23a0715ddebb79145a5889dd119f00b0be262ebfe875
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FogMaterial

* * *

# FogMaterial

**Inherits:** [Material](class_material.md#class-material) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A material that controls how volumetric fog is rendered, to be assigned to a [FogVolume](class_fogvolume.md#class-fogvolume).

## Description

A [Material](class_material.md#class-material) resource that can be used by [FogVolume](class_fogvolume.md#class-fogvolume) s to draw volumetric effects.

If you need more advanced effects, use a custom [fog shader](../tutorials/shaders/shader_reference/fog_shader.md).

## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [albedo](#class-fogmaterial-property-albedo) | `Color(1, 1, 1, 1)` |
| [float](class_float.md#class-float) | [density](#class-fogmaterial-property-density) | `1.0` |
| [Texture3D](class_texture3d.md#class-texture3d) | [density\_texture](#class-fogmaterial-property-density-texture) |  |
| [float](class_float.md#class-float) | [edge\_fade](#class-fogmaterial-property-edge-fade) | `0.1` |
| [Color](class_color.md#class-color) | [emission](#class-fogmaterial-property-emission) | `Color(0, 0, 0, 1)` |
| [float](class_float.md#class-float) | [height\_falloff](#class-fogmaterial-property-height-falloff) | `0.0` |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **albedo** = `Color(1, 1, 1, 1)` [🔗](#class-fogmaterial-property-albedo)

- void **set\_albedo**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_albedo**()


The single-scattering [Color](class_color.md#class-color) of the [FogVolume](class_fogvolume.md#class-fogvolume). Internally, [albedo](#class-fogmaterial-property-albedo) is converted into single-scattering, which is additively blended with other [FogVolume](class_fogvolume.md#class-fogvolume) s and the [Environment.volumetric\_fog\_albedo](class_environment.md#class-environment-property-volumetric-fog-albedo).

* * *

[float](class_float.md#class-float) **density** = `1.0` [🔗](#class-fogmaterial-property-density)

- void **set\_density**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_density**()


The density of the [FogVolume](class_fogvolume.md#class-fogvolume). Denser objects are more opaque, but may suffer from under-sampling artifacts that look like stripes. Negative values can be used to subtract fog from other [FogVolume](class_fogvolume.md#class-fogvolume) s or global volumetric fog.

**Note:** Due to limited precision, [density](#class-fogmaterial-property-density) values between `-0.001` and `0.001` (exclusive) act like `0.0`. This does not apply to [Environment.volumetric\_fog\_density](class_environment.md#class-environment-property-volumetric-fog-density).

* * *

[Texture3D](class_texture3d.md#class-texture3d) **density\_texture** [🔗](#class-fogmaterial-property-density-texture)

- void **set\_density\_texture**(value: [Texture3D](class_texture3d.md#class-texture3d))

- [Texture3D](class_texture3d.md#class-texture3d) **get\_density\_texture**()


The 3D texture that is used to scale the [density](#class-fogmaterial-property-density) of the [FogVolume](class_fogvolume.md#class-fogvolume). This can be used to vary fog density within the [FogVolume](class_fogvolume.md#class-fogvolume) with any kind of static pattern. For animated effects, consider using a custom [fog shader](../tutorials/shaders/shader_reference/fog_shader.md).

* * *

[float](class_float.md#class-float) **edge\_fade** = `0.1` [🔗](#class-fogmaterial-property-edge-fade)

- void **set\_edge\_fade**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_edge\_fade**()


The hardness of the edges of the [FogVolume](class_fogvolume.md#class-fogvolume). A higher value will result in softer edges, while a lower value will result in harder edges.

* * *

[Color](class_color.md#class-color) **emission** = `Color(0, 0, 0, 1)` [🔗](#class-fogmaterial-property-emission)

- void **set\_emission**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_emission**()


The [Color](class_color.md#class-color) of the light emitted by the [FogVolume](class_fogvolume.md#class-fogvolume). Emitted light will not cast light or shadows on other objects, but can be useful for modulating the [Color](class_color.md#class-color) of the [FogVolume](class_fogvolume.md#class-fogvolume) independently from light sources.

* * *

[float](class_float.md#class-float) **height\_falloff** = `0.0` [🔗](#class-fogmaterial-property-height-falloff)

- void **set\_height\_falloff**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height\_falloff**()


The rate by which the height-based fog decreases in density as height increases in world space. A high falloff will result in a sharp transition, while a low falloff will result in a smoother transition. A value of `0.0` results in uniform-density fog. The height threshold is determined by the height of the associated [FogVolume](class_fogvolume.md#class-fogvolume).

[Previous](class_fbxstate.md "FBXState") [Next](class_foldablegroup.md "FoldableGroup")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_fbxstate.md "FBXState") [Next](class_foldablegroup.md "FoldableGroup")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).