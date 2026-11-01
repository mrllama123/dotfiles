---
title: GeometryInstance3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_geometryinstance3d.html
crawled_at: "2026-08-13T10:34:36+12:00"
content_hash: 58491fc9dc3bed4977a0036b5f19e76386b026411e8024412e883a2cd25399c2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GeometryInstance3D

* * *

# GeometryInstance3D

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d), [CSGShape3D](class_csgshape3d.md#class-csgshape3d), [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), [Label3D](class_label3d.md#class-label3d), [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d), [MultiMeshInstance3D](class_multimeshinstance3d.md#class-multimeshinstance3d), [SpriteBase3D](class_spritebase3d.md#class-spritebase3d)

Base node for geometry-based visual instances.

## Description

Base node for geometry-based visual instances. Shares some common functionality like visibility and custom materials.

## Tutorials

- [Visibility ranges (HLOD)](../tutorials/3d/visibility_ranges.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [ShadowCastingSetting](#enum-geometryinstance3d-shadowcastingsetting) | [cast\_shadow](#class-geometryinstance3d-property-cast-shadow) | `1` |
| [AABB](class_aabb.md#class-aabb) | [custom\_aabb](#class-geometryinstance3d-property-custom-aabb) | `AABB(0, 0, 0, 0, 0, 0)` |
| [float](class_float.md#class-float) | [extra\_cull\_margin](#class-geometryinstance3d-property-extra-cull-margin) | `0.0` |
| [LightmapScale](#enum-geometryinstance3d-lightmapscale) | [gi\_lightmap\_scale](#class-geometryinstance3d-property-gi-lightmap-scale) | `0` |
| [float](class_float.md#class-float) | [gi\_lightmap\_texel\_scale](#class-geometryinstance3d-property-gi-lightmap-texel-scale) | `1.0` |
| [GIMode](#enum-geometryinstance3d-gimode) | [gi\_mode](#class-geometryinstance3d-property-gi-mode) | `1` |
| [bool](class_bool.md#class-bool) | [ignore\_occlusion\_culling](#class-geometryinstance3d-property-ignore-occlusion-culling) | `false` |
| [float](class_float.md#class-float) | [lod\_bias](#class-geometryinstance3d-property-lod-bias) | `1.0` |
| [Material](class_material.md#class-material) | [material\_overlay](#class-geometryinstance3d-property-material-overlay) |  |
| [Material](class_material.md#class-material) | [material\_override](#class-geometryinstance3d-property-material-override) |  |
| [float](class_float.md#class-float) | [transparency](#class-geometryinstance3d-property-transparency) | `0.0` |
| [float](class_float.md#class-float) | [visibility\_range\_begin](#class-geometryinstance3d-property-visibility-range-begin) | `0.0` |
| [float](class_float.md#class-float) | [visibility\_range\_begin\_margin](#class-geometryinstance3d-property-visibility-range-begin-margin) | `0.0` |
| [float](class_float.md#class-float) | [visibility\_range\_end](#class-geometryinstance3d-property-visibility-range-end) | `0.0` |
| [float](class_float.md#class-float) | [visibility\_range\_end\_margin](#class-geometryinstance3d-property-visibility-range-end-margin) | `0.0` |
| [VisibilityRangeFadeMode](#enum-geometryinstance3d-visibilityrangefademode) | [visibility\_range\_fade\_mode](#class-geometryinstance3d-property-visibility-range-fade-mode) | `0` |

## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [get\_instance\_shader\_parameter](#class-geometryinstance3d-method-get-instance-shader-parameter)(name: [StringName](class_stringname.md#class-stringname)) const |
| void | [set\_instance\_shader\_parameter](#class-geometryinstance3d-method-set-instance-shader-parameter)(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |

* * *

## Enumerations

enum **ShadowCastingSetting**: [🔗](#enum-geometryinstance3d-shadowcastingsetting)

[ShadowCastingSetting](#enum-geometryinstance3d-shadowcastingsetting) **SHADOW\_CASTING\_SETTING\_OFF** = `0`

Will not cast any shadows. Use this to improve performance for small geometry that is unlikely to cast noticeable shadows (such as debris).

[ShadowCastingSetting](#enum-geometryinstance3d-shadowcastingsetting) **SHADOW\_CASTING\_SETTING\_ON** = `1`

Will cast shadows from all visible faces in the GeometryInstance3D.

Will take culling into account, so faces not being rendered will not be taken into account when shadow casting.

[ShadowCastingSetting](#enum-geometryinstance3d-shadowcastingsetting) **SHADOW\_CASTING\_SETTING\_DOUBLE\_SIDED** = `2`

Will cast shadows from all visible faces in the GeometryInstance3D.

Will not take culling into account, so all faces will be taken into account when shadow casting.

[ShadowCastingSetting](#enum-geometryinstance3d-shadowcastingsetting) **SHADOW\_CASTING\_SETTING\_SHADOWS\_ONLY** = `3`

Will only show the shadows casted from this object.

In other words, the actual mesh will not be visible, only the shadows casted from the mesh will be.

* * *

enum **GIMode**: [🔗](#enum-geometryinstance3d-gimode)

[GIMode](#enum-geometryinstance3d-gimode) **GI\_MODE\_DISABLED** = `0`

Disabled global illumination mode. Use for dynamic objects that do not contribute to global illumination (such as characters). When using [VoxelGI](class_voxelgi.md#class-voxelgi) and SDFGI, the geometry will _receive_ indirect lighting and reflections but the geometry will not be considered in GI baking.

[GIMode](#enum-geometryinstance3d-gimode) **GI\_MODE\_STATIC** = `1`

Baked global illumination mode. Use for static objects that contribute to global illumination (such as level geometry). This GI mode is effective when using [VoxelGI](class_voxelgi.md#class-voxelgi), SDFGI and [LightmapGI](class_lightmapgi.md#class-lightmapgi).

[GIMode](#enum-geometryinstance3d-gimode) **GI\_MODE\_DYNAMIC** = `2`

Dynamic global illumination mode. Use for dynamic objects that contribute to global illumination. This GI mode is only effective when using [VoxelGI](class_voxelgi.md#class-voxelgi), but it has a higher performance impact than [GI\_MODE\_STATIC](#class-geometryinstance3d-constant-gi-mode-static). When using other GI methods, this will act the same as [GI\_MODE\_DISABLED](#class-geometryinstance3d-constant-gi-mode-disabled). When using [LightmapGI](class_lightmapgi.md#class-lightmapgi), the object will receive indirect lighting using lightmap probes instead of using the baked lightmap texture.

* * *

enum **LightmapScale**: [🔗](#enum-geometryinstance3d-lightmapscale)

[LightmapScale](#enum-geometryinstance3d-lightmapscale) **LIGHTMAP\_SCALE\_1X** = `0`

**Deprecated:** Use [gi\_lightmap\_texel\_scale](#class-geometryinstance3d-property-gi-lightmap-texel-scale) instead.

The standard texel density for lightmapping with [LightmapGI](class_lightmapgi.md#class-lightmapgi).

[LightmapScale](#enum-geometryinstance3d-lightmapscale) **LIGHTMAP\_SCALE\_2X** = `1`

**Deprecated:** Use [gi\_lightmap\_texel\_scale](#class-geometryinstance3d-property-gi-lightmap-texel-scale) instead.

Multiplies texel density by 2× for lightmapping with [LightmapGI](class_lightmapgi.md#class-lightmapgi). To ensure consistency in texel density, use this when scaling a mesh by a factor between 1.5 and 3.0.

[LightmapScale](#enum-geometryinstance3d-lightmapscale) **LIGHTMAP\_SCALE\_4X** = `2`

**Deprecated:** Use [gi\_lightmap\_texel\_scale](#class-geometryinstance3d-property-gi-lightmap-texel-scale) instead.

Multiplies texel density by 4× for lightmapping with [LightmapGI](class_lightmapgi.md#class-lightmapgi). To ensure consistency in texel density, use this when scaling a mesh by a factor between 3.0 and 6.0.

[LightmapScale](#enum-geometryinstance3d-lightmapscale) **LIGHTMAP\_SCALE\_8X** = `3`

**Deprecated:** Use [gi\_lightmap\_texel\_scale](#class-geometryinstance3d-property-gi-lightmap-texel-scale) instead.

Multiplies texel density by 8× for lightmapping with [LightmapGI](class_lightmapgi.md#class-lightmapgi). To ensure consistency in texel density, use this when scaling a mesh by a factor greater than 6.0.

[LightmapScale](#enum-geometryinstance3d-lightmapscale) **LIGHTMAP\_SCALE\_MAX** = `4`

**Deprecated:** Use [gi\_lightmap\_texel\_scale](#class-geometryinstance3d-property-gi-lightmap-texel-scale) instead.

Represents the size of the [LightmapScale](#enum-geometryinstance3d-lightmapscale) enum.

* * *

enum **VisibilityRangeFadeMode**: [🔗](#enum-geometryinstance3d-visibilityrangefademode)

[VisibilityRangeFadeMode](#enum-geometryinstance3d-visibilityrangefademode) **VISIBILITY\_RANGE\_FADE\_DISABLED** = `0`

Will not fade itself nor its visibility dependencies, hysteresis will be used instead. This is the fastest approach to manual LOD, but it can result in noticeable LOD transitions depending on how the LOD meshes are authored. See [visibility\_range\_begin](#class-geometryinstance3d-property-visibility-range-begin) and [Node3D.visibility\_parent](class_node3d.md#class-node3d-property-visibility-parent) for more information.

[VisibilityRangeFadeMode](#enum-geometryinstance3d-visibilityrangefademode) **VISIBILITY\_RANGE\_FADE\_SELF** = `1`

Will fade-out itself when reaching the limits of its own visibility range. This is slower than [VISIBILITY\_RANGE\_FADE\_DISABLED](#class-geometryinstance3d-constant-visibility-range-fade-disabled), but it can provide smoother transitions. The fading range is determined by [visibility\_range\_begin\_margin](#class-geometryinstance3d-property-visibility-range-begin-margin) and [visibility\_range\_end\_margin](#class-geometryinstance3d-property-visibility-range-end-margin).

**Note:** Only supported when using the Forward+ rendering method. When using the Mobile or Compatibility rendering method, this mode acts like [VISIBILITY\_RANGE\_FADE\_DISABLED](#class-geometryinstance3d-constant-visibility-range-fade-disabled) but with hysteresis disabled.

[VisibilityRangeFadeMode](#enum-geometryinstance3d-visibilityrangefademode) **VISIBILITY\_RANGE\_FADE\_DEPENDENCIES** = `2`

Will fade-in its visibility dependencies (see [Node3D.visibility\_parent](class_node3d.md#class-node3d-property-visibility-parent)) when reaching the limits of its own visibility range. This is slower than [VISIBILITY\_RANGE\_FADE\_DISABLED](#class-geometryinstance3d-constant-visibility-range-fade-disabled), but it can provide smoother transitions. The fading range is determined by [visibility\_range\_begin\_margin](#class-geometryinstance3d-property-visibility-range-begin-margin) and [visibility\_range\_end\_margin](#class-geometryinstance3d-property-visibility-range-end-margin).

**Note:** Only supported when using the Forward+ rendering method. When using the Mobile or Compatibility rendering method, this mode acts like [VISIBILITY\_RANGE\_FADE\_DISABLED](#class-geometryinstance3d-constant-visibility-range-fade-disabled) but with hysteresis disabled.

* * *

## Property Descriptions

[ShadowCastingSetting](#enum-geometryinstance3d-shadowcastingsetting) **cast\_shadow** = `1` [🔗](#class-geometryinstance3d-property-cast-shadow)

- void **set\_cast\_shadows\_setting**(value: [ShadowCastingSetting](#enum-geometryinstance3d-shadowcastingsetting))

- [ShadowCastingSetting](#enum-geometryinstance3d-shadowcastingsetting) **get\_cast\_shadows\_setting**()


The selected shadow casting flag.

* * *

[AABB](class_aabb.md#class-aabb) **custom\_aabb** = `AABB(0, 0, 0, 0, 0, 0)` [🔗](#class-geometryinstance3d-property-custom-aabb)

- void **set\_custom\_aabb**(value: [AABB](class_aabb.md#class-aabb))

- [AABB](class_aabb.md#class-aabb) **get\_custom\_aabb**()


Overrides the bounding box of this node with a custom one. This can be used to avoid the expensive [AABB](class_aabb.md#class-aabb) recalculation that happens when a skeleton is used with a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) or to have precise control over the [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d)'s bounding box. To use the default AABB, set value to an [AABB](class_aabb.md#class-aabb) with all fields set to `0.0`. To avoid frustum culling, set [custom\_aabb](#class-geometryinstance3d-property-custom-aabb) to a very large AABB that covers your entire game world such as `AABB(-10000, -10000, -10000, 20000, 20000, 20000)`. To disable all forms of culling (including occlusion culling), call [RenderingServer.instance\_set\_ignore\_culling()](class_renderingserver.md#class-renderingserver-method-instance-set-ignore-culling) on the **GeometryInstance3D**'s [RID](class_rid.md#class-rid).

* * *

[float](class_float.md#class-float) **extra\_cull\_margin** = `0.0` [🔗](#class-geometryinstance3d-property-extra-cull-margin)

- void **set\_extra\_cull\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_extra\_cull\_margin**()


The extra distance added to the GeometryInstance3D's bounding box ( [AABB](class_aabb.md#class-aabb)) to increase its cull box.

* * *

[LightmapScale](#enum-geometryinstance3d-lightmapscale) **gi\_lightmap\_scale** = `0` [🔗](#class-geometryinstance3d-property-gi-lightmap-scale)

- void **set\_lightmap\_scale**(value: [LightmapScale](#enum-geometryinstance3d-lightmapscale))

- [LightmapScale](#enum-geometryinstance3d-lightmapscale) **get\_lightmap\_scale**()


**Deprecated:** Use [gi\_lightmap\_texel\_scale](#class-geometryinstance3d-property-gi-lightmap-texel-scale) instead.

The texel density to use for lightmapping in [LightmapGI](class_lightmapgi.md#class-lightmapgi).

* * *

[float](class_float.md#class-float) **gi\_lightmap\_texel\_scale** = `1.0` [🔗](#class-geometryinstance3d-property-gi-lightmap-texel-scale)

- void **set\_lightmap\_texel\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lightmap\_texel\_scale**()


The texel density to use for lightmapping in [LightmapGI](class_lightmapgi.md#class-lightmapgi). Greater scale values provide higher resolution in the lightmap, which can result in sharper shadows for lights that have both direct and indirect light baked. However, greater scale values will also increase the space taken by the mesh in the lightmap texture, which increases the memory, storage, and bake time requirements. When using a single mesh at different scales, consider adjusting this value to keep the lightmap texel density consistent across meshes.

For example, doubling [gi\_lightmap\_texel\_scale](#class-geometryinstance3d-property-gi-lightmap-texel-scale) doubles the lightmap texture resolution for this object _on each axis_, so it will _quadruple_ the texel count.

* * *

[GIMode](#enum-geometryinstance3d-gimode) **gi\_mode** = `1` [🔗](#class-geometryinstance3d-property-gi-mode)

- void **set\_gi\_mode**(value: [GIMode](#enum-geometryinstance3d-gimode))

- [GIMode](#enum-geometryinstance3d-gimode) **get\_gi\_mode**()


The global illumination mode to use for the whole geometry. To avoid inconsistent results, use a mode that matches the purpose of the mesh during gameplay (static/dynamic).

**Note:** Lights' bake mode will also affect the global illumination rendering. See [Light3D.light\_bake\_mode](class_light3d.md#class-light3d-property-light-bake-mode).

* * *

[bool](class_bool.md#class-bool) **ignore\_occlusion\_culling** = `false` [🔗](#class-geometryinstance3d-property-ignore-occlusion-culling)

- void **set\_ignore\_occlusion\_culling**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ignoring\_occlusion\_culling**()


If `true`, disables occlusion culling for this instance. Useful for gizmos that must be rendered even when occlusion culling is in use.

**Note:** [ignore\_occlusion\_culling](#class-geometryinstance3d-property-ignore-occlusion-culling) does not affect frustum culling (which is what happens when an object is not visible given the camera's angle). To avoid frustum culling, set [custom\_aabb](#class-geometryinstance3d-property-custom-aabb) to a very large AABB that covers your entire game world such as `AABB(-10000, -10000, -10000, 20000, 20000, 20000)`.

* * *

[float](class_float.md#class-float) **lod\_bias** = `1.0` [🔗](#class-geometryinstance3d-property-lod-bias)

- void **set\_lod\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lod\_bias**()


Changes how quickly the mesh transitions to a lower level of detail. A value of 0 will force the mesh to its lowest level of detail, a value of 1 will use the default settings, and larger values will keep the mesh in a higher level of detail at farther distances.

Useful for testing level of detail transitions in the editor.

* * *

[Material](class_material.md#class-material) **material\_overlay** [🔗](#class-geometryinstance3d-property-material-overlay)

- void **set\_material\_overlay**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material\_overlay**()


The material overlay for the whole geometry.

If a material is assigned to this property, it will be rendered on top of any other active material for all the surfaces.

* * *

[Material](class_material.md#class-material) **material\_override** [🔗](#class-geometryinstance3d-property-material-override)

- void **set\_material\_override**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material\_override**()


The material override for the whole geometry.

If a material is assigned to this property, it will be used instead of any material set in any material slot of the mesh.

* * *

[float](class_float.md#class-float) **transparency** = `0.0` [🔗](#class-geometryinstance3d-property-transparency)

- void **set\_transparency**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_transparency**()


The transparency applied to the whole geometry (as a multiplier of the materials' existing transparency). `0.0` is fully opaque, while `1.0` is fully transparent. Values greater than `0.0` (exclusive) will force the geometry's materials to go through the transparent pipeline, which is slower to render and can exhibit rendering issues due to incorrect transparency sorting. However, unlike using a transparent material, setting [transparency](#class-geometryinstance3d-property-transparency) to a value greater than `0.0` (exclusive) will _not_ disable shadow rendering.

In spatial shaders, `1.0 - transparency` is set as the default value of the `ALPHA` built-in.

**Note:** [transparency](#class-geometryinstance3d-property-transparency) is clamped between `0.0` and `1.0`, so this property cannot be used to make transparent materials more opaque than they originally are.

**Note:** Only supported when using the Forward+ rendering method. When using the Mobile or Compatibility rendering method, [transparency](#class-geometryinstance3d-property-transparency) is ignored and is considered as always being `0.0`.

* * *

[float](class_float.md#class-float) **visibility\_range\_begin** = `0.0` [🔗](#class-geometryinstance3d-property-visibility-range-begin)

- void **set\_visibility\_range\_begin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_visibility\_range\_begin**()


Starting distance from which the GeometryInstance3D will be visible, taking [visibility\_range\_begin\_margin](#class-geometryinstance3d-property-visibility-range-begin-margin) into account as well. The default value of 0 is used to disable the range check.

* * *

[float](class_float.md#class-float) **visibility\_range\_begin\_margin** = `0.0` [🔗](#class-geometryinstance3d-property-visibility-range-begin-margin)

- void **set\_visibility\_range\_begin\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_visibility\_range\_begin\_margin**()


Margin for the [visibility\_range\_begin](#class-geometryinstance3d-property-visibility-range-begin) threshold. The GeometryInstance3D will only change its visibility state when it goes over or under the [visibility\_range\_begin](#class-geometryinstance3d-property-visibility-range-begin) threshold by this amount.

If [visibility\_range\_fade\_mode](#class-geometryinstance3d-property-visibility-range-fade-mode) is [VISIBILITY\_RANGE\_FADE\_DISABLED](#class-geometryinstance3d-constant-visibility-range-fade-disabled), this acts as a hysteresis distance. If [visibility\_range\_fade\_mode](#class-geometryinstance3d-property-visibility-range-fade-mode) is [VISIBILITY\_RANGE\_FADE\_SELF](#class-geometryinstance3d-constant-visibility-range-fade-self) or [VISIBILITY\_RANGE\_FADE\_DEPENDENCIES](#class-geometryinstance3d-constant-visibility-range-fade-dependencies), this acts as a fade transition distance and must be set to a value greater than `0.0` for the effect to be noticeable.

* * *

[float](class_float.md#class-float) **visibility\_range\_end** = `0.0` [🔗](#class-geometryinstance3d-property-visibility-range-end)

- void **set\_visibility\_range\_end**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_visibility\_range\_end**()


Distance from which the GeometryInstance3D will be hidden, taking [visibility\_range\_end\_margin](#class-geometryinstance3d-property-visibility-range-end-margin) into account as well. The default value of 0 is used to disable the range check.

* * *

[float](class_float.md#class-float) **visibility\_range\_end\_margin** = `0.0` [🔗](#class-geometryinstance3d-property-visibility-range-end-margin)

- void **set\_visibility\_range\_end\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_visibility\_range\_end\_margin**()


Margin for the [visibility\_range\_end](#class-geometryinstance3d-property-visibility-range-end) threshold. The GeometryInstance3D will only change its visibility state when it goes over or under the [visibility\_range\_end](#class-geometryinstance3d-property-visibility-range-end) threshold by this amount.

If [visibility\_range\_fade\_mode](#class-geometryinstance3d-property-visibility-range-fade-mode) is [VISIBILITY\_RANGE\_FADE\_DISABLED](#class-geometryinstance3d-constant-visibility-range-fade-disabled), this acts as a hysteresis distance. If [visibility\_range\_fade\_mode](#class-geometryinstance3d-property-visibility-range-fade-mode) is [VISIBILITY\_RANGE\_FADE\_SELF](#class-geometryinstance3d-constant-visibility-range-fade-self) or [VISIBILITY\_RANGE\_FADE\_DEPENDENCIES](#class-geometryinstance3d-constant-visibility-range-fade-dependencies), this acts as a fade transition distance and must be set to a value greater than `0.0` for the effect to be noticeable.

* * *

[VisibilityRangeFadeMode](#enum-geometryinstance3d-visibilityrangefademode) **visibility\_range\_fade\_mode** = `0` [🔗](#class-geometryinstance3d-property-visibility-range-fade-mode)

- void **set\_visibility\_range\_fade\_mode**(value: [VisibilityRangeFadeMode](#enum-geometryinstance3d-visibilityrangefademode))

- [VisibilityRangeFadeMode](#enum-geometryinstance3d-visibilityrangefademode) **get\_visibility\_range\_fade\_mode**()


Controls which instances will be faded when approaching the limits of the visibility range.

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **get\_instance\_shader\_parameter**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-geometryinstance3d-method-get-instance-shader-parameter)

Get the value of a shader parameter as set on this instance.

* * *

void **set\_instance\_shader\_parameter**(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-geometryinstance3d-method-set-instance-shader-parameter)

Set the value of a shader uniform for this instance only ( [per-instance uniform](../tutorials/shaders/shader_reference/shading_language.md#per-instance-uniforms)). See also [ShaderMaterial.set\_shader\_parameter()](class_shadermaterial.md#class-shadermaterial-method-set-shader-parameter) to assign a uniform on all instances using the same [ShaderMaterial](class_shadermaterial.md#class-shadermaterial).

**Note:** For a shader uniform to be assignable on a per-instance basis, it _must_ be defined with `instance uniform ...` rather than `uniform ...` in the shader code.

**Note:** `name` is case-sensitive and must match the name of the uniform in the code exactly (not the capitalized name in the inspector).

**Note:** Per-instance shader uniforms are only available in Spatial and CanvasItem shaders, but not for Fog, Sky, or Particles shaders.

[Previous](class_generic6dofjoint3d.md "Generic6DOFJoint3D") [Next](class_gpuparticles2d.md "GPUParticles2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_generic6dofjoint3d.md "Generic6DOFJoint3D") [Next](class_gpuparticles2d.md "GPUParticles2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).