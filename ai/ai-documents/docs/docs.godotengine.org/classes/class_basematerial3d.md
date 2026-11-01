---
title: BaseMaterial3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_basematerial3d.html
crawled_at: "2026-08-13T10:33:51+12:00"
content_hash: 6231b0098b06574b7a75a8c41c197c1274876d985724e046d229b797b69a2bae
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - BaseMaterial3D

* * *

# BaseMaterial3D

**Inherits:** [Material](class_material.md#class-material) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [ORMMaterial3D](class_ormmaterial3d.md#class-ormmaterial3d), [StandardMaterial3D](class_standardmaterial3d.md#class-standardmaterial3d)

Abstract base class for defining the 3D rendering properties of meshes.

## Description

This class serves as a default material with a wide variety of rendering features and properties without the need to write shader code. See the tutorial below for details.

## Tutorials

- [Standard Material 3D and ORM Material 3D](../tutorials/3d/standard_material_3d.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [albedo\_color](#class-basematerial3d-property-albedo-color) | `Color(1, 1, 1, 1)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [albedo\_texture](#class-basematerial3d-property-albedo-texture) |  |
| [bool](class_bool.md#class-bool) | [albedo\_texture\_force\_srgb](#class-basematerial3d-property-albedo-texture-force-srgb) | `false` |
| [bool](class_bool.md#class-bool) | [albedo\_texture\_msdf](#class-basematerial3d-property-albedo-texture-msdf) | `false` |
| [float](class_float.md#class-float) | [alpha\_antialiasing\_edge](#class-basematerial3d-property-alpha-antialiasing-edge) |  |
| [AlphaAntiAliasing](#enum-basematerial3d-alphaantialiasing) | [alpha\_antialiasing\_mode](#class-basematerial3d-property-alpha-antialiasing-mode) |  |
| [float](class_float.md#class-float) | [alpha\_hash\_scale](#class-basematerial3d-property-alpha-hash-scale) |  |
| [float](class_float.md#class-float) | [alpha\_scissor\_threshold](#class-basematerial3d-property-alpha-scissor-threshold) |  |
| [float](class_float.md#class-float) | [anisotropy](#class-basematerial3d-property-anisotropy) | `0.0` |
| [bool](class_bool.md#class-bool) | [anisotropy\_enabled](#class-basematerial3d-property-anisotropy-enabled) | `false` |
| [Texture2D](class_texture2d.md#class-texture2d) | [anisotropy\_flowmap](#class-basematerial3d-property-anisotropy-flowmap) |  |
| [bool](class_bool.md#class-bool) | [ao\_enabled](#class-basematerial3d-property-ao-enabled) | `false` |
| [float](class_float.md#class-float) | [ao\_light\_affect](#class-basematerial3d-property-ao-light-affect) | `0.0` |
| [bool](class_bool.md#class-bool) | [ao\_on\_uv2](#class-basematerial3d-property-ao-on-uv2) | `false` |
| [Texture2D](class_texture2d.md#class-texture2d) | [ao\_texture](#class-basematerial3d-property-ao-texture) |  |
| [TextureChannel](#enum-basematerial3d-texturechannel) | [ao\_texture\_channel](#class-basematerial3d-property-ao-texture-channel) | `0` |
| [Color](class_color.md#class-color) | [backlight](#class-basematerial3d-property-backlight) | `Color(0, 0, 0, 1)` |
| [bool](class_bool.md#class-bool) | [backlight\_enabled](#class-basematerial3d-property-backlight-enabled) | `false` |
| [Texture2D](class_texture2d.md#class-texture2d) | [backlight\_texture](#class-basematerial3d-property-backlight-texture) |  |
| [bool](class_bool.md#class-bool) | [bent\_normal\_enabled](#class-basematerial3d-property-bent-normal-enabled) | `false` |
| [Texture2D](class_texture2d.md#class-texture2d) | [bent\_normal\_texture](#class-basematerial3d-property-bent-normal-texture) |  |
| [bool](class_bool.md#class-bool) | [billboard\_keep\_scale](#class-basematerial3d-property-billboard-keep-scale) | `false` |
| [BillboardMode](#enum-basematerial3d-billboardmode) | [billboard\_mode](#class-basematerial3d-property-billboard-mode) | `0` |
| [BlendMode](#enum-basematerial3d-blendmode) | [blend\_mode](#class-basematerial3d-property-blend-mode) | `0` |
| [float](class_float.md#class-float) | [clearcoat](#class-basematerial3d-property-clearcoat) | `1.0` |
| [bool](class_bool.md#class-bool) | [clearcoat\_enabled](#class-basematerial3d-property-clearcoat-enabled) | `false` |
| [float](class_float.md#class-float) | [clearcoat\_roughness](#class-basematerial3d-property-clearcoat-roughness) | `0.5` |
| [Texture2D](class_texture2d.md#class-texture2d) | [clearcoat\_texture](#class-basematerial3d-property-clearcoat-texture) |  |
| [CullMode](#enum-basematerial3d-cullmode) | [cull\_mode](#class-basematerial3d-property-cull-mode) | `0` |
| [DepthDrawMode](#enum-basematerial3d-depthdrawmode) | [depth\_draw\_mode](#class-basematerial3d-property-depth-draw-mode) | `0` |
| [DepthTest](#enum-basematerial3d-depthtest) | [depth\_test](#class-basematerial3d-property-depth-test) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [detail\_albedo](#class-basematerial3d-property-detail-albedo) |  |
| [BlendMode](#enum-basematerial3d-blendmode) | [detail\_blend\_mode](#class-basematerial3d-property-detail-blend-mode) | `0` |
| [bool](class_bool.md#class-bool) | [detail\_enabled](#class-basematerial3d-property-detail-enabled) | `false` |
| [Texture2D](class_texture2d.md#class-texture2d) | [detail\_mask](#class-basematerial3d-property-detail-mask) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [detail\_normal](#class-basematerial3d-property-detail-normal) |  |
| [DetailUV](#enum-basematerial3d-detailuv) | [detail\_uv\_layer](#class-basematerial3d-property-detail-uv-layer) | `0` |
| [DiffuseMode](#enum-basematerial3d-diffusemode) | [diffuse\_mode](#class-basematerial3d-property-diffuse-mode) | `0` |
| [bool](class_bool.md#class-bool) | [disable\_ambient\_light](#class-basematerial3d-property-disable-ambient-light) | `false` |
| [bool](class_bool.md#class-bool) | [disable\_fog](#class-basematerial3d-property-disable-fog) | `false` |
| [bool](class_bool.md#class-bool) | [disable\_receive\_shadows](#class-basematerial3d-property-disable-receive-shadows) | `false` |
| [bool](class_bool.md#class-bool) | [disable\_specular\_occlusion](#class-basematerial3d-property-disable-specular-occlusion) | `false` |
| [float](class_float.md#class-float) | [distance\_fade\_max\_distance](#class-basematerial3d-property-distance-fade-max-distance) | `10.0` |
| [float](class_float.md#class-float) | [distance\_fade\_min\_distance](#class-basematerial3d-property-distance-fade-min-distance) | `0.0` |
| [DistanceFadeMode](#enum-basematerial3d-distancefademode) | [distance\_fade\_mode](#class-basematerial3d-property-distance-fade-mode) | `0` |
| [Color](class_color.md#class-color) | [emission](#class-basematerial3d-property-emission) | `Color(0, 0, 0, 1)` |
| [bool](class_bool.md#class-bool) | [emission\_enabled](#class-basematerial3d-property-emission-enabled) | `false` |
| [float](class_float.md#class-float) | [emission\_energy\_multiplier](#class-basematerial3d-property-emission-energy-multiplier) | `1.0` |
| [float](class_float.md#class-float) | [emission\_intensity](#class-basematerial3d-property-emission-intensity) |  |
| [bool](class_bool.md#class-bool) | [emission\_on\_uv2](#class-basematerial3d-property-emission-on-uv2) | `false` |
| [EmissionOperator](#enum-basematerial3d-emissionoperator) | [emission\_operator](#class-basematerial3d-property-emission-operator) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [emission\_texture](#class-basematerial3d-property-emission-texture) |  |
| [bool](class_bool.md#class-bool) | [fixed\_size](#class-basematerial3d-property-fixed-size) | `false` |
| [float](class_float.md#class-float) | [fov\_override](#class-basematerial3d-property-fov-override) | `75.0` |
| [bool](class_bool.md#class-bool) | [grow](#class-basematerial3d-property-grow) | `false` |
| [float](class_float.md#class-float) | [grow\_amount](#class-basematerial3d-property-grow-amount) | `0.0` |
| [bool](class_bool.md#class-bool) | [heightmap\_deep\_parallax](#class-basematerial3d-property-heightmap-deep-parallax) | `false` |
| [bool](class_bool.md#class-bool) | [heightmap\_enabled](#class-basematerial3d-property-heightmap-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [heightmap\_flip\_binormal](#class-basematerial3d-property-heightmap-flip-binormal) | `false` |
| [bool](class_bool.md#class-bool) | [heightmap\_flip\_tangent](#class-basematerial3d-property-heightmap-flip-tangent) | `false` |
| [bool](class_bool.md#class-bool) | [heightmap\_flip\_texture](#class-basematerial3d-property-heightmap-flip-texture) | `false` |
| [int](class_int.md#class-int) | [heightmap\_max\_layers](#class-basematerial3d-property-heightmap-max-layers) |  |
| [int](class_int.md#class-int) | [heightmap\_min\_layers](#class-basematerial3d-property-heightmap-min-layers) |  |
| [float](class_float.md#class-float) | [heightmap\_scale](#class-basematerial3d-property-heightmap-scale) | `5.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [heightmap\_texture](#class-basematerial3d-property-heightmap-texture) |  |
| [float](class_float.md#class-float) | [metallic](#class-basematerial3d-property-metallic) | `0.0` |
| [float](class_float.md#class-float) | [metallic\_specular](#class-basematerial3d-property-metallic-specular) | `0.5` |
| [Texture2D](class_texture2d.md#class-texture2d) | [metallic\_texture](#class-basematerial3d-property-metallic-texture) |  |
| [TextureChannel](#enum-basematerial3d-texturechannel) | [metallic\_texture\_channel](#class-basematerial3d-property-metallic-texture-channel) | `0` |
| [float](class_float.md#class-float) | [msdf\_outline\_size](#class-basematerial3d-property-msdf-outline-size) | `0.0` |
| [float](class_float.md#class-float) | [msdf\_pixel\_range](#class-basematerial3d-property-msdf-pixel-range) | `4.0` |
| [bool](class_bool.md#class-bool) | [no\_depth\_test](#class-basematerial3d-property-no-depth-test) | `false` |
| [bool](class_bool.md#class-bool) | [normal\_enabled](#class-basematerial3d-property-normal-enabled) | `false` |
| [float](class_float.md#class-float) | [normal\_scale](#class-basematerial3d-property-normal-scale) | `1.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [normal\_texture](#class-basematerial3d-property-normal-texture) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [orm\_texture](#class-basematerial3d-property-orm-texture) |  |
| [int](class_int.md#class-int) | [particles\_anim\_h\_frames](#class-basematerial3d-property-particles-anim-h-frames) |  |
| [bool](class_bool.md#class-bool) | [particles\_anim\_loop](#class-basematerial3d-property-particles-anim-loop) |  |
| [int](class_int.md#class-int) | [particles\_anim\_v\_frames](#class-basematerial3d-property-particles-anim-v-frames) |  |
| [float](class_float.md#class-float) | [point\_size](#class-basematerial3d-property-point-size) | `1.0` |
| [float](class_float.md#class-float) | [proximity\_fade\_distance](#class-basematerial3d-property-proximity-fade-distance) | `1.0` |
| [bool](class_bool.md#class-bool) | [proximity\_fade\_enabled](#class-basematerial3d-property-proximity-fade-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [refraction\_enabled](#class-basematerial3d-property-refraction-enabled) | `false` |
| [float](class_float.md#class-float) | [refraction\_scale](#class-basematerial3d-property-refraction-scale) | `0.05` |
| [Texture2D](class_texture2d.md#class-texture2d) | [refraction\_texture](#class-basematerial3d-property-refraction-texture) |  |
| [TextureChannel](#enum-basematerial3d-texturechannel) | [refraction\_texture\_channel](#class-basematerial3d-property-refraction-texture-channel) | `0` |
| [float](class_float.md#class-float) | [rim](#class-basematerial3d-property-rim) | `1.0` |
| [bool](class_bool.md#class-bool) | [rim\_enabled](#class-basematerial3d-property-rim-enabled) | `false` |
| [Texture2D](class_texture2d.md#class-texture2d) | [rim\_texture](#class-basematerial3d-property-rim-texture) |  |
| [float](class_float.md#class-float) | [rim\_tint](#class-basematerial3d-property-rim-tint) | `0.5` |
| [float](class_float.md#class-float) | [roughness](#class-basematerial3d-property-roughness) | `1.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [roughness\_texture](#class-basematerial3d-property-roughness-texture) |  |
| [TextureChannel](#enum-basematerial3d-texturechannel) | [roughness\_texture\_channel](#class-basematerial3d-property-roughness-texture-channel) | `0` |
| [ShadingMode](#enum-basematerial3d-shadingmode) | [shading\_mode](#class-basematerial3d-property-shading-mode) | `1` |
| [bool](class_bool.md#class-bool) | [shadow\_to\_opacity](#class-basematerial3d-property-shadow-to-opacity) | `false` |
| [SpecularMode](#enum-basematerial3d-specularmode) | [specular\_mode](#class-basematerial3d-property-specular-mode) | `0` |
| [Color](class_color.md#class-color) | [stencil\_color](#class-basematerial3d-property-stencil-color) | `Color(0, 0, 0, 1)` |
| [StencilCompare](#enum-basematerial3d-stencilcompare) | [stencil\_compare](#class-basematerial3d-property-stencil-compare) | `0` |
| [int](class_int.md#class-int) | [stencil\_flags](#class-basematerial3d-property-stencil-flags) | `0` |
| [StencilMode](#enum-basematerial3d-stencilmode) | [stencil\_mode](#class-basematerial3d-property-stencil-mode) | `0` |
| [float](class_float.md#class-float) | [stencil\_outline\_thickness](#class-basematerial3d-property-stencil-outline-thickness) | `0.01` |
| [int](class_int.md#class-int) | [stencil\_reference](#class-basematerial3d-property-stencil-reference) | `1` |
| [bool](class_bool.md#class-bool) | [subsurf\_scatter\_enabled](#class-basematerial3d-property-subsurf-scatter-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [subsurf\_scatter\_skin\_mode](#class-basematerial3d-property-subsurf-scatter-skin-mode) | `false` |
| [float](class_float.md#class-float) | [subsurf\_scatter\_strength](#class-basematerial3d-property-subsurf-scatter-strength) | `0.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [subsurf\_scatter\_texture](#class-basematerial3d-property-subsurf-scatter-texture) |  |
| [float](class_float.md#class-float) | [subsurf\_scatter\_transmittance\_boost](#class-basematerial3d-property-subsurf-scatter-transmittance-boost) | `0.0` |
| [Color](class_color.md#class-color) | [subsurf\_scatter\_transmittance\_color](#class-basematerial3d-property-subsurf-scatter-transmittance-color) | `Color(1, 1, 1, 1)` |
| [float](class_float.md#class-float) | [subsurf\_scatter\_transmittance\_depth](#class-basematerial3d-property-subsurf-scatter-transmittance-depth) | `0.1` |
| [bool](class_bool.md#class-bool) | [subsurf\_scatter\_transmittance\_enabled](#class-basematerial3d-property-subsurf-scatter-transmittance-enabled) | `false` |
| [Texture2D](class_texture2d.md#class-texture2d) | [subsurf\_scatter\_transmittance\_texture](#class-basematerial3d-property-subsurf-scatter-transmittance-texture) |  |
| [TextureFilter](#enum-basematerial3d-texturefilter) | [texture\_filter](#class-basematerial3d-property-texture-filter) | `3` |
| [bool](class_bool.md#class-bool) | [texture\_repeat](#class-basematerial3d-property-texture-repeat) | `true` |
| [Transparency](#enum-basematerial3d-transparency) | [transparency](#class-basematerial3d-property-transparency) | `0` |
| [bool](class_bool.md#class-bool) | [use\_fov\_override](#class-basematerial3d-property-use-fov-override) | `false` |
| [bool](class_bool.md#class-bool) | [use\_particle\_trails](#class-basematerial3d-property-use-particle-trails) | `false` |
| [bool](class_bool.md#class-bool) | [use\_point\_size](#class-basematerial3d-property-use-point-size) | `false` |
| [bool](class_bool.md#class-bool) | [use\_z\_clip\_scale](#class-basematerial3d-property-use-z-clip-scale) | `false` |
| [Vector3](class_vector3.md#class-vector3) | [uv1\_offset](#class-basematerial3d-property-uv1-offset) | `Vector3(0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [uv1\_scale](#class-basematerial3d-property-uv1-scale) | `Vector3(1, 1, 1)` |
| [bool](class_bool.md#class-bool) | [uv1\_triplanar](#class-basematerial3d-property-uv1-triplanar) | `false` |
| [float](class_float.md#class-float) | [uv1\_triplanar\_sharpness](#class-basematerial3d-property-uv1-triplanar-sharpness) | `1.0` |
| [bool](class_bool.md#class-bool) | [uv1\_world\_triplanar](#class-basematerial3d-property-uv1-world-triplanar) | `false` |
| [Vector3](class_vector3.md#class-vector3) | [uv2\_offset](#class-basematerial3d-property-uv2-offset) | `Vector3(0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [uv2\_scale](#class-basematerial3d-property-uv2-scale) | `Vector3(1, 1, 1)` |
| [bool](class_bool.md#class-bool) | [uv2\_triplanar](#class-basematerial3d-property-uv2-triplanar) | `false` |
| [float](class_float.md#class-float) | [uv2\_triplanar\_sharpness](#class-basematerial3d-property-uv2-triplanar-sharpness) | `1.0` |
| [bool](class_bool.md#class-bool) | [uv2\_world\_triplanar](#class-basematerial3d-property-uv2-world-triplanar) | `false` |
| [bool](class_bool.md#class-bool) | [vertex\_color\_is\_srgb](#class-basematerial3d-property-vertex-color-is-srgb) | `false` |
| [bool](class_bool.md#class-bool) | [vertex\_color\_use\_as\_albedo](#class-basematerial3d-property-vertex-color-use-as-albedo) | `false` |
| [float](class_float.md#class-float) | [z\_clip\_scale](#class-basematerial3d-property-z-clip-scale) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [get\_feature](#class-basematerial3d-method-get-feature)(feature: [Feature](#enum-basematerial3d-feature)) const |
| [bool](class_bool.md#class-bool) | [get\_flag](#class-basematerial3d-method-get-flag)(flag: [Flags](#enum-basematerial3d-flags)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_texture](#class-basematerial3d-method-get-texture)(param: [TextureParam](#enum-basematerial3d-textureparam)) const |
| void | [set\_feature](#class-basematerial3d-method-set-feature)(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_flag](#class-basematerial3d-method-set-flag)(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_texture](#class-basematerial3d-method-set-texture)(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d)) |

* * *

## Enumerations

enum **TextureParam**: [🔗](#enum-basematerial3d-textureparam)

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_ALBEDO** = `0`

Texture specifying per-pixel color.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_METALLIC** = `1`

Texture specifying per-pixel metallic value.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_ROUGHNESS** = `2`

Texture specifying per-pixel roughness value.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_EMISSION** = `3`

Texture specifying per-pixel emission color.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_NORMAL** = `4`

Texture specifying per-pixel normal vector.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_BENT\_NORMAL** = `18`

Texture specifying per-pixel bent normal vector.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_RIM** = `5`

Texture specifying per-pixel rim value.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_CLEARCOAT** = `6`

Texture specifying per-pixel clearcoat value.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_FLOWMAP** = `7`

Texture specifying per-pixel flowmap direction for use with [anisotropy](#class-basematerial3d-property-anisotropy).

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_AMBIENT\_OCCLUSION** = `8`

Texture specifying per-pixel ambient occlusion value.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_HEIGHTMAP** = `9`

Texture specifying per-pixel height.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_SUBSURFACE\_SCATTERING** = `10`

Texture specifying per-pixel subsurface scattering.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_SUBSURFACE\_TRANSMITTANCE** = `11`

Texture specifying per-pixel transmittance for subsurface scattering.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_BACKLIGHT** = `12`

Texture specifying per-pixel backlight color.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_REFRACTION** = `13`

Texture specifying per-pixel refraction strength.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_DETAIL\_MASK** = `14`

Texture specifying per-pixel detail mask blending value.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_DETAIL\_ALBEDO** = `15`

Texture specifying per-pixel detail color.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_DETAIL\_NORMAL** = `16`

Texture specifying per-pixel detail normal.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_ORM** = `17`

Texture holding ambient occlusion, roughness, and metallic.

[TextureParam](#enum-basematerial3d-textureparam) **TEXTURE\_MAX** = `19`

Represents the size of the [TextureParam](#enum-basematerial3d-textureparam) enum.

* * *

enum **TextureFilter**: [🔗](#enum-basematerial3d-texturefilter)

[TextureFilter](#enum-basematerial3d-texturefilter) **TEXTURE\_FILTER\_NEAREST** = `0`

The texture filter reads from the nearest pixel only. This makes the texture look pixelated from up close, and grainy from a distance (due to mipmaps not being sampled).

[TextureFilter](#enum-basematerial3d-texturefilter) **TEXTURE\_FILTER\_LINEAR** = `1`

The texture filter blends between the nearest 4 pixels. This makes the texture look smooth from up close, and grainy from a distance (due to mipmaps not being sampled).

[TextureFilter](#enum-basematerial3d-texturefilter) **TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS** = `2`

The texture filter reads from the nearest pixel and blends between the nearest 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`). This makes the texture look pixelated from up close, and smooth from a distance.

[TextureFilter](#enum-basematerial3d-texturefilter) **TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS** = `3`

The texture filter blends between the nearest 4 pixels and between the nearest 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`). This makes the texture look smooth from up close, and smooth from a distance.

[TextureFilter](#enum-basematerial3d-texturefilter) **TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS\_ANISOTROPIC** = `4`

The texture filter reads from the nearest pixel and blends between 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`) based on the angle between the surface and the camera view. This makes the texture look pixelated from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

[TextureFilter](#enum-basematerial3d-texturefilter) **TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS\_ANISOTROPIC** = `5`

The texture filter blends between the nearest 4 pixels and blends between 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`) based on the angle between the surface and the camera view. This makes the texture look smooth from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

[TextureFilter](#enum-basematerial3d-texturefilter) **TEXTURE\_FILTER\_MAX** = `6`

Represents the size of the [TextureFilter](#enum-basematerial3d-texturefilter) enum.

* * *

enum **DetailUV**: [🔗](#enum-basematerial3d-detailuv)

[DetailUV](#enum-basematerial3d-detailuv) **DETAIL\_UV\_1** = `0`

Use `UV` with the detail texture.

[DetailUV](#enum-basematerial3d-detailuv) **DETAIL\_UV\_2** = `1`

Use `UV2` with the detail texture.

* * *

enum **Transparency**: [🔗](#enum-basematerial3d-transparency)

[Transparency](#enum-basematerial3d-transparency) **TRANSPARENCY\_DISABLED** = `0`

The material will not use transparency. This is the fastest to render.

[Transparency](#enum-basematerial3d-transparency) **TRANSPARENCY\_ALPHA** = `1`

The material will use the texture's alpha values for transparency. This is the slowest to render, and disables shadow casting.

[Transparency](#enum-basematerial3d-transparency) **TRANSPARENCY\_ALPHA\_SCISSOR** = `2`

The material will cut off all values below a threshold, the rest will remain opaque. The opaque portions will be rendered in the depth prepass. This is faster to render than alpha blending, but slower than opaque rendering. This also supports casting shadows.

[Transparency](#enum-basematerial3d-transparency) **TRANSPARENCY\_ALPHA\_HASH** = `3`

The material will cut off all values below a spatially-deterministic threshold, the rest will remain opaque. This is faster to render than alpha blending, but slower than opaque rendering. This also supports casting shadows. Alpha hashing is suited for hair rendering.

[Transparency](#enum-basematerial3d-transparency) **TRANSPARENCY\_ALPHA\_DEPTH\_PRE\_PASS** = `4`

The material will use the texture's alpha value for transparency, but will discard fragments with an alpha of less than 0.99 during the depth prepass and fragments with an alpha less than 0.1 during the shadow pass. This also supports casting shadows.

[Transparency](#enum-basematerial3d-transparency) **TRANSPARENCY\_MAX** = `5`

Represents the size of the [Transparency](#enum-basematerial3d-transparency) enum.

* * *

enum **ShadingMode**: [🔗](#enum-basematerial3d-shadingmode)

[ShadingMode](#enum-basematerial3d-shadingmode) **SHADING\_MODE\_UNSHADED** = `0`

The object will not receive shadows. This is the fastest to render, but it disables all interactions with lights.

[ShadingMode](#enum-basematerial3d-shadingmode) **SHADING\_MODE\_PER\_PIXEL** = `1`

The object will be shaded per pixel. Useful for realistic shading effects.

[ShadingMode](#enum-basematerial3d-shadingmode) **SHADING\_MODE\_PER\_VERTEX** = `2`

The object will be shaded per vertex. Useful when you want cheaper shaders and do not care about visual quality.

[ShadingMode](#enum-basematerial3d-shadingmode) **SHADING\_MODE\_MAX** = `3`

Represents the size of the [ShadingMode](#enum-basematerial3d-shadingmode) enum.

* * *

enum **Feature**: [🔗](#enum-basematerial3d-feature)

[Feature](#enum-basematerial3d-feature) **FEATURE\_EMISSION** = `0`

Constant for setting [emission\_enabled](#class-basematerial3d-property-emission-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_NORMAL\_MAPPING** = `1`

Constant for setting [normal\_enabled](#class-basematerial3d-property-normal-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_RIM** = `2`

Constant for setting [rim\_enabled](#class-basematerial3d-property-rim-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_CLEARCOAT** = `3`

Constant for setting [clearcoat\_enabled](#class-basematerial3d-property-clearcoat-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_ANISOTROPY** = `4`

Constant for setting [anisotropy\_enabled](#class-basematerial3d-property-anisotropy-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_AMBIENT\_OCCLUSION** = `5`

Constant for setting [ao\_enabled](#class-basematerial3d-property-ao-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_HEIGHT\_MAPPING** = `6`

Constant for setting [heightmap\_enabled](#class-basematerial3d-property-heightmap-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_SUBSURFACE\_SCATTERING** = `7`

Constant for setting [subsurf\_scatter\_enabled](#class-basematerial3d-property-subsurf-scatter-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_SUBSURFACE\_TRANSMITTANCE** = `8`

Constant for setting [subsurf\_scatter\_transmittance\_enabled](#class-basematerial3d-property-subsurf-scatter-transmittance-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_BACKLIGHT** = `9`

Constant for setting [backlight\_enabled](#class-basematerial3d-property-backlight-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_REFRACTION** = `10`

Constant for setting [refraction\_enabled](#class-basematerial3d-property-refraction-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_DETAIL** = `11`

Constant for setting [detail\_enabled](#class-basematerial3d-property-detail-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_BENT\_NORMAL\_MAPPING** = `12`

Constant for setting [bent\_normal\_enabled](#class-basematerial3d-property-bent-normal-enabled).

[Feature](#enum-basematerial3d-feature) **FEATURE\_MAX** = `13`

Represents the size of the [Feature](#enum-basematerial3d-feature) enum.

* * *

enum **BlendMode**: [🔗](#enum-basematerial3d-blendmode)

[BlendMode](#enum-basematerial3d-blendmode) **BLEND\_MODE\_MIX** = `0`

Default blend mode. The color of the object is blended over the background based on the object's alpha value.

[BlendMode](#enum-basematerial3d-blendmode) **BLEND\_MODE\_ADD** = `1`

The color of the object is added to the background.

[BlendMode](#enum-basematerial3d-blendmode) **BLEND\_MODE\_SUB** = `2`

The color of the object is subtracted from the background.

[BlendMode](#enum-basematerial3d-blendmode) **BLEND\_MODE\_MUL** = `3`

The color of the object is multiplied by the background.

[BlendMode](#enum-basematerial3d-blendmode) **BLEND\_MODE\_PREMULT\_ALPHA** = `4`

The color of the object is added to the background and the alpha channel is used to mask out the background. This is effectively a hybrid of the blend mix and add modes, useful for effects like fire where you want the flame to add but the smoke to mix. By default, this works with unshaded materials using premultiplied textures. For shaded materials, use the `PREMUL_ALPHA_FACTOR` built-in so that lighting can be modulated as well.

* * *

enum **AlphaAntiAliasing**: [🔗](#enum-basematerial3d-alphaantialiasing)

[AlphaAntiAliasing](#enum-basematerial3d-alphaantialiasing) **ALPHA\_ANTIALIASING\_OFF** = `0`

Disables Alpha AntiAliasing for the material.

[AlphaAntiAliasing](#enum-basematerial3d-alphaantialiasing) **ALPHA\_ANTIALIASING\_ALPHA\_TO\_COVERAGE** = `1`

Enables AlphaToCoverage. Alpha values in the material are passed to the AntiAliasing sample mask.

[AlphaAntiAliasing](#enum-basematerial3d-alphaantialiasing) **ALPHA\_ANTIALIASING\_ALPHA\_TO\_COVERAGE\_AND\_TO\_ONE** = `2`

Enables AlphaToCoverage and forces all non-zero alpha values to `1`. Alpha values in the material are passed to the AntiAliasing sample mask.

* * *

enum **DepthDrawMode**: [🔗](#enum-basematerial3d-depthdrawmode)

[DepthDrawMode](#enum-basematerial3d-depthdrawmode) **DEPTH\_DRAW\_OPAQUE\_ONLY** = `0`

Default depth draw mode. Depth is drawn only for opaque objects during the opaque prepass (if any) and during the opaque pass.

[DepthDrawMode](#enum-basematerial3d-depthdrawmode) **DEPTH\_DRAW\_ALWAYS** = `1`

Objects will write to depth during the opaque and the transparent passes. Transparent objects that are close to the camera may obscure other transparent objects behind them.

**Note:** This does not influence whether transparent objects are included in the depth prepass or not. For that, see [Transparency](#enum-basematerial3d-transparency).

[DepthDrawMode](#enum-basematerial3d-depthdrawmode) **DEPTH\_DRAW\_DISABLED** = `2`

Objects will not write their depth to the depth buffer, even during the depth prepass (if enabled).

* * *

enum **DepthTest**: [🔗](#enum-basematerial3d-depthtest)

[DepthTest](#enum-basematerial3d-depthtest) **DEPTH\_TEST\_DEFAULT** = `0`

Depth test will discard the pixel if it is behind other pixels.

[DepthTest](#enum-basematerial3d-depthtest) **DEPTH\_TEST\_INVERTED** = `1`

Depth test will discard the pixel if it is in front of other pixels. Useful for stencil effects.

* * *

enum **CullMode**: [🔗](#enum-basematerial3d-cullmode)

[CullMode](#enum-basematerial3d-cullmode) **CULL\_BACK** = `0`

Default cull mode. The back of the object is culled when not visible. Back face triangles will be culled when facing the camera. This results in only the front side of triangles being drawn. For closed-surface meshes, this means that only the exterior of the mesh will be visible.

[CullMode](#enum-basematerial3d-cullmode) **CULL\_FRONT** = `1`

Front face triangles will be culled when facing the camera. This results in only the back side of triangles being drawn. For closed-surface meshes, this means that the interior of the mesh will be drawn instead of the exterior.

[CullMode](#enum-basematerial3d-cullmode) **CULL\_DISABLED** = `2`

No face culling is performed; both the front face and back face will be visible.

* * *

enum **Flags**: [🔗](#enum-basematerial3d-flags)

[Flags](#enum-basematerial3d-flags) **FLAG\_DISABLE\_DEPTH\_TEST** = `0`

Disables the depth test, so this object is drawn on top of all others drawn before it. This puts the object in the transparent draw pass where it is sorted based on distance to camera. Objects drawn after it in the draw order may cover it. This also disables writing to depth.

[Flags](#enum-basematerial3d-flags) **FLAG\_ALBEDO\_FROM\_VERTEX\_COLOR** = `1`

Set `ALBEDO` to the per-vertex color specified in the mesh.

[Flags](#enum-basematerial3d-flags) **FLAG\_SRGB\_VERTEX\_COLOR** = `2`

Vertex colors are considered to be stored in sRGB color space and are converted to linear color space during rendering. See also [vertex\_color\_is\_srgb](#class-basematerial3d-property-vertex-color-is-srgb).

**Note:** Only effective when using the Forward+ and Mobile rendering methods.

[Flags](#enum-basematerial3d-flags) **FLAG\_USE\_POINT\_SIZE** = `3`

Uses point size to alter the size of primitive points. Also changes the albedo texture lookup to use `POINT_COORD` instead of `UV`.

[Flags](#enum-basematerial3d-flags) **FLAG\_FIXED\_SIZE** = `4`

Object is scaled by depth so that it always appears the same size on screen.

[Flags](#enum-basematerial3d-flags) **FLAG\_BILLBOARD\_KEEP\_SCALE** = `5`

Shader will keep the scale set for the mesh. Otherwise the scale is lost when billboarding. Only applies when [billboard\_mode](#class-basematerial3d-property-billboard-mode) is [BILLBOARD\_ENABLED](#class-basematerial3d-constant-billboard-enabled).

[Flags](#enum-basematerial3d-flags) **FLAG\_UV1\_USE\_TRIPLANAR** = `6`

Use triplanar texture lookup for all texture lookups that would normally use `UV`.

[Flags](#enum-basematerial3d-flags) **FLAG\_UV2\_USE\_TRIPLANAR** = `7`

Use triplanar texture lookup for all texture lookups that would normally use `UV2`.

[Flags](#enum-basematerial3d-flags) **FLAG\_UV1\_USE\_WORLD\_TRIPLANAR** = `8`

Use triplanar texture lookup for all texture lookups that would normally use `UV`.

[Flags](#enum-basematerial3d-flags) **FLAG\_UV2\_USE\_WORLD\_TRIPLANAR** = `9`

Use triplanar texture lookup for all texture lookups that would normally use `UV2`.

[Flags](#enum-basematerial3d-flags) **FLAG\_AO\_ON\_UV2** = `10`

Use `UV2` coordinates to look up from the [ao\_texture](#class-basematerial3d-property-ao-texture).

[Flags](#enum-basematerial3d-flags) **FLAG\_EMISSION\_ON\_UV2** = `11`

Use `UV2` coordinates to look up from the [emission\_texture](#class-basematerial3d-property-emission-texture).

[Flags](#enum-basematerial3d-flags) **FLAG\_ALBEDO\_TEXTURE\_FORCE\_SRGB** = `12`

Forces the shader to convert albedo from sRGB space to linear space. See also [albedo\_texture\_force\_srgb](#class-basematerial3d-property-albedo-texture-force-srgb).

[Flags](#enum-basematerial3d-flags) **FLAG\_DONT\_RECEIVE\_SHADOWS** = `13`

Disables receiving shadows from other objects.

[Flags](#enum-basematerial3d-flags) **FLAG\_DISABLE\_AMBIENT\_LIGHT** = `14`

Disables receiving ambient light.

[Flags](#enum-basematerial3d-flags) **FLAG\_USE\_SHADOW\_TO\_OPACITY** = `15`

Enables the shadow to opacity feature.

[Flags](#enum-basematerial3d-flags) **FLAG\_USE\_TEXTURE\_REPEAT** = `16`

Enables the texture to repeat when UV coordinates are outside the 0-1 range. If using one of the linear filtering modes, this can result in artifacts at the edges of a texture when the sampler filters across the edges of the texture.

[Flags](#enum-basematerial3d-flags) **FLAG\_INVERT\_HEIGHTMAP** = `17`

Invert values read from a depth texture to convert them to height values (heightmap).

[Flags](#enum-basematerial3d-flags) **FLAG\_SUBSURFACE\_MODE\_SKIN** = `18`

Enables the skin mode for subsurface scattering which is used to improve the look of subsurface scattering when used for human skin.

[Flags](#enum-basematerial3d-flags) **FLAG\_PARTICLE\_TRAILS\_MODE** = `19`

Enables parts of the shader required for [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) trails to function. This also requires using a mesh with appropriate skinning, such as [RibbonTrailMesh](class_ribbontrailmesh.md#class-ribbontrailmesh) or [TubeTrailMesh](class_tubetrailmesh.md#class-tubetrailmesh). Enabling this feature outside of materials used in [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) meshes will break material rendering.

[Flags](#enum-basematerial3d-flags) **FLAG\_ALBEDO\_TEXTURE\_MSDF** = `20`

Enables multichannel signed distance field rendering shader.

[Flags](#enum-basematerial3d-flags) **FLAG\_DISABLE\_FOG** = `21`

Disables receiving depth-based or volumetric fog.

[Flags](#enum-basematerial3d-flags) **FLAG\_DISABLE\_SPECULAR\_OCCLUSION** = `22`

Disables specular occlusion.

[Flags](#enum-basematerial3d-flags) **FLAG\_USE\_Z\_CLIP\_SCALE** = `23`

Enables using [z\_clip\_scale](#class-basematerial3d-property-z-clip-scale).

[Flags](#enum-basematerial3d-flags) **FLAG\_USE\_FOV\_OVERRIDE** = `24`

Enables using [fov\_override](#class-basematerial3d-property-fov-override).

[Flags](#enum-basematerial3d-flags) **FLAG\_MAX** = `25`

Represents the size of the [Flags](#enum-basematerial3d-flags) enum.

* * *

enum **DiffuseMode**: [🔗](#enum-basematerial3d-diffusemode)

[DiffuseMode](#enum-basematerial3d-diffusemode) **DIFFUSE\_BURLEY** = `0`

Default diffuse scattering algorithm.

[DiffuseMode](#enum-basematerial3d-diffusemode) **DIFFUSE\_LAMBERT** = `1`

Diffuse scattering ignores roughness.

[DiffuseMode](#enum-basematerial3d-diffusemode) **DIFFUSE\_LAMBERT\_WRAP** = `2`

Extends Lambert to cover more than 90 degrees when roughness increases.

[DiffuseMode](#enum-basematerial3d-diffusemode) **DIFFUSE\_TOON** = `3`

Uses a hard cut for lighting, with smoothing affected by roughness.

* * *

enum **SpecularMode**: [🔗](#enum-basematerial3d-specularmode)

[SpecularMode](#enum-basematerial3d-specularmode) **SPECULAR\_SCHLICK\_GGX** = `0`

Default specular blob.

**Note:** Forward+ uses multiscattering for more accurate reflections, although the impact of multiscattering is more noticeable on rough metallic surfaces than on smooth, non-metallic surfaces.

**Note:** Mobile and Compatibility don't perform multiscattering for performance reasons. Instead, they perform single scattering, which means rough metallic surfaces may look slightly darker than intended.

[SpecularMode](#enum-basematerial3d-specularmode) **SPECULAR\_TOON** = `1`

Toon blob which changes size based on roughness.

[SpecularMode](#enum-basematerial3d-specularmode) **SPECULAR\_DISABLED** = `2`

No specular blob. This is slightly faster to render than other specular modes.

* * *

enum **BillboardMode**: [🔗](#enum-basematerial3d-billboardmode)

[BillboardMode](#enum-basematerial3d-billboardmode) **BILLBOARD\_DISABLED** = `0`

Billboard mode is disabled.

[BillboardMode](#enum-basematerial3d-billboardmode) **BILLBOARD\_ENABLED** = `1`

The object's Z axis will always face the camera.

[BillboardMode](#enum-basematerial3d-billboardmode) **BILLBOARD\_FIXED\_Y** = `2`

The object's X axis will always face the camera.

[BillboardMode](#enum-basematerial3d-billboardmode) **BILLBOARD\_PARTICLES** = `3`

Used for particle systems when assigned to [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) and [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d) nodes (flipbook animation). Enables `particles_anim_*` properties.

The [ParticleProcessMaterial.anim\_speed\_min](class_particleprocessmaterial.md#class-particleprocessmaterial-property-anim-speed-min) or [CPUParticles3D.anim\_speed\_min](class_cpuparticles3d.md#class-cpuparticles3d-property-anim-speed-min) should also be set to a value bigger than zero for the animation to play.

* * *

enum **TextureChannel**: [🔗](#enum-basematerial3d-texturechannel)

[TextureChannel](#enum-basematerial3d-texturechannel) **TEXTURE\_CHANNEL\_RED** = `0`

Used to read from the red channel of a texture.

[TextureChannel](#enum-basematerial3d-texturechannel) **TEXTURE\_CHANNEL\_GREEN** = `1`

Used to read from the green channel of a texture.

[TextureChannel](#enum-basematerial3d-texturechannel) **TEXTURE\_CHANNEL\_BLUE** = `2`

Used to read from the blue channel of a texture.

[TextureChannel](#enum-basematerial3d-texturechannel) **TEXTURE\_CHANNEL\_ALPHA** = `3`

Used to read from the alpha channel of a texture.

[TextureChannel](#enum-basematerial3d-texturechannel) **TEXTURE\_CHANNEL\_GRAYSCALE** = `4`

Used to read from the linear (non-perceptual) average of the red, green and blue channels of a texture.

* * *

enum **EmissionOperator**: [🔗](#enum-basematerial3d-emissionoperator)

[EmissionOperator](#enum-basematerial3d-emissionoperator) **EMISSION\_OP\_ADD** = `0`

Adds the emission color to the color from the emission texture.

[EmissionOperator](#enum-basematerial3d-emissionoperator) **EMISSION\_OP\_MULTIPLY** = `1`

Multiplies the emission color by the color from the emission texture.

* * *

enum **DistanceFadeMode**: [🔗](#enum-basematerial3d-distancefademode)

[DistanceFadeMode](#enum-basematerial3d-distancefademode) **DISTANCE\_FADE\_DISABLED** = `0`

Do not use distance fade.

[DistanceFadeMode](#enum-basematerial3d-distancefademode) **DISTANCE\_FADE\_PIXEL\_ALPHA** = `1`

Smoothly fades the object out based on each pixel's distance from the camera using the alpha channel.

[DistanceFadeMode](#enum-basematerial3d-distancefademode) **DISTANCE\_FADE\_PIXEL\_DITHER** = `2`

Smoothly fades the object out based on each pixel's distance from the camera using a dithering approach. Dithering discards pixels based on a set pattern to smoothly fade without enabling transparency. On certain hardware, this can be faster than [DISTANCE\_FADE\_PIXEL\_ALPHA](#class-basematerial3d-constant-distance-fade-pixel-alpha).

[DistanceFadeMode](#enum-basematerial3d-distancefademode) **DISTANCE\_FADE\_OBJECT\_DITHER** = `3`

Smoothly fades the object out based on the object's distance from the camera using a dithering approach. Dithering discards pixels based on a set pattern to smoothly fade without enabling transparency. On certain hardware, this can be faster than [DISTANCE\_FADE\_PIXEL\_ALPHA](#class-basematerial3d-constant-distance-fade-pixel-alpha) and [DISTANCE\_FADE\_PIXEL\_DITHER](#class-basematerial3d-constant-distance-fade-pixel-dither).

* * *

enum **StencilMode**: [🔗](#enum-basematerial3d-stencilmode)

[StencilMode](#enum-basematerial3d-stencilmode) **STENCIL\_MODE\_DISABLED** = `0`

Disables stencil operations.

[StencilMode](#enum-basematerial3d-stencilmode) **STENCIL\_MODE\_OUTLINE** = `1`

Stencil preset which applies an outline to the object.

**Note:** Requires a [Material.next\_pass](class_material.md#class-material-property-next-pass) material which will be automatically applied. Any manual changes made to [Material.next\_pass](class_material.md#class-material-property-next-pass) will be lost when the stencil properties are modified or the scene is reloaded. To safely apply a [Material.next\_pass](class_material.md#class-material-property-next-pass) material on a material that uses stencil presets, use [GeometryInstance3D.material\_overlay](class_geometryinstance3d.md#class-geometryinstance3d-property-material-overlay) instead.

[StencilMode](#enum-basematerial3d-stencilmode) **STENCIL\_MODE\_XRAY** = `2`

Stencil preset which shows a silhouette of the object behind walls.

**Note:** Requires a [Material.next\_pass](class_material.md#class-material-property-next-pass) material which will be automatically applied. Any manual changes made to [Material.next\_pass](class_material.md#class-material-property-next-pass) will be lost when the stencil properties are modified or the scene is reloaded. To safely apply a [Material.next\_pass](class_material.md#class-material-property-next-pass) material on a material that uses stencil presets, use [GeometryInstance3D.material\_overlay](class_geometryinstance3d.md#class-geometryinstance3d-property-material-overlay) instead.

[StencilMode](#enum-basematerial3d-stencilmode) **STENCIL\_MODE\_CUSTOM** = `3`

Enables stencil operations without a preset.

* * *

enum **StencilFlags**: [🔗](#enum-basematerial3d-stencilflags)

[StencilFlags](#enum-basematerial3d-stencilflags) **STENCIL\_FLAG\_READ** = `1`

The material will only be rendered where it passes a stencil comparison with existing stencil buffer values. See [StencilCompare](#enum-basematerial3d-stencilcompare).

[StencilFlags](#enum-basematerial3d-stencilflags) **STENCIL\_FLAG\_WRITE** = `2`

The material will write the reference value to the stencil buffer where it passes the depth test.

[StencilFlags](#enum-basematerial3d-stencilflags) **STENCIL\_FLAG\_WRITE\_DEPTH\_FAIL** = `4`

The material will write the reference value to the stencil buffer where it fails the depth test.

* * *

enum **StencilCompare**: [🔗](#enum-basematerial3d-stencilcompare)

[StencilCompare](#enum-basematerial3d-stencilcompare) **STENCIL\_COMPARE\_ALWAYS** = `0`

Always passes the stencil test.

[StencilCompare](#enum-basematerial3d-stencilcompare) **STENCIL\_COMPARE\_LESS** = `1`

Passes the stencil test when the reference value is less than the existing stencil value.

[StencilCompare](#enum-basematerial3d-stencilcompare) **STENCIL\_COMPARE\_EQUAL** = `2`

Passes the stencil test when the reference value is equal to the existing stencil value.

[StencilCompare](#enum-basematerial3d-stencilcompare) **STENCIL\_COMPARE\_LESS\_OR\_EQUAL** = `3`

Passes the stencil test when the reference value is less than or equal to the existing stencil value.

[StencilCompare](#enum-basematerial3d-stencilcompare) **STENCIL\_COMPARE\_GREATER** = `4`

Passes the stencil test when the reference value is greater than the existing stencil value.

[StencilCompare](#enum-basematerial3d-stencilcompare) **STENCIL\_COMPARE\_NOT\_EQUAL** = `5`

Passes the stencil test when the reference value is not equal to the existing stencil value.

[StencilCompare](#enum-basematerial3d-stencilcompare) **STENCIL\_COMPARE\_GREATER\_OR\_EQUAL** = `6`

Passes the stencil test when the reference value is greater than or equal to the existing stencil value.

* * *

## Property Descriptions

[Color](class_color.md#class-color) **albedo\_color** = `Color(1, 1, 1, 1)` [🔗](#class-basematerial3d-property-albedo-color)

- void **set\_albedo**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_albedo**()


The material's base color.

**Note:** If [detail\_enabled](#class-basematerial3d-property-detail-enabled) is `true` and a [detail\_albedo](#class-basematerial3d-property-detail-albedo) texture is specified, [albedo\_color](#class-basematerial3d-property-albedo-color) will _not_ modulate the detail texture. This can be used to color partial areas of a material by not specifying an albedo texture and using a transparent [detail\_albedo](#class-basematerial3d-property-detail-albedo) texture instead.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **albedo\_texture** [🔗](#class-basematerial3d-property-albedo-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture to multiply by [albedo\_color](#class-basematerial3d-property-albedo-color). Used for basic texturing of objects.

If the texture appears unexpectedly too dark or too bright, check [albedo\_texture\_force\_srgb](#class-basematerial3d-property-albedo-texture-force-srgb).

* * *

[bool](class_bool.md#class-bool) **albedo\_texture\_force\_srgb** = `false` [🔗](#class-basematerial3d-property-albedo-texture-force-srgb)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, forces a conversion of the [albedo\_texture](#class-basematerial3d-property-albedo-texture) from sRGB color space to linear color space. See also [vertex\_color\_is\_srgb](#class-basematerial3d-property-vertex-color-is-srgb).

This should only be enabled when needed (typically when using a [ViewportTexture](class_viewporttexture.md#class-viewporttexture) as [albedo\_texture](#class-basematerial3d-property-albedo-texture)). If [albedo\_texture\_force\_srgb](#class-basematerial3d-property-albedo-texture-force-srgb) is `true` when it shouldn't be, the texture will appear to be too dark. If [albedo\_texture\_force\_srgb](#class-basematerial3d-property-albedo-texture-force-srgb) is `false` when it shouldn't be, the texture will appear to be too bright.

* * *

[bool](class_bool.md#class-bool) **albedo\_texture\_msdf** = `false` [🔗](#class-basematerial3d-property-albedo-texture-msdf)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


Enables multichannel signed distance field rendering shader. Use [msdf\_pixel\_range](#class-basematerial3d-property-msdf-pixel-range) and [msdf\_outline\_size](#class-basematerial3d-property-msdf-outline-size) to configure MSDF parameters.

* * *

[float](class_float.md#class-float) **alpha\_antialiasing\_edge** [🔗](#class-basematerial3d-property-alpha-antialiasing-edge)

- void **set\_alpha\_antialiasing\_edge**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_alpha\_antialiasing\_edge**()


Threshold at which antialiasing will be applied on the alpha channel.

* * *

[AlphaAntiAliasing](#enum-basematerial3d-alphaantialiasing) **alpha\_antialiasing\_mode** [🔗](#class-basematerial3d-property-alpha-antialiasing-mode)

- void **set\_alpha\_antialiasing**(value: [AlphaAntiAliasing](#enum-basematerial3d-alphaantialiasing))

- [AlphaAntiAliasing](#enum-basematerial3d-alphaantialiasing) **get\_alpha\_antialiasing**()


The type of alpha antialiasing to apply.

* * *

[float](class_float.md#class-float) **alpha\_hash\_scale** [🔗](#class-basematerial3d-property-alpha-hash-scale)

- void **set\_alpha\_hash\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_alpha\_hash\_scale**()


The hashing scale for Alpha Hash. Recommended values between `0` and `2`.

* * *

[float](class_float.md#class-float) **alpha\_scissor\_threshold** [🔗](#class-basematerial3d-property-alpha-scissor-threshold)

- void **set\_alpha\_scissor\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_alpha\_scissor\_threshold**()


Threshold at which the alpha scissor will discard values. Higher values will result in more pixels being discarded. If the material becomes too opaque at a distance, try increasing [alpha\_scissor\_threshold](#class-basematerial3d-property-alpha-scissor-threshold). If the material disappears at a distance, try decreasing [alpha\_scissor\_threshold](#class-basematerial3d-property-alpha-scissor-threshold).

* * *

[float](class_float.md#class-float) **anisotropy** = `0.0` [🔗](#class-basematerial3d-property-anisotropy)

- void **set\_anisotropy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_anisotropy**()


The strength of the anisotropy effect. This is multiplied by [anisotropy\_flowmap](#class-basematerial3d-property-anisotropy-flowmap)'s alpha channel if a texture is defined there and the texture contains an alpha channel.

* * *

[bool](class_bool.md#class-bool) **anisotropy\_enabled** = `false` [🔗](#class-basematerial3d-property-anisotropy-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, anisotropy is enabled. Anisotropy changes the shape of the specular blob and aligns it to tangent space. This is useful for brushed aluminum and hair reflections.

**Note:** Mesh tangents are needed for anisotropy to work. If the mesh does not contain tangents, the anisotropy effect will appear broken.

**Note:** Material anisotropy should not to be confused with anisotropic texture filtering, which can be enabled by setting [texture\_filter](#class-basematerial3d-property-texture-filter) to [TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS\_ANISOTROPIC](#class-basematerial3d-constant-texture-filter-linear-with-mipmaps-anisotropic).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **anisotropy\_flowmap** [🔗](#class-basematerial3d-property-anisotropy-flowmap)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture that offsets the tangent map for anisotropy calculations and optionally controls the anisotropy effect (if an alpha channel is present). The flowmap texture is expected to be a derivative map, with the red channel representing distortion on the X axis and green channel representing distortion on the Y axis. Values below 0.5 will result in negative distortion, whereas values above 0.5 will result in positive distortion.

If present, the texture's alpha channel will be used to multiply the strength of the [anisotropy](#class-basematerial3d-property-anisotropy) effect. Fully opaque pixels will keep the anisotropy effect's original strength while fully transparent pixels will disable the anisotropy effect entirely. The flowmap texture's blue channel is ignored.

* * *

[bool](class_bool.md#class-bool) **ao\_enabled** = `false` [🔗](#class-basematerial3d-property-ao-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, ambient occlusion is enabled. Ambient occlusion darkens areas based on the [ao\_texture](#class-basematerial3d-property-ao-texture).

* * *

[float](class_float.md#class-float) **ao\_light\_affect** = `0.0` [🔗](#class-basematerial3d-property-ao-light-affect)

- void **set\_ao\_light\_affect**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ao\_light\_affect**()


Amount that ambient occlusion affects lighting from lights. If `0`, ambient occlusion only affects ambient light. If `1`, ambient occlusion affects lights just as much as it affects ambient light. This can be used to impact the strength of the ambient occlusion effect, but typically looks unrealistic.

* * *

[bool](class_bool.md#class-bool) **ao\_on\_uv2** = `false` [🔗](#class-basematerial3d-property-ao-on-uv2)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, use `UV2` coordinates to look up from the [ao\_texture](#class-basematerial3d-property-ao-texture).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **ao\_texture** [🔗](#class-basematerial3d-property-ao-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture that defines the amount of ambient occlusion for a given point on the object.

* * *

[TextureChannel](#enum-basematerial3d-texturechannel) **ao\_texture\_channel** = `0` [🔗](#class-basematerial3d-property-ao-texture-channel)

- void **set\_ao\_texture\_channel**(value: [TextureChannel](#enum-basematerial3d-texturechannel))

- [TextureChannel](#enum-basematerial3d-texturechannel) **get\_ao\_texture\_channel**()


Specifies the channel of the [ao\_texture](#class-basematerial3d-property-ao-texture) in which the ambient occlusion information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.

* * *

[Color](class_color.md#class-color) **backlight** = `Color(0, 0, 0, 1)` [🔗](#class-basematerial3d-property-backlight)

- void **set\_backlight**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_backlight**()


The color used by the backlight effect. Represents the light passing through an object.

* * *

[bool](class_bool.md#class-bool) **backlight\_enabled** = `false` [🔗](#class-basematerial3d-property-backlight-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, the backlight effect is enabled. See also [subsurf\_scatter\_transmittance\_enabled](#class-basematerial3d-property-subsurf-scatter-transmittance-enabled).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **backlight\_texture** [🔗](#class-basematerial3d-property-backlight-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture used to control the backlight effect per-pixel. Added to [backlight](#class-basematerial3d-property-backlight).

* * *

[bool](class_bool.md#class-bool) **bent\_normal\_enabled** = `false` [🔗](#class-basematerial3d-property-bent-normal-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, the bent normal map is enabled. This allows for more accurate indirect lighting and specular occlusion.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **bent\_normal\_texture** [🔗](#class-basematerial3d-property-bent-normal-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture that specifies the average direction of incoming ambient light at a given pixel. The [bent\_normal\_texture](#class-basematerial3d-property-bent-normal-texture) only uses the red and green channels; the blue and alpha channels are ignored. The normal read from [bent\_normal\_texture](#class-basematerial3d-property-bent-normal-texture) is oriented around the surface normal provided by the [Mesh](class_mesh.md#class-mesh).

**Note:** A bent normal map is different from a regular normal map. When baking a bent normal map make sure to use **a cosine distribution** for the bent normal map to work correctly.

**Note:** The mesh must have both normals and tangents defined in its vertex data. Otherwise, the shading produced by the bent normal map will not look correct. If creating geometry with [SurfaceTool](class_surfacetool.md#class-surfacetool), you can use [SurfaceTool.generate\_normals()](class_surfacetool.md#class-surfacetool-method-generate-normals) and [SurfaceTool.generate\_tangents()](class_surfacetool.md#class-surfacetool-method-generate-tangents) to automatically generate normals and tangents respectively.

**Note:** Godot expects the bent normal map to use X+, Y+, and Z+ coordinates. See [this page](http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates) for a comparison of normal map coordinates expected by popular engines.

* * *

[bool](class_bool.md#class-bool) **billboard\_keep\_scale** = `false` [🔗](#class-basematerial3d-property-billboard-keep-scale)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, the shader will keep the scale set for the mesh. Otherwise, the scale is lost when billboarding. Only applies when [billboard\_mode](#class-basematerial3d-property-billboard-mode) is not [BILLBOARD\_DISABLED](#class-basematerial3d-constant-billboard-disabled).

* * *

[BillboardMode](#enum-basematerial3d-billboardmode) **billboard\_mode** = `0` [🔗](#class-basematerial3d-property-billboard-mode)

- void **set\_billboard\_mode**(value: [BillboardMode](#enum-basematerial3d-billboardmode))

- [BillboardMode](#enum-basematerial3d-billboardmode) **get\_billboard\_mode**()


Controls how the object faces the camera.

**Note:** Billboard mode is not suitable for VR because the left-right vector of the camera is not horizontal when the screen is attached to your head instead of on the table. See [GitHub issue #41567](https://github.com/godotengine/godot/issues/41567) for details.

* * *

[BlendMode](#enum-basematerial3d-blendmode) **blend\_mode** = `0` [🔗](#class-basematerial3d-property-blend-mode)

- void **set\_blend\_mode**(value: [BlendMode](#enum-basematerial3d-blendmode))

- [BlendMode](#enum-basematerial3d-blendmode) **get\_blend\_mode**()


The material's blend mode.

**Note:** Values other than `Mix` force the object into the transparent pipeline.

* * *

[float](class_float.md#class-float) **clearcoat** = `1.0` [🔗](#class-basematerial3d-property-clearcoat)

- void **set\_clearcoat**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_clearcoat**()


Sets the strength of the clearcoat effect. Setting to `0` looks the same as disabling the clearcoat effect.

* * *

[bool](class_bool.md#class-bool) **clearcoat\_enabled** = `false` [🔗](#class-basematerial3d-property-clearcoat-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, clearcoat rendering is enabled. Adds a secondary transparent pass to the lighting calculation resulting in an added specular blob. This makes materials appear as if they have a clear layer on them that can be either glossy or rough.

**Note:** Clearcoat rendering is not visible if the material's [shading\_mode](#class-basematerial3d-property-shading-mode) is [SHADING\_MODE\_UNSHADED](#class-basematerial3d-constant-shading-mode-unshaded).

* * *

[float](class_float.md#class-float) **clearcoat\_roughness** = `0.5` [🔗](#class-basematerial3d-property-clearcoat-roughness)

- void **set\_clearcoat\_roughness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_clearcoat\_roughness**()


Sets the roughness of the clearcoat pass. A higher value results in a rougher clearcoat while a lower value results in a smoother clearcoat.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **clearcoat\_texture** [🔗](#class-basematerial3d-property-clearcoat-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture that defines the strength of the clearcoat effect and the glossiness of the clearcoat. Strength is specified in the red channel while glossiness is specified in the green channel.

* * *

[CullMode](#enum-basematerial3d-cullmode) **cull\_mode** = `0` [🔗](#class-basematerial3d-property-cull-mode)

- void **set\_cull\_mode**(value: [CullMode](#enum-basematerial3d-cullmode))

- [CullMode](#enum-basematerial3d-cullmode) **get\_cull\_mode**()


Determines which side of the triangle to cull depending on whether the triangle faces towards or away from the camera.

* * *

[DepthDrawMode](#enum-basematerial3d-depthdrawmode) **depth\_draw\_mode** = `0` [🔗](#class-basematerial3d-property-depth-draw-mode)

- void **set\_depth\_draw\_mode**(value: [DepthDrawMode](#enum-basematerial3d-depthdrawmode))

- [DepthDrawMode](#enum-basematerial3d-depthdrawmode) **get\_depth\_draw\_mode**()


Determines when depth rendering takes place. See also [transparency](#class-basematerial3d-property-transparency).

* * *

[DepthTest](#enum-basematerial3d-depthtest) **depth\_test** = `0` [🔗](#class-basematerial3d-property-depth-test)

- void **set\_depth\_test**(value: [DepthTest](#enum-basematerial3d-depthtest))

- [DepthTest](#enum-basematerial3d-depthtest) **get\_depth\_test**()


**Experimental:** May be affected by future rendering pipeline changes.

Determines which comparison operator is used when testing depth. See [DepthTest](#enum-basematerial3d-depthtest).

**Note:** Changing [depth\_test](#class-basematerial3d-property-depth-test) to a non-default value only has a visible effect when used on a transparent material, or a material that has [depth\_draw\_mode](#class-basematerial3d-property-depth-draw-mode) set to [DEPTH\_DRAW\_DISABLED](#class-basematerial3d-constant-depth-draw-disabled).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **detail\_albedo** [🔗](#class-basematerial3d-property-detail-albedo)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture that specifies the color of the detail overlay. [detail\_albedo](#class-basematerial3d-property-detail-albedo)'s alpha channel is used as a mask, even when the material is opaque. To use a dedicated texture as a mask, see [detail\_mask](#class-basematerial3d-property-detail-mask).

**Note:** [detail\_albedo](#class-basematerial3d-property-detail-albedo) is _not_ modulated by [albedo\_color](#class-basematerial3d-property-albedo-color).

* * *

[BlendMode](#enum-basematerial3d-blendmode) **detail\_blend\_mode** = `0` [🔗](#class-basematerial3d-property-detail-blend-mode)

- void **set\_detail\_blend\_mode**(value: [BlendMode](#enum-basematerial3d-blendmode))

- [BlendMode](#enum-basematerial3d-blendmode) **get\_detail\_blend\_mode**()


Specifies how the [detail\_albedo](#class-basematerial3d-property-detail-albedo) should blend with the current `ALBEDO`.

* * *

[bool](class_bool.md#class-bool) **detail\_enabled** = `false` [🔗](#class-basematerial3d-property-detail-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, enables the detail overlay. Detail is a second texture that gets mixed over the surface of the object based on [detail\_mask](#class-basematerial3d-property-detail-mask) and [detail\_albedo](#class-basematerial3d-property-detail-albedo)'s alpha channel. This can be used to add variation to objects, or to blend between two different albedo/normal textures.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **detail\_mask** [🔗](#class-basematerial3d-property-detail-mask)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture used to specify how the detail textures get blended with the base textures. [detail\_mask](#class-basematerial3d-property-detail-mask) can be used together with [detail\_albedo](#class-basematerial3d-property-detail-albedo)'s alpha channel (if any).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **detail\_normal** [🔗](#class-basematerial3d-property-detail-normal)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture that specifies the per-pixel normal of the detail overlay. The [detail\_normal](#class-basematerial3d-property-detail-normal) texture only uses the red and green channels; the blue and alpha channels are ignored. The normal read from [detail\_normal](#class-basematerial3d-property-detail-normal) is oriented around the surface normal provided by the [Mesh](class_mesh.md#class-mesh).

**Note:** Godot expects the normal map to use X+, Y+, and Z+ coordinates. See [this page](http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates) for a comparison of normal map coordinates expected by popular engines.

* * *

[DetailUV](#enum-basematerial3d-detailuv) **detail\_uv\_layer** = `0` [🔗](#class-basematerial3d-property-detail-uv-layer)

- void **set\_detail\_uv**(value: [DetailUV](#enum-basematerial3d-detailuv))

- [DetailUV](#enum-basematerial3d-detailuv) **get\_detail\_uv**()


Specifies whether to use `UV` or `UV2` for the detail layer.

* * *

[DiffuseMode](#enum-basematerial3d-diffusemode) **diffuse\_mode** = `0` [🔗](#class-basematerial3d-property-diffuse-mode)

- void **set\_diffuse\_mode**(value: [DiffuseMode](#enum-basematerial3d-diffusemode))

- [DiffuseMode](#enum-basematerial3d-diffusemode) **get\_diffuse\_mode**()


The algorithm used for diffuse light scattering.

* * *

[bool](class_bool.md#class-bool) **disable\_ambient\_light** = `false` [🔗](#class-basematerial3d-property-disable-ambient-light)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, the object receives no ambient light.

* * *

[bool](class_bool.md#class-bool) **disable\_fog** = `false` [🔗](#class-basematerial3d-property-disable-fog)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, the object will not be affected by fog (neither volumetric nor depth fog). This is useful for unshaded or transparent materials (e.g. particles), which without this setting will be affected even if fully transparent.

* * *

[bool](class_bool.md#class-bool) **disable\_receive\_shadows** = `false` [🔗](#class-basematerial3d-property-disable-receive-shadows)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, the object receives no shadow that would otherwise be cast onto it.

* * *

[bool](class_bool.md#class-bool) **disable\_specular\_occlusion** = `false` [🔗](#class-basematerial3d-property-disable-specular-occlusion)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, disables specular occlusion even if [ProjectSettings.rendering/reflections/specular\_occlusion/enabled](class_projectsettings.md#class-projectsettings-property-rendering-reflections-specular-occlusion-enabled) is `false`.

* * *

[float](class_float.md#class-float) **distance\_fade\_max\_distance** = `10.0` [🔗](#class-basematerial3d-property-distance-fade-max-distance)

- void **set\_distance\_fade\_max\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_distance\_fade\_max\_distance**()


Distance at which the object appears fully opaque.

**Note:** If [distance\_fade\_max\_distance](#class-basematerial3d-property-distance-fade-max-distance) is less than [distance\_fade\_min\_distance](#class-basematerial3d-property-distance-fade-min-distance), the behavior will be reversed. The object will start to fade away at [distance\_fade\_max\_distance](#class-basematerial3d-property-distance-fade-max-distance) and will fully disappear once it reaches [distance\_fade\_min\_distance](#class-basematerial3d-property-distance-fade-min-distance).

* * *

[float](class_float.md#class-float) **distance\_fade\_min\_distance** = `0.0` [🔗](#class-basematerial3d-property-distance-fade-min-distance)

- void **set\_distance\_fade\_min\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_distance\_fade\_min\_distance**()


Distance at which the object starts to become visible. If the object is less than this distance away, it will be invisible.

**Note:** If [distance\_fade\_min\_distance](#class-basematerial3d-property-distance-fade-min-distance) is greater than [distance\_fade\_max\_distance](#class-basematerial3d-property-distance-fade-max-distance), the behavior will be reversed. The object will start to fade away at [distance\_fade\_max\_distance](#class-basematerial3d-property-distance-fade-max-distance) and will fully disappear once it reaches [distance\_fade\_min\_distance](#class-basematerial3d-property-distance-fade-min-distance).

* * *

[DistanceFadeMode](#enum-basematerial3d-distancefademode) **distance\_fade\_mode** = `0` [🔗](#class-basematerial3d-property-distance-fade-mode)

- void **set\_distance\_fade**(value: [DistanceFadeMode](#enum-basematerial3d-distancefademode))

- [DistanceFadeMode](#enum-basematerial3d-distancefademode) **get\_distance\_fade**()


Specifies which type of fade to use. Can be any of the [DistanceFadeMode](#enum-basematerial3d-distancefademode) s.

* * *

[Color](class_color.md#class-color) **emission** = `Color(0, 0, 0, 1)` [🔗](#class-basematerial3d-property-emission)

- void **set\_emission**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_emission**()


The emitted light's color. See [emission\_enabled](#class-basematerial3d-property-emission-enabled).

* * *

[bool](class_bool.md#class-bool) **emission\_enabled** = `false` [🔗](#class-basematerial3d-property-emission-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, the body emits light. Emitting light makes the object appear brighter. The object can also cast light on other objects if a [VoxelGI](class_voxelgi.md#class-voxelgi), SDFGI, or [LightmapGI](class_lightmapgi.md#class-lightmapgi) is used and this object is used in baked lighting.

* * *

[float](class_float.md#class-float) **emission\_energy\_multiplier** = `1.0` [🔗](#class-basematerial3d-property-emission-energy-multiplier)

- void **set\_emission\_energy\_multiplier**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_energy\_multiplier**()


Multiplier for emitted light. See [emission\_enabled](#class-basematerial3d-property-emission-enabled).

* * *

[float](class_float.md#class-float) **emission\_intensity** [🔗](#class-basematerial3d-property-emission-intensity)

- void **set\_emission\_intensity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_intensity**()


Luminance of emitted light, measured in nits (candela per square meter). Only available when [ProjectSettings.rendering/lights\_and\_shadows/use\_physical\_light\_units](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units) is enabled. The default is roughly equivalent to an indoor lightbulb.

* * *

[bool](class_bool.md#class-bool) **emission\_on\_uv2** = `false` [🔗](#class-basematerial3d-property-emission-on-uv2)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


Use `UV2` to read from the [emission\_texture](#class-basematerial3d-property-emission-texture).

* * *

[EmissionOperator](#enum-basematerial3d-emissionoperator) **emission\_operator** = `0` [🔗](#class-basematerial3d-property-emission-operator)

- void **set\_emission\_operator**(value: [EmissionOperator](#enum-basematerial3d-emissionoperator))

- [EmissionOperator](#enum-basematerial3d-emissionoperator) **get\_emission\_operator**()


Sets how [emission](#class-basematerial3d-property-emission) interacts with [emission\_texture](#class-basematerial3d-property-emission-texture). Can either add or multiply.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **emission\_texture** [🔗](#class-basematerial3d-property-emission-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture that specifies how much surface emits light at a given point.

* * *

[bool](class_bool.md#class-bool) **fixed\_size** = `false` [🔗](#class-basematerial3d-property-fixed-size)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, the object is rendered at the same size regardless of distance. The object's size on screen is the same as if the camera was `1.0` units away from the object's origin, regardless of the actual distance from the camera. The [Camera3D](class_camera3d.md#class-camera3d)'s field of view (or [Camera3D.size](class_camera3d.md#class-camera3d-property-size) when in orthogonal/frustum mode) still affects the size the object is drawn at.

* * *

[float](class_float.md#class-float) **fov\_override** = `75.0` [🔗](#class-basematerial3d-property-fov-override)

- void **set\_fov\_override**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fov\_override**()


Overrides the [Camera3D](class_camera3d.md#class-camera3d)'s field of view angle (in degrees).

**Note:** This behaves as if the field of view is set on a [Camera3D](class_camera3d.md#class-camera3d) with [Camera3D.keep\_aspect](class_camera3d.md#class-camera3d-property-keep-aspect) set to [Camera3D.KEEP\_HEIGHT](class_camera3d.md#class-camera3d-constant-keep-height). Additionally, it may not look correct on a non-perspective camera where the field of view setting is ignored.

* * *

[bool](class_bool.md#class-bool) **grow** = `false` [🔗](#class-basematerial3d-property-grow)

- void **set\_grow\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_grow\_enabled**()


If `true`, enables the vertex grow setting. This can be used to create mesh-based outlines using a second material pass and its [cull\_mode](#class-basematerial3d-property-cull-mode) set to [CULL\_FRONT](#class-basematerial3d-constant-cull-front). See also [grow\_amount](#class-basematerial3d-property-grow-amount).

**Note:** Vertex growth cannot create new vertices, which means that visible gaps may occur in sharp corners. This can be alleviated by designing the mesh to use smooth normals exclusively using [face weighted normals](http://wiki.polycount.com/wiki/Face_weighted_normals) in the 3D authoring software. In this case, grow will be able to join every outline together, just like in the original mesh.

* * *

[float](class_float.md#class-float) **grow\_amount** = `0.0` [🔗](#class-basematerial3d-property-grow-amount)

- void **set\_grow**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_grow**()


Grows object vertices in the direction of their normals. Only effective if [grow](#class-basematerial3d-property-grow) is `true`.

* * *

[bool](class_bool.md#class-bool) **heightmap\_deep\_parallax** = `false` [🔗](#class-basematerial3d-property-heightmap-deep-parallax)

- void **set\_heightmap\_deep\_parallax**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_heightmap\_deep\_parallax\_enabled**()


If `true`, uses parallax occlusion mapping to represent depth in the material instead of simple offset mapping (see [heightmap\_enabled](#class-basematerial3d-property-heightmap-enabled)). This results in a more convincing depth effect, but is much more expensive on the GPU. Only enable this on materials where it makes a significant visual difference.

* * *

[bool](class_bool.md#class-bool) **heightmap\_enabled** = `false` [🔗](#class-basematerial3d-property-heightmap-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, height mapping is enabled (also called "parallax mapping" or "depth mapping"). See also [normal\_enabled](#class-basematerial3d-property-normal-enabled). Height mapping is a demanding feature on the GPU, so it should only be used on materials where it makes a significant visual difference.

**Note:** Height mapping is not supported if triplanar mapping is used on the same material. The value of [heightmap\_enabled](#class-basematerial3d-property-heightmap-enabled) will be ignored if [uv1\_triplanar](#class-basematerial3d-property-uv1-triplanar) is enabled.

* * *

[bool](class_bool.md#class-bool) **heightmap\_flip\_binormal** = `false` [🔗](#class-basematerial3d-property-heightmap-flip-binormal)

- void **set\_heightmap\_deep\_parallax\_flip\_binormal**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_heightmap\_deep\_parallax\_flip\_binormal**()


If `true`, flips the mesh's binormal vectors when interpreting the height map. If the heightmap effect looks strange when the camera moves (even with a reasonable [heightmap\_scale](#class-basematerial3d-property-heightmap-scale)), try setting this to `true`.

* * *

[bool](class_bool.md#class-bool) **heightmap\_flip\_tangent** = `false` [🔗](#class-basematerial3d-property-heightmap-flip-tangent)

- void **set\_heightmap\_deep\_parallax\_flip\_tangent**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_heightmap\_deep\_parallax\_flip\_tangent**()


If `true`, flips the mesh's tangent vectors when interpreting the height map. If the heightmap effect looks strange when the camera moves (even with a reasonable [heightmap\_scale](#class-basematerial3d-property-heightmap-scale)), try setting this to `true`.

* * *

[bool](class_bool.md#class-bool) **heightmap\_flip\_texture** = `false` [🔗](#class-basematerial3d-property-heightmap-flip-texture)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, interprets the height map texture as a depth map, with brighter values appearing to be "lower" in altitude compared to darker values.

This can be enabled for compatibility with some materials authored for Godot 3.x. This is not necessary if the Invert import option was used to invert the depth map in Godot 3.x, in which case [heightmap\_flip\_texture](#class-basematerial3d-property-heightmap-flip-texture) should remain `false`.

* * *

[int](class_int.md#class-int) **heightmap\_max\_layers** [🔗](#class-basematerial3d-property-heightmap-max-layers)

- void **set\_heightmap\_deep\_parallax\_max\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_heightmap\_deep\_parallax\_max\_layers**()


The number of layers to use for parallax occlusion mapping when the camera is up close to the material. Higher values result in a more convincing depth effect, especially in materials that have steep height changes. Higher values have a significant cost on the GPU, so it should only be increased on materials where it makes a significant visual difference.

**Note:** Only effective if [heightmap\_deep\_parallax](#class-basematerial3d-property-heightmap-deep-parallax) is `true`.

* * *

[int](class_int.md#class-int) **heightmap\_min\_layers** [🔗](#class-basematerial3d-property-heightmap-min-layers)

- void **set\_heightmap\_deep\_parallax\_min\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_heightmap\_deep\_parallax\_min\_layers**()


The number of layers to use for parallax occlusion mapping when the camera is far away from the material. Higher values result in a more convincing depth effect, especially in materials that have steep height changes. Higher values have a significant cost on the GPU, so it should only be increased on materials where it makes a significant visual difference.

**Note:** Only effective if [heightmap\_deep\_parallax](#class-basematerial3d-property-heightmap-deep-parallax) is `true`.

* * *

[float](class_float.md#class-float) **heightmap\_scale** = `5.0` [🔗](#class-basematerial3d-property-heightmap-scale)

- void **set\_heightmap\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_heightmap\_scale**()


The heightmap scale to use for the parallax effect (see [heightmap\_enabled](#class-basematerial3d-property-heightmap-enabled)). The default value is tuned so that the highest point (value = 255) appears to be 5 cm higher than the lowest point (value = 0). Higher values result in a deeper appearance, but may result in artifacts appearing when looking at the material from oblique angles, especially when the camera moves. Negative values can be used to invert the parallax effect, but this is different from inverting the texture using [heightmap\_flip\_texture](#class-basematerial3d-property-heightmap-flip-texture) as the material will also appear to be "closer" to the camera. In most cases, [heightmap\_scale](#class-basematerial3d-property-heightmap-scale) should be kept to a positive value.

**Note:** If the height map effect looks strange regardless of this value, try adjusting [heightmap\_flip\_binormal](#class-basematerial3d-property-heightmap-flip-binormal) and [heightmap\_flip\_tangent](#class-basematerial3d-property-heightmap-flip-tangent). See also [heightmap\_texture](#class-basematerial3d-property-heightmap-texture) for recommendations on authoring heightmap textures, as the way the heightmap texture is authored affects how [heightmap\_scale](#class-basematerial3d-property-heightmap-scale) behaves.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **heightmap\_texture** [🔗](#class-basematerial3d-property-heightmap-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


The texture to use as a height map. See also [heightmap\_enabled](#class-basematerial3d-property-heightmap-enabled).

For best results, the texture should be normalized (with [heightmap\_scale](#class-basematerial3d-property-heightmap-scale) reduced to compensate). In [GIMP](https://gimp.org), this can be done using **Colors > Auto > Equalize**. If the texture only uses a small part of its available range, the parallax effect may look strange, especially when the camera moves.

**Note:** To reduce memory usage and improve loading times, you may be able to use a lower-resolution heightmap texture as most heightmaps are only comprised of low-frequency data.

* * *

[float](class_float.md#class-float) **metallic** = `0.0` [🔗](#class-basematerial3d-property-metallic)

- void **set\_metallic**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_metallic**()


A high value makes the material appear more like a metal. Non-metals use their albedo as the diffuse color and add diffuse to the specular reflection. With non-metals, the reflection appears on top of the albedo color. Metals use their albedo as a multiplier to the specular reflection and set the diffuse color to black resulting in a tinted reflection. Materials work better when fully metal or fully non-metal, values between `0` and `1` should only be used for blending between metal and non-metal sections. To alter the amount of reflection use [roughness](#class-basematerial3d-property-roughness).

* * *

[float](class_float.md#class-float) **metallic\_specular** = `0.5` [🔗](#class-basematerial3d-property-metallic-specular)

- void **set\_specular**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_specular**()


Adjusts the strength of specular reflections. Specular reflections are composed of scene reflections and the specular lobe which is the bright spot that is reflected from light sources. When set to `0.0`, no specular reflections will be visible. This differs from the [SPECULAR\_DISABLED](#class-basematerial3d-constant-specular-disabled) [SpecularMode](#enum-basematerial3d-specularmode) as [SPECULAR\_DISABLED](#class-basematerial3d-constant-specular-disabled) only applies to the specular lobe from the light source.

**Note:** Unlike [metallic](#class-basematerial3d-property-metallic), this is not energy-conserving, so it should be left at `0.5` in most cases. See also [roughness](#class-basematerial3d-property-roughness).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **metallic\_texture** [🔗](#class-basematerial3d-property-metallic-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture used to specify metallic for an object. This is multiplied by [metallic](#class-basematerial3d-property-metallic).

* * *

[TextureChannel](#enum-basematerial3d-texturechannel) **metallic\_texture\_channel** = `0` [🔗](#class-basematerial3d-property-metallic-texture-channel)

- void **set\_metallic\_texture\_channel**(value: [TextureChannel](#enum-basematerial3d-texturechannel))

- [TextureChannel](#enum-basematerial3d-texturechannel) **get\_metallic\_texture\_channel**()


Specifies the channel of the [metallic\_texture](#class-basematerial3d-property-metallic-texture) in which the metallic information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.

* * *

[float](class_float.md#class-float) **msdf\_outline\_size** = `0.0` [🔗](#class-basematerial3d-property-msdf-outline-size)

- void **set\_msdf\_outline\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_msdf\_outline\_size**()


The width of the shape outline.

* * *

[float](class_float.md#class-float) **msdf\_pixel\_range** = `4.0` [🔗](#class-basematerial3d-property-msdf-pixel-range)

- void **set\_msdf\_pixel\_range**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_msdf\_pixel\_range**()


The width of the range around the shape between the minimum and maximum representable signed distance.

* * *

[bool](class_bool.md#class-bool) **no\_depth\_test** = `false` [🔗](#class-basematerial3d-property-no-depth-test)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, depth testing is disabled and the object will be drawn in render order.

* * *

[bool](class_bool.md#class-bool) **normal\_enabled** = `false` [🔗](#class-basematerial3d-property-normal-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, normal mapping is enabled. This has a slight performance cost, especially on mobile GPUs.

* * *

[float](class_float.md#class-float) **normal\_scale** = `1.0` [🔗](#class-basematerial3d-property-normal-scale)

- void **set\_normal\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_normal\_scale**()


The strength of the normal map's effect.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **normal\_texture** [🔗](#class-basematerial3d-property-normal-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture used to specify the normal at a given pixel. The [normal\_texture](#class-basematerial3d-property-normal-texture) only uses the red and green channels; the blue and alpha channels are ignored. The normal read from [normal\_texture](#class-basematerial3d-property-normal-texture) is oriented around the surface normal provided by the [Mesh](class_mesh.md#class-mesh).

**Note:** The mesh must have both normals and tangents defined in its vertex data. Otherwise, the normal map won't render correctly and will only appear to darken the whole surface. If creating geometry with [SurfaceTool](class_surfacetool.md#class-surfacetool), you can use [SurfaceTool.generate\_normals()](class_surfacetool.md#class-surfacetool-method-generate-normals) and [SurfaceTool.generate\_tangents()](class_surfacetool.md#class-surfacetool-method-generate-tangents) to automatically generate normals and tangents respectively.

**Note:** Godot expects the normal map to use X+, Y+, and Z+ coordinates. See [this page](http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates) for a comparison of normal map coordinates expected by popular engines.

**Note:** If [detail\_enabled](#class-basematerial3d-property-detail-enabled) is `true`, the [detail\_albedo](#class-basematerial3d-property-detail-albedo) texture is drawn _below_ the [normal\_texture](#class-basematerial3d-property-normal-texture). To display a normal map _above_ the [detail\_albedo](#class-basematerial3d-property-detail-albedo) texture, use [detail\_normal](#class-basematerial3d-property-detail-normal) instead.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **orm\_texture** [🔗](#class-basematerial3d-property-orm-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


The Occlusion/Roughness/Metallic texture to use. This is a more efficient replacement of [ao\_texture](#class-basematerial3d-property-ao-texture), [roughness\_texture](#class-basematerial3d-property-roughness-texture) and [metallic\_texture](#class-basematerial3d-property-metallic-texture) in [ORMMaterial3D](class_ormmaterial3d.md#class-ormmaterial3d). Ambient occlusion is stored in the red channel. Roughness map is stored in the green channel. Metallic map is stored in the blue channel. The alpha channel is ignored.

* * *

[int](class_int.md#class-int) **particles\_anim\_h\_frames** [🔗](#class-basematerial3d-property-particles-anim-h-frames)

- void **set\_particles\_anim\_h\_frames**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_particles\_anim\_h\_frames**()


The number of horizontal frames in the particle sprite sheet. Only enabled when using [BILLBOARD\_PARTICLES](#class-basematerial3d-constant-billboard-particles). See [billboard\_mode](#class-basematerial3d-property-billboard-mode).

* * *

[bool](class_bool.md#class-bool) **particles\_anim\_loop** [🔗](#class-basematerial3d-property-particles-anim-loop)

- void **set\_particles\_anim\_loop**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particles\_anim\_loop**()


If `true`, particle animations are looped. Only enabled when using [BILLBOARD\_PARTICLES](#class-basematerial3d-constant-billboard-particles). See [billboard\_mode](#class-basematerial3d-property-billboard-mode).

* * *

[int](class_int.md#class-int) **particles\_anim\_v\_frames** [🔗](#class-basematerial3d-property-particles-anim-v-frames)

- void **set\_particles\_anim\_v\_frames**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_particles\_anim\_v\_frames**()


The number of vertical frames in the particle sprite sheet. Only enabled when using [BILLBOARD\_PARTICLES](#class-basematerial3d-constant-billboard-particles). See [billboard\_mode](#class-basematerial3d-property-billboard-mode).

* * *

[float](class_float.md#class-float) **point\_size** = `1.0` [🔗](#class-basematerial3d-property-point-size)

- void **set\_point\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_point\_size**()


The point size in pixels. See [use\_point\_size](#class-basematerial3d-property-use-point-size).

* * *

[float](class_float.md#class-float) **proximity\_fade\_distance** = `1.0` [🔗](#class-basematerial3d-property-proximity-fade-distance)

- void **set\_proximity\_fade\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_proximity\_fade\_distance**()


Distance over which the fade effect takes place. The larger the distance the longer it takes for an object to fade.

* * *

[bool](class_bool.md#class-bool) **proximity\_fade\_enabled** = `false` [🔗](#class-basematerial3d-property-proximity-fade-enabled)

- void **set\_proximity\_fade\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_proximity\_fade\_enabled**()


If `true`, the proximity fade effect is enabled. The proximity fade effect fades out each pixel based on its distance to another object.

* * *

[bool](class_bool.md#class-bool) **refraction\_enabled** = `false` [🔗](#class-basematerial3d-property-refraction-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, the refraction effect is enabled. Distorts transparency based on light from behind the object.

**Note:** Refraction is implemented using the screen texture. Only opaque materials will appear in the refraction, since transparent materials do not appear in the screen texture.

* * *

[float](class_float.md#class-float) **refraction\_scale** = `0.05` [🔗](#class-basematerial3d-property-refraction-scale)

- void **set\_refraction**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_refraction**()


The strength of the refraction effect.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **refraction\_texture** [🔗](#class-basematerial3d-property-refraction-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture that controls the strength of the refraction per-pixel. Multiplied by [refraction\_scale](#class-basematerial3d-property-refraction-scale).

* * *

[TextureChannel](#enum-basematerial3d-texturechannel) **refraction\_texture\_channel** = `0` [🔗](#class-basematerial3d-property-refraction-texture-channel)

- void **set\_refraction\_texture\_channel**(value: [TextureChannel](#enum-basematerial3d-texturechannel))

- [TextureChannel](#enum-basematerial3d-texturechannel) **get\_refraction\_texture\_channel**()


Specifies the channel of the [refraction\_texture](#class-basematerial3d-property-refraction-texture) in which the refraction information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored refraction in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.

* * *

[float](class_float.md#class-float) **rim** = `1.0` [🔗](#class-basematerial3d-property-rim)

- void **set\_rim**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rim**()


Sets the strength of the rim lighting effect.

* * *

[bool](class_bool.md#class-bool) **rim\_enabled** = `false` [🔗](#class-basematerial3d-property-rim-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, rim effect is enabled. Rim lighting increases the brightness at glancing angles on an object.

**Note:** Rim lighting is not visible if the material's [shading\_mode](#class-basematerial3d-property-shading-mode) is [SHADING\_MODE\_UNSHADED](#class-basematerial3d-constant-shading-mode-unshaded).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **rim\_texture** [🔗](#class-basematerial3d-property-rim-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture used to set the strength of the rim lighting effect per-pixel. Multiplied by [rim](#class-basematerial3d-property-rim).

* * *

[float](class_float.md#class-float) **rim\_tint** = `0.5` [🔗](#class-basematerial3d-property-rim-tint)

- void **set\_rim\_tint**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rim\_tint**()


The amount of to blend light and albedo color when rendering rim effect. If `0` the light color is used, while `1` means albedo color is used. An intermediate value generally works best.

* * *

[float](class_float.md#class-float) **roughness** = `1.0` [🔗](#class-basematerial3d-property-roughness)

- void **set\_roughness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_roughness**()


Surface reflection. A value of `0` represents a perfect mirror while a value of `1` completely blurs the reflection. See also [metallic](#class-basematerial3d-property-metallic).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **roughness\_texture** [🔗](#class-basematerial3d-property-roughness-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture used to control the roughness per-pixel. Multiplied by [roughness](#class-basematerial3d-property-roughness).

* * *

[TextureChannel](#enum-basematerial3d-texturechannel) **roughness\_texture\_channel** = `0` [🔗](#class-basematerial3d-property-roughness-texture-channel)

- void **set\_roughness\_texture\_channel**(value: [TextureChannel](#enum-basematerial3d-texturechannel))

- [TextureChannel](#enum-basematerial3d-texturechannel) **get\_roughness\_texture\_channel**()


Specifies the channel of the [roughness\_texture](#class-basematerial3d-property-roughness-texture) in which the roughness information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.

* * *

[ShadingMode](#enum-basematerial3d-shadingmode) **shading\_mode** = `1` [🔗](#class-basematerial3d-property-shading-mode)

- void **set\_shading\_mode**(value: [ShadingMode](#enum-basematerial3d-shadingmode))

- [ShadingMode](#enum-basematerial3d-shadingmode) **get\_shading\_mode**()


Sets whether the shading takes place, per-pixel, per-vertex or unshaded. Per-vertex lighting is faster, making it the best choice for mobile applications, however it looks considerably worse than per-pixel. Unshaded rendering is the fastest, but disables all interactions with lights.

* * *

[bool](class_bool.md#class-bool) **shadow\_to\_opacity** = `false` [🔗](#class-basematerial3d-property-shadow-to-opacity)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, enables the "shadow to opacity" render mode where lighting modifies the alpha so shadowed areas are opaque and non-shadowed areas are transparent. Useful for overlaying shadows onto a camera feed in AR.

* * *

[SpecularMode](#enum-basematerial3d-specularmode) **specular\_mode** = `0` [🔗](#class-basematerial3d-property-specular-mode)

- void **set\_specular\_mode**(value: [SpecularMode](#enum-basematerial3d-specularmode))

- [SpecularMode](#enum-basematerial3d-specularmode) **get\_specular\_mode**()


The method for rendering the specular blob.

**Note:** [specular\_mode](#class-basematerial3d-property-specular-mode) only applies to the specular blob. It does not affect specular reflections from the sky, screen-space reflections, [VoxelGI](class_voxelgi.md#class-voxelgi), SDFGI or [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe) s. To disable reflections from these sources as well, set [metallic\_specular](#class-basematerial3d-property-metallic-specular) to `0.0` instead.

* * *

[Color](class_color.md#class-color) **stencil\_color** = `Color(0, 0, 0, 1)` [🔗](#class-basematerial3d-property-stencil-color)

- void **set\_stencil\_effect\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_stencil\_effect\_color**()


**Experimental:** May be affected by future rendering pipeline changes.

The primary color of the stencil effect.

* * *

[StencilCompare](#enum-basematerial3d-stencilcompare) **stencil\_compare** = `0` [🔗](#class-basematerial3d-property-stencil-compare)

- void **set\_stencil\_compare**(value: [StencilCompare](#enum-basematerial3d-stencilcompare))

- [StencilCompare](#enum-basematerial3d-stencilcompare) **get\_stencil\_compare**()


**Experimental:** May be affected by future rendering pipeline changes.

The comparison operator to use for stencil masking operations. See [StencilCompare](#enum-basematerial3d-stencilcompare).

* * *

[int](class_int.md#class-int) **stencil\_flags** = `0` [🔗](#class-basematerial3d-property-stencil-flags)

- void **set\_stencil\_flags**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stencil\_flags**()


**Experimental:** May be affected by future rendering pipeline changes.

The flags dictating how the stencil operation behaves. See [StencilFlags](#enum-basematerial3d-stencilflags).

* * *

[StencilMode](#enum-basematerial3d-stencilmode) **stencil\_mode** = `0` [🔗](#class-basematerial3d-property-stencil-mode)

- void **set\_stencil\_mode**(value: [StencilMode](#enum-basematerial3d-stencilmode))

- [StencilMode](#enum-basematerial3d-stencilmode) **get\_stencil\_mode**()


**Experimental:** May be affected by future rendering pipeline changes.

The stencil effect mode. See [StencilMode](#enum-basematerial3d-stencilmode).

* * *

[float](class_float.md#class-float) **stencil\_outline\_thickness** = `0.01` [🔗](#class-basematerial3d-property-stencil-outline-thickness)

- void **set\_stencil\_effect\_outline\_thickness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_stencil\_effect\_outline\_thickness**()


**Experimental:** May be affected by future rendering pipeline changes.

The outline thickness for [STENCIL\_MODE\_OUTLINE](#class-basematerial3d-constant-stencil-mode-outline).

* * *

[int](class_int.md#class-int) **stencil\_reference** = `1` [🔗](#class-basematerial3d-property-stencil-reference)

- void **set\_stencil\_reference**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stencil\_reference**()


**Experimental:** May be affected by future rendering pipeline changes.

The stencil reference value (0-255). Typically a power of 2.

* * *

[bool](class_bool.md#class-bool) **subsurf\_scatter\_enabled** = `false` [🔗](#class-basematerial3d-property-subsurf-scatter-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, subsurface scattering is enabled. Emulates light that penetrates an object's surface, is scattered, and then emerges. Subsurface scattering quality is controlled by [ProjectSettings.rendering/environment/subsurface\_scattering/subsurface\_scattering\_quality](class_projectsettings.md#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-quality).

**Note:** Subsurface scattering is not supported on viewports that have a transparent background (where [Viewport.transparent\_bg](class_viewport.md#class-viewport-property-transparent-bg) is `true`).

* * *

[bool](class_bool.md#class-bool) **subsurf\_scatter\_skin\_mode** = `false` [🔗](#class-basematerial3d-property-subsurf-scatter-skin-mode)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, subsurface scattering will use a special mode optimized for the color and density of human skin, such as boosting the intensity of the red channel in subsurface scattering.

* * *

[float](class_float.md#class-float) **subsurf\_scatter\_strength** = `0.0` [🔗](#class-basematerial3d-property-subsurf-scatter-strength)

- void **set\_subsurface\_scattering\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_subsurface\_scattering\_strength**()


The strength of the subsurface scattering effect. The depth of the effect is also controlled by [ProjectSettings.rendering/environment/subsurface\_scattering/subsurface\_scattering\_scale](class_projectsettings.md#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-scale), which is set globally.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **subsurf\_scatter\_texture** [🔗](#class-basematerial3d-property-subsurf-scatter-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


Texture used to control the subsurface scattering strength. Stored in the red texture channel. Multiplied by [subsurf\_scatter\_strength](#class-basematerial3d-property-subsurf-scatter-strength).

* * *

[float](class_float.md#class-float) **subsurf\_scatter\_transmittance\_boost** = `0.0` [🔗](#class-basematerial3d-property-subsurf-scatter-transmittance-boost)

- void **set\_transmittance\_boost**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_transmittance\_boost**()


The intensity of the subsurface scattering transmittance effect.

* * *

[Color](class_color.md#class-color) **subsurf\_scatter\_transmittance\_color** = `Color(1, 1, 1, 1)` [🔗](#class-basematerial3d-property-subsurf-scatter-transmittance-color)

- void **set\_transmittance\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_transmittance\_color**()


The color to multiply the subsurface scattering transmittance effect with. Ignored if [subsurf\_scatter\_skin\_mode](#class-basematerial3d-property-subsurf-scatter-skin-mode) is `true`.

* * *

[float](class_float.md#class-float) **subsurf\_scatter\_transmittance\_depth** = `0.1` [🔗](#class-basematerial3d-property-subsurf-scatter-transmittance-depth)

- void **set\_transmittance\_depth**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_transmittance\_depth**()


The depth of the subsurface scattering transmittance effect.

* * *

[bool](class_bool.md#class-bool) **subsurf\_scatter\_transmittance\_enabled** = `false` [🔗](#class-basematerial3d-property-subsurf-scatter-transmittance-enabled)

- void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const


If `true`, enables subsurface scattering transmittance. Only effective if [subsurf\_scatter\_enabled](#class-basematerial3d-property-subsurf-scatter-enabled) is `true`. See also [backlight\_enabled](#class-basematerial3d-property-backlight-enabled).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **subsurf\_scatter\_transmittance\_texture** [🔗](#class-basematerial3d-property-subsurf-scatter-transmittance-texture)

- void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const


The texture to use for multiplying the intensity of the subsurface scattering transmittance intensity. See also [subsurf\_scatter\_texture](#class-basematerial3d-property-subsurf-scatter-texture). Ignored if [subsurf\_scatter\_skin\_mode](#class-basematerial3d-property-subsurf-scatter-skin-mode) is `true`.

* * *

[TextureFilter](#enum-basematerial3d-texturefilter) **texture\_filter** = `3` [🔗](#class-basematerial3d-property-texture-filter)

- void **set\_texture\_filter**(value: [TextureFilter](#enum-basematerial3d-texturefilter))

- [TextureFilter](#enum-basematerial3d-texturefilter) **get\_texture\_filter**()


Filter flags for the texture.

**Note:** [heightmap\_texture](#class-basematerial3d-property-heightmap-texture) is always sampled with linear filtering, even if nearest-neighbor filtering is selected here. This is to ensure the heightmap effect looks as intended. If you need sharper height transitions between pixels, resize the heightmap texture in an image editor with nearest-neighbor filtering.

* * *

[bool](class_bool.md#class-bool) **texture\_repeat** = `true` [🔗](#class-basematerial3d-property-texture-repeat)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, the texture repeats when exceeding the texture's size. See [FLAG\_USE\_TEXTURE\_REPEAT](#class-basematerial3d-constant-flag-use-texture-repeat).

* * *

[Transparency](#enum-basematerial3d-transparency) **transparency** = `0` [🔗](#class-basematerial3d-property-transparency)

- void **set\_transparency**(value: [Transparency](#enum-basematerial3d-transparency))

- [Transparency](#enum-basematerial3d-transparency) **get\_transparency**()


The material's transparency mode. Some transparency modes will disable shadow casting. Any transparency mode other than [TRANSPARENCY\_DISABLED](#class-basematerial3d-constant-transparency-disabled) has a greater performance impact compared to opaque rendering. See also [blend\_mode](#class-basematerial3d-property-blend-mode).

* * *

[bool](class_bool.md#class-bool) **use\_fov\_override** = `false` [🔗](#class-basematerial3d-property-use-fov-override)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true` use [fov\_override](#class-basematerial3d-property-fov-override) to override the [Camera3D](class_camera3d.md#class-camera3d)'s field of view angle.

* * *

[bool](class_bool.md#class-bool) **use\_particle\_trails** = `false` [🔗](#class-basematerial3d-property-use-particle-trails)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, enables parts of the shader required for [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) trails to function. This also requires using a mesh with appropriate skinning, such as [RibbonTrailMesh](class_ribbontrailmesh.md#class-ribbontrailmesh) or [TubeTrailMesh](class_tubetrailmesh.md#class-tubetrailmesh). Enabling this feature outside of materials used in [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) meshes will break material rendering.

* * *

[bool](class_bool.md#class-bool) **use\_point\_size** = `false` [🔗](#class-basematerial3d-property-use-point-size)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, render point size can be changed.

**Note:** This is only effective for objects whose geometry is point-based rather than triangle-based. See also [point\_size](#class-basematerial3d-property-point-size).

* * *

[bool](class_bool.md#class-bool) **use\_z\_clip\_scale** = `false` [🔗](#class-basematerial3d-property-use-z-clip-scale)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true` use [z\_clip\_scale](#class-basematerial3d-property-z-clip-scale) to scale the object being rendered towards the camera to avoid clipping into things like walls.

* * *

[Vector3](class_vector3.md#class-vector3) **uv1\_offset** = `Vector3(0, 0, 0)` [🔗](#class-basematerial3d-property-uv1-offset)

- void **set\_uv1\_offset**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_uv1\_offset**()


How much to offset the `UV` coordinates. This amount will be added to `UV` in the vertex function. This can be used to offset a texture. The Z component is used when [uv1\_triplanar](#class-basematerial3d-property-uv1-triplanar) is enabled, but it is not used anywhere else.

* * *

[Vector3](class_vector3.md#class-vector3) **uv1\_scale** = `Vector3(1, 1, 1)` [🔗](#class-basematerial3d-property-uv1-scale)

- void **set\_uv1\_scale**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_uv1\_scale**()


How much to scale the `UV` coordinates. This is multiplied by `UV` in the vertex function. The Z component is used when [uv1\_triplanar](#class-basematerial3d-property-uv1-triplanar) is enabled, but it is not used anywhere else.

* * *

[bool](class_bool.md#class-bool) **uv1\_triplanar** = `false` [🔗](#class-basematerial3d-property-uv1-triplanar)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, instead of using `UV` textures will use a triplanar texture lookup to determine how to apply textures. Triplanar uses the orientation of the object's surface to blend between texture coordinates. It reads from the source texture 3 times, once for each axis and then blends between the results based on how closely the pixel aligns with each axis. This is often used for natural features to get a realistic blend of materials. Because triplanar texturing requires many more texture reads per-pixel it is much slower than normal UV texturing. Additionally, because it is blending the texture between the three axes, it is unsuitable when you are trying to achieve crisp texturing.

* * *

[float](class_float.md#class-float) **uv1\_triplanar\_sharpness** = `1.0` [🔗](#class-basematerial3d-property-uv1-triplanar-sharpness)

- void **set\_uv1\_triplanar\_blend\_sharpness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_uv1\_triplanar\_blend\_sharpness**()


A lower number blends the texture more softly while a higher number blends the texture more sharply.

**Note:** [uv1\_triplanar\_sharpness](#class-basematerial3d-property-uv1-triplanar-sharpness) is clamped between `0.0` and `150.0` (inclusive) as values outside that range can look broken depending on the mesh.

* * *

[bool](class_bool.md#class-bool) **uv1\_world\_triplanar** = `false` [🔗](#class-basematerial3d-property-uv1-world-triplanar)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, triplanar mapping for `UV` is calculated in world space rather than object local space. See also [uv1\_triplanar](#class-basematerial3d-property-uv1-triplanar).

* * *

[Vector3](class_vector3.md#class-vector3) **uv2\_offset** = `Vector3(0, 0, 0)` [🔗](#class-basematerial3d-property-uv2-offset)

- void **set\_uv2\_offset**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_uv2\_offset**()


How much to offset the `UV2` coordinates. This amount will be added to `UV2` in the vertex function. This can be used to offset a texture. The Z component is used when [uv2\_triplanar](#class-basematerial3d-property-uv2-triplanar) is enabled, but it is not used anywhere else.

* * *

[Vector3](class_vector3.md#class-vector3) **uv2\_scale** = `Vector3(1, 1, 1)` [🔗](#class-basematerial3d-property-uv2-scale)

- void **set\_uv2\_scale**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_uv2\_scale**()


How much to scale the `UV2` coordinates. This is multiplied by `UV2` in the vertex function. The Z component is used when [uv2\_triplanar](#class-basematerial3d-property-uv2-triplanar) is enabled, but it is not used anywhere else.

* * *

[bool](class_bool.md#class-bool) **uv2\_triplanar** = `false` [🔗](#class-basematerial3d-property-uv2-triplanar)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, instead of using `UV2` textures will use a triplanar texture lookup to determine how to apply textures. Triplanar uses the orientation of the object's surface to blend between texture coordinates. It reads from the source texture 3 times, once for each axis and then blends between the results based on how closely the pixel aligns with each axis. This is often used for natural features to get a realistic blend of materials. Because triplanar texturing requires many more texture reads per-pixel it is much slower than normal UV texturing. Additionally, because it is blending the texture between the three axes, it is unsuitable when you are trying to achieve crisp texturing.

* * *

[float](class_float.md#class-float) **uv2\_triplanar\_sharpness** = `1.0` [🔗](#class-basematerial3d-property-uv2-triplanar-sharpness)

- void **set\_uv2\_triplanar\_blend\_sharpness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_uv2\_triplanar\_blend\_sharpness**()


A lower number blends the texture more softly while a higher number blends the texture more sharply.

**Note:** [uv2\_triplanar\_sharpness](#class-basematerial3d-property-uv2-triplanar-sharpness) is clamped between `0.0` and `150.0` (inclusive) as values outside that range can look broken depending on the mesh.

* * *

[bool](class_bool.md#class-bool) **uv2\_world\_triplanar** = `false` [🔗](#class-basematerial3d-property-uv2-world-triplanar)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, triplanar mapping for `UV2` is calculated in world space rather than object local space. See also [uv2\_triplanar](#class-basematerial3d-property-uv2-triplanar).

* * *

[bool](class_bool.md#class-bool) **vertex\_color\_is\_srgb** = `false` [🔗](#class-basematerial3d-property-vertex-color-is-srgb)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, vertex colors are considered to be stored in sRGB color space and are converted to linear color space during rendering. If `false`, vertex colors are considered to be stored in linear color space and are rendered as-is. See also [albedo\_texture\_force\_srgb](#class-basematerial3d-property-albedo-texture-force-srgb).

**Note:** Only effective when using the Forward+ and Mobile rendering methods, not Compatibility.

* * *

[bool](class_bool.md#class-bool) **vertex\_color\_use\_as\_albedo** = `false` [🔗](#class-basematerial3d-property-vertex-color-use-as-albedo)

- void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const


If `true`, the vertex color is used as albedo color.

* * *

[float](class_float.md#class-float) **z\_clip\_scale** = `1.0` [🔗](#class-basematerial3d-property-z-clip-scale)

- void **set\_z\_clip\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_z\_clip\_scale**()


Scales the object being rendered towards the camera to avoid clipping into things like walls. This is intended to be used for objects that are fixed with respect to the camera like player arms, tools, etc. Lighting and shadows will continue to work correctly when this setting is adjusted, but screen-space effects like SSAO and SSR may break with lower scales. Therefore, try to keep this setting as close to `1.0` as possible.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **get\_feature**(feature: [Feature](#enum-basematerial3d-feature)) const [🔗](#class-basematerial3d-method-get-feature)

Returns `true`, if the specified [Feature](#enum-basematerial3d-feature) is enabled.

* * *

[bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-basematerial3d-flags)) const [🔗](#class-basematerial3d-method-get-flag)

Returns `true` if the specified flag is enabled.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam)) const [🔗](#class-basematerial3d-method-get-texture)

Returns the [Texture2D](class_texture2d.md#class-texture2d) associated with the specified [TextureParam](#enum-basematerial3d-textureparam).

* * *

void **set\_feature**(feature: [Feature](#enum-basematerial3d-feature), enable: [bool](class_bool.md#class-bool)) [🔗](#class-basematerial3d-method-set-feature)

If `true`, enables the specified [Feature](#enum-basematerial3d-feature). Many features that are available in **BaseMaterial3D** s need to be enabled before use. This way the cost for using the feature is only incurred when specified. Features can also be enabled by setting the corresponding member to `true`.

* * *

void **set\_flag**(flag: [Flags](#enum-basematerial3d-flags), enable: [bool](class_bool.md#class-bool)) [🔗](#class-basematerial3d-method-set-flag)

If `true`, enables the specified flag. Flags are optional behavior that can be turned on and off. Only one flag can be enabled at a time with this function, the flag enumerators cannot be bit-masked together to enable or disable multiple flags at once. Flags can also be enabled by setting the corresponding member to `true`.

* * *

void **set\_texture**(param: [TextureParam](#enum-basematerial3d-textureparam), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-basematerial3d-method-set-texture)

Sets the texture for the slot specified by `param`.

[Previous](class_audiostreamwav.md "AudioStreamWAV") [Next](class_bitmap.md "BitMap")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamwav.md "AudioStreamWAV") [Next](class_bitmap.md "BitMap")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).