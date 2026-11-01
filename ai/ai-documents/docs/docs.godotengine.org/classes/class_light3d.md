---
title: Light3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_light3d.html
crawled_at: "2026-08-13T10:35:51+12:00"
content_hash: bee9c4bb002baf35ee3462c55e4288941f50a495edd6fdf52fe44d2597479ce0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Light3D

* * *

# Light3D

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d), [OmniLight3D](class_omnilight3d.md#class-omnilight3d), [SpotLight3D](class_spotlight3d.md#class-spotlight3d)

Provides a base class for different kinds of light nodes.

## Description

Light3D is the _abstract_ base class for light nodes. As it can't be instantiated, it shouldn't be used directly. Other types of light nodes inherit from it. Light3D contains the common variables and parameters used for lighting.

## Tutorials

- [3D lights and shadows](../tutorials/3d/lights_and_shadows.md)

- [Faking global illumination](../tutorials/3d/global_illumination/faking_global_illumination.md)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [distance\_fade\_begin](#class-light3d-property-distance-fade-begin) | `40.0` |
| [bool](class_bool.md#class-bool) | [distance\_fade\_enabled](#class-light3d-property-distance-fade-enabled) | `false` |
| [float](class_float.md#class-float) | [distance\_fade\_length](#class-light3d-property-distance-fade-length) | `10.0` |
| [float](class_float.md#class-float) | [distance\_fade\_shadow](#class-light3d-property-distance-fade-shadow) | `50.0` |
| [bool](class_bool.md#class-bool) | [editor\_only](#class-light3d-property-editor-only) | `false` |
| [float](class_float.md#class-float) | [light\_angular\_distance](#class-light3d-property-light-angular-distance) | `0.0` |
| [BakeMode](#enum-light3d-bakemode) | [light\_bake\_mode](#class-light3d-property-light-bake-mode) | `2` |
| [Color](class_color.md#class-color) | [light\_color](#class-light3d-property-light-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [light\_cull\_mask](#class-light3d-property-light-cull-mask) | `4294967295` |
| [float](class_float.md#class-float) | [light\_energy](#class-light3d-property-light-energy) | `1.0` |
| [float](class_float.md#class-float) | [light\_indirect\_energy](#class-light3d-property-light-indirect-energy) | `1.0` |
| [float](class_float.md#class-float) | [light\_intensity\_lumens](#class-light3d-property-light-intensity-lumens) |  |
| [float](class_float.md#class-float) | [light\_intensity\_lux](#class-light3d-property-light-intensity-lux) |  |
| [bool](class_bool.md#class-bool) | [light\_negative](#class-light3d-property-light-negative) | `false` |
| [Texture2D](class_texture2d.md#class-texture2d) | [light\_projector](#class-light3d-property-light-projector) |  |
| [float](class_float.md#class-float) | [light\_size](#class-light3d-property-light-size) | `0.0` |
| [float](class_float.md#class-float) | [light\_specular](#class-light3d-property-light-specular) | `1.0` |
| [float](class_float.md#class-float) | [light\_temperature](#class-light3d-property-light-temperature) |  |
| [float](class_float.md#class-float) | [light\_volumetric\_fog\_energy](#class-light3d-property-light-volumetric-fog-energy) | `1.0` |
| [float](class_float.md#class-float) | [shadow\_bias](#class-light3d-property-shadow-bias) | `0.1` |
| [float](class_float.md#class-float) | [shadow\_blur](#class-light3d-property-shadow-blur) | `1.0` |
| [int](class_int.md#class-int) | [shadow\_caster\_mask](#class-light3d-property-shadow-caster-mask) | `4294967295` |
| [bool](class_bool.md#class-bool) | [shadow\_enabled](#class-light3d-property-shadow-enabled) | `false` |
| [float](class_float.md#class-float) | [shadow\_normal\_bias](#class-light3d-property-shadow-normal-bias) | `2.0` |
| [float](class_float.md#class-float) | [shadow\_opacity](#class-light3d-property-shadow-opacity) | `1.0` |
| [bool](class_bool.md#class-bool) | [shadow\_reverse\_cull\_face](#class-light3d-property-shadow-reverse-cull-face) | `false` |
| [float](class_float.md#class-float) | [shadow\_transmittance\_bias](#class-light3d-property-shadow-transmittance-bias) | `0.05` |

## Methods

|     |     |
| --- | --- |
| [Color](class_color.md#class-color) | [get\_correlated\_color](#class-light3d-method-get-correlated-color)() const |
| [float](class_float.md#class-float) | [get\_param](#class-light3d-method-get-param)(param: [Param](#enum-light3d-param)) const |
| void | [set\_param](#class-light3d-method-set-param)(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **Param**: [🔗](#enum-light3d-param)

[Param](#enum-light3d-param) **PARAM\_ENERGY** = `0`

Constant for accessing [light\_energy](#class-light3d-property-light-energy).

[Param](#enum-light3d-param) **PARAM\_INDIRECT\_ENERGY** = `1`

Constant for accessing [light\_indirect\_energy](#class-light3d-property-light-indirect-energy).

[Param](#enum-light3d-param) **PARAM\_VOLUMETRIC\_FOG\_ENERGY** = `2`

Constant for accessing [light\_volumetric\_fog\_energy](#class-light3d-property-light-volumetric-fog-energy).

[Param](#enum-light3d-param) **PARAM\_SPECULAR** = `3`

Constant for accessing [light\_specular](#class-light3d-property-light-specular).

[Param](#enum-light3d-param) **PARAM\_RANGE** = `4`

Constant for accessing [OmniLight3D.omni\_range](class_omnilight3d.md#class-omnilight3d-property-omni-range) or [SpotLight3D.spot\_range](class_spotlight3d.md#class-spotlight3d-property-spot-range).

[Param](#enum-light3d-param) **PARAM\_SIZE** = `5`

Constant for accessing [light\_size](#class-light3d-property-light-size).

[Param](#enum-light3d-param) **PARAM\_ATTENUATION** = `6`

Constant for accessing [OmniLight3D.omni\_attenuation](class_omnilight3d.md#class-omnilight3d-property-omni-attenuation) or [SpotLight3D.spot\_attenuation](class_spotlight3d.md#class-spotlight3d-property-spot-attenuation).

[Param](#enum-light3d-param) **PARAM\_SPOT\_ANGLE** = `7`

Constant for accessing [SpotLight3D.spot\_angle](class_spotlight3d.md#class-spotlight3d-property-spot-angle).

[Param](#enum-light3d-param) **PARAM\_SPOT\_ATTENUATION** = `8`

Constant for accessing [SpotLight3D.spot\_angle\_attenuation](class_spotlight3d.md#class-spotlight3d-property-spot-angle-attenuation).

[Param](#enum-light3d-param) **PARAM\_SHADOW\_MAX\_DISTANCE** = `9`

Constant for accessing [DirectionalLight3D.directional\_shadow\_max\_distance](class_directionallight3d.md#class-directionallight3d-property-directional-shadow-max-distance).

[Param](#enum-light3d-param) **PARAM\_SHADOW\_SPLIT\_1\_OFFSET** = `10`

Constant for accessing [DirectionalLight3D.directional\_shadow\_split\_1](class_directionallight3d.md#class-directionallight3d-property-directional-shadow-split-1).

[Param](#enum-light3d-param) **PARAM\_SHADOW\_SPLIT\_2\_OFFSET** = `11`

Constant for accessing [DirectionalLight3D.directional\_shadow\_split\_2](class_directionallight3d.md#class-directionallight3d-property-directional-shadow-split-2).

[Param](#enum-light3d-param) **PARAM\_SHADOW\_SPLIT\_3\_OFFSET** = `12`

Constant for accessing [DirectionalLight3D.directional\_shadow\_split\_3](class_directionallight3d.md#class-directionallight3d-property-directional-shadow-split-3).

[Param](#enum-light3d-param) **PARAM\_SHADOW\_FADE\_START** = `13`

Constant for accessing [DirectionalLight3D.directional\_shadow\_fade\_start](class_directionallight3d.md#class-directionallight3d-property-directional-shadow-fade-start).

[Param](#enum-light3d-param) **PARAM\_SHADOW\_NORMAL\_BIAS** = `14`

Constant for accessing [shadow\_normal\_bias](#class-light3d-property-shadow-normal-bias).

[Param](#enum-light3d-param) **PARAM\_SHADOW\_BIAS** = `15`

Constant for accessing [shadow\_bias](#class-light3d-property-shadow-bias).

[Param](#enum-light3d-param) **PARAM\_SHADOW\_PANCAKE\_SIZE** = `16`

Constant for accessing [DirectionalLight3D.directional\_shadow\_pancake\_size](class_directionallight3d.md#class-directionallight3d-property-directional-shadow-pancake-size).

[Param](#enum-light3d-param) **PARAM\_SHADOW\_OPACITY** = `17`

Constant for accessing [shadow\_opacity](#class-light3d-property-shadow-opacity).

[Param](#enum-light3d-param) **PARAM\_SHADOW\_BLUR** = `18`

Constant for accessing [shadow\_blur](#class-light3d-property-shadow-blur).

[Param](#enum-light3d-param) **PARAM\_TRANSMITTANCE\_BIAS** = `19`

Constant for accessing [shadow\_transmittance\_bias](#class-light3d-property-shadow-transmittance-bias).

[Param](#enum-light3d-param) **PARAM\_INTENSITY** = `20`

Constant for accessing [light\_intensity\_lumens](#class-light3d-property-light-intensity-lumens) and [light\_intensity\_lux](#class-light3d-property-light-intensity-lux). Only used when [ProjectSettings.rendering/lights\_and\_shadows/use\_physical\_light\_units](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units) is `true`.

[Param](#enum-light3d-param) **PARAM\_MAX** = `21`

Represents the size of the [Param](#enum-light3d-param) enum.

* * *

enum **BakeMode**: [🔗](#enum-light3d-bakemode)

[BakeMode](#enum-light3d-bakemode) **BAKE\_DISABLED** = `0`

Light is ignored when baking. This is the fastest mode, but the light will not be taken into account when baking global illumination. This mode should generally be used for dynamic lights that change quickly, as the effect of global illumination is less noticeable on those lights.

**Note:** Hiding a light does _not_ affect baking [LightmapGI](class_lightmapgi.md#class-lightmapgi). Hiding a light will still affect baking [VoxelGI](class_voxelgi.md#class-voxelgi) and SDFGI (see [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)).

[BakeMode](#enum-light3d-bakemode) **BAKE\_STATIC** = `1`

Light is taken into account in static baking ( [VoxelGI](class_voxelgi.md#class-voxelgi), [LightmapGI](class_lightmapgi.md#class-lightmapgi), SDFGI ( [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled))). The light can be moved around or modified, but its global illumination will not update in real-time. This is suitable for subtle changes (such as flickering torches), but generally not large changes such as toggling a light on and off.

**Note:** The light is not baked in [LightmapGI](class_lightmapgi.md#class-lightmapgi) if [editor\_only](#class-light3d-property-editor-only) is `true`.

[BakeMode](#enum-light3d-bakemode) **BAKE\_DYNAMIC** = `2`

Light is taken into account in dynamic baking ( [VoxelGI](class_voxelgi.md#class-voxelgi) and SDFGI ( [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)) only). The light can be moved around or modified with global illumination updating in real-time. The light's global illumination appearance will be slightly different compared to [BAKE\_STATIC](#class-light3d-constant-bake-static). This has a greater performance cost compared to [BAKE\_STATIC](#class-light3d-constant-bake-static). When using SDFGI, the update speed of dynamic lights is affected by [ProjectSettings.rendering/global\_illumination/sdfgi/frames\_to\_update\_lights](class_projectsettings.md#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-update-lights).

* * *

## Property Descriptions

[float](class_float.md#class-float) **distance\_fade\_begin** = `40.0` [🔗](#class-light3d-property-distance-fade-begin)

- void **set\_distance\_fade\_begin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_distance\_fade\_begin**()


The distance from the camera at which the light begins to fade away (in 3D units).

**Note:** Only effective for [OmniLight3D](class_omnilight3d.md#class-omnilight3d) and [SpotLight3D](class_spotlight3d.md#class-spotlight3d).

* * *

[bool](class_bool.md#class-bool) **distance\_fade\_enabled** = `false` [🔗](#class-light3d-property-distance-fade-enabled)

- void **set\_enable\_distance\_fade**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_distance\_fade\_enabled**()


If `true`, the light will smoothly fade away when far from the active [Camera3D](class_camera3d.md#class-camera3d) starting at [distance\_fade\_begin](#class-light3d-property-distance-fade-begin). This acts as a form of level of detail (LOD). The light will fade out over [distance\_fade\_begin](#class-light3d-property-distance-fade-begin) \+ [distance\_fade\_length](#class-light3d-property-distance-fade-length), after which it will be culled and not sent to the shader at all. Use this to reduce the number of active lights in a scene and thus improve performance.

**Note:** Only effective for [OmniLight3D](class_omnilight3d.md#class-omnilight3d) and [SpotLight3D](class_spotlight3d.md#class-spotlight3d).

* * *

[float](class_float.md#class-float) **distance\_fade\_length** = `10.0` [🔗](#class-light3d-property-distance-fade-length)

- void **set\_distance\_fade\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_distance\_fade\_length**()


Distance over which the light and its shadow fades. The light's energy and shadow's opacity is progressively reduced over this distance and is completely invisible at the end.

**Note:** Only effective for [OmniLight3D](class_omnilight3d.md#class-omnilight3d) and [SpotLight3D](class_spotlight3d.md#class-spotlight3d).

* * *

[float](class_float.md#class-float) **distance\_fade\_shadow** = `50.0` [🔗](#class-light3d-property-distance-fade-shadow)

- void **set\_distance\_fade\_shadow**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_distance\_fade\_shadow**()


The distance from the camera at which the light's shadow cuts off (in 3D units). Set this to a value lower than [distance\_fade\_begin](#class-light3d-property-distance-fade-begin) \+ [distance\_fade\_length](#class-light3d-property-distance-fade-length) to further improve performance, as shadow rendering is often more expensive than light rendering itself.

**Note:** Only effective for [OmniLight3D](class_omnilight3d.md#class-omnilight3d) and [SpotLight3D](class_spotlight3d.md#class-spotlight3d), and only when [shadow\_enabled](#class-light3d-property-shadow-enabled) is `true`.

* * *

[bool](class_bool.md#class-bool) **editor\_only** = `false` [🔗](#class-light3d-property-editor-only)

- void **set\_editor\_only**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editor\_only**()


If `true`, the light only appears in the editor and will not be visible at runtime. If `true`, the light will never be baked in [LightmapGI](class_lightmapgi.md#class-lightmapgi) regardless of its [light\_bake\_mode](#class-light3d-property-light-bake-mode).

* * *

[float](class_float.md#class-float) **light\_angular\_distance** = `0.0` [🔗](#class-light3d-property-light-angular-distance)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


The light's angular size in degrees. Increasing this will make shadows softer at greater distances (also called percentage-closer soft shadows, or PCSS). Only available for [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) s. For reference, the Sun from the Earth is approximately `0.5`. Increasing this value above `0.0` for lights with shadows enabled will have a noticeable performance cost due to PCSS.

**Note:** [light\_angular\_distance](#class-light3d-property-light-angular-distance) is not affected by [Node3D.scale](class_node3d.md#class-node3d-property-scale) (the light's scale or its parent's scale).

**Note:** PCSS for directional lights is only supported in the Forward+ rendering method, not Mobile or Compatibility.

* * *

[BakeMode](#enum-light3d-bakemode) **light\_bake\_mode** = `2` [🔗](#class-light3d-property-light-bake-mode)

- void **set\_bake\_mode**(value: [BakeMode](#enum-light3d-bakemode))

- [BakeMode](#enum-light3d-bakemode) **get\_bake\_mode**()


The light's bake mode. This will affect the global illumination techniques that have an effect on the light's rendering.

**Note:** Meshes' global illumination mode will also affect the global illumination rendering. See [GeometryInstance3D.gi\_mode](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-mode).

* * *

[Color](class_color.md#class-color) **light\_color** = `Color(1, 1, 1, 1)` [🔗](#class-light3d-property-light-color)

- void **set\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_color**()


The light's color in the nonlinear sRGB color space. An _overbright_ color can be used to achieve a result equivalent to increasing the light's [light\_energy](#class-light3d-property-light-energy).

* * *

[int](class_int.md#class-int) **light\_cull\_mask** = `4294967295` [🔗](#class-light3d-property-light-cull-mask)

- void **set\_cull\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_cull\_mask**()


The light will affect objects in the selected layers.

**Note:** The light cull mask is ignored by [VoxelGI](class_voxelgi.md#class-voxelgi), SDFGI, [LightmapGI](class_lightmapgi.md#class-lightmapgi), and volumetric fog. These will always render lights in a way that ignores the cull mask. See also [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers).

* * *

[float](class_float.md#class-float) **light\_energy** = `1.0` [🔗](#class-light3d-property-light-energy)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


The light's strength multiplier (this is not a physical unit). For [OmniLight3D](class_omnilight3d.md#class-omnilight3d) and [SpotLight3D](class_spotlight3d.md#class-spotlight3d), changing this value will only change the light color's intensity, not the light's radius.

* * *

[float](class_float.md#class-float) **light\_indirect\_energy** = `1.0` [🔗](#class-light3d-property-light-indirect-energy)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


Secondary multiplier used with indirect light (light bounces). Used with [VoxelGI](class_voxelgi.md#class-voxelgi) and SDFGI (see [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)).

**Note:** This property is ignored if [light\_energy](#class-light3d-property-light-energy) is equal to `0.0`, as the light won't be present at all in the GI shader.

* * *

[float](class_float.md#class-float) **light\_intensity\_lumens** [🔗](#class-light3d-property-light-intensity-lumens)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


Used by positional lights ( [OmniLight3D](class_omnilight3d.md#class-omnilight3d) and [SpotLight3D](class_spotlight3d.md#class-spotlight3d)) when [ProjectSettings.rendering/lights\_and\_shadows/use\_physical\_light\_units](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units) is `true`. Sets the intensity of the light source measured in Lumens. Lumens are a measure of luminous flux, which is the total amount of visible light emitted by a light source per unit of time.

For [SpotLight3D](class_spotlight3d.md#class-spotlight3d) s, we assume that the area outside the visible cone is surrounded by a perfect light absorbing material. Accordingly, the apparent brightness of the cone area does not change as the cone increases and decreases in size.

A typical household lightbulb can range from around 600 lumens to 1,200 lumens, a candle is about 13 lumens, while a streetlight can be approximately 60,000 lumens.

* * *

[float](class_float.md#class-float) **light\_intensity\_lux** [🔗](#class-light3d-property-light-intensity-lux)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


Used by [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) s when [ProjectSettings.rendering/lights\_and\_shadows/use\_physical\_light\_units](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units) is `true`. Sets the intensity of the light source measured in Lux. Lux is a measure of luminous flux per unit area, it is equal to one lumen per square meter. Lux is the measure of how much light hits a surface at a given time.

On a clear sunny day a surface in direct sunlight may be approximately 100,000 lux, a typical room in a home may be approximately 50 lux, while the moonlit ground may be approximately 0.1 lux.

* * *

[bool](class_bool.md#class-bool) **light\_negative** = `false` [🔗](#class-light3d-property-light-negative)

- void **set\_negative**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_negative**()


If `true`, the light's effect is reversed, darkening areas and casting bright shadows.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **light\_projector** [🔗](#class-light3d-property-light-projector)

- void **set\_projector**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_projector**()


[Texture2D](class_texture2d.md#class-texture2d) projected by light. [shadow\_enabled](#class-light3d-property-shadow-enabled) must be on for the projector to work. Light projectors make the light appear as if it is shining through a colored but transparent object, almost like light shining through stained-glass.

**Note:** Unlike [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d) whose filter mode can be adjusted on a per-material basis, the filter mode for light projector textures is set globally with [ProjectSettings.rendering/textures/light\_projectors/filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-light-projectors-filter).

**Note:** Light projector textures are only supported in the Forward+ and Mobile rendering methods, not Compatibility.

* * *

[float](class_float.md#class-float) **light\_size** = `0.0` [🔗](#class-light3d-property-light-size)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


The size of the light in Godot units. Only available for [OmniLight3D](class_omnilight3d.md#class-omnilight3d) s and [SpotLight3D](class_spotlight3d.md#class-spotlight3d) s. Increasing this value will make the light fade out slower and shadows appear blurrier (also called percentage-closer soft shadows, or PCSS). This can be used to simulate area lights to an extent. Increasing this value above `0.0` for lights with shadows enabled will have a noticeable performance cost due to PCSS.

**Note:** [light\_size](#class-light3d-property-light-size) is not affected by [Node3D.scale](class_node3d.md#class-node3d-property-scale) (the light's scale or its parent's scale).

**Note:** PCSS for positional lights is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

* * *

[float](class_float.md#class-float) **light\_specular** = `1.0` [🔗](#class-light3d-property-light-specular)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


The intensity of the specular blob in objects affected by the light. At `0`, the light becomes a pure diffuse light. When not baking emission, this can be used to avoid unrealistic reflections when placing lights above an emissive surface.

* * *

[float](class_float.md#class-float) **light\_temperature** [🔗](#class-light3d-property-light-temperature)

- void **set\_temperature**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_temperature**()


Sets the color temperature of the light source, measured in Kelvin. This is used to calculate a correlated color temperature which tints the [light\_color](#class-light3d-property-light-color).

The sun on a cloudy day is approximately 6500 Kelvin, on a clear day it is between 5500 to 6000 Kelvin, and on a clear day at sunrise or sunset it ranges to around 1850 Kelvin.

* * *

[float](class_float.md#class-float) **light\_volumetric\_fog\_energy** = `1.0` [🔗](#class-light3d-property-light-volumetric-fog-energy)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


Secondary multiplier multiplied with [light\_energy](#class-light3d-property-light-energy) then used with the [Environment](class_environment.md#class-environment)'s volumetric fog (if enabled). If set to `0.0`, computing volumetric fog will be skipped for this light, which can improve performance for large amounts of lights when volumetric fog is enabled.

**Note:** To prevent short-lived dynamic light effects from poorly interacting with volumetric fog, lights used in those effects should have [light\_volumetric\_fog\_energy](#class-light3d-property-light-volumetric-fog-energy) set to `0.0` unless [Environment.volumetric\_fog\_temporal\_reprojection\_enabled](class_environment.md#class-environment-property-volumetric-fog-temporal-reprojection-enabled) is disabled (or unless the reprojection amount is significantly lowered).

* * *

[float](class_float.md#class-float) **shadow\_bias** = `0.1` [🔗](#class-light3d-property-shadow-bias)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


Used to adjust shadow appearance. Too small a value results in self-shadowing ("shadow acne"), while too large a value causes shadows to separate from casters ("peter-panning"). Adjust as needed.

* * *

[float](class_float.md#class-float) **shadow\_blur** = `1.0` [🔗](#class-light3d-property-shadow-blur)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


Blurs the edges of the shadow. Can be used to hide pixel artifacts in low-resolution shadow maps. A high value can impact performance, make shadows appear grainy and can cause other unwanted artifacts. Try to keep as near default as possible.

* * *

[int](class_int.md#class-int) **shadow\_caster\_mask** = `4294967295` [🔗](#class-light3d-property-shadow-caster-mask)

- void **set\_shadow\_caster\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_shadow\_caster\_mask**()


The light will only cast shadows using objects in the selected layers.

* * *

[bool](class_bool.md#class-bool) **shadow\_enabled** = `false` [🔗](#class-light3d-property-shadow-enabled)

- void **set\_shadow**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_shadow**()


If `true`, the light will cast real-time shadows. This has a significant performance cost. Only enable shadow rendering when it makes a noticeable difference in the scene's appearance, and consider using [distance\_fade\_enabled](#class-light3d-property-distance-fade-enabled) to hide the light when far away from the [Camera3D](class_camera3d.md#class-camera3d).

* * *

[float](class_float.md#class-float) **shadow\_normal\_bias** = `2.0` [🔗](#class-light3d-property-shadow-normal-bias)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


Offsets the lookup into the shadow map by the object's normal. This can be used to reduce self-shadowing artifacts without using [shadow\_bias](#class-light3d-property-shadow-bias). In practice, this value should be tweaked along with [shadow\_bias](#class-light3d-property-shadow-bias) to reduce artifacts as much as possible.

* * *

[float](class_float.md#class-float) **shadow\_opacity** = `1.0` [🔗](#class-light3d-property-shadow-opacity)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


The opacity to use when rendering the light's shadow map. Values lower than `1.0` make the light appear through shadows. This can be used to fake global illumination at a low performance cost.

* * *

[bool](class_bool.md#class-bool) **shadow\_reverse\_cull\_face** = `false` [🔗](#class-light3d-property-shadow-reverse-cull-face)

- void **set\_shadow\_reverse\_cull\_face**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_shadow\_reverse\_cull\_face**()


If `true`, reverses the backface culling of the mesh. This can be useful when you have a flat mesh that has a light behind it. If you need to cast a shadow on both sides of the mesh, set the mesh to use double-sided shadows with [GeometryInstance3D.SHADOW\_CASTING\_SETTING\_DOUBLE\_SIDED](class_geometryinstance3d.md#class-geometryinstance3d-constant-shadow-casting-setting-double-sided).

* * *

[float](class_float.md#class-float) **shadow\_transmittance\_bias** = `0.05` [🔗](#class-light3d-property-shadow-transmittance-bias)

- void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Method Descriptions

[Color](class_color.md#class-color) **get\_correlated\_color**() const [🔗](#class-light3d-method-get-correlated-color)

Returns the [Color](class_color.md#class-color) of an idealized blackbody at the given [light\_temperature](#class-light3d-property-light-temperature). This value is calculated internally based on the [light\_temperature](#class-light3d-property-light-temperature). This [Color](class_color.md#class-color) is multiplied by [light\_color](#class-light3d-property-light-color) before being sent to the [RenderingServer](class_renderingserver.md#class-renderingserver).

* * *

[float](class_float.md#class-float) **get\_param**(param: [Param](#enum-light3d-param)) const [🔗](#class-light3d-method-get-param)

Returns the value of the specified [Param](#enum-light3d-param) parameter.

* * *

void **set\_param**(param: [Param](#enum-light3d-param), value: [float](class_float.md#class-float)) [🔗](#class-light3d-method-set-param)

Sets the value of the specified [Param](#enum-light3d-param) parameter.

[Previous](class_light2d.md "Light2D") [Next](class_lightmapgi.md "LightmapGI")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_light2d.md "Light2D") [Next](class_lightmapgi.md "LightmapGI")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).