---
title: RDPipelineRasterizationState — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdpipelinerasterizationstate.html
crawled_at: "2026-08-13T10:29:39+12:00"
content_hash: 51d397bab0b765a46de7173ae8adaa6254c0bc95b865c399a224e9ddee9e56a6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDPipelineRasterizationState

* * *

# RDPipelineRasterizationState

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Pipeline rasterization state (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [PolygonCullMode](class_renderingdevice.md#enum-renderingdevice-polygoncullmode) | [cull\_mode](#class-rdpipelinerasterizationstate-property-cull-mode) | `0` |
| [float](class_float.md#class-float) | [depth\_bias\_clamp](#class-rdpipelinerasterizationstate-property-depth-bias-clamp) | `0.0` |
| [float](class_float.md#class-float) | [depth\_bias\_constant\_factor](#class-rdpipelinerasterizationstate-property-depth-bias-constant-factor) | `0.0` |
| [bool](class_bool.md#class-bool) | [depth\_bias\_enabled](#class-rdpipelinerasterizationstate-property-depth-bias-enabled) | `false` |
| [float](class_float.md#class-float) | [depth\_bias\_slope\_factor](#class-rdpipelinerasterizationstate-property-depth-bias-slope-factor) | `0.0` |
| [bool](class_bool.md#class-bool) | [discard\_primitives](#class-rdpipelinerasterizationstate-property-discard-primitives) | `false` |
| [bool](class_bool.md#class-bool) | [enable\_depth\_clamp](#class-rdpipelinerasterizationstate-property-enable-depth-clamp) | `false` |
| [PolygonFrontFace](class_renderingdevice.md#enum-renderingdevice-polygonfrontface) | [front\_face](#class-rdpipelinerasterizationstate-property-front-face) | `0` |
| [float](class_float.md#class-float) | [line\_width](#class-rdpipelinerasterizationstate-property-line-width) | `1.0` |
| [int](class_int.md#class-int) | [patch\_control\_points](#class-rdpipelinerasterizationstate-property-patch-control-points) | `1` |
| [bool](class_bool.md#class-bool) | [wireframe](#class-rdpipelinerasterizationstate-property-wireframe) | `false` |

* * *

## Property Descriptions

[PolygonCullMode](class_renderingdevice.md#enum-renderingdevice-polygoncullmode) **cull\_mode** = `0` [🔗](#class-rdpipelinerasterizationstate-property-cull-mode)

- void **set\_cull\_mode**(value: [PolygonCullMode](class_renderingdevice.md#enum-renderingdevice-polygoncullmode))

- [PolygonCullMode](class_renderingdevice.md#enum-renderingdevice-polygoncullmode) **get\_cull\_mode**()


The cull mode to use when drawing polygons, which determines whether front faces or backfaces are hidden.

* * *

[float](class_float.md#class-float) **depth\_bias\_clamp** = `0.0` [🔗](#class-rdpipelinerasterizationstate-property-depth-bias-clamp)

- void **set\_depth\_bias\_clamp**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth\_bias\_clamp**()


A limit for how much each depth value can be offset. If negative, it serves as a minimum value, but if positive, it serves as a maximum value.

* * *

[float](class_float.md#class-float) **depth\_bias\_constant\_factor** = `0.0` [🔗](#class-rdpipelinerasterizationstate-property-depth-bias-constant-factor)

- void **set\_depth\_bias\_constant\_factor**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth\_bias\_constant\_factor**()


A constant offset added to each depth value. Applied after [depth\_bias\_slope\_factor](#class-rdpipelinerasterizationstate-property-depth-bias-slope-factor).

* * *

[bool](class_bool.md#class-bool) **depth\_bias\_enabled** = `false` [🔗](#class-rdpipelinerasterizationstate-property-depth-bias-enabled)

- void **set\_depth\_bias\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_depth\_bias\_enabled**()


If `true`, each generated depth value will by offset by some amount. The specific amount is generated per polygon based on the values of [depth\_bias\_slope\_factor](#class-rdpipelinerasterizationstate-property-depth-bias-slope-factor) and [depth\_bias\_constant\_factor](#class-rdpipelinerasterizationstate-property-depth-bias-constant-factor).

* * *

[float](class_float.md#class-float) **depth\_bias\_slope\_factor** = `0.0` [🔗](#class-rdpipelinerasterizationstate-property-depth-bias-slope-factor)

- void **set\_depth\_bias\_slope\_factor**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth\_bias\_slope\_factor**()


A constant scale applied to the slope of each polygons' depth. Applied before [depth\_bias\_constant\_factor](#class-rdpipelinerasterizationstate-property-depth-bias-constant-factor).

* * *

[bool](class_bool.md#class-bool) **discard\_primitives** = `false` [🔗](#class-rdpipelinerasterizationstate-property-discard-primitives)

- void **set\_discard\_primitives**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_discard\_primitives**()


If `true`, primitives are discarded immediately before the rasterization stage.

* * *

[bool](class_bool.md#class-bool) **enable\_depth\_clamp** = `false` [🔗](#class-rdpipelinerasterizationstate-property-enable-depth-clamp)

- void **set\_enable\_depth\_clamp**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_depth\_clamp**()


If `true`, clamps depth values according to the minimum and maximum depth of the associated viewport.

* * *

[PolygonFrontFace](class_renderingdevice.md#enum-renderingdevice-polygonfrontface) **front\_face** = `0` [🔗](#class-rdpipelinerasterizationstate-property-front-face)

- void **set\_front\_face**(value: [PolygonFrontFace](class_renderingdevice.md#enum-renderingdevice-polygonfrontface))

- [PolygonFrontFace](class_renderingdevice.md#enum-renderingdevice-polygonfrontface) **get\_front\_face**()


The winding order to use to determine which face of a triangle is considered its front face.

* * *

[float](class_float.md#class-float) **line\_width** = `1.0` [🔗](#class-rdpipelinerasterizationstate-property-line-width)

- void **set\_line\_width**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_line\_width**()


The line width to use when drawing lines (in pixels). Thick lines may not be supported on all hardware.

* * *

[int](class_int.md#class-int) **patch\_control\_points** = `1` [🔗](#class-rdpipelinerasterizationstate-property-patch-control-points)

- void **set\_patch\_control\_points**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_patch\_control\_points**()


The number of control points to use when drawing a patch with tessellation enabled. Higher values result in higher quality at the cost of performance.

* * *

[bool](class_bool.md#class-bool) **wireframe** = `false` [🔗](#class-rdpipelinerasterizationstate-property-wireframe)

- void **set\_wireframe**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_wireframe**()


If `true`, performs wireframe rendering for triangles instead of flat or textured rendering.

[Previous](class_rdpipelinemultisamplestate.md "RDPipelineMultisampleState") [Next](class_rdpipelinespecializationconstant.md "RDPipelineSpecializationConstant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdpipelinemultisamplestate.md "RDPipelineMultisampleState") [Next](class_rdpipelinespecializationconstant.md "RDPipelineSpecializationConstant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).