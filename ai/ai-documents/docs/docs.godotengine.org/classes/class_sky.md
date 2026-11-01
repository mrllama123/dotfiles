---
title: Sky — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_sky.html
crawled_at: "2026-08-13T10:36:40+12:00"
content_hash: a8b1266f5d264ee7903b56c804cab3ab55b7e7be509a13c8618d956e19f9a676
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Sky

* * *

# Sky

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Defines a 3D environment's background by using a [Material](class_material.md#class-material).

## Description

The **Sky** class uses a [Material](class_material.md#class-material) to render a 3D environment's background and the light it emits by updating the reflection/radiance cubemaps.

## Properties

|     |     |     |
| --- | --- | --- |
| [ProcessMode](#enum-sky-processmode) | [process\_mode](#class-sky-property-process-mode) | `0` |
| [RadianceSize](#enum-sky-radiancesize) | [radiance\_size](#class-sky-property-radiance-size) | `3` |
| [Material](class_material.md#class-material) | [sky\_material](#class-sky-property-sky-material) |  |

* * *

## Enumerations

enum **RadianceSize**: [🔗](#enum-sky-radiancesize)

[RadianceSize](#enum-sky-radiancesize) **RADIANCE\_SIZE\_32** = `0`

Radiance texture size is 32×32 pixels.

[RadianceSize](#enum-sky-radiancesize) **RADIANCE\_SIZE\_64** = `1`

Radiance texture size is 64×64 pixels.

[RadianceSize](#enum-sky-radiancesize) **RADIANCE\_SIZE\_128** = `2`

Radiance texture size is 128×128 pixels.

[RadianceSize](#enum-sky-radiancesize) **RADIANCE\_SIZE\_256** = `3`

Radiance texture size is 256×256 pixels.

[RadianceSize](#enum-sky-radiancesize) **RADIANCE\_SIZE\_512** = `4`

Radiance texture size is 512×512 pixels.

[RadianceSize](#enum-sky-radiancesize) **RADIANCE\_SIZE\_1024** = `5`

Radiance texture size is 1024×1024 pixels.

[RadianceSize](#enum-sky-radiancesize) **RADIANCE\_SIZE\_2048** = `6`

Radiance texture size is 2048×2048 pixels.

[RadianceSize](#enum-sky-radiancesize) **RADIANCE\_SIZE\_MAX** = `7`

Represents the size of the [RadianceSize](#enum-sky-radiancesize) enum.

* * *

enum **ProcessMode**: [🔗](#enum-sky-processmode)

[ProcessMode](#enum-sky-processmode) **PROCESS\_MODE\_AUTOMATIC** = `0`

Automatically selects the appropriate process mode based on your sky shader. If your shader uses `TIME` or `POSITION`, this will use [PROCESS\_MODE\_REALTIME](#class-sky-constant-process-mode-realtime). If your shader uses any of the `LIGHT_*` variables or any custom uniforms, this uses [PROCESS\_MODE\_INCREMENTAL](#class-sky-constant-process-mode-incremental). Otherwise, this defaults to [PROCESS\_MODE\_QUALITY](#class-sky-constant-process-mode-quality).

[ProcessMode](#enum-sky-processmode) **PROCESS\_MODE\_QUALITY** = `1`

Uses high quality importance sampling to process the radiance map. In general, this results in much higher quality than [PROCESS\_MODE\_REALTIME](#class-sky-constant-process-mode-realtime) but takes much longer to generate. This should not be used if you plan on changing the sky at runtime. If you are finding that the reflection is not blurry enough and is showing sparkles or fireflies, try increasing [ProjectSettings.rendering/reflections/sky\_reflections/ggx\_samples](class_projectsettings.md#class-projectsettings-property-rendering-reflections-sky-reflections-ggx-samples).

[ProcessMode](#enum-sky-processmode) **PROCESS\_MODE\_INCREMENTAL** = `2`

Uses the same high quality importance sampling to process the radiance map as [PROCESS\_MODE\_QUALITY](#class-sky-constant-process-mode-quality), but updates over several frames. The number of frames is determined by [ProjectSettings.rendering/reflections/sky\_reflections/roughness\_layers](class_projectsettings.md#class-projectsettings-property-rendering-reflections-sky-reflections-roughness-layers). Use this when you need highest quality radiance maps, but have a sky that updates slowly.

[ProcessMode](#enum-sky-processmode) **PROCESS\_MODE\_REALTIME** = `3`

Uses the fast filtering algorithm to process the radiance map. In general this results in lower quality, but substantially faster run times. If you need better quality, but still need to update the sky every frame, consider turning on [ProjectSettings.rendering/reflections/sky\_reflections/fast\_filter\_high\_quality](class_projectsettings.md#class-projectsettings-property-rendering-reflections-sky-reflections-fast-filter-high-quality).

**Note:** The fast filtering algorithm is limited to 256×256 cubemaps, so [radiance\_size](#class-sky-property-radiance-size) must be set to [RADIANCE\_SIZE\_256](#class-sky-constant-radiance-size-256). Otherwise, a warning is printed and the overridden radiance size is ignored.

* * *

## Property Descriptions

[ProcessMode](#enum-sky-processmode) **process\_mode** = `0` [🔗](#class-sky-property-process-mode)

- void **set\_process\_mode**(value: [ProcessMode](#enum-sky-processmode))

- [ProcessMode](#enum-sky-processmode) **get\_process\_mode**()


The method for generating the radiance map from the sky. The radiance map is a cubemap with increasingly blurry versions of the sky corresponding to different levels of roughness. Radiance maps can be expensive to calculate.

* * *

[RadianceSize](#enum-sky-radiancesize) **radiance\_size** = `3` [🔗](#class-sky-property-radiance-size)

- void **set\_radiance\_size**(value: [RadianceSize](#enum-sky-radiancesize))

- [RadianceSize](#enum-sky-radiancesize) **get\_radiance\_size**()


The **Sky**'s radiance map size. The higher the radiance map size, the more detailed the lighting from the **Sky** will be.

**Note:** Some hardware will have trouble with higher radiance sizes, especially [RADIANCE\_SIZE\_512](#class-sky-constant-radiance-size-512) and above. Only use such high values on high-end hardware.

* * *

[Material](class_material.md#class-material) **sky\_material** [🔗](#class-sky-property-sky-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


[Material](class_material.md#class-material) used to draw the background. Can be [PanoramaSkyMaterial](class_panoramaskymaterial.md#class-panoramaskymaterial), [ProceduralSkyMaterial](class_proceduralskymaterial.md#class-proceduralskymaterial), [PhysicalSkyMaterial](class_physicalskymaterial.md#class-physicalskymaterial), or even a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) if you want to use your own custom shader.

[Previous](class_skin.md "Skin") [Next](class_spheremesh.md "SphereMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_skin.md "Skin") [Next](class_spheremesh.md "SphereMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).