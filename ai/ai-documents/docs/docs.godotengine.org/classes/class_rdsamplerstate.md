---
title: RDSamplerState — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdsamplerstate.html
crawled_at: "2026-08-13T10:24:46+12:00"
content_hash: c9ba702479e9101455ffec6fd6f7d69191cce97a92a3854b04e6b6315becb901
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDSamplerState

* * *

# RDSamplerState

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Sampler state (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [anisotropy\_max](#class-rdsamplerstate-property-anisotropy-max) | `1.0` |
| [SamplerBorderColor](class_renderingdevice.md#enum-renderingdevice-samplerbordercolor) | [border\_color](#class-rdsamplerstate-property-border-color) | `2` |
| [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) | [compare\_op](#class-rdsamplerstate-property-compare-op) | `7` |
| [bool](class_bool.md#class-bool) | [enable\_compare](#class-rdsamplerstate-property-enable-compare) | `false` |
| [float](class_float.md#class-float) | [lod\_bias](#class-rdsamplerstate-property-lod-bias) | `0.0` |
| [SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter) | [mag\_filter](#class-rdsamplerstate-property-mag-filter) | `0` |
| [float](class_float.md#class-float) | [max\_lod](#class-rdsamplerstate-property-max-lod) | `1e+20` |
| [SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter) | [min\_filter](#class-rdsamplerstate-property-min-filter) | `0` |
| [float](class_float.md#class-float) | [min\_lod](#class-rdsamplerstate-property-min-lod) | `0.0` |
| [SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter) | [mip\_filter](#class-rdsamplerstate-property-mip-filter) | `0` |
| [SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode) | [repeat\_u](#class-rdsamplerstate-property-repeat-u) | `2` |
| [SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode) | [repeat\_v](#class-rdsamplerstate-property-repeat-v) | `2` |
| [SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode) | [repeat\_w](#class-rdsamplerstate-property-repeat-w) | `2` |
| [bool](class_bool.md#class-bool) | [unnormalized\_uvw](#class-rdsamplerstate-property-unnormalized-uvw) | `false` |
| [bool](class_bool.md#class-bool) | [use\_anisotropy](#class-rdsamplerstate-property-use-anisotropy) | `false` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **anisotropy\_max** = `1.0` [🔗](#class-rdsamplerstate-property-anisotropy-max)

- void **set\_anisotropy\_max**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_anisotropy\_max**()


Maximum anisotropy that can be used when sampling. Only effective if [use\_anisotropy](#class-rdsamplerstate-property-use-anisotropy) is `true`. Higher values result in a sharper sampler at oblique angles, at the cost of performance (due to memory bandwidth). This value may be limited by the graphics hardware in use. Most graphics hardware only supports values up to `16.0`.

If [anisotropy\_max](#class-rdsamplerstate-property-anisotropy-max) is `1.0`, forcibly disables anisotropy even if [use\_anisotropy](#class-rdsamplerstate-property-use-anisotropy) is `true`.

* * *

[SamplerBorderColor](class_renderingdevice.md#enum-renderingdevice-samplerbordercolor) **border\_color** = `2` [🔗](#class-rdsamplerstate-property-border-color)

- void **set\_border\_color**(value: [SamplerBorderColor](class_renderingdevice.md#enum-renderingdevice-samplerbordercolor))

- [SamplerBorderColor](class_renderingdevice.md#enum-renderingdevice-samplerbordercolor) **get\_border\_color**()


The border color that will be returned when sampling outside the sampler's bounds and the [repeat\_u](#class-rdsamplerstate-property-repeat-u), [repeat\_v](#class-rdsamplerstate-property-repeat-v) or [repeat\_w](#class-rdsamplerstate-property-repeat-w) modes have repeating disabled.

* * *

[CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) **compare\_op** = `7` [🔗](#class-rdsamplerstate-property-compare-op)

- void **set\_compare\_op**(value: [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator))

- [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) **get\_compare\_op**()


The compare operation to use. Only effective if [enable\_compare](#class-rdsamplerstate-property-enable-compare) is `true`.

* * *

[bool](class_bool.md#class-bool) **enable\_compare** = `false` [🔗](#class-rdsamplerstate-property-enable-compare)

- void **set\_enable\_compare**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_compare**()


If `true`, returned values will be based on the comparison operation defined in [compare\_op](#class-rdsamplerstate-property-compare-op). This is a hardware-based approach and is therefore faster than performing this manually in a shader. For example, compare operations are used for shadow map rendering by comparing depth values from a shadow sampler.

* * *

[float](class_float.md#class-float) **lod\_bias** = `0.0` [🔗](#class-rdsamplerstate-property-lod-bias)

- void **set\_lod\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lod\_bias**()


The mipmap LOD bias to use. Positive values will make the sampler blurrier at a given distance, while negative values will make the sampler sharper at a given distance (at the risk of looking grainy). Recommended values are between `-0.5` and `0.0`. Only effective if the sampler has mipmaps available.

* * *

[SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter) **mag\_filter** = `0` [🔗](#class-rdsamplerstate-property-mag-filter)

- void **set\_mag\_filter**(value: [SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter))

- [SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter) **get\_mag\_filter**()


The sampler's magnification filter. It is the filtering method used when sampling texels that appear bigger than on-screen pixels.

* * *

[float](class_float.md#class-float) **max\_lod** = `1e+20` [🔗](#class-rdsamplerstate-property-max-lod)

- void **set\_max\_lod**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_lod**()


The maximum mipmap LOD bias to display (lowest resolution). Only effective if the sampler has mipmaps available.

* * *

[SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter) **min\_filter** = `0` [🔗](#class-rdsamplerstate-property-min-filter)

- void **set\_min\_filter**(value: [SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter))

- [SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter) **get\_min\_filter**()


The sampler's minification filter. It is the filtering method used when sampling texels that appear smaller than on-screen pixels.

* * *

[float](class_float.md#class-float) **min\_lod** = `0.0` [🔗](#class-rdsamplerstate-property-min-lod)

- void **set\_min\_lod**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_min\_lod**()


The minimum mipmap LOD bias to display (highest resolution). Only effective if the sampler has mipmaps available.

* * *

[SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter) **mip\_filter** = `0` [🔗](#class-rdsamplerstate-property-mip-filter)

- void **set\_mip\_filter**(value: [SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter))

- [SamplerFilter](class_renderingdevice.md#enum-renderingdevice-samplerfilter) **get\_mip\_filter**()


The filtering method to use for mipmaps.

* * *

[SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode) **repeat\_u** = `2` [🔗](#class-rdsamplerstate-property-repeat-u)

- void **set\_repeat\_u**(value: [SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode))

- [SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode) **get\_repeat\_u**()


The repeat mode to use along the U axis of UV coordinates. This affects the returned values if sampling outside the UV bounds.

* * *

[SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode) **repeat\_v** = `2` [🔗](#class-rdsamplerstate-property-repeat-v)

- void **set\_repeat\_v**(value: [SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode))

- [SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode) **get\_repeat\_v**()


The repeat mode to use along the V axis of UV coordinates. This affects the returned values if sampling outside the UV bounds.

* * *

[SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode) **repeat\_w** = `2` [🔗](#class-rdsamplerstate-property-repeat-w)

- void **set\_repeat\_w**(value: [SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode))

- [SamplerRepeatMode](class_renderingdevice.md#enum-renderingdevice-samplerrepeatmode) **get\_repeat\_w**()


The repeat mode to use along the W axis of UV coordinates. This affects the returned values if sampling outside the UV bounds. Only effective for 3D samplers.

* * *

[bool](class_bool.md#class-bool) **unnormalized\_uvw** = `false` [🔗](#class-rdsamplerstate-property-unnormalized-uvw)

- void **set\_unnormalized\_uvw**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_unnormalized\_uvw**()


If `true`, the texture will be sampled with coordinates ranging from 0 to the texture's resolution. Otherwise, the coordinates will be normalized and range from 0 to 1.

* * *

[bool](class_bool.md#class-bool) **use\_anisotropy** = `false` [🔗](#class-rdsamplerstate-property-use-anisotropy)

- void **set\_use\_anisotropy**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_anisotropy**()


If `true`, perform anisotropic sampling. See [anisotropy\_max](#class-rdsamplerstate-property-anisotropy-max).

[Previous](class_rdpipelinespecializationconstant.md "RDPipelineSpecializationConstant") [Next](class_rdshadersource.md "RDShaderSource")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdpipelinespecializationconstant.md "RDPipelineSpecializationConstant") [Next](class_rdshadersource.md "RDShaderSource")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).