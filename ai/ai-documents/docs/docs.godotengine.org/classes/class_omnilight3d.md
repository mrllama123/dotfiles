---
title: OmniLight3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_omnilight3d.html
crawled_at: "2026-08-13T10:19:14+12:00"
content_hash: ec723a7b8d834a34d6b70b57f5ef521a095da2d33eeae631ea401c0ead5a187f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OmniLight3D

* * *

# OmniLight3D

**Inherits:** [Light3D](class_light3d.md#class-light3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Omnidirectional light, such as a light bulb or a candle.

## Description

An Omnidirectional light is a type of [Light3D](class_light3d.md#class-light3d) that emits light in all directions. The light is attenuated by distance and this attenuation can be configured by changing its energy, radius, and attenuation parameters.

**Note:** When using the Mobile rendering method, only 8 omni lights can be displayed on each mesh resource. Attempting to display more than 8 omni lights on a single mesh resource will result in omni lights flickering in and out as the camera moves. When using the Compatibility rendering method, only 8 omni lights can be displayed on each mesh resource by default, but this can be increased by adjusting [ProjectSettings.rendering/limits/opengl/max\_lights\_per\_object](class_projectsettings.md#class-projectsettings-property-rendering-limits-opengl-max-lights-per-object).

**Note:** When using the Mobile or Compatibility rendering methods, omni lights will only correctly affect meshes whose visibility AABB intersects with the light's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, [GeometryInstance3D.extra\_cull\_margin](class_geometryinstance3d.md#class-geometryinstance3d-property-extra-cull-margin) must be increased on the mesh. Otherwise, the light may not be visible on the mesh.

## Tutorials

- [3D lights and shadows](../tutorials/3d/lights_and_shadows.md)

- [Faking global illumination](../tutorials/3d/global_illumination/faking_global_illumination.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | light\_specular | `0.5` (overrides [Light3D](class_light3d.md#class-light3d-property-light-specular)) |
| [float](class_float.md#class-float) | [omni\_attenuation](#class-omnilight3d-property-omni-attenuation) | `1.0` |
| [float](class_float.md#class-float) | [omni\_range](#class-omnilight3d-property-omni-range) | `5.0` |
| [ShadowMode](#enum-omnilight3d-shadowmode) | [omni\_shadow\_mode](#class-omnilight3d-property-omni-shadow-mode) | `1` |
| [float](class_float.md#class-float) | shadow\_normal\_bias | `1.0` (overrides [Light3D](class_light3d.md#class-light3d-property-shadow-normal-bias)) |

* * *

## Enumerations

enum **ShadowMode**: [🔗](#enum-omnilight3d-shadowmode)

[ShadowMode](#enum-omnilight3d-shadowmode) **SHADOW\_DUAL\_PARABOLOID** = `0`

Shadows are rendered to a dual-paraboloid texture. Faster than [SHADOW\_CUBE](#class-omnilight3d-constant-shadow-cube), but lower-quality.

[ShadowMode](#enum-omnilight3d-shadowmode) **SHADOW\_CUBE** = `1`

Shadows are rendered to a cubemap. Slower than [SHADOW\_DUAL\_PARABOLOID](#class-omnilight3d-constant-shadow-dual-paraboloid), but higher-quality.

* * *

## Property Descriptions

[float](class_float.md#class-float) **omni\_attenuation** = `1.0` [🔗](#class-omnilight3d-property-omni-attenuation)

- void **set\_param**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**()


Controls the distance attenuation function for omnilights.

A value of `0.0` will maintain a constant brightness through most of the range, but smoothly attenuate the light at the edge of the range. Use a value of `2.0` for physically accurate lights as it results in the proper inverse square attenutation.

**Note:** Setting attenuation to `2.0` or higher may result in distant objects receiving minimal light, even within range. For example, with a range of `4096`, an object at `100` units is attenuated by a factor of `0.0001`. With a default brightness of `1`, the light would not be visible at that distance.

**Note:** Using negative or values higher than `10.0` may lead to unexpected results.

* * *

[float](class_float.md#class-float) **omni\_range** = `5.0` [🔗](#class-omnilight3d-property-omni-range)

- void **set\_param**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**()


The light's radius. Note that the effectively lit area may appear to be smaller depending on the [omni\_attenuation](#class-omnilight3d-property-omni-attenuation) in use. No matter the [omni\_attenuation](#class-omnilight3d-property-omni-attenuation) in use, the light will never reach anything outside this radius.

**Note:** [omni\_range](#class-omnilight3d-property-omni-range) is not affected by [Node3D.scale](class_node3d.md#class-node3d-property-scale) (the light's scale or its parent's scale).

* * *

[ShadowMode](#enum-omnilight3d-shadowmode) **omni\_shadow\_mode** = `1` [🔗](#class-omnilight3d-property-omni-shadow-mode)

- void **set\_shadow\_mode**(value: [ShadowMode](#enum-omnilight3d-shadowmode))

- [ShadowMode](#enum-omnilight3d-shadowmode) **get\_shadow\_mode**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_occluderinstance3d.md "OccluderInstance3D") [Next](class_openxrbindingmodifiereditor.md "OpenXRBindingModifierEditor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_occluderinstance3d.md "OccluderInstance3D") [Next](class_openxrbindingmodifiereditor.md "OpenXRBindingModifierEditor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).