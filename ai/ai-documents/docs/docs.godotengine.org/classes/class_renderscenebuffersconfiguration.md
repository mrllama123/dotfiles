---
title: RenderSceneBuffersConfiguration — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_renderscenebuffersconfiguration.html
crawled_at: "2026-08-13T10:27:18+12:00"
content_hash: e2a73e72fd9ef49ad9640eb89583aec326e2bfe775463350e022212dfbce5019
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RenderSceneBuffersConfiguration

* * *

# RenderSceneBuffersConfiguration

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Configuration object used to setup a [RenderSceneBuffers](class_renderscenebuffers.md#class-renderscenebuffers) object.

## Description

This configuration object is created and populated by the render engine on a viewport change and used to (re)configure a [RenderSceneBuffers](class_renderscenebuffers.md#class-renderscenebuffers) object.

## Properties

|     |     |     |
| --- | --- | --- |
| [ViewportAnisotropicFiltering](class_renderingserver.md#enum-renderingserver-viewportanisotropicfiltering) | [anisotropic\_filtering\_level](#class-renderscenebuffersconfiguration-property-anisotropic-filtering-level) | `2` |
| [float](class_float.md#class-float) | [fsr\_sharpness](#class-renderscenebuffersconfiguration-property-fsr-sharpness) | `0.0` |
| [Vector2i](class_vector2i.md#class-vector2i) | [internal\_size](#class-renderscenebuffersconfiguration-property-internal-size) | `Vector2i(0, 0)` |
| [ViewportMSAA](class_renderingserver.md#enum-renderingserver-viewportmsaa) | [msaa\_3d](#class-renderscenebuffersconfiguration-property-msaa-3d) | `0` |
| [RID](class_rid.md#class-rid) | [render\_target](#class-renderscenebuffersconfiguration-property-render-target) | `RID()` |
| [ViewportScaling3DMode](class_renderingserver.md#enum-renderingserver-viewportscaling3dmode) | [scaling\_3d\_mode](#class-renderscenebuffersconfiguration-property-scaling-3d-mode) | `255` |
| [ViewportScreenSpaceAA](class_renderingserver.md#enum-renderingserver-viewportscreenspaceaa) | [screen\_space\_aa](#class-renderscenebuffersconfiguration-property-screen-space-aa) | `0` |
| [Vector2i](class_vector2i.md#class-vector2i) | [target\_size](#class-renderscenebuffersconfiguration-property-target-size) | `Vector2i(0, 0)` |
| [float](class_float.md#class-float) | [texture\_mipmap\_bias](#class-renderscenebuffersconfiguration-property-texture-mipmap-bias) | `0.0` |
| [int](class_int.md#class-int) | [view\_count](#class-renderscenebuffersconfiguration-property-view-count) | `1` |

* * *

## Property Descriptions

[ViewportAnisotropicFiltering](class_renderingserver.md#enum-renderingserver-viewportanisotropicfiltering) **anisotropic\_filtering\_level** = `2` [🔗](#class-renderscenebuffersconfiguration-property-anisotropic-filtering-level)

- void **set\_anisotropic\_filtering\_level**(value: [ViewportAnisotropicFiltering](class_renderingserver.md#enum-renderingserver-viewportanisotropicfiltering))

- [ViewportAnisotropicFiltering](class_renderingserver.md#enum-renderingserver-viewportanisotropicfiltering) **get\_anisotropic\_filtering\_level**()


Level of the anisotropic filter.

* * *

[float](class_float.md#class-float) **fsr\_sharpness** = `0.0` [🔗](#class-renderscenebuffersconfiguration-property-fsr-sharpness)

- void **set\_fsr\_sharpness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fsr\_sharpness**()


FSR Sharpness applicable if FSR upscaling is used.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **internal\_size** = `Vector2i(0, 0)` [🔗](#class-renderscenebuffersconfiguration-property-internal-size)

- void **set\_internal\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_internal\_size**()


The size of the 3D render buffer used for rendering.

* * *

[ViewportMSAA](class_renderingserver.md#enum-renderingserver-viewportmsaa) **msaa\_3d** = `0` [🔗](#class-renderscenebuffersconfiguration-property-msaa-3d)

- void **set\_msaa\_3d**(value: [ViewportMSAA](class_renderingserver.md#enum-renderingserver-viewportmsaa))

- [ViewportMSAA](class_renderingserver.md#enum-renderingserver-viewportmsaa) **get\_msaa\_3d**()


The MSAA mode we're using for 3D rendering.

* * *

[RID](class_rid.md#class-rid) **render\_target** = `RID()` [🔗](#class-renderscenebuffersconfiguration-property-render-target)

- void **set\_render\_target**(value: [RID](class_rid.md#class-rid))

- [RID](class_rid.md#class-rid) **get\_render\_target**()


The render target associated with these buffer.

* * *

[ViewportScaling3DMode](class_renderingserver.md#enum-renderingserver-viewportscaling3dmode) **scaling\_3d\_mode** = `255` [🔗](#class-renderscenebuffersconfiguration-property-scaling-3d-mode)

- void **set\_scaling\_3d\_mode**(value: [ViewportScaling3DMode](class_renderingserver.md#enum-renderingserver-viewportscaling3dmode))

- [ViewportScaling3DMode](class_renderingserver.md#enum-renderingserver-viewportscaling3dmode) **get\_scaling\_3d\_mode**()


The requested scaling mode with which we upscale/downscale if [internal\_size](#class-renderscenebuffersconfiguration-property-internal-size) and [target\_size](#class-renderscenebuffersconfiguration-property-target-size) are not equal.

* * *

[ViewportScreenSpaceAA](class_renderingserver.md#enum-renderingserver-viewportscreenspaceaa) **screen\_space\_aa** = `0` [🔗](#class-renderscenebuffersconfiguration-property-screen-space-aa)

- void **set\_screen\_space\_aa**(value: [ViewportScreenSpaceAA](class_renderingserver.md#enum-renderingserver-viewportscreenspaceaa))

- [ViewportScreenSpaceAA](class_renderingserver.md#enum-renderingserver-viewportscreenspaceaa) **get\_screen\_space\_aa**()


The requested screen space AA applied in post processing.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **target\_size** = `Vector2i(0, 0)` [🔗](#class-renderscenebuffersconfiguration-property-target-size)

- void **set\_target\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_target\_size**()


The target (upscale) size if scaling is used.

* * *

[float](class_float.md#class-float) **texture\_mipmap\_bias** = `0.0` [🔗](#class-renderscenebuffersconfiguration-property-texture-mipmap-bias)

- void **set\_texture\_mipmap\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_texture\_mipmap\_bias**()


Bias applied to mipmaps.

* * *

[int](class_int.md#class-int) **view\_count** = `1` [🔗](#class-renderscenebuffersconfiguration-property-view-count)

- void **set\_view\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_view\_count**()


The number of views we're rendering.

[Previous](class_renderscenebuffers.md "RenderSceneBuffers") [Next](class_renderscenebuffersextension.md "RenderSceneBuffersExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_renderscenebuffers.md "RenderSceneBuffers") [Next](class_renderscenebuffersextension.md "RenderSceneBuffersExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).