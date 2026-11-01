---
title: Environment — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_environment.html
crawled_at: "2026-08-13T10:27:26+12:00"
content_hash: dc4c1648a935793ced3bd24b16f162aceec39c54e12f202a9bf5eeaffe84d5e8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Environment

* * *

# Environment

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Resource for environment nodes (like [WorldEnvironment](class_worldenvironment.md#class-worldenvironment)) that define multiple rendering options.

## Description

Resource for environment nodes (like [WorldEnvironment](class_worldenvironment.md#class-worldenvironment)) that define multiple environment operations (such as background [Sky](class_sky.md#class-sky) or [Color](class_color.md#class-color), ambient light, fog, depth-of-field...). These parameters affect the final render of the scene. The order of these operations is:

- Depth of Field Blur

- Glow

- Tonemap (Auto Exposure)

- Adjustments


## Tutorials

- [Environment and post-processing](../tutorials/3d/environment_and_post_processing.md)

- [High dynamic range lighting](../tutorials/3d/high_dynamic_range.md)

- [3D Material Testers Demo](https://godotengine.org/asset-library/asset/2742)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [adjustment\_brightness](#class-environment-property-adjustment-brightness) | `1.0` |
| [Texture](class_texture.md#class-texture) | [adjustment\_color\_correction](#class-environment-property-adjustment-color-correction) |  |
| [float](class_float.md#class-float) | [adjustment\_contrast](#class-environment-property-adjustment-contrast) | `1.0` |
| [bool](class_bool.md#class-bool) | [adjustment\_enabled](#class-environment-property-adjustment-enabled) | `false` |
| [float](class_float.md#class-float) | [adjustment\_saturation](#class-environment-property-adjustment-saturation) | `1.0` |
| [Color](class_color.md#class-color) | [ambient\_light\_color](#class-environment-property-ambient-light-color) | `Color(0, 0, 0, 1)` |
| [float](class_float.md#class-float) | [ambient\_light\_energy](#class-environment-property-ambient-light-energy) | `1.0` |
| [float](class_float.md#class-float) | [ambient\_light\_sky\_contribution](#class-environment-property-ambient-light-sky-contribution) | `1.0` |
| [AmbientSource](#enum-environment-ambientsource) | [ambient\_light\_source](#class-environment-property-ambient-light-source) | `0` |
| [int](class_int.md#class-int) | [background\_camera\_feed\_id](#class-environment-property-background-camera-feed-id) | `1` |
| [int](class_int.md#class-int) | [background\_canvas\_max\_layer](#class-environment-property-background-canvas-max-layer) | `0` |
| [Color](class_color.md#class-color) | [background\_color](#class-environment-property-background-color) | `Color(0, 0, 0, 1)` |
| [float](class_float.md#class-float) | [background\_energy\_multiplier](#class-environment-property-background-energy-multiplier) | `1.0` |
| [float](class_float.md#class-float) | [background\_intensity](#class-environment-property-background-intensity) | `30000.0` |
| [BGMode](#enum-environment-bgmode) | [background\_mode](#class-environment-property-background-mode) | `0` |
| [float](class_float.md#class-float) | [fog\_aerial\_perspective](#class-environment-property-fog-aerial-perspective) | `0.0` |
| [float](class_float.md#class-float) | [fog\_density](#class-environment-property-fog-density) | `0.01` |
| [float](class_float.md#class-float) | [fog\_depth\_begin](#class-environment-property-fog-depth-begin) | `10.0` |
| [float](class_float.md#class-float) | [fog\_depth\_curve](#class-environment-property-fog-depth-curve) | `1.0` |
| [float](class_float.md#class-float) | [fog\_depth\_end](#class-environment-property-fog-depth-end) | `100.0` |
| [bool](class_bool.md#class-bool) | [fog\_enabled](#class-environment-property-fog-enabled) | `false` |
| [float](class_float.md#class-float) | [fog\_height](#class-environment-property-fog-height) | `0.0` |
| [float](class_float.md#class-float) | [fog\_height\_density](#class-environment-property-fog-height-density) | `0.0` |
| [Color](class_color.md#class-color) | [fog\_light\_color](#class-environment-property-fog-light-color) | `Color(0.518, 0.553, 0.608, 1)` |
| [float](class_float.md#class-float) | [fog\_light\_energy](#class-environment-property-fog-light-energy) | `1.0` |
| [FogMode](#enum-environment-fogmode) | [fog\_mode](#class-environment-property-fog-mode) | `0` |
| [float](class_float.md#class-float) | [fog\_sky\_affect](#class-environment-property-fog-sky-affect) | `1.0` |
| [float](class_float.md#class-float) | [fog\_sun\_scatter](#class-environment-property-fog-sun-scatter) | `0.0` |
| [GlowBlendMode](#enum-environment-glowblendmode) | [glow\_blend\_mode](#class-environment-property-glow-blend-mode) | `2` |
| [float](class_float.md#class-float) | [glow\_bloom](#class-environment-property-glow-bloom) | `0.0` |
| [bool](class_bool.md#class-bool) | [glow\_enabled](#class-environment-property-glow-enabled) | `false` |
| [float](class_float.md#class-float) | [glow\_hdr\_luminance\_cap](#class-environment-property-glow-hdr-luminance-cap) | `12.0` |
| [float](class_float.md#class-float) | [glow\_hdr\_scale](#class-environment-property-glow-hdr-scale) | `2.0` |
| [float](class_float.md#class-float) | [glow\_hdr\_threshold](#class-environment-property-glow-hdr-threshold) | `1.0` |
| [float](class_float.md#class-float) | [glow\_intensity](#class-environment-property-glow-intensity) | `0.8` |
| [float](class_float.md#class-float) | [glow\_levels/1](#class-environment-property-glow-levels-1) | `0.0` |
| [float](class_float.md#class-float) | [glow\_levels/2](#class-environment-property-glow-levels-2) | `0.0` |
| [float](class_float.md#class-float) | [glow\_levels/3](#class-environment-property-glow-levels-3) | `1.0` |
| [float](class_float.md#class-float) | [glow\_levels/4](#class-environment-property-glow-levels-4) | `0.0` |
| [float](class_float.md#class-float) | [glow\_levels/5](#class-environment-property-glow-levels-5) | `1.0` |
| [float](class_float.md#class-float) | [glow\_levels/6](#class-environment-property-glow-levels-6) | `0.0` |
| [float](class_float.md#class-float) | [glow\_levels/7](#class-environment-property-glow-levels-7) | `0.0` |
| [Texture](class_texture.md#class-texture) | [glow\_map](#class-environment-property-glow-map) |  |
| [float](class_float.md#class-float) | [glow\_map\_strength](#class-environment-property-glow-map-strength) | `0.8` |
| [float](class_float.md#class-float) | [glow\_mix](#class-environment-property-glow-mix) | `0.05` |
| [bool](class_bool.md#class-bool) | [glow\_normalized](#class-environment-property-glow-normalized) | `false` |
| [float](class_float.md#class-float) | [glow\_strength](#class-environment-property-glow-strength) | `1.0` |
| [ReflectionSource](#enum-environment-reflectionsource) | [reflected\_light\_source](#class-environment-property-reflected-light-source) | `0` |
| [float](class_float.md#class-float) | [sdfgi\_bounce\_feedback](#class-environment-property-sdfgi-bounce-feedback) | `0.5` |
| [float](class_float.md#class-float) | [sdfgi\_cascade0\_distance](#class-environment-property-sdfgi-cascade0-distance) | `12.8` |
| [int](class_int.md#class-int) | [sdfgi\_cascades](#class-environment-property-sdfgi-cascades) | `4` |
| [bool](class_bool.md#class-bool) | [sdfgi\_enabled](#class-environment-property-sdfgi-enabled) | `false` |
| [float](class_float.md#class-float) | [sdfgi\_energy](#class-environment-property-sdfgi-energy) | `1.0` |
| [float](class_float.md#class-float) | [sdfgi\_max\_distance](#class-environment-property-sdfgi-max-distance) | `204.8` |
| [float](class_float.md#class-float) | [sdfgi\_min\_cell\_size](#class-environment-property-sdfgi-min-cell-size) | `0.2` |
| [float](class_float.md#class-float) | [sdfgi\_normal\_bias](#class-environment-property-sdfgi-normal-bias) | `1.1` |
| [float](class_float.md#class-float) | [sdfgi\_probe\_bias](#class-environment-property-sdfgi-probe-bias) | `1.1` |
| [bool](class_bool.md#class-bool) | [sdfgi\_read\_sky\_light](#class-environment-property-sdfgi-read-sky-light) | `true` |
| [bool](class_bool.md#class-bool) | [sdfgi\_use\_occlusion](#class-environment-property-sdfgi-use-occlusion) | `false` |
| [SDFGIYScale](#enum-environment-sdfgiyscale) | [sdfgi\_y\_scale](#class-environment-property-sdfgi-y-scale) | `1` |
| [Sky](class_sky.md#class-sky) | [sky](#class-environment-property-sky) |  |
| [float](class_float.md#class-float) | [sky\_custom\_fov](#class-environment-property-sky-custom-fov) | `0.0` |
| [Vector3](class_vector3.md#class-vector3) | [sky\_rotation](#class-environment-property-sky-rotation) | `Vector3(0, 0, 0)` |
| [float](class_float.md#class-float) | [ssao\_ao\_channel\_affect](#class-environment-property-ssao-ao-channel-affect) | `0.0` |
| [float](class_float.md#class-float) | [ssao\_detail](#class-environment-property-ssao-detail) | `0.5` |
| [bool](class_bool.md#class-bool) | [ssao\_enabled](#class-environment-property-ssao-enabled) | `false` |
| [float](class_float.md#class-float) | [ssao\_horizon](#class-environment-property-ssao-horizon) | `0.06` |
| [float](class_float.md#class-float) | [ssao\_intensity](#class-environment-property-ssao-intensity) | `2.0` |
| [float](class_float.md#class-float) | [ssao\_light\_affect](#class-environment-property-ssao-light-affect) | `0.0` |
| [float](class_float.md#class-float) | [ssao\_power](#class-environment-property-ssao-power) | `1.5` |
| [float](class_float.md#class-float) | [ssao\_radius](#class-environment-property-ssao-radius) | `1.0` |
| [float](class_float.md#class-float) | [ssao\_sharpness](#class-environment-property-ssao-sharpness) | `0.98` |
| [bool](class_bool.md#class-bool) | [ssil\_enabled](#class-environment-property-ssil-enabled) | `false` |
| [float](class_float.md#class-float) | [ssil\_intensity](#class-environment-property-ssil-intensity) | `1.0` |
| [float](class_float.md#class-float) | [ssil\_normal\_rejection](#class-environment-property-ssil-normal-rejection) | `1.0` |
| [float](class_float.md#class-float) | [ssil\_radius](#class-environment-property-ssil-radius) | `5.0` |
| [float](class_float.md#class-float) | [ssil\_sharpness](#class-environment-property-ssil-sharpness) | `0.98` |
| [float](class_float.md#class-float) | [ssr\_depth\_tolerance](#class-environment-property-ssr-depth-tolerance) | `0.2` |
| [bool](class_bool.md#class-bool) | [ssr\_enabled](#class-environment-property-ssr-enabled) | `false` |
| [float](class_float.md#class-float) | [ssr\_fade\_in](#class-environment-property-ssr-fade-in) | `0.15` |
| [float](class_float.md#class-float) | [ssr\_fade\_out](#class-environment-property-ssr-fade-out) | `2.0` |
| [int](class_int.md#class-int) | [ssr\_max\_steps](#class-environment-property-ssr-max-steps) | `64` |
| [float](class_float.md#class-float) | [tonemap\_exposure](#class-environment-property-tonemap-exposure) | `1.0` |
| [ToneMapper](#enum-environment-tonemapper) | [tonemap\_mode](#class-environment-property-tonemap-mode) | `0` |
| [float](class_float.md#class-float) | [tonemap\_white](#class-environment-property-tonemap-white) | `1.0` |
| [Color](class_color.md#class-color) | [volumetric\_fog\_albedo](#class-environment-property-volumetric-fog-albedo) | `Color(1, 1, 1, 1)` |
| [float](class_float.md#class-float) | [volumetric\_fog\_ambient\_inject](#class-environment-property-volumetric-fog-ambient-inject) | `0.0` |
| [float](class_float.md#class-float) | [volumetric\_fog\_anisotropy](#class-environment-property-volumetric-fog-anisotropy) | `0.2` |
| [float](class_float.md#class-float) | [volumetric\_fog\_density](#class-environment-property-volumetric-fog-density) | `0.05` |
| [float](class_float.md#class-float) | [volumetric\_fog\_detail\_spread](#class-environment-property-volumetric-fog-detail-spread) | `2.0` |
| [Color](class_color.md#class-color) | [volumetric\_fog\_emission](#class-environment-property-volumetric-fog-emission) | `Color(0, 0, 0, 1)` |
| [float](class_float.md#class-float) | [volumetric\_fog\_emission\_energy](#class-environment-property-volumetric-fog-emission-energy) | `1.0` |
| [bool](class_bool.md#class-bool) | [volumetric\_fog\_enabled](#class-environment-property-volumetric-fog-enabled) | `false` |
| [float](class_float.md#class-float) | [volumetric\_fog\_gi\_inject](#class-environment-property-volumetric-fog-gi-inject) | `1.0` |
| [float](class_float.md#class-float) | [volumetric\_fog\_length](#class-environment-property-volumetric-fog-length) | `64.0` |
| [float](class_float.md#class-float) | [volumetric\_fog\_sky\_affect](#class-environment-property-volumetric-fog-sky-affect) | `1.0` |
| [float](class_float.md#class-float) | [volumetric\_fog\_temporal\_reprojection\_amount](#class-environment-property-volumetric-fog-temporal-reprojection-amount) | `0.9` |
| [bool](class_bool.md#class-bool) | [volumetric\_fog\_temporal\_reprojection\_enabled](#class-environment-property-volumetric-fog-temporal-reprojection-enabled) | `true` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_glow\_level](#class-environment-method-get-glow-level)(idx: [int](class_int.md#class-int)) const |
| void | [set\_glow\_level](#class-environment-method-set-glow-level)(idx: [int](class_int.md#class-int), intensity: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **BGMode**: [🔗](#enum-environment-bgmode)

[BGMode](#enum-environment-bgmode) **BG\_CLEAR\_COLOR** = `0`

Clears the background using the clear color defined in [ProjectSettings.rendering/environment/defaults/default\_clear\_color](class_projectsettings.md#class-projectsettings-property-rendering-environment-defaults-default-clear-color).

[BGMode](#enum-environment-bgmode) **BG\_COLOR** = `1`

Clears the background using a custom clear color.

[BGMode](#enum-environment-bgmode) **BG\_SKY** = `2`

Displays a user-defined sky in the background.

[BGMode](#enum-environment-bgmode) **BG\_CANVAS** = `3`

Displays a [CanvasLayer](class_canvaslayer.md#class-canvaslayer) in the background.

[BGMode](#enum-environment-bgmode) **BG\_KEEP** = `4`

Keeps on screen every pixel drawn in the background. This is the fastest background mode, but it can only be safely used in fully-interior scenes (no visible sky or sky reflections). If enabled in a scene where the background is visible, "ghost trail" artifacts will be visible when moving the camera.

[BGMode](#enum-environment-bgmode) **BG\_CAMERA\_FEED** = `5`

Displays a camera feed in the background.

[BGMode](#enum-environment-bgmode) **BG\_MAX** = `6`

Represents the size of the [BGMode](#enum-environment-bgmode) enum.

* * *

enum **AmbientSource**: [🔗](#enum-environment-ambientsource)

[AmbientSource](#enum-environment-ambientsource) **AMBIENT\_SOURCE\_BG** = `0`

Gather ambient light from whichever source is specified as the background.

[AmbientSource](#enum-environment-ambientsource) **AMBIENT\_SOURCE\_DISABLED** = `1`

Disable ambient light. This provides a slight performance boost over [AMBIENT\_SOURCE\_SKY](#class-environment-constant-ambient-source-sky).

[AmbientSource](#enum-environment-ambientsource) **AMBIENT\_SOURCE\_COLOR** = `2`

Specify a specific [Color](class_color.md#class-color) for ambient light. This provides a slight performance boost over [AMBIENT\_SOURCE\_SKY](#class-environment-constant-ambient-source-sky).

[AmbientSource](#enum-environment-ambientsource) **AMBIENT\_SOURCE\_SKY** = `3`

Gather ambient light from the [Sky](class_sky.md#class-sky) regardless of what the background is.

* * *

enum **ReflectionSource**: [🔗](#enum-environment-reflectionsource)

[ReflectionSource](#enum-environment-reflectionsource) **REFLECTION\_SOURCE\_BG** = `0`

Use the background for reflections.

[ReflectionSource](#enum-environment-reflectionsource) **REFLECTION\_SOURCE\_DISABLED** = `1`

Disable reflections. This provides a slight performance boost over other options.

[ReflectionSource](#enum-environment-reflectionsource) **REFLECTION\_SOURCE\_SKY** = `2`

Use the [Sky](class_sky.md#class-sky) for reflections regardless of what the background is.

* * *

enum **ToneMapper**: [🔗](#enum-environment-tonemapper)

[ToneMapper](#enum-environment-tonemapper) **TONE\_MAPPER\_LINEAR** = `0`

Does not modify color data, resulting in a linear tonemapping curve which unnaturally clips bright values, causing bright lighting to look blown out. The simplest and fastest tonemapper.

[ToneMapper](#enum-environment-tonemapper) **TONE\_MAPPER\_REINHARDT** = `1`

A simple tonemapping curve that rolls off bright values to prevent clipping. This results in an image that can appear dull and low contrast. Slower than [TONE\_MAPPER\_LINEAR](#class-environment-constant-tone-mapper-linear).

**Note:** When [tonemap\_white](#class-environment-property-tonemap-white) is left at the default value of `1.0`, [TONE\_MAPPER\_REINHARDT](#class-environment-constant-tone-mapper-reinhardt) produces an identical image to [TONE\_MAPPER\_LINEAR](#class-environment-constant-tone-mapper-linear).

[ToneMapper](#enum-environment-tonemapper) **TONE\_MAPPER\_FILMIC** = `2`

Uses a film-like tonemapping curve to prevent clipping of bright values and provide better contrast than [TONE\_MAPPER\_REINHARDT](#class-environment-constant-tone-mapper-reinhardt). Slightly slower than [TONE\_MAPPER\_REINHARDT](#class-environment-constant-tone-mapper-reinhardt).

[ToneMapper](#enum-environment-tonemapper) **TONE\_MAPPER\_ACES** = `3`

Uses a high-contrast film-like tonemapping curve and desaturates bright values for a more realistic appearance. Slightly slower than [TONE\_MAPPER\_FILMIC](#class-environment-constant-tone-mapper-filmic).

**Note:** This tonemapping operator is called "ACES Fitted" in Godot 3.x.

[ToneMapper](#enum-environment-tonemapper) **TONE\_MAPPER\_AGX** = `4`

Uses a film-like tonemapping curve and desaturates bright values for a more realistic appearance. Better than other tonemappers at maintaining the hue of colors as they become brighter. The slowest tonemapping option.

**Note:** [tonemap\_white](#class-environment-property-tonemap-white) is fixed at a value of `16.29`, which makes [TONE\_MAPPER\_AGX](#class-environment-constant-tone-mapper-agx) unsuitable for use with the Mobile rendering method.

* * *

enum **GlowBlendMode**: [🔗](#enum-environment-glowblendmode)

[GlowBlendMode](#enum-environment-glowblendmode) **GLOW\_BLEND\_MODE\_ADDITIVE** = `0`

Additive glow blending mode. Mostly used for particles, glows (bloom), lens flare, bright sources.

[GlowBlendMode](#enum-environment-glowblendmode) **GLOW\_BLEND\_MODE\_SCREEN** = `1`

Screen glow blending mode. Increases brightness, used frequently with bloom.

[GlowBlendMode](#enum-environment-glowblendmode) **GLOW\_BLEND\_MODE\_SOFTLIGHT** = `2`

Soft light glow blending mode. Modifies contrast, exposes shadows and highlights (vivid bloom).

[GlowBlendMode](#enum-environment-glowblendmode) **GLOW\_BLEND\_MODE\_REPLACE** = `3`

Replace glow blending mode. Replaces all pixels' color by the glow value. This can be used to simulate a full-screen blur effect by tweaking the glow parameters to match the original image's brightness.

[GlowBlendMode](#enum-environment-glowblendmode) **GLOW\_BLEND\_MODE\_MIX** = `4`

Mixes the glow with the underlying color to avoid increasing brightness as much while still maintaining a glow effect.

* * *

enum **FogMode**: [🔗](#enum-environment-fogmode)

[FogMode](#enum-environment-fogmode) **FOG\_MODE\_EXPONENTIAL** = `0`

Use a physically-based fog model defined primarily by fog density.

[FogMode](#enum-environment-fogmode) **FOG\_MODE\_DEPTH** = `1`

Use a simple fog model defined by start and end positions and a custom curve. While not physically accurate, this model can be useful when you need more artistic control.

* * *

enum **SDFGIYScale**: [🔗](#enum-environment-sdfgiyscale)

[SDFGIYScale](#enum-environment-sdfgiyscale) **SDFGI\_Y\_SCALE\_50\_PERCENT** = `0`

Use 50% scale for SDFGI on the Y (vertical) axis. SDFGI cells will be twice as short as they are wide. This allows providing increased GI detail and reduced light leaking with thin floors and ceilings. This is usually the best choice for scenes that don't feature much verticality.

[SDFGIYScale](#enum-environment-sdfgiyscale) **SDFGI\_Y\_SCALE\_75\_PERCENT** = `1`

Use 75% scale for SDFGI on the Y (vertical) axis. This is a balance between the 50% and 100% SDFGI Y scales.

[SDFGIYScale](#enum-environment-sdfgiyscale) **SDFGI\_Y\_SCALE\_100\_PERCENT** = `2`

Use 100% scale for SDFGI on the Y (vertical) axis. SDFGI cells will be as tall as they are wide. This is usually the best choice for highly vertical scenes. The downside is that light leaking may become more noticeable with thin floors and ceilings.

* * *

## Property Descriptions

[float](class_float.md#class-float) **adjustment\_brightness** = `1.0` [🔗](#class-environment-property-adjustment-brightness)

- void **set\_adjustment\_brightness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_adjustment\_brightness**()


The global brightness value of the rendered scene. Effective only if [adjustment\_enabled](#class-environment-property-adjustment-enabled) is `true`.

* * *

[Texture](class_texture.md#class-texture) **adjustment\_color\_correction** [🔗](#class-environment-property-adjustment-color-correction)

- void **set\_adjustment\_color\_correction**(value: [Texture](class_texture.md#class-texture))

- [Texture](class_texture.md#class-texture) **get\_adjustment\_color\_correction**()


The [Texture2D](class_texture2d.md#class-texture2d) or [Texture3D](class_texture3d.md#class-texture3d) lookup table (LUT) to use for the built-in post-process color grading. Can use a [GradientTexture1D](class_gradienttexture1d.md#class-gradienttexture1d) for a 1-dimensional LUT, or a [Texture3D](class_texture3d.md#class-texture3d) for a more complex LUT. Effective only if [adjustment\_enabled](#class-environment-property-adjustment-enabled) is `true`.

* * *

[float](class_float.md#class-float) **adjustment\_contrast** = `1.0` [🔗](#class-environment-property-adjustment-contrast)

- void **set\_adjustment\_contrast**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_adjustment\_contrast**()


The global contrast value of the rendered scene (default value is 1). Effective only if [adjustment\_enabled](#class-environment-property-adjustment-enabled) is `true`.

* * *

[bool](class_bool.md#class-bool) **adjustment\_enabled** = `false` [🔗](#class-environment-property-adjustment-enabled)

- void **set\_adjustment\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_adjustment\_enabled**()


If `true`, enables the `adjustment_*` properties provided by this resource. If `false`, modifications to the `adjustment_*` properties will have no effect on the rendered scene.

* * *

[float](class_float.md#class-float) **adjustment\_saturation** = `1.0` [🔗](#class-environment-property-adjustment-saturation)

- void **set\_adjustment\_saturation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_adjustment\_saturation**()


The global color saturation value of the rendered scene (default value is 1). Effective only if [adjustment\_enabled](#class-environment-property-adjustment-enabled) is `true`.

* * *

[Color](class_color.md#class-color) **ambient\_light\_color** = `Color(0, 0, 0, 1)` [🔗](#class-environment-property-ambient-light-color)

- void **set\_ambient\_light\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_ambient\_light\_color**()


The ambient light's [Color](class_color.md#class-color). Only effective if [ambient\_light\_sky\_contribution](#class-environment-property-ambient-light-sky-contribution) is lower than `1.0` (exclusive).

* * *

[float](class_float.md#class-float) **ambient\_light\_energy** = `1.0` [🔗](#class-environment-property-ambient-light-energy)

- void **set\_ambient\_light\_energy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ambient\_light\_energy**()


The ambient light's energy. The higher the value, the stronger the light. Only effective if [ambient\_light\_sky\_contribution](#class-environment-property-ambient-light-sky-contribution) is lower than `1.0` (exclusive).

* * *

[float](class_float.md#class-float) **ambient\_light\_sky\_contribution** = `1.0` [🔗](#class-environment-property-ambient-light-sky-contribution)

- void **set\_ambient\_light\_sky\_contribution**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ambient\_light\_sky\_contribution**()


Defines the amount of light that the sky brings on the scene. A value of `0.0` means that the sky's light emission has no effect on the scene illumination, thus all ambient illumination is provided by the ambient light. On the contrary, a value of `1.0` means that _all_ the light that affects the scene is provided by the sky, thus the ambient light parameter has no effect on the scene.

**Note:** [ambient\_light\_sky\_contribution](#class-environment-property-ambient-light-sky-contribution) is internally clamped between `0.0` and `1.0` (inclusive).

* * *

[AmbientSource](#enum-environment-ambientsource) **ambient\_light\_source** = `0` [🔗](#class-environment-property-ambient-light-source)

- void **set\_ambient\_source**(value: [AmbientSource](#enum-environment-ambientsource))

- [AmbientSource](#enum-environment-ambientsource) **get\_ambient\_source**()


The ambient light source to use for rendering materials and global illumination.

* * *

[int](class_int.md#class-int) **background\_camera\_feed\_id** = `1` [🔗](#class-environment-property-background-camera-feed-id)

- void **set\_camera\_feed\_id**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_camera\_feed\_id**()


The ID of the camera feed to show in the background.

* * *

[int](class_int.md#class-int) **background\_canvas\_max\_layer** = `0` [🔗](#class-environment-property-background-canvas-max-layer)

- void **set\_canvas\_max\_layer**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_canvas\_max\_layer**()


The maximum layer ID to display. Only effective when using the [BG\_CANVAS](#class-environment-constant-bg-canvas) background mode.

* * *

[Color](class_color.md#class-color) **background\_color** = `Color(0, 0, 0, 1)` [🔗](#class-environment-property-background-color)

- void **set\_bg\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_bg\_color**()


The [Color](class_color.md#class-color) displayed for clear areas of the scene. Only effective when using the [BG\_COLOR](#class-environment-constant-bg-color) background mode.

* * *

[float](class_float.md#class-float) **background\_energy\_multiplier** = `1.0` [🔗](#class-environment-property-background-energy-multiplier)

- void **set\_bg\_energy\_multiplier**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bg\_energy\_multiplier**()


Multiplier for background energy. Increase to make background brighter, decrease to make background dimmer.

* * *

[float](class_float.md#class-float) **background\_intensity** = `30000.0` [🔗](#class-environment-property-background-intensity)

- void **set\_bg\_intensity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bg\_intensity**()


Luminance of background measured in nits (candela per square meter). Only used when [ProjectSettings.rendering/lights\_and\_shadows/use\_physical\_light\_units](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units) is enabled. The default value is roughly equivalent to the sky at midday.

* * *

[BGMode](#enum-environment-bgmode) **background\_mode** = `0` [🔗](#class-environment-property-background-mode)

- void **set\_background**(value: [BGMode](#enum-environment-bgmode))

- [BGMode](#enum-environment-bgmode) **get\_background**()


The background mode.

* * *

[float](class_float.md#class-float) **fog\_aerial\_perspective** = `0.0` [🔗](#class-environment-property-fog-aerial-perspective)

- void **set\_fog\_aerial\_perspective**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fog\_aerial\_perspective**()


If set above `0.0` (exclusive), blends between the fog's color and the color of the background [Sky](class_sky.md#class-sky), as read from the radiance cubemap. This has a small performance cost when set above `0.0`. Must have [background\_mode](#class-environment-property-background-mode) set to [BG\_SKY](#class-environment-constant-bg-sky).

This is useful to simulate [aerial perspective](https://en.wikipedia.org/wiki/Aerial_perspective) in large scenes with low density fog. However, it is not very useful for high-density fog, as the sky will shine through. When set to `1.0`, the fog color comes completely from the [Sky](class_sky.md#class-sky). If set to `0.0`, aerial perspective is disabled.

Notice that this does not sample the [Sky](class_sky.md#class-sky) directly, but rather the radiance cubemap. The cubemap is sampled at a mipmap level depending on the depth of the rendered pixel; the farther away, the higher the resolution of the sampled mipmap. This results in the actual color being a blurred version of the sky, with more blur closer to the camera. The highest mipmap resolution is used at a depth of [Camera3D.far](class_camera3d.md#class-camera3d-property-far).

* * *

[float](class_float.md#class-float) **fog\_density** = `0.01` [🔗](#class-environment-property-fog-density)

- void **set\_fog\_density**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fog\_density**()


The fog density to be used. This is demonstrated in different ways depending on the [fog\_mode](#class-environment-property-fog-mode) mode chosen:

**Exponential Fog Mode:** Higher values result in denser fog. The fog rendering is exponential like in real life.

**Depth Fog mode:** The maximum intensity of the deep fog, effect will appear in the distance (relative to the camera). At `1.0` the fog will fully obscure the scene, at `0.0` the fog will not be visible.

* * *

[float](class_float.md#class-float) **fog\_depth\_begin** = `10.0` [🔗](#class-environment-property-fog-depth-begin)

- void **set\_fog\_depth\_begin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fog\_depth\_begin**()


The fog's depth starting distance from the camera. Only available when [fog\_mode](#class-environment-property-fog-mode) is set to [FOG\_MODE\_DEPTH](#class-environment-constant-fog-mode-depth).

* * *

[float](class_float.md#class-float) **fog\_depth\_curve** = `1.0` [🔗](#class-environment-property-fog-depth-curve)

- void **set\_fog\_depth\_curve**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fog\_depth\_curve**()


The fog depth's intensity curve. A number of presets are available in the Inspector by right-clicking the curve. Only available when [fog\_mode](#class-environment-property-fog-mode) is set to [FOG\_MODE\_DEPTH](#class-environment-constant-fog-mode-depth).

* * *

[float](class_float.md#class-float) **fog\_depth\_end** = `100.0` [🔗](#class-environment-property-fog-depth-end)

- void **set\_fog\_depth\_end**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fog\_depth\_end**()


The fog's depth end distance from the camera. If this value is set to `0`, it will be equal to the current camera's [Camera3D.far](class_camera3d.md#class-camera3d-property-far) value. Only available when [fog\_mode](#class-environment-property-fog-mode) is set to [FOG\_MODE\_DEPTH](#class-environment-constant-fog-mode-depth).

* * *

[bool](class_bool.md#class-bool) **fog\_enabled** = `false` [🔗](#class-environment-property-fog-enabled)

- void **set\_fog\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_fog\_enabled**()


If `true`, fog effects are enabled.

* * *

[float](class_float.md#class-float) **fog\_height** = `0.0` [🔗](#class-environment-property-fog-height)

- void **set\_fog\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fog\_height**()


The height at which the height fog effect begins.

* * *

[float](class_float.md#class-float) **fog\_height\_density** = `0.0` [🔗](#class-environment-property-fog-height-density)

- void **set\_fog\_height\_density**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fog\_height\_density**()


The density used to increase fog as height decreases. To make fog increase as height increases, use a negative value.

* * *

[Color](class_color.md#class-color) **fog\_light\_color** = `Color(0.518, 0.553, 0.608, 1)` [🔗](#class-environment-property-fog-light-color)

- void **set\_fog\_light\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_fog\_light\_color**()


The fog's color.

* * *

[float](class_float.md#class-float) **fog\_light\_energy** = `1.0` [🔗](#class-environment-property-fog-light-energy)

- void **set\_fog\_light\_energy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fog\_light\_energy**()


The fog's brightness. Higher values result in brighter fog.

* * *

[FogMode](#enum-environment-fogmode) **fog\_mode** = `0` [🔗](#class-environment-property-fog-mode)

- void **set\_fog\_mode**(value: [FogMode](#enum-environment-fogmode))

- [FogMode](#enum-environment-fogmode) **get\_fog\_mode**()


The fog mode.

* * *

[float](class_float.md#class-float) **fog\_sky\_affect** = `1.0` [🔗](#class-environment-property-fog-sky-affect)

- void **set\_fog\_sky\_affect**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fog\_sky\_affect**()


The factor to use when affecting the sky with non-volumetric fog. `1.0` means that fog can fully obscure the sky. Lower values reduce the impact of fog on sky rendering, with `0.0` not affecting sky rendering at all.

**Note:** [fog\_sky\_affect](#class-environment-property-fog-sky-affect) has no visual effect if [fog\_aerial\_perspective](#class-environment-property-fog-aerial-perspective) is `1.0`.

* * *

[float](class_float.md#class-float) **fog\_sun\_scatter** = `0.0` [🔗](#class-environment-property-fog-sun-scatter)

- void **set\_fog\_sun\_scatter**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fog\_sun\_scatter**()


If set above `0.0`, renders the scene's directional light(s) in the fog color depending on the view angle. This can be used to give the impression that the sun is "piercing" through the fog.

* * *

[GlowBlendMode](#enum-environment-glowblendmode) **glow\_blend\_mode** = `2` [🔗](#class-environment-property-glow-blend-mode)

- void **set\_glow\_blend\_mode**(value: [GlowBlendMode](#enum-environment-glowblendmode))

- [GlowBlendMode](#enum-environment-glowblendmode) **get\_glow\_blend\_mode**()


The glow blending mode.

**Note:** [glow\_blend\_mode](#class-environment-property-glow-blend-mode) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[float](class_float.md#class-float) **glow\_bloom** = `0.0` [🔗](#class-environment-property-glow-bloom)

- void **set\_glow\_bloom**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_bloom**()


The bloom's intensity. If set to a value higher than `0`, this will make glow visible in areas darker than the [glow\_hdr\_threshold](#class-environment-property-glow-hdr-threshold).

* * *

[bool](class_bool.md#class-bool) **glow\_enabled** = `false` [🔗](#class-environment-property-glow-enabled)

- void **set\_glow\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_glow\_enabled**()


If `true`, the glow effect is enabled. This simulates real world eye/camera behavior where bright pixels bleed onto surrounding pixels.

**Note:** When using the Mobile rendering method, glow looks different due to the lower dynamic range available in the Mobile rendering method.

**Note:** When using the Compatibility rendering method, glow uses a different implementation with some properties being unavailable and hidden from the inspector: `glow_levels/*`, [glow\_normalized](#class-environment-property-glow-normalized), [glow\_strength](#class-environment-property-glow-strength), [glow\_blend\_mode](#class-environment-property-glow-blend-mode), [glow\_mix](#class-environment-property-glow-mix), [glow\_map](#class-environment-property-glow-map), and [glow\_map\_strength](#class-environment-property-glow-map-strength). This implementation is optimized to run on low-end devices and is less flexible as a result.

* * *

[float](class_float.md#class-float) **glow\_hdr\_luminance\_cap** = `12.0` [🔗](#class-environment-property-glow-hdr-luminance-cap)

- void **set\_glow\_hdr\_luminance\_cap**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_hdr\_luminance\_cap**()


The higher threshold of the HDR glow. Areas brighter than this threshold will be clamped for the purposes of the glow effect.

* * *

[float](class_float.md#class-float) **glow\_hdr\_scale** = `2.0` [🔗](#class-environment-property-glow-hdr-scale)

- void **set\_glow\_hdr\_bleed\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_hdr\_bleed\_scale**()


The bleed scale of the HDR glow.

* * *

[float](class_float.md#class-float) **glow\_hdr\_threshold** = `1.0` [🔗](#class-environment-property-glow-hdr-threshold)

- void **set\_glow\_hdr\_bleed\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_hdr\_bleed\_threshold**()


The lower threshold of the HDR glow. When using the Mobile rendering method (which only supports a lower dynamic range up to `2.0`), this may need to be below `1.0` for glow to be visible. A value of `0.9` works well in this case. This value also needs to be decreased below `1.0` when using glow in 2D, as 2D rendering is performed in SDR.

* * *

[float](class_float.md#class-float) **glow\_intensity** = `0.8` [🔗](#class-environment-property-glow-intensity)

- void **set\_glow\_intensity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_intensity**()


The overall brightness multiplier of the glow effect. When using the Mobile rendering method (which only supports a lower dynamic range up to `2.0`), this should be increased to `1.5` to compensate.

* * *

[float](class_float.md#class-float) **glow\_levels/1** = `0.0` [🔗](#class-environment-property-glow-levels-1)

- void **set\_glow\_level**(idx: [int](class_int.md#class-int), intensity: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_level**(idx: [int](class_int.md#class-int)) const


The intensity of the 1st level of glow. This is the most "local" level (least blurry).

**Note:** [glow\_levels/1](#class-environment-property-glow-levels-1) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[float](class_float.md#class-float) **glow\_levels/2** = `0.0` [🔗](#class-environment-property-glow-levels-2)

- void **set\_glow\_level**(idx: [int](class_int.md#class-int), intensity: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_level**(idx: [int](class_int.md#class-int)) const


The intensity of the 2nd level of glow.

**Note:** [glow\_levels/2](#class-environment-property-glow-levels-2) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[float](class_float.md#class-float) **glow\_levels/3** = `1.0` [🔗](#class-environment-property-glow-levels-3)

- void **set\_glow\_level**(idx: [int](class_int.md#class-int), intensity: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_level**(idx: [int](class_int.md#class-int)) const


The intensity of the 3rd level of glow.

**Note:** [glow\_levels/3](#class-environment-property-glow-levels-3) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[float](class_float.md#class-float) **glow\_levels/4** = `0.0` [🔗](#class-environment-property-glow-levels-4)

- void **set\_glow\_level**(idx: [int](class_int.md#class-int), intensity: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_level**(idx: [int](class_int.md#class-int)) const


The intensity of the 4th level of glow.

**Note:** [glow\_levels/4](#class-environment-property-glow-levels-4) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[float](class_float.md#class-float) **glow\_levels/5** = `1.0` [🔗](#class-environment-property-glow-levels-5)

- void **set\_glow\_level**(idx: [int](class_int.md#class-int), intensity: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_level**(idx: [int](class_int.md#class-int)) const


The intensity of the 5th level of glow.

**Note:** [glow\_levels/5](#class-environment-property-glow-levels-5) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[float](class_float.md#class-float) **glow\_levels/6** = `0.0` [🔗](#class-environment-property-glow-levels-6)

- void **set\_glow\_level**(idx: [int](class_int.md#class-int), intensity: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_level**(idx: [int](class_int.md#class-int)) const


The intensity of the 6th level of glow.

**Note:** [glow\_levels/6](#class-environment-property-glow-levels-6) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[float](class_float.md#class-float) **glow\_levels/7** = `0.0` [🔗](#class-environment-property-glow-levels-7)

- void **set\_glow\_level**(idx: [int](class_int.md#class-int), intensity: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_level**(idx: [int](class_int.md#class-int)) const


The intensity of the 7th level of glow. This is the most "global" level (blurriest).

**Note:** [glow\_levels/7](#class-environment-property-glow-levels-7) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[Texture](class_texture.md#class-texture) **glow\_map** [🔗](#class-environment-property-glow-map)

- void **set\_glow\_map**(value: [Texture](class_texture.md#class-texture))

- [Texture](class_texture.md#class-texture) **get\_glow\_map**()


The texture that should be used as a glow map to _multiply_ the resulting glow color according to [glow\_map\_strength](#class-environment-property-glow-map-strength). This can be used to create a "lens dirt" effect. The texture's RGB color channels are used for modulation, but the alpha channel is ignored.

**Note:** The texture will be stretched to fit the screen. Therefore, it's recommended to use a texture with an aspect ratio that matches your project's base aspect ratio (typically 16:9).

**Note:** [glow\_map](#class-environment-property-glow-map) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[float](class_float.md#class-float) **glow\_map\_strength** = `0.8` [🔗](#class-environment-property-glow-map-strength)

- void **set\_glow\_map\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_map\_strength**()


How strong of an influence the [glow\_map](#class-environment-property-glow-map) should have on the overall glow effect. A strength of `0.0` means the glow map has no influence, while a strength of `1.0` means the glow map has full influence.

**Note:** If the glow map has black areas, a value of `1.0` can also turn off the glow effect entirely in specific areas of the screen.

**Note:** [glow\_map\_strength](#class-environment-property-glow-map-strength) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[float](class_float.md#class-float) **glow\_mix** = `0.05` [🔗](#class-environment-property-glow-mix)

- void **set\_glow\_mix**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_mix**()


When using the [GLOW\_BLEND\_MODE\_MIX](#class-environment-constant-glow-blend-mode-mix) [glow\_blend\_mode](#class-environment-property-glow-blend-mode), this controls how much the source image is blended with the glow layer. A value of `0.0` makes the glow rendering invisible, while a value of `1.0` is equivalent to [GLOW\_BLEND\_MODE\_REPLACE](#class-environment-constant-glow-blend-mode-replace).

**Note:** [glow\_mix](#class-environment-property-glow-mix) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[bool](class_bool.md#class-bool) **glow\_normalized** = `false` [🔗](#class-environment-property-glow-normalized)

- void **set\_glow\_normalized**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_glow\_normalized**()


If `true`, glow levels will be normalized so that summed together their intensities equal `1.0`.

**Note:** [glow\_normalized](#class-environment-property-glow-normalized) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[float](class_float.md#class-float) **glow\_strength** = `1.0` [🔗](#class-environment-property-glow-strength)

- void **set\_glow\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_glow\_strength**()


The strength of the glow effect. This applies as the glow is blurred across the screen and increases the distance and intensity of the blur. When using the Mobile rendering method, this should be increased to compensate for the lower dynamic range.

**Note:** [glow\_strength](#class-environment-property-glow-strength) has no effect when using the Compatibility rendering method, due to this rendering method using a simpler glow implementation optimized for low-end devices.

* * *

[ReflectionSource](#enum-environment-reflectionsource) **reflected\_light\_source** = `0` [🔗](#class-environment-property-reflected-light-source)

- void **set\_reflection\_source**(value: [ReflectionSource](#enum-environment-reflectionsource))

- [ReflectionSource](#enum-environment-reflectionsource) **get\_reflection\_source**()


The reflected (specular) light source.

* * *

[float](class_float.md#class-float) **sdfgi\_bounce\_feedback** = `0.5` [🔗](#class-environment-property-sdfgi-bounce-feedback)

- void **set\_sdfgi\_bounce\_feedback**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sdfgi\_bounce\_feedback**()


The energy multiplier applied to light every time it bounces from a surface when using SDFGI. Values greater than `0.0` will simulate multiple bounces, resulting in a more realistic appearance. Increasing [sdfgi\_bounce\_feedback](#class-environment-property-sdfgi-bounce-feedback) generally has no performance impact. See also [sdfgi\_energy](#class-environment-property-sdfgi-energy).

**Note:** Values greater than `0.5` can cause infinite feedback loops and should be avoided in scenes with bright materials.

**Note:** If [sdfgi\_bounce\_feedback](#class-environment-property-sdfgi-bounce-feedback) is `0.0`, indirect lighting will not be represented in reflections as light will only bounce one time.

* * *

[float](class_float.md#class-float) **sdfgi\_cascade0\_distance** = `12.8` [🔗](#class-environment-property-sdfgi-cascade0-distance)

- void **set\_sdfgi\_cascade0\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sdfgi\_cascade0\_distance**()


**Note:** This property is linked to [sdfgi\_min\_cell\_size](#class-environment-property-sdfgi-min-cell-size) and [sdfgi\_max\_distance](#class-environment-property-sdfgi-max-distance). Changing its value will automatically change those properties as well.

* * *

[int](class_int.md#class-int) **sdfgi\_cascades** = `4` [🔗](#class-environment-property-sdfgi-cascades)

- void **set\_sdfgi\_cascades**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sdfgi\_cascades**()


The number of cascades to use for SDFGI (between 1 and 8). A higher number of cascades allows displaying SDFGI further away while preserving detail up close, at the cost of performance. When using SDFGI on small-scale levels, [sdfgi\_cascades](#class-environment-property-sdfgi-cascades) can often be decreased between `1` and `4` to improve performance.

* * *

[bool](class_bool.md#class-bool) **sdfgi\_enabled** = `false` [🔗](#class-environment-property-sdfgi-enabled)

- void **set\_sdfgi\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_sdfgi\_enabled**()


If `true`, enables signed distance field global illumination for meshes that have their [GeometryInstance3D.gi\_mode](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-mode) set to [GeometryInstance3D.GI\_MODE\_STATIC](class_geometryinstance3d.md#class-geometryinstance3d-constant-gi-mode-static). SDFGI is a real-time global illumination technique that works well with procedurally generated and user-built levels, including in situations where geometry is created during gameplay. The signed distance field is automatically generated around the camera as it moves. Dynamic lights are supported, but dynamic occluders and emissive surfaces are not.

**Note:** SDFGI is only supported in the Forward+ rendering method, not Mobile or Compatibility.

**Performance:** SDFGI is relatively demanding on the GPU and is not suited to low-end hardware such as integrated graphics (consider [LightmapGI](class_lightmapgi.md#class-lightmapgi) instead). To improve SDFGI performance, enable [ProjectSettings.rendering/global\_illumination/gi/use\_half\_resolution](class_projectsettings.md#class-projectsettings-property-rendering-global-illumination-gi-use-half-resolution) in the Project Settings.

**Note:** Meshes should have sufficiently thick walls to avoid light leaks (avoid one-sided walls). For interior levels, enclose your level geometry in a sufficiently large box and bridge the loops to close the mesh.

* * *

[float](class_float.md#class-float) **sdfgi\_energy** = `1.0` [🔗](#class-environment-property-sdfgi-energy)

- void **set\_sdfgi\_energy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sdfgi\_energy**()


The energy multiplier to use for SDFGI. Higher values will result in brighter indirect lighting and reflections. See also [sdfgi\_bounce\_feedback](#class-environment-property-sdfgi-bounce-feedback).

* * *

[float](class_float.md#class-float) **sdfgi\_max\_distance** = `204.8` [🔗](#class-environment-property-sdfgi-max-distance)

- void **set\_sdfgi\_max\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sdfgi\_max\_distance**()


The maximum distance at which SDFGI is visible. Beyond this distance, environment lighting or other sources of GI such as [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe) will be used as a fallback.

**Note:** This property is linked to [sdfgi\_min\_cell\_size](#class-environment-property-sdfgi-min-cell-size) and [sdfgi\_cascade0\_distance](#class-environment-property-sdfgi-cascade0-distance). Changing its value will automatically change those properties as well.

* * *

[float](class_float.md#class-float) **sdfgi\_min\_cell\_size** = `0.2` [🔗](#class-environment-property-sdfgi-min-cell-size)

- void **set\_sdfgi\_min\_cell\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sdfgi\_min\_cell\_size**()


The cell size to use for the closest SDFGI cascade (in 3D units). Lower values allow SDFGI to be more precise up close, at the cost of making SDFGI updates more demanding. This can cause stuttering when the camera moves fast. Higher values allow SDFGI to cover more ground, while also reducing the performance impact of SDFGI updates.

**Note:** This property is linked to [sdfgi\_max\_distance](#class-environment-property-sdfgi-max-distance) and [sdfgi\_cascade0\_distance](#class-environment-property-sdfgi-cascade0-distance). Changing its value will automatically change those properties as well.

* * *

[float](class_float.md#class-float) **sdfgi\_normal\_bias** = `1.1` [🔗](#class-environment-property-sdfgi-normal-bias)

- void **set\_sdfgi\_normal\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sdfgi\_normal\_bias**()


The normal bias to use for SDFGI probes. Increasing this value can reduce visible streaking artifacts on sloped surfaces, at the cost of increased light leaking.

* * *

[float](class_float.md#class-float) **sdfgi\_probe\_bias** = `1.1` [🔗](#class-environment-property-sdfgi-probe-bias)

- void **set\_sdfgi\_probe\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sdfgi\_probe\_bias**()


The constant bias to use for SDFGI probes. Increasing this value can reduce visible streaking artifacts on sloped surfaces, at the cost of increased light leaking.

* * *

[bool](class_bool.md#class-bool) **sdfgi\_read\_sky\_light** = `true` [🔗](#class-environment-property-sdfgi-read-sky-light)

- void **set\_sdfgi\_read\_sky\_light**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_sdfgi\_reading\_sky\_light**()


If `true`, SDFGI takes the environment lighting into account. This should be set to `false` for interior scenes.

* * *

[bool](class_bool.md#class-bool) **sdfgi\_use\_occlusion** = `false` [🔗](#class-environment-property-sdfgi-use-occlusion)

- void **set\_sdfgi\_use\_occlusion**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_sdfgi\_using\_occlusion**()


If `true`, SDFGI uses an occlusion detection approach to reduce light leaking. Occlusion may however introduce dark blotches in certain spots, which may be undesired in mostly outdoor scenes. [sdfgi\_use\_occlusion](#class-environment-property-sdfgi-use-occlusion) has a performance impact and should only be enabled when needed.

* * *

[SDFGIYScale](#enum-environment-sdfgiyscale) **sdfgi\_y\_scale** = `1` [🔗](#class-environment-property-sdfgi-y-scale)

- void **set\_sdfgi\_y\_scale**(value: [SDFGIYScale](#enum-environment-sdfgiyscale))

- [SDFGIYScale](#enum-environment-sdfgiyscale) **get\_sdfgi\_y\_scale**()


The Y scale to use for SDFGI cells. Lower values will result in SDFGI cells being packed together more closely on the Y axis. This is used to balance between quality and covering a lot of vertical ground. [sdfgi\_y\_scale](#class-environment-property-sdfgi-y-scale) should be set depending on how vertical your scene is (and how fast your camera may move on the Y axis).

* * *

[Sky](class_sky.md#class-sky) **sky** [🔗](#class-environment-property-sky)

- void **set\_sky**(value: [Sky](class_sky.md#class-sky))

- [Sky](class_sky.md#class-sky) **get\_sky**()


The [Sky](class_sky.md#class-sky) resource used for this **Environment**.

* * *

[float](class_float.md#class-float) **sky\_custom\_fov** = `0.0` [🔗](#class-environment-property-sky-custom-fov)

- void **set\_sky\_custom\_fov**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sky\_custom\_fov**()


If set to a value greater than `0.0`, overrides the field of view to use for sky rendering. If set to `0.0`, the same FOV as the current [Camera3D](class_camera3d.md#class-camera3d) is used for sky rendering.

* * *

[Vector3](class_vector3.md#class-vector3) **sky\_rotation** = `Vector3(0, 0, 0)` [🔗](#class-environment-property-sky-rotation)

- void **set\_sky\_rotation**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_sky\_rotation**()


The rotation to use for sky rendering.

* * *

[float](class_float.md#class-float) **ssao\_ao\_channel\_affect** = `0.0` [🔗](#class-environment-property-ssao-ao-channel-affect)

- void **set\_ssao\_ao\_channel\_affect**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssao\_ao\_channel\_affect**()


The screen-space ambient occlusion intensity on materials that have an AO texture defined. Values higher than `0` will make the SSAO effect visible in areas darkened by AO textures.

* * *

[float](class_float.md#class-float) **ssao\_detail** = `0.5` [🔗](#class-environment-property-ssao-detail)

- void **set\_ssao\_detail**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssao\_detail**()


Sets the strength of the additional level of detail for the screen-space ambient occlusion effect. A high value makes the detail pass more prominent, but it may contribute to aliasing in your final image.

* * *

[bool](class_bool.md#class-bool) **ssao\_enabled** = `false` [🔗](#class-environment-property-ssao-enabled)

- void **set\_ssao\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ssao\_enabled**()


If `true`, the screen-space ambient occlusion effect is enabled. This darkens objects' corners and cavities to simulate ambient light not reaching the entire object as in real life. This works well for small, dynamic objects, but baked lighting or ambient occlusion textures will do a better job at displaying ambient occlusion on large static objects. Godot uses a form of SSAO called Adaptive Screen Space Ambient Occlusion which is itself a form of Horizon Based Ambient Occlusion.

**Note:** SSAO is only supported in the Forward+ rendering method, not Mobile or Compatibility.

* * *

[float](class_float.md#class-float) **ssao\_horizon** = `0.06` [🔗](#class-environment-property-ssao-horizon)

- void **set\_ssao\_horizon**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssao\_horizon**()


The threshold for considering whether a given point on a surface is occluded or not represented as an angle from the horizon mapped into the `0.0-1.0` range. A value of `1.0` results in no occlusion.

* * *

[float](class_float.md#class-float) **ssao\_intensity** = `2.0` [🔗](#class-environment-property-ssao-intensity)

- void **set\_ssao\_intensity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssao\_intensity**()


The primary screen-space ambient occlusion intensity. Acts as a multiplier for the screen-space ambient occlusion effect. A higher value results in darker occlusion.

* * *

[float](class_float.md#class-float) **ssao\_light\_affect** = `0.0` [🔗](#class-environment-property-ssao-light-affect)

- void **set\_ssao\_direct\_light\_affect**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssao\_direct\_light\_affect**()


The screen-space ambient occlusion intensity in direct light. In real life, ambient occlusion only applies to indirect light, which means its effects can't be seen in direct light. Values higher than `0` will make the SSAO effect visible in direct light.

* * *

[float](class_float.md#class-float) **ssao\_power** = `1.5` [🔗](#class-environment-property-ssao-power)

- void **set\_ssao\_power**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssao\_power**()


The distribution of occlusion. A higher value results in darker occlusion, similar to [ssao\_intensity](#class-environment-property-ssao-intensity), but with a sharper falloff.

* * *

[float](class_float.md#class-float) **ssao\_radius** = `1.0` [🔗](#class-environment-property-ssao-radius)

- void **set\_ssao\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssao\_radius**()


The distance at which objects can occlude each other when calculating screen-space ambient occlusion. Higher values will result in occlusion over a greater distance at the cost of performance and quality.

* * *

[float](class_float.md#class-float) **ssao\_sharpness** = `0.98` [🔗](#class-environment-property-ssao-sharpness)

- void **set\_ssao\_sharpness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssao\_sharpness**()


The amount that the screen-space ambient occlusion effect is allowed to blur over the edges of objects. Setting too high will result in aliasing around the edges of objects. Setting too low will make object edges appear blurry.

* * *

[bool](class_bool.md#class-bool) **ssil\_enabled** = `false` [🔗](#class-environment-property-ssil-enabled)

- void **set\_ssil\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ssil\_enabled**()


If `true`, the screen-space indirect lighting effect is enabled. Screen space indirect lighting is a form of indirect lighting that allows diffuse light to bounce between nearby objects. Screen-space indirect lighting works very similarly to screen-space ambient occlusion, in that it only affects a limited range. It is intended to be used along with a form of proper global illumination like SDFGI or [VoxelGI](class_voxelgi.md#class-voxelgi). Screen-space indirect lighting is not affected by individual light's [Light3D.light\_indirect\_energy](class_light3d.md#class-light3d-property-light-indirect-energy).

**Note:** SSIL is only supported in the Forward+ rendering method, not Mobile or Compatibility.

* * *

[float](class_float.md#class-float) **ssil\_intensity** = `1.0` [🔗](#class-environment-property-ssil-intensity)

- void **set\_ssil\_intensity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssil\_intensity**()


The brightness multiplier for the screen-space indirect lighting effect. A higher value will result in brighter light.

* * *

[float](class_float.md#class-float) **ssil\_normal\_rejection** = `1.0` [🔗](#class-environment-property-ssil-normal-rejection)

- void **set\_ssil\_normal\_rejection**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssil\_normal\_rejection**()


Amount of normal rejection used when calculating screen-space indirect lighting. Normal rejection uses the normal of a given sample point to reject samples that are facing away from the current pixel. Normal rejection is necessary to avoid light leaking when only one side of an object is illuminated. However, normal rejection can be disabled if light leaking is desirable, such as when the scene mostly contains emissive objects that emit light from faces that cannot be seen from the camera.

* * *

[float](class_float.md#class-float) **ssil\_radius** = `5.0` [🔗](#class-environment-property-ssil-radius)

- void **set\_ssil\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssil\_radius**()


The distance that bounced lighting can travel when using the screen space indirect lighting effect. A larger value will result in light bouncing further in a scene, but may result in under-sampling artifacts which look like long spikes surrounding light sources.

* * *

[float](class_float.md#class-float) **ssil\_sharpness** = `0.98` [🔗](#class-environment-property-ssil-sharpness)

- void **set\_ssil\_sharpness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssil\_sharpness**()


The amount that the screen-space indirect lighting effect is allowed to blur over the edges of objects. Setting too high will result in aliasing around the edges of objects. Setting too low will make object edges appear blurry.

* * *

[float](class_float.md#class-float) **ssr\_depth\_tolerance** = `0.2` [🔗](#class-environment-property-ssr-depth-tolerance)

- void **set\_ssr\_depth\_tolerance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssr\_depth\_tolerance**()


The depth tolerance for screen-space reflections.

* * *

[bool](class_bool.md#class-bool) **ssr\_enabled** = `false` [🔗](#class-environment-property-ssr-enabled)

- void **set\_ssr\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ssr\_enabled**()


If `true`, screen-space reflections are enabled. Screen-space reflections are more accurate than reflections from [VoxelGI](class_voxelgi.md#class-voxelgi) s or [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe) s, but are slower and can't reflect surfaces occluded by others.

**Note:** SSR is only supported in the Forward+ rendering method, not Mobile or Compatibility.

**Note:** SSR is not supported on viewports that have a transparent background (where [Viewport.transparent\_bg](class_viewport.md#class-viewport-property-transparent-bg) is `true`).

* * *

[float](class_float.md#class-float) **ssr\_fade\_in** = `0.15` [🔗](#class-environment-property-ssr-fade-in)

- void **set\_ssr\_fade\_in**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssr\_fade\_in**()


The fade-in distance for screen-space reflections. Affects the area from the reflected material to the screen-space reflection. Only positive values are valid (negative values will be clamped to `0.0`).

* * *

[float](class_float.md#class-float) **ssr\_fade\_out** = `2.0` [🔗](#class-environment-property-ssr-fade-out)

- void **set\_ssr\_fade\_out**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ssr\_fade\_out**()


The fade-out distance for screen-space reflections. Affects the area from the screen-space reflection to the "global" reflection. Only positive values are valid (negative values will be clamped to `0.0`).

* * *

[int](class_int.md#class-int) **ssr\_max\_steps** = `64` [🔗](#class-environment-property-ssr-max-steps)

- void **set\_ssr\_max\_steps**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_ssr\_max\_steps**()


The maximum number of steps for screen-space reflections. Higher values are slower.

* * *

[float](class_float.md#class-float) **tonemap\_exposure** = `1.0` [🔗](#class-environment-property-tonemap-exposure)

- void **set\_tonemap\_exposure**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_tonemap\_exposure**()


Adjusts the brightness of values before they are provided to the tonemapper. Higher [tonemap\_exposure](#class-environment-property-tonemap-exposure) values result in a brighter image. See also [tonemap\_white](#class-environment-property-tonemap-white).

**Note:** Values provided to the tonemapper will also be multiplied by `2.0` and `1.8` for [TONE\_MAPPER\_FILMIC](#class-environment-constant-tone-mapper-filmic) and [TONE\_MAPPER\_ACES](#class-environment-constant-tone-mapper-aces) respectively to produce a similar apparent brightness as [TONE\_MAPPER\_LINEAR](#class-environment-constant-tone-mapper-linear).

* * *

[ToneMapper](#enum-environment-tonemapper) **tonemap\_mode** = `0` [🔗](#class-environment-property-tonemap-mode)

- void **set\_tonemapper**(value: [ToneMapper](#enum-environment-tonemapper))

- [ToneMapper](#enum-environment-tonemapper) **get\_tonemapper**()


The tonemapping mode to use. Tonemapping is the process that "converts" HDR values to be suitable for rendering on an LDR display. (Godot doesn't support rendering on HDR displays yet.)

* * *

[float](class_float.md#class-float) **tonemap\_white** = `1.0` [🔗](#class-environment-property-tonemap-white)

- void **set\_tonemap\_white**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_tonemap\_white**()


The white reference value for tonemapping, which indicates where bright white is located in the scale of values provided to the tonemapper. For photorealistic lighting, recommended values are between `6.0` and `8.0`. Higher values result in less blown out highlights, but may make the scene appear lower contrast. See also [tonemap\_exposure](#class-environment-property-tonemap-exposure).

**Note:** [tonemap\_white](#class-environment-property-tonemap-white) is ignored when using [TONE\_MAPPER\_LINEAR](#class-environment-constant-tone-mapper-linear) or [TONE\_MAPPER\_AGX](#class-environment-constant-tone-mapper-agx).

* * *

[Color](class_color.md#class-color) **volumetric\_fog\_albedo** = `Color(1, 1, 1, 1)` [🔗](#class-environment-property-volumetric-fog-albedo)

- void **set\_volumetric\_fog\_albedo**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_volumetric\_fog\_albedo**()


The [Color](class_color.md#class-color) of the volumetric fog when interacting with lights. Mist and fog have an albedo close to `Color(1, 1, 1, 1)` while smoke has a darker albedo.

* * *

[float](class_float.md#class-float) **volumetric\_fog\_ambient\_inject** = `0.0` [🔗](#class-environment-property-volumetric-fog-ambient-inject)

- void **set\_volumetric\_fog\_ambient\_inject**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volumetric\_fog\_ambient\_inject**()


Scales the strength of ambient light used in the volumetric fog. A value of `0.0` means that ambient light will not impact the volumetric fog. [volumetric\_fog\_ambient\_inject](#class-environment-property-volumetric-fog-ambient-inject) has a small performance cost when set above `0.0`.

**Note:** This has no visible effect if [volumetric\_fog\_density](#class-environment-property-volumetric-fog-density) is `0.0` or if [volumetric\_fog\_albedo](#class-environment-property-volumetric-fog-albedo) is a fully black color.

* * *

[float](class_float.md#class-float) **volumetric\_fog\_anisotropy** = `0.2` [🔗](#class-environment-property-volumetric-fog-anisotropy)

- void **set\_volumetric\_fog\_anisotropy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volumetric\_fog\_anisotropy**()


The direction of scattered light as it goes through the volumetric fog. A value close to `1.0` means almost all light is scattered forward. A value close to `0.0` means light is scattered equally in all directions. A value close to `-1.0` means light is scattered mostly backward. Fog and mist scatter light slightly forward, while smoke scatters light equally in all directions.

* * *

[float](class_float.md#class-float) **volumetric\_fog\_density** = `0.05` [🔗](#class-environment-property-volumetric-fog-density)

- void **set\_volumetric\_fog\_density**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volumetric\_fog\_density**()


The base _exponential_ density of the volumetric fog. Set this to the lowest density you want to have globally. [FogVolume](class_fogvolume.md#class-fogvolume) s can be used to add to or subtract from this density in specific areas. Fog rendering is exponential as in real life.

A value of `0.0` disables global volumetric fog while allowing [FogVolume](class_fogvolume.md#class-fogvolume) s to display volumetric fog in specific areas.

To make volumetric fog work as a volumetric _lighting_ solution, set [volumetric\_fog\_density](#class-environment-property-volumetric-fog-density) to the lowest non-zero value ( `0.0001`) then increase lights' [Light3D.light\_volumetric\_fog\_energy](class_light3d.md#class-light3d-property-light-volumetric-fog-energy) to values between `10000` and `100000` to compensate for the very low density.

* * *

[float](class_float.md#class-float) **volumetric\_fog\_detail\_spread** = `2.0` [🔗](#class-environment-property-volumetric-fog-detail-spread)

- void **set\_volumetric\_fog\_detail\_spread**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volumetric\_fog\_detail\_spread**()


The distribution of size down the length of the froxel buffer. A higher value compresses the froxels closer to the camera and places more detail closer to the camera.

* * *

[Color](class_color.md#class-color) **volumetric\_fog\_emission** = `Color(0, 0, 0, 1)` [🔗](#class-environment-property-volumetric-fog-emission)

- void **set\_volumetric\_fog\_emission**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_volumetric\_fog\_emission**()


The emitted light from the volumetric fog. Even with emission, volumetric fog will not cast light onto other surfaces. Emission is useful to establish an ambient color. As the volumetric fog effect uses single-scattering only, fog tends to need a little bit of emission to soften the harsh shadows.

* * *

[float](class_float.md#class-float) **volumetric\_fog\_emission\_energy** = `1.0` [🔗](#class-environment-property-volumetric-fog-emission-energy)

- void **set\_volumetric\_fog\_emission\_energy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volumetric\_fog\_emission\_energy**()


The brightness of the emitted light from the volumetric fog.

* * *

[bool](class_bool.md#class-bool) **volumetric\_fog\_enabled** = `false` [🔗](#class-environment-property-volumetric-fog-enabled)

- void **set\_volumetric\_fog\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_volumetric\_fog\_enabled**()


Enables the volumetric fog effect. Volumetric fog uses a screen-aligned froxel buffer to calculate accurate volumetric scattering in the short to medium range. Volumetric fog interacts with [FogVolume](class_fogvolume.md#class-fogvolume) s and lights to calculate localized and global fog. Volumetric fog uses a PBR single-scattering model based on extinction, scattering, and emission which it exposes to users as density, albedo, and emission.

**Note:** Volumetric fog is only supported in the Forward+ rendering method, not Mobile or Compatibility.

* * *

[float](class_float.md#class-float) **volumetric\_fog\_gi\_inject** = `1.0` [🔗](#class-environment-property-volumetric-fog-gi-inject)

- void **set\_volumetric\_fog\_gi\_inject**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volumetric\_fog\_gi\_inject**()


Scales the strength of Global Illumination used in the volumetric fog's albedo color. A value of `0.0` means that Global Illumination will not impact the volumetric fog. [volumetric\_fog\_gi\_inject](#class-environment-property-volumetric-fog-gi-inject) has a small performance cost when set above `0.0`.

**Note:** This has no visible effect if [volumetric\_fog\_density](#class-environment-property-volumetric-fog-density) is `0.0` or if [volumetric\_fog\_albedo](#class-environment-property-volumetric-fog-albedo) is a fully black color.

**Note:** Only [VoxelGI](class_voxelgi.md#class-voxelgi) and SDFGI ( [sdfgi\_enabled](#class-environment-property-sdfgi-enabled)) are taken into account when using [volumetric\_fog\_gi\_inject](#class-environment-property-volumetric-fog-gi-inject). Global illumination from [LightmapGI](class_lightmapgi.md#class-lightmapgi), [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe) and SSIL (see [ssil\_enabled](#class-environment-property-ssil-enabled)) will be ignored by volumetric fog.

* * *

[float](class_float.md#class-float) **volumetric\_fog\_length** = `64.0` [🔗](#class-environment-property-volumetric-fog-length)

- void **set\_volumetric\_fog\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volumetric\_fog\_length**()


The distance over which the volumetric fog is computed. Increase to compute fog over a greater range, decrease to add more detail when a long range is not needed. For best quality fog, keep this as low as possible. See also [ProjectSettings.rendering/environment/volumetric\_fog/volume\_depth](class_projectsettings.md#class-projectsettings-property-rendering-environment-volumetric-fog-volume-depth).

* * *

[float](class_float.md#class-float) **volumetric\_fog\_sky\_affect** = `1.0` [🔗](#class-environment-property-volumetric-fog-sky-affect)

- void **set\_volumetric\_fog\_sky\_affect**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volumetric\_fog\_sky\_affect**()


The factor to use when affecting the sky with volumetric fog. `1.0` means that volumetric fog can fully obscure the sky. Lower values reduce the impact of volumetric fog on sky rendering, with `0.0` not affecting sky rendering at all.

**Note:** [volumetric\_fog\_sky\_affect](#class-environment-property-volumetric-fog-sky-affect) also affects [FogVolume](class_fogvolume.md#class-fogvolume) s, even if [volumetric\_fog\_density](#class-environment-property-volumetric-fog-density) is `0.0`. If you notice [FogVolume](class_fogvolume.md#class-fogvolume) s are disappearing when looking towards the sky, set [volumetric\_fog\_sky\_affect](#class-environment-property-volumetric-fog-sky-affect) to `1.0`.

* * *

[float](class_float.md#class-float) **volumetric\_fog\_temporal\_reprojection\_amount** = `0.9` [🔗](#class-environment-property-volumetric-fog-temporal-reprojection-amount)

- void **set\_volumetric\_fog\_temporal\_reprojection\_amount**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_volumetric\_fog\_temporal\_reprojection\_amount**()


The amount by which to blend the last frame with the current frame. A higher number results in smoother volumetric fog, but makes "ghosting" much worse. A lower value reduces ghosting but can result in the per-frame temporal jitter becoming visible.

* * *

[bool](class_bool.md#class-bool) **volumetric\_fog\_temporal\_reprojection\_enabled** = `true` [🔗](#class-environment-property-volumetric-fog-temporal-reprojection-enabled)

- void **set\_volumetric\_fog\_temporal\_reprojection\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_volumetric\_fog\_temporal\_reprojection\_enabled**()


Enables temporal reprojection in the volumetric fog. Temporal reprojection blends the current frame's volumetric fog with the last frame's volumetric fog to smooth out jagged edges. The performance cost is minimal; however, it leads to moving [FogVolume](class_fogvolume.md#class-fogvolume) s and [Light3D](class_light3d.md#class-light3d) s "ghosting" and leaving a trail behind them. When temporal reprojection is enabled, try to avoid moving [FogVolume](class_fogvolume.md#class-fogvolume) s or [Light3D](class_light3d.md#class-light3d) s too fast. Short-lived dynamic lighting effects should have [Light3D.light\_volumetric\_fog\_energy](class_light3d.md#class-light3d-property-light-volumetric-fog-energy) set to `0.0` to avoid ghosting.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_glow\_level**(idx: [int](class_int.md#class-int)) const [🔗](#class-environment-method-get-glow-level)

Returns the intensity of the glow level `idx`.

* * *

void **set\_glow\_level**(idx: [int](class_int.md#class-int), intensity: [float](class_float.md#class-float)) [🔗](#class-environment-method-set-glow-level)

Sets the intensity of the glow level `idx`. A value above `0.0` enables the level. Each level relies on the previous level. This means that enabling higher glow levels will slow down the glow effect rendering, even if previous levels aren't enabled.

[Previous](class_editorsyntaxhighlighter.md "EditorSyntaxHighlighter") [Next](class_externaltexture.md "ExternalTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorsyntaxhighlighter.md "EditorSyntaxHighlighter") [Next](class_externaltexture.md "ExternalTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).