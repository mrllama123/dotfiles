---
title: LightmapGI — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_lightmapgi.html
crawled_at: "2026-08-13T10:30:34+12:00"
content_hash: 27927e8585f13af6d979c16f6d8ebd130946ec942c46500b08e426f9bd7da98b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - LightmapGI

* * *

# LightmapGI

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Computes and stores baked lightmaps for fast global illumination.

## Description

The **LightmapGI** node is used to compute and store baked lightmaps. Lightmaps are used to provide high-quality indirect lighting with very little light leaking. **LightmapGI** can also provide rough reflections using spherical harmonics if [directional](#class-lightmapgi-property-directional) is enabled. Dynamic objects can receive indirect lighting thanks to _light probes_, which can be automatically placed by setting [generate\_probes\_subdiv](#class-lightmapgi-property-generate-probes-subdiv) to a value other than [GENERATE\_PROBES\_DISABLED](#class-lightmapgi-constant-generate-probes-disabled). Additional lightmap probes can also be added by creating [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) nodes. The downside is that lightmaps are fully static and cannot be baked in an exported project. Baking a **LightmapGI** node is also slower compared to [VoxelGI](class_voxelgi.md#class-voxelgi).

**Procedural generation:** Lightmap baking functionality is only available in the editor. This means **LightmapGI** is not suited to procedurally generated or user-built levels. For procedurally generated or user-built levels, use [VoxelGI](class_voxelgi.md#class-voxelgi) or SDFGI instead (see [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)).

**Performance:** **LightmapGI** provides the best possible run-time performance for global illumination. It is suitable for low-end hardware including integrated graphics and mobile devices.

**Note:** Due to how lightmaps work, most properties only have a visible effect once lightmaps are baked again.

**Note:** Lightmap baking on [CSGShape3D](class_csgshape3d.md#class-csgshape3d) s and [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) es is not supported, as these cannot store UV2 data required for baking.

**Note:** If no custom lightmappers are installed, **LightmapGI** can only be baked from devices that support the Forward+ or Mobile renderers.

**Note:** The **LightmapGI** node only bakes light data for child nodes of its parent. Nodes further up the hierarchy of the scene will not be baked.

## Tutorials

- [Using Lightmap global illumination](../tutorials/3d/global_illumination/using_lightmap_gi.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [bias](#class-lightmapgi-property-bias) | `0.0005` |
| [float](class_float.md#class-float) | [bounce\_indirect\_energy](#class-lightmapgi-property-bounce-indirect-energy) | `1.0` |
| [int](class_int.md#class-int) | [bounces](#class-lightmapgi-property-bounces) | `3` |
| [CameraAttributes](class_cameraattributes.md#class-cameraattributes) | [camera\_attributes](#class-lightmapgi-property-camera-attributes) |  |
| [int](class_int.md#class-int) | [denoiser\_range](#class-lightmapgi-property-denoiser-range) | `10` |
| [float](class_float.md#class-float) | [denoiser\_strength](#class-lightmapgi-property-denoiser-strength) | `0.1` |
| [bool](class_bool.md#class-bool) | [directional](#class-lightmapgi-property-directional) | `false` |
| [Color](class_color.md#class-color) | [environment\_custom\_color](#class-lightmapgi-property-environment-custom-color) | `Color(1, 1, 1, 1)` |
| [float](class_float.md#class-float) | [environment\_custom\_energy](#class-lightmapgi-property-environment-custom-energy) | `1.0` |
| [Sky](class_sky.md#class-sky) | [environment\_custom\_sky](#class-lightmapgi-property-environment-custom-sky) |  |
| [EnvironmentMode](#enum-lightmapgi-environmentmode) | [environment\_mode](#class-lightmapgi-property-environment-mode) | `1` |
| [GenerateProbes](#enum-lightmapgi-generateprobes) | [generate\_probes\_subdiv](#class-lightmapgi-property-generate-probes-subdiv) | `2` |
| [bool](class_bool.md#class-bool) | [interior](#class-lightmapgi-property-interior) | `false` |
| [LightmapGIData](class_lightmapgidata.md#class-lightmapgidata) | [light\_data](#class-lightmapgi-property-light-data) |  |
| [int](class_int.md#class-int) | [max\_texture\_size](#class-lightmapgi-property-max-texture-size) | `16384` |
| [BakeQuality](#enum-lightmapgi-bakequality) | [quality](#class-lightmapgi-property-quality) | `1` |
| [ShadowmaskMode](class_lightmapgidata.md#enum-lightmapgidata-shadowmaskmode) | [shadowmask\_mode](#class-lightmapgi-property-shadowmask-mode) | `0` |
| [bool](class_bool.md#class-bool) | [supersampling](#class-lightmapgi-property-supersampling) | `false` |
| [float](class_float.md#class-float) | [supersampling\_factor](#class-lightmapgi-property-supersampling-factor) | `2.0` |
| [float](class_float.md#class-float) | [texel\_scale](#class-lightmapgi-property-texel-scale) | `1.0` |
| [bool](class_bool.md#class-bool) | [use\_denoiser](#class-lightmapgi-property-use-denoiser) | `true` |
| [bool](class_bool.md#class-bool) | [use\_texture\_for\_bounces](#class-lightmapgi-property-use-texture-for-bounces) | `true` |

* * *

## Enumerations

enum **BakeQuality**: [🔗](#enum-lightmapgi-bakequality)

[BakeQuality](#enum-lightmapgi-bakequality) **BAKE\_QUALITY\_LOW** = `0`

Low bake quality (fastest bake times). The quality of this preset can be adjusted by changing [ProjectSettings.rendering/lightmapping/bake\_quality/low\_quality\_ray\_count](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-bake-quality-low-quality-ray-count) and [ProjectSettings.rendering/lightmapping/bake\_quality/low\_quality\_probe\_ray\_count](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-bake-quality-low-quality-probe-ray-count).

[BakeQuality](#enum-lightmapgi-bakequality) **BAKE\_QUALITY\_MEDIUM** = `1`

Medium bake quality (fast bake times). The quality of this preset can be adjusted by changing [ProjectSettings.rendering/lightmapping/bake\_quality/medium\_quality\_ray\_count](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-bake-quality-medium-quality-ray-count) and [ProjectSettings.rendering/lightmapping/bake\_quality/medium\_quality\_probe\_ray\_count](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-bake-quality-medium-quality-probe-ray-count).

[BakeQuality](#enum-lightmapgi-bakequality) **BAKE\_QUALITY\_HIGH** = `2`

High bake quality (slow bake times). The quality of this preset can be adjusted by changing [ProjectSettings.rendering/lightmapping/bake\_quality/high\_quality\_ray\_count](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-bake-quality-high-quality-ray-count) and [ProjectSettings.rendering/lightmapping/bake\_quality/high\_quality\_probe\_ray\_count](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-bake-quality-high-quality-probe-ray-count).

[BakeQuality](#enum-lightmapgi-bakequality) **BAKE\_QUALITY\_ULTRA** = `3`

Highest bake quality (slowest bake times). The quality of this preset can be adjusted by changing [ProjectSettings.rendering/lightmapping/bake\_quality/ultra\_quality\_ray\_count](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-bake-quality-ultra-quality-ray-count) and [ProjectSettings.rendering/lightmapping/bake\_quality/ultra\_quality\_probe\_ray\_count](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-bake-quality-ultra-quality-probe-ray-count).

* * *

enum **GenerateProbes**: [🔗](#enum-lightmapgi-generateprobes)

[GenerateProbes](#enum-lightmapgi-generateprobes) **GENERATE\_PROBES\_DISABLED** = `0`

Don't generate lightmap probes for lighting dynamic objects.

[GenerateProbes](#enum-lightmapgi-generateprobes) **GENERATE\_PROBES\_SUBDIV\_4** = `1`

Lowest level of subdivision (fastest bake times, smallest file sizes).

[GenerateProbes](#enum-lightmapgi-generateprobes) **GENERATE\_PROBES\_SUBDIV\_8** = `2`

Low level of subdivision (fast bake times, small file sizes).

[GenerateProbes](#enum-lightmapgi-generateprobes) **GENERATE\_PROBES\_SUBDIV\_16** = `3`

High level of subdivision (slow bake times, large file sizes).

[GenerateProbes](#enum-lightmapgi-generateprobes) **GENERATE\_PROBES\_SUBDIV\_32** = `4`

Highest level of subdivision (slowest bake times, largest file sizes).

* * *

enum **BakeError**: [🔗](#enum-lightmapgi-bakeerror)

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_OK** = `0`

Lightmap baking was successful.

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_NO\_SCENE\_ROOT** = `1`

Lightmap baking failed because the root node for the edited scene could not be accessed.

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_FOREIGN\_DATA** = `2`

Lightmap baking failed as the lightmap data resource is embedded in a foreign resource.

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_NO\_LIGHTMAPPER** = `3`

Lightmap baking failed as there is no lightmapper available in this Godot build.

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_NO\_SAVE\_PATH** = `4`

Lightmap baking failed as the [LightmapGIData](class_lightmapgidata.md#class-lightmapgidata) save path isn't configured in the resource.

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_NO\_MESHES** = `5`

Lightmap baking failed as there are no meshes whose [GeometryInstance3D.gi\_mode](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-mode) is [GeometryInstance3D.GI\_MODE\_STATIC](class_geometryinstance3d.md#class-geometryinstance3d-constant-gi-mode-static) and with valid UV2 mapping in the current scene. You may need to select 3D scenes in the Import dock and change their global illumination mode accordingly.

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_MESHES\_INVALID** = `6`

Lightmap baking failed as the lightmapper failed to analyze some of the meshes marked as static for baking.

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_CANT\_CREATE\_IMAGE** = `7`

Lightmap baking failed as the resulting image couldn't be saved or imported by Godot after it was saved.

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_USER\_ABORTED** = `8`

The user aborted the lightmap baking operation (typically by clicking the **Cancel** button in the progress dialog).

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_TEXTURE\_SIZE\_TOO\_SMALL** = `9`

Lightmap baking failed as the maximum texture size is too small to fit some of the meshes marked for baking.

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_LIGHTMAP\_TOO\_SMALL** = `10`

Lightmap baking failed as the lightmap is too small.

[BakeError](#enum-lightmapgi-bakeerror) **BAKE\_ERROR\_ATLAS\_TOO\_SMALL** = `11`

Lightmap baking failed as the lightmap was unable to fit into an atlas.

* * *

enum **EnvironmentMode**: [🔗](#enum-lightmapgi-environmentmode)

[EnvironmentMode](#enum-lightmapgi-environmentmode) **ENVIRONMENT\_MODE\_DISABLED** = `0`

Ignore environment lighting when baking lightmaps.

[EnvironmentMode](#enum-lightmapgi-environmentmode) **ENVIRONMENT\_MODE\_SCENE** = `1`

Use the scene's environment lighting when baking lightmaps.

**Note:** If baking lightmaps in a scene with no [WorldEnvironment](class_worldenvironment.md#class-worldenvironment) node, this will act like [ENVIRONMENT\_MODE\_DISABLED](#class-lightmapgi-constant-environment-mode-disabled). The editor's preview sky and sun is _not_ taken into account by **LightmapGI** when baking lightmaps.

[EnvironmentMode](#enum-lightmapgi-environmentmode) **ENVIRONMENT\_MODE\_CUSTOM\_SKY** = `2`

Use [environment\_custom\_sky](#class-lightmapgi-property-environment-custom-sky) as a source of environment lighting when baking lightmaps.

[EnvironmentMode](#enum-lightmapgi-environmentmode) **ENVIRONMENT\_MODE\_CUSTOM\_COLOR** = `3`

Use [environment\_custom\_color](#class-lightmapgi-property-environment-custom-color) multiplied by [environment\_custom\_energy](#class-lightmapgi-property-environment-custom-energy) as a constant source of environment lighting when baking lightmaps.

* * *

## Property Descriptions

[float](class_float.md#class-float) **bias** = `0.0005` [🔗](#class-lightmapgi-property-bias)

- void **set\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bias**()


The bias to use when computing shadows. Increasing [bias](#class-lightmapgi-property-bias) can fix shadow acne on the resulting baked lightmap, but can introduce peter-panning (shadows not connecting to their casters). Real-time [Light3D](class_light3d.md#class-light3d) shadows are not affected by this [bias](#class-lightmapgi-property-bias) property.

* * *

[float](class_float.md#class-float) **bounce\_indirect\_energy** = `1.0` [🔗](#class-lightmapgi-property-bounce-indirect-energy)

- void **set\_bounce\_indirect\_energy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bounce\_indirect\_energy**()


The energy multiplier for each bounce. Higher values will make indirect lighting brighter. A value of `1.0` represents physically accurate behavior, but higher values can be used to make indirect lighting propagate more visibly when using a low number of bounces. This can be used to speed up bake times by lowering the number of [bounces](#class-lightmapgi-property-bounces) then increasing [bounce\_indirect\_energy](#class-lightmapgi-property-bounce-indirect-energy).

**Note:** [bounce\_indirect\_energy](#class-lightmapgi-property-bounce-indirect-energy) only has an effect if [bounces](#class-lightmapgi-property-bounces) is set to a value greater than or equal to `1`.

* * *

[int](class_int.md#class-int) **bounces** = `3` [🔗](#class-lightmapgi-property-bounces)

- void **set\_bounces**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bounces**()


Number of light bounces that are taken into account during baking. Higher values result in brighter, more realistic lighting, at the cost of longer bake times. If set to `0`, only environment lighting, direct light and emissive lighting is baked.

* * *

[CameraAttributes](class_cameraattributes.md#class-cameraattributes) **camera\_attributes** [🔗](#class-lightmapgi-property-camera-attributes)

- void **set\_camera\_attributes**(value: [CameraAttributes](class_cameraattributes.md#class-cameraattributes))

- [CameraAttributes](class_cameraattributes.md#class-cameraattributes) **get\_camera\_attributes**()


The [CameraAttributes](class_cameraattributes.md#class-cameraattributes) resource that specifies exposure levels to bake at. Auto-exposure and non exposure properties will be ignored. Exposure settings should be used to reduce the dynamic range present when baking. If exposure is too high, the **LightmapGI** will have banding artifacts or may have over-exposure artifacts.

* * *

[int](class_int.md#class-int) **denoiser\_range** = `10` [🔗](#class-lightmapgi-property-denoiser-range)

- void **set\_denoiser\_range**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_denoiser\_range**()


The distance in pixels from which the denoiser samples. Lower values preserve more details, but may give blotchy results if the lightmap quality is not high enough. Only effective if [use\_denoiser](#class-lightmapgi-property-use-denoiser) is `true` and [ProjectSettings.rendering/lightmapping/denoising/denoiser](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-denoising-denoiser) is set to JNLM.

* * *

[float](class_float.md#class-float) **denoiser\_strength** = `0.1` [🔗](#class-lightmapgi-property-denoiser-strength)

- void **set\_denoiser\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_denoiser\_strength**()


The strength of denoising step applied to the generated lightmaps. Only effective if [use\_denoiser](#class-lightmapgi-property-use-denoiser) is `true` and [ProjectSettings.rendering/lightmapping/denoising/denoiser](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-denoising-denoiser) is set to JNLM.

* * *

[bool](class_bool.md#class-bool) **directional** = `false` [🔗](#class-lightmapgi-property-directional)

- void **set\_directional**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_directional**()


If `true`, bakes lightmaps to contain directional information as spherical harmonics. This results in more realistic lighting appearance, especially with normal mapped materials and for lights that have their direct light baked ( [Light3D.light\_bake\_mode](class_light3d.md#class-light3d-property-light-bake-mode) set to [Light3D.BAKE\_STATIC](class_light3d.md#class-light3d-constant-bake-static) and with [Light3D.editor\_only](class_light3d.md#class-light3d-property-editor-only) set to `false`). The directional information is also used to provide rough reflections for static and dynamic objects. This has a small run-time performance cost as the shader has to perform more work to interpret the direction information from the lightmap. Directional lightmaps also take longer to bake and result in larger file sizes.

**Note:** The property's name has no relationship with [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d). [directional](#class-lightmapgi-property-directional) works with all light types.

* * *

[Color](class_color.md#class-color) **environment\_custom\_color** = `Color(1, 1, 1, 1)` [🔗](#class-lightmapgi-property-environment-custom-color)

- void **set\_environment\_custom\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_environment\_custom\_color**()


The color to use for environment lighting. Only effective if [environment\_mode](#class-lightmapgi-property-environment-mode) is [ENVIRONMENT\_MODE\_CUSTOM\_COLOR](#class-lightmapgi-constant-environment-mode-custom-color).

* * *

[float](class_float.md#class-float) **environment\_custom\_energy** = `1.0` [🔗](#class-lightmapgi-property-environment-custom-energy)

- void **set\_environment\_custom\_energy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_environment\_custom\_energy**()


The color multiplier to use for environment lighting. Only effective if [environment\_mode](#class-lightmapgi-property-environment-mode) is [ENVIRONMENT\_MODE\_CUSTOM\_COLOR](#class-lightmapgi-constant-environment-mode-custom-color).

* * *

[Sky](class_sky.md#class-sky) **environment\_custom\_sky** [🔗](#class-lightmapgi-property-environment-custom-sky)

- void **set\_environment\_custom\_sky**(value: [Sky](class_sky.md#class-sky))

- [Sky](class_sky.md#class-sky) **get\_environment\_custom\_sky**()


The sky to use as a source of environment lighting. Only effective if [environment\_mode](#class-lightmapgi-property-environment-mode) is [ENVIRONMENT\_MODE\_CUSTOM\_SKY](#class-lightmapgi-constant-environment-mode-custom-sky).

* * *

[EnvironmentMode](#enum-lightmapgi-environmentmode) **environment\_mode** = `1` [🔗](#class-lightmapgi-property-environment-mode)

- void **set\_environment\_mode**(value: [EnvironmentMode](#enum-lightmapgi-environmentmode))

- [EnvironmentMode](#enum-lightmapgi-environmentmode) **get\_environment\_mode**()


The environment mode to use when baking lightmaps.

* * *

[GenerateProbes](#enum-lightmapgi-generateprobes) **generate\_probes\_subdiv** = `2` [🔗](#class-lightmapgi-property-generate-probes-subdiv)

- void **set\_generate\_probes**(value: [GenerateProbes](#enum-lightmapgi-generateprobes))

- [GenerateProbes](#enum-lightmapgi-generateprobes) **get\_generate\_probes**()


The level of subdivision to use when automatically generating [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) s for dynamic object lighting. Higher values result in more accurate indirect lighting on dynamic objects, at the cost of longer bake times and larger file sizes.

**Note:** Automatically generated [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) s are not visible as nodes in the Scene tree dock, and cannot be modified this way after they are generated.

**Note:** Regardless of [generate\_probes\_subdiv](#class-lightmapgi-property-generate-probes-subdiv), direct lighting on dynamic objects is always applied using [Light3D](class_light3d.md#class-light3d) nodes in real-time.

* * *

[bool](class_bool.md#class-bool) **interior** = `false` [🔗](#class-lightmapgi-property-interior)

- void **set\_interior**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_interior**()


If `true`, ignore environment lighting when baking lightmaps.

* * *

[LightmapGIData](class_lightmapgidata.md#class-lightmapgidata) **light\_data** [🔗](#class-lightmapgi-property-light-data)

- void **set\_light\_data**(value: [LightmapGIData](class_lightmapgidata.md#class-lightmapgidata))

- [LightmapGIData](class_lightmapgidata.md#class-lightmapgidata) **get\_light\_data**()


The [LightmapGIData](class_lightmapgidata.md#class-lightmapgidata) associated to this **LightmapGI** node. This resource is automatically created after baking, and is not meant to be created manually.

* * *

[int](class_int.md#class-int) **max\_texture\_size** = `16384` [🔗](#class-lightmapgi-property-max-texture-size)

- void **set\_max\_texture\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_texture\_size**()


The maximum texture size for the generated texture atlas. Higher values will result in fewer slices being generated, but may not work on all hardware as a result of hardware limitations on texture sizes. Leave [max\_texture\_size](#class-lightmapgi-property-max-texture-size) at its default value of `16384` if unsure.

* * *

[BakeQuality](#enum-lightmapgi-bakequality) **quality** = `1` [🔗](#class-lightmapgi-property-quality)

- void **set\_bake\_quality**(value: [BakeQuality](#enum-lightmapgi-bakequality))

- [BakeQuality](#enum-lightmapgi-bakequality) **get\_bake\_quality**()


The quality preset to use when baking lightmaps. This affects bake times, but output file sizes remain mostly identical across quality levels.

To further speed up bake times, decrease [bounces](#class-lightmapgi-property-bounces), disable [use\_denoiser](#class-lightmapgi-property-use-denoiser) and/or decrease [texel\_scale](#class-lightmapgi-property-texel-scale).

To further increase quality, enable [supersampling](#class-lightmapgi-property-supersampling) and/or increase [texel\_scale](#class-lightmapgi-property-texel-scale).

* * *

[ShadowmaskMode](class_lightmapgidata.md#enum-lightmapgidata-shadowmaskmode) **shadowmask\_mode** = `0` [🔗](#class-lightmapgi-property-shadowmask-mode)

- void **set\_shadowmask\_mode**(value: [ShadowmaskMode](class_lightmapgidata.md#enum-lightmapgidata-shadowmaskmode))

- [ShadowmaskMode](class_lightmapgidata.md#enum-lightmapgidata-shadowmaskmode) **get\_shadowmask\_mode**()


**Experimental:** This property may be changed or removed in future versions.

The shadowmasking policy to use for directional shadows on static objects that are baked with this **LightmapGI** instance.

Shadowmasking allows [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) nodes to cast shadows even outside the range defined by their [DirectionalLight3D.directional\_shadow\_max\_distance](class_directionallight3d.md#class-directionallight3d-property-directional-shadow-max-distance) property. This is done by baking a texture that contains a shadowmap for the directional light, then using this texture according to the current shadowmask mode.

**Note:** The shadowmask texture is only created if [shadowmask\_mode](#class-lightmapgi-property-shadowmask-mode) is not [LightmapGIData.SHADOWMASK\_MODE\_NONE](class_lightmapgidata.md#class-lightmapgidata-constant-shadowmask-mode-none). To see a difference, you need to bake lightmaps again after switching from [LightmapGIData.SHADOWMASK\_MODE\_NONE](class_lightmapgidata.md#class-lightmapgidata-constant-shadowmask-mode-none) to any other mode.

* * *

[bool](class_bool.md#class-bool) **supersampling** = `false` [🔗](#class-lightmapgi-property-supersampling)

- void **set\_supersampling\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_supersampling\_enabled**()


If `true`, lightmaps are baked with the texel scale multiplied with [supersampling\_factor](#class-lightmapgi-property-supersampling-factor) and downsampled before saving the lightmap (so the effective texel density is identical to having supersampling disabled).

Supersampling provides increased lightmap quality with less noise, smoother shadows and better shadowing of small-scale features in objects. However, it may result in significantly increased bake times and memory usage while baking lightmaps. Padding is automatically adjusted to avoid increasing light leaking.

* * *

[float](class_float.md#class-float) **supersampling\_factor** = `2.0` [🔗](#class-lightmapgi-property-supersampling-factor)

- void **set\_supersampling\_factor**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_supersampling\_factor**()


The factor by which the texel density is multiplied for supersampling. For best results, use an integer value. While fractional values are allowed, they can result in increased light leaking and a blurry lightmap.

Higher values may result in better quality, but also increase bake times and memory usage while baking.

See [supersampling](#class-lightmapgi-property-supersampling) for more information.

* * *

[float](class_float.md#class-float) **texel\_scale** = `1.0` [🔗](#class-lightmapgi-property-texel-scale)

- void **set\_texel\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_texel\_scale**()


Scales the lightmap texel density of all meshes for the current bake. This is a multiplier that builds upon the existing lightmap texel size defined in each imported 3D scene, along with the per-mesh density multiplier (which is designed to be used when the same mesh is used at different scales). Lower values will result in faster bake times.

For example, doubling [texel\_scale](#class-lightmapgi-property-texel-scale) doubles the lightmap texture resolution for all objects _on each axis_, so it will _quadruple_ the texel count.

* * *

[bool](class_bool.md#class-bool) **use\_denoiser** = `true` [🔗](#class-lightmapgi-property-use-denoiser)

- void **set\_use\_denoiser**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_denoiser**()


If `true`, uses a GPU-based denoising algorithm on the generated lightmap. This eliminates most noise within the generated lightmap at the cost of longer bake times. File sizes are generally not impacted significantly by the use of a denoiser, although lossless compression may do a better job at compressing a denoised image.

* * *

[bool](class_bool.md#class-bool) **use\_texture\_for\_bounces** = `true` [🔗](#class-lightmapgi-property-use-texture-for-bounces)

- void **set\_use\_texture\_for\_bounces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_texture\_for\_bounces**()


If `true`, a texture with the lighting information will be generated to speed up the generation of indirect lighting at the cost of some accuracy. The geometry might exhibit extra light leak artifacts when using low resolution lightmaps or UVs that stretch the lightmap significantly across surfaces. Leave [use\_texture\_for\_bounces](#class-lightmapgi-property-use-texture-for-bounces) at its default value of `true` if unsure.

**Note:** [use\_texture\_for\_bounces](#class-lightmapgi-property-use-texture-for-bounces) only has an effect if [bounces](#class-lightmapgi-property-bounces) is set to a value greater than or equal to `1`.

[Previous](class_light3d.md "Light3D") [Next](class_lightmapprobe.md "LightmapProbe")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_light3d.md "Light3D") [Next](class_lightmapprobe.md "LightmapProbe")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).